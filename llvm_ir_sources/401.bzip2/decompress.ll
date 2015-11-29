; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/401.bzip2/src/decompress.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [20 x i8] c"\0A    [%d: huff+mtf \00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"rt+rld\00", align 1
@BZ2_rNums = external global [512 x i32]

; Function Attrs: nounwind optsize ssp uwtable
define i32 @BZ2_decompress(%struct.DState* %s) #0 {
  %pos = alloca [6 x i8], align 1
  %1 = getelementptr inbounds %struct.DState* %s, i64 0, i32 0
  %2 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %3 = getelementptr inbounds %struct.DState* %s, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !8
  %5 = icmp eq i32 %4, 10
  %6 = getelementptr inbounds %struct.DState* %s, i64 0, i32 40
  br i1 %5, label %.thread, label %34

.thread:                                          ; preds = %0
  %7 = getelementptr inbounds %struct.DState* %s, i64 0, i32 41
  %8 = getelementptr inbounds %struct.DState* %s, i64 0, i32 42
  %9 = getelementptr inbounds %struct.DState* %s, i64 0, i32 43
  %10 = getelementptr inbounds %struct.DState* %s, i64 0, i32 44
  %11 = getelementptr inbounds %struct.DState* %s, i64 0, i32 45
  %12 = getelementptr inbounds %struct.DState* %s, i64 0, i32 46
  %13 = getelementptr inbounds %struct.DState* %s, i64 0, i32 47
  %14 = getelementptr inbounds %struct.DState* %s, i64 0, i32 48
  %15 = getelementptr inbounds %struct.DState* %s, i64 0, i32 49
  %16 = getelementptr inbounds %struct.DState* %s, i64 0, i32 50
  %17 = getelementptr inbounds %struct.DState* %s, i64 0, i32 51
  %18 = getelementptr inbounds %struct.DState* %s, i64 0, i32 52
  %19 = getelementptr inbounds %struct.DState* %s, i64 0, i32 53
  %20 = getelementptr inbounds %struct.DState* %s, i64 0, i32 54
  %21 = getelementptr inbounds %struct.DState* %s, i64 0, i32 55
  %22 = getelementptr inbounds %struct.DState* %s, i64 0, i32 56
  %23 = getelementptr inbounds %struct.DState* %s, i64 0, i32 57
  %24 = getelementptr inbounds %struct.DState* %s, i64 0, i32 58
  %25 = getelementptr inbounds %struct.DState* %s, i64 0, i32 59
  %26 = getelementptr inbounds %struct.DState* %s, i64 0, i32 60
  %27 = getelementptr inbounds %struct.DState* %s, i64 0, i32 61
  %28 = getelementptr inbounds %struct.DState* %s, i64 0, i32 62
  %29 = getelementptr inbounds %struct.DState* %s, i64 0, i32 63
  %30 = bitcast i32* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 108, i32 4, i1 false)
  store i32 10, i32* %3, align 4, !tbaa !8
  %31 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %32 = load i32* %31, align 4, !tbaa !9
  %33 = icmp sgt i32 %32, 7
  %.phi.trans.insert785 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %33, label %._crit_edge784, label %.lr.ph606

; <label>:34                                      ; preds = %0
  %.pre = load i32* %6, align 4, !tbaa !10
  %.phi.trans.insert738 = getelementptr inbounds %struct.DState* %s, i64 0, i32 41
  %.pre739 = load i32* %.phi.trans.insert738, align 4, !tbaa !11
  %.phi.trans.insert740 = getelementptr inbounds %struct.DState* %s, i64 0, i32 42
  %.pre741 = load i32* %.phi.trans.insert740, align 4, !tbaa !12
  %.phi.trans.insert742 = getelementptr inbounds %struct.DState* %s, i64 0, i32 43
  %.pre743 = load i32* %.phi.trans.insert742, align 4, !tbaa !13
  %.phi.trans.insert744 = getelementptr inbounds %struct.DState* %s, i64 0, i32 44
  %.pre745 = load i32* %.phi.trans.insert744, align 4, !tbaa !14
  %.phi.trans.insert746 = getelementptr inbounds %struct.DState* %s, i64 0, i32 45
  %.pre747 = load i32* %.phi.trans.insert746, align 4, !tbaa !15
  %.phi.trans.insert748 = getelementptr inbounds %struct.DState* %s, i64 0, i32 46
  %.pre749 = load i32* %.phi.trans.insert748, align 4, !tbaa !16
  %.phi.trans.insert750 = getelementptr inbounds %struct.DState* %s, i64 0, i32 47
  %.pre751 = load i32* %.phi.trans.insert750, align 4, !tbaa !17
  %.phi.trans.insert752 = getelementptr inbounds %struct.DState* %s, i64 0, i32 48
  %.pre753 = load i32* %.phi.trans.insert752, align 4, !tbaa !18
  %.phi.trans.insert754 = getelementptr inbounds %struct.DState* %s, i64 0, i32 49
  %.pre755 = load i32* %.phi.trans.insert754, align 4, !tbaa !19
  %.phi.trans.insert756 = getelementptr inbounds %struct.DState* %s, i64 0, i32 50
  %.pre757 = load i32* %.phi.trans.insert756, align 4, !tbaa !20
  %.phi.trans.insert758 = getelementptr inbounds %struct.DState* %s, i64 0, i32 51
  %.pre759 = load i32* %.phi.trans.insert758, align 4, !tbaa !21
  %.phi.trans.insert760 = getelementptr inbounds %struct.DState* %s, i64 0, i32 52
  %.pre761 = load i32* %.phi.trans.insert760, align 4, !tbaa !22
  %.phi.trans.insert762 = getelementptr inbounds %struct.DState* %s, i64 0, i32 53
  %.pre763 = load i32* %.phi.trans.insert762, align 4, !tbaa !23
  %.phi.trans.insert764 = getelementptr inbounds %struct.DState* %s, i64 0, i32 54
  %.pre765 = load i32* %.phi.trans.insert764, align 4, !tbaa !24
  %.phi.trans.insert766 = getelementptr inbounds %struct.DState* %s, i64 0, i32 55
  %.pre767 = load i32* %.phi.trans.insert766, align 4, !tbaa !25
  %.phi.trans.insert768 = getelementptr inbounds %struct.DState* %s, i64 0, i32 56
  %.pre769 = load i32* %.phi.trans.insert768, align 4, !tbaa !26
  %.phi.trans.insert770 = getelementptr inbounds %struct.DState* %s, i64 0, i32 57
  %.pre771 = load i32* %.phi.trans.insert770, align 4, !tbaa !27
  %.phi.trans.insert772 = getelementptr inbounds %struct.DState* %s, i64 0, i32 58
  %.pre773 = load i32* %.phi.trans.insert772, align 4, !tbaa !28
  %.phi.trans.insert774 = getelementptr inbounds %struct.DState* %s, i64 0, i32 59
  %.pre775 = load i32* %.phi.trans.insert774, align 4, !tbaa !29
  %.phi.trans.insert776 = getelementptr inbounds %struct.DState* %s, i64 0, i32 60
  %.pre777 = load i32* %.phi.trans.insert776, align 4, !tbaa !30
  %.phi.trans.insert778 = getelementptr inbounds %struct.DState* %s, i64 0, i32 61
  %.pre779 = load i32** %.phi.trans.insert778, align 8, !tbaa !31
  %.phi.trans.insert780 = getelementptr inbounds %struct.DState* %s, i64 0, i32 62
  %.pre781 = load i32** %.phi.trans.insert780, align 8, !tbaa !32
  %.phi.trans.insert782 = getelementptr inbounds %struct.DState* %s, i64 0, i32 63
  %.pre783 = load i32** %.phi.trans.insert782, align 8, !tbaa !33
  switch i32 %4, label %3074 [
    i32 50, label %._crit_edge1031
    i32 11, label %._crit_edge787
    i32 12, label %._crit_edge793
    i32 13, label %._crit_edge799
    i32 14, label %._crit_edge1216
    i32 15, label %._crit_edge809
    i32 16, label %._crit_edge816
    i32 17, label %._crit_edge823
    i32 18, label %._crit_edge830
    i32 19, label %._crit_edge837
    i32 20, label %._crit_edge1215
    i32 21, label %._crit_edge848
    i32 22, label %._crit_edge855
    i32 23, label %._crit_edge862
    i32 24, label %._crit_edge869
    i32 25, label %._crit_edge876
    i32 26, label %._crit_edge883
    i32 27, label %._crit_edge890
    i32 28, label %1112
    i32 29, label %1223
    i32 30, label %1327
    i32 31, label %._crit_edge901
    i32 32, label %.preheader
    i32 33, label %1559
    i32 34, label %1646
    i32 35, label %._crit_edge956
    i32 36, label %1796
    i32 37, label %._crit_edge941
    i32 38, label %1926
    i32 39, label %._crit_edge929
    i32 40, label %2219
    i32 41, label %._crit_edge918
    i32 42, label %._crit_edge975
    i32 43, label %._crit_edge982
    i32 44, label %._crit_edge989
    i32 45, label %._crit_edge996
    i32 46, label %._crit_edge1003
    i32 47, label %._crit_edge1010
    i32 48, label %._crit_edge1017
    i32 49, label %._crit_edge1024
  ]

._crit_edge1216:                                  ; preds = %34
  %.pre1217 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %263

._crit_edge1215:                                  ; preds = %34
  %.pre1219 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %610

._crit_edge1031:                                  ; preds = %34
  %.phi.trans.insert1032 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre1033 = load i32* %.phi.trans.insert1032, align 4, !tbaa !9
  br label %3015

._crit_edge1024:                                  ; preds = %34
  %.phi.trans.insert1025 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre1026 = load i32* %.phi.trans.insert1025, align 4, !tbaa !9
  br label %2956

._crit_edge1017:                                  ; preds = %34
  %.phi.trans.insert1018 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre1019 = load i32* %.phi.trans.insert1018, align 4, !tbaa !9
  br label %2897

._crit_edge1010:                                  ; preds = %34
  %.phi.trans.insert1011 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre1012 = load i32* %.phi.trans.insert1011, align 4, !tbaa !9
  br label %2838

._crit_edge1003:                                  ; preds = %34
  %.phi.trans.insert1004 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre1005 = load i32* %.phi.trans.insert1004, align 4, !tbaa !9
  br label %2780

._crit_edge996:                                   ; preds = %34
  %.phi.trans.insert997 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre998 = load i32* %.phi.trans.insert997, align 4, !tbaa !9
  br label %2724

._crit_edge989:                                   ; preds = %34
  %.phi.trans.insert990 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre991 = load i32* %.phi.trans.insert990, align 4, !tbaa !9
  br label %2668

._crit_edge982:                                   ; preds = %34
  %.phi.trans.insert983 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre984 = load i32* %.phi.trans.insert983, align 4, !tbaa !9
  br label %2612

._crit_edge975:                                   ; preds = %34
  %.phi.trans.insert976 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre977 = load i32* %.phi.trans.insert976, align 4, !tbaa !9
  br label %2556

._crit_edge956:                                   ; preds = %34
  %.phi.trans.insert957 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre958 = load i32* %.phi.trans.insert957, align 4, !tbaa !9
  br label %1696

._crit_edge941:                                   ; preds = %34
  %.phi.trans.insert942 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre943 = load i32* %.phi.trans.insert942, align 4, !tbaa !9
  br label %1851

._crit_edge929:                                   ; preds = %34
  %.phi.trans.insert930 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre931 = load i32* %.phi.trans.insert930, align 4, !tbaa !9
  br label %1973

._crit_edge918:                                   ; preds = %34
  %.phi.trans.insert919 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre920 = load i32* %.phi.trans.insert919, align 4, !tbaa !9
  br label %2266

._crit_edge901:                                   ; preds = %34
  %.phi.trans.insert902 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre903 = load i32* %.phi.trans.insert902, align 4, !tbaa !9
  br label %1380

._crit_edge890:                                   ; preds = %34
  %.phi.trans.insert891 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre892 = load i32* %.phi.trans.insert891, align 4, !tbaa !9
  br label %1021

._crit_edge883:                                   ; preds = %34
  %.phi.trans.insert884 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre885 = load i32* %.phi.trans.insert884, align 4, !tbaa !9
  br label %962

._crit_edge876:                                   ; preds = %34
  %.phi.trans.insert877 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre878 = load i32* %.phi.trans.insert877, align 4, !tbaa !9
  br label %903

._crit_edge869:                                   ; preds = %34
  %.phi.trans.insert870 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre871 = load i32* %.phi.trans.insert870, align 4, !tbaa !9
  br label %846

._crit_edge862:                                   ; preds = %34
  %.phi.trans.insert863 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre864 = load i32* %.phi.trans.insert863, align 4, !tbaa !9
  br label %787

._crit_edge855:                                   ; preds = %34
  %.phi.trans.insert856 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre857 = load i32* %.phi.trans.insert856, align 4, !tbaa !9
  br label %728

._crit_edge848:                                   ; preds = %34
  %.phi.trans.insert849 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre850 = load i32* %.phi.trans.insert849, align 4, !tbaa !9
  br label %669

._crit_edge837:                                   ; preds = %34
  %.phi.trans.insert838 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre839 = load i32* %.phi.trans.insert838, align 4, !tbaa !9
  br label %542

._crit_edge830:                                   ; preds = %34
  %.phi.trans.insert831 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre832 = load i32* %.phi.trans.insert831, align 4, !tbaa !9
  br label %486

._crit_edge823:                                   ; preds = %34
  %.phi.trans.insert824 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre825 = load i32* %.phi.trans.insert824, align 4, !tbaa !9
  br label %430

._crit_edge816:                                   ; preds = %34
  %.phi.trans.insert817 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre818 = load i32* %.phi.trans.insert817, align 4, !tbaa !9
  br label %374

._crit_edge809:                                   ; preds = %34
  %.phi.trans.insert810 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre811 = load i32* %.phi.trans.insert810, align 4, !tbaa !9
  br label %318

._crit_edge799:                                   ; preds = %34
  %.phi.trans.insert800 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre801 = load i32* %.phi.trans.insert800, align 4, !tbaa !9
  br label %176

._crit_edge793:                                   ; preds = %34
  %.phi.trans.insert794 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre795 = load i32* %.phi.trans.insert794, align 4, !tbaa !9
  br label %120

._crit_edge787:                                   ; preds = %34
  %.phi.trans.insert788 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %.pre789 = load i32* %.phi.trans.insert788, align 4, !tbaa !9
  br label %64

._crit_edge784:                                   ; preds = %.thread
  %.pre786 = load i32* %.phi.trans.insert785, align 4, !tbaa !34
  br label %._crit_edge607

.lr.ph606:                                        ; preds = %.thread
  %.phi.trans.insert1038 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 1
  %.pre1039 = load i32* %.phi.trans.insert1038, align 4, !tbaa !35
  br label %40

._crit_edge607:                                   ; preds = %.backedge168, %._crit_edge784
  %35 = phi i32 [ %.pre786, %._crit_edge784 ], [ %51, %.backedge168 ]
  %.lcssa341 = phi i32 [ %32, %._crit_edge784 ], [ %52, %.backedge168 ]
  %36 = add nsw i32 %.lcssa341, -8
  %37 = lshr i32 %35, %36
  store i32 %36, i32* %31, align 4, !tbaa !9
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 66
  br i1 %39, label %64, label %.loopexit

; <label>:40                                      ; preds = %.lr.ph606, %.backedge168
  %41 = phi i32 [ %.pre1039, %.lr.ph606 ], [ %54, %.backedge168 ]
  %42 = phi i32 [ %32, %.lr.ph606 ], [ %52, %.backedge168 ]
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %.loopexit, label %44

; <label>:44                                      ; preds = %40
  %45 = load i32* %.phi.trans.insert785, align 4, !tbaa !34
  %46 = shl i32 %45, 8
  %47 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 0
  %48 = load i8** %47, align 8, !tbaa !37
  %49 = load i8* %48, align 1, !tbaa !38
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %46
  store i32 %51, i32* %.phi.trans.insert785, align 4, !tbaa !34
  %52 = add nsw i32 %42, 8
  store i32 %52, i32* %31, align 4, !tbaa !9
  %53 = getelementptr inbounds i8* %48, i64 1
  store i8* %53, i8** %47, align 8, !tbaa !37
  %54 = add i32 %41, -1
  store i32 %54, i32* %.phi.trans.insert1038, align 4, !tbaa !35
  %55 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 2
  %56 = load i32* %55, align 4, !tbaa !39
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4, !tbaa !39
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %.backedge168

; <label>:59                                      ; preds = %44
  %60 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 3
  %61 = load i32* %60, align 4, !tbaa !40
  %62 = add i32 %61, 1
  store i32 %62, i32* %60, align 4, !tbaa !40
  br label %.backedge168

.backedge168:                                     ; preds = %59, %44
  %63 = icmp sgt i32 %52, 7
  br i1 %63, label %._crit_edge607, label %40

; <label>:64                                      ; preds = %._crit_edge787, %._crit_edge607
  %65 = phi i32 [ %.pre, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %66 = phi i32 [ %.pre739, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %67 = phi i32 [ %.pre741, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %68 = phi i32 [ %.pre743, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %69 = phi i32 [ %.pre745, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %70 = phi i32 [ %.pre747, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %71 = phi i32 [ %.pre749, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %72 = phi i32 [ %.pre751, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %73 = phi i32 [ %.pre753, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %74 = phi i32 [ %.pre755, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %75 = phi i32 [ %.pre757, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %76 = phi i32 [ %.pre759, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %77 = phi i32 [ %.pre761, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %78 = phi i32 [ %.pre763, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %79 = phi i32 [ %.pre765, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %80 = phi i32 [ %.pre767, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %81 = phi i32 [ %.pre769, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %82 = phi i32 [ %.pre771, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %83 = phi i32 [ %.pre773, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %84 = phi i32 [ %.pre775, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %85 = phi i32 [ %.pre777, %._crit_edge787 ], [ 0, %._crit_edge607 ]
  %86 = phi i32* [ %.pre779, %._crit_edge787 ], [ null, %._crit_edge607 ]
  %87 = phi i32* [ %.pre781, %._crit_edge787 ], [ null, %._crit_edge607 ]
  %88 = phi i32* [ %.pre783, %._crit_edge787 ], [ null, %._crit_edge607 ]
  %.pre-phi11202490 = phi i32* [ %.phi.trans.insert738, %._crit_edge787 ], [ %7, %._crit_edge607 ]
  %.pre-phi11212435 = phi i32* [ %.phi.trans.insert740, %._crit_edge787 ], [ %8, %._crit_edge607 ]
  %.pre-phi11222380 = phi i32* [ %.phi.trans.insert742, %._crit_edge787 ], [ %9, %._crit_edge607 ]
  %.pre-phi11232325 = phi i32* [ %.phi.trans.insert744, %._crit_edge787 ], [ %10, %._crit_edge607 ]
  %.pre-phi11242270 = phi i32* [ %.phi.trans.insert746, %._crit_edge787 ], [ %11, %._crit_edge607 ]
  %.pre-phi11252215 = phi i32* [ %.phi.trans.insert748, %._crit_edge787 ], [ %12, %._crit_edge607 ]
  %.pre-phi11262160 = phi i32* [ %.phi.trans.insert750, %._crit_edge787 ], [ %13, %._crit_edge607 ]
  %.pre-phi11272105 = phi i32* [ %.phi.trans.insert752, %._crit_edge787 ], [ %14, %._crit_edge607 ]
  %.pre-phi11282050 = phi i32* [ %.phi.trans.insert754, %._crit_edge787 ], [ %15, %._crit_edge607 ]
  %.pre-phi11291995 = phi i32* [ %.phi.trans.insert756, %._crit_edge787 ], [ %16, %._crit_edge607 ]
  %.pre-phi11301940 = phi i32* [ %.phi.trans.insert758, %._crit_edge787 ], [ %17, %._crit_edge607 ]
  %.pre-phi11311885 = phi i32* [ %.phi.trans.insert760, %._crit_edge787 ], [ %18, %._crit_edge607 ]
  %.pre-phi11321830 = phi i32* [ %.phi.trans.insert762, %._crit_edge787 ], [ %19, %._crit_edge607 ]
  %.pre-phi11331775 = phi i32* [ %.phi.trans.insert764, %._crit_edge787 ], [ %20, %._crit_edge607 ]
  %.pre-phi11341720 = phi i32* [ %.phi.trans.insert766, %._crit_edge787 ], [ %21, %._crit_edge607 ]
  %.pre-phi11351665 = phi i32* [ %.phi.trans.insert768, %._crit_edge787 ], [ %22, %._crit_edge607 ]
  %.pre-phi11361610 = phi i32* [ %.phi.trans.insert770, %._crit_edge787 ], [ %23, %._crit_edge607 ]
  %.pre-phi11371555 = phi i32* [ %.phi.trans.insert772, %._crit_edge787 ], [ %24, %._crit_edge607 ]
  %.pre-phi11381500 = phi i32* [ %.phi.trans.insert774, %._crit_edge787 ], [ %25, %._crit_edge607 ]
  %.pre-phi11391445 = phi i32* [ %.phi.trans.insert776, %._crit_edge787 ], [ %26, %._crit_edge607 ]
  %.pre-phi11401390 = phi i32** [ %.phi.trans.insert778, %._crit_edge787 ], [ %27, %._crit_edge607 ]
  %.pre-phi11411335 = phi i32** [ %.phi.trans.insert780, %._crit_edge787 ], [ %28, %._crit_edge607 ]
  %.pre-phi11421280 = phi i32** [ %.phi.trans.insert782, %._crit_edge787 ], [ %29, %._crit_edge607 ]
  %.pre-phi1144 = phi i32* [ %.phi.trans.insert788, %._crit_edge787 ], [ %31, %._crit_edge607 ]
  %89 = phi i32 [ %.pre789, %._crit_edge787 ], [ %36, %._crit_edge607 ]
  store i32 11, i32* %3, align 4, !tbaa !8
  %90 = icmp sgt i32 %89, 7
  %.phi.trans.insert791 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %90, label %._crit_edge790, label %.lr.ph601

._crit_edge790:                                   ; preds = %64
  %.pre792 = load i32* %.phi.trans.insert791, align 4, !tbaa !34
  br label %._crit_edge602

.lr.ph601:                                        ; preds = %64
  %.phi.trans.insert1040 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 1
  %.pre1041 = load i32* %.phi.trans.insert1040, align 4, !tbaa !35
  br label %96

._crit_edge602:                                   ; preds = %.backedge166, %._crit_edge790
  %91 = phi i32 [ %.pre792, %._crit_edge790 ], [ %107, %.backedge166 ]
  %.lcssa337 = phi i32 [ %89, %._crit_edge790 ], [ %108, %.backedge166 ]
  %92 = add nsw i32 %.lcssa337, -8
  %93 = lshr i32 %91, %92
  store i32 %92, i32* %.pre-phi1144, align 4, !tbaa !9
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 90
  br i1 %95, label %120, label %.loopexit

; <label>:96                                      ; preds = %.lr.ph601, %.backedge166
  %97 = phi i32 [ %.pre1041, %.lr.ph601 ], [ %110, %.backedge166 ]
  %98 = phi i32 [ %89, %.lr.ph601 ], [ %108, %.backedge166 ]
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %.loopexit, label %100

; <label>:100                                     ; preds = %96
  %101 = load i32* %.phi.trans.insert791, align 4, !tbaa !34
  %102 = shl i32 %101, 8
  %103 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 0
  %104 = load i8** %103, align 8, !tbaa !37
  %105 = load i8* %104, align 1, !tbaa !38
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %102
  store i32 %107, i32* %.phi.trans.insert791, align 4, !tbaa !34
  %108 = add nsw i32 %98, 8
  store i32 %108, i32* %.pre-phi1144, align 4, !tbaa !9
  %109 = getelementptr inbounds i8* %104, i64 1
  store i8* %109, i8** %103, align 8, !tbaa !37
  %110 = add i32 %97, -1
  store i32 %110, i32* %.phi.trans.insert1040, align 4, !tbaa !35
  %111 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 2
  %112 = load i32* %111, align 4, !tbaa !39
  %113 = add i32 %112, 1
  store i32 %113, i32* %111, align 4, !tbaa !39
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %.backedge166

; <label>:115                                     ; preds = %100
  %116 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 3
  %117 = load i32* %116, align 4, !tbaa !40
  %118 = add i32 %117, 1
  store i32 %118, i32* %116, align 4, !tbaa !40
  br label %.backedge166

.backedge166:                                     ; preds = %115, %100
  %119 = icmp sgt i32 %108, 7
  br i1 %119, label %._crit_edge602, label %96

; <label>:120                                     ; preds = %._crit_edge793, %._crit_edge602
  %121 = phi i32 [ %.pre, %._crit_edge793 ], [ %65, %._crit_edge602 ]
  %122 = phi i32 [ %.pre739, %._crit_edge793 ], [ %66, %._crit_edge602 ]
  %123 = phi i32 [ %.pre741, %._crit_edge793 ], [ %67, %._crit_edge602 ]
  %124 = phi i32 [ %.pre743, %._crit_edge793 ], [ %68, %._crit_edge602 ]
  %125 = phi i32 [ %.pre745, %._crit_edge793 ], [ %69, %._crit_edge602 ]
  %126 = phi i32 [ %.pre747, %._crit_edge793 ], [ %70, %._crit_edge602 ]
  %127 = phi i32 [ %.pre749, %._crit_edge793 ], [ %71, %._crit_edge602 ]
  %128 = phi i32 [ %.pre751, %._crit_edge793 ], [ %72, %._crit_edge602 ]
  %129 = phi i32 [ %.pre753, %._crit_edge793 ], [ %73, %._crit_edge602 ]
  %130 = phi i32 [ %.pre755, %._crit_edge793 ], [ %74, %._crit_edge602 ]
  %131 = phi i32 [ %.pre757, %._crit_edge793 ], [ %75, %._crit_edge602 ]
  %132 = phi i32 [ %.pre759, %._crit_edge793 ], [ %76, %._crit_edge602 ]
  %133 = phi i32 [ %.pre761, %._crit_edge793 ], [ %77, %._crit_edge602 ]
  %134 = phi i32 [ %.pre763, %._crit_edge793 ], [ %78, %._crit_edge602 ]
  %135 = phi i32 [ %.pre765, %._crit_edge793 ], [ %79, %._crit_edge602 ]
  %136 = phi i32 [ %.pre767, %._crit_edge793 ], [ %80, %._crit_edge602 ]
  %137 = phi i32 [ %.pre769, %._crit_edge793 ], [ %81, %._crit_edge602 ]
  %138 = phi i32 [ %.pre771, %._crit_edge793 ], [ %82, %._crit_edge602 ]
  %139 = phi i32 [ %.pre773, %._crit_edge793 ], [ %83, %._crit_edge602 ]
  %140 = phi i32 [ %.pre775, %._crit_edge793 ], [ %84, %._crit_edge602 ]
  %141 = phi i32 [ %.pre777, %._crit_edge793 ], [ %85, %._crit_edge602 ]
  %142 = phi i32* [ %.pre779, %._crit_edge793 ], [ %86, %._crit_edge602 ]
  %143 = phi i32* [ %.pre781, %._crit_edge793 ], [ %87, %._crit_edge602 ]
  %144 = phi i32* [ %.pre783, %._crit_edge793 ], [ %88, %._crit_edge602 ]
  %.pre-phi11202489 = phi i32* [ %.phi.trans.insert738, %._crit_edge793 ], [ %.pre-phi11202490, %._crit_edge602 ]
  %.pre-phi11212434 = phi i32* [ %.phi.trans.insert740, %._crit_edge793 ], [ %.pre-phi11212435, %._crit_edge602 ]
  %.pre-phi11222379 = phi i32* [ %.phi.trans.insert742, %._crit_edge793 ], [ %.pre-phi11222380, %._crit_edge602 ]
  %.pre-phi11232324 = phi i32* [ %.phi.trans.insert744, %._crit_edge793 ], [ %.pre-phi11232325, %._crit_edge602 ]
  %.pre-phi11242269 = phi i32* [ %.phi.trans.insert746, %._crit_edge793 ], [ %.pre-phi11242270, %._crit_edge602 ]
  %.pre-phi11252214 = phi i32* [ %.phi.trans.insert748, %._crit_edge793 ], [ %.pre-phi11252215, %._crit_edge602 ]
  %.pre-phi11262159 = phi i32* [ %.phi.trans.insert750, %._crit_edge793 ], [ %.pre-phi11262160, %._crit_edge602 ]
  %.pre-phi11272104 = phi i32* [ %.phi.trans.insert752, %._crit_edge793 ], [ %.pre-phi11272105, %._crit_edge602 ]
  %.pre-phi11282049 = phi i32* [ %.phi.trans.insert754, %._crit_edge793 ], [ %.pre-phi11282050, %._crit_edge602 ]
  %.pre-phi11291994 = phi i32* [ %.phi.trans.insert756, %._crit_edge793 ], [ %.pre-phi11291995, %._crit_edge602 ]
  %.pre-phi11301939 = phi i32* [ %.phi.trans.insert758, %._crit_edge793 ], [ %.pre-phi11301940, %._crit_edge602 ]
  %.pre-phi11311884 = phi i32* [ %.phi.trans.insert760, %._crit_edge793 ], [ %.pre-phi11311885, %._crit_edge602 ]
  %.pre-phi11321829 = phi i32* [ %.phi.trans.insert762, %._crit_edge793 ], [ %.pre-phi11321830, %._crit_edge602 ]
  %.pre-phi11331774 = phi i32* [ %.phi.trans.insert764, %._crit_edge793 ], [ %.pre-phi11331775, %._crit_edge602 ]
  %.pre-phi11341719 = phi i32* [ %.phi.trans.insert766, %._crit_edge793 ], [ %.pre-phi11341720, %._crit_edge602 ]
  %.pre-phi11351664 = phi i32* [ %.phi.trans.insert768, %._crit_edge793 ], [ %.pre-phi11351665, %._crit_edge602 ]
  %.pre-phi11361609 = phi i32* [ %.phi.trans.insert770, %._crit_edge793 ], [ %.pre-phi11361610, %._crit_edge602 ]
  %.pre-phi11371554 = phi i32* [ %.phi.trans.insert772, %._crit_edge793 ], [ %.pre-phi11371555, %._crit_edge602 ]
  %.pre-phi11381499 = phi i32* [ %.phi.trans.insert774, %._crit_edge793 ], [ %.pre-phi11381500, %._crit_edge602 ]
  %.pre-phi11391444 = phi i32* [ %.phi.trans.insert776, %._crit_edge793 ], [ %.pre-phi11391445, %._crit_edge602 ]
  %.pre-phi11401389 = phi i32** [ %.phi.trans.insert778, %._crit_edge793 ], [ %.pre-phi11401390, %._crit_edge602 ]
  %.pre-phi11411334 = phi i32** [ %.phi.trans.insert780, %._crit_edge793 ], [ %.pre-phi11411335, %._crit_edge602 ]
  %.pre-phi11421279 = phi i32** [ %.phi.trans.insert782, %._crit_edge793 ], [ %.pre-phi11421280, %._crit_edge602 ]
  %.pre-phi1146 = phi i32* [ %.phi.trans.insert794, %._crit_edge793 ], [ %.pre-phi1144, %._crit_edge602 ]
  %145 = phi i32 [ %.pre795, %._crit_edge793 ], [ %92, %._crit_edge602 ]
  store i32 12, i32* %3, align 4, !tbaa !8
  %146 = icmp sgt i32 %145, 7
  %.phi.trans.insert797 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %146, label %._crit_edge796, label %.lr.ph596

._crit_edge796:                                   ; preds = %120
  %.pre798 = load i32* %.phi.trans.insert797, align 4, !tbaa !34
  br label %._crit_edge597

.lr.ph596:                                        ; preds = %120
  %.phi.trans.insert1042 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 1
  %.pre1043 = load i32* %.phi.trans.insert1042, align 4, !tbaa !35
  br label %152

._crit_edge597:                                   ; preds = %.backedge164, %._crit_edge796
  %147 = phi i32 [ %.pre798, %._crit_edge796 ], [ %163, %.backedge164 ]
  %.lcssa333 = phi i32 [ %145, %._crit_edge796 ], [ %164, %.backedge164 ]
  %148 = add nsw i32 %.lcssa333, -8
  %149 = lshr i32 %147, %148
  store i32 %148, i32* %.pre-phi1146, align 4, !tbaa !9
  %150 = and i32 %149, 255
  %151 = icmp eq i32 %150, 104
  br i1 %151, label %176, label %.loopexit

; <label>:152                                     ; preds = %.lr.ph596, %.backedge164
  %153 = phi i32 [ %.pre1043, %.lr.ph596 ], [ %166, %.backedge164 ]
  %154 = phi i32 [ %145, %.lr.ph596 ], [ %164, %.backedge164 ]
  %155 = icmp eq i32 %153, 0
  br i1 %155, label %.loopexit, label %156

; <label>:156                                     ; preds = %152
  %157 = load i32* %.phi.trans.insert797, align 4, !tbaa !34
  %158 = shl i32 %157, 8
  %159 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 0
  %160 = load i8** %159, align 8, !tbaa !37
  %161 = load i8* %160, align 1, !tbaa !38
  %162 = zext i8 %161 to i32
  %163 = or i32 %162, %158
  store i32 %163, i32* %.phi.trans.insert797, align 4, !tbaa !34
  %164 = add nsw i32 %154, 8
  store i32 %164, i32* %.pre-phi1146, align 4, !tbaa !9
  %165 = getelementptr inbounds i8* %160, i64 1
  store i8* %165, i8** %159, align 8, !tbaa !37
  %166 = add i32 %153, -1
  store i32 %166, i32* %.phi.trans.insert1042, align 4, !tbaa !35
  %167 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 2
  %168 = load i32* %167, align 4, !tbaa !39
  %169 = add i32 %168, 1
  store i32 %169, i32* %167, align 4, !tbaa !39
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %.backedge164

; <label>:171                                     ; preds = %156
  %172 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 3
  %173 = load i32* %172, align 4, !tbaa !40
  %174 = add i32 %173, 1
  store i32 %174, i32* %172, align 4, !tbaa !40
  br label %.backedge164

.backedge164:                                     ; preds = %171, %156
  %175 = icmp sgt i32 %164, 7
  br i1 %175, label %._crit_edge597, label %152

; <label>:176                                     ; preds = %._crit_edge799, %._crit_edge597
  %177 = phi i32 [ %.pre, %._crit_edge799 ], [ %121, %._crit_edge597 ]
  %178 = phi i32 [ %.pre739, %._crit_edge799 ], [ %122, %._crit_edge597 ]
  %179 = phi i32 [ %.pre741, %._crit_edge799 ], [ %123, %._crit_edge597 ]
  %180 = phi i32 [ %.pre743, %._crit_edge799 ], [ %124, %._crit_edge597 ]
  %181 = phi i32 [ %.pre745, %._crit_edge799 ], [ %125, %._crit_edge597 ]
  %182 = phi i32 [ %.pre747, %._crit_edge799 ], [ %126, %._crit_edge597 ]
  %183 = phi i32 [ %.pre749, %._crit_edge799 ], [ %127, %._crit_edge597 ]
  %184 = phi i32 [ %.pre751, %._crit_edge799 ], [ %128, %._crit_edge597 ]
  %185 = phi i32 [ %.pre753, %._crit_edge799 ], [ %129, %._crit_edge597 ]
  %186 = phi i32 [ %.pre755, %._crit_edge799 ], [ %130, %._crit_edge597 ]
  %187 = phi i32 [ %.pre757, %._crit_edge799 ], [ %131, %._crit_edge597 ]
  %188 = phi i32 [ %.pre759, %._crit_edge799 ], [ %132, %._crit_edge597 ]
  %189 = phi i32 [ %.pre761, %._crit_edge799 ], [ %133, %._crit_edge597 ]
  %190 = phi i32 [ %.pre763, %._crit_edge799 ], [ %134, %._crit_edge597 ]
  %191 = phi i32 [ %.pre765, %._crit_edge799 ], [ %135, %._crit_edge597 ]
  %192 = phi i32 [ %.pre767, %._crit_edge799 ], [ %136, %._crit_edge597 ]
  %193 = phi i32 [ %.pre769, %._crit_edge799 ], [ %137, %._crit_edge597 ]
  %194 = phi i32 [ %.pre771, %._crit_edge799 ], [ %138, %._crit_edge597 ]
  %195 = phi i32 [ %.pre773, %._crit_edge799 ], [ %139, %._crit_edge597 ]
  %196 = phi i32 [ %.pre775, %._crit_edge799 ], [ %140, %._crit_edge597 ]
  %197 = phi i32 [ %.pre777, %._crit_edge799 ], [ %141, %._crit_edge597 ]
  %198 = phi i32* [ %.pre779, %._crit_edge799 ], [ %142, %._crit_edge597 ]
  %199 = phi i32* [ %.pre781, %._crit_edge799 ], [ %143, %._crit_edge597 ]
  %200 = phi i32* [ %.pre783, %._crit_edge799 ], [ %144, %._crit_edge597 ]
  %.pre-phi11202488 = phi i32* [ %.phi.trans.insert738, %._crit_edge799 ], [ %.pre-phi11202489, %._crit_edge597 ]
  %.pre-phi11212433 = phi i32* [ %.phi.trans.insert740, %._crit_edge799 ], [ %.pre-phi11212434, %._crit_edge597 ]
  %.pre-phi11222378 = phi i32* [ %.phi.trans.insert742, %._crit_edge799 ], [ %.pre-phi11222379, %._crit_edge597 ]
  %.pre-phi11232323 = phi i32* [ %.phi.trans.insert744, %._crit_edge799 ], [ %.pre-phi11232324, %._crit_edge597 ]
  %.pre-phi11242268 = phi i32* [ %.phi.trans.insert746, %._crit_edge799 ], [ %.pre-phi11242269, %._crit_edge597 ]
  %.pre-phi11252213 = phi i32* [ %.phi.trans.insert748, %._crit_edge799 ], [ %.pre-phi11252214, %._crit_edge597 ]
  %.pre-phi11262158 = phi i32* [ %.phi.trans.insert750, %._crit_edge799 ], [ %.pre-phi11262159, %._crit_edge597 ]
  %.pre-phi11272103 = phi i32* [ %.phi.trans.insert752, %._crit_edge799 ], [ %.pre-phi11272104, %._crit_edge597 ]
  %.pre-phi11282048 = phi i32* [ %.phi.trans.insert754, %._crit_edge799 ], [ %.pre-phi11282049, %._crit_edge597 ]
  %.pre-phi11291993 = phi i32* [ %.phi.trans.insert756, %._crit_edge799 ], [ %.pre-phi11291994, %._crit_edge597 ]
  %.pre-phi11301938 = phi i32* [ %.phi.trans.insert758, %._crit_edge799 ], [ %.pre-phi11301939, %._crit_edge597 ]
  %.pre-phi11311883 = phi i32* [ %.phi.trans.insert760, %._crit_edge799 ], [ %.pre-phi11311884, %._crit_edge597 ]
  %.pre-phi11321828 = phi i32* [ %.phi.trans.insert762, %._crit_edge799 ], [ %.pre-phi11321829, %._crit_edge597 ]
  %.pre-phi11331773 = phi i32* [ %.phi.trans.insert764, %._crit_edge799 ], [ %.pre-phi11331774, %._crit_edge597 ]
  %.pre-phi11341718 = phi i32* [ %.phi.trans.insert766, %._crit_edge799 ], [ %.pre-phi11341719, %._crit_edge597 ]
  %.pre-phi11351663 = phi i32* [ %.phi.trans.insert768, %._crit_edge799 ], [ %.pre-phi11351664, %._crit_edge597 ]
  %.pre-phi11361608 = phi i32* [ %.phi.trans.insert770, %._crit_edge799 ], [ %.pre-phi11361609, %._crit_edge597 ]
  %.pre-phi11371553 = phi i32* [ %.phi.trans.insert772, %._crit_edge799 ], [ %.pre-phi11371554, %._crit_edge597 ]
  %.pre-phi11381498 = phi i32* [ %.phi.trans.insert774, %._crit_edge799 ], [ %.pre-phi11381499, %._crit_edge597 ]
  %.pre-phi11391443 = phi i32* [ %.phi.trans.insert776, %._crit_edge799 ], [ %.pre-phi11391444, %._crit_edge597 ]
  %.pre-phi11401388 = phi i32** [ %.phi.trans.insert778, %._crit_edge799 ], [ %.pre-phi11401389, %._crit_edge597 ]
  %.pre-phi11411333 = phi i32** [ %.phi.trans.insert780, %._crit_edge799 ], [ %.pre-phi11411334, %._crit_edge597 ]
  %.pre-phi11421278 = phi i32** [ %.phi.trans.insert782, %._crit_edge799 ], [ %.pre-phi11421279, %._crit_edge597 ]
  %.pre-phi1148 = phi i32* [ %.phi.trans.insert800, %._crit_edge799 ], [ %.pre-phi1146, %._crit_edge597 ]
  %201 = phi i32 [ %.pre801, %._crit_edge799 ], [ %148, %._crit_edge597 ]
  store i32 13, i32* %3, align 4, !tbaa !8
  %202 = icmp sgt i32 %201, 7
  %.phi.trans.insert803 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %202, label %._crit_edge802, label %.lr.ph591

._crit_edge802:                                   ; preds = %176
  %.pre804 = load i32* %.phi.trans.insert803, align 4, !tbaa !34
  br label %._crit_edge592

.lr.ph591:                                        ; preds = %176
  %.phi.trans.insert1044 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 1
  %.pre1045 = load i32* %.phi.trans.insert1044, align 4, !tbaa !35
  br label %209

._crit_edge592:                                   ; preds = %.backedge162, %._crit_edge802
  %203 = phi i32 [ %.pre804, %._crit_edge802 ], [ %220, %.backedge162 ]
  %.lcssa329 = phi i32 [ %201, %._crit_edge802 ], [ %221, %.backedge162 ]
  %204 = add nsw i32 %.lcssa329, -8
  %205 = lshr i32 %203, %204
  %206 = and i32 %205, 255
  store i32 %204, i32* %.pre-phi1148, align 4, !tbaa !9
  %207 = getelementptr inbounds %struct.DState* %s, i64 0, i32 9
  store i32 %206, i32* %207, align 4, !tbaa !41
  %.off = add nsw i32 %206, -49
  %208 = icmp ugt i32 %.off, 8
  br i1 %208, label %.loopexit, label %233

; <label>:209                                     ; preds = %.lr.ph591, %.backedge162
  %210 = phi i32 [ %.pre1045, %.lr.ph591 ], [ %223, %.backedge162 ]
  %211 = phi i32 [ %201, %.lr.ph591 ], [ %221, %.backedge162 ]
  %212 = icmp eq i32 %210, 0
  br i1 %212, label %.loopexit, label %213

; <label>:213                                     ; preds = %209
  %214 = load i32* %.phi.trans.insert803, align 4, !tbaa !34
  %215 = shl i32 %214, 8
  %216 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 0
  %217 = load i8** %216, align 8, !tbaa !37
  %218 = load i8* %217, align 1, !tbaa !38
  %219 = zext i8 %218 to i32
  %220 = or i32 %219, %215
  store i32 %220, i32* %.phi.trans.insert803, align 4, !tbaa !34
  %221 = add nsw i32 %211, 8
  store i32 %221, i32* %.pre-phi1148, align 4, !tbaa !9
  %222 = getelementptr inbounds i8* %217, i64 1
  store i8* %222, i8** %216, align 8, !tbaa !37
  %223 = add i32 %210, -1
  store i32 %223, i32* %.phi.trans.insert1044, align 4, !tbaa !35
  %224 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 2
  %225 = load i32* %224, align 4, !tbaa !39
  %226 = add i32 %225, 1
  store i32 %226, i32* %224, align 4, !tbaa !39
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %.backedge162

; <label>:228                                     ; preds = %213
  %229 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 3
  %230 = load i32* %229, align 4, !tbaa !40
  %231 = add i32 %230, 1
  store i32 %231, i32* %229, align 4, !tbaa !40
  br label %.backedge162

.backedge162:                                     ; preds = %228, %213
  %232 = icmp sgt i32 %221, 7
  br i1 %232, label %._crit_edge592, label %209

; <label>:233                                     ; preds = %._crit_edge592
  %234 = add nsw i32 %206, -48
  store i32 %234, i32* %207, align 4, !tbaa !41
  %235 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10
  %236 = load i8* %235, align 1, !tbaa !42
  %237 = icmp eq i8 %236, 0
  %238 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 9
  %239 = load i8* (i8*, i32, i32)** %238, align 8, !tbaa !43
  %240 = getelementptr inbounds %struct.bz_stream* %2, i64 0, i32 11
  %241 = load i8** %240, align 8, !tbaa !44
  br i1 %237, label %257, label %242

; <label>:242                                     ; preds = %233
  %243 = mul nsw i32 %234, 200000
  %244 = tail call i8* %239(i8* %241, i32 %243, i32 1) #4
  %245 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21
  %246 = bitcast i16** %245 to i8**
  store i8* %244, i8** %246, align 8, !tbaa !45
  %247 = load i8* (i8*, i32, i32)** %238, align 8, !tbaa !43
  %248 = load i8** %240, align 8, !tbaa !44
  %249 = load i32* %207, align 4, !tbaa !41
  %250 = mul nsw i32 %249, 100000
  %251 = ashr exact i32 %250, 1
  %252 = tail call i8* %247(i8* %248, i32 %251, i32 1) #4
  %253 = getelementptr inbounds %struct.DState* %s, i64 0, i32 22
  store i8* %252, i8** %253, align 8, !tbaa !46
  %254 = load i16** %245, align 8, !tbaa !45
  %255 = icmp eq i16* %254, null
  %256 = icmp eq i8* %252, null
  %or.cond56 = or i1 %256, %255
  br i1 %or.cond56, label %.loopexit, label %263

; <label>:257                                     ; preds = %233
  %258 = mul nsw i32 %234, 400000
  %259 = tail call i8* %239(i8* %241, i32 %258, i32 1) #4
  %260 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20
  %261 = bitcast i32** %260 to i8**
  store i8* %259, i8** %261, align 8, !tbaa !47
  %262 = icmp eq i8* %259, null
  br i1 %262, label %.loopexit, label %263

; <label>:263                                     ; preds = %._crit_edge1216, %242, %257
  %264 = phi i32 [ %.pre, %._crit_edge1216 ], [ %177, %242 ], [ %177, %257 ]
  %265 = phi i32 [ %.pre739, %._crit_edge1216 ], [ %178, %242 ], [ %178, %257 ]
  %266 = phi i32 [ %.pre741, %._crit_edge1216 ], [ %179, %242 ], [ %179, %257 ]
  %267 = phi i32 [ %.pre743, %._crit_edge1216 ], [ %180, %242 ], [ %180, %257 ]
  %268 = phi i32 [ %.pre745, %._crit_edge1216 ], [ %181, %242 ], [ %181, %257 ]
  %269 = phi i32 [ %.pre747, %._crit_edge1216 ], [ %182, %242 ], [ %182, %257 ]
  %270 = phi i32 [ %.pre749, %._crit_edge1216 ], [ %183, %242 ], [ %183, %257 ]
  %271 = phi i32 [ %.pre751, %._crit_edge1216 ], [ %184, %242 ], [ %184, %257 ]
  %272 = phi i32 [ %.pre753, %._crit_edge1216 ], [ %185, %242 ], [ %185, %257 ]
  %273 = phi i32 [ %.pre755, %._crit_edge1216 ], [ %186, %242 ], [ %186, %257 ]
  %274 = phi i32 [ %.pre757, %._crit_edge1216 ], [ %187, %242 ], [ %187, %257 ]
  %275 = phi i32 [ %.pre759, %._crit_edge1216 ], [ %188, %242 ], [ %188, %257 ]
  %276 = phi i32 [ %.pre761, %._crit_edge1216 ], [ %189, %242 ], [ %189, %257 ]
  %277 = phi i32 [ %.pre763, %._crit_edge1216 ], [ %190, %242 ], [ %190, %257 ]
  %278 = phi i32 [ %.pre765, %._crit_edge1216 ], [ %191, %242 ], [ %191, %257 ]
  %279 = phi i32 [ %.pre767, %._crit_edge1216 ], [ %192, %242 ], [ %192, %257 ]
  %280 = phi i32 [ %.pre769, %._crit_edge1216 ], [ %193, %242 ], [ %193, %257 ]
  %281 = phi i32 [ %.pre771, %._crit_edge1216 ], [ %194, %242 ], [ %194, %257 ]
  %282 = phi i32 [ %.pre773, %._crit_edge1216 ], [ %195, %242 ], [ %195, %257 ]
  %283 = phi i32 [ %.pre775, %._crit_edge1216 ], [ %196, %242 ], [ %196, %257 ]
  %284 = phi i32 [ %.pre777, %._crit_edge1216 ], [ %197, %242 ], [ %197, %257 ]
  %285 = phi i32* [ %.pre779, %._crit_edge1216 ], [ %198, %242 ], [ %198, %257 ]
  %286 = phi i32* [ %.pre781, %._crit_edge1216 ], [ %199, %242 ], [ %199, %257 ]
  %287 = phi i32* [ %.pre783, %._crit_edge1216 ], [ %200, %242 ], [ %200, %257 ]
  %.pre-phi11202487 = phi i32* [ %.phi.trans.insert738, %._crit_edge1216 ], [ %.pre-phi11202488, %242 ], [ %.pre-phi11202488, %257 ]
  %.pre-phi11212432 = phi i32* [ %.phi.trans.insert740, %._crit_edge1216 ], [ %.pre-phi11212433, %242 ], [ %.pre-phi11212433, %257 ]
  %.pre-phi11222377 = phi i32* [ %.phi.trans.insert742, %._crit_edge1216 ], [ %.pre-phi11222378, %242 ], [ %.pre-phi11222378, %257 ]
  %.pre-phi11232322 = phi i32* [ %.phi.trans.insert744, %._crit_edge1216 ], [ %.pre-phi11232323, %242 ], [ %.pre-phi11232323, %257 ]
  %.pre-phi11242267 = phi i32* [ %.phi.trans.insert746, %._crit_edge1216 ], [ %.pre-phi11242268, %242 ], [ %.pre-phi11242268, %257 ]
  %.pre-phi11252212 = phi i32* [ %.phi.trans.insert748, %._crit_edge1216 ], [ %.pre-phi11252213, %242 ], [ %.pre-phi11252213, %257 ]
  %.pre-phi11262157 = phi i32* [ %.phi.trans.insert750, %._crit_edge1216 ], [ %.pre-phi11262158, %242 ], [ %.pre-phi11262158, %257 ]
  %.pre-phi11272102 = phi i32* [ %.phi.trans.insert752, %._crit_edge1216 ], [ %.pre-phi11272103, %242 ], [ %.pre-phi11272103, %257 ]
  %.pre-phi11282047 = phi i32* [ %.phi.trans.insert754, %._crit_edge1216 ], [ %.pre-phi11282048, %242 ], [ %.pre-phi11282048, %257 ]
  %.pre-phi11291992 = phi i32* [ %.phi.trans.insert756, %._crit_edge1216 ], [ %.pre-phi11291993, %242 ], [ %.pre-phi11291993, %257 ]
  %.pre-phi11301937 = phi i32* [ %.phi.trans.insert758, %._crit_edge1216 ], [ %.pre-phi11301938, %242 ], [ %.pre-phi11301938, %257 ]
  %.pre-phi11311882 = phi i32* [ %.phi.trans.insert760, %._crit_edge1216 ], [ %.pre-phi11311883, %242 ], [ %.pre-phi11311883, %257 ]
  %.pre-phi11321827 = phi i32* [ %.phi.trans.insert762, %._crit_edge1216 ], [ %.pre-phi11321828, %242 ], [ %.pre-phi11321828, %257 ]
  %.pre-phi11331772 = phi i32* [ %.phi.trans.insert764, %._crit_edge1216 ], [ %.pre-phi11331773, %242 ], [ %.pre-phi11331773, %257 ]
  %.pre-phi11341717 = phi i32* [ %.phi.trans.insert766, %._crit_edge1216 ], [ %.pre-phi11341718, %242 ], [ %.pre-phi11341718, %257 ]
  %.pre-phi11351662 = phi i32* [ %.phi.trans.insert768, %._crit_edge1216 ], [ %.pre-phi11351663, %242 ], [ %.pre-phi11351663, %257 ]
  %.pre-phi11361607 = phi i32* [ %.phi.trans.insert770, %._crit_edge1216 ], [ %.pre-phi11361608, %242 ], [ %.pre-phi11361608, %257 ]
  %.pre-phi11371552 = phi i32* [ %.phi.trans.insert772, %._crit_edge1216 ], [ %.pre-phi11371553, %242 ], [ %.pre-phi11371553, %257 ]
  %.pre-phi11381497 = phi i32* [ %.phi.trans.insert774, %._crit_edge1216 ], [ %.pre-phi11381498, %242 ], [ %.pre-phi11381498, %257 ]
  %.pre-phi11391442 = phi i32* [ %.phi.trans.insert776, %._crit_edge1216 ], [ %.pre-phi11391443, %242 ], [ %.pre-phi11391443, %257 ]
  %.pre-phi11401387 = phi i32** [ %.phi.trans.insert778, %._crit_edge1216 ], [ %.pre-phi11401388, %242 ], [ %.pre-phi11401388, %257 ]
  %.pre-phi11411332 = phi i32** [ %.phi.trans.insert780, %._crit_edge1216 ], [ %.pre-phi11411333, %242 ], [ %.pre-phi11411333, %257 ]
  %.pre-phi11421277 = phi i32** [ %.phi.trans.insert782, %._crit_edge1216 ], [ %.pre-phi11421278, %242 ], [ %.pre-phi11421278, %257 ]
  %.pre-phi1218 = phi i32* [ %.pre1217, %._crit_edge1216 ], [ %.pre-phi1148, %242 ], [ %.pre-phi1148, %257 ]
  store i32 14, i32* %3, align 4, !tbaa !8
  %288 = load i32* %.pre-phi1218, align 4, !tbaa !9
  %289 = icmp sgt i32 %288, 7
  %.phi.trans.insert807 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %289, label %._crit_edge806, label %.lr.ph586

._crit_edge806:                                   ; preds = %263
  %.pre808 = load i32* %.phi.trans.insert807, align 4, !tbaa !34
  br label %._crit_edge587

.lr.ph586:                                        ; preds = %263
  %.pre805 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1046 = getelementptr inbounds %struct.bz_stream* %.pre805, i64 0, i32 1
  %.pre1047 = load i32* %.phi.trans.insert1046, align 4, !tbaa !35
  br label %294

._crit_edge587:                                   ; preds = %.backedge160, %._crit_edge806
  %290 = phi i32 [ %.pre808, %._crit_edge806 ], [ %305, %.backedge160 ]
  %.lcssa325 = phi i32 [ %288, %._crit_edge806 ], [ %306, %.backedge160 ]
  %291 = add nsw i32 %.lcssa325, -8
  %292 = lshr i32 %290, %291
  store i32 %291, i32* %.pre-phi1218, align 4, !tbaa !9
  %293 = and i32 %292, 255
  switch i32 %293, label %.loopexit [
    i32 23, label %2556
    i32 49, label %318
  ]

; <label>:294                                     ; preds = %.lr.ph586, %.backedge160
  %295 = phi i32 [ %.pre1047, %.lr.ph586 ], [ %308, %.backedge160 ]
  %296 = phi i32 [ %288, %.lr.ph586 ], [ %306, %.backedge160 ]
  %297 = icmp eq i32 %295, 0
  br i1 %297, label %.loopexit, label %298

; <label>:298                                     ; preds = %294
  %299 = load i32* %.phi.trans.insert807, align 4, !tbaa !34
  %300 = shl i32 %299, 8
  %301 = getelementptr inbounds %struct.bz_stream* %.pre805, i64 0, i32 0
  %302 = load i8** %301, align 8, !tbaa !37
  %303 = load i8* %302, align 1, !tbaa !38
  %304 = zext i8 %303 to i32
  %305 = or i32 %304, %300
  store i32 %305, i32* %.phi.trans.insert807, align 4, !tbaa !34
  %306 = add nsw i32 %296, 8
  store i32 %306, i32* %.pre-phi1218, align 4, !tbaa !9
  %307 = getelementptr inbounds i8* %302, i64 1
  store i8* %307, i8** %301, align 8, !tbaa !37
  %308 = add i32 %295, -1
  store i32 %308, i32* %.phi.trans.insert1046, align 4, !tbaa !35
  %309 = getelementptr inbounds %struct.bz_stream* %.pre805, i64 0, i32 2
  %310 = load i32* %309, align 4, !tbaa !39
  %311 = add i32 %310, 1
  store i32 %311, i32* %309, align 4, !tbaa !39
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %.backedge160

; <label>:313                                     ; preds = %298
  %314 = getelementptr inbounds %struct.bz_stream* %.pre805, i64 0, i32 3
  %315 = load i32* %314, align 4, !tbaa !40
  %316 = add i32 %315, 1
  store i32 %316, i32* %314, align 4, !tbaa !40
  br label %.backedge160

.backedge160:                                     ; preds = %313, %298
  %317 = icmp sgt i32 %306, 7
  br i1 %317, label %._crit_edge587, label %294

; <label>:318                                     ; preds = %._crit_edge809, %._crit_edge587
  %319 = phi i32 [ %.pre, %._crit_edge809 ], [ %264, %._crit_edge587 ]
  %320 = phi i32 [ %.pre739, %._crit_edge809 ], [ %265, %._crit_edge587 ]
  %321 = phi i32 [ %.pre741, %._crit_edge809 ], [ %266, %._crit_edge587 ]
  %322 = phi i32 [ %.pre743, %._crit_edge809 ], [ %267, %._crit_edge587 ]
  %323 = phi i32 [ %.pre745, %._crit_edge809 ], [ %268, %._crit_edge587 ]
  %324 = phi i32 [ %.pre747, %._crit_edge809 ], [ %269, %._crit_edge587 ]
  %325 = phi i32 [ %.pre749, %._crit_edge809 ], [ %270, %._crit_edge587 ]
  %326 = phi i32 [ %.pre751, %._crit_edge809 ], [ %271, %._crit_edge587 ]
  %327 = phi i32 [ %.pre753, %._crit_edge809 ], [ %272, %._crit_edge587 ]
  %328 = phi i32 [ %.pre755, %._crit_edge809 ], [ %273, %._crit_edge587 ]
  %329 = phi i32 [ %.pre757, %._crit_edge809 ], [ %274, %._crit_edge587 ]
  %330 = phi i32 [ %.pre759, %._crit_edge809 ], [ %275, %._crit_edge587 ]
  %331 = phi i32 [ %.pre761, %._crit_edge809 ], [ %276, %._crit_edge587 ]
  %332 = phi i32 [ %.pre763, %._crit_edge809 ], [ %277, %._crit_edge587 ]
  %333 = phi i32 [ %.pre765, %._crit_edge809 ], [ %278, %._crit_edge587 ]
  %334 = phi i32 [ %.pre767, %._crit_edge809 ], [ %279, %._crit_edge587 ]
  %335 = phi i32 [ %.pre769, %._crit_edge809 ], [ %280, %._crit_edge587 ]
  %336 = phi i32 [ %.pre771, %._crit_edge809 ], [ %281, %._crit_edge587 ]
  %337 = phi i32 [ %.pre773, %._crit_edge809 ], [ %282, %._crit_edge587 ]
  %338 = phi i32 [ %.pre775, %._crit_edge809 ], [ %283, %._crit_edge587 ]
  %339 = phi i32 [ %.pre777, %._crit_edge809 ], [ %284, %._crit_edge587 ]
  %340 = phi i32* [ %.pre779, %._crit_edge809 ], [ %285, %._crit_edge587 ]
  %341 = phi i32* [ %.pre781, %._crit_edge809 ], [ %286, %._crit_edge587 ]
  %342 = phi i32* [ %.pre783, %._crit_edge809 ], [ %287, %._crit_edge587 ]
  %.pre-phi11202477 = phi i32* [ %.phi.trans.insert738, %._crit_edge809 ], [ %.pre-phi11202487, %._crit_edge587 ]
  %.pre-phi11212422 = phi i32* [ %.phi.trans.insert740, %._crit_edge809 ], [ %.pre-phi11212432, %._crit_edge587 ]
  %.pre-phi11222367 = phi i32* [ %.phi.trans.insert742, %._crit_edge809 ], [ %.pre-phi11222377, %._crit_edge587 ]
  %.pre-phi11232312 = phi i32* [ %.phi.trans.insert744, %._crit_edge809 ], [ %.pre-phi11232322, %._crit_edge587 ]
  %.pre-phi11242257 = phi i32* [ %.phi.trans.insert746, %._crit_edge809 ], [ %.pre-phi11242267, %._crit_edge587 ]
  %.pre-phi11252202 = phi i32* [ %.phi.trans.insert748, %._crit_edge809 ], [ %.pre-phi11252212, %._crit_edge587 ]
  %.pre-phi11262147 = phi i32* [ %.phi.trans.insert750, %._crit_edge809 ], [ %.pre-phi11262157, %._crit_edge587 ]
  %.pre-phi11272092 = phi i32* [ %.phi.trans.insert752, %._crit_edge809 ], [ %.pre-phi11272102, %._crit_edge587 ]
  %.pre-phi11282037 = phi i32* [ %.phi.trans.insert754, %._crit_edge809 ], [ %.pre-phi11282047, %._crit_edge587 ]
  %.pre-phi11291982 = phi i32* [ %.phi.trans.insert756, %._crit_edge809 ], [ %.pre-phi11291992, %._crit_edge587 ]
  %.pre-phi11301927 = phi i32* [ %.phi.trans.insert758, %._crit_edge809 ], [ %.pre-phi11301937, %._crit_edge587 ]
  %.pre-phi11311872 = phi i32* [ %.phi.trans.insert760, %._crit_edge809 ], [ %.pre-phi11311882, %._crit_edge587 ]
  %.pre-phi11321817 = phi i32* [ %.phi.trans.insert762, %._crit_edge809 ], [ %.pre-phi11321827, %._crit_edge587 ]
  %.pre-phi11331762 = phi i32* [ %.phi.trans.insert764, %._crit_edge809 ], [ %.pre-phi11331772, %._crit_edge587 ]
  %.pre-phi11341707 = phi i32* [ %.phi.trans.insert766, %._crit_edge809 ], [ %.pre-phi11341717, %._crit_edge587 ]
  %.pre-phi11351652 = phi i32* [ %.phi.trans.insert768, %._crit_edge809 ], [ %.pre-phi11351662, %._crit_edge587 ]
  %.pre-phi11361597 = phi i32* [ %.phi.trans.insert770, %._crit_edge809 ], [ %.pre-phi11361607, %._crit_edge587 ]
  %.pre-phi11371542 = phi i32* [ %.phi.trans.insert772, %._crit_edge809 ], [ %.pre-phi11371552, %._crit_edge587 ]
  %.pre-phi11381487 = phi i32* [ %.phi.trans.insert774, %._crit_edge809 ], [ %.pre-phi11381497, %._crit_edge587 ]
  %.pre-phi11391432 = phi i32* [ %.phi.trans.insert776, %._crit_edge809 ], [ %.pre-phi11391442, %._crit_edge587 ]
  %.pre-phi11401377 = phi i32** [ %.phi.trans.insert778, %._crit_edge809 ], [ %.pre-phi11401387, %._crit_edge587 ]
  %.pre-phi11411322 = phi i32** [ %.phi.trans.insert780, %._crit_edge809 ], [ %.pre-phi11411332, %._crit_edge587 ]
  %.pre-phi11421267 = phi i32** [ %.phi.trans.insert782, %._crit_edge809 ], [ %.pre-phi11421277, %._crit_edge587 ]
  %.pre-phi1169 = phi i32* [ %.phi.trans.insert810, %._crit_edge809 ], [ %.pre-phi1218, %._crit_edge587 ]
  %343 = phi i32 [ %.pre811, %._crit_edge809 ], [ %291, %._crit_edge587 ]
  store i32 15, i32* %3, align 4, !tbaa !8
  %344 = icmp sgt i32 %343, 7
  %.phi.trans.insert814 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %344, label %._crit_edge813, label %.lr.ph581

._crit_edge813:                                   ; preds = %318
  %.pre815 = load i32* %.phi.trans.insert814, align 4, !tbaa !34
  br label %._crit_edge582

.lr.ph581:                                        ; preds = %318
  %.pre812 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1048 = getelementptr inbounds %struct.bz_stream* %.pre812, i64 0, i32 1
  %.pre1049 = load i32* %.phi.trans.insert1048, align 4, !tbaa !35
  br label %350

._crit_edge582:                                   ; preds = %.backedge158, %._crit_edge813
  %345 = phi i32 [ %.pre815, %._crit_edge813 ], [ %361, %.backedge158 ]
  %.lcssa321 = phi i32 [ %343, %._crit_edge813 ], [ %362, %.backedge158 ]
  %346 = add nsw i32 %.lcssa321, -8
  %347 = lshr i32 %345, %346
  store i32 %346, i32* %.pre-phi1169, align 4, !tbaa !9
  %348 = and i32 %347, 255
  %349 = icmp eq i32 %348, 65
  br i1 %349, label %374, label %.loopexit

; <label>:350                                     ; preds = %.lr.ph581, %.backedge158
  %351 = phi i32 [ %.pre1049, %.lr.ph581 ], [ %364, %.backedge158 ]
  %352 = phi i32 [ %343, %.lr.ph581 ], [ %362, %.backedge158 ]
  %353 = icmp eq i32 %351, 0
  br i1 %353, label %.loopexit, label %354

; <label>:354                                     ; preds = %350
  %355 = load i32* %.phi.trans.insert814, align 4, !tbaa !34
  %356 = shl i32 %355, 8
  %357 = getelementptr inbounds %struct.bz_stream* %.pre812, i64 0, i32 0
  %358 = load i8** %357, align 8, !tbaa !37
  %359 = load i8* %358, align 1, !tbaa !38
  %360 = zext i8 %359 to i32
  %361 = or i32 %360, %356
  store i32 %361, i32* %.phi.trans.insert814, align 4, !tbaa !34
  %362 = add nsw i32 %352, 8
  store i32 %362, i32* %.pre-phi1169, align 4, !tbaa !9
  %363 = getelementptr inbounds i8* %358, i64 1
  store i8* %363, i8** %357, align 8, !tbaa !37
  %364 = add i32 %351, -1
  store i32 %364, i32* %.phi.trans.insert1048, align 4, !tbaa !35
  %365 = getelementptr inbounds %struct.bz_stream* %.pre812, i64 0, i32 2
  %366 = load i32* %365, align 4, !tbaa !39
  %367 = add i32 %366, 1
  store i32 %367, i32* %365, align 4, !tbaa !39
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %.backedge158

; <label>:369                                     ; preds = %354
  %370 = getelementptr inbounds %struct.bz_stream* %.pre812, i64 0, i32 3
  %371 = load i32* %370, align 4, !tbaa !40
  %372 = add i32 %371, 1
  store i32 %372, i32* %370, align 4, !tbaa !40
  br label %.backedge158

.backedge158:                                     ; preds = %369, %354
  %373 = icmp sgt i32 %362, 7
  br i1 %373, label %._crit_edge582, label %350

; <label>:374                                     ; preds = %._crit_edge816, %._crit_edge582
  %375 = phi i32 [ %.pre, %._crit_edge816 ], [ %319, %._crit_edge582 ]
  %376 = phi i32 [ %.pre739, %._crit_edge816 ], [ %320, %._crit_edge582 ]
  %377 = phi i32 [ %.pre741, %._crit_edge816 ], [ %321, %._crit_edge582 ]
  %378 = phi i32 [ %.pre743, %._crit_edge816 ], [ %322, %._crit_edge582 ]
  %379 = phi i32 [ %.pre745, %._crit_edge816 ], [ %323, %._crit_edge582 ]
  %380 = phi i32 [ %.pre747, %._crit_edge816 ], [ %324, %._crit_edge582 ]
  %381 = phi i32 [ %.pre749, %._crit_edge816 ], [ %325, %._crit_edge582 ]
  %382 = phi i32 [ %.pre751, %._crit_edge816 ], [ %326, %._crit_edge582 ]
  %383 = phi i32 [ %.pre753, %._crit_edge816 ], [ %327, %._crit_edge582 ]
  %384 = phi i32 [ %.pre755, %._crit_edge816 ], [ %328, %._crit_edge582 ]
  %385 = phi i32 [ %.pre757, %._crit_edge816 ], [ %329, %._crit_edge582 ]
  %386 = phi i32 [ %.pre759, %._crit_edge816 ], [ %330, %._crit_edge582 ]
  %387 = phi i32 [ %.pre761, %._crit_edge816 ], [ %331, %._crit_edge582 ]
  %388 = phi i32 [ %.pre763, %._crit_edge816 ], [ %332, %._crit_edge582 ]
  %389 = phi i32 [ %.pre765, %._crit_edge816 ], [ %333, %._crit_edge582 ]
  %390 = phi i32 [ %.pre767, %._crit_edge816 ], [ %334, %._crit_edge582 ]
  %391 = phi i32 [ %.pre769, %._crit_edge816 ], [ %335, %._crit_edge582 ]
  %392 = phi i32 [ %.pre771, %._crit_edge816 ], [ %336, %._crit_edge582 ]
  %393 = phi i32 [ %.pre773, %._crit_edge816 ], [ %337, %._crit_edge582 ]
  %394 = phi i32 [ %.pre775, %._crit_edge816 ], [ %338, %._crit_edge582 ]
  %395 = phi i32 [ %.pre777, %._crit_edge816 ], [ %339, %._crit_edge582 ]
  %396 = phi i32* [ %.pre779, %._crit_edge816 ], [ %340, %._crit_edge582 ]
  %397 = phi i32* [ %.pre781, %._crit_edge816 ], [ %341, %._crit_edge582 ]
  %398 = phi i32* [ %.pre783, %._crit_edge816 ], [ %342, %._crit_edge582 ]
  %.pre-phi11202476 = phi i32* [ %.phi.trans.insert738, %._crit_edge816 ], [ %.pre-phi11202477, %._crit_edge582 ]
  %.pre-phi11212421 = phi i32* [ %.phi.trans.insert740, %._crit_edge816 ], [ %.pre-phi11212422, %._crit_edge582 ]
  %.pre-phi11222366 = phi i32* [ %.phi.trans.insert742, %._crit_edge816 ], [ %.pre-phi11222367, %._crit_edge582 ]
  %.pre-phi11232311 = phi i32* [ %.phi.trans.insert744, %._crit_edge816 ], [ %.pre-phi11232312, %._crit_edge582 ]
  %.pre-phi11242256 = phi i32* [ %.phi.trans.insert746, %._crit_edge816 ], [ %.pre-phi11242257, %._crit_edge582 ]
  %.pre-phi11252201 = phi i32* [ %.phi.trans.insert748, %._crit_edge816 ], [ %.pre-phi11252202, %._crit_edge582 ]
  %.pre-phi11262146 = phi i32* [ %.phi.trans.insert750, %._crit_edge816 ], [ %.pre-phi11262147, %._crit_edge582 ]
  %.pre-phi11272091 = phi i32* [ %.phi.trans.insert752, %._crit_edge816 ], [ %.pre-phi11272092, %._crit_edge582 ]
  %.pre-phi11282036 = phi i32* [ %.phi.trans.insert754, %._crit_edge816 ], [ %.pre-phi11282037, %._crit_edge582 ]
  %.pre-phi11291981 = phi i32* [ %.phi.trans.insert756, %._crit_edge816 ], [ %.pre-phi11291982, %._crit_edge582 ]
  %.pre-phi11301926 = phi i32* [ %.phi.trans.insert758, %._crit_edge816 ], [ %.pre-phi11301927, %._crit_edge582 ]
  %.pre-phi11311871 = phi i32* [ %.phi.trans.insert760, %._crit_edge816 ], [ %.pre-phi11311872, %._crit_edge582 ]
  %.pre-phi11321816 = phi i32* [ %.phi.trans.insert762, %._crit_edge816 ], [ %.pre-phi11321817, %._crit_edge582 ]
  %.pre-phi11331761 = phi i32* [ %.phi.trans.insert764, %._crit_edge816 ], [ %.pre-phi11331762, %._crit_edge582 ]
  %.pre-phi11341706 = phi i32* [ %.phi.trans.insert766, %._crit_edge816 ], [ %.pre-phi11341707, %._crit_edge582 ]
  %.pre-phi11351651 = phi i32* [ %.phi.trans.insert768, %._crit_edge816 ], [ %.pre-phi11351652, %._crit_edge582 ]
  %.pre-phi11361596 = phi i32* [ %.phi.trans.insert770, %._crit_edge816 ], [ %.pre-phi11361597, %._crit_edge582 ]
  %.pre-phi11371541 = phi i32* [ %.phi.trans.insert772, %._crit_edge816 ], [ %.pre-phi11371542, %._crit_edge582 ]
  %.pre-phi11381486 = phi i32* [ %.phi.trans.insert774, %._crit_edge816 ], [ %.pre-phi11381487, %._crit_edge582 ]
  %.pre-phi11391431 = phi i32* [ %.phi.trans.insert776, %._crit_edge816 ], [ %.pre-phi11391432, %._crit_edge582 ]
  %.pre-phi11401376 = phi i32** [ %.phi.trans.insert778, %._crit_edge816 ], [ %.pre-phi11401377, %._crit_edge582 ]
  %.pre-phi11411321 = phi i32** [ %.phi.trans.insert780, %._crit_edge816 ], [ %.pre-phi11411322, %._crit_edge582 ]
  %.pre-phi11421266 = phi i32** [ %.phi.trans.insert782, %._crit_edge816 ], [ %.pre-phi11421267, %._crit_edge582 ]
  %.pre-phi1171 = phi i32* [ %.phi.trans.insert817, %._crit_edge816 ], [ %.pre-phi1169, %._crit_edge582 ]
  %399 = phi i32 [ %.pre818, %._crit_edge816 ], [ %346, %._crit_edge582 ]
  store i32 16, i32* %3, align 4, !tbaa !8
  %400 = icmp sgt i32 %399, 7
  %.phi.trans.insert821 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %400, label %._crit_edge820, label %.lr.ph576

._crit_edge820:                                   ; preds = %374
  %.pre822 = load i32* %.phi.trans.insert821, align 4, !tbaa !34
  br label %._crit_edge577

.lr.ph576:                                        ; preds = %374
  %.pre819 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1050 = getelementptr inbounds %struct.bz_stream* %.pre819, i64 0, i32 1
  %.pre1051 = load i32* %.phi.trans.insert1050, align 4, !tbaa !35
  br label %406

._crit_edge577:                                   ; preds = %.backedge156, %._crit_edge820
  %401 = phi i32 [ %.pre822, %._crit_edge820 ], [ %417, %.backedge156 ]
  %.lcssa317 = phi i32 [ %399, %._crit_edge820 ], [ %418, %.backedge156 ]
  %402 = add nsw i32 %.lcssa317, -8
  %403 = lshr i32 %401, %402
  store i32 %402, i32* %.pre-phi1171, align 4, !tbaa !9
  %404 = and i32 %403, 255
  %405 = icmp eq i32 %404, 89
  br i1 %405, label %430, label %.loopexit

; <label>:406                                     ; preds = %.lr.ph576, %.backedge156
  %407 = phi i32 [ %.pre1051, %.lr.ph576 ], [ %420, %.backedge156 ]
  %408 = phi i32 [ %399, %.lr.ph576 ], [ %418, %.backedge156 ]
  %409 = icmp eq i32 %407, 0
  br i1 %409, label %.loopexit, label %410

; <label>:410                                     ; preds = %406
  %411 = load i32* %.phi.trans.insert821, align 4, !tbaa !34
  %412 = shl i32 %411, 8
  %413 = getelementptr inbounds %struct.bz_stream* %.pre819, i64 0, i32 0
  %414 = load i8** %413, align 8, !tbaa !37
  %415 = load i8* %414, align 1, !tbaa !38
  %416 = zext i8 %415 to i32
  %417 = or i32 %416, %412
  store i32 %417, i32* %.phi.trans.insert821, align 4, !tbaa !34
  %418 = add nsw i32 %408, 8
  store i32 %418, i32* %.pre-phi1171, align 4, !tbaa !9
  %419 = getelementptr inbounds i8* %414, i64 1
  store i8* %419, i8** %413, align 8, !tbaa !37
  %420 = add i32 %407, -1
  store i32 %420, i32* %.phi.trans.insert1050, align 4, !tbaa !35
  %421 = getelementptr inbounds %struct.bz_stream* %.pre819, i64 0, i32 2
  %422 = load i32* %421, align 4, !tbaa !39
  %423 = add i32 %422, 1
  store i32 %423, i32* %421, align 4, !tbaa !39
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %.backedge156

; <label>:425                                     ; preds = %410
  %426 = getelementptr inbounds %struct.bz_stream* %.pre819, i64 0, i32 3
  %427 = load i32* %426, align 4, !tbaa !40
  %428 = add i32 %427, 1
  store i32 %428, i32* %426, align 4, !tbaa !40
  br label %.backedge156

.backedge156:                                     ; preds = %425, %410
  %429 = icmp sgt i32 %418, 7
  br i1 %429, label %._crit_edge577, label %406

; <label>:430                                     ; preds = %._crit_edge823, %._crit_edge577
  %431 = phi i32 [ %.pre, %._crit_edge823 ], [ %375, %._crit_edge577 ]
  %432 = phi i32 [ %.pre739, %._crit_edge823 ], [ %376, %._crit_edge577 ]
  %433 = phi i32 [ %.pre741, %._crit_edge823 ], [ %377, %._crit_edge577 ]
  %434 = phi i32 [ %.pre743, %._crit_edge823 ], [ %378, %._crit_edge577 ]
  %435 = phi i32 [ %.pre745, %._crit_edge823 ], [ %379, %._crit_edge577 ]
  %436 = phi i32 [ %.pre747, %._crit_edge823 ], [ %380, %._crit_edge577 ]
  %437 = phi i32 [ %.pre749, %._crit_edge823 ], [ %381, %._crit_edge577 ]
  %438 = phi i32 [ %.pre751, %._crit_edge823 ], [ %382, %._crit_edge577 ]
  %439 = phi i32 [ %.pre753, %._crit_edge823 ], [ %383, %._crit_edge577 ]
  %440 = phi i32 [ %.pre755, %._crit_edge823 ], [ %384, %._crit_edge577 ]
  %441 = phi i32 [ %.pre757, %._crit_edge823 ], [ %385, %._crit_edge577 ]
  %442 = phi i32 [ %.pre759, %._crit_edge823 ], [ %386, %._crit_edge577 ]
  %443 = phi i32 [ %.pre761, %._crit_edge823 ], [ %387, %._crit_edge577 ]
  %444 = phi i32 [ %.pre763, %._crit_edge823 ], [ %388, %._crit_edge577 ]
  %445 = phi i32 [ %.pre765, %._crit_edge823 ], [ %389, %._crit_edge577 ]
  %446 = phi i32 [ %.pre767, %._crit_edge823 ], [ %390, %._crit_edge577 ]
  %447 = phi i32 [ %.pre769, %._crit_edge823 ], [ %391, %._crit_edge577 ]
  %448 = phi i32 [ %.pre771, %._crit_edge823 ], [ %392, %._crit_edge577 ]
  %449 = phi i32 [ %.pre773, %._crit_edge823 ], [ %393, %._crit_edge577 ]
  %450 = phi i32 [ %.pre775, %._crit_edge823 ], [ %394, %._crit_edge577 ]
  %451 = phi i32 [ %.pre777, %._crit_edge823 ], [ %395, %._crit_edge577 ]
  %452 = phi i32* [ %.pre779, %._crit_edge823 ], [ %396, %._crit_edge577 ]
  %453 = phi i32* [ %.pre781, %._crit_edge823 ], [ %397, %._crit_edge577 ]
  %454 = phi i32* [ %.pre783, %._crit_edge823 ], [ %398, %._crit_edge577 ]
  %.pre-phi11202475 = phi i32* [ %.phi.trans.insert738, %._crit_edge823 ], [ %.pre-phi11202476, %._crit_edge577 ]
  %.pre-phi11212420 = phi i32* [ %.phi.trans.insert740, %._crit_edge823 ], [ %.pre-phi11212421, %._crit_edge577 ]
  %.pre-phi11222365 = phi i32* [ %.phi.trans.insert742, %._crit_edge823 ], [ %.pre-phi11222366, %._crit_edge577 ]
  %.pre-phi11232310 = phi i32* [ %.phi.trans.insert744, %._crit_edge823 ], [ %.pre-phi11232311, %._crit_edge577 ]
  %.pre-phi11242255 = phi i32* [ %.phi.trans.insert746, %._crit_edge823 ], [ %.pre-phi11242256, %._crit_edge577 ]
  %.pre-phi11252200 = phi i32* [ %.phi.trans.insert748, %._crit_edge823 ], [ %.pre-phi11252201, %._crit_edge577 ]
  %.pre-phi11262145 = phi i32* [ %.phi.trans.insert750, %._crit_edge823 ], [ %.pre-phi11262146, %._crit_edge577 ]
  %.pre-phi11272090 = phi i32* [ %.phi.trans.insert752, %._crit_edge823 ], [ %.pre-phi11272091, %._crit_edge577 ]
  %.pre-phi11282035 = phi i32* [ %.phi.trans.insert754, %._crit_edge823 ], [ %.pre-phi11282036, %._crit_edge577 ]
  %.pre-phi11291980 = phi i32* [ %.phi.trans.insert756, %._crit_edge823 ], [ %.pre-phi11291981, %._crit_edge577 ]
  %.pre-phi11301925 = phi i32* [ %.phi.trans.insert758, %._crit_edge823 ], [ %.pre-phi11301926, %._crit_edge577 ]
  %.pre-phi11311870 = phi i32* [ %.phi.trans.insert760, %._crit_edge823 ], [ %.pre-phi11311871, %._crit_edge577 ]
  %.pre-phi11321815 = phi i32* [ %.phi.trans.insert762, %._crit_edge823 ], [ %.pre-phi11321816, %._crit_edge577 ]
  %.pre-phi11331760 = phi i32* [ %.phi.trans.insert764, %._crit_edge823 ], [ %.pre-phi11331761, %._crit_edge577 ]
  %.pre-phi11341705 = phi i32* [ %.phi.trans.insert766, %._crit_edge823 ], [ %.pre-phi11341706, %._crit_edge577 ]
  %.pre-phi11351650 = phi i32* [ %.phi.trans.insert768, %._crit_edge823 ], [ %.pre-phi11351651, %._crit_edge577 ]
  %.pre-phi11361595 = phi i32* [ %.phi.trans.insert770, %._crit_edge823 ], [ %.pre-phi11361596, %._crit_edge577 ]
  %.pre-phi11371540 = phi i32* [ %.phi.trans.insert772, %._crit_edge823 ], [ %.pre-phi11371541, %._crit_edge577 ]
  %.pre-phi11381485 = phi i32* [ %.phi.trans.insert774, %._crit_edge823 ], [ %.pre-phi11381486, %._crit_edge577 ]
  %.pre-phi11391430 = phi i32* [ %.phi.trans.insert776, %._crit_edge823 ], [ %.pre-phi11391431, %._crit_edge577 ]
  %.pre-phi11401375 = phi i32** [ %.phi.trans.insert778, %._crit_edge823 ], [ %.pre-phi11401376, %._crit_edge577 ]
  %.pre-phi11411320 = phi i32** [ %.phi.trans.insert780, %._crit_edge823 ], [ %.pre-phi11411321, %._crit_edge577 ]
  %.pre-phi11421265 = phi i32** [ %.phi.trans.insert782, %._crit_edge823 ], [ %.pre-phi11421266, %._crit_edge577 ]
  %.pre-phi1173 = phi i32* [ %.phi.trans.insert824, %._crit_edge823 ], [ %.pre-phi1171, %._crit_edge577 ]
  %455 = phi i32 [ %.pre825, %._crit_edge823 ], [ %402, %._crit_edge577 ]
  store i32 17, i32* %3, align 4, !tbaa !8
  %456 = icmp sgt i32 %455, 7
  %.phi.trans.insert828 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %456, label %._crit_edge827, label %.lr.ph571

._crit_edge827:                                   ; preds = %430
  %.pre829 = load i32* %.phi.trans.insert828, align 4, !tbaa !34
  br label %._crit_edge572

.lr.ph571:                                        ; preds = %430
  %.pre826 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1052 = getelementptr inbounds %struct.bz_stream* %.pre826, i64 0, i32 1
  %.pre1053 = load i32* %.phi.trans.insert1052, align 4, !tbaa !35
  br label %462

._crit_edge572:                                   ; preds = %.backedge154, %._crit_edge827
  %457 = phi i32 [ %.pre829, %._crit_edge827 ], [ %473, %.backedge154 ]
  %.lcssa313 = phi i32 [ %455, %._crit_edge827 ], [ %474, %.backedge154 ]
  %458 = add nsw i32 %.lcssa313, -8
  %459 = lshr i32 %457, %458
  store i32 %458, i32* %.pre-phi1173, align 4, !tbaa !9
  %460 = and i32 %459, 255
  %461 = icmp eq i32 %460, 38
  br i1 %461, label %486, label %.loopexit

; <label>:462                                     ; preds = %.lr.ph571, %.backedge154
  %463 = phi i32 [ %.pre1053, %.lr.ph571 ], [ %476, %.backedge154 ]
  %464 = phi i32 [ %455, %.lr.ph571 ], [ %474, %.backedge154 ]
  %465 = icmp eq i32 %463, 0
  br i1 %465, label %.loopexit, label %466

; <label>:466                                     ; preds = %462
  %467 = load i32* %.phi.trans.insert828, align 4, !tbaa !34
  %468 = shl i32 %467, 8
  %469 = getelementptr inbounds %struct.bz_stream* %.pre826, i64 0, i32 0
  %470 = load i8** %469, align 8, !tbaa !37
  %471 = load i8* %470, align 1, !tbaa !38
  %472 = zext i8 %471 to i32
  %473 = or i32 %472, %468
  store i32 %473, i32* %.phi.trans.insert828, align 4, !tbaa !34
  %474 = add nsw i32 %464, 8
  store i32 %474, i32* %.pre-phi1173, align 4, !tbaa !9
  %475 = getelementptr inbounds i8* %470, i64 1
  store i8* %475, i8** %469, align 8, !tbaa !37
  %476 = add i32 %463, -1
  store i32 %476, i32* %.phi.trans.insert1052, align 4, !tbaa !35
  %477 = getelementptr inbounds %struct.bz_stream* %.pre826, i64 0, i32 2
  %478 = load i32* %477, align 4, !tbaa !39
  %479 = add i32 %478, 1
  store i32 %479, i32* %477, align 4, !tbaa !39
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %.backedge154

; <label>:481                                     ; preds = %466
  %482 = getelementptr inbounds %struct.bz_stream* %.pre826, i64 0, i32 3
  %483 = load i32* %482, align 4, !tbaa !40
  %484 = add i32 %483, 1
  store i32 %484, i32* %482, align 4, !tbaa !40
  br label %.backedge154

.backedge154:                                     ; preds = %481, %466
  %485 = icmp sgt i32 %474, 7
  br i1 %485, label %._crit_edge572, label %462

; <label>:486                                     ; preds = %._crit_edge830, %._crit_edge572
  %487 = phi i32 [ %.pre, %._crit_edge830 ], [ %431, %._crit_edge572 ]
  %488 = phi i32 [ %.pre739, %._crit_edge830 ], [ %432, %._crit_edge572 ]
  %489 = phi i32 [ %.pre741, %._crit_edge830 ], [ %433, %._crit_edge572 ]
  %490 = phi i32 [ %.pre743, %._crit_edge830 ], [ %434, %._crit_edge572 ]
  %491 = phi i32 [ %.pre745, %._crit_edge830 ], [ %435, %._crit_edge572 ]
  %492 = phi i32 [ %.pre747, %._crit_edge830 ], [ %436, %._crit_edge572 ]
  %493 = phi i32 [ %.pre749, %._crit_edge830 ], [ %437, %._crit_edge572 ]
  %494 = phi i32 [ %.pre751, %._crit_edge830 ], [ %438, %._crit_edge572 ]
  %495 = phi i32 [ %.pre753, %._crit_edge830 ], [ %439, %._crit_edge572 ]
  %496 = phi i32 [ %.pre755, %._crit_edge830 ], [ %440, %._crit_edge572 ]
  %497 = phi i32 [ %.pre757, %._crit_edge830 ], [ %441, %._crit_edge572 ]
  %498 = phi i32 [ %.pre759, %._crit_edge830 ], [ %442, %._crit_edge572 ]
  %499 = phi i32 [ %.pre761, %._crit_edge830 ], [ %443, %._crit_edge572 ]
  %500 = phi i32 [ %.pre763, %._crit_edge830 ], [ %444, %._crit_edge572 ]
  %501 = phi i32 [ %.pre765, %._crit_edge830 ], [ %445, %._crit_edge572 ]
  %502 = phi i32 [ %.pre767, %._crit_edge830 ], [ %446, %._crit_edge572 ]
  %503 = phi i32 [ %.pre769, %._crit_edge830 ], [ %447, %._crit_edge572 ]
  %504 = phi i32 [ %.pre771, %._crit_edge830 ], [ %448, %._crit_edge572 ]
  %505 = phi i32 [ %.pre773, %._crit_edge830 ], [ %449, %._crit_edge572 ]
  %506 = phi i32 [ %.pre775, %._crit_edge830 ], [ %450, %._crit_edge572 ]
  %507 = phi i32 [ %.pre777, %._crit_edge830 ], [ %451, %._crit_edge572 ]
  %508 = phi i32* [ %.pre779, %._crit_edge830 ], [ %452, %._crit_edge572 ]
  %509 = phi i32* [ %.pre781, %._crit_edge830 ], [ %453, %._crit_edge572 ]
  %510 = phi i32* [ %.pre783, %._crit_edge830 ], [ %454, %._crit_edge572 ]
  %.pre-phi11202474 = phi i32* [ %.phi.trans.insert738, %._crit_edge830 ], [ %.pre-phi11202475, %._crit_edge572 ]
  %.pre-phi11212419 = phi i32* [ %.phi.trans.insert740, %._crit_edge830 ], [ %.pre-phi11212420, %._crit_edge572 ]
  %.pre-phi11222364 = phi i32* [ %.phi.trans.insert742, %._crit_edge830 ], [ %.pre-phi11222365, %._crit_edge572 ]
  %.pre-phi11232309 = phi i32* [ %.phi.trans.insert744, %._crit_edge830 ], [ %.pre-phi11232310, %._crit_edge572 ]
  %.pre-phi11242254 = phi i32* [ %.phi.trans.insert746, %._crit_edge830 ], [ %.pre-phi11242255, %._crit_edge572 ]
  %.pre-phi11252199 = phi i32* [ %.phi.trans.insert748, %._crit_edge830 ], [ %.pre-phi11252200, %._crit_edge572 ]
  %.pre-phi11262144 = phi i32* [ %.phi.trans.insert750, %._crit_edge830 ], [ %.pre-phi11262145, %._crit_edge572 ]
  %.pre-phi11272089 = phi i32* [ %.phi.trans.insert752, %._crit_edge830 ], [ %.pre-phi11272090, %._crit_edge572 ]
  %.pre-phi11282034 = phi i32* [ %.phi.trans.insert754, %._crit_edge830 ], [ %.pre-phi11282035, %._crit_edge572 ]
  %.pre-phi11291979 = phi i32* [ %.phi.trans.insert756, %._crit_edge830 ], [ %.pre-phi11291980, %._crit_edge572 ]
  %.pre-phi11301924 = phi i32* [ %.phi.trans.insert758, %._crit_edge830 ], [ %.pre-phi11301925, %._crit_edge572 ]
  %.pre-phi11311869 = phi i32* [ %.phi.trans.insert760, %._crit_edge830 ], [ %.pre-phi11311870, %._crit_edge572 ]
  %.pre-phi11321814 = phi i32* [ %.phi.trans.insert762, %._crit_edge830 ], [ %.pre-phi11321815, %._crit_edge572 ]
  %.pre-phi11331759 = phi i32* [ %.phi.trans.insert764, %._crit_edge830 ], [ %.pre-phi11331760, %._crit_edge572 ]
  %.pre-phi11341704 = phi i32* [ %.phi.trans.insert766, %._crit_edge830 ], [ %.pre-phi11341705, %._crit_edge572 ]
  %.pre-phi11351649 = phi i32* [ %.phi.trans.insert768, %._crit_edge830 ], [ %.pre-phi11351650, %._crit_edge572 ]
  %.pre-phi11361594 = phi i32* [ %.phi.trans.insert770, %._crit_edge830 ], [ %.pre-phi11361595, %._crit_edge572 ]
  %.pre-phi11371539 = phi i32* [ %.phi.trans.insert772, %._crit_edge830 ], [ %.pre-phi11371540, %._crit_edge572 ]
  %.pre-phi11381484 = phi i32* [ %.phi.trans.insert774, %._crit_edge830 ], [ %.pre-phi11381485, %._crit_edge572 ]
  %.pre-phi11391429 = phi i32* [ %.phi.trans.insert776, %._crit_edge830 ], [ %.pre-phi11391430, %._crit_edge572 ]
  %.pre-phi11401374 = phi i32** [ %.phi.trans.insert778, %._crit_edge830 ], [ %.pre-phi11401375, %._crit_edge572 ]
  %.pre-phi11411319 = phi i32** [ %.phi.trans.insert780, %._crit_edge830 ], [ %.pre-phi11411320, %._crit_edge572 ]
  %.pre-phi11421264 = phi i32** [ %.phi.trans.insert782, %._crit_edge830 ], [ %.pre-phi11421265, %._crit_edge572 ]
  %.pre-phi1175 = phi i32* [ %.phi.trans.insert831, %._crit_edge830 ], [ %.pre-phi1173, %._crit_edge572 ]
  %511 = phi i32 [ %.pre832, %._crit_edge830 ], [ %458, %._crit_edge572 ]
  store i32 18, i32* %3, align 4, !tbaa !8
  %512 = icmp sgt i32 %511, 7
  %.phi.trans.insert835 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %512, label %._crit_edge834, label %.lr.ph566

._crit_edge834:                                   ; preds = %486
  %.pre836 = load i32* %.phi.trans.insert835, align 4, !tbaa !34
  br label %._crit_edge567

.lr.ph566:                                        ; preds = %486
  %.pre833 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1054 = getelementptr inbounds %struct.bz_stream* %.pre833, i64 0, i32 1
  %.pre1055 = load i32* %.phi.trans.insert1054, align 4, !tbaa !35
  br label %518

._crit_edge567:                                   ; preds = %.backedge152, %._crit_edge834
  %513 = phi i32 [ %.pre836, %._crit_edge834 ], [ %529, %.backedge152 ]
  %.lcssa309 = phi i32 [ %511, %._crit_edge834 ], [ %530, %.backedge152 ]
  %514 = add nsw i32 %.lcssa309, -8
  %515 = lshr i32 %513, %514
  store i32 %514, i32* %.pre-phi1175, align 4, !tbaa !9
  %516 = and i32 %515, 255
  %517 = icmp eq i32 %516, 83
  br i1 %517, label %542, label %.loopexit

; <label>:518                                     ; preds = %.lr.ph566, %.backedge152
  %519 = phi i32 [ %.pre1055, %.lr.ph566 ], [ %532, %.backedge152 ]
  %520 = phi i32 [ %511, %.lr.ph566 ], [ %530, %.backedge152 ]
  %521 = icmp eq i32 %519, 0
  br i1 %521, label %.loopexit, label %522

; <label>:522                                     ; preds = %518
  %523 = load i32* %.phi.trans.insert835, align 4, !tbaa !34
  %524 = shl i32 %523, 8
  %525 = getelementptr inbounds %struct.bz_stream* %.pre833, i64 0, i32 0
  %526 = load i8** %525, align 8, !tbaa !37
  %527 = load i8* %526, align 1, !tbaa !38
  %528 = zext i8 %527 to i32
  %529 = or i32 %528, %524
  store i32 %529, i32* %.phi.trans.insert835, align 4, !tbaa !34
  %530 = add nsw i32 %520, 8
  store i32 %530, i32* %.pre-phi1175, align 4, !tbaa !9
  %531 = getelementptr inbounds i8* %526, i64 1
  store i8* %531, i8** %525, align 8, !tbaa !37
  %532 = add i32 %519, -1
  store i32 %532, i32* %.phi.trans.insert1054, align 4, !tbaa !35
  %533 = getelementptr inbounds %struct.bz_stream* %.pre833, i64 0, i32 2
  %534 = load i32* %533, align 4, !tbaa !39
  %535 = add i32 %534, 1
  store i32 %535, i32* %533, align 4, !tbaa !39
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %.backedge152

; <label>:537                                     ; preds = %522
  %538 = getelementptr inbounds %struct.bz_stream* %.pre833, i64 0, i32 3
  %539 = load i32* %538, align 4, !tbaa !40
  %540 = add i32 %539, 1
  store i32 %540, i32* %538, align 4, !tbaa !40
  br label %.backedge152

.backedge152:                                     ; preds = %537, %522
  %541 = icmp sgt i32 %530, 7
  br i1 %541, label %._crit_edge567, label %518

; <label>:542                                     ; preds = %._crit_edge837, %._crit_edge567
  %543 = phi i32 [ %.pre, %._crit_edge837 ], [ %487, %._crit_edge567 ]
  %544 = phi i32 [ %.pre739, %._crit_edge837 ], [ %488, %._crit_edge567 ]
  %545 = phi i32 [ %.pre741, %._crit_edge837 ], [ %489, %._crit_edge567 ]
  %546 = phi i32 [ %.pre743, %._crit_edge837 ], [ %490, %._crit_edge567 ]
  %547 = phi i32 [ %.pre745, %._crit_edge837 ], [ %491, %._crit_edge567 ]
  %548 = phi i32 [ %.pre747, %._crit_edge837 ], [ %492, %._crit_edge567 ]
  %549 = phi i32 [ %.pre749, %._crit_edge837 ], [ %493, %._crit_edge567 ]
  %550 = phi i32 [ %.pre751, %._crit_edge837 ], [ %494, %._crit_edge567 ]
  %551 = phi i32 [ %.pre753, %._crit_edge837 ], [ %495, %._crit_edge567 ]
  %552 = phi i32 [ %.pre755, %._crit_edge837 ], [ %496, %._crit_edge567 ]
  %553 = phi i32 [ %.pre757, %._crit_edge837 ], [ %497, %._crit_edge567 ]
  %554 = phi i32 [ %.pre759, %._crit_edge837 ], [ %498, %._crit_edge567 ]
  %555 = phi i32 [ %.pre761, %._crit_edge837 ], [ %499, %._crit_edge567 ]
  %556 = phi i32 [ %.pre763, %._crit_edge837 ], [ %500, %._crit_edge567 ]
  %557 = phi i32 [ %.pre765, %._crit_edge837 ], [ %501, %._crit_edge567 ]
  %558 = phi i32 [ %.pre767, %._crit_edge837 ], [ %502, %._crit_edge567 ]
  %559 = phi i32 [ %.pre769, %._crit_edge837 ], [ %503, %._crit_edge567 ]
  %560 = phi i32 [ %.pre771, %._crit_edge837 ], [ %504, %._crit_edge567 ]
  %561 = phi i32 [ %.pre773, %._crit_edge837 ], [ %505, %._crit_edge567 ]
  %562 = phi i32 [ %.pre775, %._crit_edge837 ], [ %506, %._crit_edge567 ]
  %563 = phi i32 [ %.pre777, %._crit_edge837 ], [ %507, %._crit_edge567 ]
  %564 = phi i32* [ %.pre779, %._crit_edge837 ], [ %508, %._crit_edge567 ]
  %565 = phi i32* [ %.pre781, %._crit_edge837 ], [ %509, %._crit_edge567 ]
  %566 = phi i32* [ %.pre783, %._crit_edge837 ], [ %510, %._crit_edge567 ]
  %.pre-phi11202473 = phi i32* [ %.phi.trans.insert738, %._crit_edge837 ], [ %.pre-phi11202474, %._crit_edge567 ]
  %.pre-phi11212418 = phi i32* [ %.phi.trans.insert740, %._crit_edge837 ], [ %.pre-phi11212419, %._crit_edge567 ]
  %.pre-phi11222363 = phi i32* [ %.phi.trans.insert742, %._crit_edge837 ], [ %.pre-phi11222364, %._crit_edge567 ]
  %.pre-phi11232308 = phi i32* [ %.phi.trans.insert744, %._crit_edge837 ], [ %.pre-phi11232309, %._crit_edge567 ]
  %.pre-phi11242253 = phi i32* [ %.phi.trans.insert746, %._crit_edge837 ], [ %.pre-phi11242254, %._crit_edge567 ]
  %.pre-phi11252198 = phi i32* [ %.phi.trans.insert748, %._crit_edge837 ], [ %.pre-phi11252199, %._crit_edge567 ]
  %.pre-phi11262143 = phi i32* [ %.phi.trans.insert750, %._crit_edge837 ], [ %.pre-phi11262144, %._crit_edge567 ]
  %.pre-phi11272088 = phi i32* [ %.phi.trans.insert752, %._crit_edge837 ], [ %.pre-phi11272089, %._crit_edge567 ]
  %.pre-phi11282033 = phi i32* [ %.phi.trans.insert754, %._crit_edge837 ], [ %.pre-phi11282034, %._crit_edge567 ]
  %.pre-phi11291978 = phi i32* [ %.phi.trans.insert756, %._crit_edge837 ], [ %.pre-phi11291979, %._crit_edge567 ]
  %.pre-phi11301923 = phi i32* [ %.phi.trans.insert758, %._crit_edge837 ], [ %.pre-phi11301924, %._crit_edge567 ]
  %.pre-phi11311868 = phi i32* [ %.phi.trans.insert760, %._crit_edge837 ], [ %.pre-phi11311869, %._crit_edge567 ]
  %.pre-phi11321813 = phi i32* [ %.phi.trans.insert762, %._crit_edge837 ], [ %.pre-phi11321814, %._crit_edge567 ]
  %.pre-phi11331758 = phi i32* [ %.phi.trans.insert764, %._crit_edge837 ], [ %.pre-phi11331759, %._crit_edge567 ]
  %.pre-phi11341703 = phi i32* [ %.phi.trans.insert766, %._crit_edge837 ], [ %.pre-phi11341704, %._crit_edge567 ]
  %.pre-phi11351648 = phi i32* [ %.phi.trans.insert768, %._crit_edge837 ], [ %.pre-phi11351649, %._crit_edge567 ]
  %.pre-phi11361593 = phi i32* [ %.phi.trans.insert770, %._crit_edge837 ], [ %.pre-phi11361594, %._crit_edge567 ]
  %.pre-phi11371538 = phi i32* [ %.phi.trans.insert772, %._crit_edge837 ], [ %.pre-phi11371539, %._crit_edge567 ]
  %.pre-phi11381483 = phi i32* [ %.phi.trans.insert774, %._crit_edge837 ], [ %.pre-phi11381484, %._crit_edge567 ]
  %.pre-phi11391428 = phi i32* [ %.phi.trans.insert776, %._crit_edge837 ], [ %.pre-phi11391429, %._crit_edge567 ]
  %.pre-phi11401373 = phi i32** [ %.phi.trans.insert778, %._crit_edge837 ], [ %.pre-phi11401374, %._crit_edge567 ]
  %.pre-phi11411318 = phi i32** [ %.phi.trans.insert780, %._crit_edge837 ], [ %.pre-phi11411319, %._crit_edge567 ]
  %.pre-phi11421263 = phi i32** [ %.phi.trans.insert782, %._crit_edge837 ], [ %.pre-phi11421264, %._crit_edge567 ]
  %.pre-phi1177 = phi i32* [ %.phi.trans.insert838, %._crit_edge837 ], [ %.pre-phi1175, %._crit_edge567 ]
  %567 = phi i32 [ %.pre839, %._crit_edge837 ], [ %514, %._crit_edge567 ]
  store i32 19, i32* %3, align 4, !tbaa !8
  %568 = icmp sgt i32 %567, 7
  %.phi.trans.insert842 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %568, label %._crit_edge841, label %.lr.ph561

._crit_edge841:                                   ; preds = %542
  %.pre843 = load i32* %.phi.trans.insert842, align 4, !tbaa !34
  br label %._crit_edge562

.lr.ph561:                                        ; preds = %542
  %.pre840 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1056 = getelementptr inbounds %struct.bz_stream* %.pre840, i64 0, i32 1
  %.pre1057 = load i32* %.phi.trans.insert1056, align 4, !tbaa !35
  br label %574

._crit_edge562:                                   ; preds = %.backedge150, %._crit_edge841
  %569 = phi i32 [ %.pre843, %._crit_edge841 ], [ %585, %.backedge150 ]
  %.lcssa305 = phi i32 [ %567, %._crit_edge841 ], [ %586, %.backedge150 ]
  %570 = add nsw i32 %.lcssa305, -8
  %571 = lshr i32 %569, %570
  store i32 %570, i32* %.pre-phi1177, align 4, !tbaa !9
  %572 = and i32 %571, 255
  %573 = icmp eq i32 %572, 89
  br i1 %573, label %598, label %.loopexit

; <label>:574                                     ; preds = %.lr.ph561, %.backedge150
  %575 = phi i32 [ %.pre1057, %.lr.ph561 ], [ %588, %.backedge150 ]
  %576 = phi i32 [ %567, %.lr.ph561 ], [ %586, %.backedge150 ]
  %577 = icmp eq i32 %575, 0
  br i1 %577, label %.loopexit, label %578

; <label>:578                                     ; preds = %574
  %579 = load i32* %.phi.trans.insert842, align 4, !tbaa !34
  %580 = shl i32 %579, 8
  %581 = getelementptr inbounds %struct.bz_stream* %.pre840, i64 0, i32 0
  %582 = load i8** %581, align 8, !tbaa !37
  %583 = load i8* %582, align 1, !tbaa !38
  %584 = zext i8 %583 to i32
  %585 = or i32 %584, %580
  store i32 %585, i32* %.phi.trans.insert842, align 4, !tbaa !34
  %586 = add nsw i32 %576, 8
  store i32 %586, i32* %.pre-phi1177, align 4, !tbaa !9
  %587 = getelementptr inbounds i8* %582, i64 1
  store i8* %587, i8** %581, align 8, !tbaa !37
  %588 = add i32 %575, -1
  store i32 %588, i32* %.phi.trans.insert1056, align 4, !tbaa !35
  %589 = getelementptr inbounds %struct.bz_stream* %.pre840, i64 0, i32 2
  %590 = load i32* %589, align 4, !tbaa !39
  %591 = add i32 %590, 1
  store i32 %591, i32* %589, align 4, !tbaa !39
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %.backedge150

; <label>:593                                     ; preds = %578
  %594 = getelementptr inbounds %struct.bz_stream* %.pre840, i64 0, i32 3
  %595 = load i32* %594, align 4, !tbaa !40
  %596 = add i32 %595, 1
  store i32 %596, i32* %594, align 4, !tbaa !40
  br label %.backedge150

.backedge150:                                     ; preds = %593, %578
  %597 = icmp sgt i32 %586, 7
  br i1 %597, label %._crit_edge562, label %574

; <label>:598                                     ; preds = %._crit_edge562
  %599 = getelementptr inbounds %struct.DState* %s, i64 0, i32 11
  %600 = load i32* %599, align 4, !tbaa !48
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %599, align 4, !tbaa !48
  %602 = getelementptr inbounds %struct.DState* %s, i64 0, i32 12
  %603 = load i32* %602, align 4, !tbaa !49
  %604 = icmp sgt i32 %603, 1
  br i1 %604, label %605, label %608

; <label>:605                                     ; preds = %598
  %606 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !50
  %607 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %606, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), i32 %601) #4
  br label %608

; <label>:608                                     ; preds = %605, %598
  %609 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  store i32 0, i32* %609, align 4, !tbaa !51
  br label %610

; <label>:610                                     ; preds = %._crit_edge1215, %608
  %611 = phi i32 [ %.pre, %._crit_edge1215 ], [ %543, %608 ]
  %612 = phi i32 [ %.pre739, %._crit_edge1215 ], [ %544, %608 ]
  %613 = phi i32 [ %.pre741, %._crit_edge1215 ], [ %545, %608 ]
  %614 = phi i32 [ %.pre743, %._crit_edge1215 ], [ %546, %608 ]
  %615 = phi i32 [ %.pre745, %._crit_edge1215 ], [ %547, %608 ]
  %616 = phi i32 [ %.pre747, %._crit_edge1215 ], [ %548, %608 ]
  %617 = phi i32 [ %.pre749, %._crit_edge1215 ], [ %549, %608 ]
  %618 = phi i32 [ %.pre751, %._crit_edge1215 ], [ %550, %608 ]
  %619 = phi i32 [ %.pre753, %._crit_edge1215 ], [ %551, %608 ]
  %620 = phi i32 [ %.pre755, %._crit_edge1215 ], [ %552, %608 ]
  %621 = phi i32 [ %.pre757, %._crit_edge1215 ], [ %553, %608 ]
  %622 = phi i32 [ %.pre759, %._crit_edge1215 ], [ %554, %608 ]
  %623 = phi i32 [ %.pre761, %._crit_edge1215 ], [ %555, %608 ]
  %624 = phi i32 [ %.pre763, %._crit_edge1215 ], [ %556, %608 ]
  %625 = phi i32 [ %.pre765, %._crit_edge1215 ], [ %557, %608 ]
  %626 = phi i32 [ %.pre767, %._crit_edge1215 ], [ %558, %608 ]
  %627 = phi i32 [ %.pre769, %._crit_edge1215 ], [ %559, %608 ]
  %628 = phi i32 [ %.pre771, %._crit_edge1215 ], [ %560, %608 ]
  %629 = phi i32 [ %.pre773, %._crit_edge1215 ], [ %561, %608 ]
  %630 = phi i32 [ %.pre775, %._crit_edge1215 ], [ %562, %608 ]
  %631 = phi i32 [ %.pre777, %._crit_edge1215 ], [ %563, %608 ]
  %632 = phi i32* [ %.pre779, %._crit_edge1215 ], [ %564, %608 ]
  %633 = phi i32* [ %.pre781, %._crit_edge1215 ], [ %565, %608 ]
  %634 = phi i32* [ %.pre783, %._crit_edge1215 ], [ %566, %608 ]
  %.pre-phi11202472 = phi i32* [ %.phi.trans.insert738, %._crit_edge1215 ], [ %.pre-phi11202473, %608 ]
  %.pre-phi11212417 = phi i32* [ %.phi.trans.insert740, %._crit_edge1215 ], [ %.pre-phi11212418, %608 ]
  %.pre-phi11222362 = phi i32* [ %.phi.trans.insert742, %._crit_edge1215 ], [ %.pre-phi11222363, %608 ]
  %.pre-phi11232307 = phi i32* [ %.phi.trans.insert744, %._crit_edge1215 ], [ %.pre-phi11232308, %608 ]
  %.pre-phi11242252 = phi i32* [ %.phi.trans.insert746, %._crit_edge1215 ], [ %.pre-phi11242253, %608 ]
  %.pre-phi11252197 = phi i32* [ %.phi.trans.insert748, %._crit_edge1215 ], [ %.pre-phi11252198, %608 ]
  %.pre-phi11262142 = phi i32* [ %.phi.trans.insert750, %._crit_edge1215 ], [ %.pre-phi11262143, %608 ]
  %.pre-phi11272087 = phi i32* [ %.phi.trans.insert752, %._crit_edge1215 ], [ %.pre-phi11272088, %608 ]
  %.pre-phi11282032 = phi i32* [ %.phi.trans.insert754, %._crit_edge1215 ], [ %.pre-phi11282033, %608 ]
  %.pre-phi11291977 = phi i32* [ %.phi.trans.insert756, %._crit_edge1215 ], [ %.pre-phi11291978, %608 ]
  %.pre-phi11301922 = phi i32* [ %.phi.trans.insert758, %._crit_edge1215 ], [ %.pre-phi11301923, %608 ]
  %.pre-phi11311867 = phi i32* [ %.phi.trans.insert760, %._crit_edge1215 ], [ %.pre-phi11311868, %608 ]
  %.pre-phi11321812 = phi i32* [ %.phi.trans.insert762, %._crit_edge1215 ], [ %.pre-phi11321813, %608 ]
  %.pre-phi11331757 = phi i32* [ %.phi.trans.insert764, %._crit_edge1215 ], [ %.pre-phi11331758, %608 ]
  %.pre-phi11341702 = phi i32* [ %.phi.trans.insert766, %._crit_edge1215 ], [ %.pre-phi11341703, %608 ]
  %.pre-phi11351647 = phi i32* [ %.phi.trans.insert768, %._crit_edge1215 ], [ %.pre-phi11351648, %608 ]
  %.pre-phi11361592 = phi i32* [ %.phi.trans.insert770, %._crit_edge1215 ], [ %.pre-phi11361593, %608 ]
  %.pre-phi11371537 = phi i32* [ %.phi.trans.insert772, %._crit_edge1215 ], [ %.pre-phi11371538, %608 ]
  %.pre-phi11381482 = phi i32* [ %.phi.trans.insert774, %._crit_edge1215 ], [ %.pre-phi11381483, %608 ]
  %.pre-phi11391427 = phi i32* [ %.phi.trans.insert776, %._crit_edge1215 ], [ %.pre-phi11391428, %608 ]
  %.pre-phi11401372 = phi i32** [ %.phi.trans.insert778, %._crit_edge1215 ], [ %.pre-phi11401373, %608 ]
  %.pre-phi11411317 = phi i32** [ %.phi.trans.insert780, %._crit_edge1215 ], [ %.pre-phi11411318, %608 ]
  %.pre-phi11421262 = phi i32** [ %.phi.trans.insert782, %._crit_edge1215 ], [ %.pre-phi11421263, %608 ]
  %.pre-phi1220 = phi i32* [ %.pre1219, %._crit_edge1215 ], [ %.pre-phi1177, %608 ]
  store i32 20, i32* %3, align 4, !tbaa !8
  %635 = load i32* %.pre-phi1220, align 4, !tbaa !9
  %636 = icmp sgt i32 %635, 7
  %.phi.trans.insert846 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %636, label %._crit_edge845, label %.lr.ph556

._crit_edge845:                                   ; preds = %610
  %.pre847 = load i32* %.phi.trans.insert846, align 4, !tbaa !34
  br label %._crit_edge557

.lr.ph556:                                        ; preds = %610
  %.pre844 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1058 = getelementptr inbounds %struct.bz_stream* %.pre844, i64 0, i32 1
  %.pre1059 = load i32* %.phi.trans.insert1058, align 4, !tbaa !35
  br label %645

._crit_edge557:                                   ; preds = %.backedge148, %._crit_edge845
  %637 = phi i32 [ %.pre847, %._crit_edge845 ], [ %656, %.backedge148 ]
  %.lcssa301 = phi i32 [ %635, %._crit_edge845 ], [ %657, %.backedge148 ]
  %638 = add nsw i32 %.lcssa301, -8
  %639 = lshr i32 %637, %638
  store i32 %638, i32* %.pre-phi1220, align 4, !tbaa !9
  %640 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  %641 = load i32* %640, align 4, !tbaa !51
  %642 = shl i32 %641, 8
  %643 = and i32 %639, 255
  %644 = or i32 %642, %643
  store i32 %644, i32* %640, align 4, !tbaa !51
  br label %669

; <label>:645                                     ; preds = %.lr.ph556, %.backedge148
  %646 = phi i32 [ %.pre1059, %.lr.ph556 ], [ %659, %.backedge148 ]
  %647 = phi i32 [ %635, %.lr.ph556 ], [ %657, %.backedge148 ]
  %648 = icmp eq i32 %646, 0
  br i1 %648, label %.loopexit, label %649

; <label>:649                                     ; preds = %645
  %650 = load i32* %.phi.trans.insert846, align 4, !tbaa !34
  %651 = shl i32 %650, 8
  %652 = getelementptr inbounds %struct.bz_stream* %.pre844, i64 0, i32 0
  %653 = load i8** %652, align 8, !tbaa !37
  %654 = load i8* %653, align 1, !tbaa !38
  %655 = zext i8 %654 to i32
  %656 = or i32 %655, %651
  store i32 %656, i32* %.phi.trans.insert846, align 4, !tbaa !34
  %657 = add nsw i32 %647, 8
  store i32 %657, i32* %.pre-phi1220, align 4, !tbaa !9
  %658 = getelementptr inbounds i8* %653, i64 1
  store i8* %658, i8** %652, align 8, !tbaa !37
  %659 = add i32 %646, -1
  store i32 %659, i32* %.phi.trans.insert1058, align 4, !tbaa !35
  %660 = getelementptr inbounds %struct.bz_stream* %.pre844, i64 0, i32 2
  %661 = load i32* %660, align 4, !tbaa !39
  %662 = add i32 %661, 1
  store i32 %662, i32* %660, align 4, !tbaa !39
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %.backedge148

; <label>:664                                     ; preds = %649
  %665 = getelementptr inbounds %struct.bz_stream* %.pre844, i64 0, i32 3
  %666 = load i32* %665, align 4, !tbaa !40
  %667 = add i32 %666, 1
  store i32 %667, i32* %665, align 4, !tbaa !40
  br label %.backedge148

.backedge148:                                     ; preds = %664, %649
  %668 = icmp sgt i32 %657, 7
  br i1 %668, label %._crit_edge557, label %645

; <label>:669                                     ; preds = %._crit_edge848, %._crit_edge557
  %670 = phi i32 [ %.pre, %._crit_edge848 ], [ %611, %._crit_edge557 ]
  %671 = phi i32 [ %.pre739, %._crit_edge848 ], [ %612, %._crit_edge557 ]
  %672 = phi i32 [ %.pre741, %._crit_edge848 ], [ %613, %._crit_edge557 ]
  %673 = phi i32 [ %.pre743, %._crit_edge848 ], [ %614, %._crit_edge557 ]
  %674 = phi i32 [ %.pre745, %._crit_edge848 ], [ %615, %._crit_edge557 ]
  %675 = phi i32 [ %.pre747, %._crit_edge848 ], [ %616, %._crit_edge557 ]
  %676 = phi i32 [ %.pre749, %._crit_edge848 ], [ %617, %._crit_edge557 ]
  %677 = phi i32 [ %.pre751, %._crit_edge848 ], [ %618, %._crit_edge557 ]
  %678 = phi i32 [ %.pre753, %._crit_edge848 ], [ %619, %._crit_edge557 ]
  %679 = phi i32 [ %.pre755, %._crit_edge848 ], [ %620, %._crit_edge557 ]
  %680 = phi i32 [ %.pre757, %._crit_edge848 ], [ %621, %._crit_edge557 ]
  %681 = phi i32 [ %.pre759, %._crit_edge848 ], [ %622, %._crit_edge557 ]
  %682 = phi i32 [ %.pre761, %._crit_edge848 ], [ %623, %._crit_edge557 ]
  %683 = phi i32 [ %.pre763, %._crit_edge848 ], [ %624, %._crit_edge557 ]
  %684 = phi i32 [ %.pre765, %._crit_edge848 ], [ %625, %._crit_edge557 ]
  %685 = phi i32 [ %.pre767, %._crit_edge848 ], [ %626, %._crit_edge557 ]
  %686 = phi i32 [ %.pre769, %._crit_edge848 ], [ %627, %._crit_edge557 ]
  %687 = phi i32 [ %.pre771, %._crit_edge848 ], [ %628, %._crit_edge557 ]
  %688 = phi i32 [ %.pre773, %._crit_edge848 ], [ %629, %._crit_edge557 ]
  %689 = phi i32 [ %.pre775, %._crit_edge848 ], [ %630, %._crit_edge557 ]
  %690 = phi i32 [ %.pre777, %._crit_edge848 ], [ %631, %._crit_edge557 ]
  %691 = phi i32* [ %.pre779, %._crit_edge848 ], [ %632, %._crit_edge557 ]
  %692 = phi i32* [ %.pre781, %._crit_edge848 ], [ %633, %._crit_edge557 ]
  %693 = phi i32* [ %.pre783, %._crit_edge848 ], [ %634, %._crit_edge557 ]
  %.pre-phi11202471 = phi i32* [ %.phi.trans.insert738, %._crit_edge848 ], [ %.pre-phi11202472, %._crit_edge557 ]
  %.pre-phi11212416 = phi i32* [ %.phi.trans.insert740, %._crit_edge848 ], [ %.pre-phi11212417, %._crit_edge557 ]
  %.pre-phi11222361 = phi i32* [ %.phi.trans.insert742, %._crit_edge848 ], [ %.pre-phi11222362, %._crit_edge557 ]
  %.pre-phi11232306 = phi i32* [ %.phi.trans.insert744, %._crit_edge848 ], [ %.pre-phi11232307, %._crit_edge557 ]
  %.pre-phi11242251 = phi i32* [ %.phi.trans.insert746, %._crit_edge848 ], [ %.pre-phi11242252, %._crit_edge557 ]
  %.pre-phi11252196 = phi i32* [ %.phi.trans.insert748, %._crit_edge848 ], [ %.pre-phi11252197, %._crit_edge557 ]
  %.pre-phi11262141 = phi i32* [ %.phi.trans.insert750, %._crit_edge848 ], [ %.pre-phi11262142, %._crit_edge557 ]
  %.pre-phi11272086 = phi i32* [ %.phi.trans.insert752, %._crit_edge848 ], [ %.pre-phi11272087, %._crit_edge557 ]
  %.pre-phi11282031 = phi i32* [ %.phi.trans.insert754, %._crit_edge848 ], [ %.pre-phi11282032, %._crit_edge557 ]
  %.pre-phi11291976 = phi i32* [ %.phi.trans.insert756, %._crit_edge848 ], [ %.pre-phi11291977, %._crit_edge557 ]
  %.pre-phi11301921 = phi i32* [ %.phi.trans.insert758, %._crit_edge848 ], [ %.pre-phi11301922, %._crit_edge557 ]
  %.pre-phi11311866 = phi i32* [ %.phi.trans.insert760, %._crit_edge848 ], [ %.pre-phi11311867, %._crit_edge557 ]
  %.pre-phi11321811 = phi i32* [ %.phi.trans.insert762, %._crit_edge848 ], [ %.pre-phi11321812, %._crit_edge557 ]
  %.pre-phi11331756 = phi i32* [ %.phi.trans.insert764, %._crit_edge848 ], [ %.pre-phi11331757, %._crit_edge557 ]
  %.pre-phi11341701 = phi i32* [ %.phi.trans.insert766, %._crit_edge848 ], [ %.pre-phi11341702, %._crit_edge557 ]
  %.pre-phi11351646 = phi i32* [ %.phi.trans.insert768, %._crit_edge848 ], [ %.pre-phi11351647, %._crit_edge557 ]
  %.pre-phi11361591 = phi i32* [ %.phi.trans.insert770, %._crit_edge848 ], [ %.pre-phi11361592, %._crit_edge557 ]
  %.pre-phi11371536 = phi i32* [ %.phi.trans.insert772, %._crit_edge848 ], [ %.pre-phi11371537, %._crit_edge557 ]
  %.pre-phi11381481 = phi i32* [ %.phi.trans.insert774, %._crit_edge848 ], [ %.pre-phi11381482, %._crit_edge557 ]
  %.pre-phi11391426 = phi i32* [ %.phi.trans.insert776, %._crit_edge848 ], [ %.pre-phi11391427, %._crit_edge557 ]
  %.pre-phi11401371 = phi i32** [ %.phi.trans.insert778, %._crit_edge848 ], [ %.pre-phi11401372, %._crit_edge557 ]
  %.pre-phi11411316 = phi i32** [ %.phi.trans.insert780, %._crit_edge848 ], [ %.pre-phi11411317, %._crit_edge557 ]
  %.pre-phi11421261 = phi i32** [ %.phi.trans.insert782, %._crit_edge848 ], [ %.pre-phi11421262, %._crit_edge557 ]
  %.pre-phi1180 = phi i32* [ %.phi.trans.insert849, %._crit_edge848 ], [ %.pre-phi1220, %._crit_edge557 ]
  %694 = phi i32 [ %.pre850, %._crit_edge848 ], [ %638, %._crit_edge557 ]
  store i32 21, i32* %3, align 4, !tbaa !8
  %695 = icmp sgt i32 %694, 7
  %.phi.trans.insert853 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %695, label %._crit_edge852, label %.lr.ph551

._crit_edge852:                                   ; preds = %669
  %.pre854 = load i32* %.phi.trans.insert853, align 4, !tbaa !34
  br label %._crit_edge552

.lr.ph551:                                        ; preds = %669
  %.pre851 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1060 = getelementptr inbounds %struct.bz_stream* %.pre851, i64 0, i32 1
  %.pre1061 = load i32* %.phi.trans.insert1060, align 4, !tbaa !35
  br label %704

._crit_edge552:                                   ; preds = %.backedge146, %._crit_edge852
  %696 = phi i32 [ %.pre854, %._crit_edge852 ], [ %715, %.backedge146 ]
  %.lcssa297 = phi i32 [ %694, %._crit_edge852 ], [ %716, %.backedge146 ]
  %697 = add nsw i32 %.lcssa297, -8
  %698 = lshr i32 %696, %697
  store i32 %697, i32* %.pre-phi1180, align 4, !tbaa !9
  %699 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  %700 = load i32* %699, align 4, !tbaa !51
  %701 = shl i32 %700, 8
  %702 = and i32 %698, 255
  %703 = or i32 %701, %702
  store i32 %703, i32* %699, align 4, !tbaa !51
  br label %728

; <label>:704                                     ; preds = %.lr.ph551, %.backedge146
  %705 = phi i32 [ %.pre1061, %.lr.ph551 ], [ %718, %.backedge146 ]
  %706 = phi i32 [ %694, %.lr.ph551 ], [ %716, %.backedge146 ]
  %707 = icmp eq i32 %705, 0
  br i1 %707, label %.loopexit, label %708

; <label>:708                                     ; preds = %704
  %709 = load i32* %.phi.trans.insert853, align 4, !tbaa !34
  %710 = shl i32 %709, 8
  %711 = getelementptr inbounds %struct.bz_stream* %.pre851, i64 0, i32 0
  %712 = load i8** %711, align 8, !tbaa !37
  %713 = load i8* %712, align 1, !tbaa !38
  %714 = zext i8 %713 to i32
  %715 = or i32 %714, %710
  store i32 %715, i32* %.phi.trans.insert853, align 4, !tbaa !34
  %716 = add nsw i32 %706, 8
  store i32 %716, i32* %.pre-phi1180, align 4, !tbaa !9
  %717 = getelementptr inbounds i8* %712, i64 1
  store i8* %717, i8** %711, align 8, !tbaa !37
  %718 = add i32 %705, -1
  store i32 %718, i32* %.phi.trans.insert1060, align 4, !tbaa !35
  %719 = getelementptr inbounds %struct.bz_stream* %.pre851, i64 0, i32 2
  %720 = load i32* %719, align 4, !tbaa !39
  %721 = add i32 %720, 1
  store i32 %721, i32* %719, align 4, !tbaa !39
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %.backedge146

; <label>:723                                     ; preds = %708
  %724 = getelementptr inbounds %struct.bz_stream* %.pre851, i64 0, i32 3
  %725 = load i32* %724, align 4, !tbaa !40
  %726 = add i32 %725, 1
  store i32 %726, i32* %724, align 4, !tbaa !40
  br label %.backedge146

.backedge146:                                     ; preds = %723, %708
  %727 = icmp sgt i32 %716, 7
  br i1 %727, label %._crit_edge552, label %704

; <label>:728                                     ; preds = %._crit_edge855, %._crit_edge552
  %729 = phi i32 [ %.pre, %._crit_edge855 ], [ %670, %._crit_edge552 ]
  %730 = phi i32 [ %.pre739, %._crit_edge855 ], [ %671, %._crit_edge552 ]
  %731 = phi i32 [ %.pre741, %._crit_edge855 ], [ %672, %._crit_edge552 ]
  %732 = phi i32 [ %.pre743, %._crit_edge855 ], [ %673, %._crit_edge552 ]
  %733 = phi i32 [ %.pre745, %._crit_edge855 ], [ %674, %._crit_edge552 ]
  %734 = phi i32 [ %.pre747, %._crit_edge855 ], [ %675, %._crit_edge552 ]
  %735 = phi i32 [ %.pre749, %._crit_edge855 ], [ %676, %._crit_edge552 ]
  %736 = phi i32 [ %.pre751, %._crit_edge855 ], [ %677, %._crit_edge552 ]
  %737 = phi i32 [ %.pre753, %._crit_edge855 ], [ %678, %._crit_edge552 ]
  %738 = phi i32 [ %.pre755, %._crit_edge855 ], [ %679, %._crit_edge552 ]
  %739 = phi i32 [ %.pre757, %._crit_edge855 ], [ %680, %._crit_edge552 ]
  %740 = phi i32 [ %.pre759, %._crit_edge855 ], [ %681, %._crit_edge552 ]
  %741 = phi i32 [ %.pre761, %._crit_edge855 ], [ %682, %._crit_edge552 ]
  %742 = phi i32 [ %.pre763, %._crit_edge855 ], [ %683, %._crit_edge552 ]
  %743 = phi i32 [ %.pre765, %._crit_edge855 ], [ %684, %._crit_edge552 ]
  %744 = phi i32 [ %.pre767, %._crit_edge855 ], [ %685, %._crit_edge552 ]
  %745 = phi i32 [ %.pre769, %._crit_edge855 ], [ %686, %._crit_edge552 ]
  %746 = phi i32 [ %.pre771, %._crit_edge855 ], [ %687, %._crit_edge552 ]
  %747 = phi i32 [ %.pre773, %._crit_edge855 ], [ %688, %._crit_edge552 ]
  %748 = phi i32 [ %.pre775, %._crit_edge855 ], [ %689, %._crit_edge552 ]
  %749 = phi i32 [ %.pre777, %._crit_edge855 ], [ %690, %._crit_edge552 ]
  %750 = phi i32* [ %.pre779, %._crit_edge855 ], [ %691, %._crit_edge552 ]
  %751 = phi i32* [ %.pre781, %._crit_edge855 ], [ %692, %._crit_edge552 ]
  %752 = phi i32* [ %.pre783, %._crit_edge855 ], [ %693, %._crit_edge552 ]
  %.pre-phi11202470 = phi i32* [ %.phi.trans.insert738, %._crit_edge855 ], [ %.pre-phi11202471, %._crit_edge552 ]
  %.pre-phi11212415 = phi i32* [ %.phi.trans.insert740, %._crit_edge855 ], [ %.pre-phi11212416, %._crit_edge552 ]
  %.pre-phi11222360 = phi i32* [ %.phi.trans.insert742, %._crit_edge855 ], [ %.pre-phi11222361, %._crit_edge552 ]
  %.pre-phi11232305 = phi i32* [ %.phi.trans.insert744, %._crit_edge855 ], [ %.pre-phi11232306, %._crit_edge552 ]
  %.pre-phi11242250 = phi i32* [ %.phi.trans.insert746, %._crit_edge855 ], [ %.pre-phi11242251, %._crit_edge552 ]
  %.pre-phi11252195 = phi i32* [ %.phi.trans.insert748, %._crit_edge855 ], [ %.pre-phi11252196, %._crit_edge552 ]
  %.pre-phi11262140 = phi i32* [ %.phi.trans.insert750, %._crit_edge855 ], [ %.pre-phi11262141, %._crit_edge552 ]
  %.pre-phi11272085 = phi i32* [ %.phi.trans.insert752, %._crit_edge855 ], [ %.pre-phi11272086, %._crit_edge552 ]
  %.pre-phi11282030 = phi i32* [ %.phi.trans.insert754, %._crit_edge855 ], [ %.pre-phi11282031, %._crit_edge552 ]
  %.pre-phi11291975 = phi i32* [ %.phi.trans.insert756, %._crit_edge855 ], [ %.pre-phi11291976, %._crit_edge552 ]
  %.pre-phi11301920 = phi i32* [ %.phi.trans.insert758, %._crit_edge855 ], [ %.pre-phi11301921, %._crit_edge552 ]
  %.pre-phi11311865 = phi i32* [ %.phi.trans.insert760, %._crit_edge855 ], [ %.pre-phi11311866, %._crit_edge552 ]
  %.pre-phi11321810 = phi i32* [ %.phi.trans.insert762, %._crit_edge855 ], [ %.pre-phi11321811, %._crit_edge552 ]
  %.pre-phi11331755 = phi i32* [ %.phi.trans.insert764, %._crit_edge855 ], [ %.pre-phi11331756, %._crit_edge552 ]
  %.pre-phi11341700 = phi i32* [ %.phi.trans.insert766, %._crit_edge855 ], [ %.pre-phi11341701, %._crit_edge552 ]
  %.pre-phi11351645 = phi i32* [ %.phi.trans.insert768, %._crit_edge855 ], [ %.pre-phi11351646, %._crit_edge552 ]
  %.pre-phi11361590 = phi i32* [ %.phi.trans.insert770, %._crit_edge855 ], [ %.pre-phi11361591, %._crit_edge552 ]
  %.pre-phi11371535 = phi i32* [ %.phi.trans.insert772, %._crit_edge855 ], [ %.pre-phi11371536, %._crit_edge552 ]
  %.pre-phi11381480 = phi i32* [ %.phi.trans.insert774, %._crit_edge855 ], [ %.pre-phi11381481, %._crit_edge552 ]
  %.pre-phi11391425 = phi i32* [ %.phi.trans.insert776, %._crit_edge855 ], [ %.pre-phi11391426, %._crit_edge552 ]
  %.pre-phi11401370 = phi i32** [ %.phi.trans.insert778, %._crit_edge855 ], [ %.pre-phi11401371, %._crit_edge552 ]
  %.pre-phi11411315 = phi i32** [ %.phi.trans.insert780, %._crit_edge855 ], [ %.pre-phi11411316, %._crit_edge552 ]
  %.pre-phi11421260 = phi i32** [ %.phi.trans.insert782, %._crit_edge855 ], [ %.pre-phi11421261, %._crit_edge552 ]
  %.pre-phi1182 = phi i32* [ %.phi.trans.insert856, %._crit_edge855 ], [ %.pre-phi1180, %._crit_edge552 ]
  %753 = phi i32 [ %.pre857, %._crit_edge855 ], [ %697, %._crit_edge552 ]
  store i32 22, i32* %3, align 4, !tbaa !8
  %754 = icmp sgt i32 %753, 7
  %.phi.trans.insert860 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %754, label %._crit_edge859, label %.lr.ph546

._crit_edge859:                                   ; preds = %728
  %.pre861 = load i32* %.phi.trans.insert860, align 4, !tbaa !34
  br label %._crit_edge547

.lr.ph546:                                        ; preds = %728
  %.pre858 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1062 = getelementptr inbounds %struct.bz_stream* %.pre858, i64 0, i32 1
  %.pre1063 = load i32* %.phi.trans.insert1062, align 4, !tbaa !35
  br label %763

._crit_edge547:                                   ; preds = %.backedge144, %._crit_edge859
  %755 = phi i32 [ %.pre861, %._crit_edge859 ], [ %774, %.backedge144 ]
  %.lcssa293 = phi i32 [ %753, %._crit_edge859 ], [ %775, %.backedge144 ]
  %756 = add nsw i32 %.lcssa293, -8
  %757 = lshr i32 %755, %756
  store i32 %756, i32* %.pre-phi1182, align 4, !tbaa !9
  %758 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  %759 = load i32* %758, align 4, !tbaa !51
  %760 = shl i32 %759, 8
  %761 = and i32 %757, 255
  %762 = or i32 %760, %761
  store i32 %762, i32* %758, align 4, !tbaa !51
  br label %787

; <label>:763                                     ; preds = %.lr.ph546, %.backedge144
  %764 = phi i32 [ %.pre1063, %.lr.ph546 ], [ %777, %.backedge144 ]
  %765 = phi i32 [ %753, %.lr.ph546 ], [ %775, %.backedge144 ]
  %766 = icmp eq i32 %764, 0
  br i1 %766, label %.loopexit, label %767

; <label>:767                                     ; preds = %763
  %768 = load i32* %.phi.trans.insert860, align 4, !tbaa !34
  %769 = shl i32 %768, 8
  %770 = getelementptr inbounds %struct.bz_stream* %.pre858, i64 0, i32 0
  %771 = load i8** %770, align 8, !tbaa !37
  %772 = load i8* %771, align 1, !tbaa !38
  %773 = zext i8 %772 to i32
  %774 = or i32 %773, %769
  store i32 %774, i32* %.phi.trans.insert860, align 4, !tbaa !34
  %775 = add nsw i32 %765, 8
  store i32 %775, i32* %.pre-phi1182, align 4, !tbaa !9
  %776 = getelementptr inbounds i8* %771, i64 1
  store i8* %776, i8** %770, align 8, !tbaa !37
  %777 = add i32 %764, -1
  store i32 %777, i32* %.phi.trans.insert1062, align 4, !tbaa !35
  %778 = getelementptr inbounds %struct.bz_stream* %.pre858, i64 0, i32 2
  %779 = load i32* %778, align 4, !tbaa !39
  %780 = add i32 %779, 1
  store i32 %780, i32* %778, align 4, !tbaa !39
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %782, label %.backedge144

; <label>:782                                     ; preds = %767
  %783 = getelementptr inbounds %struct.bz_stream* %.pre858, i64 0, i32 3
  %784 = load i32* %783, align 4, !tbaa !40
  %785 = add i32 %784, 1
  store i32 %785, i32* %783, align 4, !tbaa !40
  br label %.backedge144

.backedge144:                                     ; preds = %782, %767
  %786 = icmp sgt i32 %775, 7
  br i1 %786, label %._crit_edge547, label %763

; <label>:787                                     ; preds = %._crit_edge862, %._crit_edge547
  %788 = phi i32 [ %.pre, %._crit_edge862 ], [ %729, %._crit_edge547 ]
  %789 = phi i32 [ %.pre739, %._crit_edge862 ], [ %730, %._crit_edge547 ]
  %790 = phi i32 [ %.pre741, %._crit_edge862 ], [ %731, %._crit_edge547 ]
  %791 = phi i32 [ %.pre743, %._crit_edge862 ], [ %732, %._crit_edge547 ]
  %792 = phi i32 [ %.pre745, %._crit_edge862 ], [ %733, %._crit_edge547 ]
  %793 = phi i32 [ %.pre747, %._crit_edge862 ], [ %734, %._crit_edge547 ]
  %794 = phi i32 [ %.pre749, %._crit_edge862 ], [ %735, %._crit_edge547 ]
  %795 = phi i32 [ %.pre751, %._crit_edge862 ], [ %736, %._crit_edge547 ]
  %796 = phi i32 [ %.pre753, %._crit_edge862 ], [ %737, %._crit_edge547 ]
  %797 = phi i32 [ %.pre755, %._crit_edge862 ], [ %738, %._crit_edge547 ]
  %798 = phi i32 [ %.pre757, %._crit_edge862 ], [ %739, %._crit_edge547 ]
  %799 = phi i32 [ %.pre759, %._crit_edge862 ], [ %740, %._crit_edge547 ]
  %800 = phi i32 [ %.pre761, %._crit_edge862 ], [ %741, %._crit_edge547 ]
  %801 = phi i32 [ %.pre763, %._crit_edge862 ], [ %742, %._crit_edge547 ]
  %802 = phi i32 [ %.pre765, %._crit_edge862 ], [ %743, %._crit_edge547 ]
  %803 = phi i32 [ %.pre767, %._crit_edge862 ], [ %744, %._crit_edge547 ]
  %804 = phi i32 [ %.pre769, %._crit_edge862 ], [ %745, %._crit_edge547 ]
  %805 = phi i32 [ %.pre771, %._crit_edge862 ], [ %746, %._crit_edge547 ]
  %806 = phi i32 [ %.pre773, %._crit_edge862 ], [ %747, %._crit_edge547 ]
  %807 = phi i32 [ %.pre775, %._crit_edge862 ], [ %748, %._crit_edge547 ]
  %808 = phi i32 [ %.pre777, %._crit_edge862 ], [ %749, %._crit_edge547 ]
  %809 = phi i32* [ %.pre779, %._crit_edge862 ], [ %750, %._crit_edge547 ]
  %810 = phi i32* [ %.pre781, %._crit_edge862 ], [ %751, %._crit_edge547 ]
  %811 = phi i32* [ %.pre783, %._crit_edge862 ], [ %752, %._crit_edge547 ]
  %.pre-phi11202469 = phi i32* [ %.phi.trans.insert738, %._crit_edge862 ], [ %.pre-phi11202470, %._crit_edge547 ]
  %.pre-phi11212414 = phi i32* [ %.phi.trans.insert740, %._crit_edge862 ], [ %.pre-phi11212415, %._crit_edge547 ]
  %.pre-phi11222359 = phi i32* [ %.phi.trans.insert742, %._crit_edge862 ], [ %.pre-phi11222360, %._crit_edge547 ]
  %.pre-phi11232304 = phi i32* [ %.phi.trans.insert744, %._crit_edge862 ], [ %.pre-phi11232305, %._crit_edge547 ]
  %.pre-phi11242249 = phi i32* [ %.phi.trans.insert746, %._crit_edge862 ], [ %.pre-phi11242250, %._crit_edge547 ]
  %.pre-phi11252194 = phi i32* [ %.phi.trans.insert748, %._crit_edge862 ], [ %.pre-phi11252195, %._crit_edge547 ]
  %.pre-phi11262139 = phi i32* [ %.phi.trans.insert750, %._crit_edge862 ], [ %.pre-phi11262140, %._crit_edge547 ]
  %.pre-phi11272084 = phi i32* [ %.phi.trans.insert752, %._crit_edge862 ], [ %.pre-phi11272085, %._crit_edge547 ]
  %.pre-phi11282029 = phi i32* [ %.phi.trans.insert754, %._crit_edge862 ], [ %.pre-phi11282030, %._crit_edge547 ]
  %.pre-phi11291974 = phi i32* [ %.phi.trans.insert756, %._crit_edge862 ], [ %.pre-phi11291975, %._crit_edge547 ]
  %.pre-phi11301919 = phi i32* [ %.phi.trans.insert758, %._crit_edge862 ], [ %.pre-phi11301920, %._crit_edge547 ]
  %.pre-phi11311864 = phi i32* [ %.phi.trans.insert760, %._crit_edge862 ], [ %.pre-phi11311865, %._crit_edge547 ]
  %.pre-phi11321809 = phi i32* [ %.phi.trans.insert762, %._crit_edge862 ], [ %.pre-phi11321810, %._crit_edge547 ]
  %.pre-phi11331754 = phi i32* [ %.phi.trans.insert764, %._crit_edge862 ], [ %.pre-phi11331755, %._crit_edge547 ]
  %.pre-phi11341699 = phi i32* [ %.phi.trans.insert766, %._crit_edge862 ], [ %.pre-phi11341700, %._crit_edge547 ]
  %.pre-phi11351644 = phi i32* [ %.phi.trans.insert768, %._crit_edge862 ], [ %.pre-phi11351645, %._crit_edge547 ]
  %.pre-phi11361589 = phi i32* [ %.phi.trans.insert770, %._crit_edge862 ], [ %.pre-phi11361590, %._crit_edge547 ]
  %.pre-phi11371534 = phi i32* [ %.phi.trans.insert772, %._crit_edge862 ], [ %.pre-phi11371535, %._crit_edge547 ]
  %.pre-phi11381479 = phi i32* [ %.phi.trans.insert774, %._crit_edge862 ], [ %.pre-phi11381480, %._crit_edge547 ]
  %.pre-phi11391424 = phi i32* [ %.phi.trans.insert776, %._crit_edge862 ], [ %.pre-phi11391425, %._crit_edge547 ]
  %.pre-phi11401369 = phi i32** [ %.phi.trans.insert778, %._crit_edge862 ], [ %.pre-phi11401370, %._crit_edge547 ]
  %.pre-phi11411314 = phi i32** [ %.phi.trans.insert780, %._crit_edge862 ], [ %.pre-phi11411315, %._crit_edge547 ]
  %.pre-phi11421259 = phi i32** [ %.phi.trans.insert782, %._crit_edge862 ], [ %.pre-phi11421260, %._crit_edge547 ]
  %.pre-phi1184 = phi i32* [ %.phi.trans.insert863, %._crit_edge862 ], [ %.pre-phi1182, %._crit_edge547 ]
  %812 = phi i32 [ %.pre864, %._crit_edge862 ], [ %756, %._crit_edge547 ]
  store i32 23, i32* %3, align 4, !tbaa !8
  %813 = icmp sgt i32 %812, 7
  %.phi.trans.insert867 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %813, label %._crit_edge866, label %.lr.ph541

._crit_edge866:                                   ; preds = %787
  %.pre868 = load i32* %.phi.trans.insert867, align 4, !tbaa !34
  br label %._crit_edge542

.lr.ph541:                                        ; preds = %787
  %.pre865 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1064 = getelementptr inbounds %struct.bz_stream* %.pre865, i64 0, i32 1
  %.pre1065 = load i32* %.phi.trans.insert1064, align 4, !tbaa !35
  br label %822

._crit_edge542:                                   ; preds = %.backedge142, %._crit_edge866
  %814 = phi i32 [ %.pre868, %._crit_edge866 ], [ %833, %.backedge142 ]
  %.lcssa289 = phi i32 [ %812, %._crit_edge866 ], [ %834, %.backedge142 ]
  %815 = add nsw i32 %.lcssa289, -8
  %816 = lshr i32 %814, %815
  store i32 %815, i32* %.pre-phi1184, align 4, !tbaa !9
  %817 = getelementptr inbounds %struct.DState* %s, i64 0, i32 23
  %818 = load i32* %817, align 4, !tbaa !51
  %819 = shl i32 %818, 8
  %820 = and i32 %816, 255
  %821 = or i32 %819, %820
  store i32 %821, i32* %817, align 4, !tbaa !51
  br label %846

; <label>:822                                     ; preds = %.lr.ph541, %.backedge142
  %823 = phi i32 [ %.pre1065, %.lr.ph541 ], [ %836, %.backedge142 ]
  %824 = phi i32 [ %812, %.lr.ph541 ], [ %834, %.backedge142 ]
  %825 = icmp eq i32 %823, 0
  br i1 %825, label %.loopexit, label %826

; <label>:826                                     ; preds = %822
  %827 = load i32* %.phi.trans.insert867, align 4, !tbaa !34
  %828 = shl i32 %827, 8
  %829 = getelementptr inbounds %struct.bz_stream* %.pre865, i64 0, i32 0
  %830 = load i8** %829, align 8, !tbaa !37
  %831 = load i8* %830, align 1, !tbaa !38
  %832 = zext i8 %831 to i32
  %833 = or i32 %832, %828
  store i32 %833, i32* %.phi.trans.insert867, align 4, !tbaa !34
  %834 = add nsw i32 %824, 8
  store i32 %834, i32* %.pre-phi1184, align 4, !tbaa !9
  %835 = getelementptr inbounds i8* %830, i64 1
  store i8* %835, i8** %829, align 8, !tbaa !37
  %836 = add i32 %823, -1
  store i32 %836, i32* %.phi.trans.insert1064, align 4, !tbaa !35
  %837 = getelementptr inbounds %struct.bz_stream* %.pre865, i64 0, i32 2
  %838 = load i32* %837, align 4, !tbaa !39
  %839 = add i32 %838, 1
  store i32 %839, i32* %837, align 4, !tbaa !39
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %.backedge142

; <label>:841                                     ; preds = %826
  %842 = getelementptr inbounds %struct.bz_stream* %.pre865, i64 0, i32 3
  %843 = load i32* %842, align 4, !tbaa !40
  %844 = add i32 %843, 1
  store i32 %844, i32* %842, align 4, !tbaa !40
  br label %.backedge142

.backedge142:                                     ; preds = %841, %826
  %845 = icmp sgt i32 %834, 7
  br i1 %845, label %._crit_edge542, label %822

; <label>:846                                     ; preds = %._crit_edge869, %._crit_edge542
  %847 = phi i32 [ %.pre, %._crit_edge869 ], [ %788, %._crit_edge542 ]
  %848 = phi i32 [ %.pre739, %._crit_edge869 ], [ %789, %._crit_edge542 ]
  %849 = phi i32 [ %.pre741, %._crit_edge869 ], [ %790, %._crit_edge542 ]
  %850 = phi i32 [ %.pre743, %._crit_edge869 ], [ %791, %._crit_edge542 ]
  %851 = phi i32 [ %.pre745, %._crit_edge869 ], [ %792, %._crit_edge542 ]
  %852 = phi i32 [ %.pre747, %._crit_edge869 ], [ %793, %._crit_edge542 ]
  %853 = phi i32 [ %.pre749, %._crit_edge869 ], [ %794, %._crit_edge542 ]
  %854 = phi i32 [ %.pre751, %._crit_edge869 ], [ %795, %._crit_edge542 ]
  %855 = phi i32 [ %.pre753, %._crit_edge869 ], [ %796, %._crit_edge542 ]
  %856 = phi i32 [ %.pre755, %._crit_edge869 ], [ %797, %._crit_edge542 ]
  %857 = phi i32 [ %.pre757, %._crit_edge869 ], [ %798, %._crit_edge542 ]
  %858 = phi i32 [ %.pre759, %._crit_edge869 ], [ %799, %._crit_edge542 ]
  %859 = phi i32 [ %.pre761, %._crit_edge869 ], [ %800, %._crit_edge542 ]
  %860 = phi i32 [ %.pre763, %._crit_edge869 ], [ %801, %._crit_edge542 ]
  %861 = phi i32 [ %.pre765, %._crit_edge869 ], [ %802, %._crit_edge542 ]
  %862 = phi i32 [ %.pre767, %._crit_edge869 ], [ %803, %._crit_edge542 ]
  %863 = phi i32 [ %.pre769, %._crit_edge869 ], [ %804, %._crit_edge542 ]
  %864 = phi i32 [ %.pre771, %._crit_edge869 ], [ %805, %._crit_edge542 ]
  %865 = phi i32 [ %.pre773, %._crit_edge869 ], [ %806, %._crit_edge542 ]
  %866 = phi i32 [ %.pre775, %._crit_edge869 ], [ %807, %._crit_edge542 ]
  %867 = phi i32 [ %.pre777, %._crit_edge869 ], [ %808, %._crit_edge542 ]
  %868 = phi i32* [ %.pre779, %._crit_edge869 ], [ %809, %._crit_edge542 ]
  %869 = phi i32* [ %.pre781, %._crit_edge869 ], [ %810, %._crit_edge542 ]
  %870 = phi i32* [ %.pre783, %._crit_edge869 ], [ %811, %._crit_edge542 ]
  %.pre-phi11202468 = phi i32* [ %.phi.trans.insert738, %._crit_edge869 ], [ %.pre-phi11202469, %._crit_edge542 ]
  %.pre-phi11212413 = phi i32* [ %.phi.trans.insert740, %._crit_edge869 ], [ %.pre-phi11212414, %._crit_edge542 ]
  %.pre-phi11222358 = phi i32* [ %.phi.trans.insert742, %._crit_edge869 ], [ %.pre-phi11222359, %._crit_edge542 ]
  %.pre-phi11232303 = phi i32* [ %.phi.trans.insert744, %._crit_edge869 ], [ %.pre-phi11232304, %._crit_edge542 ]
  %.pre-phi11242248 = phi i32* [ %.phi.trans.insert746, %._crit_edge869 ], [ %.pre-phi11242249, %._crit_edge542 ]
  %.pre-phi11252193 = phi i32* [ %.phi.trans.insert748, %._crit_edge869 ], [ %.pre-phi11252194, %._crit_edge542 ]
  %.pre-phi11262138 = phi i32* [ %.phi.trans.insert750, %._crit_edge869 ], [ %.pre-phi11262139, %._crit_edge542 ]
  %.pre-phi11272083 = phi i32* [ %.phi.trans.insert752, %._crit_edge869 ], [ %.pre-phi11272084, %._crit_edge542 ]
  %.pre-phi11282028 = phi i32* [ %.phi.trans.insert754, %._crit_edge869 ], [ %.pre-phi11282029, %._crit_edge542 ]
  %.pre-phi11291973 = phi i32* [ %.phi.trans.insert756, %._crit_edge869 ], [ %.pre-phi11291974, %._crit_edge542 ]
  %.pre-phi11301918 = phi i32* [ %.phi.trans.insert758, %._crit_edge869 ], [ %.pre-phi11301919, %._crit_edge542 ]
  %.pre-phi11311863 = phi i32* [ %.phi.trans.insert760, %._crit_edge869 ], [ %.pre-phi11311864, %._crit_edge542 ]
  %.pre-phi11321808 = phi i32* [ %.phi.trans.insert762, %._crit_edge869 ], [ %.pre-phi11321809, %._crit_edge542 ]
  %.pre-phi11331753 = phi i32* [ %.phi.trans.insert764, %._crit_edge869 ], [ %.pre-phi11331754, %._crit_edge542 ]
  %.pre-phi11341698 = phi i32* [ %.phi.trans.insert766, %._crit_edge869 ], [ %.pre-phi11341699, %._crit_edge542 ]
  %.pre-phi11351643 = phi i32* [ %.phi.trans.insert768, %._crit_edge869 ], [ %.pre-phi11351644, %._crit_edge542 ]
  %.pre-phi11361588 = phi i32* [ %.phi.trans.insert770, %._crit_edge869 ], [ %.pre-phi11361589, %._crit_edge542 ]
  %.pre-phi11371533 = phi i32* [ %.phi.trans.insert772, %._crit_edge869 ], [ %.pre-phi11371534, %._crit_edge542 ]
  %.pre-phi11381478 = phi i32* [ %.phi.trans.insert774, %._crit_edge869 ], [ %.pre-phi11381479, %._crit_edge542 ]
  %.pre-phi11391423 = phi i32* [ %.phi.trans.insert776, %._crit_edge869 ], [ %.pre-phi11391424, %._crit_edge542 ]
  %.pre-phi11401368 = phi i32** [ %.phi.trans.insert778, %._crit_edge869 ], [ %.pre-phi11401369, %._crit_edge542 ]
  %.pre-phi11411313 = phi i32** [ %.phi.trans.insert780, %._crit_edge869 ], [ %.pre-phi11411314, %._crit_edge542 ]
  %.pre-phi11421258 = phi i32** [ %.phi.trans.insert782, %._crit_edge869 ], [ %.pre-phi11421259, %._crit_edge542 ]
  %.pre-phi1186 = phi i32* [ %.phi.trans.insert870, %._crit_edge869 ], [ %.pre-phi1184, %._crit_edge542 ]
  %871 = phi i32 [ %.pre871, %._crit_edge869 ], [ %815, %._crit_edge542 ]
  store i32 24, i32* %3, align 4, !tbaa !8
  %872 = icmp sgt i32 %871, 0
  %.phi.trans.insert874 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %872, label %._crit_edge873, label %.lr.ph536

._crit_edge873:                                   ; preds = %846
  %.pre875 = load i32* %.phi.trans.insert874, align 4, !tbaa !34
  br label %._crit_edge537

.lr.ph536:                                        ; preds = %846
  %.pre872 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1066 = getelementptr inbounds %struct.bz_stream* %.pre872, i64 0, i32 1
  %.pre1067 = load i32* %.phi.trans.insert1066, align 4, !tbaa !35
  br label %879

._crit_edge537:                                   ; preds = %.backedge140, %._crit_edge873
  %873 = phi i32 [ %.pre875, %._crit_edge873 ], [ %890, %.backedge140 ]
  %.lcssa285 = phi i32 [ %871, %._crit_edge873 ], [ %891, %.backedge140 ]
  %874 = add nsw i32 %.lcssa285, -1
  %875 = lshr i32 %873, %874
  store i32 %874, i32* %.pre-phi1186, align 4, !tbaa !9
  %.tr = trunc i32 %875 to i8
  %876 = and i8 %.tr, 1
  %877 = getelementptr inbounds %struct.DState* %s, i64 0, i32 4
  store i8 %876, i8* %877, align 1, !tbaa !52
  %878 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  store i32 0, i32* %878, align 4, !tbaa !53
  br label %903

; <label>:879                                     ; preds = %.lr.ph536, %.backedge140
  %880 = phi i32 [ %.pre1067, %.lr.ph536 ], [ %893, %.backedge140 ]
  %881 = phi i32 [ %871, %.lr.ph536 ], [ %891, %.backedge140 ]
  %882 = icmp eq i32 %880, 0
  br i1 %882, label %.loopexit, label %883

; <label>:883                                     ; preds = %879
  %884 = load i32* %.phi.trans.insert874, align 4, !tbaa !34
  %885 = shl i32 %884, 8
  %886 = getelementptr inbounds %struct.bz_stream* %.pre872, i64 0, i32 0
  %887 = load i8** %886, align 8, !tbaa !37
  %888 = load i8* %887, align 1, !tbaa !38
  %889 = zext i8 %888 to i32
  %890 = or i32 %889, %885
  store i32 %890, i32* %.phi.trans.insert874, align 4, !tbaa !34
  %891 = add nsw i32 %881, 8
  store i32 %891, i32* %.pre-phi1186, align 4, !tbaa !9
  %892 = getelementptr inbounds i8* %887, i64 1
  store i8* %892, i8** %886, align 8, !tbaa !37
  %893 = add i32 %880, -1
  store i32 %893, i32* %.phi.trans.insert1066, align 4, !tbaa !35
  %894 = getelementptr inbounds %struct.bz_stream* %.pre872, i64 0, i32 2
  %895 = load i32* %894, align 4, !tbaa !39
  %896 = add i32 %895, 1
  store i32 %896, i32* %894, align 4, !tbaa !39
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %898, label %.backedge140

; <label>:898                                     ; preds = %883
  %899 = getelementptr inbounds %struct.bz_stream* %.pre872, i64 0, i32 3
  %900 = load i32* %899, align 4, !tbaa !40
  %901 = add i32 %900, 1
  store i32 %901, i32* %899, align 4, !tbaa !40
  br label %.backedge140

.backedge140:                                     ; preds = %898, %883
  %902 = icmp sgt i32 %881, -8
  br i1 %902, label %._crit_edge537, label %879

; <label>:903                                     ; preds = %._crit_edge876, %._crit_edge537
  %904 = phi i32 [ %.pre, %._crit_edge876 ], [ %847, %._crit_edge537 ]
  %905 = phi i32 [ %.pre739, %._crit_edge876 ], [ %848, %._crit_edge537 ]
  %906 = phi i32 [ %.pre741, %._crit_edge876 ], [ %849, %._crit_edge537 ]
  %907 = phi i32 [ %.pre743, %._crit_edge876 ], [ %850, %._crit_edge537 ]
  %908 = phi i32 [ %.pre745, %._crit_edge876 ], [ %851, %._crit_edge537 ]
  %909 = phi i32 [ %.pre747, %._crit_edge876 ], [ %852, %._crit_edge537 ]
  %910 = phi i32 [ %.pre749, %._crit_edge876 ], [ %853, %._crit_edge537 ]
  %911 = phi i32 [ %.pre751, %._crit_edge876 ], [ %854, %._crit_edge537 ]
  %912 = phi i32 [ %.pre753, %._crit_edge876 ], [ %855, %._crit_edge537 ]
  %913 = phi i32 [ %.pre755, %._crit_edge876 ], [ %856, %._crit_edge537 ]
  %914 = phi i32 [ %.pre757, %._crit_edge876 ], [ %857, %._crit_edge537 ]
  %915 = phi i32 [ %.pre759, %._crit_edge876 ], [ %858, %._crit_edge537 ]
  %916 = phi i32 [ %.pre761, %._crit_edge876 ], [ %859, %._crit_edge537 ]
  %917 = phi i32 [ %.pre763, %._crit_edge876 ], [ %860, %._crit_edge537 ]
  %918 = phi i32 [ %.pre765, %._crit_edge876 ], [ %861, %._crit_edge537 ]
  %919 = phi i32 [ %.pre767, %._crit_edge876 ], [ %862, %._crit_edge537 ]
  %920 = phi i32 [ %.pre769, %._crit_edge876 ], [ %863, %._crit_edge537 ]
  %921 = phi i32 [ %.pre771, %._crit_edge876 ], [ %864, %._crit_edge537 ]
  %922 = phi i32 [ %.pre773, %._crit_edge876 ], [ %865, %._crit_edge537 ]
  %923 = phi i32 [ %.pre775, %._crit_edge876 ], [ %866, %._crit_edge537 ]
  %924 = phi i32 [ %.pre777, %._crit_edge876 ], [ %867, %._crit_edge537 ]
  %925 = phi i32* [ %.pre779, %._crit_edge876 ], [ %868, %._crit_edge537 ]
  %926 = phi i32* [ %.pre781, %._crit_edge876 ], [ %869, %._crit_edge537 ]
  %927 = phi i32* [ %.pre783, %._crit_edge876 ], [ %870, %._crit_edge537 ]
  %.pre-phi11202467 = phi i32* [ %.phi.trans.insert738, %._crit_edge876 ], [ %.pre-phi11202468, %._crit_edge537 ]
  %.pre-phi11212412 = phi i32* [ %.phi.trans.insert740, %._crit_edge876 ], [ %.pre-phi11212413, %._crit_edge537 ]
  %.pre-phi11222357 = phi i32* [ %.phi.trans.insert742, %._crit_edge876 ], [ %.pre-phi11222358, %._crit_edge537 ]
  %.pre-phi11232302 = phi i32* [ %.phi.trans.insert744, %._crit_edge876 ], [ %.pre-phi11232303, %._crit_edge537 ]
  %.pre-phi11242247 = phi i32* [ %.phi.trans.insert746, %._crit_edge876 ], [ %.pre-phi11242248, %._crit_edge537 ]
  %.pre-phi11252192 = phi i32* [ %.phi.trans.insert748, %._crit_edge876 ], [ %.pre-phi11252193, %._crit_edge537 ]
  %.pre-phi11262137 = phi i32* [ %.phi.trans.insert750, %._crit_edge876 ], [ %.pre-phi11262138, %._crit_edge537 ]
  %.pre-phi11272082 = phi i32* [ %.phi.trans.insert752, %._crit_edge876 ], [ %.pre-phi11272083, %._crit_edge537 ]
  %.pre-phi11282027 = phi i32* [ %.phi.trans.insert754, %._crit_edge876 ], [ %.pre-phi11282028, %._crit_edge537 ]
  %.pre-phi11291972 = phi i32* [ %.phi.trans.insert756, %._crit_edge876 ], [ %.pre-phi11291973, %._crit_edge537 ]
  %.pre-phi11301917 = phi i32* [ %.phi.trans.insert758, %._crit_edge876 ], [ %.pre-phi11301918, %._crit_edge537 ]
  %.pre-phi11311862 = phi i32* [ %.phi.trans.insert760, %._crit_edge876 ], [ %.pre-phi11311863, %._crit_edge537 ]
  %.pre-phi11321807 = phi i32* [ %.phi.trans.insert762, %._crit_edge876 ], [ %.pre-phi11321808, %._crit_edge537 ]
  %.pre-phi11331752 = phi i32* [ %.phi.trans.insert764, %._crit_edge876 ], [ %.pre-phi11331753, %._crit_edge537 ]
  %.pre-phi11341697 = phi i32* [ %.phi.trans.insert766, %._crit_edge876 ], [ %.pre-phi11341698, %._crit_edge537 ]
  %.pre-phi11351642 = phi i32* [ %.phi.trans.insert768, %._crit_edge876 ], [ %.pre-phi11351643, %._crit_edge537 ]
  %.pre-phi11361587 = phi i32* [ %.phi.trans.insert770, %._crit_edge876 ], [ %.pre-phi11361588, %._crit_edge537 ]
  %.pre-phi11371532 = phi i32* [ %.phi.trans.insert772, %._crit_edge876 ], [ %.pre-phi11371533, %._crit_edge537 ]
  %.pre-phi11381477 = phi i32* [ %.phi.trans.insert774, %._crit_edge876 ], [ %.pre-phi11381478, %._crit_edge537 ]
  %.pre-phi11391422 = phi i32* [ %.phi.trans.insert776, %._crit_edge876 ], [ %.pre-phi11391423, %._crit_edge537 ]
  %.pre-phi11401367 = phi i32** [ %.phi.trans.insert778, %._crit_edge876 ], [ %.pre-phi11401368, %._crit_edge537 ]
  %.pre-phi11411312 = phi i32** [ %.phi.trans.insert780, %._crit_edge876 ], [ %.pre-phi11411313, %._crit_edge537 ]
  %.pre-phi11421257 = phi i32** [ %.phi.trans.insert782, %._crit_edge876 ], [ %.pre-phi11421258, %._crit_edge537 ]
  %.pre-phi1188 = phi i32* [ %.phi.trans.insert877, %._crit_edge876 ], [ %.pre-phi1186, %._crit_edge537 ]
  %928 = phi i32 [ %.pre878, %._crit_edge876 ], [ %874, %._crit_edge537 ]
  store i32 25, i32* %3, align 4, !tbaa !8
  %929 = icmp sgt i32 %928, 7
  %.phi.trans.insert881 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %929, label %._crit_edge880, label %.lr.ph531

._crit_edge880:                                   ; preds = %903
  %.pre882 = load i32* %.phi.trans.insert881, align 4, !tbaa !34
  br label %._crit_edge532

.lr.ph531:                                        ; preds = %903
  %.pre879 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1068 = getelementptr inbounds %struct.bz_stream* %.pre879, i64 0, i32 1
  %.pre1069 = load i32* %.phi.trans.insert1068, align 4, !tbaa !35
  br label %938

._crit_edge532:                                   ; preds = %.backedge138, %._crit_edge880
  %930 = phi i32 [ %.pre882, %._crit_edge880 ], [ %949, %.backedge138 ]
  %.lcssa281 = phi i32 [ %928, %._crit_edge880 ], [ %950, %.backedge138 ]
  %931 = add nsw i32 %.lcssa281, -8
  %932 = lshr i32 %930, %931
  store i32 %931, i32* %.pre-phi1188, align 4, !tbaa !9
  %933 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  %934 = load i32* %933, align 4, !tbaa !53
  %935 = shl i32 %934, 8
  %936 = and i32 %932, 255
  %937 = or i32 %935, %936
  store i32 %937, i32* %933, align 4, !tbaa !53
  br label %962

; <label>:938                                     ; preds = %.lr.ph531, %.backedge138
  %939 = phi i32 [ %.pre1069, %.lr.ph531 ], [ %952, %.backedge138 ]
  %940 = phi i32 [ %928, %.lr.ph531 ], [ %950, %.backedge138 ]
  %941 = icmp eq i32 %939, 0
  br i1 %941, label %.loopexit, label %942

; <label>:942                                     ; preds = %938
  %943 = load i32* %.phi.trans.insert881, align 4, !tbaa !34
  %944 = shl i32 %943, 8
  %945 = getelementptr inbounds %struct.bz_stream* %.pre879, i64 0, i32 0
  %946 = load i8** %945, align 8, !tbaa !37
  %947 = load i8* %946, align 1, !tbaa !38
  %948 = zext i8 %947 to i32
  %949 = or i32 %948, %944
  store i32 %949, i32* %.phi.trans.insert881, align 4, !tbaa !34
  %950 = add nsw i32 %940, 8
  store i32 %950, i32* %.pre-phi1188, align 4, !tbaa !9
  %951 = getelementptr inbounds i8* %946, i64 1
  store i8* %951, i8** %945, align 8, !tbaa !37
  %952 = add i32 %939, -1
  store i32 %952, i32* %.phi.trans.insert1068, align 4, !tbaa !35
  %953 = getelementptr inbounds %struct.bz_stream* %.pre879, i64 0, i32 2
  %954 = load i32* %953, align 4, !tbaa !39
  %955 = add i32 %954, 1
  store i32 %955, i32* %953, align 4, !tbaa !39
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %.backedge138

; <label>:957                                     ; preds = %942
  %958 = getelementptr inbounds %struct.bz_stream* %.pre879, i64 0, i32 3
  %959 = load i32* %958, align 4, !tbaa !40
  %960 = add i32 %959, 1
  store i32 %960, i32* %958, align 4, !tbaa !40
  br label %.backedge138

.backedge138:                                     ; preds = %957, %942
  %961 = icmp sgt i32 %950, 7
  br i1 %961, label %._crit_edge532, label %938

; <label>:962                                     ; preds = %._crit_edge883, %._crit_edge532
  %963 = phi i32 [ %.pre, %._crit_edge883 ], [ %904, %._crit_edge532 ]
  %964 = phi i32 [ %.pre739, %._crit_edge883 ], [ %905, %._crit_edge532 ]
  %965 = phi i32 [ %.pre741, %._crit_edge883 ], [ %906, %._crit_edge532 ]
  %966 = phi i32 [ %.pre743, %._crit_edge883 ], [ %907, %._crit_edge532 ]
  %967 = phi i32 [ %.pre745, %._crit_edge883 ], [ %908, %._crit_edge532 ]
  %968 = phi i32 [ %.pre747, %._crit_edge883 ], [ %909, %._crit_edge532 ]
  %969 = phi i32 [ %.pre749, %._crit_edge883 ], [ %910, %._crit_edge532 ]
  %970 = phi i32 [ %.pre751, %._crit_edge883 ], [ %911, %._crit_edge532 ]
  %971 = phi i32 [ %.pre753, %._crit_edge883 ], [ %912, %._crit_edge532 ]
  %972 = phi i32 [ %.pre755, %._crit_edge883 ], [ %913, %._crit_edge532 ]
  %973 = phi i32 [ %.pre757, %._crit_edge883 ], [ %914, %._crit_edge532 ]
  %974 = phi i32 [ %.pre759, %._crit_edge883 ], [ %915, %._crit_edge532 ]
  %975 = phi i32 [ %.pre761, %._crit_edge883 ], [ %916, %._crit_edge532 ]
  %976 = phi i32 [ %.pre763, %._crit_edge883 ], [ %917, %._crit_edge532 ]
  %977 = phi i32 [ %.pre765, %._crit_edge883 ], [ %918, %._crit_edge532 ]
  %978 = phi i32 [ %.pre767, %._crit_edge883 ], [ %919, %._crit_edge532 ]
  %979 = phi i32 [ %.pre769, %._crit_edge883 ], [ %920, %._crit_edge532 ]
  %980 = phi i32 [ %.pre771, %._crit_edge883 ], [ %921, %._crit_edge532 ]
  %981 = phi i32 [ %.pre773, %._crit_edge883 ], [ %922, %._crit_edge532 ]
  %982 = phi i32 [ %.pre775, %._crit_edge883 ], [ %923, %._crit_edge532 ]
  %983 = phi i32 [ %.pre777, %._crit_edge883 ], [ %924, %._crit_edge532 ]
  %984 = phi i32* [ %.pre779, %._crit_edge883 ], [ %925, %._crit_edge532 ]
  %985 = phi i32* [ %.pre781, %._crit_edge883 ], [ %926, %._crit_edge532 ]
  %986 = phi i32* [ %.pre783, %._crit_edge883 ], [ %927, %._crit_edge532 ]
  %.pre-phi11202466 = phi i32* [ %.phi.trans.insert738, %._crit_edge883 ], [ %.pre-phi11202467, %._crit_edge532 ]
  %.pre-phi11212411 = phi i32* [ %.phi.trans.insert740, %._crit_edge883 ], [ %.pre-phi11212412, %._crit_edge532 ]
  %.pre-phi11222356 = phi i32* [ %.phi.trans.insert742, %._crit_edge883 ], [ %.pre-phi11222357, %._crit_edge532 ]
  %.pre-phi11232301 = phi i32* [ %.phi.trans.insert744, %._crit_edge883 ], [ %.pre-phi11232302, %._crit_edge532 ]
  %.pre-phi11242246 = phi i32* [ %.phi.trans.insert746, %._crit_edge883 ], [ %.pre-phi11242247, %._crit_edge532 ]
  %.pre-phi11252191 = phi i32* [ %.phi.trans.insert748, %._crit_edge883 ], [ %.pre-phi11252192, %._crit_edge532 ]
  %.pre-phi11262136 = phi i32* [ %.phi.trans.insert750, %._crit_edge883 ], [ %.pre-phi11262137, %._crit_edge532 ]
  %.pre-phi11272081 = phi i32* [ %.phi.trans.insert752, %._crit_edge883 ], [ %.pre-phi11272082, %._crit_edge532 ]
  %.pre-phi11282026 = phi i32* [ %.phi.trans.insert754, %._crit_edge883 ], [ %.pre-phi11282027, %._crit_edge532 ]
  %.pre-phi11291971 = phi i32* [ %.phi.trans.insert756, %._crit_edge883 ], [ %.pre-phi11291972, %._crit_edge532 ]
  %.pre-phi11301916 = phi i32* [ %.phi.trans.insert758, %._crit_edge883 ], [ %.pre-phi11301917, %._crit_edge532 ]
  %.pre-phi11311861 = phi i32* [ %.phi.trans.insert760, %._crit_edge883 ], [ %.pre-phi11311862, %._crit_edge532 ]
  %.pre-phi11321806 = phi i32* [ %.phi.trans.insert762, %._crit_edge883 ], [ %.pre-phi11321807, %._crit_edge532 ]
  %.pre-phi11331751 = phi i32* [ %.phi.trans.insert764, %._crit_edge883 ], [ %.pre-phi11331752, %._crit_edge532 ]
  %.pre-phi11341696 = phi i32* [ %.phi.trans.insert766, %._crit_edge883 ], [ %.pre-phi11341697, %._crit_edge532 ]
  %.pre-phi11351641 = phi i32* [ %.phi.trans.insert768, %._crit_edge883 ], [ %.pre-phi11351642, %._crit_edge532 ]
  %.pre-phi11361586 = phi i32* [ %.phi.trans.insert770, %._crit_edge883 ], [ %.pre-phi11361587, %._crit_edge532 ]
  %.pre-phi11371531 = phi i32* [ %.phi.trans.insert772, %._crit_edge883 ], [ %.pre-phi11371532, %._crit_edge532 ]
  %.pre-phi11381476 = phi i32* [ %.phi.trans.insert774, %._crit_edge883 ], [ %.pre-phi11381477, %._crit_edge532 ]
  %.pre-phi11391421 = phi i32* [ %.phi.trans.insert776, %._crit_edge883 ], [ %.pre-phi11391422, %._crit_edge532 ]
  %.pre-phi11401366 = phi i32** [ %.phi.trans.insert778, %._crit_edge883 ], [ %.pre-phi11401367, %._crit_edge532 ]
  %.pre-phi11411311 = phi i32** [ %.phi.trans.insert780, %._crit_edge883 ], [ %.pre-phi11411312, %._crit_edge532 ]
  %.pre-phi11421256 = phi i32** [ %.phi.trans.insert782, %._crit_edge883 ], [ %.pre-phi11421257, %._crit_edge532 ]
  %.pre-phi1190 = phi i32* [ %.phi.trans.insert884, %._crit_edge883 ], [ %.pre-phi1188, %._crit_edge532 ]
  %987 = phi i32 [ %.pre885, %._crit_edge883 ], [ %931, %._crit_edge532 ]
  store i32 26, i32* %3, align 4, !tbaa !8
  %988 = icmp sgt i32 %987, 7
  %.phi.trans.insert888 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %988, label %._crit_edge887, label %.lr.ph526

._crit_edge887:                                   ; preds = %962
  %.pre889 = load i32* %.phi.trans.insert888, align 4, !tbaa !34
  br label %._crit_edge527

.lr.ph526:                                        ; preds = %962
  %.pre886 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1070 = getelementptr inbounds %struct.bz_stream* %.pre886, i64 0, i32 1
  %.pre1071 = load i32* %.phi.trans.insert1070, align 4, !tbaa !35
  br label %997

._crit_edge527:                                   ; preds = %.backedge136, %._crit_edge887
  %989 = phi i32 [ %.pre889, %._crit_edge887 ], [ %1008, %.backedge136 ]
  %.lcssa277 = phi i32 [ %987, %._crit_edge887 ], [ %1009, %.backedge136 ]
  %990 = add nsw i32 %.lcssa277, -8
  %991 = lshr i32 %989, %990
  store i32 %990, i32* %.pre-phi1190, align 4, !tbaa !9
  %992 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  %993 = load i32* %992, align 4, !tbaa !53
  %994 = shl i32 %993, 8
  %995 = and i32 %991, 255
  %996 = or i32 %994, %995
  store i32 %996, i32* %992, align 4, !tbaa !53
  br label %1021

; <label>:997                                     ; preds = %.lr.ph526, %.backedge136
  %998 = phi i32 [ %.pre1071, %.lr.ph526 ], [ %1011, %.backedge136 ]
  %999 = phi i32 [ %987, %.lr.ph526 ], [ %1009, %.backedge136 ]
  %1000 = icmp eq i32 %998, 0
  br i1 %1000, label %.loopexit, label %1001

; <label>:1001                                    ; preds = %997
  %1002 = load i32* %.phi.trans.insert888, align 4, !tbaa !34
  %1003 = shl i32 %1002, 8
  %1004 = getelementptr inbounds %struct.bz_stream* %.pre886, i64 0, i32 0
  %1005 = load i8** %1004, align 8, !tbaa !37
  %1006 = load i8* %1005, align 1, !tbaa !38
  %1007 = zext i8 %1006 to i32
  %1008 = or i32 %1007, %1003
  store i32 %1008, i32* %.phi.trans.insert888, align 4, !tbaa !34
  %1009 = add nsw i32 %999, 8
  store i32 %1009, i32* %.pre-phi1190, align 4, !tbaa !9
  %1010 = getelementptr inbounds i8* %1005, i64 1
  store i8* %1010, i8** %1004, align 8, !tbaa !37
  %1011 = add i32 %998, -1
  store i32 %1011, i32* %.phi.trans.insert1070, align 4, !tbaa !35
  %1012 = getelementptr inbounds %struct.bz_stream* %.pre886, i64 0, i32 2
  %1013 = load i32* %1012, align 4, !tbaa !39
  %1014 = add i32 %1013, 1
  store i32 %1014, i32* %1012, align 4, !tbaa !39
  %1015 = icmp eq i32 %1014, 0
  br i1 %1015, label %1016, label %.backedge136

; <label>:1016                                    ; preds = %1001
  %1017 = getelementptr inbounds %struct.bz_stream* %.pre886, i64 0, i32 3
  %1018 = load i32* %1017, align 4, !tbaa !40
  %1019 = add i32 %1018, 1
  store i32 %1019, i32* %1017, align 4, !tbaa !40
  br label %.backedge136

.backedge136:                                     ; preds = %1016, %1001
  %1020 = icmp sgt i32 %1009, 7
  br i1 %1020, label %._crit_edge527, label %997

; <label>:1021                                    ; preds = %._crit_edge890, %._crit_edge527
  %1022 = phi i32 [ %.pre, %._crit_edge890 ], [ %963, %._crit_edge527 ]
  %1023 = phi i32 [ %.pre739, %._crit_edge890 ], [ %964, %._crit_edge527 ]
  %1024 = phi i32 [ %.pre741, %._crit_edge890 ], [ %965, %._crit_edge527 ]
  %1025 = phi i32 [ %.pre743, %._crit_edge890 ], [ %966, %._crit_edge527 ]
  %1026 = phi i32 [ %.pre745, %._crit_edge890 ], [ %967, %._crit_edge527 ]
  %1027 = phi i32 [ %.pre747, %._crit_edge890 ], [ %968, %._crit_edge527 ]
  %1028 = phi i32 [ %.pre749, %._crit_edge890 ], [ %969, %._crit_edge527 ]
  %1029 = phi i32 [ %.pre751, %._crit_edge890 ], [ %970, %._crit_edge527 ]
  %1030 = phi i32 [ %.pre753, %._crit_edge890 ], [ %971, %._crit_edge527 ]
  %1031 = phi i32 [ %.pre755, %._crit_edge890 ], [ %972, %._crit_edge527 ]
  %1032 = phi i32 [ %.pre757, %._crit_edge890 ], [ %973, %._crit_edge527 ]
  %1033 = phi i32 [ %.pre759, %._crit_edge890 ], [ %974, %._crit_edge527 ]
  %1034 = phi i32 [ %.pre761, %._crit_edge890 ], [ %975, %._crit_edge527 ]
  %1035 = phi i32 [ %.pre763, %._crit_edge890 ], [ %976, %._crit_edge527 ]
  %1036 = phi i32 [ %.pre765, %._crit_edge890 ], [ %977, %._crit_edge527 ]
  %1037 = phi i32 [ %.pre767, %._crit_edge890 ], [ %978, %._crit_edge527 ]
  %1038 = phi i32 [ %.pre769, %._crit_edge890 ], [ %979, %._crit_edge527 ]
  %1039 = phi i32 [ %.pre771, %._crit_edge890 ], [ %980, %._crit_edge527 ]
  %1040 = phi i32 [ %.pre773, %._crit_edge890 ], [ %981, %._crit_edge527 ]
  %1041 = phi i32 [ %.pre775, %._crit_edge890 ], [ %982, %._crit_edge527 ]
  %1042 = phi i32 [ %.pre777, %._crit_edge890 ], [ %983, %._crit_edge527 ]
  %1043 = phi i32* [ %.pre779, %._crit_edge890 ], [ %984, %._crit_edge527 ]
  %1044 = phi i32* [ %.pre781, %._crit_edge890 ], [ %985, %._crit_edge527 ]
  %1045 = phi i32* [ %.pre783, %._crit_edge890 ], [ %986, %._crit_edge527 ]
  %.pre-phi11202465 = phi i32* [ %.phi.trans.insert738, %._crit_edge890 ], [ %.pre-phi11202466, %._crit_edge527 ]
  %.pre-phi11212410 = phi i32* [ %.phi.trans.insert740, %._crit_edge890 ], [ %.pre-phi11212411, %._crit_edge527 ]
  %.pre-phi11222355 = phi i32* [ %.phi.trans.insert742, %._crit_edge890 ], [ %.pre-phi11222356, %._crit_edge527 ]
  %.pre-phi11232300 = phi i32* [ %.phi.trans.insert744, %._crit_edge890 ], [ %.pre-phi11232301, %._crit_edge527 ]
  %.pre-phi11242245 = phi i32* [ %.phi.trans.insert746, %._crit_edge890 ], [ %.pre-phi11242246, %._crit_edge527 ]
  %.pre-phi11252190 = phi i32* [ %.phi.trans.insert748, %._crit_edge890 ], [ %.pre-phi11252191, %._crit_edge527 ]
  %.pre-phi11262135 = phi i32* [ %.phi.trans.insert750, %._crit_edge890 ], [ %.pre-phi11262136, %._crit_edge527 ]
  %.pre-phi11272080 = phi i32* [ %.phi.trans.insert752, %._crit_edge890 ], [ %.pre-phi11272081, %._crit_edge527 ]
  %.pre-phi11282025 = phi i32* [ %.phi.trans.insert754, %._crit_edge890 ], [ %.pre-phi11282026, %._crit_edge527 ]
  %.pre-phi11291970 = phi i32* [ %.phi.trans.insert756, %._crit_edge890 ], [ %.pre-phi11291971, %._crit_edge527 ]
  %.pre-phi11301915 = phi i32* [ %.phi.trans.insert758, %._crit_edge890 ], [ %.pre-phi11301916, %._crit_edge527 ]
  %.pre-phi11311860 = phi i32* [ %.phi.trans.insert760, %._crit_edge890 ], [ %.pre-phi11311861, %._crit_edge527 ]
  %.pre-phi11321805 = phi i32* [ %.phi.trans.insert762, %._crit_edge890 ], [ %.pre-phi11321806, %._crit_edge527 ]
  %.pre-phi11331750 = phi i32* [ %.phi.trans.insert764, %._crit_edge890 ], [ %.pre-phi11331751, %._crit_edge527 ]
  %.pre-phi11341695 = phi i32* [ %.phi.trans.insert766, %._crit_edge890 ], [ %.pre-phi11341696, %._crit_edge527 ]
  %.pre-phi11351640 = phi i32* [ %.phi.trans.insert768, %._crit_edge890 ], [ %.pre-phi11351641, %._crit_edge527 ]
  %.pre-phi11361585 = phi i32* [ %.phi.trans.insert770, %._crit_edge890 ], [ %.pre-phi11361586, %._crit_edge527 ]
  %.pre-phi11371530 = phi i32* [ %.phi.trans.insert772, %._crit_edge890 ], [ %.pre-phi11371531, %._crit_edge527 ]
  %.pre-phi11381475 = phi i32* [ %.phi.trans.insert774, %._crit_edge890 ], [ %.pre-phi11381476, %._crit_edge527 ]
  %.pre-phi11391420 = phi i32* [ %.phi.trans.insert776, %._crit_edge890 ], [ %.pre-phi11391421, %._crit_edge527 ]
  %.pre-phi11401365 = phi i32** [ %.phi.trans.insert778, %._crit_edge890 ], [ %.pre-phi11401366, %._crit_edge527 ]
  %.pre-phi11411310 = phi i32** [ %.phi.trans.insert780, %._crit_edge890 ], [ %.pre-phi11411311, %._crit_edge527 ]
  %.pre-phi11421255 = phi i32** [ %.phi.trans.insert782, %._crit_edge890 ], [ %.pre-phi11421256, %._crit_edge527 ]
  %.pre-phi1192 = phi i32* [ %.phi.trans.insert891, %._crit_edge890 ], [ %.pre-phi1190, %._crit_edge527 ]
  %1046 = phi i32 [ %.pre892, %._crit_edge890 ], [ %990, %._crit_edge527 ]
  store i32 27, i32* %3, align 4, !tbaa !8
  %1047 = icmp sgt i32 %1046, 7
  %.phi.trans.insert895 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1047, label %._crit_edge894, label %.lr.ph521

._crit_edge894:                                   ; preds = %1021
  %.pre896 = load i32* %.phi.trans.insert895, align 4, !tbaa !34
  br label %._crit_edge522

.lr.ph521:                                        ; preds = %1021
  %.pre893 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1072 = getelementptr inbounds %struct.bz_stream* %.pre893, i64 0, i32 1
  %.pre1073 = load i32* %.phi.trans.insert1072, align 4, !tbaa !35
  br label %1057

._crit_edge522:                                   ; preds = %.backedge134, %._crit_edge894
  %1048 = phi i32 [ %.pre896, %._crit_edge894 ], [ %1068, %.backedge134 ]
  %.lcssa273 = phi i32 [ %1046, %._crit_edge894 ], [ %1069, %.backedge134 ]
  %1049 = add nsw i32 %.lcssa273, -8
  %1050 = lshr i32 %1048, %1049
  store i32 %1049, i32* %.pre-phi1192, align 4, !tbaa !9
  %1051 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  %1052 = load i32* %1051, align 4, !tbaa !53
  %1053 = shl i32 %1052, 8
  %1054 = and i32 %1050, 255
  %1055 = or i32 %1053, %1054
  store i32 %1055, i32* %1051, align 4, !tbaa !53
  %1056 = icmp slt i32 %1055, 0
  br i1 %1056, label %.loopexit, label %1081

; <label>:1057                                    ; preds = %.lr.ph521, %.backedge134
  %1058 = phi i32 [ %.pre1073, %.lr.ph521 ], [ %1071, %.backedge134 ]
  %1059 = phi i32 [ %1046, %.lr.ph521 ], [ %1069, %.backedge134 ]
  %1060 = icmp eq i32 %1058, 0
  br i1 %1060, label %.loopexit, label %1061

; <label>:1061                                    ; preds = %1057
  %1062 = load i32* %.phi.trans.insert895, align 4, !tbaa !34
  %1063 = shl i32 %1062, 8
  %1064 = getelementptr inbounds %struct.bz_stream* %.pre893, i64 0, i32 0
  %1065 = load i8** %1064, align 8, !tbaa !37
  %1066 = load i8* %1065, align 1, !tbaa !38
  %1067 = zext i8 %1066 to i32
  %1068 = or i32 %1067, %1063
  store i32 %1068, i32* %.phi.trans.insert895, align 4, !tbaa !34
  %1069 = add nsw i32 %1059, 8
  store i32 %1069, i32* %.pre-phi1192, align 4, !tbaa !9
  %1070 = getelementptr inbounds i8* %1065, i64 1
  store i8* %1070, i8** %1064, align 8, !tbaa !37
  %1071 = add i32 %1058, -1
  store i32 %1071, i32* %.phi.trans.insert1072, align 4, !tbaa !35
  %1072 = getelementptr inbounds %struct.bz_stream* %.pre893, i64 0, i32 2
  %1073 = load i32* %1072, align 4, !tbaa !39
  %1074 = add i32 %1073, 1
  store i32 %1074, i32* %1072, align 4, !tbaa !39
  %1075 = icmp eq i32 %1074, 0
  br i1 %1075, label %1076, label %.backedge134

; <label>:1076                                    ; preds = %1061
  %1077 = getelementptr inbounds %struct.bz_stream* %.pre893, i64 0, i32 3
  %1078 = load i32* %1077, align 4, !tbaa !40
  %1079 = add i32 %1078, 1
  store i32 %1079, i32* %1077, align 4, !tbaa !40
  br label %.backedge134

.backedge134:                                     ; preds = %1076, %1061
  %1080 = icmp sgt i32 %1069, 7
  br i1 %1080, label %._crit_edge522, label %1057

; <label>:1081                                    ; preds = %._crit_edge522
  %1082 = getelementptr inbounds %struct.DState* %s, i64 0, i32 9
  %1083 = load i32* %1082, align 4, !tbaa !41
  %1084 = mul nsw i32 %1083, 100000
  %1085 = or i32 %1084, 10
  %1086 = icmp sgt i32 %1055, %1085
  br i1 %1086, label %.loopexit, label %1087

; <label>:1087                                    ; preds = %1081, %._crit_edge386
  %1088 = phi i32 [ %1113, %._crit_edge386 ], [ %1023, %1081 ]
  %1089 = phi i32 [ %1114, %._crit_edge386 ], [ %1024, %1081 ]
  %1090 = phi i32 [ %1115, %._crit_edge386 ], [ %1025, %1081 ]
  %1091 = phi i32 [ %1116, %._crit_edge386 ], [ %1026, %1081 ]
  %1092 = phi i32 [ %1117, %._crit_edge386 ], [ %1027, %1081 ]
  %1093 = phi i32 [ %1118, %._crit_edge386 ], [ %1028, %1081 ]
  %1094 = phi i32 [ %1119, %._crit_edge386 ], [ %1029, %1081 ]
  %1095 = phi i32 [ %1120, %._crit_edge386 ], [ %1030, %1081 ]
  %1096 = phi i32 [ %1121, %._crit_edge386 ], [ %1031, %1081 ]
  %1097 = phi i32 [ %1122, %._crit_edge386 ], [ %1032, %1081 ]
  %1098 = phi i32 [ %1123, %._crit_edge386 ], [ %1033, %1081 ]
  %1099 = phi i32 [ %1124, %._crit_edge386 ], [ %1034, %1081 ]
  %1100 = phi i32 [ %1125, %._crit_edge386 ], [ %1035, %1081 ]
  %1101 = phi i32 [ %1126, %._crit_edge386 ], [ %1036, %1081 ]
  %1102 = phi i32 [ %1127, %._crit_edge386 ], [ %1037, %1081 ]
  %1103 = phi i32 [ %1128, %._crit_edge386 ], [ %1038, %1081 ]
  %1104 = phi i32 [ %1129, %._crit_edge386 ], [ %1039, %1081 ]
  %1105 = phi i32 [ %1130, %._crit_edge386 ], [ %1040, %1081 ]
  %1106 = phi i32 [ %1131, %._crit_edge386 ], [ %1041, %1081 ]
  %1107 = phi i32 [ %1132, %._crit_edge386 ], [ %1042, %1081 ]
  %1108 = phi i32* [ %1133, %._crit_edge386 ], [ %1043, %1081 ]
  %1109 = phi i32* [ %1134, %._crit_edge386 ], [ %1044, %1081 ]
  %1110 = phi i32* [ %1135, %._crit_edge386 ], [ %1045, %1081 ]
  %.pre-phi11202464 = phi i32* [ %.pre-phi11202463, %._crit_edge386 ], [ %.pre-phi11202465, %1081 ]
  %.pre-phi11212409 = phi i32* [ %.pre-phi11212408, %._crit_edge386 ], [ %.pre-phi11212410, %1081 ]
  %.pre-phi11222354 = phi i32* [ %.pre-phi11222353, %._crit_edge386 ], [ %.pre-phi11222355, %1081 ]
  %.pre-phi11232299 = phi i32* [ %.pre-phi11232298, %._crit_edge386 ], [ %.pre-phi11232300, %1081 ]
  %.pre-phi11242244 = phi i32* [ %.pre-phi11242243, %._crit_edge386 ], [ %.pre-phi11242245, %1081 ]
  %.pre-phi11252189 = phi i32* [ %.pre-phi11252188, %._crit_edge386 ], [ %.pre-phi11252190, %1081 ]
  %.pre-phi11262134 = phi i32* [ %.pre-phi11262133, %._crit_edge386 ], [ %.pre-phi11262135, %1081 ]
  %.pre-phi11272079 = phi i32* [ %.pre-phi11272078, %._crit_edge386 ], [ %.pre-phi11272080, %1081 ]
  %.pre-phi11282024 = phi i32* [ %.pre-phi11282023, %._crit_edge386 ], [ %.pre-phi11282025, %1081 ]
  %.pre-phi11291969 = phi i32* [ %.pre-phi11291968, %._crit_edge386 ], [ %.pre-phi11291970, %1081 ]
  %.pre-phi11301914 = phi i32* [ %.pre-phi11301913, %._crit_edge386 ], [ %.pre-phi11301915, %1081 ]
  %.pre-phi11311859 = phi i32* [ %.pre-phi11311858, %._crit_edge386 ], [ %.pre-phi11311860, %1081 ]
  %.pre-phi11321804 = phi i32* [ %.pre-phi11321803, %._crit_edge386 ], [ %.pre-phi11321805, %1081 ]
  %.pre-phi11331749 = phi i32* [ %.pre-phi11331748, %._crit_edge386 ], [ %.pre-phi11331750, %1081 ]
  %.pre-phi11341694 = phi i32* [ %.pre-phi11341693, %._crit_edge386 ], [ %.pre-phi11341695, %1081 ]
  %.pre-phi11351639 = phi i32* [ %.pre-phi11351638, %._crit_edge386 ], [ %.pre-phi11351640, %1081 ]
  %.pre-phi11361584 = phi i32* [ %.pre-phi11361583, %._crit_edge386 ], [ %.pre-phi11361585, %1081 ]
  %.pre-phi11371529 = phi i32* [ %.pre-phi11371528, %._crit_edge386 ], [ %.pre-phi11371530, %1081 ]
  %.pre-phi11381474 = phi i32* [ %.pre-phi11381473, %._crit_edge386 ], [ %.pre-phi11381475, %1081 ]
  %.pre-phi11391419 = phi i32* [ %.pre-phi11391418, %._crit_edge386 ], [ %.pre-phi11391420, %1081 ]
  %.pre-phi11401364 = phi i32** [ %.pre-phi11401363, %._crit_edge386 ], [ %.pre-phi11401365, %1081 ]
  %.pre-phi11411309 = phi i32** [ %.pre-phi11411308, %._crit_edge386 ], [ %.pre-phi11411310, %1081 ]
  %.pre-phi11421254 = phi i32** [ %.pre-phi11421253, %._crit_edge386 ], [ %.pre-phi11421255, %1081 ]
  %i.0 = phi i32 [ %1145, %._crit_edge386 ], [ 0, %1081 ]
  %1111 = icmp slt i32 %i.0, 16
  br i1 %1111, label %1112, label %.preheader131

.preheader131:                                    ; preds = %1087
  %scevgep736 = getelementptr %struct.DState* %s, i64 0, i32 28, i64 0
  call void @llvm.memset.p0i8.i64(i8* %scevgep736, i8 0, i64 256, i32 1, i1 false)
  br label %1170

; <label>:1112                                    ; preds = %1087, %34
  %1113 = phi i32 [ %.pre739, %34 ], [ %1088, %1087 ]
  %1114 = phi i32 [ %.pre741, %34 ], [ %1089, %1087 ]
  %1115 = phi i32 [ %.pre743, %34 ], [ %1090, %1087 ]
  %1116 = phi i32 [ %.pre745, %34 ], [ %1091, %1087 ]
  %1117 = phi i32 [ %.pre747, %34 ], [ %1092, %1087 ]
  %1118 = phi i32 [ %.pre749, %34 ], [ %1093, %1087 ]
  %1119 = phi i32 [ %.pre751, %34 ], [ %1094, %1087 ]
  %1120 = phi i32 [ %.pre753, %34 ], [ %1095, %1087 ]
  %1121 = phi i32 [ %.pre755, %34 ], [ %1096, %1087 ]
  %1122 = phi i32 [ %.pre757, %34 ], [ %1097, %1087 ]
  %1123 = phi i32 [ %.pre759, %34 ], [ %1098, %1087 ]
  %1124 = phi i32 [ %.pre761, %34 ], [ %1099, %1087 ]
  %1125 = phi i32 [ %.pre763, %34 ], [ %1100, %1087 ]
  %1126 = phi i32 [ %.pre765, %34 ], [ %1101, %1087 ]
  %1127 = phi i32 [ %.pre767, %34 ], [ %1102, %1087 ]
  %1128 = phi i32 [ %.pre769, %34 ], [ %1103, %1087 ]
  %1129 = phi i32 [ %.pre771, %34 ], [ %1104, %1087 ]
  %1130 = phi i32 [ %.pre773, %34 ], [ %1105, %1087 ]
  %1131 = phi i32 [ %.pre775, %34 ], [ %1106, %1087 ]
  %1132 = phi i32 [ %.pre777, %34 ], [ %1107, %1087 ]
  %1133 = phi i32* [ %.pre779, %34 ], [ %1108, %1087 ]
  %1134 = phi i32* [ %.pre781, %34 ], [ %1109, %1087 ]
  %1135 = phi i32* [ %.pre783, %34 ], [ %1110, %1087 ]
  %.pre-phi11202463 = phi i32* [ %.phi.trans.insert738, %34 ], [ %.pre-phi11202464, %1087 ]
  %.pre-phi11212408 = phi i32* [ %.phi.trans.insert740, %34 ], [ %.pre-phi11212409, %1087 ]
  %.pre-phi11222353 = phi i32* [ %.phi.trans.insert742, %34 ], [ %.pre-phi11222354, %1087 ]
  %.pre-phi11232298 = phi i32* [ %.phi.trans.insert744, %34 ], [ %.pre-phi11232299, %1087 ]
  %.pre-phi11242243 = phi i32* [ %.phi.trans.insert746, %34 ], [ %.pre-phi11242244, %1087 ]
  %.pre-phi11252188 = phi i32* [ %.phi.trans.insert748, %34 ], [ %.pre-phi11252189, %1087 ]
  %.pre-phi11262133 = phi i32* [ %.phi.trans.insert750, %34 ], [ %.pre-phi11262134, %1087 ]
  %.pre-phi11272078 = phi i32* [ %.phi.trans.insert752, %34 ], [ %.pre-phi11272079, %1087 ]
  %.pre-phi11282023 = phi i32* [ %.phi.trans.insert754, %34 ], [ %.pre-phi11282024, %1087 ]
  %.pre-phi11291968 = phi i32* [ %.phi.trans.insert756, %34 ], [ %.pre-phi11291969, %1087 ]
  %.pre-phi11301913 = phi i32* [ %.phi.trans.insert758, %34 ], [ %.pre-phi11301914, %1087 ]
  %.pre-phi11311858 = phi i32* [ %.phi.trans.insert760, %34 ], [ %.pre-phi11311859, %1087 ]
  %.pre-phi11321803 = phi i32* [ %.phi.trans.insert762, %34 ], [ %.pre-phi11321804, %1087 ]
  %.pre-phi11331748 = phi i32* [ %.phi.trans.insert764, %34 ], [ %.pre-phi11331749, %1087 ]
  %.pre-phi11341693 = phi i32* [ %.phi.trans.insert766, %34 ], [ %.pre-phi11341694, %1087 ]
  %.pre-phi11351638 = phi i32* [ %.phi.trans.insert768, %34 ], [ %.pre-phi11351639, %1087 ]
  %.pre-phi11361583 = phi i32* [ %.phi.trans.insert770, %34 ], [ %.pre-phi11361584, %1087 ]
  %.pre-phi11371528 = phi i32* [ %.phi.trans.insert772, %34 ], [ %.pre-phi11371529, %1087 ]
  %.pre-phi11381473 = phi i32* [ %.phi.trans.insert774, %34 ], [ %.pre-phi11381474, %1087 ]
  %.pre-phi11391418 = phi i32* [ %.phi.trans.insert776, %34 ], [ %.pre-phi11391419, %1087 ]
  %.pre-phi11401363 = phi i32** [ %.phi.trans.insert778, %34 ], [ %.pre-phi11401364, %1087 ]
  %.pre-phi11411308 = phi i32** [ %.phi.trans.insert780, %34 ], [ %.pre-phi11411309, %1087 ]
  %.pre-phi11421253 = phi i32** [ %.phi.trans.insert782, %34 ], [ %.pre-phi11421254, %1087 ]
  %i.1 = phi i32 [ %.pre, %34 ], [ %i.0, %1087 ]
  store i32 28, i32* %3, align 4, !tbaa !8
  %1136 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %1137 = load i32* %1136, align 4, !tbaa !9
  %1138 = icmp sgt i32 %1137, 0
  %.phi.trans.insert973 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1138, label %._crit_edge972, label %.lr.ph385

._crit_edge972:                                   ; preds = %1112
  %.pre974 = load i32* %.phi.trans.insert973, align 4, !tbaa !34
  br label %._crit_edge386

.lr.ph385:                                        ; preds = %1112
  %.pre971 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1100 = getelementptr inbounds %struct.bz_stream* %.pre971, i64 0, i32 1
  %.pre1101 = load i32* %.phi.trans.insert1100, align 4, !tbaa !35
  br label %1146

._crit_edge386:                                   ; preds = %.backedge80, %._crit_edge972
  %1139 = phi i32 [ %.pre974, %._crit_edge972 ], [ %1157, %.backedge80 ]
  %.lcssa206 = phi i32 [ %1137, %._crit_edge972 ], [ %1158, %.backedge80 ]
  %1140 = add nsw i32 %.lcssa206, -1
  store i32 %1140, i32* %1136, align 4, !tbaa !9
  %1141 = shl i32 1, %1140
  %1142 = and i32 %1139, %1141
  %1143 = sext i32 %i.1 to i64
  %1144 = getelementptr inbounds %struct.DState* %s, i64 0, i32 29, i64 %1143
  %not. = icmp ne i32 %1142, 0
  %. = zext i1 %not. to i8
  store i8 %., i8* %1144, align 1, !tbaa !38
  %1145 = add nsw i32 %i.1, 1
  br label %1087

; <label>:1146                                    ; preds = %.lr.ph385, %.backedge80
  %1147 = phi i32 [ %.pre1101, %.lr.ph385 ], [ %1160, %.backedge80 ]
  %1148 = phi i32 [ %1137, %.lr.ph385 ], [ %1158, %.backedge80 ]
  %1149 = icmp eq i32 %1147, 0
  br i1 %1149, label %.loopexit, label %1150

; <label>:1150                                    ; preds = %1146
  %1151 = load i32* %.phi.trans.insert973, align 4, !tbaa !34
  %1152 = shl i32 %1151, 8
  %1153 = getelementptr inbounds %struct.bz_stream* %.pre971, i64 0, i32 0
  %1154 = load i8** %1153, align 8, !tbaa !37
  %1155 = load i8* %1154, align 1, !tbaa !38
  %1156 = zext i8 %1155 to i32
  %1157 = or i32 %1156, %1152
  store i32 %1157, i32* %.phi.trans.insert973, align 4, !tbaa !34
  %1158 = add nsw i32 %1148, 8
  store i32 %1158, i32* %1136, align 4, !tbaa !9
  %1159 = getelementptr inbounds i8* %1154, i64 1
  store i8* %1159, i8** %1153, align 8, !tbaa !37
  %1160 = add i32 %1147, -1
  store i32 %1160, i32* %.phi.trans.insert1100, align 4, !tbaa !35
  %1161 = getelementptr inbounds %struct.bz_stream* %.pre971, i64 0, i32 2
  %1162 = load i32* %1161, align 4, !tbaa !39
  %1163 = add i32 %1162, 1
  store i32 %1163, i32* %1161, align 4, !tbaa !39
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1165, label %.backedge80

; <label>:1165                                    ; preds = %1150
  %1166 = getelementptr inbounds %struct.bz_stream* %.pre971, i64 0, i32 3
  %1167 = load i32* %1166, align 4, !tbaa !40
  %1168 = add i32 %1167, 1
  store i32 %1168, i32* %1166, align 4, !tbaa !40
  br label %.backedge80

.backedge80:                                      ; preds = %1165, %1150
  %1169 = icmp sgt i32 %1148, -8
  br i1 %1169, label %._crit_edge386, label %1146

; <label>:1170                                    ; preds = %.preheader131, %1285
  %1171 = phi i32 [ %1286, %1285 ], [ %1089, %.preheader131 ]
  %1172 = phi i32 [ %1287, %1285 ], [ %1090, %.preheader131 ]
  %1173 = phi i32 [ %1288, %1285 ], [ %1091, %.preheader131 ]
  %1174 = phi i32 [ %1289, %1285 ], [ %1092, %.preheader131 ]
  %1175 = phi i32 [ %1290, %1285 ], [ %1093, %.preheader131 ]
  %1176 = phi i32 [ %1291, %1285 ], [ %1094, %.preheader131 ]
  %1177 = phi i32 [ %1292, %1285 ], [ %1095, %.preheader131 ]
  %1178 = phi i32 [ %1293, %1285 ], [ %1096, %.preheader131 ]
  %1179 = phi i32 [ %1294, %1285 ], [ %1097, %.preheader131 ]
  %1180 = phi i32 [ %1295, %1285 ], [ %1098, %.preheader131 ]
  %1181 = phi i32 [ %1296, %1285 ], [ %1099, %.preheader131 ]
  %1182 = phi i32 [ %1297, %1285 ], [ %1100, %.preheader131 ]
  %1183 = phi i32 [ %1298, %1285 ], [ %1101, %.preheader131 ]
  %1184 = phi i32 [ %1299, %1285 ], [ %1102, %.preheader131 ]
  %1185 = phi i32 [ %1300, %1285 ], [ %1103, %.preheader131 ]
  %1186 = phi i32 [ %1301, %1285 ], [ %1104, %.preheader131 ]
  %1187 = phi i32 [ %1302, %1285 ], [ %1105, %.preheader131 ]
  %1188 = phi i32 [ %1303, %1285 ], [ %1106, %.preheader131 ]
  %1189 = phi i32 [ %1304, %1285 ], [ %1107, %.preheader131 ]
  %1190 = phi i32* [ %1305, %1285 ], [ %1108, %.preheader131 ]
  %1191 = phi i32* [ %1306, %1285 ], [ %1109, %.preheader131 ]
  %1192 = phi i32* [ %1307, %1285 ], [ %1110, %.preheader131 ]
  %.pre-phi11202462 = phi i32* [ %.pre-phi11202461, %1285 ], [ %.pre-phi11202464, %.preheader131 ]
  %.pre-phi11212407 = phi i32* [ %.pre-phi11212406, %1285 ], [ %.pre-phi11212409, %.preheader131 ]
  %.pre-phi11222352 = phi i32* [ %.pre-phi11222351, %1285 ], [ %.pre-phi11222354, %.preheader131 ]
  %.pre-phi11232297 = phi i32* [ %.pre-phi11232296, %1285 ], [ %.pre-phi11232299, %.preheader131 ]
  %.pre-phi11242242 = phi i32* [ %.pre-phi11242241, %1285 ], [ %.pre-phi11242244, %.preheader131 ]
  %.pre-phi11252187 = phi i32* [ %.pre-phi11252186, %1285 ], [ %.pre-phi11252189, %.preheader131 ]
  %.pre-phi11262132 = phi i32* [ %.pre-phi11262131, %1285 ], [ %.pre-phi11262134, %.preheader131 ]
  %.pre-phi11272077 = phi i32* [ %.pre-phi11272076, %1285 ], [ %.pre-phi11272079, %.preheader131 ]
  %.pre-phi11282022 = phi i32* [ %.pre-phi11282021, %1285 ], [ %.pre-phi11282024, %.preheader131 ]
  %.pre-phi11291967 = phi i32* [ %.pre-phi11291966, %1285 ], [ %.pre-phi11291969, %.preheader131 ]
  %.pre-phi11301912 = phi i32* [ %.pre-phi11301911, %1285 ], [ %.pre-phi11301914, %.preheader131 ]
  %.pre-phi11311857 = phi i32* [ %.pre-phi11311856, %1285 ], [ %.pre-phi11311859, %.preheader131 ]
  %.pre-phi11321802 = phi i32* [ %.pre-phi11321801, %1285 ], [ %.pre-phi11321804, %.preheader131 ]
  %.pre-phi11331747 = phi i32* [ %.pre-phi11331746, %1285 ], [ %.pre-phi11331749, %.preheader131 ]
  %.pre-phi11341692 = phi i32* [ %.pre-phi11341691, %1285 ], [ %.pre-phi11341694, %.preheader131 ]
  %.pre-phi11351637 = phi i32* [ %.pre-phi11351636, %1285 ], [ %.pre-phi11351639, %.preheader131 ]
  %.pre-phi11361582 = phi i32* [ %.pre-phi11361581, %1285 ], [ %.pre-phi11361584, %.preheader131 ]
  %.pre-phi11371527 = phi i32* [ %.pre-phi11371526, %1285 ], [ %.pre-phi11371529, %.preheader131 ]
  %.pre-phi11381472 = phi i32* [ %.pre-phi11381471, %1285 ], [ %.pre-phi11381474, %.preheader131 ]
  %.pre-phi11391417 = phi i32* [ %.pre-phi11391416, %1285 ], [ %.pre-phi11391419, %.preheader131 ]
  %.pre-phi11401362 = phi i32** [ %.pre-phi11401361, %1285 ], [ %.pre-phi11401364, %.preheader131 ]
  %.pre-phi11411307 = phi i32** [ %.pre-phi11411306, %1285 ], [ %.pre-phi11411309, %.preheader131 ]
  %.pre-phi11421252 = phi i32** [ %.pre-phi11421251, %1285 ], [ %.pre-phi11421254, %.preheader131 ]
  %j.0 = phi i32 [ %j.3, %1285 ], [ %1088, %.preheader131 ]
  %i.3 = phi i32 [ %1308, %1285 ], [ 0, %.preheader131 ]
  %1193 = icmp slt i32 %i.3, 16
  br i1 %1193, label %1194, label %1309

; <label>:1194                                    ; preds = %1170
  %1195 = sext i32 %i.3 to i64
  %1196 = getelementptr inbounds %struct.DState* %s, i64 0, i32 29, i64 %1195
  %1197 = load i8* %1196, align 1, !tbaa !38
  %1198 = icmp eq i8 %1197, 0
  br i1 %1198, label %1285, label %1199

; <label>:1199                                    ; preds = %1194, %1283
  %1200 = phi i32 [ %1224, %1283 ], [ %1171, %1194 ]
  %1201 = phi i32 [ %1225, %1283 ], [ %1172, %1194 ]
  %1202 = phi i32 [ %1226, %1283 ], [ %1173, %1194 ]
  %1203 = phi i32 [ %1227, %1283 ], [ %1174, %1194 ]
  %1204 = phi i32 [ %1228, %1283 ], [ %1175, %1194 ]
  %1205 = phi i32 [ %1229, %1283 ], [ %1176, %1194 ]
  %1206 = phi i32 [ %1230, %1283 ], [ %1177, %1194 ]
  %1207 = phi i32 [ %1231, %1283 ], [ %1178, %1194 ]
  %1208 = phi i32 [ %1232, %1283 ], [ %1179, %1194 ]
  %1209 = phi i32 [ %1233, %1283 ], [ %1180, %1194 ]
  %1210 = phi i32 [ %1234, %1283 ], [ %1181, %1194 ]
  %1211 = phi i32 [ %1235, %1283 ], [ %1182, %1194 ]
  %1212 = phi i32 [ %1236, %1283 ], [ %1183, %1194 ]
  %1213 = phi i32 [ %1237, %1283 ], [ %1184, %1194 ]
  %1214 = phi i32 [ %1238, %1283 ], [ %1185, %1194 ]
  %1215 = phi i32 [ %1239, %1283 ], [ %1186, %1194 ]
  %1216 = phi i32 [ %1240, %1283 ], [ %1187, %1194 ]
  %1217 = phi i32 [ %1241, %1283 ], [ %1188, %1194 ]
  %1218 = phi i32 [ %1242, %1283 ], [ %1189, %1194 ]
  %1219 = phi i32* [ %1243, %1283 ], [ %1190, %1194 ]
  %1220 = phi i32* [ %1244, %1283 ], [ %1191, %1194 ]
  %1221 = phi i32* [ %1245, %1283 ], [ %1192, %1194 ]
  %.pre-phi11202460 = phi i32* [ %.pre-phi11202459, %1283 ], [ %.pre-phi11202462, %1194 ]
  %.pre-phi11212405 = phi i32* [ %.pre-phi11212404, %1283 ], [ %.pre-phi11212407, %1194 ]
  %.pre-phi11222350 = phi i32* [ %.pre-phi11222349, %1283 ], [ %.pre-phi11222352, %1194 ]
  %.pre-phi11232295 = phi i32* [ %.pre-phi11232294, %1283 ], [ %.pre-phi11232297, %1194 ]
  %.pre-phi11242240 = phi i32* [ %.pre-phi11242239, %1283 ], [ %.pre-phi11242242, %1194 ]
  %.pre-phi11252185 = phi i32* [ %.pre-phi11252184, %1283 ], [ %.pre-phi11252187, %1194 ]
  %.pre-phi11262130 = phi i32* [ %.pre-phi11262129, %1283 ], [ %.pre-phi11262132, %1194 ]
  %.pre-phi11272075 = phi i32* [ %.pre-phi11272074, %1283 ], [ %.pre-phi11272077, %1194 ]
  %.pre-phi11282020 = phi i32* [ %.pre-phi11282019, %1283 ], [ %.pre-phi11282022, %1194 ]
  %.pre-phi11291965 = phi i32* [ %.pre-phi11291964, %1283 ], [ %.pre-phi11291967, %1194 ]
  %.pre-phi11301910 = phi i32* [ %.pre-phi11301909, %1283 ], [ %.pre-phi11301912, %1194 ]
  %.pre-phi11311855 = phi i32* [ %.pre-phi11311854, %1283 ], [ %.pre-phi11311857, %1194 ]
  %.pre-phi11321800 = phi i32* [ %.pre-phi11321799, %1283 ], [ %.pre-phi11321802, %1194 ]
  %.pre-phi11331745 = phi i32* [ %.pre-phi11331744, %1283 ], [ %.pre-phi11331747, %1194 ]
  %.pre-phi11341690 = phi i32* [ %.pre-phi11341689, %1283 ], [ %.pre-phi11341692, %1194 ]
  %.pre-phi11351635 = phi i32* [ %.pre-phi11351634, %1283 ], [ %.pre-phi11351637, %1194 ]
  %.pre-phi11361580 = phi i32* [ %.pre-phi11361579, %1283 ], [ %.pre-phi11361582, %1194 ]
  %.pre-phi11371525 = phi i32* [ %.pre-phi11371524, %1283 ], [ %.pre-phi11371527, %1194 ]
  %.pre-phi11381470 = phi i32* [ %.pre-phi11381469, %1283 ], [ %.pre-phi11381472, %1194 ]
  %.pre-phi11391415 = phi i32* [ %.pre-phi11391414, %1283 ], [ %.pre-phi11391417, %1194 ]
  %.pre-phi11401360 = phi i32** [ %.pre-phi11401359, %1283 ], [ %.pre-phi11401362, %1194 ]
  %.pre-phi11411305 = phi i32** [ %.pre-phi11411304, %1283 ], [ %.pre-phi11411307, %1194 ]
  %.pre-phi11421250 = phi i32** [ %.pre-phi11421249, %1283 ], [ %.pre-phi11421252, %1194 ]
  %j.1 = phi i32 [ %1284, %1283 ], [ 0, %1194 ]
  %i.4 = phi i32 [ %i.5, %1283 ], [ %i.3, %1194 ]
  %1222 = icmp slt i32 %j.1, 16
  br i1 %1222, label %1223, label %1285

; <label>:1223                                    ; preds = %1199, %34
  %1224 = phi i32 [ %.pre741, %34 ], [ %1200, %1199 ]
  %1225 = phi i32 [ %.pre743, %34 ], [ %1201, %1199 ]
  %1226 = phi i32 [ %.pre745, %34 ], [ %1202, %1199 ]
  %1227 = phi i32 [ %.pre747, %34 ], [ %1203, %1199 ]
  %1228 = phi i32 [ %.pre749, %34 ], [ %1204, %1199 ]
  %1229 = phi i32 [ %.pre751, %34 ], [ %1205, %1199 ]
  %1230 = phi i32 [ %.pre753, %34 ], [ %1206, %1199 ]
  %1231 = phi i32 [ %.pre755, %34 ], [ %1207, %1199 ]
  %1232 = phi i32 [ %.pre757, %34 ], [ %1208, %1199 ]
  %1233 = phi i32 [ %.pre759, %34 ], [ %1209, %1199 ]
  %1234 = phi i32 [ %.pre761, %34 ], [ %1210, %1199 ]
  %1235 = phi i32 [ %.pre763, %34 ], [ %1211, %1199 ]
  %1236 = phi i32 [ %.pre765, %34 ], [ %1212, %1199 ]
  %1237 = phi i32 [ %.pre767, %34 ], [ %1213, %1199 ]
  %1238 = phi i32 [ %.pre769, %34 ], [ %1214, %1199 ]
  %1239 = phi i32 [ %.pre771, %34 ], [ %1215, %1199 ]
  %1240 = phi i32 [ %.pre773, %34 ], [ %1216, %1199 ]
  %1241 = phi i32 [ %.pre775, %34 ], [ %1217, %1199 ]
  %1242 = phi i32 [ %.pre777, %34 ], [ %1218, %1199 ]
  %1243 = phi i32* [ %.pre779, %34 ], [ %1219, %1199 ]
  %1244 = phi i32* [ %.pre781, %34 ], [ %1220, %1199 ]
  %1245 = phi i32* [ %.pre783, %34 ], [ %1221, %1199 ]
  %.pre-phi11202459 = phi i32* [ %.phi.trans.insert738, %34 ], [ %.pre-phi11202460, %1199 ]
  %.pre-phi11212404 = phi i32* [ %.phi.trans.insert740, %34 ], [ %.pre-phi11212405, %1199 ]
  %.pre-phi11222349 = phi i32* [ %.phi.trans.insert742, %34 ], [ %.pre-phi11222350, %1199 ]
  %.pre-phi11232294 = phi i32* [ %.phi.trans.insert744, %34 ], [ %.pre-phi11232295, %1199 ]
  %.pre-phi11242239 = phi i32* [ %.phi.trans.insert746, %34 ], [ %.pre-phi11242240, %1199 ]
  %.pre-phi11252184 = phi i32* [ %.phi.trans.insert748, %34 ], [ %.pre-phi11252185, %1199 ]
  %.pre-phi11262129 = phi i32* [ %.phi.trans.insert750, %34 ], [ %.pre-phi11262130, %1199 ]
  %.pre-phi11272074 = phi i32* [ %.phi.trans.insert752, %34 ], [ %.pre-phi11272075, %1199 ]
  %.pre-phi11282019 = phi i32* [ %.phi.trans.insert754, %34 ], [ %.pre-phi11282020, %1199 ]
  %.pre-phi11291964 = phi i32* [ %.phi.trans.insert756, %34 ], [ %.pre-phi11291965, %1199 ]
  %.pre-phi11301909 = phi i32* [ %.phi.trans.insert758, %34 ], [ %.pre-phi11301910, %1199 ]
  %.pre-phi11311854 = phi i32* [ %.phi.trans.insert760, %34 ], [ %.pre-phi11311855, %1199 ]
  %.pre-phi11321799 = phi i32* [ %.phi.trans.insert762, %34 ], [ %.pre-phi11321800, %1199 ]
  %.pre-phi11331744 = phi i32* [ %.phi.trans.insert764, %34 ], [ %.pre-phi11331745, %1199 ]
  %.pre-phi11341689 = phi i32* [ %.phi.trans.insert766, %34 ], [ %.pre-phi11341690, %1199 ]
  %.pre-phi11351634 = phi i32* [ %.phi.trans.insert768, %34 ], [ %.pre-phi11351635, %1199 ]
  %.pre-phi11361579 = phi i32* [ %.phi.trans.insert770, %34 ], [ %.pre-phi11361580, %1199 ]
  %.pre-phi11371524 = phi i32* [ %.phi.trans.insert772, %34 ], [ %.pre-phi11371525, %1199 ]
  %.pre-phi11381469 = phi i32* [ %.phi.trans.insert774, %34 ], [ %.pre-phi11381470, %1199 ]
  %.pre-phi11391414 = phi i32* [ %.phi.trans.insert776, %34 ], [ %.pre-phi11391415, %1199 ]
  %.pre-phi11401359 = phi i32** [ %.phi.trans.insert778, %34 ], [ %.pre-phi11401360, %1199 ]
  %.pre-phi11411304 = phi i32** [ %.phi.trans.insert780, %34 ], [ %.pre-phi11411305, %1199 ]
  %.pre-phi11421249 = phi i32** [ %.phi.trans.insert782, %34 ], [ %.pre-phi11421250, %1199 ]
  %j.2 = phi i32 [ %.pre739, %34 ], [ %j.1, %1199 ]
  %i.5 = phi i32 [ %.pre, %34 ], [ %i.4, %1199 ]
  store i32 29, i32* %3, align 4, !tbaa !8
  %1246 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %1247 = load i32* %1246, align 4, !tbaa !9
  %1248 = icmp sgt i32 %1247, 0
  %.phi.trans.insert969 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1248, label %._crit_edge968, label %.lr.ph390

._crit_edge968:                                   ; preds = %1223
  %.pre970 = load i32* %.phi.trans.insert969, align 4, !tbaa !34
  br label %._crit_edge391

.lr.ph390:                                        ; preds = %1223
  %.pre967 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1098 = getelementptr inbounds %struct.bz_stream* %.pre967, i64 0, i32 1
  %.pre1099 = load i32* %.phi.trans.insert1098, align 4, !tbaa !35
  br label %1254

._crit_edge391:                                   ; preds = %.backedge82, %._crit_edge968
  %1249 = phi i32 [ %.pre970, %._crit_edge968 ], [ %1265, %.backedge82 ]
  %.lcssa210 = phi i32 [ %1247, %._crit_edge968 ], [ %1266, %.backedge82 ]
  %1250 = add nsw i32 %.lcssa210, -1
  store i32 %1250, i32* %1246, align 4, !tbaa !9
  %1251 = shl i32 1, %1250
  %1252 = and i32 %1249, %1251
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %1283, label %1278

; <label>:1254                                    ; preds = %.lr.ph390, %.backedge82
  %1255 = phi i32 [ %.pre1099, %.lr.ph390 ], [ %1268, %.backedge82 ]
  %1256 = phi i32 [ %1247, %.lr.ph390 ], [ %1266, %.backedge82 ]
  %1257 = icmp eq i32 %1255, 0
  br i1 %1257, label %.loopexit, label %1258

; <label>:1258                                    ; preds = %1254
  %1259 = load i32* %.phi.trans.insert969, align 4, !tbaa !34
  %1260 = shl i32 %1259, 8
  %1261 = getelementptr inbounds %struct.bz_stream* %.pre967, i64 0, i32 0
  %1262 = load i8** %1261, align 8, !tbaa !37
  %1263 = load i8* %1262, align 1, !tbaa !38
  %1264 = zext i8 %1263 to i32
  %1265 = or i32 %1264, %1260
  store i32 %1265, i32* %.phi.trans.insert969, align 4, !tbaa !34
  %1266 = add nsw i32 %1256, 8
  store i32 %1266, i32* %1246, align 4, !tbaa !9
  %1267 = getelementptr inbounds i8* %1262, i64 1
  store i8* %1267, i8** %1261, align 8, !tbaa !37
  %1268 = add i32 %1255, -1
  store i32 %1268, i32* %.phi.trans.insert1098, align 4, !tbaa !35
  %1269 = getelementptr inbounds %struct.bz_stream* %.pre967, i64 0, i32 2
  %1270 = load i32* %1269, align 4, !tbaa !39
  %1271 = add i32 %1270, 1
  store i32 %1271, i32* %1269, align 4, !tbaa !39
  %1272 = icmp eq i32 %1271, 0
  br i1 %1272, label %1273, label %.backedge82

; <label>:1273                                    ; preds = %1258
  %1274 = getelementptr inbounds %struct.bz_stream* %.pre967, i64 0, i32 3
  %1275 = load i32* %1274, align 4, !tbaa !40
  %1276 = add i32 %1275, 1
  store i32 %1276, i32* %1274, align 4, !tbaa !40
  br label %.backedge82

.backedge82:                                      ; preds = %1273, %1258
  %1277 = icmp sgt i32 %1256, -8
  br i1 %1277, label %._crit_edge391, label %1254

; <label>:1278                                    ; preds = %._crit_edge391
  %1279 = shl i32 %i.5, 4
  %1280 = add nsw i32 %1279, %j.2
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds %struct.DState* %s, i64 0, i32 28, i64 %1281
  store i8 1, i8* %1282, align 1, !tbaa !38
  br label %1283

; <label>:1283                                    ; preds = %._crit_edge391, %1278
  %1284 = add nsw i32 %j.2, 1
  br label %1199

; <label>:1285                                    ; preds = %1194, %1199
  %1286 = phi i32 [ %1200, %1199 ], [ %1171, %1194 ]
  %1287 = phi i32 [ %1201, %1199 ], [ %1172, %1194 ]
  %1288 = phi i32 [ %1202, %1199 ], [ %1173, %1194 ]
  %1289 = phi i32 [ %1203, %1199 ], [ %1174, %1194 ]
  %1290 = phi i32 [ %1204, %1199 ], [ %1175, %1194 ]
  %1291 = phi i32 [ %1205, %1199 ], [ %1176, %1194 ]
  %1292 = phi i32 [ %1206, %1199 ], [ %1177, %1194 ]
  %1293 = phi i32 [ %1207, %1199 ], [ %1178, %1194 ]
  %1294 = phi i32 [ %1208, %1199 ], [ %1179, %1194 ]
  %1295 = phi i32 [ %1209, %1199 ], [ %1180, %1194 ]
  %1296 = phi i32 [ %1210, %1199 ], [ %1181, %1194 ]
  %1297 = phi i32 [ %1211, %1199 ], [ %1182, %1194 ]
  %1298 = phi i32 [ %1212, %1199 ], [ %1183, %1194 ]
  %1299 = phi i32 [ %1213, %1199 ], [ %1184, %1194 ]
  %1300 = phi i32 [ %1214, %1199 ], [ %1185, %1194 ]
  %1301 = phi i32 [ %1215, %1199 ], [ %1186, %1194 ]
  %1302 = phi i32 [ %1216, %1199 ], [ %1187, %1194 ]
  %1303 = phi i32 [ %1217, %1199 ], [ %1188, %1194 ]
  %1304 = phi i32 [ %1218, %1199 ], [ %1189, %1194 ]
  %1305 = phi i32* [ %1219, %1199 ], [ %1190, %1194 ]
  %1306 = phi i32* [ %1220, %1199 ], [ %1191, %1194 ]
  %1307 = phi i32* [ %1221, %1199 ], [ %1192, %1194 ]
  %.pre-phi11202461 = phi i32* [ %.pre-phi11202460, %1199 ], [ %.pre-phi11202462, %1194 ]
  %.pre-phi11212406 = phi i32* [ %.pre-phi11212405, %1199 ], [ %.pre-phi11212407, %1194 ]
  %.pre-phi11222351 = phi i32* [ %.pre-phi11222350, %1199 ], [ %.pre-phi11222352, %1194 ]
  %.pre-phi11232296 = phi i32* [ %.pre-phi11232295, %1199 ], [ %.pre-phi11232297, %1194 ]
  %.pre-phi11242241 = phi i32* [ %.pre-phi11242240, %1199 ], [ %.pre-phi11242242, %1194 ]
  %.pre-phi11252186 = phi i32* [ %.pre-phi11252185, %1199 ], [ %.pre-phi11252187, %1194 ]
  %.pre-phi11262131 = phi i32* [ %.pre-phi11262130, %1199 ], [ %.pre-phi11262132, %1194 ]
  %.pre-phi11272076 = phi i32* [ %.pre-phi11272075, %1199 ], [ %.pre-phi11272077, %1194 ]
  %.pre-phi11282021 = phi i32* [ %.pre-phi11282020, %1199 ], [ %.pre-phi11282022, %1194 ]
  %.pre-phi11291966 = phi i32* [ %.pre-phi11291965, %1199 ], [ %.pre-phi11291967, %1194 ]
  %.pre-phi11301911 = phi i32* [ %.pre-phi11301910, %1199 ], [ %.pre-phi11301912, %1194 ]
  %.pre-phi11311856 = phi i32* [ %.pre-phi11311855, %1199 ], [ %.pre-phi11311857, %1194 ]
  %.pre-phi11321801 = phi i32* [ %.pre-phi11321800, %1199 ], [ %.pre-phi11321802, %1194 ]
  %.pre-phi11331746 = phi i32* [ %.pre-phi11331745, %1199 ], [ %.pre-phi11331747, %1194 ]
  %.pre-phi11341691 = phi i32* [ %.pre-phi11341690, %1199 ], [ %.pre-phi11341692, %1194 ]
  %.pre-phi11351636 = phi i32* [ %.pre-phi11351635, %1199 ], [ %.pre-phi11351637, %1194 ]
  %.pre-phi11361581 = phi i32* [ %.pre-phi11361580, %1199 ], [ %.pre-phi11361582, %1194 ]
  %.pre-phi11371526 = phi i32* [ %.pre-phi11371525, %1199 ], [ %.pre-phi11371527, %1194 ]
  %.pre-phi11381471 = phi i32* [ %.pre-phi11381470, %1199 ], [ %.pre-phi11381472, %1194 ]
  %.pre-phi11391416 = phi i32* [ %.pre-phi11391415, %1199 ], [ %.pre-phi11391417, %1194 ]
  %.pre-phi11401361 = phi i32** [ %.pre-phi11401360, %1199 ], [ %.pre-phi11401362, %1194 ]
  %.pre-phi11411306 = phi i32** [ %.pre-phi11411305, %1199 ], [ %.pre-phi11411307, %1194 ]
  %.pre-phi11421251 = phi i32** [ %.pre-phi11421250, %1199 ], [ %.pre-phi11421252, %1194 ]
  %j.3 = phi i32 [ %j.1, %1199 ], [ %j.0, %1194 ]
  %i.6 = phi i32 [ %i.4, %1199 ], [ %i.3, %1194 ]
  %1308 = add nsw i32 %i.6, 1
  br label %1170

; <label>:1309                                    ; preds = %1170
  %1310 = getelementptr inbounds %struct.DState* %s, i64 0, i32 27
  store i32 0, i32* %1310, align 4, !tbaa !54
  br label %1311

; <label>:1311                                    ; preds = %1322, %1309
  %1312 = phi i32 [ 0, %1309 ], [ %1323, %1322 ]
  %indvars.iv.i = phi i64 [ 0, %1309 ], [ %indvars.iv.next.i, %1322 ]
  %1313 = getelementptr inbounds %struct.DState* %s, i64 0, i32 28, i64 %indvars.iv.i
  %1314 = load i8* %1313, align 1, !tbaa !38
  %1315 = icmp eq i8 %1314, 0
  br i1 %1315, label %1322, label %1316

; <label>:1316                                    ; preds = %1311
  %1317 = trunc i64 %indvars.iv.i to i8
  %1318 = sext i32 %1312 to i64
  %1319 = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %1318
  store i8 %1317, i8* %1319, align 1, !tbaa !38
  %1320 = load i32* %1310, align 4, !tbaa !54
  %1321 = add nsw i32 %1320, 1
  store i32 %1321, i32* %1310, align 4, !tbaa !54
  br label %1322

; <label>:1322                                    ; preds = %1316, %1311
  %1323 = phi i32 [ %1312, %1311 ], [ %1321, %1316 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.i, label %makeMaps_d.exit, label %1311

makeMaps_d.exit:                                  ; preds = %1322
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %.loopexit, label %1325

; <label>:1325                                    ; preds = %makeMaps_d.exit
  %1326 = add nsw i32 %1323, 2
  br label %1327

; <label>:1327                                    ; preds = %34, %1325
  %1328 = phi i32 [ %.pre741, %34 ], [ %1171, %1325 ]
  %1329 = phi i32 [ %.pre745, %34 ], [ %1173, %1325 ]
  %1330 = phi i32 [ %.pre747, %34 ], [ %1174, %1325 ]
  %1331 = phi i32 [ %.pre749, %34 ], [ %1175, %1325 ]
  %1332 = phi i32 [ %.pre751, %34 ], [ %1176, %1325 ]
  %1333 = phi i32 [ %.pre753, %34 ], [ %1177, %1325 ]
  %1334 = phi i32 [ %.pre755, %34 ], [ %1178, %1325 ]
  %1335 = phi i32 [ %.pre757, %34 ], [ %1179, %1325 ]
  %1336 = phi i32 [ %.pre759, %34 ], [ %1180, %1325 ]
  %1337 = phi i32 [ %.pre761, %34 ], [ %1181, %1325 ]
  %1338 = phi i32 [ %.pre763, %34 ], [ %1182, %1325 ]
  %1339 = phi i32 [ %.pre765, %34 ], [ %1183, %1325 ]
  %1340 = phi i32 [ %.pre767, %34 ], [ %1184, %1325 ]
  %1341 = phi i32 [ %.pre769, %34 ], [ %1185, %1325 ]
  %1342 = phi i32 [ %.pre771, %34 ], [ %1186, %1325 ]
  %1343 = phi i32 [ %.pre773, %34 ], [ %1187, %1325 ]
  %1344 = phi i32 [ %.pre775, %34 ], [ %1188, %1325 ]
  %1345 = phi i32 [ %.pre777, %34 ], [ %1189, %1325 ]
  %1346 = phi i32* [ %.pre779, %34 ], [ %1190, %1325 ]
  %1347 = phi i32* [ %.pre781, %34 ], [ %1191, %1325 ]
  %1348 = phi i32* [ %.pre783, %34 ], [ %1192, %1325 ]
  %.pre-phi11202458 = phi i32* [ %.phi.trans.insert738, %34 ], [ %.pre-phi11202462, %1325 ]
  %.pre-phi11212403 = phi i32* [ %.phi.trans.insert740, %34 ], [ %.pre-phi11212407, %1325 ]
  %.pre-phi11222348 = phi i32* [ %.phi.trans.insert742, %34 ], [ %.pre-phi11222352, %1325 ]
  %.pre-phi11232293 = phi i32* [ %.phi.trans.insert744, %34 ], [ %.pre-phi11232297, %1325 ]
  %.pre-phi11242238 = phi i32* [ %.phi.trans.insert746, %34 ], [ %.pre-phi11242242, %1325 ]
  %.pre-phi11252183 = phi i32* [ %.phi.trans.insert748, %34 ], [ %.pre-phi11252187, %1325 ]
  %.pre-phi11262128 = phi i32* [ %.phi.trans.insert750, %34 ], [ %.pre-phi11262132, %1325 ]
  %.pre-phi11272073 = phi i32* [ %.phi.trans.insert752, %34 ], [ %.pre-phi11272077, %1325 ]
  %.pre-phi11282018 = phi i32* [ %.phi.trans.insert754, %34 ], [ %.pre-phi11282022, %1325 ]
  %.pre-phi11291963 = phi i32* [ %.phi.trans.insert756, %34 ], [ %.pre-phi11291967, %1325 ]
  %.pre-phi11301908 = phi i32* [ %.phi.trans.insert758, %34 ], [ %.pre-phi11301912, %1325 ]
  %.pre-phi11311853 = phi i32* [ %.phi.trans.insert760, %34 ], [ %.pre-phi11311857, %1325 ]
  %.pre-phi11321798 = phi i32* [ %.phi.trans.insert762, %34 ], [ %.pre-phi11321802, %1325 ]
  %.pre-phi11331743 = phi i32* [ %.phi.trans.insert764, %34 ], [ %.pre-phi11331747, %1325 ]
  %.pre-phi11341688 = phi i32* [ %.phi.trans.insert766, %34 ], [ %.pre-phi11341692, %1325 ]
  %.pre-phi11351633 = phi i32* [ %.phi.trans.insert768, %34 ], [ %.pre-phi11351637, %1325 ]
  %.pre-phi11361578 = phi i32* [ %.phi.trans.insert770, %34 ], [ %.pre-phi11361582, %1325 ]
  %.pre-phi11371523 = phi i32* [ %.phi.trans.insert772, %34 ], [ %.pre-phi11371527, %1325 ]
  %.pre-phi11381468 = phi i32* [ %.phi.trans.insert774, %34 ], [ %.pre-phi11381472, %1325 ]
  %.pre-phi11391413 = phi i32* [ %.phi.trans.insert776, %34 ], [ %.pre-phi11391417, %1325 ]
  %.pre-phi11401358 = phi i32** [ %.phi.trans.insert778, %34 ], [ %.pre-phi11401362, %1325 ]
  %.pre-phi11411303 = phi i32** [ %.phi.trans.insert780, %34 ], [ %.pre-phi11411307, %1325 ]
  %.pre-phi11421248 = phi i32** [ %.phi.trans.insert782, %34 ], [ %.pre-phi11421252, %1325 ]
  %alphaSize.0 = phi i32 [ %.pre743, %34 ], [ %1326, %1325 ]
  %j.4 = phi i32 [ %.pre739, %34 ], [ %j.0, %1325 ]
  %i.7 = phi i32 [ %.pre, %34 ], [ %i.3, %1325 ]
  store i32 30, i32* %3, align 4, !tbaa !8
  %1349 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %1350 = load i32* %1349, align 4, !tbaa !9
  %1351 = icmp sgt i32 %1350, 2
  %.phi.trans.insert899 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1351, label %._crit_edge898, label %.lr.ph515

._crit_edge898:                                   ; preds = %1327
  %.pre900 = load i32* %.phi.trans.insert899, align 4, !tbaa !34
  br label %._crit_edge516

.lr.ph515:                                        ; preds = %1327
  %.pre897 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1074 = getelementptr inbounds %struct.bz_stream* %.pre897, i64 0, i32 1
  %.pre1075 = load i32* %.phi.trans.insert1074, align 4, !tbaa !35
  br label %1356

._crit_edge516:                                   ; preds = %.backedge130, %._crit_edge898
  %1352 = phi i32 [ %.pre900, %._crit_edge898 ], [ %1367, %.backedge130 ]
  %.lcssa269 = phi i32 [ %1350, %._crit_edge898 ], [ %1368, %.backedge130 ]
  %1353 = add nsw i32 %.lcssa269, -3
  %1354 = lshr i32 %1352, %1353
  %1355 = and i32 %1354, 7
  store i32 %1353, i32* %1349, align 4, !tbaa !9
  switch i32 %1355, label %1380 [
    i32 7, label %.loopexit
    i32 1, label %.loopexit
    i32 0, label %.loopexit
  ]

; <label>:1356                                    ; preds = %.lr.ph515, %.backedge130
  %1357 = phi i32 [ %.pre1075, %.lr.ph515 ], [ %1370, %.backedge130 ]
  %1358 = phi i32 [ %1350, %.lr.ph515 ], [ %1368, %.backedge130 ]
  %1359 = icmp eq i32 %1357, 0
  br i1 %1359, label %.loopexit, label %1360

; <label>:1360                                    ; preds = %1356
  %1361 = load i32* %.phi.trans.insert899, align 4, !tbaa !34
  %1362 = shl i32 %1361, 8
  %1363 = getelementptr inbounds %struct.bz_stream* %.pre897, i64 0, i32 0
  %1364 = load i8** %1363, align 8, !tbaa !37
  %1365 = load i8* %1364, align 1, !tbaa !38
  %1366 = zext i8 %1365 to i32
  %1367 = or i32 %1366, %1362
  store i32 %1367, i32* %.phi.trans.insert899, align 4, !tbaa !34
  %1368 = add nsw i32 %1358, 8
  store i32 %1368, i32* %1349, align 4, !tbaa !9
  %1369 = getelementptr inbounds i8* %1364, i64 1
  store i8* %1369, i8** %1363, align 8, !tbaa !37
  %1370 = add i32 %1357, -1
  store i32 %1370, i32* %.phi.trans.insert1074, align 4, !tbaa !35
  %1371 = getelementptr inbounds %struct.bz_stream* %.pre897, i64 0, i32 2
  %1372 = load i32* %1371, align 4, !tbaa !39
  %1373 = add i32 %1372, 1
  store i32 %1373, i32* %1371, align 4, !tbaa !39
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1375, label %.backedge130

; <label>:1375                                    ; preds = %1360
  %1376 = getelementptr inbounds %struct.bz_stream* %.pre897, i64 0, i32 3
  %1377 = load i32* %1376, align 4, !tbaa !40
  %1378 = add i32 %1377, 1
  store i32 %1378, i32* %1376, align 4, !tbaa !40
  br label %.backedge130

.backedge130:                                     ; preds = %1375, %1360
  %1379 = icmp sgt i32 %1368, 2
  br i1 %1379, label %._crit_edge516, label %1356

; <label>:1380                                    ; preds = %._crit_edge901, %._crit_edge516
  %1381 = phi i32 [ %.pre741, %._crit_edge901 ], [ %1328, %._crit_edge516 ]
  %1382 = phi i32 [ %.pre747, %._crit_edge901 ], [ %1330, %._crit_edge516 ]
  %1383 = phi i32 [ %.pre749, %._crit_edge901 ], [ %1331, %._crit_edge516 ]
  %1384 = phi i32 [ %.pre751, %._crit_edge901 ], [ %1332, %._crit_edge516 ]
  %1385 = phi i32 [ %.pre753, %._crit_edge901 ], [ %1333, %._crit_edge516 ]
  %1386 = phi i32 [ %.pre755, %._crit_edge901 ], [ %1334, %._crit_edge516 ]
  %1387 = phi i32 [ %.pre757, %._crit_edge901 ], [ %1335, %._crit_edge516 ]
  %1388 = phi i32 [ %.pre759, %._crit_edge901 ], [ %1336, %._crit_edge516 ]
  %1389 = phi i32 [ %.pre761, %._crit_edge901 ], [ %1337, %._crit_edge516 ]
  %1390 = phi i32 [ %.pre763, %._crit_edge901 ], [ %1338, %._crit_edge516 ]
  %1391 = phi i32 [ %.pre765, %._crit_edge901 ], [ %1339, %._crit_edge516 ]
  %1392 = phi i32 [ %.pre767, %._crit_edge901 ], [ %1340, %._crit_edge516 ]
  %1393 = phi i32 [ %.pre769, %._crit_edge901 ], [ %1341, %._crit_edge516 ]
  %1394 = phi i32 [ %.pre771, %._crit_edge901 ], [ %1342, %._crit_edge516 ]
  %1395 = phi i32 [ %.pre773, %._crit_edge901 ], [ %1343, %._crit_edge516 ]
  %1396 = phi i32 [ %.pre775, %._crit_edge901 ], [ %1344, %._crit_edge516 ]
  %1397 = phi i32 [ %.pre777, %._crit_edge901 ], [ %1345, %._crit_edge516 ]
  %1398 = phi i32* [ %.pre779, %._crit_edge901 ], [ %1346, %._crit_edge516 ]
  %1399 = phi i32* [ %.pre781, %._crit_edge901 ], [ %1347, %._crit_edge516 ]
  %1400 = phi i32* [ %.pre783, %._crit_edge901 ], [ %1348, %._crit_edge516 ]
  %.pre-phi11202457 = phi i32* [ %.phi.trans.insert738, %._crit_edge901 ], [ %.pre-phi11202458, %._crit_edge516 ]
  %.pre-phi11212402 = phi i32* [ %.phi.trans.insert740, %._crit_edge901 ], [ %.pre-phi11212403, %._crit_edge516 ]
  %.pre-phi11222347 = phi i32* [ %.phi.trans.insert742, %._crit_edge901 ], [ %.pre-phi11222348, %._crit_edge516 ]
  %.pre-phi11232292 = phi i32* [ %.phi.trans.insert744, %._crit_edge901 ], [ %.pre-phi11232293, %._crit_edge516 ]
  %.pre-phi11242237 = phi i32* [ %.phi.trans.insert746, %._crit_edge901 ], [ %.pre-phi11242238, %._crit_edge516 ]
  %.pre-phi11252182 = phi i32* [ %.phi.trans.insert748, %._crit_edge901 ], [ %.pre-phi11252183, %._crit_edge516 ]
  %.pre-phi11262127 = phi i32* [ %.phi.trans.insert750, %._crit_edge901 ], [ %.pre-phi11262128, %._crit_edge516 ]
  %.pre-phi11272072 = phi i32* [ %.phi.trans.insert752, %._crit_edge901 ], [ %.pre-phi11272073, %._crit_edge516 ]
  %.pre-phi11282017 = phi i32* [ %.phi.trans.insert754, %._crit_edge901 ], [ %.pre-phi11282018, %._crit_edge516 ]
  %.pre-phi11291962 = phi i32* [ %.phi.trans.insert756, %._crit_edge901 ], [ %.pre-phi11291963, %._crit_edge516 ]
  %.pre-phi11301907 = phi i32* [ %.phi.trans.insert758, %._crit_edge901 ], [ %.pre-phi11301908, %._crit_edge516 ]
  %.pre-phi11311852 = phi i32* [ %.phi.trans.insert760, %._crit_edge901 ], [ %.pre-phi11311853, %._crit_edge516 ]
  %.pre-phi11321797 = phi i32* [ %.phi.trans.insert762, %._crit_edge901 ], [ %.pre-phi11321798, %._crit_edge516 ]
  %.pre-phi11331742 = phi i32* [ %.phi.trans.insert764, %._crit_edge901 ], [ %.pre-phi11331743, %._crit_edge516 ]
  %.pre-phi11341687 = phi i32* [ %.phi.trans.insert766, %._crit_edge901 ], [ %.pre-phi11341688, %._crit_edge516 ]
  %.pre-phi11351632 = phi i32* [ %.phi.trans.insert768, %._crit_edge901 ], [ %.pre-phi11351633, %._crit_edge516 ]
  %.pre-phi11361577 = phi i32* [ %.phi.trans.insert770, %._crit_edge901 ], [ %.pre-phi11361578, %._crit_edge516 ]
  %.pre-phi11371522 = phi i32* [ %.phi.trans.insert772, %._crit_edge901 ], [ %.pre-phi11371523, %._crit_edge516 ]
  %.pre-phi11381467 = phi i32* [ %.phi.trans.insert774, %._crit_edge901 ], [ %.pre-phi11381468, %._crit_edge516 ]
  %.pre-phi11391412 = phi i32* [ %.phi.trans.insert776, %._crit_edge901 ], [ %.pre-phi11391413, %._crit_edge516 ]
  %.pre-phi11401357 = phi i32** [ %.phi.trans.insert778, %._crit_edge901 ], [ %.pre-phi11401358, %._crit_edge516 ]
  %.pre-phi11411302 = phi i32** [ %.phi.trans.insert780, %._crit_edge901 ], [ %.pre-phi11411303, %._crit_edge516 ]
  %.pre-phi11421247 = phi i32** [ %.phi.trans.insert782, %._crit_edge901 ], [ %.pre-phi11421248, %._crit_edge516 ]
  %.pre-phi1197 = phi i32* [ %.phi.trans.insert902, %._crit_edge901 ], [ %1349, %._crit_edge516 ]
  %1401 = phi i32 [ %.pre903, %._crit_edge901 ], [ %1353, %._crit_edge516 ]
  %nGroups.0 = phi i32 [ %.pre745, %._crit_edge901 ], [ %1355, %._crit_edge516 ]
  %alphaSize.1 = phi i32 [ %.pre743, %._crit_edge901 ], [ %alphaSize.0, %._crit_edge516 ]
  %j.5 = phi i32 [ %.pre739, %._crit_edge901 ], [ %j.4, %._crit_edge516 ]
  %i.8 = phi i32 [ %.pre, %._crit_edge901 ], [ %i.7, %._crit_edge516 ]
  store i32 31, i32* %3, align 4, !tbaa !8
  %1402 = icmp sgt i32 %1401, 14
  %.phi.trans.insert906 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1402, label %._crit_edge905, label %.lr.ph510

._crit_edge905:                                   ; preds = %1380
  %.pre907 = load i32* %.phi.trans.insert906, align 4, !tbaa !34
  br label %._crit_edge511

.lr.ph510:                                        ; preds = %1380
  %.pre904 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1076 = getelementptr inbounds %struct.bz_stream* %.pre904, i64 0, i32 1
  %.pre1077 = load i32* %.phi.trans.insert1076, align 4, !tbaa !35
  br label %1408

._crit_edge511:                                   ; preds = %.backedge128, %._crit_edge905
  %1403 = phi i32 [ %.pre907, %._crit_edge905 ], [ %1419, %.backedge128 ]
  %.lcssa265 = phi i32 [ %1401, %._crit_edge905 ], [ %1420, %.backedge128 ]
  %1404 = add nsw i32 %.lcssa265, -15
  %1405 = lshr i32 %1403, %1404
  %1406 = and i32 %1405, 32767
  store i32 %1404, i32* %.pre-phi1197, align 4, !tbaa !9
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %.loopexit, label %1432

; <label>:1408                                    ; preds = %.lr.ph510, %.backedge128
  %1409 = phi i32 [ %.pre1077, %.lr.ph510 ], [ %1422, %.backedge128 ]
  %1410 = phi i32 [ %1401, %.lr.ph510 ], [ %1420, %.backedge128 ]
  %1411 = icmp eq i32 %1409, 0
  br i1 %1411, label %.loopexit, label %1412

; <label>:1412                                    ; preds = %1408
  %1413 = load i32* %.phi.trans.insert906, align 4, !tbaa !34
  %1414 = shl i32 %1413, 8
  %1415 = getelementptr inbounds %struct.bz_stream* %.pre904, i64 0, i32 0
  %1416 = load i8** %1415, align 8, !tbaa !37
  %1417 = load i8* %1416, align 1, !tbaa !38
  %1418 = zext i8 %1417 to i32
  %1419 = or i32 %1418, %1414
  store i32 %1419, i32* %.phi.trans.insert906, align 4, !tbaa !34
  %1420 = add nsw i32 %1410, 8
  store i32 %1420, i32* %.pre-phi1197, align 4, !tbaa !9
  %1421 = getelementptr inbounds i8* %1416, i64 1
  store i8* %1421, i8** %1415, align 8, !tbaa !37
  %1422 = add i32 %1409, -1
  store i32 %1422, i32* %.phi.trans.insert1076, align 4, !tbaa !35
  %1423 = getelementptr inbounds %struct.bz_stream* %.pre904, i64 0, i32 2
  %1424 = load i32* %1423, align 4, !tbaa !39
  %1425 = add i32 %1424, 1
  store i32 %1425, i32* %1423, align 4, !tbaa !39
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1427, label %.backedge128

; <label>:1427                                    ; preds = %1412
  %1428 = getelementptr inbounds %struct.bz_stream* %.pre904, i64 0, i32 3
  %1429 = load i32* %1428, align 4, !tbaa !40
  %1430 = add i32 %1429, 1
  store i32 %1430, i32* %1428, align 4, !tbaa !40
  br label %.backedge128

.backedge128:                                     ; preds = %1427, %1412
  %1431 = icmp sgt i32 %1420, 14
  br i1 %1431, label %._crit_edge511, label %1408

; <label>:1432                                    ; preds = %._crit_edge511, %1510
  %1433 = phi i32 [ %1454, %1510 ], [ %1381, %._crit_edge511 ]
  %1434 = phi i32 [ %1455, %1510 ], [ %1383, %._crit_edge511 ]
  %1435 = phi i32 [ %1456, %1510 ], [ %1384, %._crit_edge511 ]
  %1436 = phi i32 [ %1457, %1510 ], [ %1385, %._crit_edge511 ]
  %1437 = phi i32 [ %1458, %1510 ], [ %1386, %._crit_edge511 ]
  %1438 = phi i32 [ %1459, %1510 ], [ %1387, %._crit_edge511 ]
  %1439 = phi i32 [ %1460, %1510 ], [ %1388, %._crit_edge511 ]
  %1440 = phi i32 [ %1461, %1510 ], [ %1389, %._crit_edge511 ]
  %1441 = phi i32 [ %1462, %1510 ], [ %1390, %._crit_edge511 ]
  %1442 = phi i32 [ %1463, %1510 ], [ %1391, %._crit_edge511 ]
  %1443 = phi i32 [ %1464, %1510 ], [ %1392, %._crit_edge511 ]
  %1444 = phi i32 [ %1465, %1510 ], [ %1393, %._crit_edge511 ]
  %1445 = phi i32 [ %1466, %1510 ], [ %1394, %._crit_edge511 ]
  %1446 = phi i32 [ %1467, %1510 ], [ %1395, %._crit_edge511 ]
  %1447 = phi i32 [ %1468, %1510 ], [ %1396, %._crit_edge511 ]
  %1448 = phi i32 [ %1469, %1510 ], [ %1397, %._crit_edge511 ]
  %1449 = phi i32* [ %1470, %1510 ], [ %1398, %._crit_edge511 ]
  %1450 = phi i32* [ %1471, %1510 ], [ %1399, %._crit_edge511 ]
  %1451 = phi i32* [ %1472, %1510 ], [ %1400, %._crit_edge511 ]
  %.pre-phi11202456 = phi i32* [ %.pre-phi11202455, %1510 ], [ %.pre-phi11202457, %._crit_edge511 ]
  %.pre-phi11212401 = phi i32* [ %.pre-phi11212400, %1510 ], [ %.pre-phi11212402, %._crit_edge511 ]
  %.pre-phi11222346 = phi i32* [ %.pre-phi11222345, %1510 ], [ %.pre-phi11222347, %._crit_edge511 ]
  %.pre-phi11232291 = phi i32* [ %.pre-phi11232290, %1510 ], [ %.pre-phi11232292, %._crit_edge511 ]
  %.pre-phi11242236 = phi i32* [ %.pre-phi11242235, %1510 ], [ %.pre-phi11242237, %._crit_edge511 ]
  %.pre-phi11252181 = phi i32* [ %.pre-phi11252180, %1510 ], [ %.pre-phi11252182, %._crit_edge511 ]
  %.pre-phi11262126 = phi i32* [ %.pre-phi11262125, %1510 ], [ %.pre-phi11262127, %._crit_edge511 ]
  %.pre-phi11272071 = phi i32* [ %.pre-phi11272070, %1510 ], [ %.pre-phi11272072, %._crit_edge511 ]
  %.pre-phi11282016 = phi i32* [ %.pre-phi11282015, %1510 ], [ %.pre-phi11282017, %._crit_edge511 ]
  %.pre-phi11291961 = phi i32* [ %.pre-phi11291960, %1510 ], [ %.pre-phi11291962, %._crit_edge511 ]
  %.pre-phi11301906 = phi i32* [ %.pre-phi11301905, %1510 ], [ %.pre-phi11301907, %._crit_edge511 ]
  %.pre-phi11311851 = phi i32* [ %.pre-phi11311850, %1510 ], [ %.pre-phi11311852, %._crit_edge511 ]
  %.pre-phi11321796 = phi i32* [ %.pre-phi11321795, %1510 ], [ %.pre-phi11321797, %._crit_edge511 ]
  %.pre-phi11331741 = phi i32* [ %.pre-phi11331740, %1510 ], [ %.pre-phi11331742, %._crit_edge511 ]
  %.pre-phi11341686 = phi i32* [ %.pre-phi11341685, %1510 ], [ %.pre-phi11341687, %._crit_edge511 ]
  %.pre-phi11351631 = phi i32* [ %.pre-phi11351630, %1510 ], [ %.pre-phi11351632, %._crit_edge511 ]
  %.pre-phi11361576 = phi i32* [ %.pre-phi11361575, %1510 ], [ %.pre-phi11361577, %._crit_edge511 ]
  %.pre-phi11371521 = phi i32* [ %.pre-phi11371520, %1510 ], [ %.pre-phi11371522, %._crit_edge511 ]
  %.pre-phi11381466 = phi i32* [ %.pre-phi11381465, %1510 ], [ %.pre-phi11381467, %._crit_edge511 ]
  %.pre-phi11391411 = phi i32* [ %.pre-phi11391410, %1510 ], [ %.pre-phi11391412, %._crit_edge511 ]
  %.pre-phi11401356 = phi i32** [ %.pre-phi11401355, %1510 ], [ %.pre-phi11401357, %._crit_edge511 ]
  %.pre-phi11411301 = phi i32** [ %.pre-phi11411300, %1510 ], [ %.pre-phi11411302, %._crit_edge511 ]
  %.pre-phi11421246 = phi i32** [ %.pre-phi11421245, %1510 ], [ %.pre-phi11421247, %._crit_edge511 ]
  %nSelectors.0 = phi i32 [ %nSelectors.1.ph, %1510 ], [ %1406, %._crit_edge511 ]
  %nGroups.1 = phi i32 [ %nGroups.2.ph, %1510 ], [ %nGroups.0, %._crit_edge511 ]
  %alphaSize.2 = phi i32 [ %alphaSize.3.ph, %1510 ], [ %alphaSize.1, %._crit_edge511 ]
  %j.6 = phi i32 [ %j.7, %1510 ], [ %j.5, %._crit_edge511 ]
  %i.9 = phi i32 [ %1514, %1510 ], [ 0, %._crit_edge511 ]
  %1452 = icmp slt i32 %i.9, %nSelectors.0
  br i1 %1452, label %.preheader, label %.preheader126

.preheader126:                                    ; preds = %1432
  %1453 = icmp sgt i32 %nGroups.1, 0
  br i1 %1453, label %.lr.ph508, label %.preheader124

.preheader:                                       ; preds = %34, %1432
  %1454 = phi i32 [ %1433, %1432 ], [ %.pre741, %34 ]
  %1455 = phi i32 [ %1434, %1432 ], [ %.pre749, %34 ]
  %1456 = phi i32 [ %1435, %1432 ], [ %.pre751, %34 ]
  %1457 = phi i32 [ %1436, %1432 ], [ %.pre753, %34 ]
  %1458 = phi i32 [ %1437, %1432 ], [ %.pre755, %34 ]
  %1459 = phi i32 [ %1438, %1432 ], [ %.pre757, %34 ]
  %1460 = phi i32 [ %1439, %1432 ], [ %.pre759, %34 ]
  %1461 = phi i32 [ %1440, %1432 ], [ %.pre761, %34 ]
  %1462 = phi i32 [ %1441, %1432 ], [ %.pre763, %34 ]
  %1463 = phi i32 [ %1442, %1432 ], [ %.pre765, %34 ]
  %1464 = phi i32 [ %1443, %1432 ], [ %.pre767, %34 ]
  %1465 = phi i32 [ %1444, %1432 ], [ %.pre769, %34 ]
  %1466 = phi i32 [ %1445, %1432 ], [ %.pre771, %34 ]
  %1467 = phi i32 [ %1446, %1432 ], [ %.pre773, %34 ]
  %1468 = phi i32 [ %1447, %1432 ], [ %.pre775, %34 ]
  %1469 = phi i32 [ %1448, %1432 ], [ %.pre777, %34 ]
  %1470 = phi i32* [ %1449, %1432 ], [ %.pre779, %34 ]
  %1471 = phi i32* [ %1450, %1432 ], [ %.pre781, %34 ]
  %1472 = phi i32* [ %1451, %1432 ], [ %.pre783, %34 ]
  %.pre-phi11202455 = phi i32* [ %.pre-phi11202456, %1432 ], [ %.phi.trans.insert738, %34 ]
  %.pre-phi11212400 = phi i32* [ %.pre-phi11212401, %1432 ], [ %.phi.trans.insert740, %34 ]
  %.pre-phi11222345 = phi i32* [ %.pre-phi11222346, %1432 ], [ %.phi.trans.insert742, %34 ]
  %.pre-phi11232290 = phi i32* [ %.pre-phi11232291, %1432 ], [ %.phi.trans.insert744, %34 ]
  %.pre-phi11242235 = phi i32* [ %.pre-phi11242236, %1432 ], [ %.phi.trans.insert746, %34 ]
  %.pre-phi11252180 = phi i32* [ %.pre-phi11252181, %1432 ], [ %.phi.trans.insert748, %34 ]
  %.pre-phi11262125 = phi i32* [ %.pre-phi11262126, %1432 ], [ %.phi.trans.insert750, %34 ]
  %.pre-phi11272070 = phi i32* [ %.pre-phi11272071, %1432 ], [ %.phi.trans.insert752, %34 ]
  %.pre-phi11282015 = phi i32* [ %.pre-phi11282016, %1432 ], [ %.phi.trans.insert754, %34 ]
  %.pre-phi11291960 = phi i32* [ %.pre-phi11291961, %1432 ], [ %.phi.trans.insert756, %34 ]
  %.pre-phi11301905 = phi i32* [ %.pre-phi11301906, %1432 ], [ %.phi.trans.insert758, %34 ]
  %.pre-phi11311850 = phi i32* [ %.pre-phi11311851, %1432 ], [ %.phi.trans.insert760, %34 ]
  %.pre-phi11321795 = phi i32* [ %.pre-phi11321796, %1432 ], [ %.phi.trans.insert762, %34 ]
  %.pre-phi11331740 = phi i32* [ %.pre-phi11331741, %1432 ], [ %.phi.trans.insert764, %34 ]
  %.pre-phi11341685 = phi i32* [ %.pre-phi11341686, %1432 ], [ %.phi.trans.insert766, %34 ]
  %.pre-phi11351630 = phi i32* [ %.pre-phi11351631, %1432 ], [ %.phi.trans.insert768, %34 ]
  %.pre-phi11361575 = phi i32* [ %.pre-phi11361576, %1432 ], [ %.phi.trans.insert770, %34 ]
  %.pre-phi11371520 = phi i32* [ %.pre-phi11371521, %1432 ], [ %.phi.trans.insert772, %34 ]
  %.pre-phi11381465 = phi i32* [ %.pre-phi11381466, %1432 ], [ %.phi.trans.insert774, %34 ]
  %.pre-phi11391410 = phi i32* [ %.pre-phi11391411, %1432 ], [ %.phi.trans.insert776, %34 ]
  %.pre-phi11401355 = phi i32** [ %.pre-phi11401356, %1432 ], [ %.phi.trans.insert778, %34 ]
  %.pre-phi11411300 = phi i32** [ %.pre-phi11411301, %1432 ], [ %.phi.trans.insert780, %34 ]
  %.pre-phi11421245 = phi i32** [ %.pre-phi11421246, %1432 ], [ %.phi.trans.insert782, %34 ]
  %nSelectors.1.ph = phi i32 [ %nSelectors.0, %1432 ], [ %.pre747, %34 ]
  %nGroups.2.ph = phi i32 [ %nGroups.1, %1432 ], [ %.pre745, %34 ]
  %alphaSize.3.ph = phi i32 [ %alphaSize.2, %1432 ], [ %.pre743, %34 ]
  %j.7.ph = phi i32 [ 0, %1432 ], [ %.pre739, %34 ]
  %i.10.ph = phi i32 [ %i.9, %1432 ], [ %.pre, %34 ]
  %1473 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %1474 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  %.pre963 = load i32* %1473, align 4, !tbaa !9
  br label %1475

; <label>:1475                                    ; preds = %.preheader, %1507
  %1476 = phi i32 [ %1479, %1507 ], [ %.pre963, %.preheader ]
  %j.7 = phi i32 [ %1508, %1507 ], [ %j.7.ph, %.preheader ]
  store i32 32, i32* %3, align 4, !tbaa !8
  %1477 = icmp sgt i32 %1476, 0
  br i1 %1477, label %._crit_edge965, label %.lr.ph395

._crit_edge965:                                   ; preds = %1475
  %.pre966 = load i32* %1474, align 4, !tbaa !34
  br label %._crit_edge396

.lr.ph395:                                        ; preds = %1475
  %.pre964 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1096 = getelementptr inbounds %struct.bz_stream* %.pre964, i64 0, i32 1
  %.pre1097 = load i32* %.phi.trans.insert1096, align 4, !tbaa !35
  br label %1483

._crit_edge396:                                   ; preds = %.backedge84, %._crit_edge965
  %1478 = phi i32 [ %.pre966, %._crit_edge965 ], [ %1494, %.backedge84 ]
  %.lcssa214 = phi i32 [ %1476, %._crit_edge965 ], [ %1495, %.backedge84 ]
  %1479 = add nsw i32 %.lcssa214, -1
  store i32 %1479, i32* %1473, align 4, !tbaa !9
  %1480 = shl i32 1, %1479
  %1481 = and i32 %1478, %1480
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1510, label %1507

; <label>:1483                                    ; preds = %.lr.ph395, %.backedge84
  %1484 = phi i32 [ %.pre1097, %.lr.ph395 ], [ %1497, %.backedge84 ]
  %1485 = phi i32 [ %1476, %.lr.ph395 ], [ %1495, %.backedge84 ]
  %1486 = icmp eq i32 %1484, 0
  br i1 %1486, label %.loopexit, label %1487

; <label>:1487                                    ; preds = %1483
  %1488 = load i32* %1474, align 4, !tbaa !34
  %1489 = shl i32 %1488, 8
  %1490 = getelementptr inbounds %struct.bz_stream* %.pre964, i64 0, i32 0
  %1491 = load i8** %1490, align 8, !tbaa !37
  %1492 = load i8* %1491, align 1, !tbaa !38
  %1493 = zext i8 %1492 to i32
  %1494 = or i32 %1493, %1489
  store i32 %1494, i32* %1474, align 4, !tbaa !34
  %1495 = add nsw i32 %1485, 8
  store i32 %1495, i32* %1473, align 4, !tbaa !9
  %1496 = getelementptr inbounds i8* %1491, i64 1
  store i8* %1496, i8** %1490, align 8, !tbaa !37
  %1497 = add i32 %1484, -1
  store i32 %1497, i32* %.phi.trans.insert1096, align 4, !tbaa !35
  %1498 = getelementptr inbounds %struct.bz_stream* %.pre964, i64 0, i32 2
  %1499 = load i32* %1498, align 4, !tbaa !39
  %1500 = add i32 %1499, 1
  store i32 %1500, i32* %1498, align 4, !tbaa !39
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1502, label %.backedge84

; <label>:1502                                    ; preds = %1487
  %1503 = getelementptr inbounds %struct.bz_stream* %.pre964, i64 0, i32 3
  %1504 = load i32* %1503, align 4, !tbaa !40
  %1505 = add i32 %1504, 1
  store i32 %1505, i32* %1503, align 4, !tbaa !40
  br label %.backedge84

.backedge84:                                      ; preds = %1502, %1487
  %1506 = icmp sgt i32 %1485, -8
  br i1 %1506, label %._crit_edge396, label %1483

; <label>:1507                                    ; preds = %._crit_edge396
  %1508 = add nsw i32 %j.7, 1
  %1509 = icmp slt i32 %1508, %nGroups.2.ph
  br i1 %1509, label %1475, label %.loopexit

; <label>:1510                                    ; preds = %._crit_edge396
  %1511 = trunc i32 %j.7 to i8
  %1512 = sext i32 %i.10.ph to i64
  %1513 = getelementptr inbounds %struct.DState* %s, i64 0, i32 34, i64 %1512
  store i8 %1511, i8* %1513, align 1, !tbaa !38
  %1514 = add nsw i32 %i.10.ph, 1
  br label %1432

.preheader124:                                    ; preds = %.lr.ph508, %.preheader126
  %1515 = icmp sgt i32 %nSelectors.0, 0
  br i1 %1515, label %.lr.ph505, label %.loopexit125

.lr.ph505:                                        ; preds = %.preheader124
  %1516 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 0
  %1517 = add i32 %nSelectors.0, -1
  br label %1523

.lr.ph508:                                        ; preds = %.preheader126, %.lr.ph508
  %v23.0507 = phi i8 [ %1520, %.lr.ph508 ], [ 0, %.preheader126 ]
  %1518 = zext i8 %v23.0507 to i64
  %1519 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %1518
  store i8 %v23.0507, i8* %1519, align 1, !tbaa !38
  %1520 = add i8 %v23.0507, 1
  %1521 = zext i8 %1520 to i32
  %1522 = icmp slt i32 %1521, %nGroups.1
  br i1 %1522, label %.lr.ph508, label %.preheader124

; <label>:1523                                    ; preds = %._crit_edge503, %.lr.ph505
  %indvars.iv729 = phi i64 [ 0, %.lr.ph505 ], [ %indvars.iv.next730, %._crit_edge503 ]
  %1524 = getelementptr inbounds %struct.DState* %s, i64 0, i32 34, i64 %indvars.iv729
  %1525 = load i8* %1524, align 1, !tbaa !38
  %1526 = zext i8 %1525 to i64
  %1527 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %1526
  %1528 = load i8* %1527, align 1, !tbaa !38
  %1529 = icmp eq i8 %1525, 0
  br i1 %1529, label %._crit_edge503, label %.lr.ph502

.lr.ph502:                                        ; preds = %1523, %.lr.ph502
  %indvars.iv727 = phi i64 [ %1530, %.lr.ph502 ], [ %1526, %1523 ]
  %1530 = add nsw i64 %indvars.iv727, -1
  %1531 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %1530
  %1532 = load i8* %1531, align 1, !tbaa !38
  %1533 = getelementptr inbounds [6 x i8]* %pos, i64 0, i64 %indvars.iv727
  store i8 %1532, i8* %1533, align 1, !tbaa !38
  %1534 = trunc i64 %indvars.iv727 to i8
  %1535 = icmp eq i8 %1534, 1
  br i1 %1535, label %._crit_edge503, label %.lr.ph502

._crit_edge503:                                   ; preds = %.lr.ph502, %1523
  store i8 %1528, i8* %1516, align 1, !tbaa !38
  %1536 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %indvars.iv729
  store i8 %1528, i8* %1536, align 1, !tbaa !38
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1
  %lftr.wideiv731 = trunc i64 %indvars.iv729 to i32
  %exitcond732 = icmp eq i32 %lftr.wideiv731, %1517
  br i1 %exitcond732, label %.loopexit125, label %1523

.loopexit125:                                     ; preds = %._crit_edge503, %.preheader124, %1755
  %1537 = phi i32 [ %1609, %1755 ], [ %1434, %.preheader124 ], [ %1434, %._crit_edge503 ]
  %1538 = phi i32 [ %1610, %1755 ], [ %1435, %.preheader124 ], [ %1435, %._crit_edge503 ]
  %1539 = phi i32 [ %1611, %1755 ], [ %1436, %.preheader124 ], [ %1436, %._crit_edge503 ]
  %1540 = phi i32 [ %1612, %1755 ], [ %1437, %.preheader124 ], [ %1437, %._crit_edge503 ]
  %1541 = phi i32 [ %1613, %1755 ], [ %1438, %.preheader124 ], [ %1438, %._crit_edge503 ]
  %1542 = phi i32 [ %1614, %1755 ], [ %1439, %.preheader124 ], [ %1439, %._crit_edge503 ]
  %1543 = phi i32 [ %1615, %1755 ], [ %1440, %.preheader124 ], [ %1440, %._crit_edge503 ]
  %1544 = phi i32 [ %1616, %1755 ], [ %1441, %.preheader124 ], [ %1441, %._crit_edge503 ]
  %1545 = phi i32 [ %1617, %1755 ], [ %1443, %.preheader124 ], [ %1443, %._crit_edge503 ]
  %1546 = phi i32 [ %1618, %1755 ], [ %1444, %.preheader124 ], [ %1444, %._crit_edge503 ]
  %1547 = phi i32 [ %1619, %1755 ], [ %1445, %.preheader124 ], [ %1445, %._crit_edge503 ]
  %1548 = phi i32 [ %1620, %1755 ], [ %1446, %.preheader124 ], [ %1446, %._crit_edge503 ]
  %1549 = phi i32 [ %1621, %1755 ], [ %1447, %.preheader124 ], [ %1447, %._crit_edge503 ]
  %1550 = phi i32 [ %1622, %1755 ], [ %1448, %.preheader124 ], [ %1448, %._crit_edge503 ]
  %1551 = phi i32* [ %1623, %1755 ], [ %1449, %.preheader124 ], [ %1449, %._crit_edge503 ]
  %1552 = phi i32* [ %1624, %1755 ], [ %1450, %.preheader124 ], [ %1450, %._crit_edge503 ]
  %1553 = phi i32* [ %1625, %1755 ], [ %1451, %.preheader124 ], [ %1451, %._crit_edge503 ]
  %.pre-phi11202454 = phi i32* [ %.pre-phi11202452, %1755 ], [ %.pre-phi11202456, %.preheader124 ], [ %.pre-phi11202456, %._crit_edge503 ]
  %.pre-phi11212399 = phi i32* [ %.pre-phi11212397, %1755 ], [ %.pre-phi11212401, %.preheader124 ], [ %.pre-phi11212401, %._crit_edge503 ]
  %.pre-phi11222344 = phi i32* [ %.pre-phi11222342, %1755 ], [ %.pre-phi11222346, %.preheader124 ], [ %.pre-phi11222346, %._crit_edge503 ]
  %.pre-phi11232289 = phi i32* [ %.pre-phi11232287, %1755 ], [ %.pre-phi11232291, %.preheader124 ], [ %.pre-phi11232291, %._crit_edge503 ]
  %.pre-phi11242234 = phi i32* [ %.pre-phi11242232, %1755 ], [ %.pre-phi11242236, %.preheader124 ], [ %.pre-phi11242236, %._crit_edge503 ]
  %.pre-phi11252179 = phi i32* [ %.pre-phi11252177, %1755 ], [ %.pre-phi11252181, %.preheader124 ], [ %.pre-phi11252181, %._crit_edge503 ]
  %.pre-phi11262124 = phi i32* [ %.pre-phi11262122, %1755 ], [ %.pre-phi11262126, %.preheader124 ], [ %.pre-phi11262126, %._crit_edge503 ]
  %.pre-phi11272069 = phi i32* [ %.pre-phi11272067, %1755 ], [ %.pre-phi11272071, %.preheader124 ], [ %.pre-phi11272071, %._crit_edge503 ]
  %.pre-phi11282014 = phi i32* [ %.pre-phi11282012, %1755 ], [ %.pre-phi11282016, %.preheader124 ], [ %.pre-phi11282016, %._crit_edge503 ]
  %.pre-phi11291959 = phi i32* [ %.pre-phi11291957, %1755 ], [ %.pre-phi11291961, %.preheader124 ], [ %.pre-phi11291961, %._crit_edge503 ]
  %.pre-phi11301904 = phi i32* [ %.pre-phi11301902, %1755 ], [ %.pre-phi11301906, %.preheader124 ], [ %.pre-phi11301906, %._crit_edge503 ]
  %.pre-phi11311849 = phi i32* [ %.pre-phi11311847, %1755 ], [ %.pre-phi11311851, %.preheader124 ], [ %.pre-phi11311851, %._crit_edge503 ]
  %.pre-phi11321794 = phi i32* [ %.pre-phi11321792, %1755 ], [ %.pre-phi11321796, %.preheader124 ], [ %.pre-phi11321796, %._crit_edge503 ]
  %.pre-phi11331739 = phi i32* [ %.pre-phi11331737, %1755 ], [ %.pre-phi11331741, %.preheader124 ], [ %.pre-phi11331741, %._crit_edge503 ]
  %.pre-phi11341684 = phi i32* [ %.pre-phi11341682, %1755 ], [ %.pre-phi11341686, %.preheader124 ], [ %.pre-phi11341686, %._crit_edge503 ]
  %.pre-phi11351629 = phi i32* [ %.pre-phi11351627, %1755 ], [ %.pre-phi11351631, %.preheader124 ], [ %.pre-phi11351631, %._crit_edge503 ]
  %.pre-phi11361574 = phi i32* [ %.pre-phi11361572, %1755 ], [ %.pre-phi11361576, %.preheader124 ], [ %.pre-phi11361576, %._crit_edge503 ]
  %.pre-phi11371519 = phi i32* [ %.pre-phi11371517, %1755 ], [ %.pre-phi11371521, %.preheader124 ], [ %.pre-phi11371521, %._crit_edge503 ]
  %.pre-phi11381464 = phi i32* [ %.pre-phi11381462, %1755 ], [ %.pre-phi11381466, %.preheader124 ], [ %.pre-phi11381466, %._crit_edge503 ]
  %.pre-phi11391409 = phi i32* [ %.pre-phi11391407, %1755 ], [ %.pre-phi11391411, %.preheader124 ], [ %.pre-phi11391411, %._crit_edge503 ]
  %.pre-phi11401354 = phi i32** [ %.pre-phi11401352, %1755 ], [ %.pre-phi11401356, %.preheader124 ], [ %.pre-phi11401356, %._crit_edge503 ]
  %.pre-phi11411299 = phi i32** [ %.pre-phi11411297, %1755 ], [ %.pre-phi11411301, %.preheader124 ], [ %.pre-phi11411301, %._crit_edge503 ]
  %.pre-phi11421244 = phi i32** [ %.pre-phi11421242, %1755 ], [ %.pre-phi11421246, %.preheader124 ], [ %.pre-phi11421246, %._crit_edge503 ]
  %curr.0 = phi i32 [ %curr.2, %1755 ], [ %1442, %.preheader124 ], [ %1442, %._crit_edge503 ]
  %nSelectors.2 = phi i32 [ %nSelectors.4, %1755 ], [ %nSelectors.0, %.preheader124 ], [ %nSelectors.0, %._crit_edge503 ]
  %nGroups.3 = phi i32 [ %nGroups.5, %1755 ], [ %nGroups.1, %.preheader124 ], [ %nGroups.1, %._crit_edge503 ]
  %alphaSize.4 = phi i32 [ %alphaSize.6, %1755 ], [ %alphaSize.2, %.preheader124 ], [ %alphaSize.2, %._crit_edge503 ]
  %t.0 = phi i32 [ %1756, %1755 ], [ 0, %.preheader124 ], [ 0, %._crit_edge503 ]
  %j.8 = phi i32 [ %j.10, %1755 ], [ %j.6, %.preheader124 ], [ %j.6, %._crit_edge503 ]
  %i.12 = phi i32 [ %i.14, %1755 ], [ 0, %.preheader124 ], [ %nSelectors.0, %._crit_edge503 ]
  %1554 = icmp slt i32 %t.0, %nGroups.3
  br i1 %1554, label %1559, label %.preheader123

.preheader123:                                    ; preds = %.loopexit125
  %1555 = icmp sgt i32 %nGroups.3, 0
  br i1 %1555, label %.preheader122.lr.ph, label %.preheader121

.preheader122.lr.ph:                              ; preds = %.preheader123
  %1556 = icmp sgt i32 %alphaSize.4, 0
  %1557 = add i32 %alphaSize.4, -1
  %1558 = add i32 %nGroups.3, -1
  br label %.preheader122

; <label>:1559                                    ; preds = %.loopexit125, %34
  %1560 = phi i32 [ %1537, %.loopexit125 ], [ %.pre749, %34 ]
  %1561 = phi i32 [ %1538, %.loopexit125 ], [ %.pre751, %34 ]
  %1562 = phi i32 [ %1539, %.loopexit125 ], [ %.pre753, %34 ]
  %1563 = phi i32 [ %1540, %.loopexit125 ], [ %.pre755, %34 ]
  %1564 = phi i32 [ %1541, %.loopexit125 ], [ %.pre757, %34 ]
  %1565 = phi i32 [ %1542, %.loopexit125 ], [ %.pre759, %34 ]
  %1566 = phi i32 [ %1543, %.loopexit125 ], [ %.pre761, %34 ]
  %1567 = phi i32 [ %1544, %.loopexit125 ], [ %.pre763, %34 ]
  %1568 = phi i32 [ %1545, %.loopexit125 ], [ %.pre767, %34 ]
  %1569 = phi i32 [ %1546, %.loopexit125 ], [ %.pre769, %34 ]
  %1570 = phi i32 [ %1547, %.loopexit125 ], [ %.pre771, %34 ]
  %1571 = phi i32 [ %1548, %.loopexit125 ], [ %.pre773, %34 ]
  %1572 = phi i32 [ %1549, %.loopexit125 ], [ %.pre775, %34 ]
  %1573 = phi i32 [ %1550, %.loopexit125 ], [ %.pre777, %34 ]
  %1574 = phi i32* [ %1551, %.loopexit125 ], [ %.pre779, %34 ]
  %1575 = phi i32* [ %1552, %.loopexit125 ], [ %.pre781, %34 ]
  %1576 = phi i32* [ %1553, %.loopexit125 ], [ %.pre783, %34 ]
  %.pre-phi11202453 = phi i32* [ %.pre-phi11202454, %.loopexit125 ], [ %.phi.trans.insert738, %34 ]
  %.pre-phi11212398 = phi i32* [ %.pre-phi11212399, %.loopexit125 ], [ %.phi.trans.insert740, %34 ]
  %.pre-phi11222343 = phi i32* [ %.pre-phi11222344, %.loopexit125 ], [ %.phi.trans.insert742, %34 ]
  %.pre-phi11232288 = phi i32* [ %.pre-phi11232289, %.loopexit125 ], [ %.phi.trans.insert744, %34 ]
  %.pre-phi11242233 = phi i32* [ %.pre-phi11242234, %.loopexit125 ], [ %.phi.trans.insert746, %34 ]
  %.pre-phi11252178 = phi i32* [ %.pre-phi11252179, %.loopexit125 ], [ %.phi.trans.insert748, %34 ]
  %.pre-phi11262123 = phi i32* [ %.pre-phi11262124, %.loopexit125 ], [ %.phi.trans.insert750, %34 ]
  %.pre-phi11272068 = phi i32* [ %.pre-phi11272069, %.loopexit125 ], [ %.phi.trans.insert752, %34 ]
  %.pre-phi11282013 = phi i32* [ %.pre-phi11282014, %.loopexit125 ], [ %.phi.trans.insert754, %34 ]
  %.pre-phi11291958 = phi i32* [ %.pre-phi11291959, %.loopexit125 ], [ %.phi.trans.insert756, %34 ]
  %.pre-phi11301903 = phi i32* [ %.pre-phi11301904, %.loopexit125 ], [ %.phi.trans.insert758, %34 ]
  %.pre-phi11311848 = phi i32* [ %.pre-phi11311849, %.loopexit125 ], [ %.phi.trans.insert760, %34 ]
  %.pre-phi11321793 = phi i32* [ %.pre-phi11321794, %.loopexit125 ], [ %.phi.trans.insert762, %34 ]
  %.pre-phi11331738 = phi i32* [ %.pre-phi11331739, %.loopexit125 ], [ %.phi.trans.insert764, %34 ]
  %.pre-phi11341683 = phi i32* [ %.pre-phi11341684, %.loopexit125 ], [ %.phi.trans.insert766, %34 ]
  %.pre-phi11351628 = phi i32* [ %.pre-phi11351629, %.loopexit125 ], [ %.phi.trans.insert768, %34 ]
  %.pre-phi11361573 = phi i32* [ %.pre-phi11361574, %.loopexit125 ], [ %.phi.trans.insert770, %34 ]
  %.pre-phi11371518 = phi i32* [ %.pre-phi11371519, %.loopexit125 ], [ %.phi.trans.insert772, %34 ]
  %.pre-phi11381463 = phi i32* [ %.pre-phi11381464, %.loopexit125 ], [ %.phi.trans.insert774, %34 ]
  %.pre-phi11391408 = phi i32* [ %.pre-phi11391409, %.loopexit125 ], [ %.phi.trans.insert776, %34 ]
  %.pre-phi11401353 = phi i32** [ %.pre-phi11401354, %.loopexit125 ], [ %.phi.trans.insert778, %34 ]
  %.pre-phi11411298 = phi i32** [ %.pre-phi11411299, %.loopexit125 ], [ %.phi.trans.insert780, %34 ]
  %.pre-phi11421243 = phi i32** [ %.pre-phi11421244, %.loopexit125 ], [ %.phi.trans.insert782, %34 ]
  %curr.1 = phi i32 [ %curr.0, %.loopexit125 ], [ %.pre765, %34 ]
  %nSelectors.3 = phi i32 [ %nSelectors.2, %.loopexit125 ], [ %.pre747, %34 ]
  %nGroups.4 = phi i32 [ %nGroups.3, %.loopexit125 ], [ %.pre745, %34 ]
  %alphaSize.5 = phi i32 [ %alphaSize.4, %.loopexit125 ], [ %.pre743, %34 ]
  %t.1 = phi i32 [ %t.0, %.loopexit125 ], [ %.pre741, %34 ]
  %j.9 = phi i32 [ %j.8, %.loopexit125 ], [ %.pre739, %34 ]
  %i.13 = phi i32 [ %i.12, %.loopexit125 ], [ %.pre, %34 ]
  store i32 33, i32* %3, align 4, !tbaa !8
  %1577 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %1578 = load i32* %1577, align 4, !tbaa !9
  %1579 = icmp sgt i32 %1578, 4
  %.phi.trans.insert950 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1579, label %._crit_edge949, label %.lr.ph410

._crit_edge949:                                   ; preds = %1559
  %.pre951 = load i32* %.phi.trans.insert950, align 4, !tbaa !34
  br label %._crit_edge411

.lr.ph410:                                        ; preds = %1559
  %.pre948 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1090 = getelementptr inbounds %struct.bz_stream* %.pre948, i64 0, i32 1
  %.pre1091 = load i32* %.phi.trans.insert1090, align 4, !tbaa !35
  br label %1584

._crit_edge411:                                   ; preds = %.backedge91, %._crit_edge949
  %1580 = phi i32 [ %.pre951, %._crit_edge949 ], [ %1595, %.backedge91 ]
  %.lcssa229 = phi i32 [ %1578, %._crit_edge949 ], [ %1596, %.backedge91 ]
  %1581 = add nsw i32 %.lcssa229, -5
  %1582 = lshr i32 %1580, %1581
  %1583 = and i32 %1582, 31
  store i32 %1581, i32* %1577, align 4, !tbaa !9
  br label %1608

; <label>:1584                                    ; preds = %.lr.ph410, %.backedge91
  %1585 = phi i32 [ %.pre1091, %.lr.ph410 ], [ %1598, %.backedge91 ]
  %1586 = phi i32 [ %1578, %.lr.ph410 ], [ %1596, %.backedge91 ]
  %1587 = icmp eq i32 %1585, 0
  br i1 %1587, label %.loopexit, label %1588

; <label>:1588                                    ; preds = %1584
  %1589 = load i32* %.phi.trans.insert950, align 4, !tbaa !34
  %1590 = shl i32 %1589, 8
  %1591 = getelementptr inbounds %struct.bz_stream* %.pre948, i64 0, i32 0
  %1592 = load i8** %1591, align 8, !tbaa !37
  %1593 = load i8* %1592, align 1, !tbaa !38
  %1594 = zext i8 %1593 to i32
  %1595 = or i32 %1594, %1590
  store i32 %1595, i32* %.phi.trans.insert950, align 4, !tbaa !34
  %1596 = add nsw i32 %1586, 8
  store i32 %1596, i32* %1577, align 4, !tbaa !9
  %1597 = getelementptr inbounds i8* %1592, i64 1
  store i8* %1597, i8** %1591, align 8, !tbaa !37
  %1598 = add i32 %1585, -1
  store i32 %1598, i32* %.phi.trans.insert1090, align 4, !tbaa !35
  %1599 = getelementptr inbounds %struct.bz_stream* %.pre948, i64 0, i32 2
  %1600 = load i32* %1599, align 4, !tbaa !39
  %1601 = add i32 %1600, 1
  store i32 %1601, i32* %1599, align 4, !tbaa !39
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1603, label %.backedge91

; <label>:1603                                    ; preds = %1588
  %1604 = getelementptr inbounds %struct.bz_stream* %.pre948, i64 0, i32 3
  %1605 = load i32* %1604, align 4, !tbaa !40
  %1606 = add i32 %1605, 1
  store i32 %1606, i32* %1604, align 4, !tbaa !40
  br label %.backedge91

.backedge91:                                      ; preds = %1603, %1588
  %1607 = icmp sgt i32 %1596, 4
  br i1 %1607, label %._crit_edge411, label %1584

; <label>:1608                                    ; preds = %1749, %._crit_edge411
  %1609 = phi i32 [ %1647, %1749 ], [ %1560, %._crit_edge411 ]
  %1610 = phi i32 [ %1648, %1749 ], [ %1561, %._crit_edge411 ]
  %1611 = phi i32 [ %1649, %1749 ], [ %1562, %._crit_edge411 ]
  %1612 = phi i32 [ %1650, %1749 ], [ %1563, %._crit_edge411 ]
  %1613 = phi i32 [ %1651, %1749 ], [ %1564, %._crit_edge411 ]
  %1614 = phi i32 [ %1652, %1749 ], [ %1565, %._crit_edge411 ]
  %1615 = phi i32 [ %1653, %1749 ], [ %1566, %._crit_edge411 ]
  %1616 = phi i32 [ %1654, %1749 ], [ %1567, %._crit_edge411 ]
  %1617 = phi i32 [ %1655, %1749 ], [ %1568, %._crit_edge411 ]
  %1618 = phi i32 [ %1656, %1749 ], [ %1569, %._crit_edge411 ]
  %1619 = phi i32 [ %1657, %1749 ], [ %1570, %._crit_edge411 ]
  %1620 = phi i32 [ %1658, %1749 ], [ %1571, %._crit_edge411 ]
  %1621 = phi i32 [ %1659, %1749 ], [ %1572, %._crit_edge411 ]
  %1622 = phi i32 [ %1660, %1749 ], [ %1573, %._crit_edge411 ]
  %1623 = phi i32* [ %1661, %1749 ], [ %1574, %._crit_edge411 ]
  %1624 = phi i32* [ %1662, %1749 ], [ %1575, %._crit_edge411 ]
  %1625 = phi i32* [ %1663, %1749 ], [ %1576, %._crit_edge411 ]
  %.pre-phi11202452 = phi i32* [ %.pre-phi11202450, %1749 ], [ %.pre-phi11202453, %._crit_edge411 ]
  %.pre-phi11212397 = phi i32* [ %.pre-phi11212395, %1749 ], [ %.pre-phi11212398, %._crit_edge411 ]
  %.pre-phi11222342 = phi i32* [ %.pre-phi11222340, %1749 ], [ %.pre-phi11222343, %._crit_edge411 ]
  %.pre-phi11232287 = phi i32* [ %.pre-phi11232285, %1749 ], [ %.pre-phi11232288, %._crit_edge411 ]
  %.pre-phi11242232 = phi i32* [ %.pre-phi11242230, %1749 ], [ %.pre-phi11242233, %._crit_edge411 ]
  %.pre-phi11252177 = phi i32* [ %.pre-phi11252175, %1749 ], [ %.pre-phi11252178, %._crit_edge411 ]
  %.pre-phi11262122 = phi i32* [ %.pre-phi11262120, %1749 ], [ %.pre-phi11262123, %._crit_edge411 ]
  %.pre-phi11272067 = phi i32* [ %.pre-phi11272065, %1749 ], [ %.pre-phi11272068, %._crit_edge411 ]
  %.pre-phi11282012 = phi i32* [ %.pre-phi11282010, %1749 ], [ %.pre-phi11282013, %._crit_edge411 ]
  %.pre-phi11291957 = phi i32* [ %.pre-phi11291955, %1749 ], [ %.pre-phi11291958, %._crit_edge411 ]
  %.pre-phi11301902 = phi i32* [ %.pre-phi11301900, %1749 ], [ %.pre-phi11301903, %._crit_edge411 ]
  %.pre-phi11311847 = phi i32* [ %.pre-phi11311845, %1749 ], [ %.pre-phi11311848, %._crit_edge411 ]
  %.pre-phi11321792 = phi i32* [ %.pre-phi11321790, %1749 ], [ %.pre-phi11321793, %._crit_edge411 ]
  %.pre-phi11331737 = phi i32* [ %.pre-phi11331735, %1749 ], [ %.pre-phi11331738, %._crit_edge411 ]
  %.pre-phi11341682 = phi i32* [ %.pre-phi11341680, %1749 ], [ %.pre-phi11341683, %._crit_edge411 ]
  %.pre-phi11351627 = phi i32* [ %.pre-phi11351625, %1749 ], [ %.pre-phi11351628, %._crit_edge411 ]
  %.pre-phi11361572 = phi i32* [ %.pre-phi11361570, %1749 ], [ %.pre-phi11361573, %._crit_edge411 ]
  %.pre-phi11371517 = phi i32* [ %.pre-phi11371515, %1749 ], [ %.pre-phi11371518, %._crit_edge411 ]
  %.pre-phi11381462 = phi i32* [ %.pre-phi11381460, %1749 ], [ %.pre-phi11381463, %._crit_edge411 ]
  %.pre-phi11391407 = phi i32* [ %.pre-phi11391405, %1749 ], [ %.pre-phi11391408, %._crit_edge411 ]
  %.pre-phi11401352 = phi i32** [ %.pre-phi11401350, %1749 ], [ %.pre-phi11401353, %._crit_edge411 ]
  %.pre-phi11411297 = phi i32** [ %.pre-phi11411295, %1749 ], [ %.pre-phi11411298, %._crit_edge411 ]
  %.pre-phi11421242 = phi i32** [ %.pre-phi11421240, %1749 ], [ %.pre-phi11421243, %._crit_edge411 ]
  %curr.2 = phi i32 [ %curr.4, %1749 ], [ %1583, %._crit_edge411 ]
  %nSelectors.4 = phi i32 [ %nSelectors.6, %1749 ], [ %nSelectors.3, %._crit_edge411 ]
  %nGroups.5 = phi i32 [ %nGroups.7, %1749 ], [ %nGroups.4, %._crit_edge411 ]
  %alphaSize.6 = phi i32 [ %alphaSize.8, %1749 ], [ %alphaSize.5, %._crit_edge411 ]
  %t.2 = phi i32 [ %t.4, %1749 ], [ %t.1, %._crit_edge411 ]
  %j.10 = phi i32 [ %j.12, %1749 ], [ %j.9, %._crit_edge411 ]
  %i.14 = phi i32 [ %1754, %1749 ], [ 0, %._crit_edge411 ]
  %1626 = icmp slt i32 %i.14, %alphaSize.6
  br i1 %1626, label %1627, label %1755

; <label>:1627                                    ; preds = %1745, %1747, %1608
  %1628 = phi i32 [ %1697, %1745 ], [ %1609, %1608 ], [ %1697, %1747 ]
  %1629 = phi i32 [ %1698, %1745 ], [ %1610, %1608 ], [ %1698, %1747 ]
  %1630 = phi i32 [ %1699, %1745 ], [ %1611, %1608 ], [ %1699, %1747 ]
  %1631 = phi i32 [ %1700, %1745 ], [ %1612, %1608 ], [ %1700, %1747 ]
  %1632 = phi i32 [ %1701, %1745 ], [ %1613, %1608 ], [ %1701, %1747 ]
  %1633 = phi i32 [ %1702, %1745 ], [ %1614, %1608 ], [ %1702, %1747 ]
  %1634 = phi i32 [ %1703, %1745 ], [ %1615, %1608 ], [ %1703, %1747 ]
  %1635 = phi i32 [ %1704, %1745 ], [ %1616, %1608 ], [ %1704, %1747 ]
  %1636 = phi i32 [ %1705, %1745 ], [ %1617, %1608 ], [ %1705, %1747 ]
  %1637 = phi i32 [ %1706, %1745 ], [ %1618, %1608 ], [ %1706, %1747 ]
  %1638 = phi i32 [ %1707, %1745 ], [ %1619, %1608 ], [ %1707, %1747 ]
  %1639 = phi i32 [ %1708, %1745 ], [ %1620, %1608 ], [ %1708, %1747 ]
  %1640 = phi i32 [ %1709, %1745 ], [ %1621, %1608 ], [ %1709, %1747 ]
  %1641 = phi i32 [ %1710, %1745 ], [ %1622, %1608 ], [ %1710, %1747 ]
  %1642 = phi i32* [ %1711, %1745 ], [ %1623, %1608 ], [ %1711, %1747 ]
  %1643 = phi i32* [ %1712, %1745 ], [ %1624, %1608 ], [ %1712, %1747 ]
  %1644 = phi i32* [ %1713, %1745 ], [ %1625, %1608 ], [ %1713, %1747 ]
  %.pre-phi11202451 = phi i32* [ %.pre-phi11202449, %1745 ], [ %.pre-phi11202452, %1608 ], [ %.pre-phi11202449, %1747 ]
  %.pre-phi11212396 = phi i32* [ %.pre-phi11212394, %1745 ], [ %.pre-phi11212397, %1608 ], [ %.pre-phi11212394, %1747 ]
  %.pre-phi11222341 = phi i32* [ %.pre-phi11222339, %1745 ], [ %.pre-phi11222342, %1608 ], [ %.pre-phi11222339, %1747 ]
  %.pre-phi11232286 = phi i32* [ %.pre-phi11232284, %1745 ], [ %.pre-phi11232287, %1608 ], [ %.pre-phi11232284, %1747 ]
  %.pre-phi11242231 = phi i32* [ %.pre-phi11242229, %1745 ], [ %.pre-phi11242232, %1608 ], [ %.pre-phi11242229, %1747 ]
  %.pre-phi11252176 = phi i32* [ %.pre-phi11252174, %1745 ], [ %.pre-phi11252177, %1608 ], [ %.pre-phi11252174, %1747 ]
  %.pre-phi11262121 = phi i32* [ %.pre-phi11262119, %1745 ], [ %.pre-phi11262122, %1608 ], [ %.pre-phi11262119, %1747 ]
  %.pre-phi11272066 = phi i32* [ %.pre-phi11272064, %1745 ], [ %.pre-phi11272067, %1608 ], [ %.pre-phi11272064, %1747 ]
  %.pre-phi11282011 = phi i32* [ %.pre-phi11282009, %1745 ], [ %.pre-phi11282012, %1608 ], [ %.pre-phi11282009, %1747 ]
  %.pre-phi11291956 = phi i32* [ %.pre-phi11291954, %1745 ], [ %.pre-phi11291957, %1608 ], [ %.pre-phi11291954, %1747 ]
  %.pre-phi11301901 = phi i32* [ %.pre-phi11301899, %1745 ], [ %.pre-phi11301902, %1608 ], [ %.pre-phi11301899, %1747 ]
  %.pre-phi11311846 = phi i32* [ %.pre-phi11311844, %1745 ], [ %.pre-phi11311847, %1608 ], [ %.pre-phi11311844, %1747 ]
  %.pre-phi11321791 = phi i32* [ %.pre-phi11321789, %1745 ], [ %.pre-phi11321792, %1608 ], [ %.pre-phi11321789, %1747 ]
  %.pre-phi11331736 = phi i32* [ %.pre-phi11331734, %1745 ], [ %.pre-phi11331737, %1608 ], [ %.pre-phi11331734, %1747 ]
  %.pre-phi11341681 = phi i32* [ %.pre-phi11341679, %1745 ], [ %.pre-phi11341682, %1608 ], [ %.pre-phi11341679, %1747 ]
  %.pre-phi11351626 = phi i32* [ %.pre-phi11351624, %1745 ], [ %.pre-phi11351627, %1608 ], [ %.pre-phi11351624, %1747 ]
  %.pre-phi11361571 = phi i32* [ %.pre-phi11361569, %1745 ], [ %.pre-phi11361572, %1608 ], [ %.pre-phi11361569, %1747 ]
  %.pre-phi11371516 = phi i32* [ %.pre-phi11371514, %1745 ], [ %.pre-phi11371517, %1608 ], [ %.pre-phi11371514, %1747 ]
  %.pre-phi11381461 = phi i32* [ %.pre-phi11381459, %1745 ], [ %.pre-phi11381462, %1608 ], [ %.pre-phi11381459, %1747 ]
  %.pre-phi11391406 = phi i32* [ %.pre-phi11391404, %1745 ], [ %.pre-phi11391407, %1608 ], [ %.pre-phi11391404, %1747 ]
  %.pre-phi11401351 = phi i32** [ %.pre-phi11401349, %1745 ], [ %.pre-phi11401352, %1608 ], [ %.pre-phi11401349, %1747 ]
  %.pre-phi11411296 = phi i32** [ %.pre-phi11411294, %1745 ], [ %.pre-phi11411297, %1608 ], [ %.pre-phi11411294, %1747 ]
  %.pre-phi11421241 = phi i32** [ %.pre-phi11421239, %1745 ], [ %.pre-phi11421242, %1608 ], [ %.pre-phi11421239, %1747 ]
  %curr.3 = phi i32 [ %1746, %1745 ], [ %curr.2, %1608 ], [ %1748, %1747 ]
  %nSelectors.5 = phi i32 [ %nSelectors.7, %1745 ], [ %nSelectors.4, %1608 ], [ %nSelectors.7, %1747 ]
  %nGroups.6 = phi i32 [ %nGroups.8, %1745 ], [ %nGroups.5, %1608 ], [ %nGroups.8, %1747 ]
  %alphaSize.7 = phi i32 [ %alphaSize.9, %1745 ], [ %alphaSize.6, %1608 ], [ %alphaSize.9, %1747 ]
  %t.3 = phi i32 [ %t.5, %1745 ], [ %t.2, %1608 ], [ %t.5, %1747 ]
  %j.11 = phi i32 [ %j.13, %1745 ], [ %j.10, %1608 ], [ %j.13, %1747 ]
  %i.15 = phi i32 [ %i.17, %1745 ], [ %i.14, %1608 ], [ %i.17, %1747 ]
  %curr.3.off = add i32 %curr.3, -1
  %1645 = icmp ugt i32 %curr.3.off, 19
  br i1 %1645, label %.loopexit, label %1646

; <label>:1646                                    ; preds = %1627, %34
  %1647 = phi i32 [ %1628, %1627 ], [ %.pre749, %34 ]
  %1648 = phi i32 [ %1629, %1627 ], [ %.pre751, %34 ]
  %1649 = phi i32 [ %1630, %1627 ], [ %.pre753, %34 ]
  %1650 = phi i32 [ %1631, %1627 ], [ %.pre755, %34 ]
  %1651 = phi i32 [ %1632, %1627 ], [ %.pre757, %34 ]
  %1652 = phi i32 [ %1633, %1627 ], [ %.pre759, %34 ]
  %1653 = phi i32 [ %1634, %1627 ], [ %.pre761, %34 ]
  %1654 = phi i32 [ %1635, %1627 ], [ %.pre763, %34 ]
  %1655 = phi i32 [ %1636, %1627 ], [ %.pre767, %34 ]
  %1656 = phi i32 [ %1637, %1627 ], [ %.pre769, %34 ]
  %1657 = phi i32 [ %1638, %1627 ], [ %.pre771, %34 ]
  %1658 = phi i32 [ %1639, %1627 ], [ %.pre773, %34 ]
  %1659 = phi i32 [ %1640, %1627 ], [ %.pre775, %34 ]
  %1660 = phi i32 [ %1641, %1627 ], [ %.pre777, %34 ]
  %1661 = phi i32* [ %1642, %1627 ], [ %.pre779, %34 ]
  %1662 = phi i32* [ %1643, %1627 ], [ %.pre781, %34 ]
  %1663 = phi i32* [ %1644, %1627 ], [ %.pre783, %34 ]
  %.pre-phi11202450 = phi i32* [ %.pre-phi11202451, %1627 ], [ %.phi.trans.insert738, %34 ]
  %.pre-phi11212395 = phi i32* [ %.pre-phi11212396, %1627 ], [ %.phi.trans.insert740, %34 ]
  %.pre-phi11222340 = phi i32* [ %.pre-phi11222341, %1627 ], [ %.phi.trans.insert742, %34 ]
  %.pre-phi11232285 = phi i32* [ %.pre-phi11232286, %1627 ], [ %.phi.trans.insert744, %34 ]
  %.pre-phi11242230 = phi i32* [ %.pre-phi11242231, %1627 ], [ %.phi.trans.insert746, %34 ]
  %.pre-phi11252175 = phi i32* [ %.pre-phi11252176, %1627 ], [ %.phi.trans.insert748, %34 ]
  %.pre-phi11262120 = phi i32* [ %.pre-phi11262121, %1627 ], [ %.phi.trans.insert750, %34 ]
  %.pre-phi11272065 = phi i32* [ %.pre-phi11272066, %1627 ], [ %.phi.trans.insert752, %34 ]
  %.pre-phi11282010 = phi i32* [ %.pre-phi11282011, %1627 ], [ %.phi.trans.insert754, %34 ]
  %.pre-phi11291955 = phi i32* [ %.pre-phi11291956, %1627 ], [ %.phi.trans.insert756, %34 ]
  %.pre-phi11301900 = phi i32* [ %.pre-phi11301901, %1627 ], [ %.phi.trans.insert758, %34 ]
  %.pre-phi11311845 = phi i32* [ %.pre-phi11311846, %1627 ], [ %.phi.trans.insert760, %34 ]
  %.pre-phi11321790 = phi i32* [ %.pre-phi11321791, %1627 ], [ %.phi.trans.insert762, %34 ]
  %.pre-phi11331735 = phi i32* [ %.pre-phi11331736, %1627 ], [ %.phi.trans.insert764, %34 ]
  %.pre-phi11341680 = phi i32* [ %.pre-phi11341681, %1627 ], [ %.phi.trans.insert766, %34 ]
  %.pre-phi11351625 = phi i32* [ %.pre-phi11351626, %1627 ], [ %.phi.trans.insert768, %34 ]
  %.pre-phi11361570 = phi i32* [ %.pre-phi11361571, %1627 ], [ %.phi.trans.insert770, %34 ]
  %.pre-phi11371515 = phi i32* [ %.pre-phi11371516, %1627 ], [ %.phi.trans.insert772, %34 ]
  %.pre-phi11381460 = phi i32* [ %.pre-phi11381461, %1627 ], [ %.phi.trans.insert774, %34 ]
  %.pre-phi11391405 = phi i32* [ %.pre-phi11391406, %1627 ], [ %.phi.trans.insert776, %34 ]
  %.pre-phi11401350 = phi i32** [ %.pre-phi11401351, %1627 ], [ %.phi.trans.insert778, %34 ]
  %.pre-phi11411295 = phi i32** [ %.pre-phi11411296, %1627 ], [ %.phi.trans.insert780, %34 ]
  %.pre-phi11421240 = phi i32** [ %.pre-phi11421241, %1627 ], [ %.phi.trans.insert782, %34 ]
  %curr.4 = phi i32 [ %curr.3, %1627 ], [ %.pre765, %34 ]
  %nSelectors.6 = phi i32 [ %nSelectors.5, %1627 ], [ %.pre747, %34 ]
  %nGroups.7 = phi i32 [ %nGroups.6, %1627 ], [ %.pre745, %34 ]
  %alphaSize.8 = phi i32 [ %alphaSize.7, %1627 ], [ %.pre743, %34 ]
  %t.4 = phi i32 [ %t.3, %1627 ], [ %.pre741, %34 ]
  %j.12 = phi i32 [ %j.11, %1627 ], [ %.pre739, %34 ]
  %i.16 = phi i32 [ %i.15, %1627 ], [ %.pre, %34 ]
  store i32 34, i32* %3, align 4, !tbaa !8
  %1664 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %1665 = load i32* %1664, align 4, !tbaa !9
  %1666 = icmp sgt i32 %1665, 0
  %.phi.trans.insert954 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1666, label %._crit_edge953, label %.lr.ph405

._crit_edge953:                                   ; preds = %1646
  %.pre955 = load i32* %.phi.trans.insert954, align 4, !tbaa !34
  br label %._crit_edge406

.lr.ph405:                                        ; preds = %1646
  %.pre952 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1092 = getelementptr inbounds %struct.bz_stream* %.pre952, i64 0, i32 1
  %.pre1093 = load i32* %.phi.trans.insert1092, align 4, !tbaa !35
  br label %1672

._crit_edge406:                                   ; preds = %.backedge89, %._crit_edge953
  %1667 = phi i32 [ %.pre955, %._crit_edge953 ], [ %1683, %.backedge89 ]
  %.lcssa225 = phi i32 [ %1665, %._crit_edge953 ], [ %1684, %.backedge89 ]
  %1668 = add nsw i32 %.lcssa225, -1
  store i32 %1668, i32* %1664, align 4, !tbaa !9
  %1669 = shl i32 1, %1668
  %1670 = and i32 %1667, %1669
  %1671 = icmp eq i32 %1670, 0
  br i1 %1671, label %1749, label %1696

; <label>:1672                                    ; preds = %.lr.ph405, %.backedge89
  %1673 = phi i32 [ %.pre1093, %.lr.ph405 ], [ %1686, %.backedge89 ]
  %1674 = phi i32 [ %1665, %.lr.ph405 ], [ %1684, %.backedge89 ]
  %1675 = icmp eq i32 %1673, 0
  br i1 %1675, label %.loopexit, label %1676

; <label>:1676                                    ; preds = %1672
  %1677 = load i32* %.phi.trans.insert954, align 4, !tbaa !34
  %1678 = shl i32 %1677, 8
  %1679 = getelementptr inbounds %struct.bz_stream* %.pre952, i64 0, i32 0
  %1680 = load i8** %1679, align 8, !tbaa !37
  %1681 = load i8* %1680, align 1, !tbaa !38
  %1682 = zext i8 %1681 to i32
  %1683 = or i32 %1682, %1678
  store i32 %1683, i32* %.phi.trans.insert954, align 4, !tbaa !34
  %1684 = add nsw i32 %1674, 8
  store i32 %1684, i32* %1664, align 4, !tbaa !9
  %1685 = getelementptr inbounds i8* %1680, i64 1
  store i8* %1685, i8** %1679, align 8, !tbaa !37
  %1686 = add i32 %1673, -1
  store i32 %1686, i32* %.phi.trans.insert1092, align 4, !tbaa !35
  %1687 = getelementptr inbounds %struct.bz_stream* %.pre952, i64 0, i32 2
  %1688 = load i32* %1687, align 4, !tbaa !39
  %1689 = add i32 %1688, 1
  store i32 %1689, i32* %1687, align 4, !tbaa !39
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1691, label %.backedge89

; <label>:1691                                    ; preds = %1676
  %1692 = getelementptr inbounds %struct.bz_stream* %.pre952, i64 0, i32 3
  %1693 = load i32* %1692, align 4, !tbaa !40
  %1694 = add i32 %1693, 1
  store i32 %1694, i32* %1692, align 4, !tbaa !40
  br label %.backedge89

.backedge89:                                      ; preds = %1691, %1676
  %1695 = icmp sgt i32 %1674, -8
  br i1 %1695, label %._crit_edge406, label %1672

; <label>:1696                                    ; preds = %._crit_edge956, %._crit_edge406
  %1697 = phi i32 [ %.pre749, %._crit_edge956 ], [ %1647, %._crit_edge406 ]
  %1698 = phi i32 [ %.pre751, %._crit_edge956 ], [ %1648, %._crit_edge406 ]
  %1699 = phi i32 [ %.pre753, %._crit_edge956 ], [ %1649, %._crit_edge406 ]
  %1700 = phi i32 [ %.pre755, %._crit_edge956 ], [ %1650, %._crit_edge406 ]
  %1701 = phi i32 [ %.pre757, %._crit_edge956 ], [ %1651, %._crit_edge406 ]
  %1702 = phi i32 [ %.pre759, %._crit_edge956 ], [ %1652, %._crit_edge406 ]
  %1703 = phi i32 [ %.pre761, %._crit_edge956 ], [ %1653, %._crit_edge406 ]
  %1704 = phi i32 [ %.pre763, %._crit_edge956 ], [ %1654, %._crit_edge406 ]
  %1705 = phi i32 [ %.pre767, %._crit_edge956 ], [ %1655, %._crit_edge406 ]
  %1706 = phi i32 [ %.pre769, %._crit_edge956 ], [ %1656, %._crit_edge406 ]
  %1707 = phi i32 [ %.pre771, %._crit_edge956 ], [ %1657, %._crit_edge406 ]
  %1708 = phi i32 [ %.pre773, %._crit_edge956 ], [ %1658, %._crit_edge406 ]
  %1709 = phi i32 [ %.pre775, %._crit_edge956 ], [ %1659, %._crit_edge406 ]
  %1710 = phi i32 [ %.pre777, %._crit_edge956 ], [ %1660, %._crit_edge406 ]
  %1711 = phi i32* [ %.pre779, %._crit_edge956 ], [ %1661, %._crit_edge406 ]
  %1712 = phi i32* [ %.pre781, %._crit_edge956 ], [ %1662, %._crit_edge406 ]
  %1713 = phi i32* [ %.pre783, %._crit_edge956 ], [ %1663, %._crit_edge406 ]
  %.pre-phi11202449 = phi i32* [ %.phi.trans.insert738, %._crit_edge956 ], [ %.pre-phi11202450, %._crit_edge406 ]
  %.pre-phi11212394 = phi i32* [ %.phi.trans.insert740, %._crit_edge956 ], [ %.pre-phi11212395, %._crit_edge406 ]
  %.pre-phi11222339 = phi i32* [ %.phi.trans.insert742, %._crit_edge956 ], [ %.pre-phi11222340, %._crit_edge406 ]
  %.pre-phi11232284 = phi i32* [ %.phi.trans.insert744, %._crit_edge956 ], [ %.pre-phi11232285, %._crit_edge406 ]
  %.pre-phi11242229 = phi i32* [ %.phi.trans.insert746, %._crit_edge956 ], [ %.pre-phi11242230, %._crit_edge406 ]
  %.pre-phi11252174 = phi i32* [ %.phi.trans.insert748, %._crit_edge956 ], [ %.pre-phi11252175, %._crit_edge406 ]
  %.pre-phi11262119 = phi i32* [ %.phi.trans.insert750, %._crit_edge956 ], [ %.pre-phi11262120, %._crit_edge406 ]
  %.pre-phi11272064 = phi i32* [ %.phi.trans.insert752, %._crit_edge956 ], [ %.pre-phi11272065, %._crit_edge406 ]
  %.pre-phi11282009 = phi i32* [ %.phi.trans.insert754, %._crit_edge956 ], [ %.pre-phi11282010, %._crit_edge406 ]
  %.pre-phi11291954 = phi i32* [ %.phi.trans.insert756, %._crit_edge956 ], [ %.pre-phi11291955, %._crit_edge406 ]
  %.pre-phi11301899 = phi i32* [ %.phi.trans.insert758, %._crit_edge956 ], [ %.pre-phi11301900, %._crit_edge406 ]
  %.pre-phi11311844 = phi i32* [ %.phi.trans.insert760, %._crit_edge956 ], [ %.pre-phi11311845, %._crit_edge406 ]
  %.pre-phi11321789 = phi i32* [ %.phi.trans.insert762, %._crit_edge956 ], [ %.pre-phi11321790, %._crit_edge406 ]
  %.pre-phi11331734 = phi i32* [ %.phi.trans.insert764, %._crit_edge956 ], [ %.pre-phi11331735, %._crit_edge406 ]
  %.pre-phi11341679 = phi i32* [ %.phi.trans.insert766, %._crit_edge956 ], [ %.pre-phi11341680, %._crit_edge406 ]
  %.pre-phi11351624 = phi i32* [ %.phi.trans.insert768, %._crit_edge956 ], [ %.pre-phi11351625, %._crit_edge406 ]
  %.pre-phi11361569 = phi i32* [ %.phi.trans.insert770, %._crit_edge956 ], [ %.pre-phi11361570, %._crit_edge406 ]
  %.pre-phi11371514 = phi i32* [ %.phi.trans.insert772, %._crit_edge956 ], [ %.pre-phi11371515, %._crit_edge406 ]
  %.pre-phi11381459 = phi i32* [ %.phi.trans.insert774, %._crit_edge956 ], [ %.pre-phi11381460, %._crit_edge406 ]
  %.pre-phi11391404 = phi i32* [ %.phi.trans.insert776, %._crit_edge956 ], [ %.pre-phi11391405, %._crit_edge406 ]
  %.pre-phi11401349 = phi i32** [ %.phi.trans.insert778, %._crit_edge956 ], [ %.pre-phi11401350, %._crit_edge406 ]
  %.pre-phi11411294 = phi i32** [ %.phi.trans.insert780, %._crit_edge956 ], [ %.pre-phi11411295, %._crit_edge406 ]
  %.pre-phi11421239 = phi i32** [ %.phi.trans.insert782, %._crit_edge956 ], [ %.pre-phi11421240, %._crit_edge406 ]
  %.pre-phi1201 = phi i32* [ %.phi.trans.insert957, %._crit_edge956 ], [ %1664, %._crit_edge406 ]
  %1714 = phi i32 [ %.pre958, %._crit_edge956 ], [ %1668, %._crit_edge406 ]
  %curr.5 = phi i32 [ %.pre765, %._crit_edge956 ], [ %curr.4, %._crit_edge406 ]
  %nSelectors.7 = phi i32 [ %.pre747, %._crit_edge956 ], [ %nSelectors.6, %._crit_edge406 ]
  %nGroups.8 = phi i32 [ %.pre745, %._crit_edge956 ], [ %nGroups.7, %._crit_edge406 ]
  %alphaSize.9 = phi i32 [ %.pre743, %._crit_edge956 ], [ %alphaSize.8, %._crit_edge406 ]
  %t.5 = phi i32 [ %.pre741, %._crit_edge956 ], [ %t.4, %._crit_edge406 ]
  %j.13 = phi i32 [ %.pre739, %._crit_edge956 ], [ %j.12, %._crit_edge406 ]
  %i.17 = phi i32 [ %.pre, %._crit_edge956 ], [ %i.16, %._crit_edge406 ]
  store i32 35, i32* %3, align 4, !tbaa !8
  %1715 = icmp sgt i32 %1714, 0
  %.phi.trans.insert961 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1715, label %._crit_edge960, label %.lr.ph400

._crit_edge960:                                   ; preds = %1696
  %.pre962 = load i32* %.phi.trans.insert961, align 4, !tbaa !34
  br label %._crit_edge401

.lr.ph400:                                        ; preds = %1696
  %.pre959 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1094 = getelementptr inbounds %struct.bz_stream* %.pre959, i64 0, i32 1
  %.pre1095 = load i32* %.phi.trans.insert1094, align 4, !tbaa !35
  br label %1721

._crit_edge401:                                   ; preds = %.backedge87, %._crit_edge960
  %1716 = phi i32 [ %.pre962, %._crit_edge960 ], [ %1732, %.backedge87 ]
  %.lcssa221 = phi i32 [ %1714, %._crit_edge960 ], [ %1733, %.backedge87 ]
  %1717 = add nsw i32 %.lcssa221, -1
  store i32 %1717, i32* %.pre-phi1201, align 4, !tbaa !9
  %1718 = shl i32 1, %1717
  %1719 = and i32 %1716, %1718
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1745, label %1747

; <label>:1721                                    ; preds = %.lr.ph400, %.backedge87
  %1722 = phi i32 [ %.pre1095, %.lr.ph400 ], [ %1735, %.backedge87 ]
  %1723 = phi i32 [ %1714, %.lr.ph400 ], [ %1733, %.backedge87 ]
  %1724 = icmp eq i32 %1722, 0
  br i1 %1724, label %.loopexit, label %1725

; <label>:1725                                    ; preds = %1721
  %1726 = load i32* %.phi.trans.insert961, align 4, !tbaa !34
  %1727 = shl i32 %1726, 8
  %1728 = getelementptr inbounds %struct.bz_stream* %.pre959, i64 0, i32 0
  %1729 = load i8** %1728, align 8, !tbaa !37
  %1730 = load i8* %1729, align 1, !tbaa !38
  %1731 = zext i8 %1730 to i32
  %1732 = or i32 %1731, %1727
  store i32 %1732, i32* %.phi.trans.insert961, align 4, !tbaa !34
  %1733 = add nsw i32 %1723, 8
  store i32 %1733, i32* %.pre-phi1201, align 4, !tbaa !9
  %1734 = getelementptr inbounds i8* %1729, i64 1
  store i8* %1734, i8** %1728, align 8, !tbaa !37
  %1735 = add i32 %1722, -1
  store i32 %1735, i32* %.phi.trans.insert1094, align 4, !tbaa !35
  %1736 = getelementptr inbounds %struct.bz_stream* %.pre959, i64 0, i32 2
  %1737 = load i32* %1736, align 4, !tbaa !39
  %1738 = add i32 %1737, 1
  store i32 %1738, i32* %1736, align 4, !tbaa !39
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %1740, label %.backedge87

; <label>:1740                                    ; preds = %1725
  %1741 = getelementptr inbounds %struct.bz_stream* %.pre959, i64 0, i32 3
  %1742 = load i32* %1741, align 4, !tbaa !40
  %1743 = add i32 %1742, 1
  store i32 %1743, i32* %1741, align 4, !tbaa !40
  br label %.backedge87

.backedge87:                                      ; preds = %1740, %1725
  %1744 = icmp sgt i32 %1723, -8
  br i1 %1744, label %._crit_edge401, label %1721

; <label>:1745                                    ; preds = %._crit_edge401
  %1746 = add nsw i32 %curr.5, 1
  br label %1627

; <label>:1747                                    ; preds = %._crit_edge401
  %1748 = add nsw i32 %curr.5, -1
  br label %1627

; <label>:1749                                    ; preds = %._crit_edge406
  %1750 = trunc i32 %curr.4 to i8
  %1751 = sext i32 %i.16 to i64
  %1752 = sext i32 %t.4 to i64
  %1753 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %1752, i64 %1751
  store i8 %1750, i8* %1753, align 1, !tbaa !38
  %1754 = add nsw i32 %i.16, 1
  br label %1608

; <label>:1755                                    ; preds = %1608
  %1756 = add nsw i32 %t.2, 1
  br label %.loopexit125

.preheader122:                                    ; preds = %._crit_edge494, %.preheader122.lr.ph
  %indvars.iv723 = phi i64 [ 0, %.preheader122.lr.ph ], [ %indvars.iv.next724, %._crit_edge494 ]
  br i1 %1556, label %.lr.ph493, label %._crit_edge494

.lr.ph493:                                        ; preds = %.preheader122, %.lr.ph493
  %indvars.iv719 = phi i64 [ %indvars.iv.next720, %.lr.ph493 ], [ 0, %.preheader122 ]
  %minLen.0492 = phi i32 [ %minLen.1, %.lr.ph493 ], [ 32, %.preheader122 ]
  %maxLen.0491 = phi i32 [ %.maxLen.0, %.lr.ph493 ], [ 0, %.preheader122 ]
  %1757 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %indvars.iv723, i64 %indvars.iv719
  %1758 = load i8* %1757, align 1, !tbaa !38
  %1759 = zext i8 %1758 to i32
  %1760 = icmp sgt i32 %1759, %maxLen.0491
  %.maxLen.0 = select i1 %1760, i32 %1759, i32 %maxLen.0491
  %1761 = icmp slt i32 %1759, %minLen.0492
  %minLen.1 = select i1 %1761, i32 %1759, i32 %minLen.0492
  %indvars.iv.next720 = add nuw nsw i64 %indvars.iv719, 1
  %lftr.wideiv721 = trunc i64 %indvars.iv719 to i32
  %exitcond722 = icmp eq i32 %lftr.wideiv721, %1557
  br i1 %exitcond722, label %._crit_edge494, label %.lr.ph493

._crit_edge494:                                   ; preds = %.lr.ph493, %.preheader122
  %minLen.0.lcssa = phi i32 [ 32, %.preheader122 ], [ %minLen.1, %.lr.ph493 ]
  %maxLen.0.lcssa = phi i32 [ 0, %.preheader122 ], [ %.maxLen.0, %.lr.ph493 ]
  %1762 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %indvars.iv723, i64 0
  %1763 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %indvars.iv723, i64 0
  %1764 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %indvars.iv723, i64 0
  %1765 = getelementptr inbounds %struct.DState* %s, i64 0, i32 35, i64 %indvars.iv723, i64 0
  tail call void @BZ2_hbCreateDecodeTables(i32* %1762, i32* %1763, i32* %1764, i8* %1765, i32 %minLen.0.lcssa, i32 %maxLen.0.lcssa, i32 %alphaSize.4) #4
  %1766 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %indvars.iv723
  store i32 %minLen.0.lcssa, i32* %1766, align 4, !tbaa !55
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1
  %lftr.wideiv725 = trunc i64 %indvars.iv723 to i32
  %exitcond726 = icmp eq i32 %lftr.wideiv725, %1558
  br i1 %exitcond726, label %.preheader121, label %.preheader122

.preheader121:                                    ; preds = %._crit_edge494, %.preheader123
  %t.6.lcssa = phi i32 [ 0, %.preheader123 ], [ %nGroups.3, %._crit_edge494 ]
  %1767 = getelementptr inbounds %struct.DState* %s, i64 0, i32 27
  %1768 = load i32* %1767, align 4, !tbaa !54
  %1769 = getelementptr inbounds %struct.DState* %s, i64 0, i32 9
  %1770 = load i32* %1769, align 4, !tbaa !41
  %scevgep = getelementptr %struct.DState* %s, i64 0, i32 16, i64 0
  %scevgep718 = bitcast i32* %scevgep to i8*
  call void @llvm.memset.p0i8.i64(i8* %scevgep718, i8 0, i64 1024, i32 4, i1 false)
  %1771 = add nsw i32 %1768, 1
  %1772 = mul nsw i32 %1770, 100000
  br label %.preheader120

.preheader120:                                    ; preds = %.preheader121, %middle.block
  %indvars.iv713 = phi i64 [ 15, %.preheader121 ], [ %indvars.iv.next714, %middle.block ]
  %indvars.iv711 = phi i64 [ 4095, %.preheader121 ], [ %indvars.iv.next712, %middle.block ]
  %indvars.iv709 = phi i64 [ 4080, %.preheader121 ], [ %indvars.iv.next710, %middle.block ]
  %1773 = shl i64 %indvars.iv713, 4
  %broadcast.splatinsert2696 = insertelement <2 x i64> undef, i64 %1773, i32 0
  %broadcast.splat2697 = shufflevector <2 x i64> %broadcast.splatinsert2696, <2 x i64> undef, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader120
  %index = phi i64 [ 0, %.preheader120 ], [ %index.next, %vector.body ]
  %offset.idx = sub i64 %indvars.iv711, %index
  %1774 = trunc i64 %index to i32
  %offset.idx2692 = sub i32 15, %1774
  %broadcast.splatinsert2693 = insertelement <2 x i32> undef, i32 %offset.idx2692, i32 0
  %broadcast.splat2694 = shufflevector <2 x i32> %broadcast.splatinsert2693, <2 x i32> undef, <2 x i32> zeroinitializer
  %induction2695 = add <2 x i32> %broadcast.splat2694, <i32 0, i32 -1>
  %1775 = trunc <2 x i64> %broadcast.splat2697 to <2 x i32>
  %1776 = add nuw nsw <2 x i32> %induction2695, %1775
  %1777 = trunc <2 x i32> %1776 to <2 x i8>
  %reverse = shufflevector <2 x i8> %1777, <2 x i8> undef, <2 x i32> <i32 1, i32 0>
  %.sum = add i64 %offset.idx, -1
  %1778 = getelementptr %struct.DState* %s, i64 0, i32 31, i64 %.sum
  %1779 = bitcast i8* %1778 to <2 x i8>*
  store <2 x i8> %reverse, <2 x i8>* %1779, align 1, !tbaa !38
  %index.next = add i64 %index, 2
  %1780 = icmp eq i64 %index.next, 16
  br i1 %1780, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %1781 = trunc i64 %indvars.iv709 to i32
  %1782 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv713
  store i32 %1781, i32* %1782, align 4, !tbaa !55
  %indvars.iv.next714 = add nsw i64 %indvars.iv713, -1
  %1783 = icmp sgt i64 %indvars.iv713, 0
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, -16
  %indvars.iv.next712 = add nsw i64 %indvars.iv711, -16
  br i1 %1783, label %.preheader120, label %1784

; <label>:1784                                    ; preds = %middle.block
  %1785 = icmp slt i32 %nSelectors.2, 1
  br i1 %1785, label %.loopexit, label %1786

; <label>:1786                                    ; preds = %1784
  %1787 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 0
  %1788 = load i8* %1787, align 1, !tbaa !38
  %1789 = zext i8 %1788 to i32
  %1790 = zext i8 %1788 to i64
  %1791 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %1790
  %1792 = load i32* %1791, align 4, !tbaa !55
  %1793 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %1790, i64 0
  %1794 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %1790, i64 0
  %1795 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %1790, i64 0
  br label %1796

; <label>:1796                                    ; preds = %34, %1786
  %1797 = phi i32 [ %.pre755, %34 ], [ %1540, %1786 ]
  %1798 = phi i32 [ %.pre761, %34 ], [ %1543, %1786 ]
  %1799 = phi i32 [ %.pre763, %34 ], [ %1544, %1786 ]
  %1800 = phi i32 [ %.pre767, %34 ], [ %1545, %1786 ]
  %1801 = phi i32 [ %.pre771, %34 ], [ %1547, %1786 ]
  %1802 = phi i32 [ %.pre773, %34 ], [ %1548, %1786 ]
  %.pre-phi11202448 = phi i32* [ %.phi.trans.insert738, %34 ], [ %.pre-phi11202454, %1786 ]
  %.pre-phi11212393 = phi i32* [ %.phi.trans.insert740, %34 ], [ %.pre-phi11212399, %1786 ]
  %.pre-phi11222338 = phi i32* [ %.phi.trans.insert742, %34 ], [ %.pre-phi11222344, %1786 ]
  %.pre-phi11232283 = phi i32* [ %.phi.trans.insert744, %34 ], [ %.pre-phi11232289, %1786 ]
  %.pre-phi11242228 = phi i32* [ %.phi.trans.insert746, %34 ], [ %.pre-phi11242234, %1786 ]
  %.pre-phi11252173 = phi i32* [ %.phi.trans.insert748, %34 ], [ %.pre-phi11252179, %1786 ]
  %.pre-phi11262118 = phi i32* [ %.phi.trans.insert750, %34 ], [ %.pre-phi11262124, %1786 ]
  %.pre-phi11272063 = phi i32* [ %.phi.trans.insert752, %34 ], [ %.pre-phi11272069, %1786 ]
  %.pre-phi11282008 = phi i32* [ %.phi.trans.insert754, %34 ], [ %.pre-phi11282014, %1786 ]
  %.pre-phi11291953 = phi i32* [ %.phi.trans.insert756, %34 ], [ %.pre-phi11291959, %1786 ]
  %.pre-phi11301898 = phi i32* [ %.phi.trans.insert758, %34 ], [ %.pre-phi11301904, %1786 ]
  %.pre-phi11311843 = phi i32* [ %.phi.trans.insert760, %34 ], [ %.pre-phi11311849, %1786 ]
  %.pre-phi11321788 = phi i32* [ %.phi.trans.insert762, %34 ], [ %.pre-phi11321794, %1786 ]
  %.pre-phi11331733 = phi i32* [ %.phi.trans.insert764, %34 ], [ %.pre-phi11331739, %1786 ]
  %.pre-phi11341678 = phi i32* [ %.phi.trans.insert766, %34 ], [ %.pre-phi11341684, %1786 ]
  %.pre-phi11351623 = phi i32* [ %.phi.trans.insert768, %34 ], [ %.pre-phi11351629, %1786 ]
  %.pre-phi11361568 = phi i32* [ %.phi.trans.insert770, %34 ], [ %.pre-phi11361574, %1786 ]
  %.pre-phi11371513 = phi i32* [ %.phi.trans.insert772, %34 ], [ %.pre-phi11371519, %1786 ]
  %.pre-phi11381458 = phi i32* [ %.phi.trans.insert774, %34 ], [ %.pre-phi11381464, %1786 ]
  %.pre-phi11391403 = phi i32* [ %.phi.trans.insert776, %34 ], [ %.pre-phi11391409, %1786 ]
  %.pre-phi11401348 = phi i32** [ %.phi.trans.insert778, %34 ], [ %.pre-phi11401354, %1786 ]
  %.pre-phi11411293 = phi i32** [ %.phi.trans.insert780, %34 ], [ %.pre-phi11411299, %1786 ]
  %.pre-phi11421238 = phi i32** [ %.phi.trans.insert782, %34 ], [ %.pre-phi11421244, %1786 ]
  %gPerm.1 = phi i32* [ %.pre783, %34 ], [ %1794, %1786 ]
  %gBase.1 = phi i32* [ %.pre781, %34 ], [ %1795, %1786 ]
  %gLimit.1 = phi i32* [ %.pre779, %34 ], [ %1793, %1786 ]
  %gMinlen.1 = phi i32 [ %.pre777, %34 ], [ %1792, %1786 ]
  %gSel.1 = phi i32 [ %.pre775, %34 ], [ %1789, %1786 ]
  %zn.0 = phi i32 [ %.pre769, %34 ], [ %1792, %1786 ]
  %curr.6 = phi i32 [ %.pre765, %34 ], [ %curr.0, %1786 ]
  %nblock.0 = phi i32 [ %.pre759, %34 ], [ 0, %1786 ]
  %nblockMAX.0 = phi i32 [ %.pre757, %34 ], [ %1772, %1786 ]
  %groupPos.1 = phi i32 [ %.pre753, %34 ], [ 49, %1786 ]
  %groupNo.1 = phi i32 [ %.pre751, %34 ], [ 0, %1786 ]
  %EOB.0 = phi i32 [ %.pre749, %34 ], [ %1771, %1786 ]
  %nSelectors.8 = phi i32 [ %.pre747, %34 ], [ %nSelectors.2, %1786 ]
  %nGroups.9 = phi i32 [ %.pre745, %34 ], [ %nGroups.3, %1786 ]
  %alphaSize.10 = phi i32 [ %.pre743, %34 ], [ %alphaSize.4, %1786 ]
  %t.7 = phi i32 [ %.pre741, %34 ], [ %t.6.lcssa, %1786 ]
  %j.14 = phi i32 [ %.pre739, %34 ], [ %j.8, %1786 ]
  %i.20 = phi i32 [ %.pre, %34 ], [ 256, %1786 ]
  store i32 36, i32* %3, align 4, !tbaa !8
  %1803 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %1804 = load i32* %1803, align 4, !tbaa !9
  %1805 = icmp slt i32 %1804, %zn.0
  %1806 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1805, label %.lr.ph481, label %._crit_edge909

._crit_edge909:                                   ; preds = %1796
  %.pre911 = load i32* %1806, align 4, !tbaa !34
  br label %._crit_edge482

.lr.ph481:                                        ; preds = %1796
  %.pre908 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1078 = getelementptr inbounds %struct.bz_stream* %.pre908, i64 0, i32 1
  %.pre1079 = load i32* %.phi.trans.insert1078, align 4, !tbaa !35
  br label %1813

._crit_edge482:                                   ; preds = %.backedge119, %._crit_edge909
  %1807 = phi i32 [ %.pre911, %._crit_edge909 ], [ %1824, %.backedge119 ]
  %.lcssa261 = phi i32 [ %1804, %._crit_edge909 ], [ %1825, %.backedge119 ]
  %1808 = sub nsw i32 %.lcssa261, %zn.0
  %1809 = lshr i32 %1807, %1808
  %1810 = shl i32 1, %zn.0
  %1811 = add nsw i32 %1810, -1
  %1812 = and i32 %1809, %1811
  store i32 %1808, i32* %1803, align 4, !tbaa !9
  br label %1837

; <label>:1813                                    ; preds = %.lr.ph481, %.backedge119
  %1814 = phi i32 [ %.pre1079, %.lr.ph481 ], [ %1827, %.backedge119 ]
  %1815 = phi i32 [ %1804, %.lr.ph481 ], [ %1825, %.backedge119 ]
  %1816 = icmp eq i32 %1814, 0
  br i1 %1816, label %.loopexit, label %1817

; <label>:1817                                    ; preds = %1813
  %1818 = load i32* %1806, align 4, !tbaa !34
  %1819 = shl i32 %1818, 8
  %1820 = getelementptr inbounds %struct.bz_stream* %.pre908, i64 0, i32 0
  %1821 = load i8** %1820, align 8, !tbaa !37
  %1822 = load i8* %1821, align 1, !tbaa !38
  %1823 = zext i8 %1822 to i32
  %1824 = or i32 %1823, %1819
  store i32 %1824, i32* %1806, align 4, !tbaa !34
  %1825 = add nsw i32 %1815, 8
  store i32 %1825, i32* %1803, align 4, !tbaa !9
  %1826 = getelementptr inbounds i8* %1821, i64 1
  store i8* %1826, i8** %1820, align 8, !tbaa !37
  %1827 = add i32 %1814, -1
  store i32 %1827, i32* %.phi.trans.insert1078, align 4, !tbaa !35
  %1828 = getelementptr inbounds %struct.bz_stream* %.pre908, i64 0, i32 2
  %1829 = load i32* %1828, align 4, !tbaa !39
  %1830 = add i32 %1829, 1
  store i32 %1830, i32* %1828, align 4, !tbaa !39
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1832, label %.backedge119

; <label>:1832                                    ; preds = %1817
  %1833 = getelementptr inbounds %struct.bz_stream* %.pre908, i64 0, i32 3
  %1834 = load i32* %1833, align 4, !tbaa !40
  %1835 = add i32 %1834, 1
  store i32 %1835, i32* %1833, align 4, !tbaa !40
  br label %.backedge119

.backedge119:                                     ; preds = %1832, %1817
  %1836 = icmp slt i32 %1825, %zn.0
  br i1 %1836, label %1813, label %._crit_edge482

; <label>:1837                                    ; preds = %._crit_edge482, %._crit_edge416
  %1838 = phi i32 [ %1852, %._crit_edge416 ], [ %1797, %._crit_edge482 ]
  %1839 = phi i32 [ %1853, %._crit_edge416 ], [ %1798, %._crit_edge482 ]
  %1840 = phi i32 [ %1854, %._crit_edge416 ], [ %1799, %._crit_edge482 ]
  %1841 = phi i32 [ %1855, %._crit_edge416 ], [ %1800, %._crit_edge482 ]
  %.pre-phi11202447 = phi i32* [ %.pre-phi11202446, %._crit_edge416 ], [ %.pre-phi11202448, %._crit_edge482 ]
  %.pre-phi11212392 = phi i32* [ %.pre-phi11212391, %._crit_edge416 ], [ %.pre-phi11212393, %._crit_edge482 ]
  %.pre-phi11222337 = phi i32* [ %.pre-phi11222336, %._crit_edge416 ], [ %.pre-phi11222338, %._crit_edge482 ]
  %.pre-phi11232282 = phi i32* [ %.pre-phi11232281, %._crit_edge416 ], [ %.pre-phi11232283, %._crit_edge482 ]
  %.pre-phi11242227 = phi i32* [ %.pre-phi11242226, %._crit_edge416 ], [ %.pre-phi11242228, %._crit_edge482 ]
  %.pre-phi11252172 = phi i32* [ %.pre-phi11252171, %._crit_edge416 ], [ %.pre-phi11252173, %._crit_edge482 ]
  %.pre-phi11262117 = phi i32* [ %.pre-phi11262116, %._crit_edge416 ], [ %.pre-phi11262118, %._crit_edge482 ]
  %.pre-phi11272062 = phi i32* [ %.pre-phi11272061, %._crit_edge416 ], [ %.pre-phi11272063, %._crit_edge482 ]
  %.pre-phi11282007 = phi i32* [ %.pre-phi11282006, %._crit_edge416 ], [ %.pre-phi11282008, %._crit_edge482 ]
  %.pre-phi11291952 = phi i32* [ %.pre-phi11291951, %._crit_edge416 ], [ %.pre-phi11291953, %._crit_edge482 ]
  %.pre-phi11301897 = phi i32* [ %.pre-phi11301896, %._crit_edge416 ], [ %.pre-phi11301898, %._crit_edge482 ]
  %.pre-phi11311842 = phi i32* [ %.pre-phi11311841, %._crit_edge416 ], [ %.pre-phi11311843, %._crit_edge482 ]
  %.pre-phi11321787 = phi i32* [ %.pre-phi11321786, %._crit_edge416 ], [ %.pre-phi11321788, %._crit_edge482 ]
  %.pre-phi11331732 = phi i32* [ %.pre-phi11331731, %._crit_edge416 ], [ %.pre-phi11331733, %._crit_edge482 ]
  %.pre-phi11341677 = phi i32* [ %.pre-phi11341676, %._crit_edge416 ], [ %.pre-phi11341678, %._crit_edge482 ]
  %.pre-phi11351622 = phi i32* [ %.pre-phi11351621, %._crit_edge416 ], [ %.pre-phi11351623, %._crit_edge482 ]
  %.pre-phi11361567 = phi i32* [ %.pre-phi11361566, %._crit_edge416 ], [ %.pre-phi11361568, %._crit_edge482 ]
  %.pre-phi11371512 = phi i32* [ %.pre-phi11371511, %._crit_edge416 ], [ %.pre-phi11371513, %._crit_edge482 ]
  %.pre-phi11381457 = phi i32* [ %.pre-phi11381456, %._crit_edge416 ], [ %.pre-phi11381458, %._crit_edge482 ]
  %.pre-phi11391402 = phi i32* [ %.pre-phi11391401, %._crit_edge416 ], [ %.pre-phi11391403, %._crit_edge482 ]
  %.pre-phi11401347 = phi i32** [ %.pre-phi11401346, %._crit_edge416 ], [ %.pre-phi11401348, %._crit_edge482 ]
  %.pre-phi11411292 = phi i32** [ %.pre-phi11411291, %._crit_edge416 ], [ %.pre-phi11411293, %._crit_edge482 ]
  %.pre-phi11421237 = phi i32** [ %.pre-phi11421236, %._crit_edge416 ], [ %.pre-phi11421238, %._crit_edge482 ]
  %1842 = phi i32 [ %1859, %._crit_edge416 ], [ %1808, %._crit_edge482 ]
  %gPerm.2 = phi i32* [ %gPerm.3, %._crit_edge416 ], [ %gPerm.1, %._crit_edge482 ]
  %gBase.2 = phi i32* [ %gBase.3, %._crit_edge416 ], [ %gBase.1, %._crit_edge482 ]
  %gLimit.2 = phi i32* [ %gLimit.3, %._crit_edge416 ], [ %gLimit.1, %._crit_edge482 ]
  %gMinlen.2 = phi i32 [ %gMinlen.3, %._crit_edge416 ], [ %gMinlen.1, %._crit_edge482 ]
  %gSel.2 = phi i32 [ %gSel.3, %._crit_edge416 ], [ %gSel.1, %._crit_edge482 ]
  %zj.0 = phi i32 [ %1861, %._crit_edge416 ], [ %1802, %._crit_edge482 ]
  %zvec.0 = phi i32 [ %1863, %._crit_edge416 ], [ %1812, %._crit_edge482 ]
  %zn.1 = phi i32 [ %zn.2, %._crit_edge416 ], [ %zn.0, %._crit_edge482 ]
  %curr.7 = phi i32 [ %curr.8, %._crit_edge416 ], [ %curr.6, %._crit_edge482 ]
  %nblock.1 = phi i32 [ %nblock.2, %._crit_edge416 ], [ %nblock.0, %._crit_edge482 ]
  %nblockMAX.1 = phi i32 [ %nblockMAX.2, %._crit_edge416 ], [ %nblockMAX.0, %._crit_edge482 ]
  %groupPos.2 = phi i32 [ %groupPos.3, %._crit_edge416 ], [ %groupPos.1, %._crit_edge482 ]
  %groupNo.2 = phi i32 [ %groupNo.3, %._crit_edge416 ], [ %groupNo.1, %._crit_edge482 ]
  %EOB.1 = phi i32 [ %EOB.2, %._crit_edge416 ], [ %EOB.0, %._crit_edge482 ]
  %nSelectors.9 = phi i32 [ %nSelectors.10, %._crit_edge416 ], [ %nSelectors.8, %._crit_edge482 ]
  %nGroups.10 = phi i32 [ %nGroups.11, %._crit_edge416 ], [ %nGroups.9, %._crit_edge482 ]
  %alphaSize.11 = phi i32 [ %alphaSize.12, %._crit_edge416 ], [ %alphaSize.10, %._crit_edge482 ]
  %t.8 = phi i32 [ %t.9, %._crit_edge416 ], [ %t.7, %._crit_edge482 ]
  %j.15 = phi i32 [ %j.16, %._crit_edge416 ], [ %j.14, %._crit_edge482 ]
  %i.21 = phi i32 [ %i.22, %._crit_edge416 ], [ %i.20, %._crit_edge482 ]
  %1843 = icmp sgt i32 %zn.1, 20
  br i1 %1843, label %.loopexit, label %1844

; <label>:1844                                    ; preds = %1837
  %1845 = sext i32 %zn.1 to i64
  %1846 = getelementptr inbounds i32* %gLimit.2, i64 %1845
  %1847 = load i32* %1846, align 4, !tbaa !55
  %1848 = icmp sgt i32 %zvec.0, %1847
  br i1 %1848, label %1849, label %1888

; <label>:1849                                    ; preds = %1844
  %1850 = add nsw i32 %zn.1, 1
  %.pre1204 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %1851

; <label>:1851                                    ; preds = %._crit_edge941, %1849
  %1852 = phi i32 [ %.pre755, %._crit_edge941 ], [ %1838, %1849 ]
  %1853 = phi i32 [ %.pre761, %._crit_edge941 ], [ %1839, %1849 ]
  %1854 = phi i32 [ %.pre763, %._crit_edge941 ], [ %1840, %1849 ]
  %1855 = phi i32 [ %.pre767, %._crit_edge941 ], [ %1841, %1849 ]
  %.pre-phi11202446 = phi i32* [ %.phi.trans.insert738, %._crit_edge941 ], [ %.pre-phi11202447, %1849 ]
  %.pre-phi11212391 = phi i32* [ %.phi.trans.insert740, %._crit_edge941 ], [ %.pre-phi11212392, %1849 ]
  %.pre-phi11222336 = phi i32* [ %.phi.trans.insert742, %._crit_edge941 ], [ %.pre-phi11222337, %1849 ]
  %.pre-phi11232281 = phi i32* [ %.phi.trans.insert744, %._crit_edge941 ], [ %.pre-phi11232282, %1849 ]
  %.pre-phi11242226 = phi i32* [ %.phi.trans.insert746, %._crit_edge941 ], [ %.pre-phi11242227, %1849 ]
  %.pre-phi11252171 = phi i32* [ %.phi.trans.insert748, %._crit_edge941 ], [ %.pre-phi11252172, %1849 ]
  %.pre-phi11262116 = phi i32* [ %.phi.trans.insert750, %._crit_edge941 ], [ %.pre-phi11262117, %1849 ]
  %.pre-phi11272061 = phi i32* [ %.phi.trans.insert752, %._crit_edge941 ], [ %.pre-phi11272062, %1849 ]
  %.pre-phi11282006 = phi i32* [ %.phi.trans.insert754, %._crit_edge941 ], [ %.pre-phi11282007, %1849 ]
  %.pre-phi11291951 = phi i32* [ %.phi.trans.insert756, %._crit_edge941 ], [ %.pre-phi11291952, %1849 ]
  %.pre-phi11301896 = phi i32* [ %.phi.trans.insert758, %._crit_edge941 ], [ %.pre-phi11301897, %1849 ]
  %.pre-phi11311841 = phi i32* [ %.phi.trans.insert760, %._crit_edge941 ], [ %.pre-phi11311842, %1849 ]
  %.pre-phi11321786 = phi i32* [ %.phi.trans.insert762, %._crit_edge941 ], [ %.pre-phi11321787, %1849 ]
  %.pre-phi11331731 = phi i32* [ %.phi.trans.insert764, %._crit_edge941 ], [ %.pre-phi11331732, %1849 ]
  %.pre-phi11341676 = phi i32* [ %.phi.trans.insert766, %._crit_edge941 ], [ %.pre-phi11341677, %1849 ]
  %.pre-phi11351621 = phi i32* [ %.phi.trans.insert768, %._crit_edge941 ], [ %.pre-phi11351622, %1849 ]
  %.pre-phi11361566 = phi i32* [ %.phi.trans.insert770, %._crit_edge941 ], [ %.pre-phi11361567, %1849 ]
  %.pre-phi11371511 = phi i32* [ %.phi.trans.insert772, %._crit_edge941 ], [ %.pre-phi11371512, %1849 ]
  %.pre-phi11381456 = phi i32* [ %.phi.trans.insert774, %._crit_edge941 ], [ %.pre-phi11381457, %1849 ]
  %.pre-phi11391401 = phi i32* [ %.phi.trans.insert776, %._crit_edge941 ], [ %.pre-phi11391402, %1849 ]
  %.pre-phi11401346 = phi i32** [ %.phi.trans.insert778, %._crit_edge941 ], [ %.pre-phi11401347, %1849 ]
  %.pre-phi11411291 = phi i32** [ %.phi.trans.insert780, %._crit_edge941 ], [ %.pre-phi11411292, %1849 ]
  %.pre-phi11421236 = phi i32** [ %.phi.trans.insert782, %._crit_edge941 ], [ %.pre-phi11421237, %1849 ]
  %.pre-phi1205 = phi i32* [ %.phi.trans.insert942, %._crit_edge941 ], [ %.pre1204, %1849 ]
  %1856 = phi i32 [ %.pre943, %._crit_edge941 ], [ %1842, %1849 ]
  %gPerm.3 = phi i32* [ %.pre783, %._crit_edge941 ], [ %gPerm.2, %1849 ]
  %gBase.3 = phi i32* [ %.pre781, %._crit_edge941 ], [ %gBase.2, %1849 ]
  %gLimit.3 = phi i32* [ %.pre779, %._crit_edge941 ], [ %gLimit.2, %1849 ]
  %gMinlen.3 = phi i32 [ %.pre777, %._crit_edge941 ], [ %gMinlen.2, %1849 ]
  %gSel.3 = phi i32 [ %.pre775, %._crit_edge941 ], [ %gSel.2, %1849 ]
  %zj.1 = phi i32 [ %.pre773, %._crit_edge941 ], [ %zj.0, %1849 ]
  %zvec.1 = phi i32 [ %.pre771, %._crit_edge941 ], [ %zvec.0, %1849 ]
  %zn.2 = phi i32 [ %.pre769, %._crit_edge941 ], [ %1850, %1849 ]
  %curr.8 = phi i32 [ %.pre765, %._crit_edge941 ], [ %curr.7, %1849 ]
  %nblock.2 = phi i32 [ %.pre759, %._crit_edge941 ], [ %nblock.1, %1849 ]
  %nblockMAX.2 = phi i32 [ %.pre757, %._crit_edge941 ], [ %nblockMAX.1, %1849 ]
  %groupPos.3 = phi i32 [ %.pre753, %._crit_edge941 ], [ %groupPos.2, %1849 ]
  %groupNo.3 = phi i32 [ %.pre751, %._crit_edge941 ], [ %groupNo.2, %1849 ]
  %EOB.2 = phi i32 [ %.pre749, %._crit_edge941 ], [ %EOB.1, %1849 ]
  %nSelectors.10 = phi i32 [ %.pre747, %._crit_edge941 ], [ %nSelectors.9, %1849 ]
  %nGroups.11 = phi i32 [ %.pre745, %._crit_edge941 ], [ %nGroups.10, %1849 ]
  %alphaSize.12 = phi i32 [ %.pre743, %._crit_edge941 ], [ %alphaSize.11, %1849 ]
  %t.9 = phi i32 [ %.pre741, %._crit_edge941 ], [ %t.8, %1849 ]
  %j.16 = phi i32 [ %.pre739, %._crit_edge941 ], [ %j.15, %1849 ]
  %i.22 = phi i32 [ %.pre, %._crit_edge941 ], [ %i.21, %1849 ]
  store i32 37, i32* %3, align 4, !tbaa !8
  %1857 = icmp sgt i32 %1856, 0
  %.phi.trans.insert946 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1857, label %._crit_edge945, label %.lr.ph415

._crit_edge945:                                   ; preds = %1851
  %.pre947 = load i32* %.phi.trans.insert946, align 4, !tbaa !34
  br label %._crit_edge416

.lr.ph415:                                        ; preds = %1851
  %.pre944 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1088 = getelementptr inbounds %struct.bz_stream* %.pre944, i64 0, i32 1
  %.pre1089 = load i32* %.phi.trans.insert1088, align 4, !tbaa !35
  br label %1864

._crit_edge416:                                   ; preds = %.backedge93, %._crit_edge945
  %1858 = phi i32 [ %.pre947, %._crit_edge945 ], [ %1875, %.backedge93 ]
  %.lcssa233 = phi i32 [ %1856, %._crit_edge945 ], [ %1876, %.backedge93 ]
  %1859 = add nsw i32 %.lcssa233, -1
  %1860 = lshr i32 %1858, %1859
  %1861 = and i32 %1860, 1
  store i32 %1859, i32* %.pre-phi1205, align 4, !tbaa !9
  %1862 = shl i32 %zvec.1, 1
  %1863 = or i32 %1861, %1862
  br label %1837

; <label>:1864                                    ; preds = %.lr.ph415, %.backedge93
  %1865 = phi i32 [ %.pre1089, %.lr.ph415 ], [ %1878, %.backedge93 ]
  %1866 = phi i32 [ %1856, %.lr.ph415 ], [ %1876, %.backedge93 ]
  %1867 = icmp eq i32 %1865, 0
  br i1 %1867, label %.loopexit, label %1868

; <label>:1868                                    ; preds = %1864
  %1869 = load i32* %.phi.trans.insert946, align 4, !tbaa !34
  %1870 = shl i32 %1869, 8
  %1871 = getelementptr inbounds %struct.bz_stream* %.pre944, i64 0, i32 0
  %1872 = load i8** %1871, align 8, !tbaa !37
  %1873 = load i8* %1872, align 1, !tbaa !38
  %1874 = zext i8 %1873 to i32
  %1875 = or i32 %1874, %1870
  store i32 %1875, i32* %.phi.trans.insert946, align 4, !tbaa !34
  %1876 = add nsw i32 %1866, 8
  store i32 %1876, i32* %.pre-phi1205, align 4, !tbaa !9
  %1877 = getelementptr inbounds i8* %1872, i64 1
  store i8* %1877, i8** %1871, align 8, !tbaa !37
  %1878 = add i32 %1865, -1
  store i32 %1878, i32* %.phi.trans.insert1088, align 4, !tbaa !35
  %1879 = getelementptr inbounds %struct.bz_stream* %.pre944, i64 0, i32 2
  %1880 = load i32* %1879, align 4, !tbaa !39
  %1881 = add i32 %1880, 1
  store i32 %1881, i32* %1879, align 4, !tbaa !39
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %1883, label %.backedge93

; <label>:1883                                    ; preds = %1868
  %1884 = getelementptr inbounds %struct.bz_stream* %.pre944, i64 0, i32 3
  %1885 = load i32* %1884, align 4, !tbaa !40
  %1886 = add i32 %1885, 1
  store i32 %1886, i32* %1884, align 4, !tbaa !40
  br label %.backedge93

.backedge93:                                      ; preds = %1883, %1868
  %1887 = icmp sgt i32 %1866, -8
  br i1 %1887, label %._crit_edge416, label %1864

; <label>:1888                                    ; preds = %1844
  %1889 = getelementptr inbounds i32* %gBase.2, i64 %1845
  %1890 = load i32* %1889, align 4, !tbaa !55
  %1891 = sub nsw i32 %zvec.0, %1890
  %1892 = icmp ugt i32 %1891, 257
  br i1 %1892, label %.loopexit, label %1893

; <label>:1893                                    ; preds = %1888
  %1894 = sext i32 %1891 to i64
  %1895 = getelementptr inbounds i32* %gPerm.2, i64 %1894
  %1896 = load i32* %1895, align 4, !tbaa !55
  br label %.loopexit103

.loopexit103:                                     ; preds = %2045, %2053, %.preheader105, %.preheader102, %1893, %2305
  %1897 = phi i32 [ %2256, %2305 ], [ %1841, %1893 ], [ %1963, %.preheader102 ], [ %1963, %.preheader105 ], [ %1963, %2053 ], [ %1963, %2045 ]
  %.pre-phi11202445 = phi i32* [ %.pre-phi11202439, %2305 ], [ %.pre-phi11202447, %1893 ], [ %.pre-phi11202442, %.preheader102 ], [ %.pre-phi11202442, %.preheader105 ], [ %.pre-phi11202442, %2053 ], [ %.pre-phi11202442, %2045 ]
  %.pre-phi11212390 = phi i32* [ %.pre-phi11212384, %2305 ], [ %.pre-phi11212392, %1893 ], [ %.pre-phi11212387, %.preheader102 ], [ %.pre-phi11212387, %.preheader105 ], [ %.pre-phi11212387, %2053 ], [ %.pre-phi11212387, %2045 ]
  %.pre-phi11222335 = phi i32* [ %.pre-phi11222329, %2305 ], [ %.pre-phi11222337, %1893 ], [ %.pre-phi11222332, %.preheader102 ], [ %.pre-phi11222332, %.preheader105 ], [ %.pre-phi11222332, %2053 ], [ %.pre-phi11222332, %2045 ]
  %.pre-phi11232280 = phi i32* [ %.pre-phi11232274, %2305 ], [ %.pre-phi11232282, %1893 ], [ %.pre-phi11232277, %.preheader102 ], [ %.pre-phi11232277, %.preheader105 ], [ %.pre-phi11232277, %2053 ], [ %.pre-phi11232277, %2045 ]
  %.pre-phi11242225 = phi i32* [ %.pre-phi11242219, %2305 ], [ %.pre-phi11242227, %1893 ], [ %.pre-phi11242222, %.preheader102 ], [ %.pre-phi11242222, %.preheader105 ], [ %.pre-phi11242222, %2053 ], [ %.pre-phi11242222, %2045 ]
  %.pre-phi11252170 = phi i32* [ %.pre-phi11252164, %2305 ], [ %.pre-phi11252172, %1893 ], [ %.pre-phi11252167, %.preheader102 ], [ %.pre-phi11252167, %.preheader105 ], [ %.pre-phi11252167, %2053 ], [ %.pre-phi11252167, %2045 ]
  %.pre-phi11262115 = phi i32* [ %.pre-phi11262109, %2305 ], [ %.pre-phi11262117, %1893 ], [ %.pre-phi11262112, %.preheader102 ], [ %.pre-phi11262112, %.preheader105 ], [ %.pre-phi11262112, %2053 ], [ %.pre-phi11262112, %2045 ]
  %.pre-phi11272060 = phi i32* [ %.pre-phi11272054, %2305 ], [ %.pre-phi11272062, %1893 ], [ %.pre-phi11272057, %.preheader102 ], [ %.pre-phi11272057, %.preheader105 ], [ %.pre-phi11272057, %2053 ], [ %.pre-phi11272057, %2045 ]
  %.pre-phi11282005 = phi i32* [ %.pre-phi11281999, %2305 ], [ %.pre-phi11282007, %1893 ], [ %.pre-phi11282002, %.preheader102 ], [ %.pre-phi11282002, %.preheader105 ], [ %.pre-phi11282002, %2053 ], [ %.pre-phi11282002, %2045 ]
  %.pre-phi11291950 = phi i32* [ %.pre-phi11291944, %2305 ], [ %.pre-phi11291952, %1893 ], [ %.pre-phi11291947, %.preheader102 ], [ %.pre-phi11291947, %.preheader105 ], [ %.pre-phi11291947, %2053 ], [ %.pre-phi11291947, %2045 ]
  %.pre-phi11301895 = phi i32* [ %.pre-phi11301889, %2305 ], [ %.pre-phi11301897, %1893 ], [ %.pre-phi11301892, %.preheader102 ], [ %.pre-phi11301892, %.preheader105 ], [ %.pre-phi11301892, %2053 ], [ %.pre-phi11301892, %2045 ]
  %.pre-phi11311840 = phi i32* [ %.pre-phi11311834, %2305 ], [ %.pre-phi11311842, %1893 ], [ %.pre-phi11311837, %.preheader102 ], [ %.pre-phi11311837, %.preheader105 ], [ %.pre-phi11311837, %2053 ], [ %.pre-phi11311837, %2045 ]
  %.pre-phi11321785 = phi i32* [ %.pre-phi11321779, %2305 ], [ %.pre-phi11321787, %1893 ], [ %.pre-phi11321782, %.preheader102 ], [ %.pre-phi11321782, %.preheader105 ], [ %.pre-phi11321782, %2053 ], [ %.pre-phi11321782, %2045 ]
  %.pre-phi11331730 = phi i32* [ %.pre-phi11331724, %2305 ], [ %.pre-phi11331732, %1893 ], [ %.pre-phi11331727, %.preheader102 ], [ %.pre-phi11331727, %.preheader105 ], [ %.pre-phi11331727, %2053 ], [ %.pre-phi11331727, %2045 ]
  %.pre-phi11341675 = phi i32* [ %.pre-phi11341669, %2305 ], [ %.pre-phi11341677, %1893 ], [ %.pre-phi11341672, %.preheader102 ], [ %.pre-phi11341672, %.preheader105 ], [ %.pre-phi11341672, %2053 ], [ %.pre-phi11341672, %2045 ]
  %.pre-phi11351620 = phi i32* [ %.pre-phi11351614, %2305 ], [ %.pre-phi11351622, %1893 ], [ %.pre-phi11351617, %.preheader102 ], [ %.pre-phi11351617, %.preheader105 ], [ %.pre-phi11351617, %2053 ], [ %.pre-phi11351617, %2045 ]
  %.pre-phi11361565 = phi i32* [ %.pre-phi11361559, %2305 ], [ %.pre-phi11361567, %1893 ], [ %.pre-phi11361562, %.preheader102 ], [ %.pre-phi11361562, %.preheader105 ], [ %.pre-phi11361562, %2053 ], [ %.pre-phi11361562, %2045 ]
  %.pre-phi11371510 = phi i32* [ %.pre-phi11371504, %2305 ], [ %.pre-phi11371512, %1893 ], [ %.pre-phi11371507, %.preheader102 ], [ %.pre-phi11371507, %.preheader105 ], [ %.pre-phi11371507, %2053 ], [ %.pre-phi11371507, %2045 ]
  %.pre-phi11381455 = phi i32* [ %.pre-phi11381449, %2305 ], [ %.pre-phi11381457, %1893 ], [ %.pre-phi11381452, %.preheader102 ], [ %.pre-phi11381452, %.preheader105 ], [ %.pre-phi11381452, %2053 ], [ %.pre-phi11381452, %2045 ]
  %.pre-phi11391400 = phi i32* [ %.pre-phi11391394, %2305 ], [ %.pre-phi11391402, %1893 ], [ %.pre-phi11391397, %.preheader102 ], [ %.pre-phi11391397, %.preheader105 ], [ %.pre-phi11391397, %2053 ], [ %.pre-phi11391397, %2045 ]
  %.pre-phi11401345 = phi i32** [ %.pre-phi11401339, %2305 ], [ %.pre-phi11401347, %1893 ], [ %.pre-phi11401342, %.preheader102 ], [ %.pre-phi11401342, %.preheader105 ], [ %.pre-phi11401342, %2053 ], [ %.pre-phi11401342, %2045 ]
  %.pre-phi11411290 = phi i32** [ %.pre-phi11411284, %2305 ], [ %.pre-phi11411292, %1893 ], [ %.pre-phi11411287, %.preheader102 ], [ %.pre-phi11411287, %.preheader105 ], [ %.pre-phi11411287, %2053 ], [ %.pre-phi11411287, %2045 ]
  %.pre-phi11421235 = phi i32** [ %.pre-phi11421229, %2305 ], [ %.pre-phi11421237, %1893 ], [ %.pre-phi11421232, %.preheader102 ], [ %.pre-phi11421232, %.preheader105 ], [ %.pre-phi11421232, %2053 ], [ %.pre-phi11421232, %2045 ]
  %gPerm.4 = phi i32* [ %gPerm.12, %2305 ], [ %gPerm.2, %1893 ], [ %gPerm.8, %.preheader102 ], [ %gPerm.8, %.preheader105 ], [ %gPerm.8, %2053 ], [ %gPerm.8, %2045 ]
  %gBase.4 = phi i32* [ %gBase.12, %2305 ], [ %gBase.2, %1893 ], [ %gBase.8, %.preheader102 ], [ %gBase.8, %.preheader105 ], [ %gBase.8, %2053 ], [ %gBase.8, %2045 ]
  %gLimit.4 = phi i32* [ %gLimit.12, %2305 ], [ %gLimit.2, %1893 ], [ %gLimit.8, %.preheader102 ], [ %gLimit.8, %.preheader105 ], [ %gLimit.8, %2053 ], [ %gLimit.8, %2045 ]
  %gMinlen.4 = phi i32 [ %gMinlen.12, %2305 ], [ %gMinlen.2, %1893 ], [ %gMinlen.8, %.preheader102 ], [ %gMinlen.8, %.preheader105 ], [ %gMinlen.8, %2053 ], [ %gMinlen.8, %2045 ]
  %gSel.4 = phi i32 [ %gSel.12, %2305 ], [ %gSel.2, %1893 ], [ %gSel.8, %.preheader102 ], [ %gSel.8, %.preheader105 ], [ %gSel.8, %2053 ], [ %gSel.8, %2045 ]
  %zj.2 = phi i32 [ %zj.8, %2305 ], [ %zj.0, %1893 ], [ %zj.5, %.preheader102 ], [ %zj.5, %.preheader105 ], [ %zj.5, %2053 ], [ %zj.5, %2045 ]
  %zvec.2 = phi i32 [ %zvec.8, %2305 ], [ %zvec.0, %1893 ], [ %zvec.5, %.preheader102 ], [ %zvec.5, %.preheader105 ], [ %zvec.5, %2053 ], [ %zvec.5, %2045 ]
  %zn.3 = phi i32 [ %zn.9, %2305 ], [ %zn.1, %1893 ], [ %zn.6, %.preheader102 ], [ %zn.6, %.preheader105 ], [ %zn.6, %2053 ], [ %zn.6, %2045 ]
  %curr.9 = phi i32 [ %curr.15, %2305 ], [ %curr.7, %1893 ], [ %curr.12, %.preheader102 ], [ %curr.12, %.preheader105 ], [ %curr.12, %2053 ], [ %curr.12, %2045 ]
  %N.0 = phi i32 [ %N.6, %2305 ], [ %1840, %1893 ], [ %N.3, %.preheader102 ], [ %N.3, %.preheader105 ], [ %N.3, %2053 ], [ %N.3, %2045 ]
  %es.0 = phi i32 [ %es.9, %2305 ], [ %1839, %1893 ], [ %2018, %.preheader102 ], [ %2018, %.preheader105 ], [ %2057, %2053 ], [ %2049, %2045 ]
  %nblock.3 = phi i32 [ %nblock.11, %2305 ], [ %nblock.1, %1893 ], [ %nblock.6, %.preheader102 ], [ %nblock.6, %.preheader105 ], [ %2056, %2053 ], [ %2048, %2045 ]
  %nblockMAX.3 = phi i32 [ %nblockMAX.9, %2305 ], [ %nblockMAX.1, %1893 ], [ %nblockMAX.6, %.preheader102 ], [ %nblockMAX.6, %.preheader105 ], [ %nblockMAX.6, %2053 ], [ %nblockMAX.6, %2045 ]
  %nextSym.0 = phi i32 [ %2308, %2305 ], [ %1896, %1893 ], [ %2015, %.preheader102 ], [ %2015, %.preheader105 ], [ %2015, %2053 ], [ %2015, %2045 ]
  %groupPos.4 = phi i32 [ %groupPos.12, %2305 ], [ %groupPos.2, %1893 ], [ %groupPos.8, %.preheader102 ], [ %groupPos.8, %.preheader105 ], [ %groupPos.8, %2053 ], [ %groupPos.8, %2045 ]
  %groupNo.4 = phi i32 [ %groupNo.12, %2305 ], [ %groupNo.2, %1893 ], [ %groupNo.8, %.preheader102 ], [ %groupNo.8, %.preheader105 ], [ %groupNo.8, %2053 ], [ %groupNo.8, %2045 ]
  %EOB.3 = phi i32 [ %EOB.9, %2305 ], [ %EOB.1, %1893 ], [ %EOB.6, %.preheader102 ], [ %EOB.6, %.preheader105 ], [ %EOB.6, %2053 ], [ %EOB.6, %2045 ]
  %nSelectors.11 = phi i32 [ %nSelectors.17, %2305 ], [ %nSelectors.9, %1893 ], [ %nSelectors.14, %.preheader102 ], [ %nSelectors.14, %.preheader105 ], [ %nSelectors.14, %2053 ], [ %nSelectors.14, %2045 ]
  %nGroups.12 = phi i32 [ %nGroups.18, %2305 ], [ %nGroups.10, %1893 ], [ %nGroups.15, %.preheader102 ], [ %nGroups.15, %.preheader105 ], [ %nGroups.15, %2053 ], [ %nGroups.15, %2045 ]
  %alphaSize.13 = phi i32 [ %alphaSize.19, %2305 ], [ %alphaSize.11, %1893 ], [ %alphaSize.16, %.preheader102 ], [ %alphaSize.16, %.preheader105 ], [ %alphaSize.16, %2053 ], [ %alphaSize.16, %2045 ]
  %t.10 = phi i32 [ %t.16, %2305 ], [ %t.8, %1893 ], [ %t.13, %.preheader102 ], [ %t.13, %.preheader105 ], [ %t.13, %2053 ], [ %t.13, %2045 ]
  %j.17 = phi i32 [ %j.23, %2305 ], [ %j.15, %1893 ], [ %j.20, %.preheader102 ], [ %j.20, %.preheader105 ], [ %j.20, %2053 ], [ %j.20, %2045 ]
  %i.23 = phi i32 [ %i.29, %2305 ], [ %i.21, %1893 ], [ %i.26, %.preheader102 ], [ %i.26, %.preheader105 ], [ %i.26, %2053 ], [ %i.26, %2045 ]
  %1898 = icmp eq i32 %nextSym.0, %EOB.3
  br i1 %1898, label %2309, label %1899

; <label>:1899                                    ; preds = %.loopexit103
  %1900 = icmp ult i32 %nextSym.0, 2
  br i1 %1900, label %.critedge, label %2059

.critedge:                                        ; preds = %1899, %2012
  %1901 = phi i32 [ %1963, %2012 ], [ %1897, %1899 ]
  %.pre-phi11202444 = phi i32* [ %.pre-phi11202442, %2012 ], [ %.pre-phi11202445, %1899 ]
  %.pre-phi11212389 = phi i32* [ %.pre-phi11212387, %2012 ], [ %.pre-phi11212390, %1899 ]
  %.pre-phi11222334 = phi i32* [ %.pre-phi11222332, %2012 ], [ %.pre-phi11222335, %1899 ]
  %.pre-phi11232279 = phi i32* [ %.pre-phi11232277, %2012 ], [ %.pre-phi11232280, %1899 ]
  %.pre-phi11242224 = phi i32* [ %.pre-phi11242222, %2012 ], [ %.pre-phi11242225, %1899 ]
  %.pre-phi11252169 = phi i32* [ %.pre-phi11252167, %2012 ], [ %.pre-phi11252170, %1899 ]
  %.pre-phi11262114 = phi i32* [ %.pre-phi11262112, %2012 ], [ %.pre-phi11262115, %1899 ]
  %.pre-phi11272059 = phi i32* [ %.pre-phi11272057, %2012 ], [ %.pre-phi11272060, %1899 ]
  %.pre-phi11282004 = phi i32* [ %.pre-phi11282002, %2012 ], [ %.pre-phi11282005, %1899 ]
  %.pre-phi11291949 = phi i32* [ %.pre-phi11291947, %2012 ], [ %.pre-phi11291950, %1899 ]
  %.pre-phi11301894 = phi i32* [ %.pre-phi11301892, %2012 ], [ %.pre-phi11301895, %1899 ]
  %.pre-phi11311839 = phi i32* [ %.pre-phi11311837, %2012 ], [ %.pre-phi11311840, %1899 ]
  %.pre-phi11321784 = phi i32* [ %.pre-phi11321782, %2012 ], [ %.pre-phi11321785, %1899 ]
  %.pre-phi11331729 = phi i32* [ %.pre-phi11331727, %2012 ], [ %.pre-phi11331730, %1899 ]
  %.pre-phi11341674 = phi i32* [ %.pre-phi11341672, %2012 ], [ %.pre-phi11341675, %1899 ]
  %.pre-phi11351619 = phi i32* [ %.pre-phi11351617, %2012 ], [ %.pre-phi11351620, %1899 ]
  %.pre-phi11361564 = phi i32* [ %.pre-phi11361562, %2012 ], [ %.pre-phi11361565, %1899 ]
  %.pre-phi11371509 = phi i32* [ %.pre-phi11371507, %2012 ], [ %.pre-phi11371510, %1899 ]
  %.pre-phi11381454 = phi i32* [ %.pre-phi11381452, %2012 ], [ %.pre-phi11381455, %1899 ]
  %.pre-phi11391399 = phi i32* [ %.pre-phi11391397, %2012 ], [ %.pre-phi11391400, %1899 ]
  %.pre-phi11401344 = phi i32** [ %.pre-phi11401342, %2012 ], [ %.pre-phi11401345, %1899 ]
  %.pre-phi11411289 = phi i32** [ %.pre-phi11411287, %2012 ], [ %.pre-phi11411290, %1899 ]
  %.pre-phi11421234 = phi i32** [ %.pre-phi11421232, %2012 ], [ %.pre-phi11421235, %1899 ]
  %gPerm.5 = phi i32* [ %gPerm.8, %2012 ], [ %gPerm.4, %1899 ]
  %gBase.5 = phi i32* [ %gBase.8, %2012 ], [ %gBase.4, %1899 ]
  %gLimit.5 = phi i32* [ %gLimit.8, %2012 ], [ %gLimit.4, %1899 ]
  %gMinlen.5 = phi i32 [ %gMinlen.8, %2012 ], [ %gMinlen.4, %1899 ]
  %gSel.5 = phi i32 [ %gSel.8, %2012 ], [ %gSel.4, %1899 ]
  %zj.3 = phi i32 [ %zj.5, %2012 ], [ %zj.2, %1899 ]
  %zvec.3 = phi i32 [ %zvec.5, %2012 ], [ %zvec.2, %1899 ]
  %zn.4 = phi i32 [ %zn.6, %2012 ], [ %zn.3, %1899 ]
  %curr.10 = phi i32 [ %curr.12, %2012 ], [ %curr.9, %1899 ]
  %N.1 = phi i32 [ %N.3, %2012 ], [ 1, %1899 ]
  %es.1 = phi i32 [ %es.4, %2012 ], [ -1, %1899 ]
  %nblock.4 = phi i32 [ %nblock.6, %2012 ], [ %nblock.3, %1899 ]
  %nblockMAX.4 = phi i32 [ %nblockMAX.6, %2012 ], [ %nblockMAX.3, %1899 ]
  %nextSym.1 = phi i32 [ %2015, %2012 ], [ %nextSym.0, %1899 ]
  %groupPos.5 = phi i32 [ %groupPos.8, %2012 ], [ %groupPos.4, %1899 ]
  %groupNo.5 = phi i32 [ %groupNo.8, %2012 ], [ %groupNo.4, %1899 ]
  %EOB.4 = phi i32 [ %EOB.6, %2012 ], [ %EOB.3, %1899 ]
  %nSelectors.12 = phi i32 [ %nSelectors.14, %2012 ], [ %nSelectors.11, %1899 ]
  %nGroups.13 = phi i32 [ %nGroups.15, %2012 ], [ %nGroups.12, %1899 ]
  %alphaSize.14 = phi i32 [ %alphaSize.16, %2012 ], [ %alphaSize.13, %1899 ]
  %t.11 = phi i32 [ %t.13, %2012 ], [ %t.10, %1899 ]
  %j.18 = phi i32 [ %j.20, %2012 ], [ %j.17, %1899 ]
  %i.24 = phi i32 [ %i.26, %2012 ], [ %i.23, %1899 ]
  switch i32 %nextSym.1, label %1907 [
    i32 0, label %1902
    i32 1, label %1904
  ]

; <label>:1902                                    ; preds = %.critedge
  %1903 = add nsw i32 %es.1, %N.1
  br label %1907

; <label>:1904                                    ; preds = %.critedge
  %1905 = shl i32 %N.1, 1
  %1906 = add nsw i32 %es.1, %1905
  br label %1907

; <label>:1907                                    ; preds = %.critedge, %1904, %1902
  %es.2 = phi i32 [ %1903, %1902 ], [ %1906, %1904 ], [ %es.1, %.critedge ]
  %1908 = shl nsw i32 %N.1, 1
  %1909 = icmp eq i32 %groupPos.5, 0
  br i1 %1909, label %1910, label %1924

; <label>:1910                                    ; preds = %1907
  %1911 = add nsw i32 %groupNo.5, 1
  %1912 = icmp slt i32 %1911, %nSelectors.12
  br i1 %1912, label %1913, label %.loopexit

; <label>:1913                                    ; preds = %1910
  %1914 = sext i32 %1911 to i64
  %1915 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %1914
  %1916 = load i8* %1915, align 1, !tbaa !38
  %1917 = zext i8 %1916 to i32
  %1918 = zext i8 %1916 to i64
  %1919 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %1918
  %1920 = load i32* %1919, align 4, !tbaa !55
  %1921 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %1918, i64 0
  %1922 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %1918, i64 0
  %1923 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %1918, i64 0
  br label %1924

; <label>:1924                                    ; preds = %1913, %1907
  %gPerm.6 = phi i32* [ %1922, %1913 ], [ %gPerm.5, %1907 ]
  %gBase.6 = phi i32* [ %1923, %1913 ], [ %gBase.5, %1907 ]
  %gLimit.6 = phi i32* [ %1921, %1913 ], [ %gLimit.5, %1907 ]
  %gMinlen.6 = phi i32 [ %1920, %1913 ], [ %gMinlen.5, %1907 ]
  %gSel.6 = phi i32 [ %1917, %1913 ], [ %gSel.5, %1907 ]
  %groupPos.6 = phi i32 [ 50, %1913 ], [ %groupPos.5, %1907 ]
  %groupNo.6 = phi i32 [ %1911, %1913 ], [ %groupNo.5, %1907 ]
  %1925 = add nsw i32 %groupPos.6, -1
  br label %1926

; <label>:1926                                    ; preds = %34, %1924
  %1927 = phi i32 [ %1901, %1924 ], [ %.pre767, %34 ]
  %.pre-phi11202443 = phi i32* [ %.pre-phi11202444, %1924 ], [ %.phi.trans.insert738, %34 ]
  %.pre-phi11212388 = phi i32* [ %.pre-phi11212389, %1924 ], [ %.phi.trans.insert740, %34 ]
  %.pre-phi11222333 = phi i32* [ %.pre-phi11222334, %1924 ], [ %.phi.trans.insert742, %34 ]
  %.pre-phi11232278 = phi i32* [ %.pre-phi11232279, %1924 ], [ %.phi.trans.insert744, %34 ]
  %.pre-phi11242223 = phi i32* [ %.pre-phi11242224, %1924 ], [ %.phi.trans.insert746, %34 ]
  %.pre-phi11252168 = phi i32* [ %.pre-phi11252169, %1924 ], [ %.phi.trans.insert748, %34 ]
  %.pre-phi11262113 = phi i32* [ %.pre-phi11262114, %1924 ], [ %.phi.trans.insert750, %34 ]
  %.pre-phi11272058 = phi i32* [ %.pre-phi11272059, %1924 ], [ %.phi.trans.insert752, %34 ]
  %.pre-phi11282003 = phi i32* [ %.pre-phi11282004, %1924 ], [ %.phi.trans.insert754, %34 ]
  %.pre-phi11291948 = phi i32* [ %.pre-phi11291949, %1924 ], [ %.phi.trans.insert756, %34 ]
  %.pre-phi11301893 = phi i32* [ %.pre-phi11301894, %1924 ], [ %.phi.trans.insert758, %34 ]
  %.pre-phi11311838 = phi i32* [ %.pre-phi11311839, %1924 ], [ %.phi.trans.insert760, %34 ]
  %.pre-phi11321783 = phi i32* [ %.pre-phi11321784, %1924 ], [ %.phi.trans.insert762, %34 ]
  %.pre-phi11331728 = phi i32* [ %.pre-phi11331729, %1924 ], [ %.phi.trans.insert764, %34 ]
  %.pre-phi11341673 = phi i32* [ %.pre-phi11341674, %1924 ], [ %.phi.trans.insert766, %34 ]
  %.pre-phi11351618 = phi i32* [ %.pre-phi11351619, %1924 ], [ %.phi.trans.insert768, %34 ]
  %.pre-phi11361563 = phi i32* [ %.pre-phi11361564, %1924 ], [ %.phi.trans.insert770, %34 ]
  %.pre-phi11371508 = phi i32* [ %.pre-phi11371509, %1924 ], [ %.phi.trans.insert772, %34 ]
  %.pre-phi11381453 = phi i32* [ %.pre-phi11381454, %1924 ], [ %.phi.trans.insert774, %34 ]
  %.pre-phi11391398 = phi i32* [ %.pre-phi11391399, %1924 ], [ %.phi.trans.insert776, %34 ]
  %.pre-phi11401343 = phi i32** [ %.pre-phi11401344, %1924 ], [ %.phi.trans.insert778, %34 ]
  %.pre-phi11411288 = phi i32** [ %.pre-phi11411289, %1924 ], [ %.phi.trans.insert780, %34 ]
  %.pre-phi11421233 = phi i32** [ %.pre-phi11421234, %1924 ], [ %.phi.trans.insert782, %34 ]
  %gPerm.7 = phi i32* [ %gPerm.6, %1924 ], [ %.pre783, %34 ]
  %gBase.7 = phi i32* [ %gBase.6, %1924 ], [ %.pre781, %34 ]
  %gLimit.7 = phi i32* [ %gLimit.6, %1924 ], [ %.pre779, %34 ]
  %gMinlen.7 = phi i32 [ %gMinlen.6, %1924 ], [ %.pre777, %34 ]
  %gSel.7 = phi i32 [ %gSel.6, %1924 ], [ %.pre775, %34 ]
  %zj.4 = phi i32 [ %zj.3, %1924 ], [ %.pre773, %34 ]
  %zvec.4 = phi i32 [ %zvec.3, %1924 ], [ %.pre771, %34 ]
  %zn.5 = phi i32 [ %gMinlen.6, %1924 ], [ %.pre769, %34 ]
  %curr.11 = phi i32 [ %curr.10, %1924 ], [ %.pre765, %34 ]
  %N.2 = phi i32 [ %1908, %1924 ], [ %.pre763, %34 ]
  %es.3 = phi i32 [ %es.2, %1924 ], [ %.pre761, %34 ]
  %nblock.5 = phi i32 [ %nblock.4, %1924 ], [ %.pre759, %34 ]
  %nblockMAX.5 = phi i32 [ %nblockMAX.4, %1924 ], [ %.pre757, %34 ]
  %nextSym.2 = phi i32 [ %nextSym.1, %1924 ], [ %.pre755, %34 ]
  %groupPos.7 = phi i32 [ %1925, %1924 ], [ %.pre753, %34 ]
  %groupNo.7 = phi i32 [ %groupNo.6, %1924 ], [ %.pre751, %34 ]
  %EOB.5 = phi i32 [ %EOB.4, %1924 ], [ %.pre749, %34 ]
  %nSelectors.13 = phi i32 [ %nSelectors.12, %1924 ], [ %.pre747, %34 ]
  %nGroups.14 = phi i32 [ %nGroups.13, %1924 ], [ %.pre745, %34 ]
  %alphaSize.15 = phi i32 [ %alphaSize.14, %1924 ], [ %.pre743, %34 ]
  %t.12 = phi i32 [ %t.11, %1924 ], [ %.pre741, %34 ]
  %j.19 = phi i32 [ %j.18, %1924 ], [ %.pre739, %34 ]
  %i.25 = phi i32 [ %i.24, %1924 ], [ %.pre, %34 ]
  store i32 38, i32* %3, align 4, !tbaa !8
  %1928 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %1929 = load i32* %1928, align 4, !tbaa !9
  %1930 = icmp slt i32 %1929, %zn.5
  %1931 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1930, label %.lr.ph446, label %._crit_edge926

._crit_edge926:                                   ; preds = %1926
  %.pre928 = load i32* %1931, align 4, !tbaa !34
  br label %._crit_edge447

.lr.ph446:                                        ; preds = %1926
  %.pre925 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1084 = getelementptr inbounds %struct.bz_stream* %.pre925, i64 0, i32 1
  %.pre1085 = load i32* %.phi.trans.insert1084, align 4, !tbaa !35
  br label %1938

._crit_edge447:                                   ; preds = %.backedge109, %._crit_edge926
  %1932 = phi i32 [ %.pre928, %._crit_edge926 ], [ %1949, %.backedge109 ]
  %.lcssa248 = phi i32 [ %1929, %._crit_edge926 ], [ %1950, %.backedge109 ]
  %1933 = sub nsw i32 %.lcssa248, %zn.5
  %1934 = lshr i32 %1932, %1933
  %1935 = shl i32 1, %zn.5
  %1936 = add nsw i32 %1935, -1
  %1937 = and i32 %1934, %1936
  store i32 %1933, i32* %1928, align 4, !tbaa !9
  br label %1962

; <label>:1938                                    ; preds = %.lr.ph446, %.backedge109
  %1939 = phi i32 [ %.pre1085, %.lr.ph446 ], [ %1952, %.backedge109 ]
  %1940 = phi i32 [ %1929, %.lr.ph446 ], [ %1950, %.backedge109 ]
  %1941 = icmp eq i32 %1939, 0
  br i1 %1941, label %.loopexit, label %1942

; <label>:1942                                    ; preds = %1938
  %1943 = load i32* %1931, align 4, !tbaa !34
  %1944 = shl i32 %1943, 8
  %1945 = getelementptr inbounds %struct.bz_stream* %.pre925, i64 0, i32 0
  %1946 = load i8** %1945, align 8, !tbaa !37
  %1947 = load i8* %1946, align 1, !tbaa !38
  %1948 = zext i8 %1947 to i32
  %1949 = or i32 %1948, %1944
  store i32 %1949, i32* %1931, align 4, !tbaa !34
  %1950 = add nsw i32 %1940, 8
  store i32 %1950, i32* %1928, align 4, !tbaa !9
  %1951 = getelementptr inbounds i8* %1946, i64 1
  store i8* %1951, i8** %1945, align 8, !tbaa !37
  %1952 = add i32 %1939, -1
  store i32 %1952, i32* %.phi.trans.insert1084, align 4, !tbaa !35
  %1953 = getelementptr inbounds %struct.bz_stream* %.pre925, i64 0, i32 2
  %1954 = load i32* %1953, align 4, !tbaa !39
  %1955 = add i32 %1954, 1
  store i32 %1955, i32* %1953, align 4, !tbaa !39
  %1956 = icmp eq i32 %1955, 0
  br i1 %1956, label %1957, label %.backedge109

; <label>:1957                                    ; preds = %1942
  %1958 = getelementptr inbounds %struct.bz_stream* %.pre925, i64 0, i32 3
  %1959 = load i32* %1958, align 4, !tbaa !40
  %1960 = add i32 %1959, 1
  store i32 %1960, i32* %1958, align 4, !tbaa !40
  br label %.backedge109

.backedge109:                                     ; preds = %1957, %1942
  %1961 = icmp slt i32 %1950, %zn.5
  br i1 %1961, label %1938, label %._crit_edge447

; <label>:1962                                    ; preds = %._crit_edge447, %._crit_edge432
  %1963 = phi i32 [ %1927, %._crit_edge447 ], [ %1974, %._crit_edge432 ]
  %.pre-phi11202442 = phi i32* [ %.pre-phi11202443, %._crit_edge447 ], [ %.pre-phi11202441, %._crit_edge432 ]
  %.pre-phi11212387 = phi i32* [ %.pre-phi11212388, %._crit_edge447 ], [ %.pre-phi11212386, %._crit_edge432 ]
  %.pre-phi11222332 = phi i32* [ %.pre-phi11222333, %._crit_edge447 ], [ %.pre-phi11222331, %._crit_edge432 ]
  %.pre-phi11232277 = phi i32* [ %.pre-phi11232278, %._crit_edge447 ], [ %.pre-phi11232276, %._crit_edge432 ]
  %.pre-phi11242222 = phi i32* [ %.pre-phi11242223, %._crit_edge447 ], [ %.pre-phi11242221, %._crit_edge432 ]
  %.pre-phi11252167 = phi i32* [ %.pre-phi11252168, %._crit_edge447 ], [ %.pre-phi11252166, %._crit_edge432 ]
  %.pre-phi11262112 = phi i32* [ %.pre-phi11262113, %._crit_edge447 ], [ %.pre-phi11262111, %._crit_edge432 ]
  %.pre-phi11272057 = phi i32* [ %.pre-phi11272058, %._crit_edge447 ], [ %.pre-phi11272056, %._crit_edge432 ]
  %.pre-phi11282002 = phi i32* [ %.pre-phi11282003, %._crit_edge447 ], [ %.pre-phi11282001, %._crit_edge432 ]
  %.pre-phi11291947 = phi i32* [ %.pre-phi11291948, %._crit_edge447 ], [ %.pre-phi11291946, %._crit_edge432 ]
  %.pre-phi11301892 = phi i32* [ %.pre-phi11301893, %._crit_edge447 ], [ %.pre-phi11301891, %._crit_edge432 ]
  %.pre-phi11311837 = phi i32* [ %.pre-phi11311838, %._crit_edge447 ], [ %.pre-phi11311836, %._crit_edge432 ]
  %.pre-phi11321782 = phi i32* [ %.pre-phi11321783, %._crit_edge447 ], [ %.pre-phi11321781, %._crit_edge432 ]
  %.pre-phi11331727 = phi i32* [ %.pre-phi11331728, %._crit_edge447 ], [ %.pre-phi11331726, %._crit_edge432 ]
  %.pre-phi11341672 = phi i32* [ %.pre-phi11341673, %._crit_edge447 ], [ %.pre-phi11341671, %._crit_edge432 ]
  %.pre-phi11351617 = phi i32* [ %.pre-phi11351618, %._crit_edge447 ], [ %.pre-phi11351616, %._crit_edge432 ]
  %.pre-phi11361562 = phi i32* [ %.pre-phi11361563, %._crit_edge447 ], [ %.pre-phi11361561, %._crit_edge432 ]
  %.pre-phi11371507 = phi i32* [ %.pre-phi11371508, %._crit_edge447 ], [ %.pre-phi11371506, %._crit_edge432 ]
  %.pre-phi11381452 = phi i32* [ %.pre-phi11381453, %._crit_edge447 ], [ %.pre-phi11381451, %._crit_edge432 ]
  %.pre-phi11391397 = phi i32* [ %.pre-phi11391398, %._crit_edge447 ], [ %.pre-phi11391396, %._crit_edge432 ]
  %.pre-phi11401342 = phi i32** [ %.pre-phi11401343, %._crit_edge447 ], [ %.pre-phi11401341, %._crit_edge432 ]
  %.pre-phi11411287 = phi i32** [ %.pre-phi11411288, %._crit_edge447 ], [ %.pre-phi11411286, %._crit_edge432 ]
  %.pre-phi11421232 = phi i32** [ %.pre-phi11421233, %._crit_edge447 ], [ %.pre-phi11421231, %._crit_edge432 ]
  %1964 = phi i32 [ %1933, %._crit_edge447 ], [ %1978, %._crit_edge432 ]
  %gPerm.8 = phi i32* [ %gPerm.7, %._crit_edge447 ], [ %gPerm.9, %._crit_edge432 ]
  %gBase.8 = phi i32* [ %gBase.7, %._crit_edge447 ], [ %gBase.9, %._crit_edge432 ]
  %gLimit.8 = phi i32* [ %gLimit.7, %._crit_edge447 ], [ %gLimit.9, %._crit_edge432 ]
  %gMinlen.8 = phi i32 [ %gMinlen.7, %._crit_edge447 ], [ %gMinlen.9, %._crit_edge432 ]
  %gSel.8 = phi i32 [ %gSel.7, %._crit_edge447 ], [ %gSel.9, %._crit_edge432 ]
  %zj.5 = phi i32 [ %zj.4, %._crit_edge447 ], [ %1980, %._crit_edge432 ]
  %zvec.5 = phi i32 [ %1937, %._crit_edge447 ], [ %1982, %._crit_edge432 ]
  %zn.6 = phi i32 [ %zn.5, %._crit_edge447 ], [ %zn.7, %._crit_edge432 ]
  %curr.12 = phi i32 [ %curr.11, %._crit_edge447 ], [ %curr.13, %._crit_edge432 ]
  %N.3 = phi i32 [ %N.2, %._crit_edge447 ], [ %N.4, %._crit_edge432 ]
  %es.4 = phi i32 [ %es.3, %._crit_edge447 ], [ %es.5, %._crit_edge432 ]
  %nblock.6 = phi i32 [ %nblock.5, %._crit_edge447 ], [ %nblock.7, %._crit_edge432 ]
  %nblockMAX.6 = phi i32 [ %nblockMAX.5, %._crit_edge447 ], [ %nblockMAX.7, %._crit_edge432 ]
  %nextSym.3 = phi i32 [ %nextSym.2, %._crit_edge447 ], [ %nextSym.4, %._crit_edge432 ]
  %groupPos.8 = phi i32 [ %groupPos.7, %._crit_edge447 ], [ %groupPos.9, %._crit_edge432 ]
  %groupNo.8 = phi i32 [ %groupNo.7, %._crit_edge447 ], [ %groupNo.9, %._crit_edge432 ]
  %EOB.6 = phi i32 [ %EOB.5, %._crit_edge447 ], [ %EOB.7, %._crit_edge432 ]
  %nSelectors.14 = phi i32 [ %nSelectors.13, %._crit_edge447 ], [ %nSelectors.15, %._crit_edge432 ]
  %nGroups.15 = phi i32 [ %nGroups.14, %._crit_edge447 ], [ %nGroups.16, %._crit_edge432 ]
  %alphaSize.16 = phi i32 [ %alphaSize.15, %._crit_edge447 ], [ %alphaSize.17, %._crit_edge432 ]
  %t.13 = phi i32 [ %t.12, %._crit_edge447 ], [ %t.14, %._crit_edge432 ]
  %j.20 = phi i32 [ %j.19, %._crit_edge447 ], [ %j.21, %._crit_edge432 ]
  %i.26 = phi i32 [ %i.25, %._crit_edge447 ], [ %i.27, %._crit_edge432 ]
  %1965 = icmp sgt i32 %zn.6, 20
  br i1 %1965, label %.loopexit, label %1966

; <label>:1966                                    ; preds = %1962
  %1967 = sext i32 %zn.6 to i64
  %1968 = getelementptr inbounds i32* %gLimit.8, i64 %1967
  %1969 = load i32* %1968, align 4, !tbaa !55
  %1970 = icmp sgt i32 %zvec.5, %1969
  br i1 %1970, label %1971, label %2007

; <label>:1971                                    ; preds = %1966
  %1972 = add nsw i32 %zn.6, 1
  %.pre1208 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %1973

; <label>:1973                                    ; preds = %._crit_edge929, %1971
  %1974 = phi i32 [ %.pre767, %._crit_edge929 ], [ %1963, %1971 ]
  %.pre-phi11202441 = phi i32* [ %.phi.trans.insert738, %._crit_edge929 ], [ %.pre-phi11202442, %1971 ]
  %.pre-phi11212386 = phi i32* [ %.phi.trans.insert740, %._crit_edge929 ], [ %.pre-phi11212387, %1971 ]
  %.pre-phi11222331 = phi i32* [ %.phi.trans.insert742, %._crit_edge929 ], [ %.pre-phi11222332, %1971 ]
  %.pre-phi11232276 = phi i32* [ %.phi.trans.insert744, %._crit_edge929 ], [ %.pre-phi11232277, %1971 ]
  %.pre-phi11242221 = phi i32* [ %.phi.trans.insert746, %._crit_edge929 ], [ %.pre-phi11242222, %1971 ]
  %.pre-phi11252166 = phi i32* [ %.phi.trans.insert748, %._crit_edge929 ], [ %.pre-phi11252167, %1971 ]
  %.pre-phi11262111 = phi i32* [ %.phi.trans.insert750, %._crit_edge929 ], [ %.pre-phi11262112, %1971 ]
  %.pre-phi11272056 = phi i32* [ %.phi.trans.insert752, %._crit_edge929 ], [ %.pre-phi11272057, %1971 ]
  %.pre-phi11282001 = phi i32* [ %.phi.trans.insert754, %._crit_edge929 ], [ %.pre-phi11282002, %1971 ]
  %.pre-phi11291946 = phi i32* [ %.phi.trans.insert756, %._crit_edge929 ], [ %.pre-phi11291947, %1971 ]
  %.pre-phi11301891 = phi i32* [ %.phi.trans.insert758, %._crit_edge929 ], [ %.pre-phi11301892, %1971 ]
  %.pre-phi11311836 = phi i32* [ %.phi.trans.insert760, %._crit_edge929 ], [ %.pre-phi11311837, %1971 ]
  %.pre-phi11321781 = phi i32* [ %.phi.trans.insert762, %._crit_edge929 ], [ %.pre-phi11321782, %1971 ]
  %.pre-phi11331726 = phi i32* [ %.phi.trans.insert764, %._crit_edge929 ], [ %.pre-phi11331727, %1971 ]
  %.pre-phi11341671 = phi i32* [ %.phi.trans.insert766, %._crit_edge929 ], [ %.pre-phi11341672, %1971 ]
  %.pre-phi11351616 = phi i32* [ %.phi.trans.insert768, %._crit_edge929 ], [ %.pre-phi11351617, %1971 ]
  %.pre-phi11361561 = phi i32* [ %.phi.trans.insert770, %._crit_edge929 ], [ %.pre-phi11361562, %1971 ]
  %.pre-phi11371506 = phi i32* [ %.phi.trans.insert772, %._crit_edge929 ], [ %.pre-phi11371507, %1971 ]
  %.pre-phi11381451 = phi i32* [ %.phi.trans.insert774, %._crit_edge929 ], [ %.pre-phi11381452, %1971 ]
  %.pre-phi11391396 = phi i32* [ %.phi.trans.insert776, %._crit_edge929 ], [ %.pre-phi11391397, %1971 ]
  %.pre-phi11401341 = phi i32** [ %.phi.trans.insert778, %._crit_edge929 ], [ %.pre-phi11401342, %1971 ]
  %.pre-phi11411286 = phi i32** [ %.phi.trans.insert780, %._crit_edge929 ], [ %.pre-phi11411287, %1971 ]
  %.pre-phi11421231 = phi i32** [ %.phi.trans.insert782, %._crit_edge929 ], [ %.pre-phi11421232, %1971 ]
  %.pre-phi1209 = phi i32* [ %.phi.trans.insert930, %._crit_edge929 ], [ %.pre1208, %1971 ]
  %1975 = phi i32 [ %.pre931, %._crit_edge929 ], [ %1964, %1971 ]
  %gPerm.9 = phi i32* [ %.pre783, %._crit_edge929 ], [ %gPerm.8, %1971 ]
  %gBase.9 = phi i32* [ %.pre781, %._crit_edge929 ], [ %gBase.8, %1971 ]
  %gLimit.9 = phi i32* [ %.pre779, %._crit_edge929 ], [ %gLimit.8, %1971 ]
  %gMinlen.9 = phi i32 [ %.pre777, %._crit_edge929 ], [ %gMinlen.8, %1971 ]
  %gSel.9 = phi i32 [ %.pre775, %._crit_edge929 ], [ %gSel.8, %1971 ]
  %zj.6 = phi i32 [ %.pre773, %._crit_edge929 ], [ %zj.5, %1971 ]
  %zvec.6 = phi i32 [ %.pre771, %._crit_edge929 ], [ %zvec.5, %1971 ]
  %zn.7 = phi i32 [ %.pre769, %._crit_edge929 ], [ %1972, %1971 ]
  %curr.13 = phi i32 [ %.pre765, %._crit_edge929 ], [ %curr.12, %1971 ]
  %N.4 = phi i32 [ %.pre763, %._crit_edge929 ], [ %N.3, %1971 ]
  %es.5 = phi i32 [ %.pre761, %._crit_edge929 ], [ %es.4, %1971 ]
  %nblock.7 = phi i32 [ %.pre759, %._crit_edge929 ], [ %nblock.6, %1971 ]
  %nblockMAX.7 = phi i32 [ %.pre757, %._crit_edge929 ], [ %nblockMAX.6, %1971 ]
  %nextSym.4 = phi i32 [ %.pre755, %._crit_edge929 ], [ %nextSym.3, %1971 ]
  %groupPos.9 = phi i32 [ %.pre753, %._crit_edge929 ], [ %groupPos.8, %1971 ]
  %groupNo.9 = phi i32 [ %.pre751, %._crit_edge929 ], [ %groupNo.8, %1971 ]
  %EOB.7 = phi i32 [ %.pre749, %._crit_edge929 ], [ %EOB.6, %1971 ]
  %nSelectors.15 = phi i32 [ %.pre747, %._crit_edge929 ], [ %nSelectors.14, %1971 ]
  %nGroups.16 = phi i32 [ %.pre745, %._crit_edge929 ], [ %nGroups.15, %1971 ]
  %alphaSize.17 = phi i32 [ %.pre743, %._crit_edge929 ], [ %alphaSize.16, %1971 ]
  %t.14 = phi i32 [ %.pre741, %._crit_edge929 ], [ %t.13, %1971 ]
  %j.21 = phi i32 [ %.pre739, %._crit_edge929 ], [ %j.20, %1971 ]
  %i.27 = phi i32 [ %.pre, %._crit_edge929 ], [ %i.26, %1971 ]
  store i32 39, i32* %3, align 4, !tbaa !8
  %1976 = icmp sgt i32 %1975, 0
  %.phi.trans.insert934 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %1976, label %._crit_edge933, label %.lr.ph431

._crit_edge933:                                   ; preds = %1973
  %.pre935 = load i32* %.phi.trans.insert934, align 4, !tbaa !34
  br label %._crit_edge432

.lr.ph431:                                        ; preds = %1973
  %.pre932 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1086 = getelementptr inbounds %struct.bz_stream* %.pre932, i64 0, i32 1
  %.pre1087 = load i32* %.phi.trans.insert1086, align 4, !tbaa !35
  br label %1983

._crit_edge432:                                   ; preds = %.backedge101, %._crit_edge933
  %1977 = phi i32 [ %.pre935, %._crit_edge933 ], [ %1994, %.backedge101 ]
  %.lcssa240 = phi i32 [ %1975, %._crit_edge933 ], [ %1995, %.backedge101 ]
  %1978 = add nsw i32 %.lcssa240, -1
  %1979 = lshr i32 %1977, %1978
  %1980 = and i32 %1979, 1
  store i32 %1978, i32* %.pre-phi1209, align 4, !tbaa !9
  %1981 = shl i32 %zvec.6, 1
  %1982 = or i32 %1980, %1981
  br label %1962

; <label>:1983                                    ; preds = %.lr.ph431, %.backedge101
  %1984 = phi i32 [ %.pre1087, %.lr.ph431 ], [ %1997, %.backedge101 ]
  %1985 = phi i32 [ %1975, %.lr.ph431 ], [ %1995, %.backedge101 ]
  %1986 = icmp eq i32 %1984, 0
  br i1 %1986, label %.loopexit, label %1987

; <label>:1987                                    ; preds = %1983
  %1988 = load i32* %.phi.trans.insert934, align 4, !tbaa !34
  %1989 = shl i32 %1988, 8
  %1990 = getelementptr inbounds %struct.bz_stream* %.pre932, i64 0, i32 0
  %1991 = load i8** %1990, align 8, !tbaa !37
  %1992 = load i8* %1991, align 1, !tbaa !38
  %1993 = zext i8 %1992 to i32
  %1994 = or i32 %1993, %1989
  store i32 %1994, i32* %.phi.trans.insert934, align 4, !tbaa !34
  %1995 = add nsw i32 %1985, 8
  store i32 %1995, i32* %.pre-phi1209, align 4, !tbaa !9
  %1996 = getelementptr inbounds i8* %1991, i64 1
  store i8* %1996, i8** %1990, align 8, !tbaa !37
  %1997 = add i32 %1984, -1
  store i32 %1997, i32* %.phi.trans.insert1086, align 4, !tbaa !35
  %1998 = getelementptr inbounds %struct.bz_stream* %.pre932, i64 0, i32 2
  %1999 = load i32* %1998, align 4, !tbaa !39
  %2000 = add i32 %1999, 1
  store i32 %2000, i32* %1998, align 4, !tbaa !39
  %2001 = icmp eq i32 %2000, 0
  br i1 %2001, label %2002, label %.backedge101

; <label>:2002                                    ; preds = %1987
  %2003 = getelementptr inbounds %struct.bz_stream* %.pre932, i64 0, i32 3
  %2004 = load i32* %2003, align 4, !tbaa !40
  %2005 = add i32 %2004, 1
  store i32 %2005, i32* %2003, align 4, !tbaa !40
  br label %.backedge101

.backedge101:                                     ; preds = %2002, %1987
  %2006 = icmp sgt i32 %1985, -8
  br i1 %2006, label %._crit_edge432, label %1983

; <label>:2007                                    ; preds = %1966
  %2008 = getelementptr inbounds i32* %gBase.8, i64 %1967
  %2009 = load i32* %2008, align 4, !tbaa !55
  %2010 = sub nsw i32 %zvec.5, %2009
  %2011 = icmp ugt i32 %2010, 257
  br i1 %2011, label %.loopexit, label %2012

; <label>:2012                                    ; preds = %2007
  %2013 = sext i32 %2010 to i64
  %2014 = getelementptr inbounds i32* %gPerm.8, i64 %2013
  %2015 = load i32* %2014, align 4, !tbaa !55
  %2016 = icmp ult i32 %2015, 2
  br i1 %2016, label %.critedge, label %2017

; <label>:2017                                    ; preds = %2012
  %2018 = add nsw i32 %es.4, 1
  %2019 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0
  %2020 = load i32* %2019, align 4, !tbaa !55
  %2021 = sext i32 %2020 to i64
  %2022 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2021
  %2023 = load i8* %2022, align 1, !tbaa !38
  %2024 = zext i8 %2023 to i64
  %2025 = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %2024
  %2026 = load i8* %2025, align 1, !tbaa !38
  %2027 = zext i8 %2026 to i64
  %2028 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %2027
  %2029 = load i32* %2028, align 4, !tbaa !55
  %2030 = add nsw i32 %2029, %2018
  store i32 %2030, i32* %2028, align 4, !tbaa !55
  %2031 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10
  %2032 = load i8* %2031, align 1, !tbaa !42
  %2033 = icmp eq i8 %2032, 0
  %2034 = icmp sgt i32 %es.4, -1
  br i1 %2033, label %.preheader102, label %.preheader105

.preheader105:                                    ; preds = %2017
  br i1 %2034, label %.lr.ph442, label %.loopexit103

.lr.ph442:                                        ; preds = %.preheader105
  %2035 = zext i8 %2026 to i16
  %2036 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21
  %2037 = sext i32 %nblock.6 to i64
  %2038 = sext i32 %nblockMAX.6 to i64
  br label %2043

.preheader102:                                    ; preds = %2017
  br i1 %2034, label %.lr.ph437, label %.loopexit103

.lr.ph437:                                        ; preds = %.preheader102
  %2039 = zext i8 %2026 to i32
  %2040 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20
  %2041 = sext i32 %nblock.6 to i64
  %2042 = sext i32 %nblockMAX.6 to i64
  br label %2051

; <label>:2043                                    ; preds = %.lr.ph442, %2045
  %indvars.iv691 = phi i64 [ %2037, %.lr.ph442 ], [ %indvars.iv.next692, %2045 ]
  %nblock.8441 = phi i32 [ %nblock.6, %.lr.ph442 ], [ %2048, %2045 ]
  %es.6440 = phi i32 [ %2018, %.lr.ph442 ], [ %2049, %2045 ]
  %2044 = icmp slt i64 %indvars.iv691, %2038
  br i1 %2044, label %2045, label %.loopexit107

; <label>:2045                                    ; preds = %2043
  %2046 = load i16** %2036, align 8, !tbaa !45
  %2047 = getelementptr inbounds i16* %2046, i64 %indvars.iv691
  store i16 %2035, i16* %2047, align 2, !tbaa !59
  %2048 = add nsw i32 %nblock.8441, 1
  %2049 = add nsw i32 %es.6440, -1
  %2050 = icmp sgt i32 %es.6440, 1
  %indvars.iv.next692 = add nsw i64 %indvars.iv691, 1
  br i1 %2050, label %2043, label %.loopexit103

; <label>:2051                                    ; preds = %.lr.ph437, %2053
  %indvars.iv689 = phi i64 [ %2041, %.lr.ph437 ], [ %indvars.iv.next690, %2053 ]
  %nblock.9436 = phi i32 [ %nblock.6, %.lr.ph437 ], [ %2056, %2053 ]
  %es.7435 = phi i32 [ %2018, %.lr.ph437 ], [ %2057, %2053 ]
  %2052 = icmp slt i64 %indvars.iv689, %2042
  br i1 %2052, label %2053, label %.loopexit104

; <label>:2053                                    ; preds = %2051
  %2054 = load i32** %2040, align 8, !tbaa !47
  %2055 = getelementptr inbounds i32* %2054, i64 %indvars.iv689
  store i32 %2039, i32* %2055, align 4, !tbaa !55
  %2056 = add nsw i32 %nblock.9436, 1
  %2057 = add nsw i32 %es.7435, -1
  %2058 = icmp sgt i32 %es.7435, 1
  %indvars.iv.next690 = add nsw i64 %indvars.iv689, 1
  br i1 %2058, label %2051, label %.loopexit103

; <label>:2059                                    ; preds = %1899
  %2060 = icmp slt i32 %nblock.3, %nblockMAX.3
  br i1 %2060, label %2061, label %.loopexit

; <label>:2061                                    ; preds = %2059
  %2062 = add i32 %nextSym.0, -1
  %2063 = icmp ult i32 %2062, 16
  br i1 %2063, label %2064, label %2110

; <label>:2064                                    ; preds = %2061
  %2065 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0
  %2066 = load i32* %2065, align 4, !tbaa !55
  %2067 = add i32 %2066, %2062
  %2068 = zext i32 %2067 to i64
  %2069 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2068
  %2070 = load i8* %2069, align 1, !tbaa !38
  %2071 = icmp ugt i32 %2062, 3
  br i1 %2071, label %.lr.ph465, label %.lr.ph461

.lr.ph465:                                        ; preds = %2064
  %2072 = add i32 %nextSym.0, 3
  br label %2076

.preheader114:                                    ; preds = %2076
  %2073 = and i32 %2072, 3
  %2074 = icmp eq i32 %2073, 0
  br i1 %2074, label %._crit_edge462, label %.lr.ph461

.lr.ph461:                                        ; preds = %2064, %.preheader114
  %nn.0.lcssa2547 = phi i32 [ %2073, %.preheader114 ], [ %2062, %2064 ]
  %2075 = zext i32 %nn.0.lcssa2547 to i64
  br label %2098

; <label>:2076                                    ; preds = %.lr.ph465, %2076
  %nn.0463 = phi i32 [ %2062, %.lr.ph465 ], [ %2096, %2076 ]
  %2077 = add i32 %nn.0463, %2066
  %2078 = add nsw i32 %2077, -1
  %2079 = sext i32 %2078 to i64
  %2080 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2079
  %2081 = load i8* %2080, align 1, !tbaa !38
  %2082 = sext i32 %2077 to i64
  %2083 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2082
  store i8 %2081, i8* %2083, align 1, !tbaa !38
  %2084 = add nsw i32 %2077, -2
  %2085 = sext i32 %2084 to i64
  %2086 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2085
  %2087 = load i8* %2086, align 1, !tbaa !38
  store i8 %2087, i8* %2080, align 1, !tbaa !38
  %2088 = add nsw i32 %2077, -3
  %2089 = sext i32 %2088 to i64
  %2090 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2089
  %2091 = load i8* %2090, align 1, !tbaa !38
  store i8 %2091, i8* %2086, align 1, !tbaa !38
  %2092 = add nsw i32 %2077, -4
  %2093 = sext i32 %2092 to i64
  %2094 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2093
  %2095 = load i8* %2094, align 1, !tbaa !38
  store i8 %2095, i8* %2090, align 1, !tbaa !38
  %2096 = add i32 %nn.0463, -4
  %2097 = icmp ugt i32 %2096, 3
  br i1 %2097, label %2076, label %.preheader114

; <label>:2098                                    ; preds = %.lr.ph461, %2098
  %indvars.iv693 = phi i64 [ %2075, %.lr.ph461 ], [ %indvars.iv.next694, %2098 ]
  %2099 = trunc i64 %indvars.iv693 to i32
  %2100 = add i32 %2099, %2066
  %2101 = add i32 %2100, -1
  %2102 = zext i32 %2101 to i64
  %2103 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2102
  %2104 = load i8* %2103, align 1, !tbaa !38
  %2105 = zext i32 %2100 to i64
  %2106 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2105
  store i8 %2104, i8* %2106, align 1, !tbaa !38
  %2107 = icmp eq i32 %2099, 1
  %indvars.iv.next694 = add nsw i64 %indvars.iv693, -1
  br i1 %2107, label %._crit_edge462, label %2098

._crit_edge462:                                   ; preds = %2098, %.preheader114
  %2108 = sext i32 %2066 to i64
  %2109 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2108
  store i8 %2070, i8* %2109, align 1, !tbaa !38
  br label %.loopexit117

; <label>:2110                                    ; preds = %2061
  %2111 = lshr i32 %2062, 4
  %2112 = and i32 %2062, 15
  %2113 = zext i32 %2111 to i64
  %2114 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %2113
  %2115 = load i32* %2114, align 4, !tbaa !55
  %2116 = add nsw i32 %2115, %2112
  %2117 = sext i32 %2116 to i64
  %2118 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2117
  %2119 = load i8* %2118, align 1, !tbaa !38
  %2120 = icmp eq i32 %2112, 0
  br i1 %2120, label %._crit_edge478.thread, label %.lr.ph477

._crit_edge478.thread:                            ; preds = %2110
  %2121 = add nsw i32 %2115, 1
  store i32 %2121, i32* %2114, align 4, !tbaa !55
  br label %.lr.ph473.preheader

.lr.ph477:                                        ; preds = %2110
  %2122 = and i32 %2062, 15
  %2123 = add i32 %2115, %2122
  %2124 = sext i32 %2123 to i64
  br label %2125

; <label>:2125                                    ; preds = %.lr.ph477, %2125
  %indvars.iv705 = phi i64 [ %2124, %.lr.ph477 ], [ %indvars.iv.next706, %2125 ]
  %indvars.iv.next706 = add nsw i64 %indvars.iv705, -1
  %2126 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv.next706
  %2127 = load i8* %2126, align 1, !tbaa !38
  %2128 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv705
  store i8 %2127, i8* %2128, align 1, !tbaa !38
  %2129 = load i32* %2114, align 4, !tbaa !55
  %2130 = sext i32 %2129 to i64
  %2131 = icmp sgt i64 %indvars.iv.next706, %2130
  br i1 %2131, label %2125, label %._crit_edge478

._crit_edge478:                                   ; preds = %2125
  %2132 = add nsw i32 %2129, 1
  store i32 %2132, i32* %2114, align 4, !tbaa !55
  %2133 = icmp eq i32 %2111, 0
  br i1 %2133, label %._crit_edge474, label %.lr.ph473.preheader

.lr.ph473.preheader:                              ; preds = %._crit_edge478.thread, %._crit_edge478
  %.ph = phi i32 [ %2132, %._crit_edge478 ], [ %2121, %._crit_edge478.thread ]
  %2134 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %2113
  %2135 = add nsw i32 %.ph, -1
  store i32 %2135, i32* %2134, align 4, !tbaa !55
  %indvars.iv.next7042687 = add nsw i64 %2113, -1
  %2136 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv.next7042687
  %2137 = load i32* %2136, align 4, !tbaa !55
  %2138 = add nsw i32 %2137, 15
  %2139 = sext i32 %2138 to i64
  %2140 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2139
  %2141 = load i8* %2140, align 1, !tbaa !38
  %2142 = sext i32 %2135 to i64
  %2143 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2142
  store i8 %2141, i8* %2143, align 1, !tbaa !38
  %2144 = icmp ugt i32 %2062, 31
  br i1 %2144, label %._crit_edge912, label %._crit_edge474

._crit_edge912:                                   ; preds = %.lr.ph473.preheader, %._crit_edge912
  %2145 = phi i32* [ %2148, %._crit_edge912 ], [ %2136, %.lr.ph473.preheader ]
  %indvars.iv.next7042688 = phi i64 [ %indvars.iv.next704, %._crit_edge912 ], [ %indvars.iv.next7042687, %.lr.ph473.preheader ]
  %.pre913 = load i32* %2145, align 4, !tbaa !55
  %2146 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv.next7042688
  %2147 = add nsw i32 %.pre913, -1
  store i32 %2147, i32* %2146, align 4, !tbaa !55
  %indvars.iv.next704 = add nsw i64 %indvars.iv.next7042688, -1
  %2148 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv.next704
  %2149 = load i32* %2148, align 4, !tbaa !55
  %2150 = add nsw i32 %2149, 15
  %2151 = sext i32 %2150 to i64
  %2152 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2151
  %2153 = load i8* %2152, align 1, !tbaa !38
  %2154 = sext i32 %2147 to i64
  %2155 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2154
  store i8 %2153, i8* %2155, align 1, !tbaa !38
  %2156 = icmp sgt i64 %indvars.iv.next7042688, 1
  br i1 %2156, label %._crit_edge912, label %._crit_edge474

._crit_edge474:                                   ; preds = %.lr.ph473.preheader, %._crit_edge912, %._crit_edge478
  %2157 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 0
  %2158 = load i32* %2157, align 4, !tbaa !55
  %2159 = add nsw i32 %2158, -1
  store i32 %2159, i32* %2157, align 4, !tbaa !55
  %2160 = sext i32 %2159 to i64
  %2161 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2160
  store i8 %2119, i8* %2161, align 1, !tbaa !38
  %2162 = load i32* %2157, align 4, !tbaa !55
  %2163 = icmp eq i32 %2162, 0
  br i1 %2163, label %.preheader115, label %.loopexit117

.preheader115:                                    ; preds = %._crit_edge474, %2174
  %indvars.iv701 = phi i64 [ %indvars.iv.next702, %2174 ], [ 15, %._crit_edge474 ]
  %indvars.iv699 = phi i64 [ %indvars.iv.next700, %2174 ], [ 4095, %._crit_edge474 ]
  %indvars.iv697 = phi i64 [ %indvars.iv.next698, %2174 ], [ 4080, %._crit_edge474 ]
  %2164 = getelementptr inbounds %struct.DState* %s, i64 0, i32 32, i64 %indvars.iv701
  br label %2165

; <label>:2165                                    ; preds = %.preheader115, %2165
  %indvars.iv695 = phi i64 [ %indvars.iv699, %.preheader115 ], [ %indvars.iv.next696, %2165 ]
  %jj32.0467 = phi i32 [ 15, %.preheader115 ], [ %2172, %2165 ]
  %2166 = load i32* %2164, align 4, !tbaa !55
  %2167 = add nsw i32 %2166, %jj32.0467
  %2168 = sext i32 %2167 to i64
  %2169 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %2168
  %2170 = load i8* %2169, align 1, !tbaa !38
  %2171 = getelementptr inbounds %struct.DState* %s, i64 0, i32 31, i64 %indvars.iv695
  store i8 %2170, i8* %2171, align 1, !tbaa !38
  %indvars.iv.next696 = add nsw i64 %indvars.iv695, -1
  %2172 = add nsw i32 %jj32.0467, -1
  %2173 = icmp sgt i32 %jj32.0467, 0
  br i1 %2173, label %2165, label %2174

; <label>:2174                                    ; preds = %2165
  %2175 = trunc i64 %indvars.iv697 to i32
  store i32 %2175, i32* %2164, align 4, !tbaa !55
  %indvars.iv.next702 = add nsw i64 %indvars.iv701, -1
  %2176 = icmp sgt i64 %indvars.iv701, 0
  %indvars.iv.next698 = add nsw i64 %indvars.iv697, -16
  %indvars.iv.next700 = add nsw i64 %indvars.iv699, -16
  br i1 %2176, label %.preheader115, label %.loopexit117

.loopexit117:                                     ; preds = %2174, %._crit_edge474, %._crit_edge462
  %uc.0 = phi i8 [ %2070, %._crit_edge462 ], [ %2119, %._crit_edge474 ], [ %2119, %2174 ]
  %2177 = zext i8 %uc.0 to i64
  %2178 = getelementptr inbounds %struct.DState* %s, i64 0, i32 30, i64 %2177
  %2179 = load i8* %2178, align 1, !tbaa !38
  %2180 = zext i8 %2179 to i64
  %2181 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %2180
  %2182 = load i32* %2181, align 4, !tbaa !55
  %2183 = add nsw i32 %2182, 1
  store i32 %2183, i32* %2181, align 4, !tbaa !55
  %2184 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10
  %2185 = load i8* %2184, align 1, !tbaa !42
  %2186 = icmp eq i8 %2185, 0
  %2187 = load i8* %2178, align 1, !tbaa !38
  br i1 %2186, label %2194, label %2188

; <label>:2188                                    ; preds = %.loopexit117
  %2189 = zext i8 %2187 to i16
  %2190 = sext i32 %nblock.3 to i64
  %2191 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21
  %2192 = load i16** %2191, align 8, !tbaa !45
  %2193 = getelementptr inbounds i16* %2192, i64 %2190
  store i16 %2189, i16* %2193, align 2, !tbaa !59
  br label %2200

; <label>:2194                                    ; preds = %.loopexit117
  %2195 = zext i8 %2187 to i32
  %2196 = sext i32 %nblock.3 to i64
  %2197 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20
  %2198 = load i32** %2197, align 8, !tbaa !47
  %2199 = getelementptr inbounds i32* %2198, i64 %2196
  store i32 %2195, i32* %2199, align 4, !tbaa !55
  br label %2200

; <label>:2200                                    ; preds = %2194, %2188
  %2201 = add nsw i32 %nblock.3, 1
  %2202 = icmp eq i32 %groupPos.4, 0
  br i1 %2202, label %2203, label %2217

; <label>:2203                                    ; preds = %2200
  %2204 = add nsw i32 %groupNo.4, 1
  %2205 = icmp slt i32 %2204, %nSelectors.11
  br i1 %2205, label %2206, label %.loopexit

; <label>:2206                                    ; preds = %2203
  %2207 = sext i32 %2204 to i64
  %2208 = getelementptr inbounds %struct.DState* %s, i64 0, i32 33, i64 %2207
  %2209 = load i8* %2208, align 1, !tbaa !38
  %2210 = zext i8 %2209 to i32
  %2211 = zext i8 %2209 to i64
  %2212 = getelementptr inbounds %struct.DState* %s, i64 0, i32 39, i64 %2211
  %2213 = load i32* %2212, align 4, !tbaa !55
  %2214 = getelementptr inbounds %struct.DState* %s, i64 0, i32 36, i64 %2211, i64 0
  %2215 = getelementptr inbounds %struct.DState* %s, i64 0, i32 38, i64 %2211, i64 0
  %2216 = getelementptr inbounds %struct.DState* %s, i64 0, i32 37, i64 %2211, i64 0
  br label %2217

; <label>:2217                                    ; preds = %2206, %2200
  %gPerm.10 = phi i32* [ %2215, %2206 ], [ %gPerm.4, %2200 ]
  %gBase.10 = phi i32* [ %2216, %2206 ], [ %gBase.4, %2200 ]
  %gLimit.10 = phi i32* [ %2214, %2206 ], [ %gLimit.4, %2200 ]
  %gMinlen.10 = phi i32 [ %2213, %2206 ], [ %gMinlen.4, %2200 ]
  %gSel.10 = phi i32 [ %2210, %2206 ], [ %gSel.4, %2200 ]
  %groupPos.10 = phi i32 [ 50, %2206 ], [ %groupPos.4, %2200 ]
  %groupNo.10 = phi i32 [ %2204, %2206 ], [ %groupNo.4, %2200 ]
  %2218 = add nsw i32 %groupPos.10, -1
  br label %2219

; <label>:2219                                    ; preds = %34, %2217
  %2220 = phi i32 [ %1897, %2217 ], [ %.pre767, %34 ]
  %.pre-phi11202440 = phi i32* [ %.pre-phi11202445, %2217 ], [ %.phi.trans.insert738, %34 ]
  %.pre-phi11212385 = phi i32* [ %.pre-phi11212390, %2217 ], [ %.phi.trans.insert740, %34 ]
  %.pre-phi11222330 = phi i32* [ %.pre-phi11222335, %2217 ], [ %.phi.trans.insert742, %34 ]
  %.pre-phi11232275 = phi i32* [ %.pre-phi11232280, %2217 ], [ %.phi.trans.insert744, %34 ]
  %.pre-phi11242220 = phi i32* [ %.pre-phi11242225, %2217 ], [ %.phi.trans.insert746, %34 ]
  %.pre-phi11252165 = phi i32* [ %.pre-phi11252170, %2217 ], [ %.phi.trans.insert748, %34 ]
  %.pre-phi11262110 = phi i32* [ %.pre-phi11262115, %2217 ], [ %.phi.trans.insert750, %34 ]
  %.pre-phi11272055 = phi i32* [ %.pre-phi11272060, %2217 ], [ %.phi.trans.insert752, %34 ]
  %.pre-phi11282000 = phi i32* [ %.pre-phi11282005, %2217 ], [ %.phi.trans.insert754, %34 ]
  %.pre-phi11291945 = phi i32* [ %.pre-phi11291950, %2217 ], [ %.phi.trans.insert756, %34 ]
  %.pre-phi11301890 = phi i32* [ %.pre-phi11301895, %2217 ], [ %.phi.trans.insert758, %34 ]
  %.pre-phi11311835 = phi i32* [ %.pre-phi11311840, %2217 ], [ %.phi.trans.insert760, %34 ]
  %.pre-phi11321780 = phi i32* [ %.pre-phi11321785, %2217 ], [ %.phi.trans.insert762, %34 ]
  %.pre-phi11331725 = phi i32* [ %.pre-phi11331730, %2217 ], [ %.phi.trans.insert764, %34 ]
  %.pre-phi11341670 = phi i32* [ %.pre-phi11341675, %2217 ], [ %.phi.trans.insert766, %34 ]
  %.pre-phi11351615 = phi i32* [ %.pre-phi11351620, %2217 ], [ %.phi.trans.insert768, %34 ]
  %.pre-phi11361560 = phi i32* [ %.pre-phi11361565, %2217 ], [ %.phi.trans.insert770, %34 ]
  %.pre-phi11371505 = phi i32* [ %.pre-phi11371510, %2217 ], [ %.phi.trans.insert772, %34 ]
  %.pre-phi11381450 = phi i32* [ %.pre-phi11381455, %2217 ], [ %.phi.trans.insert774, %34 ]
  %.pre-phi11391395 = phi i32* [ %.pre-phi11391400, %2217 ], [ %.phi.trans.insert776, %34 ]
  %.pre-phi11401340 = phi i32** [ %.pre-phi11401345, %2217 ], [ %.phi.trans.insert778, %34 ]
  %.pre-phi11411285 = phi i32** [ %.pre-phi11411290, %2217 ], [ %.phi.trans.insert780, %34 ]
  %.pre-phi11421230 = phi i32** [ %.pre-phi11421235, %2217 ], [ %.phi.trans.insert782, %34 ]
  %gPerm.11 = phi i32* [ %gPerm.10, %2217 ], [ %.pre783, %34 ]
  %gBase.11 = phi i32* [ %gBase.10, %2217 ], [ %.pre781, %34 ]
  %gLimit.11 = phi i32* [ %gLimit.10, %2217 ], [ %.pre779, %34 ]
  %gMinlen.11 = phi i32 [ %gMinlen.10, %2217 ], [ %.pre777, %34 ]
  %gSel.11 = phi i32 [ %gSel.10, %2217 ], [ %.pre775, %34 ]
  %zj.7 = phi i32 [ %zj.2, %2217 ], [ %.pre773, %34 ]
  %zvec.7 = phi i32 [ %zvec.2, %2217 ], [ %.pre771, %34 ]
  %zn.8 = phi i32 [ %gMinlen.10, %2217 ], [ %.pre769, %34 ]
  %curr.14 = phi i32 [ %curr.9, %2217 ], [ %.pre765, %34 ]
  %N.5 = phi i32 [ %N.0, %2217 ], [ %.pre763, %34 ]
  %es.8 = phi i32 [ %es.0, %2217 ], [ %.pre761, %34 ]
  %nblock.10 = phi i32 [ %2201, %2217 ], [ %.pre759, %34 ]
  %nblockMAX.8 = phi i32 [ %nblockMAX.3, %2217 ], [ %.pre757, %34 ]
  %nextSym.5 = phi i32 [ %nextSym.0, %2217 ], [ %.pre755, %34 ]
  %groupPos.11 = phi i32 [ %2218, %2217 ], [ %.pre753, %34 ]
  %groupNo.11 = phi i32 [ %groupNo.10, %2217 ], [ %.pre751, %34 ]
  %EOB.8 = phi i32 [ %EOB.3, %2217 ], [ %.pre749, %34 ]
  %nSelectors.16 = phi i32 [ %nSelectors.11, %2217 ], [ %.pre747, %34 ]
  %nGroups.17 = phi i32 [ %nGroups.12, %2217 ], [ %.pre745, %34 ]
  %alphaSize.18 = phi i32 [ %alphaSize.13, %2217 ], [ %.pre743, %34 ]
  %t.15 = phi i32 [ %t.10, %2217 ], [ %.pre741, %34 ]
  %j.22 = phi i32 [ %j.17, %2217 ], [ %.pre739, %34 ]
  %i.28 = phi i32 [ %i.23, %2217 ], [ %.pre, %34 ]
  store i32 40, i32* %3, align 4, !tbaa !8
  %2221 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  %2222 = load i32* %2221, align 4, !tbaa !9
  %2223 = icmp slt i32 %2222, %zn.8
  %2224 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2223, label %.lr.ph456, label %._crit_edge915

._crit_edge915:                                   ; preds = %2219
  %.pre917 = load i32* %2224, align 4, !tbaa !34
  br label %._crit_edge457

.lr.ph456:                                        ; preds = %2219
  %.pre914 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1080 = getelementptr inbounds %struct.bz_stream* %.pre914, i64 0, i32 1
  %.pre1081 = load i32* %.phi.trans.insert1080, align 4, !tbaa !35
  br label %2231

._crit_edge457:                                   ; preds = %.backedge113, %._crit_edge915
  %2225 = phi i32 [ %.pre917, %._crit_edge915 ], [ %2242, %.backedge113 ]
  %.lcssa256 = phi i32 [ %2222, %._crit_edge915 ], [ %2243, %.backedge113 ]
  %2226 = sub nsw i32 %.lcssa256, %zn.8
  %2227 = lshr i32 %2225, %2226
  %2228 = shl i32 1, %zn.8
  %2229 = add nsw i32 %2228, -1
  %2230 = and i32 %2227, %2229
  store i32 %2226, i32* %2221, align 4, !tbaa !9
  br label %2255

; <label>:2231                                    ; preds = %.lr.ph456, %.backedge113
  %2232 = phi i32 [ %.pre1081, %.lr.ph456 ], [ %2245, %.backedge113 ]
  %2233 = phi i32 [ %2222, %.lr.ph456 ], [ %2243, %.backedge113 ]
  %2234 = icmp eq i32 %2232, 0
  br i1 %2234, label %.loopexit, label %2235

; <label>:2235                                    ; preds = %2231
  %2236 = load i32* %2224, align 4, !tbaa !34
  %2237 = shl i32 %2236, 8
  %2238 = getelementptr inbounds %struct.bz_stream* %.pre914, i64 0, i32 0
  %2239 = load i8** %2238, align 8, !tbaa !37
  %2240 = load i8* %2239, align 1, !tbaa !38
  %2241 = zext i8 %2240 to i32
  %2242 = or i32 %2241, %2237
  store i32 %2242, i32* %2224, align 4, !tbaa !34
  %2243 = add nsw i32 %2233, 8
  store i32 %2243, i32* %2221, align 4, !tbaa !9
  %2244 = getelementptr inbounds i8* %2239, i64 1
  store i8* %2244, i8** %2238, align 8, !tbaa !37
  %2245 = add i32 %2232, -1
  store i32 %2245, i32* %.phi.trans.insert1080, align 4, !tbaa !35
  %2246 = getelementptr inbounds %struct.bz_stream* %.pre914, i64 0, i32 2
  %2247 = load i32* %2246, align 4, !tbaa !39
  %2248 = add i32 %2247, 1
  store i32 %2248, i32* %2246, align 4, !tbaa !39
  %2249 = icmp eq i32 %2248, 0
  br i1 %2249, label %2250, label %.backedge113

; <label>:2250                                    ; preds = %2235
  %2251 = getelementptr inbounds %struct.bz_stream* %.pre914, i64 0, i32 3
  %2252 = load i32* %2251, align 4, !tbaa !40
  %2253 = add i32 %2252, 1
  store i32 %2253, i32* %2251, align 4, !tbaa !40
  br label %.backedge113

.backedge113:                                     ; preds = %2250, %2235
  %2254 = icmp slt i32 %2243, %zn.8
  br i1 %2254, label %2231, label %._crit_edge457

; <label>:2255                                    ; preds = %._crit_edge457, %._crit_edge452
  %2256 = phi i32 [ %2267, %._crit_edge452 ], [ %2220, %._crit_edge457 ]
  %.pre-phi11202439 = phi i32* [ %.pre-phi11202438, %._crit_edge452 ], [ %.pre-phi11202440, %._crit_edge457 ]
  %.pre-phi11212384 = phi i32* [ %.pre-phi11212383, %._crit_edge452 ], [ %.pre-phi11212385, %._crit_edge457 ]
  %.pre-phi11222329 = phi i32* [ %.pre-phi11222328, %._crit_edge452 ], [ %.pre-phi11222330, %._crit_edge457 ]
  %.pre-phi11232274 = phi i32* [ %.pre-phi11232273, %._crit_edge452 ], [ %.pre-phi11232275, %._crit_edge457 ]
  %.pre-phi11242219 = phi i32* [ %.pre-phi11242218, %._crit_edge452 ], [ %.pre-phi11242220, %._crit_edge457 ]
  %.pre-phi11252164 = phi i32* [ %.pre-phi11252163, %._crit_edge452 ], [ %.pre-phi11252165, %._crit_edge457 ]
  %.pre-phi11262109 = phi i32* [ %.pre-phi11262108, %._crit_edge452 ], [ %.pre-phi11262110, %._crit_edge457 ]
  %.pre-phi11272054 = phi i32* [ %.pre-phi11272053, %._crit_edge452 ], [ %.pre-phi11272055, %._crit_edge457 ]
  %.pre-phi11281999 = phi i32* [ %.pre-phi11281998, %._crit_edge452 ], [ %.pre-phi11282000, %._crit_edge457 ]
  %.pre-phi11291944 = phi i32* [ %.pre-phi11291943, %._crit_edge452 ], [ %.pre-phi11291945, %._crit_edge457 ]
  %.pre-phi11301889 = phi i32* [ %.pre-phi11301888, %._crit_edge452 ], [ %.pre-phi11301890, %._crit_edge457 ]
  %.pre-phi11311834 = phi i32* [ %.pre-phi11311833, %._crit_edge452 ], [ %.pre-phi11311835, %._crit_edge457 ]
  %.pre-phi11321779 = phi i32* [ %.pre-phi11321778, %._crit_edge452 ], [ %.pre-phi11321780, %._crit_edge457 ]
  %.pre-phi11331724 = phi i32* [ %.pre-phi11331723, %._crit_edge452 ], [ %.pre-phi11331725, %._crit_edge457 ]
  %.pre-phi11341669 = phi i32* [ %.pre-phi11341668, %._crit_edge452 ], [ %.pre-phi11341670, %._crit_edge457 ]
  %.pre-phi11351614 = phi i32* [ %.pre-phi11351613, %._crit_edge452 ], [ %.pre-phi11351615, %._crit_edge457 ]
  %.pre-phi11361559 = phi i32* [ %.pre-phi11361558, %._crit_edge452 ], [ %.pre-phi11361560, %._crit_edge457 ]
  %.pre-phi11371504 = phi i32* [ %.pre-phi11371503, %._crit_edge452 ], [ %.pre-phi11371505, %._crit_edge457 ]
  %.pre-phi11381449 = phi i32* [ %.pre-phi11381448, %._crit_edge452 ], [ %.pre-phi11381450, %._crit_edge457 ]
  %.pre-phi11391394 = phi i32* [ %.pre-phi11391393, %._crit_edge452 ], [ %.pre-phi11391395, %._crit_edge457 ]
  %.pre-phi11401339 = phi i32** [ %.pre-phi11401338, %._crit_edge452 ], [ %.pre-phi11401340, %._crit_edge457 ]
  %.pre-phi11411284 = phi i32** [ %.pre-phi11411283, %._crit_edge452 ], [ %.pre-phi11411285, %._crit_edge457 ]
  %.pre-phi11421229 = phi i32** [ %.pre-phi11421228, %._crit_edge452 ], [ %.pre-phi11421230, %._crit_edge457 ]
  %2257 = phi i32 [ %2271, %._crit_edge452 ], [ %2226, %._crit_edge457 ]
  %gPerm.12 = phi i32* [ %gPerm.13, %._crit_edge452 ], [ %gPerm.11, %._crit_edge457 ]
  %gBase.12 = phi i32* [ %gBase.13, %._crit_edge452 ], [ %gBase.11, %._crit_edge457 ]
  %gLimit.12 = phi i32* [ %gLimit.13, %._crit_edge452 ], [ %gLimit.11, %._crit_edge457 ]
  %gMinlen.12 = phi i32 [ %gMinlen.13, %._crit_edge452 ], [ %gMinlen.11, %._crit_edge457 ]
  %gSel.12 = phi i32 [ %gSel.13, %._crit_edge452 ], [ %gSel.11, %._crit_edge457 ]
  %zj.8 = phi i32 [ %2273, %._crit_edge452 ], [ %zj.7, %._crit_edge457 ]
  %zvec.8 = phi i32 [ %2275, %._crit_edge452 ], [ %2230, %._crit_edge457 ]
  %zn.9 = phi i32 [ %zn.10, %._crit_edge452 ], [ %zn.8, %._crit_edge457 ]
  %curr.15 = phi i32 [ %curr.16, %._crit_edge452 ], [ %curr.14, %._crit_edge457 ]
  %N.6 = phi i32 [ %N.7, %._crit_edge452 ], [ %N.5, %._crit_edge457 ]
  %es.9 = phi i32 [ %es.10, %._crit_edge452 ], [ %es.8, %._crit_edge457 ]
  %nblock.11 = phi i32 [ %nblock.12, %._crit_edge452 ], [ %nblock.10, %._crit_edge457 ]
  %nblockMAX.9 = phi i32 [ %nblockMAX.10, %._crit_edge452 ], [ %nblockMAX.8, %._crit_edge457 ]
  %nextSym.6 = phi i32 [ %nextSym.7, %._crit_edge452 ], [ %nextSym.5, %._crit_edge457 ]
  %groupPos.12 = phi i32 [ %groupPos.13, %._crit_edge452 ], [ %groupPos.11, %._crit_edge457 ]
  %groupNo.12 = phi i32 [ %groupNo.13, %._crit_edge452 ], [ %groupNo.11, %._crit_edge457 ]
  %EOB.9 = phi i32 [ %EOB.10, %._crit_edge452 ], [ %EOB.8, %._crit_edge457 ]
  %nSelectors.17 = phi i32 [ %nSelectors.18, %._crit_edge452 ], [ %nSelectors.16, %._crit_edge457 ]
  %nGroups.18 = phi i32 [ %nGroups.19, %._crit_edge452 ], [ %nGroups.17, %._crit_edge457 ]
  %alphaSize.19 = phi i32 [ %alphaSize.20, %._crit_edge452 ], [ %alphaSize.18, %._crit_edge457 ]
  %t.16 = phi i32 [ %t.17, %._crit_edge452 ], [ %t.15, %._crit_edge457 ]
  %j.23 = phi i32 [ %j.24, %._crit_edge452 ], [ %j.22, %._crit_edge457 ]
  %i.29 = phi i32 [ %i.30, %._crit_edge452 ], [ %i.28, %._crit_edge457 ]
  %2258 = icmp sgt i32 %zn.9, 20
  br i1 %2258, label %.loopexit, label %2259

; <label>:2259                                    ; preds = %2255
  %2260 = sext i32 %zn.9 to i64
  %2261 = getelementptr inbounds i32* %gLimit.12, i64 %2260
  %2262 = load i32* %2261, align 4, !tbaa !55
  %2263 = icmp sgt i32 %zvec.8, %2262
  br i1 %2263, label %2264, label %2300

; <label>:2264                                    ; preds = %2259
  %2265 = add nsw i32 %zn.9, 1
  %.pre1212 = getelementptr inbounds %struct.DState* %s, i64 0, i32 8
  br label %2266

; <label>:2266                                    ; preds = %._crit_edge918, %2264
  %2267 = phi i32 [ %.pre767, %._crit_edge918 ], [ %2256, %2264 ]
  %.pre-phi11202438 = phi i32* [ %.phi.trans.insert738, %._crit_edge918 ], [ %.pre-phi11202439, %2264 ]
  %.pre-phi11212383 = phi i32* [ %.phi.trans.insert740, %._crit_edge918 ], [ %.pre-phi11212384, %2264 ]
  %.pre-phi11222328 = phi i32* [ %.phi.trans.insert742, %._crit_edge918 ], [ %.pre-phi11222329, %2264 ]
  %.pre-phi11232273 = phi i32* [ %.phi.trans.insert744, %._crit_edge918 ], [ %.pre-phi11232274, %2264 ]
  %.pre-phi11242218 = phi i32* [ %.phi.trans.insert746, %._crit_edge918 ], [ %.pre-phi11242219, %2264 ]
  %.pre-phi11252163 = phi i32* [ %.phi.trans.insert748, %._crit_edge918 ], [ %.pre-phi11252164, %2264 ]
  %.pre-phi11262108 = phi i32* [ %.phi.trans.insert750, %._crit_edge918 ], [ %.pre-phi11262109, %2264 ]
  %.pre-phi11272053 = phi i32* [ %.phi.trans.insert752, %._crit_edge918 ], [ %.pre-phi11272054, %2264 ]
  %.pre-phi11281998 = phi i32* [ %.phi.trans.insert754, %._crit_edge918 ], [ %.pre-phi11281999, %2264 ]
  %.pre-phi11291943 = phi i32* [ %.phi.trans.insert756, %._crit_edge918 ], [ %.pre-phi11291944, %2264 ]
  %.pre-phi11301888 = phi i32* [ %.phi.trans.insert758, %._crit_edge918 ], [ %.pre-phi11301889, %2264 ]
  %.pre-phi11311833 = phi i32* [ %.phi.trans.insert760, %._crit_edge918 ], [ %.pre-phi11311834, %2264 ]
  %.pre-phi11321778 = phi i32* [ %.phi.trans.insert762, %._crit_edge918 ], [ %.pre-phi11321779, %2264 ]
  %.pre-phi11331723 = phi i32* [ %.phi.trans.insert764, %._crit_edge918 ], [ %.pre-phi11331724, %2264 ]
  %.pre-phi11341668 = phi i32* [ %.phi.trans.insert766, %._crit_edge918 ], [ %.pre-phi11341669, %2264 ]
  %.pre-phi11351613 = phi i32* [ %.phi.trans.insert768, %._crit_edge918 ], [ %.pre-phi11351614, %2264 ]
  %.pre-phi11361558 = phi i32* [ %.phi.trans.insert770, %._crit_edge918 ], [ %.pre-phi11361559, %2264 ]
  %.pre-phi11371503 = phi i32* [ %.phi.trans.insert772, %._crit_edge918 ], [ %.pre-phi11371504, %2264 ]
  %.pre-phi11381448 = phi i32* [ %.phi.trans.insert774, %._crit_edge918 ], [ %.pre-phi11381449, %2264 ]
  %.pre-phi11391393 = phi i32* [ %.phi.trans.insert776, %._crit_edge918 ], [ %.pre-phi11391394, %2264 ]
  %.pre-phi11401338 = phi i32** [ %.phi.trans.insert778, %._crit_edge918 ], [ %.pre-phi11401339, %2264 ]
  %.pre-phi11411283 = phi i32** [ %.phi.trans.insert780, %._crit_edge918 ], [ %.pre-phi11411284, %2264 ]
  %.pre-phi11421228 = phi i32** [ %.phi.trans.insert782, %._crit_edge918 ], [ %.pre-phi11421229, %2264 ]
  %.pre-phi1213 = phi i32* [ %.phi.trans.insert919, %._crit_edge918 ], [ %.pre1212, %2264 ]
  %2268 = phi i32 [ %.pre920, %._crit_edge918 ], [ %2257, %2264 ]
  %gPerm.13 = phi i32* [ %.pre783, %._crit_edge918 ], [ %gPerm.12, %2264 ]
  %gBase.13 = phi i32* [ %.pre781, %._crit_edge918 ], [ %gBase.12, %2264 ]
  %gLimit.13 = phi i32* [ %.pre779, %._crit_edge918 ], [ %gLimit.12, %2264 ]
  %gMinlen.13 = phi i32 [ %.pre777, %._crit_edge918 ], [ %gMinlen.12, %2264 ]
  %gSel.13 = phi i32 [ %.pre775, %._crit_edge918 ], [ %gSel.12, %2264 ]
  %zj.9 = phi i32 [ %.pre773, %._crit_edge918 ], [ %zj.8, %2264 ]
  %zvec.9 = phi i32 [ %.pre771, %._crit_edge918 ], [ %zvec.8, %2264 ]
  %zn.10 = phi i32 [ %.pre769, %._crit_edge918 ], [ %2265, %2264 ]
  %curr.16 = phi i32 [ %.pre765, %._crit_edge918 ], [ %curr.15, %2264 ]
  %N.7 = phi i32 [ %.pre763, %._crit_edge918 ], [ %N.6, %2264 ]
  %es.10 = phi i32 [ %.pre761, %._crit_edge918 ], [ %es.9, %2264 ]
  %nblock.12 = phi i32 [ %.pre759, %._crit_edge918 ], [ %nblock.11, %2264 ]
  %nblockMAX.10 = phi i32 [ %.pre757, %._crit_edge918 ], [ %nblockMAX.9, %2264 ]
  %nextSym.7 = phi i32 [ %.pre755, %._crit_edge918 ], [ %nextSym.6, %2264 ]
  %groupPos.13 = phi i32 [ %.pre753, %._crit_edge918 ], [ %groupPos.12, %2264 ]
  %groupNo.13 = phi i32 [ %.pre751, %._crit_edge918 ], [ %groupNo.12, %2264 ]
  %EOB.10 = phi i32 [ %.pre749, %._crit_edge918 ], [ %EOB.9, %2264 ]
  %nSelectors.18 = phi i32 [ %.pre747, %._crit_edge918 ], [ %nSelectors.17, %2264 ]
  %nGroups.19 = phi i32 [ %.pre745, %._crit_edge918 ], [ %nGroups.18, %2264 ]
  %alphaSize.20 = phi i32 [ %.pre743, %._crit_edge918 ], [ %alphaSize.19, %2264 ]
  %t.17 = phi i32 [ %.pre741, %._crit_edge918 ], [ %t.16, %2264 ]
  %j.24 = phi i32 [ %.pre739, %._crit_edge918 ], [ %j.23, %2264 ]
  %i.30 = phi i32 [ %.pre, %._crit_edge918 ], [ %i.29, %2264 ]
  store i32 41, i32* %3, align 4, !tbaa !8
  %2269 = icmp sgt i32 %2268, 0
  %.phi.trans.insert923 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2269, label %._crit_edge922, label %.lr.ph451

._crit_edge922:                                   ; preds = %2266
  %.pre924 = load i32* %.phi.trans.insert923, align 4, !tbaa !34
  br label %._crit_edge452

.lr.ph451:                                        ; preds = %2266
  %.pre921 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1082 = getelementptr inbounds %struct.bz_stream* %.pre921, i64 0, i32 1
  %.pre1083 = load i32* %.phi.trans.insert1082, align 4, !tbaa !35
  br label %2276

._crit_edge452:                                   ; preds = %.backedge111, %._crit_edge922
  %2270 = phi i32 [ %.pre924, %._crit_edge922 ], [ %2287, %.backedge111 ]
  %.lcssa252 = phi i32 [ %2268, %._crit_edge922 ], [ %2288, %.backedge111 ]
  %2271 = add nsw i32 %.lcssa252, -1
  %2272 = lshr i32 %2270, %2271
  %2273 = and i32 %2272, 1
  store i32 %2271, i32* %.pre-phi1213, align 4, !tbaa !9
  %2274 = shl i32 %zvec.9, 1
  %2275 = or i32 %2273, %2274
  br label %2255

; <label>:2276                                    ; preds = %.lr.ph451, %.backedge111
  %2277 = phi i32 [ %.pre1083, %.lr.ph451 ], [ %2290, %.backedge111 ]
  %2278 = phi i32 [ %2268, %.lr.ph451 ], [ %2288, %.backedge111 ]
  %2279 = icmp eq i32 %2277, 0
  br i1 %2279, label %.loopexit, label %2280

; <label>:2280                                    ; preds = %2276
  %2281 = load i32* %.phi.trans.insert923, align 4, !tbaa !34
  %2282 = shl i32 %2281, 8
  %2283 = getelementptr inbounds %struct.bz_stream* %.pre921, i64 0, i32 0
  %2284 = load i8** %2283, align 8, !tbaa !37
  %2285 = load i8* %2284, align 1, !tbaa !38
  %2286 = zext i8 %2285 to i32
  %2287 = or i32 %2286, %2282
  store i32 %2287, i32* %.phi.trans.insert923, align 4, !tbaa !34
  %2288 = add nsw i32 %2278, 8
  store i32 %2288, i32* %.pre-phi1213, align 4, !tbaa !9
  %2289 = getelementptr inbounds i8* %2284, i64 1
  store i8* %2289, i8** %2283, align 8, !tbaa !37
  %2290 = add i32 %2277, -1
  store i32 %2290, i32* %.phi.trans.insert1082, align 4, !tbaa !35
  %2291 = getelementptr inbounds %struct.bz_stream* %.pre921, i64 0, i32 2
  %2292 = load i32* %2291, align 4, !tbaa !39
  %2293 = add i32 %2292, 1
  store i32 %2293, i32* %2291, align 4, !tbaa !39
  %2294 = icmp eq i32 %2293, 0
  br i1 %2294, label %2295, label %.backedge111

; <label>:2295                                    ; preds = %2280
  %2296 = getelementptr inbounds %struct.bz_stream* %.pre921, i64 0, i32 3
  %2297 = load i32* %2296, align 4, !tbaa !40
  %2298 = add i32 %2297, 1
  store i32 %2298, i32* %2296, align 4, !tbaa !40
  br label %.backedge111

.backedge111:                                     ; preds = %2295, %2280
  %2299 = icmp sgt i32 %2278, -8
  br i1 %2299, label %._crit_edge452, label %2276

; <label>:2300                                    ; preds = %2259
  %2301 = getelementptr inbounds i32* %gBase.12, i64 %2260
  %2302 = load i32* %2301, align 4, !tbaa !55
  %2303 = sub nsw i32 %zvec.8, %2302
  %2304 = icmp ugt i32 %2303, 257
  br i1 %2304, label %.loopexit, label %2305

; <label>:2305                                    ; preds = %2300
  %2306 = sext i32 %2303 to i64
  %2307 = getelementptr inbounds i32* %gPerm.12, i64 %2306
  %2308 = load i32* %2307, align 4, !tbaa !55
  br label %.loopexit103

; <label>:2309                                    ; preds = %.loopexit103
  %2310 = getelementptr inbounds %struct.DState* %s, i64 0, i32 13
  %2311 = load i32* %2310, align 4, !tbaa !53
  %2312 = icmp sgt i32 %2311, -1
  %2313 = icmp slt i32 %2311, %nblock.3
  %or.cond59 = and i1 %2312, %2313
  br i1 %or.cond59, label %overflow.checked2705, label %.loopexit

overflow.checked2705:                             ; preds = %2309
  %2314 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 0
  store i32 0, i32* %2314, align 4, !tbaa !55
  br label %vector.body2701

vector.body2701:                                  ; preds = %vector.body2701, %overflow.checked2705
  %index2704 = phi i64 [ 1, %overflow.checked2705 ], [ %index.next2709, %vector.body2701 ]
  %2315 = add i64 %index2704, -1
  %2316 = getelementptr inbounds %struct.DState* %s, i64 0, i32 16, i64 %2315
  %2317 = bitcast i32* %2316 to <4 x i32>*
  %wide.load = load <4 x i32>* %2317, align 4, !tbaa !55
  %2318 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %index2704
  %2319 = bitcast i32* %2318 to <4 x i32>*
  store <4 x i32> %wide.load, <4 x i32>* %2319, align 4, !tbaa !55
  %index.next2709 = add i64 %index2704, 4
  %2320 = icmp eq i64 %index.next2709, 257
  br i1 %2320, label %.preheader99, label %vector.body2701, !llvm.loop !61

.preheader99:                                     ; preds = %vector.body2701
  %.pre936 = load i32* %2314, align 4, !tbaa !55
  br label %2321

; <label>:2321                                    ; preds = %2321, %.preheader99
  %2322 = phi i32 [ %.pre936, %.preheader99 ], [ %2325, %2321 ]
  %indvars.iv682 = phi i64 [ 1, %.preheader99 ], [ %indvars.iv.next683, %2321 ]
  %2323 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv682
  %2324 = load i32* %2323, align 4, !tbaa !55
  %2325 = add nsw i32 %2324, %2322
  store i32 %2325, i32* %2323, align 4, !tbaa !55
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1
  %exitcond684 = icmp eq i64 %indvars.iv.next683, 257
  br i1 %exitcond684, label %.preheader97, label %2321

.preheader97:                                     ; preds = %2321, %2330
  %indvars.iv680 = phi i64 [ %indvars.iv.next681, %2330 ], [ 0, %2321 ]
  %2326 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv680
  %2327 = load i32* %2326, align 4, !tbaa !55
  %2328 = icmp slt i32 %2327, 0
  %2329 = icmp sgt i32 %2327, %nblock.3
  %or.cond60 = or i1 %2328, %2329
  br i1 %or.cond60, label %.loopexit98, label %2330

; <label>:2330                                    ; preds = %.preheader97
  %indvars.iv.next681 = add nuw nsw i64 %indvars.iv680, 1
  %2331 = icmp slt i64 %indvars.iv.next681, 257
  br i1 %2331, label %.preheader97, label %2332

; <label>:2332                                    ; preds = %2330
  %2333 = getelementptr inbounds %struct.DState* %s, i64 0, i32 3
  store i32 0, i32* %2333, align 4, !tbaa !62
  %2334 = getelementptr inbounds %struct.DState* %s, i64 0, i32 2
  store i8 0, i8* %2334, align 1, !tbaa !63
  %2335 = getelementptr inbounds %struct.DState* %s, i64 0, i32 25
  store i32 -1, i32* %2335, align 4, !tbaa !64
  store i32 2, i32* %3, align 4, !tbaa !8
  %2336 = getelementptr inbounds %struct.DState* %s, i64 0, i32 12
  %2337 = load i32* %2336, align 4, !tbaa !49
  %2338 = icmp sgt i32 %2337, 1
  br i1 %2338, label %2339, label %2342

; <label>:2339                                    ; preds = %2332
  %2340 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !50
  %2341 = tail call i64 @fwrite(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i64 6, i64 1, %struct.__sFILE* %2340)
  br label %2342

; <label>:2342                                    ; preds = %2339, %2332
  %2343 = getelementptr inbounds %struct.DState* %s, i64 0, i32 10
  %2344 = load i8* %2343, align 1, !tbaa !42
  %2345 = icmp eq i8 %2344, 0
  br i1 %2345, label %.preheader94, label %.preheader96

.preheader94:                                     ; preds = %2342
  %2346 = icmp sgt i32 %nblock.3, 0
  %2347 = getelementptr inbounds %struct.DState* %s, i64 0, i32 20
  br i1 %2346, label %.lr.ph420, label %._crit_edge421

.lr.ph420:                                        ; preds = %.preheader94
  %2348 = add i32 %nblock.3, -1
  br label %2509

.preheader95:                                     ; preds = %.preheader96
  %2349 = icmp sgt i32 %nblock.3, 0
  %2350 = getelementptr inbounds %struct.DState* %s, i64 0, i32 21
  %2351 = getelementptr inbounds %struct.DState* %s, i64 0, i32 22
  br i1 %2349, label %.lr.ph424, label %._crit_edge425

.lr.ph424:                                        ; preds = %.preheader95
  %2352 = add i32 %nblock.3, -1
  br label %2356

.preheader96:                                     ; preds = %2342, %.preheader96
  %indvars.iv676 = phi i64 [ %indvars.iv.next677, %.preheader96 ], [ 0, %2342 ]
  %2353 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %indvars.iv676
  %2354 = load i32* %2353, align 4, !tbaa !55
  %2355 = getelementptr inbounds %struct.DState* %s, i64 0, i32 19, i64 %indvars.iv676
  store i32 %2354, i32* %2355, align 4, !tbaa !55
  %indvars.iv.next677 = add nuw nsw i64 %indvars.iv676, 1
  %exitcond678 = icmp eq i64 %indvars.iv.next677, 257
  br i1 %exitcond678, label %.preheader95, label %.preheader96

; <label>:2356                                    ; preds = %2383, %.lr.ph424
  %indvars.iv672 = phi i64 [ 0, %.lr.ph424 ], [ %indvars.iv.next673, %2383 ]
  %2357 = load i16** %2350, align 8, !tbaa !45
  %2358 = getelementptr inbounds i16* %2357, i64 %indvars.iv672
  %2359 = load i16* %2358, align 2, !tbaa !59
  %2360 = zext i16 %2359 to i64
  %2361 = and i64 %2360, 255
  %2362 = getelementptr inbounds %struct.DState* %s, i64 0, i32 19, i64 %2361
  %2363 = load i32* %2362, align 4, !tbaa !55
  %2364 = trunc i32 %2363 to i16
  store i16 %2364, i16* %2358, align 2, !tbaa !59
  %2365 = trunc i64 %indvars.iv672 to i32
  %2366 = and i32 %2365, 1
  %2367 = icmp eq i32 %2366, 0
  %2368 = ashr i32 %2365, 1
  %2369 = sext i32 %2368 to i64
  %2370 = load i8** %2351, align 8, !tbaa !46
  %2371 = getelementptr inbounds i8* %2370, i64 %2369
  %2372 = load i8* %2371, align 1, !tbaa !38
  %2373 = zext i8 %2372 to i32
  br i1 %2367, label %2374, label %2378

; <label>:2374                                    ; preds = %2356
  %2375 = and i32 %2373, 240
  %2376 = ashr i32 %2363, 16
  %2377 = or i32 %2376, %2375
  br label %2383

; <label>:2378                                    ; preds = %2356
  %2379 = and i32 %2373, 15
  %2380 = ashr i32 %2363, 16
  %2381 = shl nsw i32 %2380, 4
  %2382 = or i32 %2381, %2379
  br label %2383

; <label>:2383                                    ; preds = %2378, %2374
  %storemerge53.in = phi i32 [ %2382, %2378 ], [ %2377, %2374 ]
  %storemerge53 = trunc i32 %storemerge53.in to i8
  store i8 %storemerge53, i8* %2371, align 1, !tbaa !38
  %2384 = load i32* %2362, align 4, !tbaa !55
  %2385 = add nsw i32 %2384, 1
  store i32 %2385, i32* %2362, align 4, !tbaa !55
  %indvars.iv.next673 = add nuw nsw i64 %indvars.iv672, 1
  %exitcond675 = icmp eq i32 %2365, %2352
  br i1 %exitcond675, label %._crit_edge425, label %2356

._crit_edge425:                                   ; preds = %2383, %.preheader95
  %2386 = load i32* %2310, align 4, !tbaa !53
  %2387 = sext i32 %2386 to i64
  %2388 = load i16** %2350, align 8, !tbaa !45
  %2389 = getelementptr inbounds i16* %2388, i64 %2387
  %2390 = load i16* %2389, align 2, !tbaa !59
  %2391 = zext i16 %2390 to i32
  %2392 = ashr i32 %2386, 1
  %2393 = sext i32 %2392 to i64
  %2394 = load i8** %2351, align 8, !tbaa !46
  %2395 = getelementptr inbounds i8* %2394, i64 %2393
  %2396 = load i8* %2395, align 1, !tbaa !38
  %2397 = zext i8 %2396 to i32
  %2398 = shl i32 %2386, 2
  %2399 = and i32 %2398, 4
  %2400 = lshr i32 %2397, %2399
  %2401 = shl i32 %2400, 16
  %2402 = and i32 %2401, 983040
  %2403 = or i32 %2402, %2391
  br label %2404

; <label>:2404                                    ; preds = %._crit_edge937, %._crit_edge425
  %2405 = phi i8* [ %2394, %._crit_edge425 ], [ %.pre939, %._crit_edge937 ]
  %2406 = phi i16* [ %2388, %._crit_edge425 ], [ %.pre938, %._crit_edge937 ]
  %2407 = phi i32 [ %2403, %._crit_edge425 ], [ %2422, %._crit_edge937 ]
  %i.36 = phi i32 [ %2386, %._crit_edge425 ], [ %2407, %._crit_edge937 ]
  %2408 = sext i32 %2407 to i64
  %2409 = getelementptr inbounds i16* %2406, i64 %2408
  %2410 = load i16* %2409, align 2, !tbaa !59
  %2411 = zext i16 %2410 to i32
  %2412 = ashr i32 %2407, 1
  %2413 = sext i32 %2412 to i64
  %2414 = getelementptr inbounds i8* %2405, i64 %2413
  %2415 = load i8* %2414, align 1, !tbaa !38
  %2416 = zext i8 %2415 to i32
  %2417 = shl nsw i32 %2407, 2
  %2418 = and i32 %2417, 4
  %2419 = lshr i32 %2416, %2418
  %2420 = shl i32 %2419, 16
  %2421 = and i32 %2420, 983040
  %2422 = or i32 %2421, %2411
  %2423 = trunc i32 %i.36 to i16
  store i16 %2423, i16* %2409, align 2, !tbaa !59
  %2424 = and i32 %2407, 1
  %2425 = icmp eq i32 %2424, 0
  %2426 = load i8* %2414, align 1, !tbaa !38
  %2427 = zext i8 %2426 to i32
  br i1 %2425, label %2428, label %2432

; <label>:2428                                    ; preds = %2404
  %2429 = and i32 %2427, 240
  %2430 = ashr i32 %i.36, 16
  %2431 = or i32 %2429, %2430
  br label %2437

; <label>:2432                                    ; preds = %2404
  %2433 = and i32 %2427, 15
  %2434 = ashr i32 %i.36, 16
  %2435 = shl nsw i32 %2434, 4
  %2436 = or i32 %2433, %2435
  br label %2437

; <label>:2437                                    ; preds = %2432, %2428
  %storemerge.in = phi i32 [ %2436, %2432 ], [ %2431, %2428 ]
  %storemerge = trunc i32 %storemerge.in to i8
  store i8 %storemerge, i8* %2414, align 1, !tbaa !38
  %2438 = load i32* %2310, align 4, !tbaa !53
  %2439 = icmp eq i32 %2407, %2438
  br i1 %2439, label %2440, label %._crit_edge937

._crit_edge937:                                   ; preds = %2437
  %.pre938 = load i16** %2350, align 8, !tbaa !45
  %.pre939 = load i8** %2351, align 8, !tbaa !46
  br label %2404

; <label>:2440                                    ; preds = %2437
  %2441 = getelementptr inbounds %struct.DState* %s, i64 0, i32 14
  store i32 %2407, i32* %2441, align 4, !tbaa !65
  %2442 = getelementptr inbounds %struct.DState* %s, i64 0, i32 17
  store i32 0, i32* %2442, align 4, !tbaa !66
  %2443 = getelementptr inbounds %struct.DState* %s, i64 0, i32 4
  %2444 = load i8* %2443, align 1, !tbaa !52
  %2445 = icmp eq i8 %2444, 0
  br i1 %2445, label %2486, label %2446

; <label>:2446                                    ; preds = %2440
  %2447 = getelementptr inbounds %struct.DState* %s, i64 0, i32 5
  store i32 0, i32* %2447, align 4, !tbaa !67
  %2448 = getelementptr inbounds %struct.DState* %s, i64 0, i32 6
  store i32 0, i32* %2448, align 4, !tbaa !68
  %2449 = tail call i32 @BZ2_indexIntoF(i32 %2407, i32* %2314) #4
  %2450 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15
  store i32 %2449, i32* %2450, align 4, !tbaa !69
  %2451 = load i32* %2441, align 4, !tbaa !65
  %2452 = zext i32 %2451 to i64
  %2453 = load i16** %2350, align 8, !tbaa !45
  %2454 = getelementptr inbounds i16* %2453, i64 %2452
  %2455 = load i16* %2454, align 2, !tbaa !59
  %2456 = zext i16 %2455 to i32
  %2457 = lshr i32 %2451, 1
  %2458 = zext i32 %2457 to i64
  %2459 = load i8** %2351, align 8, !tbaa !46
  %2460 = getelementptr inbounds i8* %2459, i64 %2458
  %2461 = load i8* %2460, align 1, !tbaa !38
  %2462 = zext i8 %2461 to i32
  %2463 = shl i32 %2451, 2
  %2464 = and i32 %2463, 4
  %2465 = lshr i32 %2462, %2464
  %2466 = shl i32 %2465, 16
  %2467 = and i32 %2466, 983040
  %2468 = or i32 %2467, %2456
  store i32 %2468, i32* %2441, align 4, !tbaa !65
  %2469 = load i32* %2442, align 4, !tbaa !66
  %2470 = add nsw i32 %2469, 1
  store i32 %2470, i32* %2442, align 4, !tbaa !66
  %2471 = load i32* %2447, align 4, !tbaa !67
  %2472 = icmp eq i32 %2471, 0
  br i1 %2472, label %2473, label %2480

; <label>:2473                                    ; preds = %2446
  %2474 = load i32* %2448, align 4, !tbaa !68
  %2475 = sext i32 %2474 to i64
  %2476 = getelementptr inbounds [512 x i32]* @BZ2_rNums, i64 0, i64 %2475
  %2477 = load i32* %2476, align 4, !tbaa !55
  store i32 %2477, i32* %2447, align 4, !tbaa !67
  %2478 = add nsw i32 %2474, 1
  %2479 = icmp eq i32 %2478, 512
  %.61 = select i1 %2479, i32 0, i32 %2478
  store i32 %.61, i32* %2448, align 4, !tbaa !68
  br label %2480

; <label>:2480                                    ; preds = %2473, %2446
  %2481 = phi i32 [ %2477, %2473 ], [ %2471, %2446 ]
  %2482 = add nsw i32 %2481, -1
  store i32 %2482, i32* %2447, align 4, !tbaa !67
  %2483 = icmp eq i32 %2482, 1
  %2484 = zext i1 %2483 to i32
  %2485 = xor i32 %2484, %2449
  store i32 %2485, i32* %2450, align 4, !tbaa !69
  br label %.loopexit

; <label>:2486                                    ; preds = %2440
  %2487 = tail call i32 @BZ2_indexIntoF(i32 %2407, i32* %2314) #4
  %2488 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15
  store i32 %2487, i32* %2488, align 4, !tbaa !69
  %2489 = load i32* %2441, align 4, !tbaa !65
  %2490 = zext i32 %2489 to i64
  %2491 = load i16** %2350, align 8, !tbaa !45
  %2492 = getelementptr inbounds i16* %2491, i64 %2490
  %2493 = load i16* %2492, align 2, !tbaa !59
  %2494 = zext i16 %2493 to i32
  %2495 = lshr i32 %2489, 1
  %2496 = zext i32 %2495 to i64
  %2497 = load i8** %2351, align 8, !tbaa !46
  %2498 = getelementptr inbounds i8* %2497, i64 %2496
  %2499 = load i8* %2498, align 1, !tbaa !38
  %2500 = zext i8 %2499 to i32
  %2501 = shl i32 %2489, 2
  %2502 = and i32 %2501, 4
  %2503 = lshr i32 %2500, %2502
  %2504 = shl i32 %2503, 16
  %2505 = and i32 %2504, 983040
  %2506 = or i32 %2505, %2494
  store i32 %2506, i32* %2441, align 4, !tbaa !65
  %2507 = load i32* %2442, align 4, !tbaa !66
  %2508 = add nsw i32 %2507, 1
  store i32 %2508, i32* %2442, align 4, !tbaa !66
  br label %.loopexit

; <label>:2509                                    ; preds = %2509, %.lr.ph420
  %indvars.iv = phi i64 [ 0, %.lr.ph420 ], [ %indvars.iv.next, %2509 ]
  %2510 = load i32** %2347, align 8, !tbaa !47
  %2511 = getelementptr inbounds i32* %2510, i64 %indvars.iv
  %2512 = load i32* %2511, align 4, !tbaa !55
  %2513 = zext i32 %2512 to i64
  %2514 = trunc i64 %indvars.iv to i32
  %2515 = shl i32 %2514, 8
  %2516 = and i64 %2513, 255
  %2517 = getelementptr inbounds %struct.DState* %s, i64 0, i32 18, i64 %2516
  %2518 = load i32* %2517, align 4, !tbaa !55
  %2519 = sext i32 %2518 to i64
  %2520 = getelementptr inbounds i32* %2510, i64 %2519
  %2521 = load i32* %2520, align 4, !tbaa !55
  %2522 = or i32 %2521, %2515
  store i32 %2522, i32* %2520, align 4, !tbaa !55
  %2523 = load i32* %2517, align 4, !tbaa !55
  %2524 = add nsw i32 %2523, 1
  store i32 %2524, i32* %2517, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %2514, %2348
  br i1 %exitcond, label %._crit_edge421, label %2509

._crit_edge421:                                   ; preds = %2509, %.preheader94
  %i.37.lcssa = phi i32 [ 0, %.preheader94 ], [ %nblock.3, %2509 ]
  %2525 = load i32* %2310, align 4, !tbaa !53
  %2526 = sext i32 %2525 to i64
  %2527 = load i32** %2347, align 8, !tbaa !47
  %2528 = getelementptr inbounds i32* %2527, i64 %2526
  %2529 = load i32* %2528, align 4, !tbaa !55
  %2530 = lshr i32 %2529, 8
  %2531 = getelementptr inbounds %struct.DState* %s, i64 0, i32 14
  store i32 %2530, i32* %2531, align 4, !tbaa !65
  %2532 = getelementptr inbounds %struct.DState* %s, i64 0, i32 17
  store i32 0, i32* %2532, align 4, !tbaa !66
  %2533 = getelementptr inbounds %struct.DState* %s, i64 0, i32 4
  %2534 = load i8* %2533, align 1, !tbaa !52
  %2535 = icmp eq i8 %2534, 0
  br i1 %2535, label %2549, label %2536

; <label>:2536                                    ; preds = %._crit_edge421
  %2537 = getelementptr inbounds %struct.DState* %s, i64 0, i32 5
  store i32 0, i32* %2537, align 4, !tbaa !67
  %2538 = getelementptr inbounds %struct.DState* %s, i64 0, i32 6
  store i32 0, i32* %2538, align 4, !tbaa !68
  %2539 = zext i32 %2530 to i64
  %2540 = getelementptr inbounds i32* %2527, i64 %2539
  %2541 = load i32* %2540, align 4, !tbaa !55
  %2542 = and i32 %2541, 255
  %2543 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15
  store i32 %2542, i32* %2543, align 4, !tbaa !69
  %2544 = lshr i32 %2541, 8
  store i32 %2544, i32* %2531, align 4, !tbaa !65
  store i32 1, i32* %2532, align 4, !tbaa !66
  %2545 = load i32* getelementptr inbounds ([512 x i32]* @BZ2_rNums, i64 0, i64 0), align 4, !tbaa !55
  store i32 1, i32* %2538, align 4, !tbaa !68
  %phitmp = add i32 %2545, -1
  store i32 %phitmp, i32* %2537, align 4, !tbaa !67
  %2546 = icmp eq i32 %phitmp, 1
  %2547 = zext i1 %2546 to i32
  %2548 = xor i32 %2547, %2542
  store i32 %2548, i32* %2543, align 4, !tbaa !69
  br label %.loopexit

; <label>:2549                                    ; preds = %._crit_edge421
  %2550 = zext i32 %2530 to i64
  %2551 = getelementptr inbounds i32* %2527, i64 %2550
  %2552 = load i32* %2551, align 4, !tbaa !55
  %2553 = and i32 %2552, 255
  %2554 = getelementptr inbounds %struct.DState* %s, i64 0, i32 15
  store i32 %2553, i32* %2554, align 4, !tbaa !69
  %2555 = lshr i32 %2552, 8
  store i32 %2555, i32* %2531, align 4, !tbaa !65
  store i32 1, i32* %2532, align 4, !tbaa !66
  br label %.loopexit

; <label>:2556                                    ; preds = %._crit_edge975, %._crit_edge587
  %2557 = phi i32 [ %.pre, %._crit_edge975 ], [ %264, %._crit_edge587 ]
  %2558 = phi i32 [ %.pre739, %._crit_edge975 ], [ %265, %._crit_edge587 ]
  %2559 = phi i32 [ %.pre741, %._crit_edge975 ], [ %266, %._crit_edge587 ]
  %2560 = phi i32 [ %.pre743, %._crit_edge975 ], [ %267, %._crit_edge587 ]
  %2561 = phi i32 [ %.pre745, %._crit_edge975 ], [ %268, %._crit_edge587 ]
  %2562 = phi i32 [ %.pre747, %._crit_edge975 ], [ %269, %._crit_edge587 ]
  %2563 = phi i32 [ %.pre749, %._crit_edge975 ], [ %270, %._crit_edge587 ]
  %2564 = phi i32 [ %.pre751, %._crit_edge975 ], [ %271, %._crit_edge587 ]
  %2565 = phi i32 [ %.pre753, %._crit_edge975 ], [ %272, %._crit_edge587 ]
  %2566 = phi i32 [ %.pre755, %._crit_edge975 ], [ %273, %._crit_edge587 ]
  %2567 = phi i32 [ %.pre757, %._crit_edge975 ], [ %274, %._crit_edge587 ]
  %2568 = phi i32 [ %.pre759, %._crit_edge975 ], [ %275, %._crit_edge587 ]
  %2569 = phi i32 [ %.pre761, %._crit_edge975 ], [ %276, %._crit_edge587 ]
  %2570 = phi i32 [ %.pre763, %._crit_edge975 ], [ %277, %._crit_edge587 ]
  %2571 = phi i32 [ %.pre765, %._crit_edge975 ], [ %278, %._crit_edge587 ]
  %2572 = phi i32 [ %.pre767, %._crit_edge975 ], [ %279, %._crit_edge587 ]
  %2573 = phi i32 [ %.pre769, %._crit_edge975 ], [ %280, %._crit_edge587 ]
  %2574 = phi i32 [ %.pre771, %._crit_edge975 ], [ %281, %._crit_edge587 ]
  %2575 = phi i32 [ %.pre773, %._crit_edge975 ], [ %282, %._crit_edge587 ]
  %2576 = phi i32 [ %.pre775, %._crit_edge975 ], [ %283, %._crit_edge587 ]
  %2577 = phi i32 [ %.pre777, %._crit_edge975 ], [ %284, %._crit_edge587 ]
  %2578 = phi i32* [ %.pre779, %._crit_edge975 ], [ %285, %._crit_edge587 ]
  %2579 = phi i32* [ %.pre781, %._crit_edge975 ], [ %286, %._crit_edge587 ]
  %2580 = phi i32* [ %.pre783, %._crit_edge975 ], [ %287, %._crit_edge587 ]
  %.pre-phi11202486 = phi i32* [ %.phi.trans.insert738, %._crit_edge975 ], [ %.pre-phi11202487, %._crit_edge587 ]
  %.pre-phi11212431 = phi i32* [ %.phi.trans.insert740, %._crit_edge975 ], [ %.pre-phi11212432, %._crit_edge587 ]
  %.pre-phi11222376 = phi i32* [ %.phi.trans.insert742, %._crit_edge975 ], [ %.pre-phi11222377, %._crit_edge587 ]
  %.pre-phi11232321 = phi i32* [ %.phi.trans.insert744, %._crit_edge975 ], [ %.pre-phi11232322, %._crit_edge587 ]
  %.pre-phi11242266 = phi i32* [ %.phi.trans.insert746, %._crit_edge975 ], [ %.pre-phi11242267, %._crit_edge587 ]
  %.pre-phi11252211 = phi i32* [ %.phi.trans.insert748, %._crit_edge975 ], [ %.pre-phi11252212, %._crit_edge587 ]
  %.pre-phi11262156 = phi i32* [ %.phi.trans.insert750, %._crit_edge975 ], [ %.pre-phi11262157, %._crit_edge587 ]
  %.pre-phi11272101 = phi i32* [ %.phi.trans.insert752, %._crit_edge975 ], [ %.pre-phi11272102, %._crit_edge587 ]
  %.pre-phi11282046 = phi i32* [ %.phi.trans.insert754, %._crit_edge975 ], [ %.pre-phi11282047, %._crit_edge587 ]
  %.pre-phi11291991 = phi i32* [ %.phi.trans.insert756, %._crit_edge975 ], [ %.pre-phi11291992, %._crit_edge587 ]
  %.pre-phi11301936 = phi i32* [ %.phi.trans.insert758, %._crit_edge975 ], [ %.pre-phi11301937, %._crit_edge587 ]
  %.pre-phi11311881 = phi i32* [ %.phi.trans.insert760, %._crit_edge975 ], [ %.pre-phi11311882, %._crit_edge587 ]
  %.pre-phi11321826 = phi i32* [ %.phi.trans.insert762, %._crit_edge975 ], [ %.pre-phi11321827, %._crit_edge587 ]
  %.pre-phi11331771 = phi i32* [ %.phi.trans.insert764, %._crit_edge975 ], [ %.pre-phi11331772, %._crit_edge587 ]
  %.pre-phi11341716 = phi i32* [ %.phi.trans.insert766, %._crit_edge975 ], [ %.pre-phi11341717, %._crit_edge587 ]
  %.pre-phi11351661 = phi i32* [ %.phi.trans.insert768, %._crit_edge975 ], [ %.pre-phi11351662, %._crit_edge587 ]
  %.pre-phi11361606 = phi i32* [ %.phi.trans.insert770, %._crit_edge975 ], [ %.pre-phi11361607, %._crit_edge587 ]
  %.pre-phi11371551 = phi i32* [ %.phi.trans.insert772, %._crit_edge975 ], [ %.pre-phi11371552, %._crit_edge587 ]
  %.pre-phi11381496 = phi i32* [ %.phi.trans.insert774, %._crit_edge975 ], [ %.pre-phi11381497, %._crit_edge587 ]
  %.pre-phi11391441 = phi i32* [ %.phi.trans.insert776, %._crit_edge975 ], [ %.pre-phi11391442, %._crit_edge587 ]
  %.pre-phi11401386 = phi i32** [ %.phi.trans.insert778, %._crit_edge975 ], [ %.pre-phi11401387, %._crit_edge587 ]
  %.pre-phi11411331 = phi i32** [ %.phi.trans.insert780, %._crit_edge975 ], [ %.pre-phi11411332, %._crit_edge587 ]
  %.pre-phi11421276 = phi i32** [ %.phi.trans.insert782, %._crit_edge975 ], [ %.pre-phi11421277, %._crit_edge587 ]
  %.pre-phi1151 = phi i32* [ %.phi.trans.insert976, %._crit_edge975 ], [ %.pre-phi1218, %._crit_edge587 ]
  %2581 = phi i32 [ %.pre977, %._crit_edge975 ], [ %291, %._crit_edge587 ]
  store i32 42, i32* %3, align 4, !tbaa !8
  %2582 = icmp sgt i32 %2581, 7
  %.phi.trans.insert980 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2582, label %._crit_edge979, label %.lr.ph380

._crit_edge979:                                   ; preds = %2556
  %.pre981 = load i32* %.phi.trans.insert980, align 4, !tbaa !34
  br label %._crit_edge381

.lr.ph380:                                        ; preds = %2556
  %.pre978 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1102 = getelementptr inbounds %struct.bz_stream* %.pre978, i64 0, i32 1
  %.pre1103 = load i32* %.phi.trans.insert1102, align 4, !tbaa !35
  br label %2588

._crit_edge381:                                   ; preds = %.backedge78, %._crit_edge979
  %2583 = phi i32 [ %.pre981, %._crit_edge979 ], [ %2599, %.backedge78 ]
  %.lcssa202 = phi i32 [ %2581, %._crit_edge979 ], [ %2600, %.backedge78 ]
  %2584 = add nsw i32 %.lcssa202, -8
  %2585 = lshr i32 %2583, %2584
  store i32 %2584, i32* %.pre-phi1151, align 4, !tbaa !9
  %2586 = and i32 %2585, 255
  %2587 = icmp eq i32 %2586, 114
  br i1 %2587, label %2612, label %.loopexit

; <label>:2588                                    ; preds = %.lr.ph380, %.backedge78
  %2589 = phi i32 [ %.pre1103, %.lr.ph380 ], [ %2602, %.backedge78 ]
  %2590 = phi i32 [ %2581, %.lr.ph380 ], [ %2600, %.backedge78 ]
  %2591 = icmp eq i32 %2589, 0
  br i1 %2591, label %.loopexit, label %2592

; <label>:2592                                    ; preds = %2588
  %2593 = load i32* %.phi.trans.insert980, align 4, !tbaa !34
  %2594 = shl i32 %2593, 8
  %2595 = getelementptr inbounds %struct.bz_stream* %.pre978, i64 0, i32 0
  %2596 = load i8** %2595, align 8, !tbaa !37
  %2597 = load i8* %2596, align 1, !tbaa !38
  %2598 = zext i8 %2597 to i32
  %2599 = or i32 %2598, %2594
  store i32 %2599, i32* %.phi.trans.insert980, align 4, !tbaa !34
  %2600 = add nsw i32 %2590, 8
  store i32 %2600, i32* %.pre-phi1151, align 4, !tbaa !9
  %2601 = getelementptr inbounds i8* %2596, i64 1
  store i8* %2601, i8** %2595, align 8, !tbaa !37
  %2602 = add i32 %2589, -1
  store i32 %2602, i32* %.phi.trans.insert1102, align 4, !tbaa !35
  %2603 = getelementptr inbounds %struct.bz_stream* %.pre978, i64 0, i32 2
  %2604 = load i32* %2603, align 4, !tbaa !39
  %2605 = add i32 %2604, 1
  store i32 %2605, i32* %2603, align 4, !tbaa !39
  %2606 = icmp eq i32 %2605, 0
  br i1 %2606, label %2607, label %.backedge78

; <label>:2607                                    ; preds = %2592
  %2608 = getelementptr inbounds %struct.bz_stream* %.pre978, i64 0, i32 3
  %2609 = load i32* %2608, align 4, !tbaa !40
  %2610 = add i32 %2609, 1
  store i32 %2610, i32* %2608, align 4, !tbaa !40
  br label %.backedge78

.backedge78:                                      ; preds = %2607, %2592
  %2611 = icmp sgt i32 %2600, 7
  br i1 %2611, label %._crit_edge381, label %2588

; <label>:2612                                    ; preds = %._crit_edge982, %._crit_edge381
  %2613 = phi i32 [ %.pre, %._crit_edge982 ], [ %2557, %._crit_edge381 ]
  %2614 = phi i32 [ %.pre739, %._crit_edge982 ], [ %2558, %._crit_edge381 ]
  %2615 = phi i32 [ %.pre741, %._crit_edge982 ], [ %2559, %._crit_edge381 ]
  %2616 = phi i32 [ %.pre743, %._crit_edge982 ], [ %2560, %._crit_edge381 ]
  %2617 = phi i32 [ %.pre745, %._crit_edge982 ], [ %2561, %._crit_edge381 ]
  %2618 = phi i32 [ %.pre747, %._crit_edge982 ], [ %2562, %._crit_edge381 ]
  %2619 = phi i32 [ %.pre749, %._crit_edge982 ], [ %2563, %._crit_edge381 ]
  %2620 = phi i32 [ %.pre751, %._crit_edge982 ], [ %2564, %._crit_edge381 ]
  %2621 = phi i32 [ %.pre753, %._crit_edge982 ], [ %2565, %._crit_edge381 ]
  %2622 = phi i32 [ %.pre755, %._crit_edge982 ], [ %2566, %._crit_edge381 ]
  %2623 = phi i32 [ %.pre757, %._crit_edge982 ], [ %2567, %._crit_edge381 ]
  %2624 = phi i32 [ %.pre759, %._crit_edge982 ], [ %2568, %._crit_edge381 ]
  %2625 = phi i32 [ %.pre761, %._crit_edge982 ], [ %2569, %._crit_edge381 ]
  %2626 = phi i32 [ %.pre763, %._crit_edge982 ], [ %2570, %._crit_edge381 ]
  %2627 = phi i32 [ %.pre765, %._crit_edge982 ], [ %2571, %._crit_edge381 ]
  %2628 = phi i32 [ %.pre767, %._crit_edge982 ], [ %2572, %._crit_edge381 ]
  %2629 = phi i32 [ %.pre769, %._crit_edge982 ], [ %2573, %._crit_edge381 ]
  %2630 = phi i32 [ %.pre771, %._crit_edge982 ], [ %2574, %._crit_edge381 ]
  %2631 = phi i32 [ %.pre773, %._crit_edge982 ], [ %2575, %._crit_edge381 ]
  %2632 = phi i32 [ %.pre775, %._crit_edge982 ], [ %2576, %._crit_edge381 ]
  %2633 = phi i32 [ %.pre777, %._crit_edge982 ], [ %2577, %._crit_edge381 ]
  %2634 = phi i32* [ %.pre779, %._crit_edge982 ], [ %2578, %._crit_edge381 ]
  %2635 = phi i32* [ %.pre781, %._crit_edge982 ], [ %2579, %._crit_edge381 ]
  %2636 = phi i32* [ %.pre783, %._crit_edge982 ], [ %2580, %._crit_edge381 ]
  %.pre-phi11202485 = phi i32* [ %.phi.trans.insert738, %._crit_edge982 ], [ %.pre-phi11202486, %._crit_edge381 ]
  %.pre-phi11212430 = phi i32* [ %.phi.trans.insert740, %._crit_edge982 ], [ %.pre-phi11212431, %._crit_edge381 ]
  %.pre-phi11222375 = phi i32* [ %.phi.trans.insert742, %._crit_edge982 ], [ %.pre-phi11222376, %._crit_edge381 ]
  %.pre-phi11232320 = phi i32* [ %.phi.trans.insert744, %._crit_edge982 ], [ %.pre-phi11232321, %._crit_edge381 ]
  %.pre-phi11242265 = phi i32* [ %.phi.trans.insert746, %._crit_edge982 ], [ %.pre-phi11242266, %._crit_edge381 ]
  %.pre-phi11252210 = phi i32* [ %.phi.trans.insert748, %._crit_edge982 ], [ %.pre-phi11252211, %._crit_edge381 ]
  %.pre-phi11262155 = phi i32* [ %.phi.trans.insert750, %._crit_edge982 ], [ %.pre-phi11262156, %._crit_edge381 ]
  %.pre-phi11272100 = phi i32* [ %.phi.trans.insert752, %._crit_edge982 ], [ %.pre-phi11272101, %._crit_edge381 ]
  %.pre-phi11282045 = phi i32* [ %.phi.trans.insert754, %._crit_edge982 ], [ %.pre-phi11282046, %._crit_edge381 ]
  %.pre-phi11291990 = phi i32* [ %.phi.trans.insert756, %._crit_edge982 ], [ %.pre-phi11291991, %._crit_edge381 ]
  %.pre-phi11301935 = phi i32* [ %.phi.trans.insert758, %._crit_edge982 ], [ %.pre-phi11301936, %._crit_edge381 ]
  %.pre-phi11311880 = phi i32* [ %.phi.trans.insert760, %._crit_edge982 ], [ %.pre-phi11311881, %._crit_edge381 ]
  %.pre-phi11321825 = phi i32* [ %.phi.trans.insert762, %._crit_edge982 ], [ %.pre-phi11321826, %._crit_edge381 ]
  %.pre-phi11331770 = phi i32* [ %.phi.trans.insert764, %._crit_edge982 ], [ %.pre-phi11331771, %._crit_edge381 ]
  %.pre-phi11341715 = phi i32* [ %.phi.trans.insert766, %._crit_edge982 ], [ %.pre-phi11341716, %._crit_edge381 ]
  %.pre-phi11351660 = phi i32* [ %.phi.trans.insert768, %._crit_edge982 ], [ %.pre-phi11351661, %._crit_edge381 ]
  %.pre-phi11361605 = phi i32* [ %.phi.trans.insert770, %._crit_edge982 ], [ %.pre-phi11361606, %._crit_edge381 ]
  %.pre-phi11371550 = phi i32* [ %.phi.trans.insert772, %._crit_edge982 ], [ %.pre-phi11371551, %._crit_edge381 ]
  %.pre-phi11381495 = phi i32* [ %.phi.trans.insert774, %._crit_edge982 ], [ %.pre-phi11381496, %._crit_edge381 ]
  %.pre-phi11391440 = phi i32* [ %.phi.trans.insert776, %._crit_edge982 ], [ %.pre-phi11391441, %._crit_edge381 ]
  %.pre-phi11401385 = phi i32** [ %.phi.trans.insert778, %._crit_edge982 ], [ %.pre-phi11401386, %._crit_edge381 ]
  %.pre-phi11411330 = phi i32** [ %.phi.trans.insert780, %._crit_edge982 ], [ %.pre-phi11411331, %._crit_edge381 ]
  %.pre-phi11421275 = phi i32** [ %.phi.trans.insert782, %._crit_edge982 ], [ %.pre-phi11421276, %._crit_edge381 ]
  %.pre-phi1153 = phi i32* [ %.phi.trans.insert983, %._crit_edge982 ], [ %.pre-phi1151, %._crit_edge381 ]
  %2637 = phi i32 [ %.pre984, %._crit_edge982 ], [ %2584, %._crit_edge381 ]
  store i32 43, i32* %3, align 4, !tbaa !8
  %2638 = icmp sgt i32 %2637, 7
  %.phi.trans.insert987 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2638, label %._crit_edge986, label %.lr.ph375

._crit_edge986:                                   ; preds = %2612
  %.pre988 = load i32* %.phi.trans.insert987, align 4, !tbaa !34
  br label %._crit_edge376

.lr.ph375:                                        ; preds = %2612
  %.pre985 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1104 = getelementptr inbounds %struct.bz_stream* %.pre985, i64 0, i32 1
  %.pre1105 = load i32* %.phi.trans.insert1104, align 4, !tbaa !35
  br label %2644

._crit_edge376:                                   ; preds = %.backedge76, %._crit_edge986
  %2639 = phi i32 [ %.pre988, %._crit_edge986 ], [ %2655, %.backedge76 ]
  %.lcssa198 = phi i32 [ %2637, %._crit_edge986 ], [ %2656, %.backedge76 ]
  %2640 = add nsw i32 %.lcssa198, -8
  %2641 = lshr i32 %2639, %2640
  store i32 %2640, i32* %.pre-phi1153, align 4, !tbaa !9
  %2642 = and i32 %2641, 255
  %2643 = icmp eq i32 %2642, 69
  br i1 %2643, label %2668, label %.loopexit

; <label>:2644                                    ; preds = %.lr.ph375, %.backedge76
  %2645 = phi i32 [ %.pre1105, %.lr.ph375 ], [ %2658, %.backedge76 ]
  %2646 = phi i32 [ %2637, %.lr.ph375 ], [ %2656, %.backedge76 ]
  %2647 = icmp eq i32 %2645, 0
  br i1 %2647, label %.loopexit, label %2648

; <label>:2648                                    ; preds = %2644
  %2649 = load i32* %.phi.trans.insert987, align 4, !tbaa !34
  %2650 = shl i32 %2649, 8
  %2651 = getelementptr inbounds %struct.bz_stream* %.pre985, i64 0, i32 0
  %2652 = load i8** %2651, align 8, !tbaa !37
  %2653 = load i8* %2652, align 1, !tbaa !38
  %2654 = zext i8 %2653 to i32
  %2655 = or i32 %2654, %2650
  store i32 %2655, i32* %.phi.trans.insert987, align 4, !tbaa !34
  %2656 = add nsw i32 %2646, 8
  store i32 %2656, i32* %.pre-phi1153, align 4, !tbaa !9
  %2657 = getelementptr inbounds i8* %2652, i64 1
  store i8* %2657, i8** %2651, align 8, !tbaa !37
  %2658 = add i32 %2645, -1
  store i32 %2658, i32* %.phi.trans.insert1104, align 4, !tbaa !35
  %2659 = getelementptr inbounds %struct.bz_stream* %.pre985, i64 0, i32 2
  %2660 = load i32* %2659, align 4, !tbaa !39
  %2661 = add i32 %2660, 1
  store i32 %2661, i32* %2659, align 4, !tbaa !39
  %2662 = icmp eq i32 %2661, 0
  br i1 %2662, label %2663, label %.backedge76

; <label>:2663                                    ; preds = %2648
  %2664 = getelementptr inbounds %struct.bz_stream* %.pre985, i64 0, i32 3
  %2665 = load i32* %2664, align 4, !tbaa !40
  %2666 = add i32 %2665, 1
  store i32 %2666, i32* %2664, align 4, !tbaa !40
  br label %.backedge76

.backedge76:                                      ; preds = %2663, %2648
  %2667 = icmp sgt i32 %2656, 7
  br i1 %2667, label %._crit_edge376, label %2644

; <label>:2668                                    ; preds = %._crit_edge989, %._crit_edge376
  %2669 = phi i32 [ %.pre, %._crit_edge989 ], [ %2613, %._crit_edge376 ]
  %2670 = phi i32 [ %.pre739, %._crit_edge989 ], [ %2614, %._crit_edge376 ]
  %2671 = phi i32 [ %.pre741, %._crit_edge989 ], [ %2615, %._crit_edge376 ]
  %2672 = phi i32 [ %.pre743, %._crit_edge989 ], [ %2616, %._crit_edge376 ]
  %2673 = phi i32 [ %.pre745, %._crit_edge989 ], [ %2617, %._crit_edge376 ]
  %2674 = phi i32 [ %.pre747, %._crit_edge989 ], [ %2618, %._crit_edge376 ]
  %2675 = phi i32 [ %.pre749, %._crit_edge989 ], [ %2619, %._crit_edge376 ]
  %2676 = phi i32 [ %.pre751, %._crit_edge989 ], [ %2620, %._crit_edge376 ]
  %2677 = phi i32 [ %.pre753, %._crit_edge989 ], [ %2621, %._crit_edge376 ]
  %2678 = phi i32 [ %.pre755, %._crit_edge989 ], [ %2622, %._crit_edge376 ]
  %2679 = phi i32 [ %.pre757, %._crit_edge989 ], [ %2623, %._crit_edge376 ]
  %2680 = phi i32 [ %.pre759, %._crit_edge989 ], [ %2624, %._crit_edge376 ]
  %2681 = phi i32 [ %.pre761, %._crit_edge989 ], [ %2625, %._crit_edge376 ]
  %2682 = phi i32 [ %.pre763, %._crit_edge989 ], [ %2626, %._crit_edge376 ]
  %2683 = phi i32 [ %.pre765, %._crit_edge989 ], [ %2627, %._crit_edge376 ]
  %2684 = phi i32 [ %.pre767, %._crit_edge989 ], [ %2628, %._crit_edge376 ]
  %2685 = phi i32 [ %.pre769, %._crit_edge989 ], [ %2629, %._crit_edge376 ]
  %2686 = phi i32 [ %.pre771, %._crit_edge989 ], [ %2630, %._crit_edge376 ]
  %2687 = phi i32 [ %.pre773, %._crit_edge989 ], [ %2631, %._crit_edge376 ]
  %2688 = phi i32 [ %.pre775, %._crit_edge989 ], [ %2632, %._crit_edge376 ]
  %2689 = phi i32 [ %.pre777, %._crit_edge989 ], [ %2633, %._crit_edge376 ]
  %2690 = phi i32* [ %.pre779, %._crit_edge989 ], [ %2634, %._crit_edge376 ]
  %2691 = phi i32* [ %.pre781, %._crit_edge989 ], [ %2635, %._crit_edge376 ]
  %2692 = phi i32* [ %.pre783, %._crit_edge989 ], [ %2636, %._crit_edge376 ]
  %.pre-phi11202484 = phi i32* [ %.phi.trans.insert738, %._crit_edge989 ], [ %.pre-phi11202485, %._crit_edge376 ]
  %.pre-phi11212429 = phi i32* [ %.phi.trans.insert740, %._crit_edge989 ], [ %.pre-phi11212430, %._crit_edge376 ]
  %.pre-phi11222374 = phi i32* [ %.phi.trans.insert742, %._crit_edge989 ], [ %.pre-phi11222375, %._crit_edge376 ]
  %.pre-phi11232319 = phi i32* [ %.phi.trans.insert744, %._crit_edge989 ], [ %.pre-phi11232320, %._crit_edge376 ]
  %.pre-phi11242264 = phi i32* [ %.phi.trans.insert746, %._crit_edge989 ], [ %.pre-phi11242265, %._crit_edge376 ]
  %.pre-phi11252209 = phi i32* [ %.phi.trans.insert748, %._crit_edge989 ], [ %.pre-phi11252210, %._crit_edge376 ]
  %.pre-phi11262154 = phi i32* [ %.phi.trans.insert750, %._crit_edge989 ], [ %.pre-phi11262155, %._crit_edge376 ]
  %.pre-phi11272099 = phi i32* [ %.phi.trans.insert752, %._crit_edge989 ], [ %.pre-phi11272100, %._crit_edge376 ]
  %.pre-phi11282044 = phi i32* [ %.phi.trans.insert754, %._crit_edge989 ], [ %.pre-phi11282045, %._crit_edge376 ]
  %.pre-phi11291989 = phi i32* [ %.phi.trans.insert756, %._crit_edge989 ], [ %.pre-phi11291990, %._crit_edge376 ]
  %.pre-phi11301934 = phi i32* [ %.phi.trans.insert758, %._crit_edge989 ], [ %.pre-phi11301935, %._crit_edge376 ]
  %.pre-phi11311879 = phi i32* [ %.phi.trans.insert760, %._crit_edge989 ], [ %.pre-phi11311880, %._crit_edge376 ]
  %.pre-phi11321824 = phi i32* [ %.phi.trans.insert762, %._crit_edge989 ], [ %.pre-phi11321825, %._crit_edge376 ]
  %.pre-phi11331769 = phi i32* [ %.phi.trans.insert764, %._crit_edge989 ], [ %.pre-phi11331770, %._crit_edge376 ]
  %.pre-phi11341714 = phi i32* [ %.phi.trans.insert766, %._crit_edge989 ], [ %.pre-phi11341715, %._crit_edge376 ]
  %.pre-phi11351659 = phi i32* [ %.phi.trans.insert768, %._crit_edge989 ], [ %.pre-phi11351660, %._crit_edge376 ]
  %.pre-phi11361604 = phi i32* [ %.phi.trans.insert770, %._crit_edge989 ], [ %.pre-phi11361605, %._crit_edge376 ]
  %.pre-phi11371549 = phi i32* [ %.phi.trans.insert772, %._crit_edge989 ], [ %.pre-phi11371550, %._crit_edge376 ]
  %.pre-phi11381494 = phi i32* [ %.phi.trans.insert774, %._crit_edge989 ], [ %.pre-phi11381495, %._crit_edge376 ]
  %.pre-phi11391439 = phi i32* [ %.phi.trans.insert776, %._crit_edge989 ], [ %.pre-phi11391440, %._crit_edge376 ]
  %.pre-phi11401384 = phi i32** [ %.phi.trans.insert778, %._crit_edge989 ], [ %.pre-phi11401385, %._crit_edge376 ]
  %.pre-phi11411329 = phi i32** [ %.phi.trans.insert780, %._crit_edge989 ], [ %.pre-phi11411330, %._crit_edge376 ]
  %.pre-phi11421274 = phi i32** [ %.phi.trans.insert782, %._crit_edge989 ], [ %.pre-phi11421275, %._crit_edge376 ]
  %.pre-phi1155 = phi i32* [ %.phi.trans.insert990, %._crit_edge989 ], [ %.pre-phi1153, %._crit_edge376 ]
  %2693 = phi i32 [ %.pre991, %._crit_edge989 ], [ %2640, %._crit_edge376 ]
  store i32 44, i32* %3, align 4, !tbaa !8
  %2694 = icmp sgt i32 %2693, 7
  %.phi.trans.insert994 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2694, label %._crit_edge993, label %.lr.ph370

._crit_edge993:                                   ; preds = %2668
  %.pre995 = load i32* %.phi.trans.insert994, align 4, !tbaa !34
  br label %._crit_edge371

.lr.ph370:                                        ; preds = %2668
  %.pre992 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1106 = getelementptr inbounds %struct.bz_stream* %.pre992, i64 0, i32 1
  %.pre1107 = load i32* %.phi.trans.insert1106, align 4, !tbaa !35
  br label %2700

._crit_edge371:                                   ; preds = %.backedge74, %._crit_edge993
  %2695 = phi i32 [ %.pre995, %._crit_edge993 ], [ %2711, %.backedge74 ]
  %.lcssa194 = phi i32 [ %2693, %._crit_edge993 ], [ %2712, %.backedge74 ]
  %2696 = add nsw i32 %.lcssa194, -8
  %2697 = lshr i32 %2695, %2696
  store i32 %2696, i32* %.pre-phi1155, align 4, !tbaa !9
  %2698 = and i32 %2697, 255
  %2699 = icmp eq i32 %2698, 56
  br i1 %2699, label %2724, label %.loopexit

; <label>:2700                                    ; preds = %.lr.ph370, %.backedge74
  %2701 = phi i32 [ %.pre1107, %.lr.ph370 ], [ %2714, %.backedge74 ]
  %2702 = phi i32 [ %2693, %.lr.ph370 ], [ %2712, %.backedge74 ]
  %2703 = icmp eq i32 %2701, 0
  br i1 %2703, label %.loopexit, label %2704

; <label>:2704                                    ; preds = %2700
  %2705 = load i32* %.phi.trans.insert994, align 4, !tbaa !34
  %2706 = shl i32 %2705, 8
  %2707 = getelementptr inbounds %struct.bz_stream* %.pre992, i64 0, i32 0
  %2708 = load i8** %2707, align 8, !tbaa !37
  %2709 = load i8* %2708, align 1, !tbaa !38
  %2710 = zext i8 %2709 to i32
  %2711 = or i32 %2710, %2706
  store i32 %2711, i32* %.phi.trans.insert994, align 4, !tbaa !34
  %2712 = add nsw i32 %2702, 8
  store i32 %2712, i32* %.pre-phi1155, align 4, !tbaa !9
  %2713 = getelementptr inbounds i8* %2708, i64 1
  store i8* %2713, i8** %2707, align 8, !tbaa !37
  %2714 = add i32 %2701, -1
  store i32 %2714, i32* %.phi.trans.insert1106, align 4, !tbaa !35
  %2715 = getelementptr inbounds %struct.bz_stream* %.pre992, i64 0, i32 2
  %2716 = load i32* %2715, align 4, !tbaa !39
  %2717 = add i32 %2716, 1
  store i32 %2717, i32* %2715, align 4, !tbaa !39
  %2718 = icmp eq i32 %2717, 0
  br i1 %2718, label %2719, label %.backedge74

; <label>:2719                                    ; preds = %2704
  %2720 = getelementptr inbounds %struct.bz_stream* %.pre992, i64 0, i32 3
  %2721 = load i32* %2720, align 4, !tbaa !40
  %2722 = add i32 %2721, 1
  store i32 %2722, i32* %2720, align 4, !tbaa !40
  br label %.backedge74

.backedge74:                                      ; preds = %2719, %2704
  %2723 = icmp sgt i32 %2712, 7
  br i1 %2723, label %._crit_edge371, label %2700

; <label>:2724                                    ; preds = %._crit_edge996, %._crit_edge371
  %2725 = phi i32 [ %.pre, %._crit_edge996 ], [ %2669, %._crit_edge371 ]
  %2726 = phi i32 [ %.pre739, %._crit_edge996 ], [ %2670, %._crit_edge371 ]
  %2727 = phi i32 [ %.pre741, %._crit_edge996 ], [ %2671, %._crit_edge371 ]
  %2728 = phi i32 [ %.pre743, %._crit_edge996 ], [ %2672, %._crit_edge371 ]
  %2729 = phi i32 [ %.pre745, %._crit_edge996 ], [ %2673, %._crit_edge371 ]
  %2730 = phi i32 [ %.pre747, %._crit_edge996 ], [ %2674, %._crit_edge371 ]
  %2731 = phi i32 [ %.pre749, %._crit_edge996 ], [ %2675, %._crit_edge371 ]
  %2732 = phi i32 [ %.pre751, %._crit_edge996 ], [ %2676, %._crit_edge371 ]
  %2733 = phi i32 [ %.pre753, %._crit_edge996 ], [ %2677, %._crit_edge371 ]
  %2734 = phi i32 [ %.pre755, %._crit_edge996 ], [ %2678, %._crit_edge371 ]
  %2735 = phi i32 [ %.pre757, %._crit_edge996 ], [ %2679, %._crit_edge371 ]
  %2736 = phi i32 [ %.pre759, %._crit_edge996 ], [ %2680, %._crit_edge371 ]
  %2737 = phi i32 [ %.pre761, %._crit_edge996 ], [ %2681, %._crit_edge371 ]
  %2738 = phi i32 [ %.pre763, %._crit_edge996 ], [ %2682, %._crit_edge371 ]
  %2739 = phi i32 [ %.pre765, %._crit_edge996 ], [ %2683, %._crit_edge371 ]
  %2740 = phi i32 [ %.pre767, %._crit_edge996 ], [ %2684, %._crit_edge371 ]
  %2741 = phi i32 [ %.pre769, %._crit_edge996 ], [ %2685, %._crit_edge371 ]
  %2742 = phi i32 [ %.pre771, %._crit_edge996 ], [ %2686, %._crit_edge371 ]
  %2743 = phi i32 [ %.pre773, %._crit_edge996 ], [ %2687, %._crit_edge371 ]
  %2744 = phi i32 [ %.pre775, %._crit_edge996 ], [ %2688, %._crit_edge371 ]
  %2745 = phi i32 [ %.pre777, %._crit_edge996 ], [ %2689, %._crit_edge371 ]
  %2746 = phi i32* [ %.pre779, %._crit_edge996 ], [ %2690, %._crit_edge371 ]
  %2747 = phi i32* [ %.pre781, %._crit_edge996 ], [ %2691, %._crit_edge371 ]
  %2748 = phi i32* [ %.pre783, %._crit_edge996 ], [ %2692, %._crit_edge371 ]
  %.pre-phi11202483 = phi i32* [ %.phi.trans.insert738, %._crit_edge996 ], [ %.pre-phi11202484, %._crit_edge371 ]
  %.pre-phi11212428 = phi i32* [ %.phi.trans.insert740, %._crit_edge996 ], [ %.pre-phi11212429, %._crit_edge371 ]
  %.pre-phi11222373 = phi i32* [ %.phi.trans.insert742, %._crit_edge996 ], [ %.pre-phi11222374, %._crit_edge371 ]
  %.pre-phi11232318 = phi i32* [ %.phi.trans.insert744, %._crit_edge996 ], [ %.pre-phi11232319, %._crit_edge371 ]
  %.pre-phi11242263 = phi i32* [ %.phi.trans.insert746, %._crit_edge996 ], [ %.pre-phi11242264, %._crit_edge371 ]
  %.pre-phi11252208 = phi i32* [ %.phi.trans.insert748, %._crit_edge996 ], [ %.pre-phi11252209, %._crit_edge371 ]
  %.pre-phi11262153 = phi i32* [ %.phi.trans.insert750, %._crit_edge996 ], [ %.pre-phi11262154, %._crit_edge371 ]
  %.pre-phi11272098 = phi i32* [ %.phi.trans.insert752, %._crit_edge996 ], [ %.pre-phi11272099, %._crit_edge371 ]
  %.pre-phi11282043 = phi i32* [ %.phi.trans.insert754, %._crit_edge996 ], [ %.pre-phi11282044, %._crit_edge371 ]
  %.pre-phi11291988 = phi i32* [ %.phi.trans.insert756, %._crit_edge996 ], [ %.pre-phi11291989, %._crit_edge371 ]
  %.pre-phi11301933 = phi i32* [ %.phi.trans.insert758, %._crit_edge996 ], [ %.pre-phi11301934, %._crit_edge371 ]
  %.pre-phi11311878 = phi i32* [ %.phi.trans.insert760, %._crit_edge996 ], [ %.pre-phi11311879, %._crit_edge371 ]
  %.pre-phi11321823 = phi i32* [ %.phi.trans.insert762, %._crit_edge996 ], [ %.pre-phi11321824, %._crit_edge371 ]
  %.pre-phi11331768 = phi i32* [ %.phi.trans.insert764, %._crit_edge996 ], [ %.pre-phi11331769, %._crit_edge371 ]
  %.pre-phi11341713 = phi i32* [ %.phi.trans.insert766, %._crit_edge996 ], [ %.pre-phi11341714, %._crit_edge371 ]
  %.pre-phi11351658 = phi i32* [ %.phi.trans.insert768, %._crit_edge996 ], [ %.pre-phi11351659, %._crit_edge371 ]
  %.pre-phi11361603 = phi i32* [ %.phi.trans.insert770, %._crit_edge996 ], [ %.pre-phi11361604, %._crit_edge371 ]
  %.pre-phi11371548 = phi i32* [ %.phi.trans.insert772, %._crit_edge996 ], [ %.pre-phi11371549, %._crit_edge371 ]
  %.pre-phi11381493 = phi i32* [ %.phi.trans.insert774, %._crit_edge996 ], [ %.pre-phi11381494, %._crit_edge371 ]
  %.pre-phi11391438 = phi i32* [ %.phi.trans.insert776, %._crit_edge996 ], [ %.pre-phi11391439, %._crit_edge371 ]
  %.pre-phi11401383 = phi i32** [ %.phi.trans.insert778, %._crit_edge996 ], [ %.pre-phi11401384, %._crit_edge371 ]
  %.pre-phi11411328 = phi i32** [ %.phi.trans.insert780, %._crit_edge996 ], [ %.pre-phi11411329, %._crit_edge371 ]
  %.pre-phi11421273 = phi i32** [ %.phi.trans.insert782, %._crit_edge996 ], [ %.pre-phi11421274, %._crit_edge371 ]
  %.pre-phi1157 = phi i32* [ %.phi.trans.insert997, %._crit_edge996 ], [ %.pre-phi1155, %._crit_edge371 ]
  %2749 = phi i32 [ %.pre998, %._crit_edge996 ], [ %2696, %._crit_edge371 ]
  store i32 45, i32* %3, align 4, !tbaa !8
  %2750 = icmp sgt i32 %2749, 7
  %.phi.trans.insert1001 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2750, label %._crit_edge1000, label %.lr.ph365

._crit_edge1000:                                  ; preds = %2724
  %.pre1002 = load i32* %.phi.trans.insert1001, align 4, !tbaa !34
  br label %._crit_edge366

.lr.ph365:                                        ; preds = %2724
  %.pre999 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1108 = getelementptr inbounds %struct.bz_stream* %.pre999, i64 0, i32 1
  %.pre1109 = load i32* %.phi.trans.insert1108, align 4, !tbaa !35
  br label %2756

._crit_edge366:                                   ; preds = %.backedge72, %._crit_edge1000
  %2751 = phi i32 [ %.pre1002, %._crit_edge1000 ], [ %2767, %.backedge72 ]
  %.lcssa190 = phi i32 [ %2749, %._crit_edge1000 ], [ %2768, %.backedge72 ]
  %2752 = add nsw i32 %.lcssa190, -8
  %2753 = lshr i32 %2751, %2752
  store i32 %2752, i32* %.pre-phi1157, align 4, !tbaa !9
  %2754 = and i32 %2753, 255
  %2755 = icmp eq i32 %2754, 80
  br i1 %2755, label %2780, label %.loopexit

; <label>:2756                                    ; preds = %.lr.ph365, %.backedge72
  %2757 = phi i32 [ %.pre1109, %.lr.ph365 ], [ %2770, %.backedge72 ]
  %2758 = phi i32 [ %2749, %.lr.ph365 ], [ %2768, %.backedge72 ]
  %2759 = icmp eq i32 %2757, 0
  br i1 %2759, label %.loopexit, label %2760

; <label>:2760                                    ; preds = %2756
  %2761 = load i32* %.phi.trans.insert1001, align 4, !tbaa !34
  %2762 = shl i32 %2761, 8
  %2763 = getelementptr inbounds %struct.bz_stream* %.pre999, i64 0, i32 0
  %2764 = load i8** %2763, align 8, !tbaa !37
  %2765 = load i8* %2764, align 1, !tbaa !38
  %2766 = zext i8 %2765 to i32
  %2767 = or i32 %2766, %2762
  store i32 %2767, i32* %.phi.trans.insert1001, align 4, !tbaa !34
  %2768 = add nsw i32 %2758, 8
  store i32 %2768, i32* %.pre-phi1157, align 4, !tbaa !9
  %2769 = getelementptr inbounds i8* %2764, i64 1
  store i8* %2769, i8** %2763, align 8, !tbaa !37
  %2770 = add i32 %2757, -1
  store i32 %2770, i32* %.phi.trans.insert1108, align 4, !tbaa !35
  %2771 = getelementptr inbounds %struct.bz_stream* %.pre999, i64 0, i32 2
  %2772 = load i32* %2771, align 4, !tbaa !39
  %2773 = add i32 %2772, 1
  store i32 %2773, i32* %2771, align 4, !tbaa !39
  %2774 = icmp eq i32 %2773, 0
  br i1 %2774, label %2775, label %.backedge72

; <label>:2775                                    ; preds = %2760
  %2776 = getelementptr inbounds %struct.bz_stream* %.pre999, i64 0, i32 3
  %2777 = load i32* %2776, align 4, !tbaa !40
  %2778 = add i32 %2777, 1
  store i32 %2778, i32* %2776, align 4, !tbaa !40
  br label %.backedge72

.backedge72:                                      ; preds = %2775, %2760
  %2779 = icmp sgt i32 %2768, 7
  br i1 %2779, label %._crit_edge366, label %2756

; <label>:2780                                    ; preds = %._crit_edge1003, %._crit_edge366
  %2781 = phi i32 [ %.pre, %._crit_edge1003 ], [ %2725, %._crit_edge366 ]
  %2782 = phi i32 [ %.pre739, %._crit_edge1003 ], [ %2726, %._crit_edge366 ]
  %2783 = phi i32 [ %.pre741, %._crit_edge1003 ], [ %2727, %._crit_edge366 ]
  %2784 = phi i32 [ %.pre743, %._crit_edge1003 ], [ %2728, %._crit_edge366 ]
  %2785 = phi i32 [ %.pre745, %._crit_edge1003 ], [ %2729, %._crit_edge366 ]
  %2786 = phi i32 [ %.pre747, %._crit_edge1003 ], [ %2730, %._crit_edge366 ]
  %2787 = phi i32 [ %.pre749, %._crit_edge1003 ], [ %2731, %._crit_edge366 ]
  %2788 = phi i32 [ %.pre751, %._crit_edge1003 ], [ %2732, %._crit_edge366 ]
  %2789 = phi i32 [ %.pre753, %._crit_edge1003 ], [ %2733, %._crit_edge366 ]
  %2790 = phi i32 [ %.pre755, %._crit_edge1003 ], [ %2734, %._crit_edge366 ]
  %2791 = phi i32 [ %.pre757, %._crit_edge1003 ], [ %2735, %._crit_edge366 ]
  %2792 = phi i32 [ %.pre759, %._crit_edge1003 ], [ %2736, %._crit_edge366 ]
  %2793 = phi i32 [ %.pre761, %._crit_edge1003 ], [ %2737, %._crit_edge366 ]
  %2794 = phi i32 [ %.pre763, %._crit_edge1003 ], [ %2738, %._crit_edge366 ]
  %2795 = phi i32 [ %.pre765, %._crit_edge1003 ], [ %2739, %._crit_edge366 ]
  %2796 = phi i32 [ %.pre767, %._crit_edge1003 ], [ %2740, %._crit_edge366 ]
  %2797 = phi i32 [ %.pre769, %._crit_edge1003 ], [ %2741, %._crit_edge366 ]
  %2798 = phi i32 [ %.pre771, %._crit_edge1003 ], [ %2742, %._crit_edge366 ]
  %2799 = phi i32 [ %.pre773, %._crit_edge1003 ], [ %2743, %._crit_edge366 ]
  %2800 = phi i32 [ %.pre775, %._crit_edge1003 ], [ %2744, %._crit_edge366 ]
  %2801 = phi i32 [ %.pre777, %._crit_edge1003 ], [ %2745, %._crit_edge366 ]
  %2802 = phi i32* [ %.pre779, %._crit_edge1003 ], [ %2746, %._crit_edge366 ]
  %2803 = phi i32* [ %.pre781, %._crit_edge1003 ], [ %2747, %._crit_edge366 ]
  %2804 = phi i32* [ %.pre783, %._crit_edge1003 ], [ %2748, %._crit_edge366 ]
  %.pre-phi11202482 = phi i32* [ %.phi.trans.insert738, %._crit_edge1003 ], [ %.pre-phi11202483, %._crit_edge366 ]
  %.pre-phi11212427 = phi i32* [ %.phi.trans.insert740, %._crit_edge1003 ], [ %.pre-phi11212428, %._crit_edge366 ]
  %.pre-phi11222372 = phi i32* [ %.phi.trans.insert742, %._crit_edge1003 ], [ %.pre-phi11222373, %._crit_edge366 ]
  %.pre-phi11232317 = phi i32* [ %.phi.trans.insert744, %._crit_edge1003 ], [ %.pre-phi11232318, %._crit_edge366 ]
  %.pre-phi11242262 = phi i32* [ %.phi.trans.insert746, %._crit_edge1003 ], [ %.pre-phi11242263, %._crit_edge366 ]
  %.pre-phi11252207 = phi i32* [ %.phi.trans.insert748, %._crit_edge1003 ], [ %.pre-phi11252208, %._crit_edge366 ]
  %.pre-phi11262152 = phi i32* [ %.phi.trans.insert750, %._crit_edge1003 ], [ %.pre-phi11262153, %._crit_edge366 ]
  %.pre-phi11272097 = phi i32* [ %.phi.trans.insert752, %._crit_edge1003 ], [ %.pre-phi11272098, %._crit_edge366 ]
  %.pre-phi11282042 = phi i32* [ %.phi.trans.insert754, %._crit_edge1003 ], [ %.pre-phi11282043, %._crit_edge366 ]
  %.pre-phi11291987 = phi i32* [ %.phi.trans.insert756, %._crit_edge1003 ], [ %.pre-phi11291988, %._crit_edge366 ]
  %.pre-phi11301932 = phi i32* [ %.phi.trans.insert758, %._crit_edge1003 ], [ %.pre-phi11301933, %._crit_edge366 ]
  %.pre-phi11311877 = phi i32* [ %.phi.trans.insert760, %._crit_edge1003 ], [ %.pre-phi11311878, %._crit_edge366 ]
  %.pre-phi11321822 = phi i32* [ %.phi.trans.insert762, %._crit_edge1003 ], [ %.pre-phi11321823, %._crit_edge366 ]
  %.pre-phi11331767 = phi i32* [ %.phi.trans.insert764, %._crit_edge1003 ], [ %.pre-phi11331768, %._crit_edge366 ]
  %.pre-phi11341712 = phi i32* [ %.phi.trans.insert766, %._crit_edge1003 ], [ %.pre-phi11341713, %._crit_edge366 ]
  %.pre-phi11351657 = phi i32* [ %.phi.trans.insert768, %._crit_edge1003 ], [ %.pre-phi11351658, %._crit_edge366 ]
  %.pre-phi11361602 = phi i32* [ %.phi.trans.insert770, %._crit_edge1003 ], [ %.pre-phi11361603, %._crit_edge366 ]
  %.pre-phi11371547 = phi i32* [ %.phi.trans.insert772, %._crit_edge1003 ], [ %.pre-phi11371548, %._crit_edge366 ]
  %.pre-phi11381492 = phi i32* [ %.phi.trans.insert774, %._crit_edge1003 ], [ %.pre-phi11381493, %._crit_edge366 ]
  %.pre-phi11391437 = phi i32* [ %.phi.trans.insert776, %._crit_edge1003 ], [ %.pre-phi11391438, %._crit_edge366 ]
  %.pre-phi11401382 = phi i32** [ %.phi.trans.insert778, %._crit_edge1003 ], [ %.pre-phi11401383, %._crit_edge366 ]
  %.pre-phi11411327 = phi i32** [ %.phi.trans.insert780, %._crit_edge1003 ], [ %.pre-phi11411328, %._crit_edge366 ]
  %.pre-phi11421272 = phi i32** [ %.phi.trans.insert782, %._crit_edge1003 ], [ %.pre-phi11421273, %._crit_edge366 ]
  %.pre-phi1159 = phi i32* [ %.phi.trans.insert1004, %._crit_edge1003 ], [ %.pre-phi1157, %._crit_edge366 ]
  %2805 = phi i32 [ %.pre1005, %._crit_edge1003 ], [ %2752, %._crit_edge366 ]
  store i32 46, i32* %3, align 4, !tbaa !8
  %2806 = icmp sgt i32 %2805, 7
  %.phi.trans.insert1008 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2806, label %._crit_edge1007, label %.lr.ph360

._crit_edge1007:                                  ; preds = %2780
  %.pre1009 = load i32* %.phi.trans.insert1008, align 4, !tbaa !34
  br label %._crit_edge361

.lr.ph360:                                        ; preds = %2780
  %.pre1006 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1110 = getelementptr inbounds %struct.bz_stream* %.pre1006, i64 0, i32 1
  %.pre1111 = load i32* %.phi.trans.insert1110, align 4, !tbaa !35
  br label %2812

._crit_edge361:                                   ; preds = %.backedge70, %._crit_edge1007
  %2807 = phi i32 [ %.pre1009, %._crit_edge1007 ], [ %2823, %.backedge70 ]
  %.lcssa186 = phi i32 [ %2805, %._crit_edge1007 ], [ %2824, %.backedge70 ]
  %2808 = add nsw i32 %.lcssa186, -8
  %2809 = lshr i32 %2807, %2808
  store i32 %2808, i32* %.pre-phi1159, align 4, !tbaa !9
  %2810 = and i32 %2809, 255
  %2811 = icmp eq i32 %2810, 144
  br i1 %2811, label %2836, label %.loopexit

; <label>:2812                                    ; preds = %.lr.ph360, %.backedge70
  %2813 = phi i32 [ %.pre1111, %.lr.ph360 ], [ %2826, %.backedge70 ]
  %2814 = phi i32 [ %2805, %.lr.ph360 ], [ %2824, %.backedge70 ]
  %2815 = icmp eq i32 %2813, 0
  br i1 %2815, label %.loopexit, label %2816

; <label>:2816                                    ; preds = %2812
  %2817 = load i32* %.phi.trans.insert1008, align 4, !tbaa !34
  %2818 = shl i32 %2817, 8
  %2819 = getelementptr inbounds %struct.bz_stream* %.pre1006, i64 0, i32 0
  %2820 = load i8** %2819, align 8, !tbaa !37
  %2821 = load i8* %2820, align 1, !tbaa !38
  %2822 = zext i8 %2821 to i32
  %2823 = or i32 %2822, %2818
  store i32 %2823, i32* %.phi.trans.insert1008, align 4, !tbaa !34
  %2824 = add nsw i32 %2814, 8
  store i32 %2824, i32* %.pre-phi1159, align 4, !tbaa !9
  %2825 = getelementptr inbounds i8* %2820, i64 1
  store i8* %2825, i8** %2819, align 8, !tbaa !37
  %2826 = add i32 %2813, -1
  store i32 %2826, i32* %.phi.trans.insert1110, align 4, !tbaa !35
  %2827 = getelementptr inbounds %struct.bz_stream* %.pre1006, i64 0, i32 2
  %2828 = load i32* %2827, align 4, !tbaa !39
  %2829 = add i32 %2828, 1
  store i32 %2829, i32* %2827, align 4, !tbaa !39
  %2830 = icmp eq i32 %2829, 0
  br i1 %2830, label %2831, label %.backedge70

; <label>:2831                                    ; preds = %2816
  %2832 = getelementptr inbounds %struct.bz_stream* %.pre1006, i64 0, i32 3
  %2833 = load i32* %2832, align 4, !tbaa !40
  %2834 = add i32 %2833, 1
  store i32 %2834, i32* %2832, align 4, !tbaa !40
  br label %.backedge70

.backedge70:                                      ; preds = %2831, %2816
  %2835 = icmp sgt i32 %2824, 7
  br i1 %2835, label %._crit_edge361, label %2812

; <label>:2836                                    ; preds = %._crit_edge361
  %2837 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  store i32 0, i32* %2837, align 4, !tbaa !70
  br label %2838

; <label>:2838                                    ; preds = %._crit_edge1010, %2836
  %2839 = phi i32 [ %.pre, %._crit_edge1010 ], [ %2781, %2836 ]
  %2840 = phi i32 [ %.pre739, %._crit_edge1010 ], [ %2782, %2836 ]
  %2841 = phi i32 [ %.pre741, %._crit_edge1010 ], [ %2783, %2836 ]
  %2842 = phi i32 [ %.pre743, %._crit_edge1010 ], [ %2784, %2836 ]
  %2843 = phi i32 [ %.pre745, %._crit_edge1010 ], [ %2785, %2836 ]
  %2844 = phi i32 [ %.pre747, %._crit_edge1010 ], [ %2786, %2836 ]
  %2845 = phi i32 [ %.pre749, %._crit_edge1010 ], [ %2787, %2836 ]
  %2846 = phi i32 [ %.pre751, %._crit_edge1010 ], [ %2788, %2836 ]
  %2847 = phi i32 [ %.pre753, %._crit_edge1010 ], [ %2789, %2836 ]
  %2848 = phi i32 [ %.pre755, %._crit_edge1010 ], [ %2790, %2836 ]
  %2849 = phi i32 [ %.pre757, %._crit_edge1010 ], [ %2791, %2836 ]
  %2850 = phi i32 [ %.pre759, %._crit_edge1010 ], [ %2792, %2836 ]
  %2851 = phi i32 [ %.pre761, %._crit_edge1010 ], [ %2793, %2836 ]
  %2852 = phi i32 [ %.pre763, %._crit_edge1010 ], [ %2794, %2836 ]
  %2853 = phi i32 [ %.pre765, %._crit_edge1010 ], [ %2795, %2836 ]
  %2854 = phi i32 [ %.pre767, %._crit_edge1010 ], [ %2796, %2836 ]
  %2855 = phi i32 [ %.pre769, %._crit_edge1010 ], [ %2797, %2836 ]
  %2856 = phi i32 [ %.pre771, %._crit_edge1010 ], [ %2798, %2836 ]
  %2857 = phi i32 [ %.pre773, %._crit_edge1010 ], [ %2799, %2836 ]
  %2858 = phi i32 [ %.pre775, %._crit_edge1010 ], [ %2800, %2836 ]
  %2859 = phi i32 [ %.pre777, %._crit_edge1010 ], [ %2801, %2836 ]
  %2860 = phi i32* [ %.pre779, %._crit_edge1010 ], [ %2802, %2836 ]
  %2861 = phi i32* [ %.pre781, %._crit_edge1010 ], [ %2803, %2836 ]
  %2862 = phi i32* [ %.pre783, %._crit_edge1010 ], [ %2804, %2836 ]
  %.pre-phi11202481 = phi i32* [ %.phi.trans.insert738, %._crit_edge1010 ], [ %.pre-phi11202482, %2836 ]
  %.pre-phi11212426 = phi i32* [ %.phi.trans.insert740, %._crit_edge1010 ], [ %.pre-phi11212427, %2836 ]
  %.pre-phi11222371 = phi i32* [ %.phi.trans.insert742, %._crit_edge1010 ], [ %.pre-phi11222372, %2836 ]
  %.pre-phi11232316 = phi i32* [ %.phi.trans.insert744, %._crit_edge1010 ], [ %.pre-phi11232317, %2836 ]
  %.pre-phi11242261 = phi i32* [ %.phi.trans.insert746, %._crit_edge1010 ], [ %.pre-phi11242262, %2836 ]
  %.pre-phi11252206 = phi i32* [ %.phi.trans.insert748, %._crit_edge1010 ], [ %.pre-phi11252207, %2836 ]
  %.pre-phi11262151 = phi i32* [ %.phi.trans.insert750, %._crit_edge1010 ], [ %.pre-phi11262152, %2836 ]
  %.pre-phi11272096 = phi i32* [ %.phi.trans.insert752, %._crit_edge1010 ], [ %.pre-phi11272097, %2836 ]
  %.pre-phi11282041 = phi i32* [ %.phi.trans.insert754, %._crit_edge1010 ], [ %.pre-phi11282042, %2836 ]
  %.pre-phi11291986 = phi i32* [ %.phi.trans.insert756, %._crit_edge1010 ], [ %.pre-phi11291987, %2836 ]
  %.pre-phi11301931 = phi i32* [ %.phi.trans.insert758, %._crit_edge1010 ], [ %.pre-phi11301932, %2836 ]
  %.pre-phi11311876 = phi i32* [ %.phi.trans.insert760, %._crit_edge1010 ], [ %.pre-phi11311877, %2836 ]
  %.pre-phi11321821 = phi i32* [ %.phi.trans.insert762, %._crit_edge1010 ], [ %.pre-phi11321822, %2836 ]
  %.pre-phi11331766 = phi i32* [ %.phi.trans.insert764, %._crit_edge1010 ], [ %.pre-phi11331767, %2836 ]
  %.pre-phi11341711 = phi i32* [ %.phi.trans.insert766, %._crit_edge1010 ], [ %.pre-phi11341712, %2836 ]
  %.pre-phi11351656 = phi i32* [ %.phi.trans.insert768, %._crit_edge1010 ], [ %.pre-phi11351657, %2836 ]
  %.pre-phi11361601 = phi i32* [ %.phi.trans.insert770, %._crit_edge1010 ], [ %.pre-phi11361602, %2836 ]
  %.pre-phi11371546 = phi i32* [ %.phi.trans.insert772, %._crit_edge1010 ], [ %.pre-phi11371547, %2836 ]
  %.pre-phi11381491 = phi i32* [ %.phi.trans.insert774, %._crit_edge1010 ], [ %.pre-phi11381492, %2836 ]
  %.pre-phi11391436 = phi i32* [ %.phi.trans.insert776, %._crit_edge1010 ], [ %.pre-phi11391437, %2836 ]
  %.pre-phi11401381 = phi i32** [ %.phi.trans.insert778, %._crit_edge1010 ], [ %.pre-phi11401382, %2836 ]
  %.pre-phi11411326 = phi i32** [ %.phi.trans.insert780, %._crit_edge1010 ], [ %.pre-phi11411327, %2836 ]
  %.pre-phi11421271 = phi i32** [ %.phi.trans.insert782, %._crit_edge1010 ], [ %.pre-phi11421272, %2836 ]
  %.pre-phi1161 = phi i32* [ %.phi.trans.insert1011, %._crit_edge1010 ], [ %.pre-phi1159, %2836 ]
  %2863 = phi i32 [ %.pre1012, %._crit_edge1010 ], [ %2808, %2836 ]
  store i32 47, i32* %3, align 4, !tbaa !8
  %2864 = icmp sgt i32 %2863, 7
  %.phi.trans.insert1015 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2864, label %._crit_edge1014, label %.lr.ph355

._crit_edge1014:                                  ; preds = %2838
  %.pre1016 = load i32* %.phi.trans.insert1015, align 4, !tbaa !34
  br label %._crit_edge356

.lr.ph355:                                        ; preds = %2838
  %.pre1013 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1112 = getelementptr inbounds %struct.bz_stream* %.pre1013, i64 0, i32 1
  %.pre1113 = load i32* %.phi.trans.insert1112, align 4, !tbaa !35
  br label %2873

._crit_edge356:                                   ; preds = %.backedge68, %._crit_edge1014
  %2865 = phi i32 [ %.pre1016, %._crit_edge1014 ], [ %2884, %.backedge68 ]
  %.lcssa182 = phi i32 [ %2863, %._crit_edge1014 ], [ %2885, %.backedge68 ]
  %2866 = add nsw i32 %.lcssa182, -8
  %2867 = lshr i32 %2865, %2866
  store i32 %2866, i32* %.pre-phi1161, align 4, !tbaa !9
  %2868 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  %2869 = load i32* %2868, align 4, !tbaa !70
  %2870 = shl i32 %2869, 8
  %2871 = and i32 %2867, 255
  %2872 = or i32 %2870, %2871
  store i32 %2872, i32* %2868, align 4, !tbaa !70
  br label %2897

; <label>:2873                                    ; preds = %.lr.ph355, %.backedge68
  %2874 = phi i32 [ %.pre1113, %.lr.ph355 ], [ %2887, %.backedge68 ]
  %2875 = phi i32 [ %2863, %.lr.ph355 ], [ %2885, %.backedge68 ]
  %2876 = icmp eq i32 %2874, 0
  br i1 %2876, label %.loopexit, label %2877

; <label>:2877                                    ; preds = %2873
  %2878 = load i32* %.phi.trans.insert1015, align 4, !tbaa !34
  %2879 = shl i32 %2878, 8
  %2880 = getelementptr inbounds %struct.bz_stream* %.pre1013, i64 0, i32 0
  %2881 = load i8** %2880, align 8, !tbaa !37
  %2882 = load i8* %2881, align 1, !tbaa !38
  %2883 = zext i8 %2882 to i32
  %2884 = or i32 %2883, %2879
  store i32 %2884, i32* %.phi.trans.insert1015, align 4, !tbaa !34
  %2885 = add nsw i32 %2875, 8
  store i32 %2885, i32* %.pre-phi1161, align 4, !tbaa !9
  %2886 = getelementptr inbounds i8* %2881, i64 1
  store i8* %2886, i8** %2880, align 8, !tbaa !37
  %2887 = add i32 %2874, -1
  store i32 %2887, i32* %.phi.trans.insert1112, align 4, !tbaa !35
  %2888 = getelementptr inbounds %struct.bz_stream* %.pre1013, i64 0, i32 2
  %2889 = load i32* %2888, align 4, !tbaa !39
  %2890 = add i32 %2889, 1
  store i32 %2890, i32* %2888, align 4, !tbaa !39
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2892, label %.backedge68

; <label>:2892                                    ; preds = %2877
  %2893 = getelementptr inbounds %struct.bz_stream* %.pre1013, i64 0, i32 3
  %2894 = load i32* %2893, align 4, !tbaa !40
  %2895 = add i32 %2894, 1
  store i32 %2895, i32* %2893, align 4, !tbaa !40
  br label %.backedge68

.backedge68:                                      ; preds = %2892, %2877
  %2896 = icmp sgt i32 %2885, 7
  br i1 %2896, label %._crit_edge356, label %2873

; <label>:2897                                    ; preds = %._crit_edge1017, %._crit_edge356
  %2898 = phi i32 [ %.pre, %._crit_edge1017 ], [ %2839, %._crit_edge356 ]
  %2899 = phi i32 [ %.pre739, %._crit_edge1017 ], [ %2840, %._crit_edge356 ]
  %2900 = phi i32 [ %.pre741, %._crit_edge1017 ], [ %2841, %._crit_edge356 ]
  %2901 = phi i32 [ %.pre743, %._crit_edge1017 ], [ %2842, %._crit_edge356 ]
  %2902 = phi i32 [ %.pre745, %._crit_edge1017 ], [ %2843, %._crit_edge356 ]
  %2903 = phi i32 [ %.pre747, %._crit_edge1017 ], [ %2844, %._crit_edge356 ]
  %2904 = phi i32 [ %.pre749, %._crit_edge1017 ], [ %2845, %._crit_edge356 ]
  %2905 = phi i32 [ %.pre751, %._crit_edge1017 ], [ %2846, %._crit_edge356 ]
  %2906 = phi i32 [ %.pre753, %._crit_edge1017 ], [ %2847, %._crit_edge356 ]
  %2907 = phi i32 [ %.pre755, %._crit_edge1017 ], [ %2848, %._crit_edge356 ]
  %2908 = phi i32 [ %.pre757, %._crit_edge1017 ], [ %2849, %._crit_edge356 ]
  %2909 = phi i32 [ %.pre759, %._crit_edge1017 ], [ %2850, %._crit_edge356 ]
  %2910 = phi i32 [ %.pre761, %._crit_edge1017 ], [ %2851, %._crit_edge356 ]
  %2911 = phi i32 [ %.pre763, %._crit_edge1017 ], [ %2852, %._crit_edge356 ]
  %2912 = phi i32 [ %.pre765, %._crit_edge1017 ], [ %2853, %._crit_edge356 ]
  %2913 = phi i32 [ %.pre767, %._crit_edge1017 ], [ %2854, %._crit_edge356 ]
  %2914 = phi i32 [ %.pre769, %._crit_edge1017 ], [ %2855, %._crit_edge356 ]
  %2915 = phi i32 [ %.pre771, %._crit_edge1017 ], [ %2856, %._crit_edge356 ]
  %2916 = phi i32 [ %.pre773, %._crit_edge1017 ], [ %2857, %._crit_edge356 ]
  %2917 = phi i32 [ %.pre775, %._crit_edge1017 ], [ %2858, %._crit_edge356 ]
  %2918 = phi i32 [ %.pre777, %._crit_edge1017 ], [ %2859, %._crit_edge356 ]
  %2919 = phi i32* [ %.pre779, %._crit_edge1017 ], [ %2860, %._crit_edge356 ]
  %2920 = phi i32* [ %.pre781, %._crit_edge1017 ], [ %2861, %._crit_edge356 ]
  %2921 = phi i32* [ %.pre783, %._crit_edge1017 ], [ %2862, %._crit_edge356 ]
  %.pre-phi11202480 = phi i32* [ %.phi.trans.insert738, %._crit_edge1017 ], [ %.pre-phi11202481, %._crit_edge356 ]
  %.pre-phi11212425 = phi i32* [ %.phi.trans.insert740, %._crit_edge1017 ], [ %.pre-phi11212426, %._crit_edge356 ]
  %.pre-phi11222370 = phi i32* [ %.phi.trans.insert742, %._crit_edge1017 ], [ %.pre-phi11222371, %._crit_edge356 ]
  %.pre-phi11232315 = phi i32* [ %.phi.trans.insert744, %._crit_edge1017 ], [ %.pre-phi11232316, %._crit_edge356 ]
  %.pre-phi11242260 = phi i32* [ %.phi.trans.insert746, %._crit_edge1017 ], [ %.pre-phi11242261, %._crit_edge356 ]
  %.pre-phi11252205 = phi i32* [ %.phi.trans.insert748, %._crit_edge1017 ], [ %.pre-phi11252206, %._crit_edge356 ]
  %.pre-phi11262150 = phi i32* [ %.phi.trans.insert750, %._crit_edge1017 ], [ %.pre-phi11262151, %._crit_edge356 ]
  %.pre-phi11272095 = phi i32* [ %.phi.trans.insert752, %._crit_edge1017 ], [ %.pre-phi11272096, %._crit_edge356 ]
  %.pre-phi11282040 = phi i32* [ %.phi.trans.insert754, %._crit_edge1017 ], [ %.pre-phi11282041, %._crit_edge356 ]
  %.pre-phi11291985 = phi i32* [ %.phi.trans.insert756, %._crit_edge1017 ], [ %.pre-phi11291986, %._crit_edge356 ]
  %.pre-phi11301930 = phi i32* [ %.phi.trans.insert758, %._crit_edge1017 ], [ %.pre-phi11301931, %._crit_edge356 ]
  %.pre-phi11311875 = phi i32* [ %.phi.trans.insert760, %._crit_edge1017 ], [ %.pre-phi11311876, %._crit_edge356 ]
  %.pre-phi11321820 = phi i32* [ %.phi.trans.insert762, %._crit_edge1017 ], [ %.pre-phi11321821, %._crit_edge356 ]
  %.pre-phi11331765 = phi i32* [ %.phi.trans.insert764, %._crit_edge1017 ], [ %.pre-phi11331766, %._crit_edge356 ]
  %.pre-phi11341710 = phi i32* [ %.phi.trans.insert766, %._crit_edge1017 ], [ %.pre-phi11341711, %._crit_edge356 ]
  %.pre-phi11351655 = phi i32* [ %.phi.trans.insert768, %._crit_edge1017 ], [ %.pre-phi11351656, %._crit_edge356 ]
  %.pre-phi11361600 = phi i32* [ %.phi.trans.insert770, %._crit_edge1017 ], [ %.pre-phi11361601, %._crit_edge356 ]
  %.pre-phi11371545 = phi i32* [ %.phi.trans.insert772, %._crit_edge1017 ], [ %.pre-phi11371546, %._crit_edge356 ]
  %.pre-phi11381490 = phi i32* [ %.phi.trans.insert774, %._crit_edge1017 ], [ %.pre-phi11381491, %._crit_edge356 ]
  %.pre-phi11391435 = phi i32* [ %.phi.trans.insert776, %._crit_edge1017 ], [ %.pre-phi11391436, %._crit_edge356 ]
  %.pre-phi11401380 = phi i32** [ %.phi.trans.insert778, %._crit_edge1017 ], [ %.pre-phi11401381, %._crit_edge356 ]
  %.pre-phi11411325 = phi i32** [ %.phi.trans.insert780, %._crit_edge1017 ], [ %.pre-phi11411326, %._crit_edge356 ]
  %.pre-phi11421270 = phi i32** [ %.phi.trans.insert782, %._crit_edge1017 ], [ %.pre-phi11421271, %._crit_edge356 ]
  %.pre-phi1163 = phi i32* [ %.phi.trans.insert1018, %._crit_edge1017 ], [ %.pre-phi1161, %._crit_edge356 ]
  %2922 = phi i32 [ %.pre1019, %._crit_edge1017 ], [ %2866, %._crit_edge356 ]
  store i32 48, i32* %3, align 4, !tbaa !8
  %2923 = icmp sgt i32 %2922, 7
  %.phi.trans.insert1022 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2923, label %._crit_edge1021, label %.lr.ph350

._crit_edge1021:                                  ; preds = %2897
  %.pre1023 = load i32* %.phi.trans.insert1022, align 4, !tbaa !34
  br label %._crit_edge351

.lr.ph350:                                        ; preds = %2897
  %.pre1020 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1114 = getelementptr inbounds %struct.bz_stream* %.pre1020, i64 0, i32 1
  %.pre1115 = load i32* %.phi.trans.insert1114, align 4, !tbaa !35
  br label %2932

._crit_edge351:                                   ; preds = %.backedge66, %._crit_edge1021
  %2924 = phi i32 [ %.pre1023, %._crit_edge1021 ], [ %2943, %.backedge66 ]
  %.lcssa178 = phi i32 [ %2922, %._crit_edge1021 ], [ %2944, %.backedge66 ]
  %2925 = add nsw i32 %.lcssa178, -8
  %2926 = lshr i32 %2924, %2925
  store i32 %2925, i32* %.pre-phi1163, align 4, !tbaa !9
  %2927 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  %2928 = load i32* %2927, align 4, !tbaa !70
  %2929 = shl i32 %2928, 8
  %2930 = and i32 %2926, 255
  %2931 = or i32 %2929, %2930
  store i32 %2931, i32* %2927, align 4, !tbaa !70
  br label %2956

; <label>:2932                                    ; preds = %.lr.ph350, %.backedge66
  %2933 = phi i32 [ %.pre1115, %.lr.ph350 ], [ %2946, %.backedge66 ]
  %2934 = phi i32 [ %2922, %.lr.ph350 ], [ %2944, %.backedge66 ]
  %2935 = icmp eq i32 %2933, 0
  br i1 %2935, label %.loopexit, label %2936

; <label>:2936                                    ; preds = %2932
  %2937 = load i32* %.phi.trans.insert1022, align 4, !tbaa !34
  %2938 = shl i32 %2937, 8
  %2939 = getelementptr inbounds %struct.bz_stream* %.pre1020, i64 0, i32 0
  %2940 = load i8** %2939, align 8, !tbaa !37
  %2941 = load i8* %2940, align 1, !tbaa !38
  %2942 = zext i8 %2941 to i32
  %2943 = or i32 %2942, %2938
  store i32 %2943, i32* %.phi.trans.insert1022, align 4, !tbaa !34
  %2944 = add nsw i32 %2934, 8
  store i32 %2944, i32* %.pre-phi1163, align 4, !tbaa !9
  %2945 = getelementptr inbounds i8* %2940, i64 1
  store i8* %2945, i8** %2939, align 8, !tbaa !37
  %2946 = add i32 %2933, -1
  store i32 %2946, i32* %.phi.trans.insert1114, align 4, !tbaa !35
  %2947 = getelementptr inbounds %struct.bz_stream* %.pre1020, i64 0, i32 2
  %2948 = load i32* %2947, align 4, !tbaa !39
  %2949 = add i32 %2948, 1
  store i32 %2949, i32* %2947, align 4, !tbaa !39
  %2950 = icmp eq i32 %2949, 0
  br i1 %2950, label %2951, label %.backedge66

; <label>:2951                                    ; preds = %2936
  %2952 = getelementptr inbounds %struct.bz_stream* %.pre1020, i64 0, i32 3
  %2953 = load i32* %2952, align 4, !tbaa !40
  %2954 = add i32 %2953, 1
  store i32 %2954, i32* %2952, align 4, !tbaa !40
  br label %.backedge66

.backedge66:                                      ; preds = %2951, %2936
  %2955 = icmp sgt i32 %2944, 7
  br i1 %2955, label %._crit_edge351, label %2932

; <label>:2956                                    ; preds = %._crit_edge1024, %._crit_edge351
  %2957 = phi i32 [ %.pre, %._crit_edge1024 ], [ %2898, %._crit_edge351 ]
  %2958 = phi i32 [ %.pre739, %._crit_edge1024 ], [ %2899, %._crit_edge351 ]
  %2959 = phi i32 [ %.pre741, %._crit_edge1024 ], [ %2900, %._crit_edge351 ]
  %2960 = phi i32 [ %.pre743, %._crit_edge1024 ], [ %2901, %._crit_edge351 ]
  %2961 = phi i32 [ %.pre745, %._crit_edge1024 ], [ %2902, %._crit_edge351 ]
  %2962 = phi i32 [ %.pre747, %._crit_edge1024 ], [ %2903, %._crit_edge351 ]
  %2963 = phi i32 [ %.pre749, %._crit_edge1024 ], [ %2904, %._crit_edge351 ]
  %2964 = phi i32 [ %.pre751, %._crit_edge1024 ], [ %2905, %._crit_edge351 ]
  %2965 = phi i32 [ %.pre753, %._crit_edge1024 ], [ %2906, %._crit_edge351 ]
  %2966 = phi i32 [ %.pre755, %._crit_edge1024 ], [ %2907, %._crit_edge351 ]
  %2967 = phi i32 [ %.pre757, %._crit_edge1024 ], [ %2908, %._crit_edge351 ]
  %2968 = phi i32 [ %.pre759, %._crit_edge1024 ], [ %2909, %._crit_edge351 ]
  %2969 = phi i32 [ %.pre761, %._crit_edge1024 ], [ %2910, %._crit_edge351 ]
  %2970 = phi i32 [ %.pre763, %._crit_edge1024 ], [ %2911, %._crit_edge351 ]
  %2971 = phi i32 [ %.pre765, %._crit_edge1024 ], [ %2912, %._crit_edge351 ]
  %2972 = phi i32 [ %.pre767, %._crit_edge1024 ], [ %2913, %._crit_edge351 ]
  %2973 = phi i32 [ %.pre769, %._crit_edge1024 ], [ %2914, %._crit_edge351 ]
  %2974 = phi i32 [ %.pre771, %._crit_edge1024 ], [ %2915, %._crit_edge351 ]
  %2975 = phi i32 [ %.pre773, %._crit_edge1024 ], [ %2916, %._crit_edge351 ]
  %2976 = phi i32 [ %.pre775, %._crit_edge1024 ], [ %2917, %._crit_edge351 ]
  %2977 = phi i32 [ %.pre777, %._crit_edge1024 ], [ %2918, %._crit_edge351 ]
  %2978 = phi i32* [ %.pre779, %._crit_edge1024 ], [ %2919, %._crit_edge351 ]
  %2979 = phi i32* [ %.pre781, %._crit_edge1024 ], [ %2920, %._crit_edge351 ]
  %2980 = phi i32* [ %.pre783, %._crit_edge1024 ], [ %2921, %._crit_edge351 ]
  %.pre-phi11202479 = phi i32* [ %.phi.trans.insert738, %._crit_edge1024 ], [ %.pre-phi11202480, %._crit_edge351 ]
  %.pre-phi11212424 = phi i32* [ %.phi.trans.insert740, %._crit_edge1024 ], [ %.pre-phi11212425, %._crit_edge351 ]
  %.pre-phi11222369 = phi i32* [ %.phi.trans.insert742, %._crit_edge1024 ], [ %.pre-phi11222370, %._crit_edge351 ]
  %.pre-phi11232314 = phi i32* [ %.phi.trans.insert744, %._crit_edge1024 ], [ %.pre-phi11232315, %._crit_edge351 ]
  %.pre-phi11242259 = phi i32* [ %.phi.trans.insert746, %._crit_edge1024 ], [ %.pre-phi11242260, %._crit_edge351 ]
  %.pre-phi11252204 = phi i32* [ %.phi.trans.insert748, %._crit_edge1024 ], [ %.pre-phi11252205, %._crit_edge351 ]
  %.pre-phi11262149 = phi i32* [ %.phi.trans.insert750, %._crit_edge1024 ], [ %.pre-phi11262150, %._crit_edge351 ]
  %.pre-phi11272094 = phi i32* [ %.phi.trans.insert752, %._crit_edge1024 ], [ %.pre-phi11272095, %._crit_edge351 ]
  %.pre-phi11282039 = phi i32* [ %.phi.trans.insert754, %._crit_edge1024 ], [ %.pre-phi11282040, %._crit_edge351 ]
  %.pre-phi11291984 = phi i32* [ %.phi.trans.insert756, %._crit_edge1024 ], [ %.pre-phi11291985, %._crit_edge351 ]
  %.pre-phi11301929 = phi i32* [ %.phi.trans.insert758, %._crit_edge1024 ], [ %.pre-phi11301930, %._crit_edge351 ]
  %.pre-phi11311874 = phi i32* [ %.phi.trans.insert760, %._crit_edge1024 ], [ %.pre-phi11311875, %._crit_edge351 ]
  %.pre-phi11321819 = phi i32* [ %.phi.trans.insert762, %._crit_edge1024 ], [ %.pre-phi11321820, %._crit_edge351 ]
  %.pre-phi11331764 = phi i32* [ %.phi.trans.insert764, %._crit_edge1024 ], [ %.pre-phi11331765, %._crit_edge351 ]
  %.pre-phi11341709 = phi i32* [ %.phi.trans.insert766, %._crit_edge1024 ], [ %.pre-phi11341710, %._crit_edge351 ]
  %.pre-phi11351654 = phi i32* [ %.phi.trans.insert768, %._crit_edge1024 ], [ %.pre-phi11351655, %._crit_edge351 ]
  %.pre-phi11361599 = phi i32* [ %.phi.trans.insert770, %._crit_edge1024 ], [ %.pre-phi11361600, %._crit_edge351 ]
  %.pre-phi11371544 = phi i32* [ %.phi.trans.insert772, %._crit_edge1024 ], [ %.pre-phi11371545, %._crit_edge351 ]
  %.pre-phi11381489 = phi i32* [ %.phi.trans.insert774, %._crit_edge1024 ], [ %.pre-phi11381490, %._crit_edge351 ]
  %.pre-phi11391434 = phi i32* [ %.phi.trans.insert776, %._crit_edge1024 ], [ %.pre-phi11391435, %._crit_edge351 ]
  %.pre-phi11401379 = phi i32** [ %.phi.trans.insert778, %._crit_edge1024 ], [ %.pre-phi11401380, %._crit_edge351 ]
  %.pre-phi11411324 = phi i32** [ %.phi.trans.insert780, %._crit_edge1024 ], [ %.pre-phi11411325, %._crit_edge351 ]
  %.pre-phi11421269 = phi i32** [ %.phi.trans.insert782, %._crit_edge1024 ], [ %.pre-phi11421270, %._crit_edge351 ]
  %.pre-phi1165 = phi i32* [ %.phi.trans.insert1025, %._crit_edge1024 ], [ %.pre-phi1163, %._crit_edge351 ]
  %2981 = phi i32 [ %.pre1026, %._crit_edge1024 ], [ %2925, %._crit_edge351 ]
  store i32 49, i32* %3, align 4, !tbaa !8
  %2982 = icmp sgt i32 %2981, 7
  %.phi.trans.insert1029 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %2982, label %._crit_edge1028, label %.lr.ph345

._crit_edge1028:                                  ; preds = %2956
  %.pre1030 = load i32* %.phi.trans.insert1029, align 4, !tbaa !34
  br label %._crit_edge346

.lr.ph345:                                        ; preds = %2956
  %.pre1027 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1116 = getelementptr inbounds %struct.bz_stream* %.pre1027, i64 0, i32 1
  %.pre1117 = load i32* %.phi.trans.insert1116, align 4, !tbaa !35
  br label %2991

._crit_edge346:                                   ; preds = %.backedge64, %._crit_edge1028
  %2983 = phi i32 [ %.pre1030, %._crit_edge1028 ], [ %3002, %.backedge64 ]
  %.lcssa174 = phi i32 [ %2981, %._crit_edge1028 ], [ %3003, %.backedge64 ]
  %2984 = add nsw i32 %.lcssa174, -8
  %2985 = lshr i32 %2983, %2984
  store i32 %2984, i32* %.pre-phi1165, align 4, !tbaa !9
  %2986 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  %2987 = load i32* %2986, align 4, !tbaa !70
  %2988 = shl i32 %2987, 8
  %2989 = and i32 %2985, 255
  %2990 = or i32 %2988, %2989
  store i32 %2990, i32* %2986, align 4, !tbaa !70
  br label %3015

; <label>:2991                                    ; preds = %.lr.ph345, %.backedge64
  %2992 = phi i32 [ %.pre1117, %.lr.ph345 ], [ %3005, %.backedge64 ]
  %2993 = phi i32 [ %2981, %.lr.ph345 ], [ %3003, %.backedge64 ]
  %2994 = icmp eq i32 %2992, 0
  br i1 %2994, label %.loopexit, label %2995

; <label>:2995                                    ; preds = %2991
  %2996 = load i32* %.phi.trans.insert1029, align 4, !tbaa !34
  %2997 = shl i32 %2996, 8
  %2998 = getelementptr inbounds %struct.bz_stream* %.pre1027, i64 0, i32 0
  %2999 = load i8** %2998, align 8, !tbaa !37
  %3000 = load i8* %2999, align 1, !tbaa !38
  %3001 = zext i8 %3000 to i32
  %3002 = or i32 %3001, %2997
  store i32 %3002, i32* %.phi.trans.insert1029, align 4, !tbaa !34
  %3003 = add nsw i32 %2993, 8
  store i32 %3003, i32* %.pre-phi1165, align 4, !tbaa !9
  %3004 = getelementptr inbounds i8* %2999, i64 1
  store i8* %3004, i8** %2998, align 8, !tbaa !37
  %3005 = add i32 %2992, -1
  store i32 %3005, i32* %.phi.trans.insert1116, align 4, !tbaa !35
  %3006 = getelementptr inbounds %struct.bz_stream* %.pre1027, i64 0, i32 2
  %3007 = load i32* %3006, align 4, !tbaa !39
  %3008 = add i32 %3007, 1
  store i32 %3008, i32* %3006, align 4, !tbaa !39
  %3009 = icmp eq i32 %3008, 0
  br i1 %3009, label %3010, label %.backedge64

; <label>:3010                                    ; preds = %2995
  %3011 = getelementptr inbounds %struct.bz_stream* %.pre1027, i64 0, i32 3
  %3012 = load i32* %3011, align 4, !tbaa !40
  %3013 = add i32 %3012, 1
  store i32 %3013, i32* %3011, align 4, !tbaa !40
  br label %.backedge64

.backedge64:                                      ; preds = %3010, %2995
  %3014 = icmp sgt i32 %3003, 7
  br i1 %3014, label %._crit_edge346, label %2991

; <label>:3015                                    ; preds = %._crit_edge1031, %._crit_edge346
  %3016 = phi i32 [ %.pre, %._crit_edge1031 ], [ %2957, %._crit_edge346 ]
  %3017 = phi i32 [ %.pre739, %._crit_edge1031 ], [ %2958, %._crit_edge346 ]
  %3018 = phi i32 [ %.pre741, %._crit_edge1031 ], [ %2959, %._crit_edge346 ]
  %3019 = phi i32 [ %.pre743, %._crit_edge1031 ], [ %2960, %._crit_edge346 ]
  %3020 = phi i32 [ %.pre745, %._crit_edge1031 ], [ %2961, %._crit_edge346 ]
  %3021 = phi i32 [ %.pre747, %._crit_edge1031 ], [ %2962, %._crit_edge346 ]
  %3022 = phi i32 [ %.pre749, %._crit_edge1031 ], [ %2963, %._crit_edge346 ]
  %3023 = phi i32 [ %.pre751, %._crit_edge1031 ], [ %2964, %._crit_edge346 ]
  %3024 = phi i32 [ %.pre753, %._crit_edge1031 ], [ %2965, %._crit_edge346 ]
  %3025 = phi i32 [ %.pre755, %._crit_edge1031 ], [ %2966, %._crit_edge346 ]
  %3026 = phi i32 [ %.pre757, %._crit_edge1031 ], [ %2967, %._crit_edge346 ]
  %3027 = phi i32 [ %.pre759, %._crit_edge1031 ], [ %2968, %._crit_edge346 ]
  %3028 = phi i32 [ %.pre761, %._crit_edge1031 ], [ %2969, %._crit_edge346 ]
  %3029 = phi i32 [ %.pre763, %._crit_edge1031 ], [ %2970, %._crit_edge346 ]
  %3030 = phi i32 [ %.pre765, %._crit_edge1031 ], [ %2971, %._crit_edge346 ]
  %3031 = phi i32 [ %.pre767, %._crit_edge1031 ], [ %2972, %._crit_edge346 ]
  %3032 = phi i32 [ %.pre769, %._crit_edge1031 ], [ %2973, %._crit_edge346 ]
  %3033 = phi i32 [ %.pre771, %._crit_edge1031 ], [ %2974, %._crit_edge346 ]
  %3034 = phi i32 [ %.pre773, %._crit_edge1031 ], [ %2975, %._crit_edge346 ]
  %3035 = phi i32 [ %.pre775, %._crit_edge1031 ], [ %2976, %._crit_edge346 ]
  %3036 = phi i32 [ %.pre777, %._crit_edge1031 ], [ %2977, %._crit_edge346 ]
  %3037 = phi i32* [ %.pre779, %._crit_edge1031 ], [ %2978, %._crit_edge346 ]
  %3038 = phi i32* [ %.pre781, %._crit_edge1031 ], [ %2979, %._crit_edge346 ]
  %3039 = phi i32* [ %.pre783, %._crit_edge1031 ], [ %2980, %._crit_edge346 ]
  %.pre-phi11202478 = phi i32* [ %.phi.trans.insert738, %._crit_edge1031 ], [ %.pre-phi11202479, %._crit_edge346 ]
  %.pre-phi11212423 = phi i32* [ %.phi.trans.insert740, %._crit_edge1031 ], [ %.pre-phi11212424, %._crit_edge346 ]
  %.pre-phi11222368 = phi i32* [ %.phi.trans.insert742, %._crit_edge1031 ], [ %.pre-phi11222369, %._crit_edge346 ]
  %.pre-phi11232313 = phi i32* [ %.phi.trans.insert744, %._crit_edge1031 ], [ %.pre-phi11232314, %._crit_edge346 ]
  %.pre-phi11242258 = phi i32* [ %.phi.trans.insert746, %._crit_edge1031 ], [ %.pre-phi11242259, %._crit_edge346 ]
  %.pre-phi11252203 = phi i32* [ %.phi.trans.insert748, %._crit_edge1031 ], [ %.pre-phi11252204, %._crit_edge346 ]
  %.pre-phi11262148 = phi i32* [ %.phi.trans.insert750, %._crit_edge1031 ], [ %.pre-phi11262149, %._crit_edge346 ]
  %.pre-phi11272093 = phi i32* [ %.phi.trans.insert752, %._crit_edge1031 ], [ %.pre-phi11272094, %._crit_edge346 ]
  %.pre-phi11282038 = phi i32* [ %.phi.trans.insert754, %._crit_edge1031 ], [ %.pre-phi11282039, %._crit_edge346 ]
  %.pre-phi11291983 = phi i32* [ %.phi.trans.insert756, %._crit_edge1031 ], [ %.pre-phi11291984, %._crit_edge346 ]
  %.pre-phi11301928 = phi i32* [ %.phi.trans.insert758, %._crit_edge1031 ], [ %.pre-phi11301929, %._crit_edge346 ]
  %.pre-phi11311873 = phi i32* [ %.phi.trans.insert760, %._crit_edge1031 ], [ %.pre-phi11311874, %._crit_edge346 ]
  %.pre-phi11321818 = phi i32* [ %.phi.trans.insert762, %._crit_edge1031 ], [ %.pre-phi11321819, %._crit_edge346 ]
  %.pre-phi11331763 = phi i32* [ %.phi.trans.insert764, %._crit_edge1031 ], [ %.pre-phi11331764, %._crit_edge346 ]
  %.pre-phi11341708 = phi i32* [ %.phi.trans.insert766, %._crit_edge1031 ], [ %.pre-phi11341709, %._crit_edge346 ]
  %.pre-phi11351653 = phi i32* [ %.phi.trans.insert768, %._crit_edge1031 ], [ %.pre-phi11351654, %._crit_edge346 ]
  %.pre-phi11361598 = phi i32* [ %.phi.trans.insert770, %._crit_edge1031 ], [ %.pre-phi11361599, %._crit_edge346 ]
  %.pre-phi11371543 = phi i32* [ %.phi.trans.insert772, %._crit_edge1031 ], [ %.pre-phi11371544, %._crit_edge346 ]
  %.pre-phi11381488 = phi i32* [ %.phi.trans.insert774, %._crit_edge1031 ], [ %.pre-phi11381489, %._crit_edge346 ]
  %.pre-phi11391433 = phi i32* [ %.phi.trans.insert776, %._crit_edge1031 ], [ %.pre-phi11391434, %._crit_edge346 ]
  %.pre-phi11401378 = phi i32** [ %.phi.trans.insert778, %._crit_edge1031 ], [ %.pre-phi11401379, %._crit_edge346 ]
  %.pre-phi11411323 = phi i32** [ %.phi.trans.insert780, %._crit_edge1031 ], [ %.pre-phi11411324, %._crit_edge346 ]
  %.pre-phi11421268 = phi i32** [ %.phi.trans.insert782, %._crit_edge1031 ], [ %.pre-phi11421269, %._crit_edge346 ]
  %.pre-phi1167 = phi i32* [ %.phi.trans.insert1032, %._crit_edge1031 ], [ %.pre-phi1165, %._crit_edge346 ]
  %3040 = phi i32 [ %.pre1033, %._crit_edge1031 ], [ %2984, %._crit_edge346 ]
  store i32 50, i32* %3, align 4, !tbaa !8
  %3041 = icmp sgt i32 %3040, 7
  %.phi.trans.insert1036 = getelementptr inbounds %struct.DState* %s, i64 0, i32 7
  br i1 %3041, label %._crit_edge1035, label %.lr.ph

._crit_edge1035:                                  ; preds = %3015
  %.pre1037 = load i32* %.phi.trans.insert1036, align 4, !tbaa !34
  br label %._crit_edge

.lr.ph:                                           ; preds = %3015
  %.pre1034 = load %struct.bz_stream** %1, align 8, !tbaa !2
  %.phi.trans.insert1118 = getelementptr inbounds %struct.bz_stream* %.pre1034, i64 0, i32 1
  %.pre1119 = load i32* %.phi.trans.insert1118, align 4, !tbaa !35
  br label %3050

._crit_edge:                                      ; preds = %.backedge, %._crit_edge1035
  %3042 = phi i32 [ %.pre1037, %._crit_edge1035 ], [ %3061, %.backedge ]
  %.lcssa170 = phi i32 [ %3040, %._crit_edge1035 ], [ %3062, %.backedge ]
  %3043 = add nsw i32 %.lcssa170, -8
  %3044 = lshr i32 %3042, %3043
  store i32 %3043, i32* %.pre-phi1167, align 4, !tbaa !9
  %3045 = getelementptr inbounds %struct.DState* %s, i64 0, i32 24
  %3046 = load i32* %3045, align 4, !tbaa !70
  %3047 = shl i32 %3046, 8
  %3048 = and i32 %3044, 255
  %3049 = or i32 %3047, %3048
  store i32 %3049, i32* %3045, align 4, !tbaa !70
  store i32 1, i32* %3, align 4, !tbaa !8
  br label %.loopexit

; <label>:3050                                    ; preds = %.lr.ph, %.backedge
  %3051 = phi i32 [ %.pre1119, %.lr.ph ], [ %3064, %.backedge ]
  %3052 = phi i32 [ %3040, %.lr.ph ], [ %3062, %.backedge ]
  %3053 = icmp eq i32 %3051, 0
  br i1 %3053, label %.loopexit, label %3054

; <label>:3054                                    ; preds = %3050
  %3055 = load i32* %.phi.trans.insert1036, align 4, !tbaa !34
  %3056 = shl i32 %3055, 8
  %3057 = getelementptr inbounds %struct.bz_stream* %.pre1034, i64 0, i32 0
  %3058 = load i8** %3057, align 8, !tbaa !37
  %3059 = load i8* %3058, align 1, !tbaa !38
  %3060 = zext i8 %3059 to i32
  %3061 = or i32 %3060, %3056
  store i32 %3061, i32* %.phi.trans.insert1036, align 4, !tbaa !34
  %3062 = add nsw i32 %3052, 8
  store i32 %3062, i32* %.pre-phi1167, align 4, !tbaa !9
  %3063 = getelementptr inbounds i8* %3058, i64 1
  store i8* %3063, i8** %3057, align 8, !tbaa !37
  %3064 = add i32 %3051, -1
  store i32 %3064, i32* %.phi.trans.insert1118, align 4, !tbaa !35
  %3065 = getelementptr inbounds %struct.bz_stream* %.pre1034, i64 0, i32 2
  %3066 = load i32* %3065, align 4, !tbaa !39
  %3067 = add i32 %3066, 1
  store i32 %3067, i32* %3065, align 4, !tbaa !39
  %3068 = icmp eq i32 %3067, 0
  br i1 %3068, label %3069, label %.backedge

; <label>:3069                                    ; preds = %3054
  %3070 = getelementptr inbounds %struct.bz_stream* %.pre1034, i64 0, i32 3
  %3071 = load i32* %3070, align 4, !tbaa !40
  %3072 = add i32 %3071, 1
  store i32 %3072, i32* %3070, align 4, !tbaa !40
  br label %.backedge

.backedge:                                        ; preds = %3069, %3054
  %3073 = icmp sgt i32 %3062, 7
  br i1 %3073, label %._crit_edge, label %3050

; <label>:3074                                    ; preds = %34
  tail call void @BZ2_bz__AssertH__fail(i32 4001) #4
  tail call void @BZ2_bz__AssertH__fail(i32 4002) #4
  br label %.loopexit

.loopexit98:                                      ; preds = %.preheader97
  %3075 = trunc i64 %indvars.iv680 to i32
  br label %.loopexit

.loopexit104:                                     ; preds = %2051
  %3076 = trunc i64 %indvars.iv689 to i32
  br label %.loopexit

.loopexit107:                                     ; preds = %2043
  %3077 = trunc i64 %indvars.iv691 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %40, %96, %152, %209, %294, %350, %406, %462, %518, %574, %645, %704, %763, %822, %879, %938, %997, %1057, %1356, %1408, %1813, %2231, %2276, %1938, %1983, %1864, %1584, %1672, %1721, %1507, %1483, %1254, %1146, %2588, %2644, %2700, %2756, %2812, %2873, %2932, %2991, %3050, %.loopexit107, %.loopexit104, %.loopexit98, %._crit_edge361, %._crit_edge366, %._crit_edge371, %._crit_edge376, %._crit_edge381, %2486, %2480, %2549, %2536, %2309, %2300, %2255, %2203, %2059, %2007, %1962, %1910, %1888, %1837, %1784, %1627, %._crit_edge511, %._crit_edge516, %._crit_edge516, %._crit_edge516, %makeMaps_d.exit, %1081, %._crit_edge522, %._crit_edge562, %._crit_edge567, %._crit_edge572, %._crit_edge577, %._crit_edge582, %._crit_edge587, %257, %242, %._crit_edge592, %._crit_edge597, %._crit_edge602, %._crit_edge607, %3074, %._crit_edge
  %3078 = phi i32 [ %.pre767, %3074 ], [ %3031, %._crit_edge ], [ 0, %._crit_edge607 ], [ %80, %._crit_edge602 ], [ %136, %._crit_edge597 ], [ %192, %._crit_edge592 ], [ %192, %242 ], [ %192, %257 ], [ %279, %._crit_edge587 ], [ %334, %._crit_edge582 ], [ %390, %._crit_edge577 ], [ %446, %._crit_edge572 ], [ %502, %._crit_edge567 ], [ %558, %._crit_edge562 ], [ %1037, %._crit_edge522 ], [ %1037, %1081 ], [ %1184, %makeMaps_d.exit ], [ %1340, %._crit_edge516 ], [ %1340, %._crit_edge516 ], [ %1340, %._crit_edge516 ], [ %1392, %._crit_edge511 ], [ %1636, %1627 ], [ %1545, %1784 ], [ %1841, %1837 ], [ %1841, %1888 ], [ %1901, %1910 ], [ %1963, %1962 ], [ %1963, %2007 ], [ %1897, %2059 ], [ %1897, %2203 ], [ %2256, %2255 ], [ %2256, %2300 ], [ %1897, %2309 ], [ %1897, %2536 ], [ %1897, %2549 ], [ %1897, %2480 ], [ %1897, %2486 ], [ %2572, %._crit_edge381 ], [ %2628, %._crit_edge376 ], [ %2684, %._crit_edge371 ], [ %2740, %._crit_edge366 ], [ %2796, %._crit_edge361 ], [ %1897, %.loopexit98 ], [ %1963, %.loopexit104 ], [ %1963, %.loopexit107 ], [ %3031, %3050 ], [ %2972, %2991 ], [ %2913, %2932 ], [ %2854, %2873 ], [ %2796, %2812 ], [ %2740, %2756 ], [ %2684, %2700 ], [ %2628, %2644 ], [ %2572, %2588 ], [ %1127, %1146 ], [ %1237, %1254 ], [ %1464, %1483 ], [ %1464, %1507 ], [ %1705, %1721 ], [ %1655, %1672 ], [ %1568, %1584 ], [ %1855, %1864 ], [ %1974, %1983 ], [ %1927, %1938 ], [ %2267, %2276 ], [ %2220, %2231 ], [ %1800, %1813 ], [ %1392, %1408 ], [ %1340, %1356 ], [ %1037, %1057 ], [ %978, %997 ], [ %919, %938 ], [ %862, %879 ], [ %803, %822 ], [ %744, %763 ], [ %685, %704 ], [ %626, %645 ], [ %558, %574 ], [ %502, %518 ], [ %446, %462 ], [ %390, %406 ], [ %334, %350 ], [ %279, %294 ], [ %192, %209 ], [ %136, %152 ], [ %80, %96 ], [ 0, %40 ]
  %.pre-phi11202437 = phi i32* [ %.phi.trans.insert738, %3074 ], [ %.pre-phi11202478, %._crit_edge ], [ %7, %._crit_edge607 ], [ %.pre-phi11202490, %._crit_edge602 ], [ %.pre-phi11202489, %._crit_edge597 ], [ %.pre-phi11202488, %._crit_edge592 ], [ %.pre-phi11202488, %242 ], [ %.pre-phi11202488, %257 ], [ %.pre-phi11202487, %._crit_edge587 ], [ %.pre-phi11202477, %._crit_edge582 ], [ %.pre-phi11202476, %._crit_edge577 ], [ %.pre-phi11202475, %._crit_edge572 ], [ %.pre-phi11202474, %._crit_edge567 ], [ %.pre-phi11202473, %._crit_edge562 ], [ %.pre-phi11202465, %._crit_edge522 ], [ %.pre-phi11202465, %1081 ], [ %.pre-phi11202462, %makeMaps_d.exit ], [ %.pre-phi11202458, %._crit_edge516 ], [ %.pre-phi11202458, %._crit_edge516 ], [ %.pre-phi11202458, %._crit_edge516 ], [ %.pre-phi11202457, %._crit_edge511 ], [ %.pre-phi11202451, %1627 ], [ %.pre-phi11202454, %1784 ], [ %.pre-phi11202447, %1837 ], [ %.pre-phi11202447, %1888 ], [ %.pre-phi11202444, %1910 ], [ %.pre-phi11202442, %1962 ], [ %.pre-phi11202442, %2007 ], [ %.pre-phi11202445, %2059 ], [ %.pre-phi11202445, %2203 ], [ %.pre-phi11202439, %2255 ], [ %.pre-phi11202439, %2300 ], [ %.pre-phi11202445, %2309 ], [ %.pre-phi11202445, %2536 ], [ %.pre-phi11202445, %2549 ], [ %.pre-phi11202445, %2480 ], [ %.pre-phi11202445, %2486 ], [ %.pre-phi11202486, %._crit_edge381 ], [ %.pre-phi11202485, %._crit_edge376 ], [ %.pre-phi11202484, %._crit_edge371 ], [ %.pre-phi11202483, %._crit_edge366 ], [ %.pre-phi11202482, %._crit_edge361 ], [ %.pre-phi11202445, %.loopexit98 ], [ %.pre-phi11202442, %.loopexit104 ], [ %.pre-phi11202442, %.loopexit107 ], [ %.pre-phi11202478, %3050 ], [ %.pre-phi11202479, %2991 ], [ %.pre-phi11202480, %2932 ], [ %.pre-phi11202481, %2873 ], [ %.pre-phi11202482, %2812 ], [ %.pre-phi11202483, %2756 ], [ %.pre-phi11202484, %2700 ], [ %.pre-phi11202485, %2644 ], [ %.pre-phi11202486, %2588 ], [ %.pre-phi11202463, %1146 ], [ %.pre-phi11202459, %1254 ], [ %.pre-phi11202455, %1483 ], [ %.pre-phi11202455, %1507 ], [ %.pre-phi11202449, %1721 ], [ %.pre-phi11202450, %1672 ], [ %.pre-phi11202453, %1584 ], [ %.pre-phi11202446, %1864 ], [ %.pre-phi11202441, %1983 ], [ %.pre-phi11202443, %1938 ], [ %.pre-phi11202438, %2276 ], [ %.pre-phi11202440, %2231 ], [ %.pre-phi11202448, %1813 ], [ %.pre-phi11202457, %1408 ], [ %.pre-phi11202458, %1356 ], [ %.pre-phi11202465, %1057 ], [ %.pre-phi11202466, %997 ], [ %.pre-phi11202467, %938 ], [ %.pre-phi11202468, %879 ], [ %.pre-phi11202469, %822 ], [ %.pre-phi11202470, %763 ], [ %.pre-phi11202471, %704 ], [ %.pre-phi11202472, %645 ], [ %.pre-phi11202473, %574 ], [ %.pre-phi11202474, %518 ], [ %.pre-phi11202475, %462 ], [ %.pre-phi11202476, %406 ], [ %.pre-phi11202477, %350 ], [ %.pre-phi11202487, %294 ], [ %.pre-phi11202488, %209 ], [ %.pre-phi11202489, %152 ], [ %.pre-phi11202490, %96 ], [ %7, %40 ]
  %.pre-phi11212382 = phi i32* [ %.phi.trans.insert740, %3074 ], [ %.pre-phi11212423, %._crit_edge ], [ %8, %._crit_edge607 ], [ %.pre-phi11212435, %._crit_edge602 ], [ %.pre-phi11212434, %._crit_edge597 ], [ %.pre-phi11212433, %._crit_edge592 ], [ %.pre-phi11212433, %242 ], [ %.pre-phi11212433, %257 ], [ %.pre-phi11212432, %._crit_edge587 ], [ %.pre-phi11212422, %._crit_edge582 ], [ %.pre-phi11212421, %._crit_edge577 ], [ %.pre-phi11212420, %._crit_edge572 ], [ %.pre-phi11212419, %._crit_edge567 ], [ %.pre-phi11212418, %._crit_edge562 ], [ %.pre-phi11212410, %._crit_edge522 ], [ %.pre-phi11212410, %1081 ], [ %.pre-phi11212407, %makeMaps_d.exit ], [ %.pre-phi11212403, %._crit_edge516 ], [ %.pre-phi11212403, %._crit_edge516 ], [ %.pre-phi11212403, %._crit_edge516 ], [ %.pre-phi11212402, %._crit_edge511 ], [ %.pre-phi11212396, %1627 ], [ %.pre-phi11212399, %1784 ], [ %.pre-phi11212392, %1837 ], [ %.pre-phi11212392, %1888 ], [ %.pre-phi11212389, %1910 ], [ %.pre-phi11212387, %1962 ], [ %.pre-phi11212387, %2007 ], [ %.pre-phi11212390, %2059 ], [ %.pre-phi11212390, %2203 ], [ %.pre-phi11212384, %2255 ], [ %.pre-phi11212384, %2300 ], [ %.pre-phi11212390, %2309 ], [ %.pre-phi11212390, %2536 ], [ %.pre-phi11212390, %2549 ], [ %.pre-phi11212390, %2480 ], [ %.pre-phi11212390, %2486 ], [ %.pre-phi11212431, %._crit_edge381 ], [ %.pre-phi11212430, %._crit_edge376 ], [ %.pre-phi11212429, %._crit_edge371 ], [ %.pre-phi11212428, %._crit_edge366 ], [ %.pre-phi11212427, %._crit_edge361 ], [ %.pre-phi11212390, %.loopexit98 ], [ %.pre-phi11212387, %.loopexit104 ], [ %.pre-phi11212387, %.loopexit107 ], [ %.pre-phi11212423, %3050 ], [ %.pre-phi11212424, %2991 ], [ %.pre-phi11212425, %2932 ], [ %.pre-phi11212426, %2873 ], [ %.pre-phi11212427, %2812 ], [ %.pre-phi11212428, %2756 ], [ %.pre-phi11212429, %2700 ], [ %.pre-phi11212430, %2644 ], [ %.pre-phi11212431, %2588 ], [ %.pre-phi11212408, %1146 ], [ %.pre-phi11212404, %1254 ], [ %.pre-phi11212400, %1483 ], [ %.pre-phi11212400, %1507 ], [ %.pre-phi11212394, %1721 ], [ %.pre-phi11212395, %1672 ], [ %.pre-phi11212398, %1584 ], [ %.pre-phi11212391, %1864 ], [ %.pre-phi11212386, %1983 ], [ %.pre-phi11212388, %1938 ], [ %.pre-phi11212383, %2276 ], [ %.pre-phi11212385, %2231 ], [ %.pre-phi11212393, %1813 ], [ %.pre-phi11212402, %1408 ], [ %.pre-phi11212403, %1356 ], [ %.pre-phi11212410, %1057 ], [ %.pre-phi11212411, %997 ], [ %.pre-phi11212412, %938 ], [ %.pre-phi11212413, %879 ], [ %.pre-phi11212414, %822 ], [ %.pre-phi11212415, %763 ], [ %.pre-phi11212416, %704 ], [ %.pre-phi11212417, %645 ], [ %.pre-phi11212418, %574 ], [ %.pre-phi11212419, %518 ], [ %.pre-phi11212420, %462 ], [ %.pre-phi11212421, %406 ], [ %.pre-phi11212422, %350 ], [ %.pre-phi11212432, %294 ], [ %.pre-phi11212433, %209 ], [ %.pre-phi11212434, %152 ], [ %.pre-phi11212435, %96 ], [ %8, %40 ]
  %.pre-phi11222327 = phi i32* [ %.phi.trans.insert742, %3074 ], [ %.pre-phi11222368, %._crit_edge ], [ %9, %._crit_edge607 ], [ %.pre-phi11222380, %._crit_edge602 ], [ %.pre-phi11222379, %._crit_edge597 ], [ %.pre-phi11222378, %._crit_edge592 ], [ %.pre-phi11222378, %242 ], [ %.pre-phi11222378, %257 ], [ %.pre-phi11222377, %._crit_edge587 ], [ %.pre-phi11222367, %._crit_edge582 ], [ %.pre-phi11222366, %._crit_edge577 ], [ %.pre-phi11222365, %._crit_edge572 ], [ %.pre-phi11222364, %._crit_edge567 ], [ %.pre-phi11222363, %._crit_edge562 ], [ %.pre-phi11222355, %._crit_edge522 ], [ %.pre-phi11222355, %1081 ], [ %.pre-phi11222352, %makeMaps_d.exit ], [ %.pre-phi11222348, %._crit_edge516 ], [ %.pre-phi11222348, %._crit_edge516 ], [ %.pre-phi11222348, %._crit_edge516 ], [ %.pre-phi11222347, %._crit_edge511 ], [ %.pre-phi11222341, %1627 ], [ %.pre-phi11222344, %1784 ], [ %.pre-phi11222337, %1837 ], [ %.pre-phi11222337, %1888 ], [ %.pre-phi11222334, %1910 ], [ %.pre-phi11222332, %1962 ], [ %.pre-phi11222332, %2007 ], [ %.pre-phi11222335, %2059 ], [ %.pre-phi11222335, %2203 ], [ %.pre-phi11222329, %2255 ], [ %.pre-phi11222329, %2300 ], [ %.pre-phi11222335, %2309 ], [ %.pre-phi11222335, %2536 ], [ %.pre-phi11222335, %2549 ], [ %.pre-phi11222335, %2480 ], [ %.pre-phi11222335, %2486 ], [ %.pre-phi11222376, %._crit_edge381 ], [ %.pre-phi11222375, %._crit_edge376 ], [ %.pre-phi11222374, %._crit_edge371 ], [ %.pre-phi11222373, %._crit_edge366 ], [ %.pre-phi11222372, %._crit_edge361 ], [ %.pre-phi11222335, %.loopexit98 ], [ %.pre-phi11222332, %.loopexit104 ], [ %.pre-phi11222332, %.loopexit107 ], [ %.pre-phi11222368, %3050 ], [ %.pre-phi11222369, %2991 ], [ %.pre-phi11222370, %2932 ], [ %.pre-phi11222371, %2873 ], [ %.pre-phi11222372, %2812 ], [ %.pre-phi11222373, %2756 ], [ %.pre-phi11222374, %2700 ], [ %.pre-phi11222375, %2644 ], [ %.pre-phi11222376, %2588 ], [ %.pre-phi11222353, %1146 ], [ %.pre-phi11222349, %1254 ], [ %.pre-phi11222345, %1483 ], [ %.pre-phi11222345, %1507 ], [ %.pre-phi11222339, %1721 ], [ %.pre-phi11222340, %1672 ], [ %.pre-phi11222343, %1584 ], [ %.pre-phi11222336, %1864 ], [ %.pre-phi11222331, %1983 ], [ %.pre-phi11222333, %1938 ], [ %.pre-phi11222328, %2276 ], [ %.pre-phi11222330, %2231 ], [ %.pre-phi11222338, %1813 ], [ %.pre-phi11222347, %1408 ], [ %.pre-phi11222348, %1356 ], [ %.pre-phi11222355, %1057 ], [ %.pre-phi11222356, %997 ], [ %.pre-phi11222357, %938 ], [ %.pre-phi11222358, %879 ], [ %.pre-phi11222359, %822 ], [ %.pre-phi11222360, %763 ], [ %.pre-phi11222361, %704 ], [ %.pre-phi11222362, %645 ], [ %.pre-phi11222363, %574 ], [ %.pre-phi11222364, %518 ], [ %.pre-phi11222365, %462 ], [ %.pre-phi11222366, %406 ], [ %.pre-phi11222367, %350 ], [ %.pre-phi11222377, %294 ], [ %.pre-phi11222378, %209 ], [ %.pre-phi11222379, %152 ], [ %.pre-phi11222380, %96 ], [ %9, %40 ]
  %.pre-phi11232272 = phi i32* [ %.phi.trans.insert744, %3074 ], [ %.pre-phi11232313, %._crit_edge ], [ %10, %._crit_edge607 ], [ %.pre-phi11232325, %._crit_edge602 ], [ %.pre-phi11232324, %._crit_edge597 ], [ %.pre-phi11232323, %._crit_edge592 ], [ %.pre-phi11232323, %242 ], [ %.pre-phi11232323, %257 ], [ %.pre-phi11232322, %._crit_edge587 ], [ %.pre-phi11232312, %._crit_edge582 ], [ %.pre-phi11232311, %._crit_edge577 ], [ %.pre-phi11232310, %._crit_edge572 ], [ %.pre-phi11232309, %._crit_edge567 ], [ %.pre-phi11232308, %._crit_edge562 ], [ %.pre-phi11232300, %._crit_edge522 ], [ %.pre-phi11232300, %1081 ], [ %.pre-phi11232297, %makeMaps_d.exit ], [ %.pre-phi11232293, %._crit_edge516 ], [ %.pre-phi11232293, %._crit_edge516 ], [ %.pre-phi11232293, %._crit_edge516 ], [ %.pre-phi11232292, %._crit_edge511 ], [ %.pre-phi11232286, %1627 ], [ %.pre-phi11232289, %1784 ], [ %.pre-phi11232282, %1837 ], [ %.pre-phi11232282, %1888 ], [ %.pre-phi11232279, %1910 ], [ %.pre-phi11232277, %1962 ], [ %.pre-phi11232277, %2007 ], [ %.pre-phi11232280, %2059 ], [ %.pre-phi11232280, %2203 ], [ %.pre-phi11232274, %2255 ], [ %.pre-phi11232274, %2300 ], [ %.pre-phi11232280, %2309 ], [ %.pre-phi11232280, %2536 ], [ %.pre-phi11232280, %2549 ], [ %.pre-phi11232280, %2480 ], [ %.pre-phi11232280, %2486 ], [ %.pre-phi11232321, %._crit_edge381 ], [ %.pre-phi11232320, %._crit_edge376 ], [ %.pre-phi11232319, %._crit_edge371 ], [ %.pre-phi11232318, %._crit_edge366 ], [ %.pre-phi11232317, %._crit_edge361 ], [ %.pre-phi11232280, %.loopexit98 ], [ %.pre-phi11232277, %.loopexit104 ], [ %.pre-phi11232277, %.loopexit107 ], [ %.pre-phi11232313, %3050 ], [ %.pre-phi11232314, %2991 ], [ %.pre-phi11232315, %2932 ], [ %.pre-phi11232316, %2873 ], [ %.pre-phi11232317, %2812 ], [ %.pre-phi11232318, %2756 ], [ %.pre-phi11232319, %2700 ], [ %.pre-phi11232320, %2644 ], [ %.pre-phi11232321, %2588 ], [ %.pre-phi11232298, %1146 ], [ %.pre-phi11232294, %1254 ], [ %.pre-phi11232290, %1483 ], [ %.pre-phi11232290, %1507 ], [ %.pre-phi11232284, %1721 ], [ %.pre-phi11232285, %1672 ], [ %.pre-phi11232288, %1584 ], [ %.pre-phi11232281, %1864 ], [ %.pre-phi11232276, %1983 ], [ %.pre-phi11232278, %1938 ], [ %.pre-phi11232273, %2276 ], [ %.pre-phi11232275, %2231 ], [ %.pre-phi11232283, %1813 ], [ %.pre-phi11232292, %1408 ], [ %.pre-phi11232293, %1356 ], [ %.pre-phi11232300, %1057 ], [ %.pre-phi11232301, %997 ], [ %.pre-phi11232302, %938 ], [ %.pre-phi11232303, %879 ], [ %.pre-phi11232304, %822 ], [ %.pre-phi11232305, %763 ], [ %.pre-phi11232306, %704 ], [ %.pre-phi11232307, %645 ], [ %.pre-phi11232308, %574 ], [ %.pre-phi11232309, %518 ], [ %.pre-phi11232310, %462 ], [ %.pre-phi11232311, %406 ], [ %.pre-phi11232312, %350 ], [ %.pre-phi11232322, %294 ], [ %.pre-phi11232323, %209 ], [ %.pre-phi11232324, %152 ], [ %.pre-phi11232325, %96 ], [ %10, %40 ]
  %.pre-phi11242217 = phi i32* [ %.phi.trans.insert746, %3074 ], [ %.pre-phi11242258, %._crit_edge ], [ %11, %._crit_edge607 ], [ %.pre-phi11242270, %._crit_edge602 ], [ %.pre-phi11242269, %._crit_edge597 ], [ %.pre-phi11242268, %._crit_edge592 ], [ %.pre-phi11242268, %242 ], [ %.pre-phi11242268, %257 ], [ %.pre-phi11242267, %._crit_edge587 ], [ %.pre-phi11242257, %._crit_edge582 ], [ %.pre-phi11242256, %._crit_edge577 ], [ %.pre-phi11242255, %._crit_edge572 ], [ %.pre-phi11242254, %._crit_edge567 ], [ %.pre-phi11242253, %._crit_edge562 ], [ %.pre-phi11242245, %._crit_edge522 ], [ %.pre-phi11242245, %1081 ], [ %.pre-phi11242242, %makeMaps_d.exit ], [ %.pre-phi11242238, %._crit_edge516 ], [ %.pre-phi11242238, %._crit_edge516 ], [ %.pre-phi11242238, %._crit_edge516 ], [ %.pre-phi11242237, %._crit_edge511 ], [ %.pre-phi11242231, %1627 ], [ %.pre-phi11242234, %1784 ], [ %.pre-phi11242227, %1837 ], [ %.pre-phi11242227, %1888 ], [ %.pre-phi11242224, %1910 ], [ %.pre-phi11242222, %1962 ], [ %.pre-phi11242222, %2007 ], [ %.pre-phi11242225, %2059 ], [ %.pre-phi11242225, %2203 ], [ %.pre-phi11242219, %2255 ], [ %.pre-phi11242219, %2300 ], [ %.pre-phi11242225, %2309 ], [ %.pre-phi11242225, %2536 ], [ %.pre-phi11242225, %2549 ], [ %.pre-phi11242225, %2480 ], [ %.pre-phi11242225, %2486 ], [ %.pre-phi11242266, %._crit_edge381 ], [ %.pre-phi11242265, %._crit_edge376 ], [ %.pre-phi11242264, %._crit_edge371 ], [ %.pre-phi11242263, %._crit_edge366 ], [ %.pre-phi11242262, %._crit_edge361 ], [ %.pre-phi11242225, %.loopexit98 ], [ %.pre-phi11242222, %.loopexit104 ], [ %.pre-phi11242222, %.loopexit107 ], [ %.pre-phi11242258, %3050 ], [ %.pre-phi11242259, %2991 ], [ %.pre-phi11242260, %2932 ], [ %.pre-phi11242261, %2873 ], [ %.pre-phi11242262, %2812 ], [ %.pre-phi11242263, %2756 ], [ %.pre-phi11242264, %2700 ], [ %.pre-phi11242265, %2644 ], [ %.pre-phi11242266, %2588 ], [ %.pre-phi11242243, %1146 ], [ %.pre-phi11242239, %1254 ], [ %.pre-phi11242235, %1483 ], [ %.pre-phi11242235, %1507 ], [ %.pre-phi11242229, %1721 ], [ %.pre-phi11242230, %1672 ], [ %.pre-phi11242233, %1584 ], [ %.pre-phi11242226, %1864 ], [ %.pre-phi11242221, %1983 ], [ %.pre-phi11242223, %1938 ], [ %.pre-phi11242218, %2276 ], [ %.pre-phi11242220, %2231 ], [ %.pre-phi11242228, %1813 ], [ %.pre-phi11242237, %1408 ], [ %.pre-phi11242238, %1356 ], [ %.pre-phi11242245, %1057 ], [ %.pre-phi11242246, %997 ], [ %.pre-phi11242247, %938 ], [ %.pre-phi11242248, %879 ], [ %.pre-phi11242249, %822 ], [ %.pre-phi11242250, %763 ], [ %.pre-phi11242251, %704 ], [ %.pre-phi11242252, %645 ], [ %.pre-phi11242253, %574 ], [ %.pre-phi11242254, %518 ], [ %.pre-phi11242255, %462 ], [ %.pre-phi11242256, %406 ], [ %.pre-phi11242257, %350 ], [ %.pre-phi11242267, %294 ], [ %.pre-phi11242268, %209 ], [ %.pre-phi11242269, %152 ], [ %.pre-phi11242270, %96 ], [ %11, %40 ]
  %.pre-phi11252162 = phi i32* [ %.phi.trans.insert748, %3074 ], [ %.pre-phi11252203, %._crit_edge ], [ %12, %._crit_edge607 ], [ %.pre-phi11252215, %._crit_edge602 ], [ %.pre-phi11252214, %._crit_edge597 ], [ %.pre-phi11252213, %._crit_edge592 ], [ %.pre-phi11252213, %242 ], [ %.pre-phi11252213, %257 ], [ %.pre-phi11252212, %._crit_edge587 ], [ %.pre-phi11252202, %._crit_edge582 ], [ %.pre-phi11252201, %._crit_edge577 ], [ %.pre-phi11252200, %._crit_edge572 ], [ %.pre-phi11252199, %._crit_edge567 ], [ %.pre-phi11252198, %._crit_edge562 ], [ %.pre-phi11252190, %._crit_edge522 ], [ %.pre-phi11252190, %1081 ], [ %.pre-phi11252187, %makeMaps_d.exit ], [ %.pre-phi11252183, %._crit_edge516 ], [ %.pre-phi11252183, %._crit_edge516 ], [ %.pre-phi11252183, %._crit_edge516 ], [ %.pre-phi11252182, %._crit_edge511 ], [ %.pre-phi11252176, %1627 ], [ %.pre-phi11252179, %1784 ], [ %.pre-phi11252172, %1837 ], [ %.pre-phi11252172, %1888 ], [ %.pre-phi11252169, %1910 ], [ %.pre-phi11252167, %1962 ], [ %.pre-phi11252167, %2007 ], [ %.pre-phi11252170, %2059 ], [ %.pre-phi11252170, %2203 ], [ %.pre-phi11252164, %2255 ], [ %.pre-phi11252164, %2300 ], [ %.pre-phi11252170, %2309 ], [ %.pre-phi11252170, %2536 ], [ %.pre-phi11252170, %2549 ], [ %.pre-phi11252170, %2480 ], [ %.pre-phi11252170, %2486 ], [ %.pre-phi11252211, %._crit_edge381 ], [ %.pre-phi11252210, %._crit_edge376 ], [ %.pre-phi11252209, %._crit_edge371 ], [ %.pre-phi11252208, %._crit_edge366 ], [ %.pre-phi11252207, %._crit_edge361 ], [ %.pre-phi11252170, %.loopexit98 ], [ %.pre-phi11252167, %.loopexit104 ], [ %.pre-phi11252167, %.loopexit107 ], [ %.pre-phi11252203, %3050 ], [ %.pre-phi11252204, %2991 ], [ %.pre-phi11252205, %2932 ], [ %.pre-phi11252206, %2873 ], [ %.pre-phi11252207, %2812 ], [ %.pre-phi11252208, %2756 ], [ %.pre-phi11252209, %2700 ], [ %.pre-phi11252210, %2644 ], [ %.pre-phi11252211, %2588 ], [ %.pre-phi11252188, %1146 ], [ %.pre-phi11252184, %1254 ], [ %.pre-phi11252180, %1483 ], [ %.pre-phi11252180, %1507 ], [ %.pre-phi11252174, %1721 ], [ %.pre-phi11252175, %1672 ], [ %.pre-phi11252178, %1584 ], [ %.pre-phi11252171, %1864 ], [ %.pre-phi11252166, %1983 ], [ %.pre-phi11252168, %1938 ], [ %.pre-phi11252163, %2276 ], [ %.pre-phi11252165, %2231 ], [ %.pre-phi11252173, %1813 ], [ %.pre-phi11252182, %1408 ], [ %.pre-phi11252183, %1356 ], [ %.pre-phi11252190, %1057 ], [ %.pre-phi11252191, %997 ], [ %.pre-phi11252192, %938 ], [ %.pre-phi11252193, %879 ], [ %.pre-phi11252194, %822 ], [ %.pre-phi11252195, %763 ], [ %.pre-phi11252196, %704 ], [ %.pre-phi11252197, %645 ], [ %.pre-phi11252198, %574 ], [ %.pre-phi11252199, %518 ], [ %.pre-phi11252200, %462 ], [ %.pre-phi11252201, %406 ], [ %.pre-phi11252202, %350 ], [ %.pre-phi11252212, %294 ], [ %.pre-phi11252213, %209 ], [ %.pre-phi11252214, %152 ], [ %.pre-phi11252215, %96 ], [ %12, %40 ]
  %.pre-phi11262107 = phi i32* [ %.phi.trans.insert750, %3074 ], [ %.pre-phi11262148, %._crit_edge ], [ %13, %._crit_edge607 ], [ %.pre-phi11262160, %._crit_edge602 ], [ %.pre-phi11262159, %._crit_edge597 ], [ %.pre-phi11262158, %._crit_edge592 ], [ %.pre-phi11262158, %242 ], [ %.pre-phi11262158, %257 ], [ %.pre-phi11262157, %._crit_edge587 ], [ %.pre-phi11262147, %._crit_edge582 ], [ %.pre-phi11262146, %._crit_edge577 ], [ %.pre-phi11262145, %._crit_edge572 ], [ %.pre-phi11262144, %._crit_edge567 ], [ %.pre-phi11262143, %._crit_edge562 ], [ %.pre-phi11262135, %._crit_edge522 ], [ %.pre-phi11262135, %1081 ], [ %.pre-phi11262132, %makeMaps_d.exit ], [ %.pre-phi11262128, %._crit_edge516 ], [ %.pre-phi11262128, %._crit_edge516 ], [ %.pre-phi11262128, %._crit_edge516 ], [ %.pre-phi11262127, %._crit_edge511 ], [ %.pre-phi11262121, %1627 ], [ %.pre-phi11262124, %1784 ], [ %.pre-phi11262117, %1837 ], [ %.pre-phi11262117, %1888 ], [ %.pre-phi11262114, %1910 ], [ %.pre-phi11262112, %1962 ], [ %.pre-phi11262112, %2007 ], [ %.pre-phi11262115, %2059 ], [ %.pre-phi11262115, %2203 ], [ %.pre-phi11262109, %2255 ], [ %.pre-phi11262109, %2300 ], [ %.pre-phi11262115, %2309 ], [ %.pre-phi11262115, %2536 ], [ %.pre-phi11262115, %2549 ], [ %.pre-phi11262115, %2480 ], [ %.pre-phi11262115, %2486 ], [ %.pre-phi11262156, %._crit_edge381 ], [ %.pre-phi11262155, %._crit_edge376 ], [ %.pre-phi11262154, %._crit_edge371 ], [ %.pre-phi11262153, %._crit_edge366 ], [ %.pre-phi11262152, %._crit_edge361 ], [ %.pre-phi11262115, %.loopexit98 ], [ %.pre-phi11262112, %.loopexit104 ], [ %.pre-phi11262112, %.loopexit107 ], [ %.pre-phi11262148, %3050 ], [ %.pre-phi11262149, %2991 ], [ %.pre-phi11262150, %2932 ], [ %.pre-phi11262151, %2873 ], [ %.pre-phi11262152, %2812 ], [ %.pre-phi11262153, %2756 ], [ %.pre-phi11262154, %2700 ], [ %.pre-phi11262155, %2644 ], [ %.pre-phi11262156, %2588 ], [ %.pre-phi11262133, %1146 ], [ %.pre-phi11262129, %1254 ], [ %.pre-phi11262125, %1483 ], [ %.pre-phi11262125, %1507 ], [ %.pre-phi11262119, %1721 ], [ %.pre-phi11262120, %1672 ], [ %.pre-phi11262123, %1584 ], [ %.pre-phi11262116, %1864 ], [ %.pre-phi11262111, %1983 ], [ %.pre-phi11262113, %1938 ], [ %.pre-phi11262108, %2276 ], [ %.pre-phi11262110, %2231 ], [ %.pre-phi11262118, %1813 ], [ %.pre-phi11262127, %1408 ], [ %.pre-phi11262128, %1356 ], [ %.pre-phi11262135, %1057 ], [ %.pre-phi11262136, %997 ], [ %.pre-phi11262137, %938 ], [ %.pre-phi11262138, %879 ], [ %.pre-phi11262139, %822 ], [ %.pre-phi11262140, %763 ], [ %.pre-phi11262141, %704 ], [ %.pre-phi11262142, %645 ], [ %.pre-phi11262143, %574 ], [ %.pre-phi11262144, %518 ], [ %.pre-phi11262145, %462 ], [ %.pre-phi11262146, %406 ], [ %.pre-phi11262147, %350 ], [ %.pre-phi11262157, %294 ], [ %.pre-phi11262158, %209 ], [ %.pre-phi11262159, %152 ], [ %.pre-phi11262160, %96 ], [ %13, %40 ]
  %.pre-phi11272052 = phi i32* [ %.phi.trans.insert752, %3074 ], [ %.pre-phi11272093, %._crit_edge ], [ %14, %._crit_edge607 ], [ %.pre-phi11272105, %._crit_edge602 ], [ %.pre-phi11272104, %._crit_edge597 ], [ %.pre-phi11272103, %._crit_edge592 ], [ %.pre-phi11272103, %242 ], [ %.pre-phi11272103, %257 ], [ %.pre-phi11272102, %._crit_edge587 ], [ %.pre-phi11272092, %._crit_edge582 ], [ %.pre-phi11272091, %._crit_edge577 ], [ %.pre-phi11272090, %._crit_edge572 ], [ %.pre-phi11272089, %._crit_edge567 ], [ %.pre-phi11272088, %._crit_edge562 ], [ %.pre-phi11272080, %._crit_edge522 ], [ %.pre-phi11272080, %1081 ], [ %.pre-phi11272077, %makeMaps_d.exit ], [ %.pre-phi11272073, %._crit_edge516 ], [ %.pre-phi11272073, %._crit_edge516 ], [ %.pre-phi11272073, %._crit_edge516 ], [ %.pre-phi11272072, %._crit_edge511 ], [ %.pre-phi11272066, %1627 ], [ %.pre-phi11272069, %1784 ], [ %.pre-phi11272062, %1837 ], [ %.pre-phi11272062, %1888 ], [ %.pre-phi11272059, %1910 ], [ %.pre-phi11272057, %1962 ], [ %.pre-phi11272057, %2007 ], [ %.pre-phi11272060, %2059 ], [ %.pre-phi11272060, %2203 ], [ %.pre-phi11272054, %2255 ], [ %.pre-phi11272054, %2300 ], [ %.pre-phi11272060, %2309 ], [ %.pre-phi11272060, %2536 ], [ %.pre-phi11272060, %2549 ], [ %.pre-phi11272060, %2480 ], [ %.pre-phi11272060, %2486 ], [ %.pre-phi11272101, %._crit_edge381 ], [ %.pre-phi11272100, %._crit_edge376 ], [ %.pre-phi11272099, %._crit_edge371 ], [ %.pre-phi11272098, %._crit_edge366 ], [ %.pre-phi11272097, %._crit_edge361 ], [ %.pre-phi11272060, %.loopexit98 ], [ %.pre-phi11272057, %.loopexit104 ], [ %.pre-phi11272057, %.loopexit107 ], [ %.pre-phi11272093, %3050 ], [ %.pre-phi11272094, %2991 ], [ %.pre-phi11272095, %2932 ], [ %.pre-phi11272096, %2873 ], [ %.pre-phi11272097, %2812 ], [ %.pre-phi11272098, %2756 ], [ %.pre-phi11272099, %2700 ], [ %.pre-phi11272100, %2644 ], [ %.pre-phi11272101, %2588 ], [ %.pre-phi11272078, %1146 ], [ %.pre-phi11272074, %1254 ], [ %.pre-phi11272070, %1483 ], [ %.pre-phi11272070, %1507 ], [ %.pre-phi11272064, %1721 ], [ %.pre-phi11272065, %1672 ], [ %.pre-phi11272068, %1584 ], [ %.pre-phi11272061, %1864 ], [ %.pre-phi11272056, %1983 ], [ %.pre-phi11272058, %1938 ], [ %.pre-phi11272053, %2276 ], [ %.pre-phi11272055, %2231 ], [ %.pre-phi11272063, %1813 ], [ %.pre-phi11272072, %1408 ], [ %.pre-phi11272073, %1356 ], [ %.pre-phi11272080, %1057 ], [ %.pre-phi11272081, %997 ], [ %.pre-phi11272082, %938 ], [ %.pre-phi11272083, %879 ], [ %.pre-phi11272084, %822 ], [ %.pre-phi11272085, %763 ], [ %.pre-phi11272086, %704 ], [ %.pre-phi11272087, %645 ], [ %.pre-phi11272088, %574 ], [ %.pre-phi11272089, %518 ], [ %.pre-phi11272090, %462 ], [ %.pre-phi11272091, %406 ], [ %.pre-phi11272092, %350 ], [ %.pre-phi11272102, %294 ], [ %.pre-phi11272103, %209 ], [ %.pre-phi11272104, %152 ], [ %.pre-phi11272105, %96 ], [ %14, %40 ]
  %.pre-phi11281997 = phi i32* [ %.phi.trans.insert754, %3074 ], [ %.pre-phi11282038, %._crit_edge ], [ %15, %._crit_edge607 ], [ %.pre-phi11282050, %._crit_edge602 ], [ %.pre-phi11282049, %._crit_edge597 ], [ %.pre-phi11282048, %._crit_edge592 ], [ %.pre-phi11282048, %242 ], [ %.pre-phi11282048, %257 ], [ %.pre-phi11282047, %._crit_edge587 ], [ %.pre-phi11282037, %._crit_edge582 ], [ %.pre-phi11282036, %._crit_edge577 ], [ %.pre-phi11282035, %._crit_edge572 ], [ %.pre-phi11282034, %._crit_edge567 ], [ %.pre-phi11282033, %._crit_edge562 ], [ %.pre-phi11282025, %._crit_edge522 ], [ %.pre-phi11282025, %1081 ], [ %.pre-phi11282022, %makeMaps_d.exit ], [ %.pre-phi11282018, %._crit_edge516 ], [ %.pre-phi11282018, %._crit_edge516 ], [ %.pre-phi11282018, %._crit_edge516 ], [ %.pre-phi11282017, %._crit_edge511 ], [ %.pre-phi11282011, %1627 ], [ %.pre-phi11282014, %1784 ], [ %.pre-phi11282007, %1837 ], [ %.pre-phi11282007, %1888 ], [ %.pre-phi11282004, %1910 ], [ %.pre-phi11282002, %1962 ], [ %.pre-phi11282002, %2007 ], [ %.pre-phi11282005, %2059 ], [ %.pre-phi11282005, %2203 ], [ %.pre-phi11281999, %2255 ], [ %.pre-phi11281999, %2300 ], [ %.pre-phi11282005, %2309 ], [ %.pre-phi11282005, %2536 ], [ %.pre-phi11282005, %2549 ], [ %.pre-phi11282005, %2480 ], [ %.pre-phi11282005, %2486 ], [ %.pre-phi11282046, %._crit_edge381 ], [ %.pre-phi11282045, %._crit_edge376 ], [ %.pre-phi11282044, %._crit_edge371 ], [ %.pre-phi11282043, %._crit_edge366 ], [ %.pre-phi11282042, %._crit_edge361 ], [ %.pre-phi11282005, %.loopexit98 ], [ %.pre-phi11282002, %.loopexit104 ], [ %.pre-phi11282002, %.loopexit107 ], [ %.pre-phi11282038, %3050 ], [ %.pre-phi11282039, %2991 ], [ %.pre-phi11282040, %2932 ], [ %.pre-phi11282041, %2873 ], [ %.pre-phi11282042, %2812 ], [ %.pre-phi11282043, %2756 ], [ %.pre-phi11282044, %2700 ], [ %.pre-phi11282045, %2644 ], [ %.pre-phi11282046, %2588 ], [ %.pre-phi11282023, %1146 ], [ %.pre-phi11282019, %1254 ], [ %.pre-phi11282015, %1483 ], [ %.pre-phi11282015, %1507 ], [ %.pre-phi11282009, %1721 ], [ %.pre-phi11282010, %1672 ], [ %.pre-phi11282013, %1584 ], [ %.pre-phi11282006, %1864 ], [ %.pre-phi11282001, %1983 ], [ %.pre-phi11282003, %1938 ], [ %.pre-phi11281998, %2276 ], [ %.pre-phi11282000, %2231 ], [ %.pre-phi11282008, %1813 ], [ %.pre-phi11282017, %1408 ], [ %.pre-phi11282018, %1356 ], [ %.pre-phi11282025, %1057 ], [ %.pre-phi11282026, %997 ], [ %.pre-phi11282027, %938 ], [ %.pre-phi11282028, %879 ], [ %.pre-phi11282029, %822 ], [ %.pre-phi11282030, %763 ], [ %.pre-phi11282031, %704 ], [ %.pre-phi11282032, %645 ], [ %.pre-phi11282033, %574 ], [ %.pre-phi11282034, %518 ], [ %.pre-phi11282035, %462 ], [ %.pre-phi11282036, %406 ], [ %.pre-phi11282037, %350 ], [ %.pre-phi11282047, %294 ], [ %.pre-phi11282048, %209 ], [ %.pre-phi11282049, %152 ], [ %.pre-phi11282050, %96 ], [ %15, %40 ]
  %.pre-phi11291942 = phi i32* [ %.phi.trans.insert756, %3074 ], [ %.pre-phi11291983, %._crit_edge ], [ %16, %._crit_edge607 ], [ %.pre-phi11291995, %._crit_edge602 ], [ %.pre-phi11291994, %._crit_edge597 ], [ %.pre-phi11291993, %._crit_edge592 ], [ %.pre-phi11291993, %242 ], [ %.pre-phi11291993, %257 ], [ %.pre-phi11291992, %._crit_edge587 ], [ %.pre-phi11291982, %._crit_edge582 ], [ %.pre-phi11291981, %._crit_edge577 ], [ %.pre-phi11291980, %._crit_edge572 ], [ %.pre-phi11291979, %._crit_edge567 ], [ %.pre-phi11291978, %._crit_edge562 ], [ %.pre-phi11291970, %._crit_edge522 ], [ %.pre-phi11291970, %1081 ], [ %.pre-phi11291967, %makeMaps_d.exit ], [ %.pre-phi11291963, %._crit_edge516 ], [ %.pre-phi11291963, %._crit_edge516 ], [ %.pre-phi11291963, %._crit_edge516 ], [ %.pre-phi11291962, %._crit_edge511 ], [ %.pre-phi11291956, %1627 ], [ %.pre-phi11291959, %1784 ], [ %.pre-phi11291952, %1837 ], [ %.pre-phi11291952, %1888 ], [ %.pre-phi11291949, %1910 ], [ %.pre-phi11291947, %1962 ], [ %.pre-phi11291947, %2007 ], [ %.pre-phi11291950, %2059 ], [ %.pre-phi11291950, %2203 ], [ %.pre-phi11291944, %2255 ], [ %.pre-phi11291944, %2300 ], [ %.pre-phi11291950, %2309 ], [ %.pre-phi11291950, %2536 ], [ %.pre-phi11291950, %2549 ], [ %.pre-phi11291950, %2480 ], [ %.pre-phi11291950, %2486 ], [ %.pre-phi11291991, %._crit_edge381 ], [ %.pre-phi11291990, %._crit_edge376 ], [ %.pre-phi11291989, %._crit_edge371 ], [ %.pre-phi11291988, %._crit_edge366 ], [ %.pre-phi11291987, %._crit_edge361 ], [ %.pre-phi11291950, %.loopexit98 ], [ %.pre-phi11291947, %.loopexit104 ], [ %.pre-phi11291947, %.loopexit107 ], [ %.pre-phi11291983, %3050 ], [ %.pre-phi11291984, %2991 ], [ %.pre-phi11291985, %2932 ], [ %.pre-phi11291986, %2873 ], [ %.pre-phi11291987, %2812 ], [ %.pre-phi11291988, %2756 ], [ %.pre-phi11291989, %2700 ], [ %.pre-phi11291990, %2644 ], [ %.pre-phi11291991, %2588 ], [ %.pre-phi11291968, %1146 ], [ %.pre-phi11291964, %1254 ], [ %.pre-phi11291960, %1483 ], [ %.pre-phi11291960, %1507 ], [ %.pre-phi11291954, %1721 ], [ %.pre-phi11291955, %1672 ], [ %.pre-phi11291958, %1584 ], [ %.pre-phi11291951, %1864 ], [ %.pre-phi11291946, %1983 ], [ %.pre-phi11291948, %1938 ], [ %.pre-phi11291943, %2276 ], [ %.pre-phi11291945, %2231 ], [ %.pre-phi11291953, %1813 ], [ %.pre-phi11291962, %1408 ], [ %.pre-phi11291963, %1356 ], [ %.pre-phi11291970, %1057 ], [ %.pre-phi11291971, %997 ], [ %.pre-phi11291972, %938 ], [ %.pre-phi11291973, %879 ], [ %.pre-phi11291974, %822 ], [ %.pre-phi11291975, %763 ], [ %.pre-phi11291976, %704 ], [ %.pre-phi11291977, %645 ], [ %.pre-phi11291978, %574 ], [ %.pre-phi11291979, %518 ], [ %.pre-phi11291980, %462 ], [ %.pre-phi11291981, %406 ], [ %.pre-phi11291982, %350 ], [ %.pre-phi11291992, %294 ], [ %.pre-phi11291993, %209 ], [ %.pre-phi11291994, %152 ], [ %.pre-phi11291995, %96 ], [ %16, %40 ]
  %.pre-phi11301887 = phi i32* [ %.phi.trans.insert758, %3074 ], [ %.pre-phi11301928, %._crit_edge ], [ %17, %._crit_edge607 ], [ %.pre-phi11301940, %._crit_edge602 ], [ %.pre-phi11301939, %._crit_edge597 ], [ %.pre-phi11301938, %._crit_edge592 ], [ %.pre-phi11301938, %242 ], [ %.pre-phi11301938, %257 ], [ %.pre-phi11301937, %._crit_edge587 ], [ %.pre-phi11301927, %._crit_edge582 ], [ %.pre-phi11301926, %._crit_edge577 ], [ %.pre-phi11301925, %._crit_edge572 ], [ %.pre-phi11301924, %._crit_edge567 ], [ %.pre-phi11301923, %._crit_edge562 ], [ %.pre-phi11301915, %._crit_edge522 ], [ %.pre-phi11301915, %1081 ], [ %.pre-phi11301912, %makeMaps_d.exit ], [ %.pre-phi11301908, %._crit_edge516 ], [ %.pre-phi11301908, %._crit_edge516 ], [ %.pre-phi11301908, %._crit_edge516 ], [ %.pre-phi11301907, %._crit_edge511 ], [ %.pre-phi11301901, %1627 ], [ %.pre-phi11301904, %1784 ], [ %.pre-phi11301897, %1837 ], [ %.pre-phi11301897, %1888 ], [ %.pre-phi11301894, %1910 ], [ %.pre-phi11301892, %1962 ], [ %.pre-phi11301892, %2007 ], [ %.pre-phi11301895, %2059 ], [ %.pre-phi11301895, %2203 ], [ %.pre-phi11301889, %2255 ], [ %.pre-phi11301889, %2300 ], [ %.pre-phi11301895, %2309 ], [ %.pre-phi11301895, %2536 ], [ %.pre-phi11301895, %2549 ], [ %.pre-phi11301895, %2480 ], [ %.pre-phi11301895, %2486 ], [ %.pre-phi11301936, %._crit_edge381 ], [ %.pre-phi11301935, %._crit_edge376 ], [ %.pre-phi11301934, %._crit_edge371 ], [ %.pre-phi11301933, %._crit_edge366 ], [ %.pre-phi11301932, %._crit_edge361 ], [ %.pre-phi11301895, %.loopexit98 ], [ %.pre-phi11301892, %.loopexit104 ], [ %.pre-phi11301892, %.loopexit107 ], [ %.pre-phi11301928, %3050 ], [ %.pre-phi11301929, %2991 ], [ %.pre-phi11301930, %2932 ], [ %.pre-phi11301931, %2873 ], [ %.pre-phi11301932, %2812 ], [ %.pre-phi11301933, %2756 ], [ %.pre-phi11301934, %2700 ], [ %.pre-phi11301935, %2644 ], [ %.pre-phi11301936, %2588 ], [ %.pre-phi11301913, %1146 ], [ %.pre-phi11301909, %1254 ], [ %.pre-phi11301905, %1483 ], [ %.pre-phi11301905, %1507 ], [ %.pre-phi11301899, %1721 ], [ %.pre-phi11301900, %1672 ], [ %.pre-phi11301903, %1584 ], [ %.pre-phi11301896, %1864 ], [ %.pre-phi11301891, %1983 ], [ %.pre-phi11301893, %1938 ], [ %.pre-phi11301888, %2276 ], [ %.pre-phi11301890, %2231 ], [ %.pre-phi11301898, %1813 ], [ %.pre-phi11301907, %1408 ], [ %.pre-phi11301908, %1356 ], [ %.pre-phi11301915, %1057 ], [ %.pre-phi11301916, %997 ], [ %.pre-phi11301917, %938 ], [ %.pre-phi11301918, %879 ], [ %.pre-phi11301919, %822 ], [ %.pre-phi11301920, %763 ], [ %.pre-phi11301921, %704 ], [ %.pre-phi11301922, %645 ], [ %.pre-phi11301923, %574 ], [ %.pre-phi11301924, %518 ], [ %.pre-phi11301925, %462 ], [ %.pre-phi11301926, %406 ], [ %.pre-phi11301927, %350 ], [ %.pre-phi11301937, %294 ], [ %.pre-phi11301938, %209 ], [ %.pre-phi11301939, %152 ], [ %.pre-phi11301940, %96 ], [ %17, %40 ]
  %.pre-phi11311832 = phi i32* [ %.phi.trans.insert760, %3074 ], [ %.pre-phi11311873, %._crit_edge ], [ %18, %._crit_edge607 ], [ %.pre-phi11311885, %._crit_edge602 ], [ %.pre-phi11311884, %._crit_edge597 ], [ %.pre-phi11311883, %._crit_edge592 ], [ %.pre-phi11311883, %242 ], [ %.pre-phi11311883, %257 ], [ %.pre-phi11311882, %._crit_edge587 ], [ %.pre-phi11311872, %._crit_edge582 ], [ %.pre-phi11311871, %._crit_edge577 ], [ %.pre-phi11311870, %._crit_edge572 ], [ %.pre-phi11311869, %._crit_edge567 ], [ %.pre-phi11311868, %._crit_edge562 ], [ %.pre-phi11311860, %._crit_edge522 ], [ %.pre-phi11311860, %1081 ], [ %.pre-phi11311857, %makeMaps_d.exit ], [ %.pre-phi11311853, %._crit_edge516 ], [ %.pre-phi11311853, %._crit_edge516 ], [ %.pre-phi11311853, %._crit_edge516 ], [ %.pre-phi11311852, %._crit_edge511 ], [ %.pre-phi11311846, %1627 ], [ %.pre-phi11311849, %1784 ], [ %.pre-phi11311842, %1837 ], [ %.pre-phi11311842, %1888 ], [ %.pre-phi11311839, %1910 ], [ %.pre-phi11311837, %1962 ], [ %.pre-phi11311837, %2007 ], [ %.pre-phi11311840, %2059 ], [ %.pre-phi11311840, %2203 ], [ %.pre-phi11311834, %2255 ], [ %.pre-phi11311834, %2300 ], [ %.pre-phi11311840, %2309 ], [ %.pre-phi11311840, %2536 ], [ %.pre-phi11311840, %2549 ], [ %.pre-phi11311840, %2480 ], [ %.pre-phi11311840, %2486 ], [ %.pre-phi11311881, %._crit_edge381 ], [ %.pre-phi11311880, %._crit_edge376 ], [ %.pre-phi11311879, %._crit_edge371 ], [ %.pre-phi11311878, %._crit_edge366 ], [ %.pre-phi11311877, %._crit_edge361 ], [ %.pre-phi11311840, %.loopexit98 ], [ %.pre-phi11311837, %.loopexit104 ], [ %.pre-phi11311837, %.loopexit107 ], [ %.pre-phi11311873, %3050 ], [ %.pre-phi11311874, %2991 ], [ %.pre-phi11311875, %2932 ], [ %.pre-phi11311876, %2873 ], [ %.pre-phi11311877, %2812 ], [ %.pre-phi11311878, %2756 ], [ %.pre-phi11311879, %2700 ], [ %.pre-phi11311880, %2644 ], [ %.pre-phi11311881, %2588 ], [ %.pre-phi11311858, %1146 ], [ %.pre-phi11311854, %1254 ], [ %.pre-phi11311850, %1483 ], [ %.pre-phi11311850, %1507 ], [ %.pre-phi11311844, %1721 ], [ %.pre-phi11311845, %1672 ], [ %.pre-phi11311848, %1584 ], [ %.pre-phi11311841, %1864 ], [ %.pre-phi11311836, %1983 ], [ %.pre-phi11311838, %1938 ], [ %.pre-phi11311833, %2276 ], [ %.pre-phi11311835, %2231 ], [ %.pre-phi11311843, %1813 ], [ %.pre-phi11311852, %1408 ], [ %.pre-phi11311853, %1356 ], [ %.pre-phi11311860, %1057 ], [ %.pre-phi11311861, %997 ], [ %.pre-phi11311862, %938 ], [ %.pre-phi11311863, %879 ], [ %.pre-phi11311864, %822 ], [ %.pre-phi11311865, %763 ], [ %.pre-phi11311866, %704 ], [ %.pre-phi11311867, %645 ], [ %.pre-phi11311868, %574 ], [ %.pre-phi11311869, %518 ], [ %.pre-phi11311870, %462 ], [ %.pre-phi11311871, %406 ], [ %.pre-phi11311872, %350 ], [ %.pre-phi11311882, %294 ], [ %.pre-phi11311883, %209 ], [ %.pre-phi11311884, %152 ], [ %.pre-phi11311885, %96 ], [ %18, %40 ]
  %.pre-phi11321777 = phi i32* [ %.phi.trans.insert762, %3074 ], [ %.pre-phi11321818, %._crit_edge ], [ %19, %._crit_edge607 ], [ %.pre-phi11321830, %._crit_edge602 ], [ %.pre-phi11321829, %._crit_edge597 ], [ %.pre-phi11321828, %._crit_edge592 ], [ %.pre-phi11321828, %242 ], [ %.pre-phi11321828, %257 ], [ %.pre-phi11321827, %._crit_edge587 ], [ %.pre-phi11321817, %._crit_edge582 ], [ %.pre-phi11321816, %._crit_edge577 ], [ %.pre-phi11321815, %._crit_edge572 ], [ %.pre-phi11321814, %._crit_edge567 ], [ %.pre-phi11321813, %._crit_edge562 ], [ %.pre-phi11321805, %._crit_edge522 ], [ %.pre-phi11321805, %1081 ], [ %.pre-phi11321802, %makeMaps_d.exit ], [ %.pre-phi11321798, %._crit_edge516 ], [ %.pre-phi11321798, %._crit_edge516 ], [ %.pre-phi11321798, %._crit_edge516 ], [ %.pre-phi11321797, %._crit_edge511 ], [ %.pre-phi11321791, %1627 ], [ %.pre-phi11321794, %1784 ], [ %.pre-phi11321787, %1837 ], [ %.pre-phi11321787, %1888 ], [ %.pre-phi11321784, %1910 ], [ %.pre-phi11321782, %1962 ], [ %.pre-phi11321782, %2007 ], [ %.pre-phi11321785, %2059 ], [ %.pre-phi11321785, %2203 ], [ %.pre-phi11321779, %2255 ], [ %.pre-phi11321779, %2300 ], [ %.pre-phi11321785, %2309 ], [ %.pre-phi11321785, %2536 ], [ %.pre-phi11321785, %2549 ], [ %.pre-phi11321785, %2480 ], [ %.pre-phi11321785, %2486 ], [ %.pre-phi11321826, %._crit_edge381 ], [ %.pre-phi11321825, %._crit_edge376 ], [ %.pre-phi11321824, %._crit_edge371 ], [ %.pre-phi11321823, %._crit_edge366 ], [ %.pre-phi11321822, %._crit_edge361 ], [ %.pre-phi11321785, %.loopexit98 ], [ %.pre-phi11321782, %.loopexit104 ], [ %.pre-phi11321782, %.loopexit107 ], [ %.pre-phi11321818, %3050 ], [ %.pre-phi11321819, %2991 ], [ %.pre-phi11321820, %2932 ], [ %.pre-phi11321821, %2873 ], [ %.pre-phi11321822, %2812 ], [ %.pre-phi11321823, %2756 ], [ %.pre-phi11321824, %2700 ], [ %.pre-phi11321825, %2644 ], [ %.pre-phi11321826, %2588 ], [ %.pre-phi11321803, %1146 ], [ %.pre-phi11321799, %1254 ], [ %.pre-phi11321795, %1483 ], [ %.pre-phi11321795, %1507 ], [ %.pre-phi11321789, %1721 ], [ %.pre-phi11321790, %1672 ], [ %.pre-phi11321793, %1584 ], [ %.pre-phi11321786, %1864 ], [ %.pre-phi11321781, %1983 ], [ %.pre-phi11321783, %1938 ], [ %.pre-phi11321778, %2276 ], [ %.pre-phi11321780, %2231 ], [ %.pre-phi11321788, %1813 ], [ %.pre-phi11321797, %1408 ], [ %.pre-phi11321798, %1356 ], [ %.pre-phi11321805, %1057 ], [ %.pre-phi11321806, %997 ], [ %.pre-phi11321807, %938 ], [ %.pre-phi11321808, %879 ], [ %.pre-phi11321809, %822 ], [ %.pre-phi11321810, %763 ], [ %.pre-phi11321811, %704 ], [ %.pre-phi11321812, %645 ], [ %.pre-phi11321813, %574 ], [ %.pre-phi11321814, %518 ], [ %.pre-phi11321815, %462 ], [ %.pre-phi11321816, %406 ], [ %.pre-phi11321817, %350 ], [ %.pre-phi11321827, %294 ], [ %.pre-phi11321828, %209 ], [ %.pre-phi11321829, %152 ], [ %.pre-phi11321830, %96 ], [ %19, %40 ]
  %.pre-phi11331722 = phi i32* [ %.phi.trans.insert764, %3074 ], [ %.pre-phi11331763, %._crit_edge ], [ %20, %._crit_edge607 ], [ %.pre-phi11331775, %._crit_edge602 ], [ %.pre-phi11331774, %._crit_edge597 ], [ %.pre-phi11331773, %._crit_edge592 ], [ %.pre-phi11331773, %242 ], [ %.pre-phi11331773, %257 ], [ %.pre-phi11331772, %._crit_edge587 ], [ %.pre-phi11331762, %._crit_edge582 ], [ %.pre-phi11331761, %._crit_edge577 ], [ %.pre-phi11331760, %._crit_edge572 ], [ %.pre-phi11331759, %._crit_edge567 ], [ %.pre-phi11331758, %._crit_edge562 ], [ %.pre-phi11331750, %._crit_edge522 ], [ %.pre-phi11331750, %1081 ], [ %.pre-phi11331747, %makeMaps_d.exit ], [ %.pre-phi11331743, %._crit_edge516 ], [ %.pre-phi11331743, %._crit_edge516 ], [ %.pre-phi11331743, %._crit_edge516 ], [ %.pre-phi11331742, %._crit_edge511 ], [ %.pre-phi11331736, %1627 ], [ %.pre-phi11331739, %1784 ], [ %.pre-phi11331732, %1837 ], [ %.pre-phi11331732, %1888 ], [ %.pre-phi11331729, %1910 ], [ %.pre-phi11331727, %1962 ], [ %.pre-phi11331727, %2007 ], [ %.pre-phi11331730, %2059 ], [ %.pre-phi11331730, %2203 ], [ %.pre-phi11331724, %2255 ], [ %.pre-phi11331724, %2300 ], [ %.pre-phi11331730, %2309 ], [ %.pre-phi11331730, %2536 ], [ %.pre-phi11331730, %2549 ], [ %.pre-phi11331730, %2480 ], [ %.pre-phi11331730, %2486 ], [ %.pre-phi11331771, %._crit_edge381 ], [ %.pre-phi11331770, %._crit_edge376 ], [ %.pre-phi11331769, %._crit_edge371 ], [ %.pre-phi11331768, %._crit_edge366 ], [ %.pre-phi11331767, %._crit_edge361 ], [ %.pre-phi11331730, %.loopexit98 ], [ %.pre-phi11331727, %.loopexit104 ], [ %.pre-phi11331727, %.loopexit107 ], [ %.pre-phi11331763, %3050 ], [ %.pre-phi11331764, %2991 ], [ %.pre-phi11331765, %2932 ], [ %.pre-phi11331766, %2873 ], [ %.pre-phi11331767, %2812 ], [ %.pre-phi11331768, %2756 ], [ %.pre-phi11331769, %2700 ], [ %.pre-phi11331770, %2644 ], [ %.pre-phi11331771, %2588 ], [ %.pre-phi11331748, %1146 ], [ %.pre-phi11331744, %1254 ], [ %.pre-phi11331740, %1483 ], [ %.pre-phi11331740, %1507 ], [ %.pre-phi11331734, %1721 ], [ %.pre-phi11331735, %1672 ], [ %.pre-phi11331738, %1584 ], [ %.pre-phi11331731, %1864 ], [ %.pre-phi11331726, %1983 ], [ %.pre-phi11331728, %1938 ], [ %.pre-phi11331723, %2276 ], [ %.pre-phi11331725, %2231 ], [ %.pre-phi11331733, %1813 ], [ %.pre-phi11331742, %1408 ], [ %.pre-phi11331743, %1356 ], [ %.pre-phi11331750, %1057 ], [ %.pre-phi11331751, %997 ], [ %.pre-phi11331752, %938 ], [ %.pre-phi11331753, %879 ], [ %.pre-phi11331754, %822 ], [ %.pre-phi11331755, %763 ], [ %.pre-phi11331756, %704 ], [ %.pre-phi11331757, %645 ], [ %.pre-phi11331758, %574 ], [ %.pre-phi11331759, %518 ], [ %.pre-phi11331760, %462 ], [ %.pre-phi11331761, %406 ], [ %.pre-phi11331762, %350 ], [ %.pre-phi11331772, %294 ], [ %.pre-phi11331773, %209 ], [ %.pre-phi11331774, %152 ], [ %.pre-phi11331775, %96 ], [ %20, %40 ]
  %.pre-phi11341667 = phi i32* [ %.phi.trans.insert766, %3074 ], [ %.pre-phi11341708, %._crit_edge ], [ %21, %._crit_edge607 ], [ %.pre-phi11341720, %._crit_edge602 ], [ %.pre-phi11341719, %._crit_edge597 ], [ %.pre-phi11341718, %._crit_edge592 ], [ %.pre-phi11341718, %242 ], [ %.pre-phi11341718, %257 ], [ %.pre-phi11341717, %._crit_edge587 ], [ %.pre-phi11341707, %._crit_edge582 ], [ %.pre-phi11341706, %._crit_edge577 ], [ %.pre-phi11341705, %._crit_edge572 ], [ %.pre-phi11341704, %._crit_edge567 ], [ %.pre-phi11341703, %._crit_edge562 ], [ %.pre-phi11341695, %._crit_edge522 ], [ %.pre-phi11341695, %1081 ], [ %.pre-phi11341692, %makeMaps_d.exit ], [ %.pre-phi11341688, %._crit_edge516 ], [ %.pre-phi11341688, %._crit_edge516 ], [ %.pre-phi11341688, %._crit_edge516 ], [ %.pre-phi11341687, %._crit_edge511 ], [ %.pre-phi11341681, %1627 ], [ %.pre-phi11341684, %1784 ], [ %.pre-phi11341677, %1837 ], [ %.pre-phi11341677, %1888 ], [ %.pre-phi11341674, %1910 ], [ %.pre-phi11341672, %1962 ], [ %.pre-phi11341672, %2007 ], [ %.pre-phi11341675, %2059 ], [ %.pre-phi11341675, %2203 ], [ %.pre-phi11341669, %2255 ], [ %.pre-phi11341669, %2300 ], [ %.pre-phi11341675, %2309 ], [ %.pre-phi11341675, %2536 ], [ %.pre-phi11341675, %2549 ], [ %.pre-phi11341675, %2480 ], [ %.pre-phi11341675, %2486 ], [ %.pre-phi11341716, %._crit_edge381 ], [ %.pre-phi11341715, %._crit_edge376 ], [ %.pre-phi11341714, %._crit_edge371 ], [ %.pre-phi11341713, %._crit_edge366 ], [ %.pre-phi11341712, %._crit_edge361 ], [ %.pre-phi11341675, %.loopexit98 ], [ %.pre-phi11341672, %.loopexit104 ], [ %.pre-phi11341672, %.loopexit107 ], [ %.pre-phi11341708, %3050 ], [ %.pre-phi11341709, %2991 ], [ %.pre-phi11341710, %2932 ], [ %.pre-phi11341711, %2873 ], [ %.pre-phi11341712, %2812 ], [ %.pre-phi11341713, %2756 ], [ %.pre-phi11341714, %2700 ], [ %.pre-phi11341715, %2644 ], [ %.pre-phi11341716, %2588 ], [ %.pre-phi11341693, %1146 ], [ %.pre-phi11341689, %1254 ], [ %.pre-phi11341685, %1483 ], [ %.pre-phi11341685, %1507 ], [ %.pre-phi11341679, %1721 ], [ %.pre-phi11341680, %1672 ], [ %.pre-phi11341683, %1584 ], [ %.pre-phi11341676, %1864 ], [ %.pre-phi11341671, %1983 ], [ %.pre-phi11341673, %1938 ], [ %.pre-phi11341668, %2276 ], [ %.pre-phi11341670, %2231 ], [ %.pre-phi11341678, %1813 ], [ %.pre-phi11341687, %1408 ], [ %.pre-phi11341688, %1356 ], [ %.pre-phi11341695, %1057 ], [ %.pre-phi11341696, %997 ], [ %.pre-phi11341697, %938 ], [ %.pre-phi11341698, %879 ], [ %.pre-phi11341699, %822 ], [ %.pre-phi11341700, %763 ], [ %.pre-phi11341701, %704 ], [ %.pre-phi11341702, %645 ], [ %.pre-phi11341703, %574 ], [ %.pre-phi11341704, %518 ], [ %.pre-phi11341705, %462 ], [ %.pre-phi11341706, %406 ], [ %.pre-phi11341707, %350 ], [ %.pre-phi11341717, %294 ], [ %.pre-phi11341718, %209 ], [ %.pre-phi11341719, %152 ], [ %.pre-phi11341720, %96 ], [ %21, %40 ]
  %.pre-phi11351612 = phi i32* [ %.phi.trans.insert768, %3074 ], [ %.pre-phi11351653, %._crit_edge ], [ %22, %._crit_edge607 ], [ %.pre-phi11351665, %._crit_edge602 ], [ %.pre-phi11351664, %._crit_edge597 ], [ %.pre-phi11351663, %._crit_edge592 ], [ %.pre-phi11351663, %242 ], [ %.pre-phi11351663, %257 ], [ %.pre-phi11351662, %._crit_edge587 ], [ %.pre-phi11351652, %._crit_edge582 ], [ %.pre-phi11351651, %._crit_edge577 ], [ %.pre-phi11351650, %._crit_edge572 ], [ %.pre-phi11351649, %._crit_edge567 ], [ %.pre-phi11351648, %._crit_edge562 ], [ %.pre-phi11351640, %._crit_edge522 ], [ %.pre-phi11351640, %1081 ], [ %.pre-phi11351637, %makeMaps_d.exit ], [ %.pre-phi11351633, %._crit_edge516 ], [ %.pre-phi11351633, %._crit_edge516 ], [ %.pre-phi11351633, %._crit_edge516 ], [ %.pre-phi11351632, %._crit_edge511 ], [ %.pre-phi11351626, %1627 ], [ %.pre-phi11351629, %1784 ], [ %.pre-phi11351622, %1837 ], [ %.pre-phi11351622, %1888 ], [ %.pre-phi11351619, %1910 ], [ %.pre-phi11351617, %1962 ], [ %.pre-phi11351617, %2007 ], [ %.pre-phi11351620, %2059 ], [ %.pre-phi11351620, %2203 ], [ %.pre-phi11351614, %2255 ], [ %.pre-phi11351614, %2300 ], [ %.pre-phi11351620, %2309 ], [ %.pre-phi11351620, %2536 ], [ %.pre-phi11351620, %2549 ], [ %.pre-phi11351620, %2480 ], [ %.pre-phi11351620, %2486 ], [ %.pre-phi11351661, %._crit_edge381 ], [ %.pre-phi11351660, %._crit_edge376 ], [ %.pre-phi11351659, %._crit_edge371 ], [ %.pre-phi11351658, %._crit_edge366 ], [ %.pre-phi11351657, %._crit_edge361 ], [ %.pre-phi11351620, %.loopexit98 ], [ %.pre-phi11351617, %.loopexit104 ], [ %.pre-phi11351617, %.loopexit107 ], [ %.pre-phi11351653, %3050 ], [ %.pre-phi11351654, %2991 ], [ %.pre-phi11351655, %2932 ], [ %.pre-phi11351656, %2873 ], [ %.pre-phi11351657, %2812 ], [ %.pre-phi11351658, %2756 ], [ %.pre-phi11351659, %2700 ], [ %.pre-phi11351660, %2644 ], [ %.pre-phi11351661, %2588 ], [ %.pre-phi11351638, %1146 ], [ %.pre-phi11351634, %1254 ], [ %.pre-phi11351630, %1483 ], [ %.pre-phi11351630, %1507 ], [ %.pre-phi11351624, %1721 ], [ %.pre-phi11351625, %1672 ], [ %.pre-phi11351628, %1584 ], [ %.pre-phi11351621, %1864 ], [ %.pre-phi11351616, %1983 ], [ %.pre-phi11351618, %1938 ], [ %.pre-phi11351613, %2276 ], [ %.pre-phi11351615, %2231 ], [ %.pre-phi11351623, %1813 ], [ %.pre-phi11351632, %1408 ], [ %.pre-phi11351633, %1356 ], [ %.pre-phi11351640, %1057 ], [ %.pre-phi11351641, %997 ], [ %.pre-phi11351642, %938 ], [ %.pre-phi11351643, %879 ], [ %.pre-phi11351644, %822 ], [ %.pre-phi11351645, %763 ], [ %.pre-phi11351646, %704 ], [ %.pre-phi11351647, %645 ], [ %.pre-phi11351648, %574 ], [ %.pre-phi11351649, %518 ], [ %.pre-phi11351650, %462 ], [ %.pre-phi11351651, %406 ], [ %.pre-phi11351652, %350 ], [ %.pre-phi11351662, %294 ], [ %.pre-phi11351663, %209 ], [ %.pre-phi11351664, %152 ], [ %.pre-phi11351665, %96 ], [ %22, %40 ]
  %.pre-phi11361557 = phi i32* [ %.phi.trans.insert770, %3074 ], [ %.pre-phi11361598, %._crit_edge ], [ %23, %._crit_edge607 ], [ %.pre-phi11361610, %._crit_edge602 ], [ %.pre-phi11361609, %._crit_edge597 ], [ %.pre-phi11361608, %._crit_edge592 ], [ %.pre-phi11361608, %242 ], [ %.pre-phi11361608, %257 ], [ %.pre-phi11361607, %._crit_edge587 ], [ %.pre-phi11361597, %._crit_edge582 ], [ %.pre-phi11361596, %._crit_edge577 ], [ %.pre-phi11361595, %._crit_edge572 ], [ %.pre-phi11361594, %._crit_edge567 ], [ %.pre-phi11361593, %._crit_edge562 ], [ %.pre-phi11361585, %._crit_edge522 ], [ %.pre-phi11361585, %1081 ], [ %.pre-phi11361582, %makeMaps_d.exit ], [ %.pre-phi11361578, %._crit_edge516 ], [ %.pre-phi11361578, %._crit_edge516 ], [ %.pre-phi11361578, %._crit_edge516 ], [ %.pre-phi11361577, %._crit_edge511 ], [ %.pre-phi11361571, %1627 ], [ %.pre-phi11361574, %1784 ], [ %.pre-phi11361567, %1837 ], [ %.pre-phi11361567, %1888 ], [ %.pre-phi11361564, %1910 ], [ %.pre-phi11361562, %1962 ], [ %.pre-phi11361562, %2007 ], [ %.pre-phi11361565, %2059 ], [ %.pre-phi11361565, %2203 ], [ %.pre-phi11361559, %2255 ], [ %.pre-phi11361559, %2300 ], [ %.pre-phi11361565, %2309 ], [ %.pre-phi11361565, %2536 ], [ %.pre-phi11361565, %2549 ], [ %.pre-phi11361565, %2480 ], [ %.pre-phi11361565, %2486 ], [ %.pre-phi11361606, %._crit_edge381 ], [ %.pre-phi11361605, %._crit_edge376 ], [ %.pre-phi11361604, %._crit_edge371 ], [ %.pre-phi11361603, %._crit_edge366 ], [ %.pre-phi11361602, %._crit_edge361 ], [ %.pre-phi11361565, %.loopexit98 ], [ %.pre-phi11361562, %.loopexit104 ], [ %.pre-phi11361562, %.loopexit107 ], [ %.pre-phi11361598, %3050 ], [ %.pre-phi11361599, %2991 ], [ %.pre-phi11361600, %2932 ], [ %.pre-phi11361601, %2873 ], [ %.pre-phi11361602, %2812 ], [ %.pre-phi11361603, %2756 ], [ %.pre-phi11361604, %2700 ], [ %.pre-phi11361605, %2644 ], [ %.pre-phi11361606, %2588 ], [ %.pre-phi11361583, %1146 ], [ %.pre-phi11361579, %1254 ], [ %.pre-phi11361575, %1483 ], [ %.pre-phi11361575, %1507 ], [ %.pre-phi11361569, %1721 ], [ %.pre-phi11361570, %1672 ], [ %.pre-phi11361573, %1584 ], [ %.pre-phi11361566, %1864 ], [ %.pre-phi11361561, %1983 ], [ %.pre-phi11361563, %1938 ], [ %.pre-phi11361558, %2276 ], [ %.pre-phi11361560, %2231 ], [ %.pre-phi11361568, %1813 ], [ %.pre-phi11361577, %1408 ], [ %.pre-phi11361578, %1356 ], [ %.pre-phi11361585, %1057 ], [ %.pre-phi11361586, %997 ], [ %.pre-phi11361587, %938 ], [ %.pre-phi11361588, %879 ], [ %.pre-phi11361589, %822 ], [ %.pre-phi11361590, %763 ], [ %.pre-phi11361591, %704 ], [ %.pre-phi11361592, %645 ], [ %.pre-phi11361593, %574 ], [ %.pre-phi11361594, %518 ], [ %.pre-phi11361595, %462 ], [ %.pre-phi11361596, %406 ], [ %.pre-phi11361597, %350 ], [ %.pre-phi11361607, %294 ], [ %.pre-phi11361608, %209 ], [ %.pre-phi11361609, %152 ], [ %.pre-phi11361610, %96 ], [ %23, %40 ]
  %.pre-phi11371502 = phi i32* [ %.phi.trans.insert772, %3074 ], [ %.pre-phi11371543, %._crit_edge ], [ %24, %._crit_edge607 ], [ %.pre-phi11371555, %._crit_edge602 ], [ %.pre-phi11371554, %._crit_edge597 ], [ %.pre-phi11371553, %._crit_edge592 ], [ %.pre-phi11371553, %242 ], [ %.pre-phi11371553, %257 ], [ %.pre-phi11371552, %._crit_edge587 ], [ %.pre-phi11371542, %._crit_edge582 ], [ %.pre-phi11371541, %._crit_edge577 ], [ %.pre-phi11371540, %._crit_edge572 ], [ %.pre-phi11371539, %._crit_edge567 ], [ %.pre-phi11371538, %._crit_edge562 ], [ %.pre-phi11371530, %._crit_edge522 ], [ %.pre-phi11371530, %1081 ], [ %.pre-phi11371527, %makeMaps_d.exit ], [ %.pre-phi11371523, %._crit_edge516 ], [ %.pre-phi11371523, %._crit_edge516 ], [ %.pre-phi11371523, %._crit_edge516 ], [ %.pre-phi11371522, %._crit_edge511 ], [ %.pre-phi11371516, %1627 ], [ %.pre-phi11371519, %1784 ], [ %.pre-phi11371512, %1837 ], [ %.pre-phi11371512, %1888 ], [ %.pre-phi11371509, %1910 ], [ %.pre-phi11371507, %1962 ], [ %.pre-phi11371507, %2007 ], [ %.pre-phi11371510, %2059 ], [ %.pre-phi11371510, %2203 ], [ %.pre-phi11371504, %2255 ], [ %.pre-phi11371504, %2300 ], [ %.pre-phi11371510, %2309 ], [ %.pre-phi11371510, %2536 ], [ %.pre-phi11371510, %2549 ], [ %.pre-phi11371510, %2480 ], [ %.pre-phi11371510, %2486 ], [ %.pre-phi11371551, %._crit_edge381 ], [ %.pre-phi11371550, %._crit_edge376 ], [ %.pre-phi11371549, %._crit_edge371 ], [ %.pre-phi11371548, %._crit_edge366 ], [ %.pre-phi11371547, %._crit_edge361 ], [ %.pre-phi11371510, %.loopexit98 ], [ %.pre-phi11371507, %.loopexit104 ], [ %.pre-phi11371507, %.loopexit107 ], [ %.pre-phi11371543, %3050 ], [ %.pre-phi11371544, %2991 ], [ %.pre-phi11371545, %2932 ], [ %.pre-phi11371546, %2873 ], [ %.pre-phi11371547, %2812 ], [ %.pre-phi11371548, %2756 ], [ %.pre-phi11371549, %2700 ], [ %.pre-phi11371550, %2644 ], [ %.pre-phi11371551, %2588 ], [ %.pre-phi11371528, %1146 ], [ %.pre-phi11371524, %1254 ], [ %.pre-phi11371520, %1483 ], [ %.pre-phi11371520, %1507 ], [ %.pre-phi11371514, %1721 ], [ %.pre-phi11371515, %1672 ], [ %.pre-phi11371518, %1584 ], [ %.pre-phi11371511, %1864 ], [ %.pre-phi11371506, %1983 ], [ %.pre-phi11371508, %1938 ], [ %.pre-phi11371503, %2276 ], [ %.pre-phi11371505, %2231 ], [ %.pre-phi11371513, %1813 ], [ %.pre-phi11371522, %1408 ], [ %.pre-phi11371523, %1356 ], [ %.pre-phi11371530, %1057 ], [ %.pre-phi11371531, %997 ], [ %.pre-phi11371532, %938 ], [ %.pre-phi11371533, %879 ], [ %.pre-phi11371534, %822 ], [ %.pre-phi11371535, %763 ], [ %.pre-phi11371536, %704 ], [ %.pre-phi11371537, %645 ], [ %.pre-phi11371538, %574 ], [ %.pre-phi11371539, %518 ], [ %.pre-phi11371540, %462 ], [ %.pre-phi11371541, %406 ], [ %.pre-phi11371542, %350 ], [ %.pre-phi11371552, %294 ], [ %.pre-phi11371553, %209 ], [ %.pre-phi11371554, %152 ], [ %.pre-phi11371555, %96 ], [ %24, %40 ]
  %.pre-phi11381447 = phi i32* [ %.phi.trans.insert774, %3074 ], [ %.pre-phi11381488, %._crit_edge ], [ %25, %._crit_edge607 ], [ %.pre-phi11381500, %._crit_edge602 ], [ %.pre-phi11381499, %._crit_edge597 ], [ %.pre-phi11381498, %._crit_edge592 ], [ %.pre-phi11381498, %242 ], [ %.pre-phi11381498, %257 ], [ %.pre-phi11381497, %._crit_edge587 ], [ %.pre-phi11381487, %._crit_edge582 ], [ %.pre-phi11381486, %._crit_edge577 ], [ %.pre-phi11381485, %._crit_edge572 ], [ %.pre-phi11381484, %._crit_edge567 ], [ %.pre-phi11381483, %._crit_edge562 ], [ %.pre-phi11381475, %._crit_edge522 ], [ %.pre-phi11381475, %1081 ], [ %.pre-phi11381472, %makeMaps_d.exit ], [ %.pre-phi11381468, %._crit_edge516 ], [ %.pre-phi11381468, %._crit_edge516 ], [ %.pre-phi11381468, %._crit_edge516 ], [ %.pre-phi11381467, %._crit_edge511 ], [ %.pre-phi11381461, %1627 ], [ %.pre-phi11381464, %1784 ], [ %.pre-phi11381457, %1837 ], [ %.pre-phi11381457, %1888 ], [ %.pre-phi11381454, %1910 ], [ %.pre-phi11381452, %1962 ], [ %.pre-phi11381452, %2007 ], [ %.pre-phi11381455, %2059 ], [ %.pre-phi11381455, %2203 ], [ %.pre-phi11381449, %2255 ], [ %.pre-phi11381449, %2300 ], [ %.pre-phi11381455, %2309 ], [ %.pre-phi11381455, %2536 ], [ %.pre-phi11381455, %2549 ], [ %.pre-phi11381455, %2480 ], [ %.pre-phi11381455, %2486 ], [ %.pre-phi11381496, %._crit_edge381 ], [ %.pre-phi11381495, %._crit_edge376 ], [ %.pre-phi11381494, %._crit_edge371 ], [ %.pre-phi11381493, %._crit_edge366 ], [ %.pre-phi11381492, %._crit_edge361 ], [ %.pre-phi11381455, %.loopexit98 ], [ %.pre-phi11381452, %.loopexit104 ], [ %.pre-phi11381452, %.loopexit107 ], [ %.pre-phi11381488, %3050 ], [ %.pre-phi11381489, %2991 ], [ %.pre-phi11381490, %2932 ], [ %.pre-phi11381491, %2873 ], [ %.pre-phi11381492, %2812 ], [ %.pre-phi11381493, %2756 ], [ %.pre-phi11381494, %2700 ], [ %.pre-phi11381495, %2644 ], [ %.pre-phi11381496, %2588 ], [ %.pre-phi11381473, %1146 ], [ %.pre-phi11381469, %1254 ], [ %.pre-phi11381465, %1483 ], [ %.pre-phi11381465, %1507 ], [ %.pre-phi11381459, %1721 ], [ %.pre-phi11381460, %1672 ], [ %.pre-phi11381463, %1584 ], [ %.pre-phi11381456, %1864 ], [ %.pre-phi11381451, %1983 ], [ %.pre-phi11381453, %1938 ], [ %.pre-phi11381448, %2276 ], [ %.pre-phi11381450, %2231 ], [ %.pre-phi11381458, %1813 ], [ %.pre-phi11381467, %1408 ], [ %.pre-phi11381468, %1356 ], [ %.pre-phi11381475, %1057 ], [ %.pre-phi11381476, %997 ], [ %.pre-phi11381477, %938 ], [ %.pre-phi11381478, %879 ], [ %.pre-phi11381479, %822 ], [ %.pre-phi11381480, %763 ], [ %.pre-phi11381481, %704 ], [ %.pre-phi11381482, %645 ], [ %.pre-phi11381483, %574 ], [ %.pre-phi11381484, %518 ], [ %.pre-phi11381485, %462 ], [ %.pre-phi11381486, %406 ], [ %.pre-phi11381487, %350 ], [ %.pre-phi11381497, %294 ], [ %.pre-phi11381498, %209 ], [ %.pre-phi11381499, %152 ], [ %.pre-phi11381500, %96 ], [ %25, %40 ]
  %.pre-phi11391392 = phi i32* [ %.phi.trans.insert776, %3074 ], [ %.pre-phi11391433, %._crit_edge ], [ %26, %._crit_edge607 ], [ %.pre-phi11391445, %._crit_edge602 ], [ %.pre-phi11391444, %._crit_edge597 ], [ %.pre-phi11391443, %._crit_edge592 ], [ %.pre-phi11391443, %242 ], [ %.pre-phi11391443, %257 ], [ %.pre-phi11391442, %._crit_edge587 ], [ %.pre-phi11391432, %._crit_edge582 ], [ %.pre-phi11391431, %._crit_edge577 ], [ %.pre-phi11391430, %._crit_edge572 ], [ %.pre-phi11391429, %._crit_edge567 ], [ %.pre-phi11391428, %._crit_edge562 ], [ %.pre-phi11391420, %._crit_edge522 ], [ %.pre-phi11391420, %1081 ], [ %.pre-phi11391417, %makeMaps_d.exit ], [ %.pre-phi11391413, %._crit_edge516 ], [ %.pre-phi11391413, %._crit_edge516 ], [ %.pre-phi11391413, %._crit_edge516 ], [ %.pre-phi11391412, %._crit_edge511 ], [ %.pre-phi11391406, %1627 ], [ %.pre-phi11391409, %1784 ], [ %.pre-phi11391402, %1837 ], [ %.pre-phi11391402, %1888 ], [ %.pre-phi11391399, %1910 ], [ %.pre-phi11391397, %1962 ], [ %.pre-phi11391397, %2007 ], [ %.pre-phi11391400, %2059 ], [ %.pre-phi11391400, %2203 ], [ %.pre-phi11391394, %2255 ], [ %.pre-phi11391394, %2300 ], [ %.pre-phi11391400, %2309 ], [ %.pre-phi11391400, %2536 ], [ %.pre-phi11391400, %2549 ], [ %.pre-phi11391400, %2480 ], [ %.pre-phi11391400, %2486 ], [ %.pre-phi11391441, %._crit_edge381 ], [ %.pre-phi11391440, %._crit_edge376 ], [ %.pre-phi11391439, %._crit_edge371 ], [ %.pre-phi11391438, %._crit_edge366 ], [ %.pre-phi11391437, %._crit_edge361 ], [ %.pre-phi11391400, %.loopexit98 ], [ %.pre-phi11391397, %.loopexit104 ], [ %.pre-phi11391397, %.loopexit107 ], [ %.pre-phi11391433, %3050 ], [ %.pre-phi11391434, %2991 ], [ %.pre-phi11391435, %2932 ], [ %.pre-phi11391436, %2873 ], [ %.pre-phi11391437, %2812 ], [ %.pre-phi11391438, %2756 ], [ %.pre-phi11391439, %2700 ], [ %.pre-phi11391440, %2644 ], [ %.pre-phi11391441, %2588 ], [ %.pre-phi11391418, %1146 ], [ %.pre-phi11391414, %1254 ], [ %.pre-phi11391410, %1483 ], [ %.pre-phi11391410, %1507 ], [ %.pre-phi11391404, %1721 ], [ %.pre-phi11391405, %1672 ], [ %.pre-phi11391408, %1584 ], [ %.pre-phi11391401, %1864 ], [ %.pre-phi11391396, %1983 ], [ %.pre-phi11391398, %1938 ], [ %.pre-phi11391393, %2276 ], [ %.pre-phi11391395, %2231 ], [ %.pre-phi11391403, %1813 ], [ %.pre-phi11391412, %1408 ], [ %.pre-phi11391413, %1356 ], [ %.pre-phi11391420, %1057 ], [ %.pre-phi11391421, %997 ], [ %.pre-phi11391422, %938 ], [ %.pre-phi11391423, %879 ], [ %.pre-phi11391424, %822 ], [ %.pre-phi11391425, %763 ], [ %.pre-phi11391426, %704 ], [ %.pre-phi11391427, %645 ], [ %.pre-phi11391428, %574 ], [ %.pre-phi11391429, %518 ], [ %.pre-phi11391430, %462 ], [ %.pre-phi11391431, %406 ], [ %.pre-phi11391432, %350 ], [ %.pre-phi11391442, %294 ], [ %.pre-phi11391443, %209 ], [ %.pre-phi11391444, %152 ], [ %.pre-phi11391445, %96 ], [ %26, %40 ]
  %.pre-phi11401337 = phi i32** [ %.phi.trans.insert778, %3074 ], [ %.pre-phi11401378, %._crit_edge ], [ %27, %._crit_edge607 ], [ %.pre-phi11401390, %._crit_edge602 ], [ %.pre-phi11401389, %._crit_edge597 ], [ %.pre-phi11401388, %._crit_edge592 ], [ %.pre-phi11401388, %242 ], [ %.pre-phi11401388, %257 ], [ %.pre-phi11401387, %._crit_edge587 ], [ %.pre-phi11401377, %._crit_edge582 ], [ %.pre-phi11401376, %._crit_edge577 ], [ %.pre-phi11401375, %._crit_edge572 ], [ %.pre-phi11401374, %._crit_edge567 ], [ %.pre-phi11401373, %._crit_edge562 ], [ %.pre-phi11401365, %._crit_edge522 ], [ %.pre-phi11401365, %1081 ], [ %.pre-phi11401362, %makeMaps_d.exit ], [ %.pre-phi11401358, %._crit_edge516 ], [ %.pre-phi11401358, %._crit_edge516 ], [ %.pre-phi11401358, %._crit_edge516 ], [ %.pre-phi11401357, %._crit_edge511 ], [ %.pre-phi11401351, %1627 ], [ %.pre-phi11401354, %1784 ], [ %.pre-phi11401347, %1837 ], [ %.pre-phi11401347, %1888 ], [ %.pre-phi11401344, %1910 ], [ %.pre-phi11401342, %1962 ], [ %.pre-phi11401342, %2007 ], [ %.pre-phi11401345, %2059 ], [ %.pre-phi11401345, %2203 ], [ %.pre-phi11401339, %2255 ], [ %.pre-phi11401339, %2300 ], [ %.pre-phi11401345, %2309 ], [ %.pre-phi11401345, %2536 ], [ %.pre-phi11401345, %2549 ], [ %.pre-phi11401345, %2480 ], [ %.pre-phi11401345, %2486 ], [ %.pre-phi11401386, %._crit_edge381 ], [ %.pre-phi11401385, %._crit_edge376 ], [ %.pre-phi11401384, %._crit_edge371 ], [ %.pre-phi11401383, %._crit_edge366 ], [ %.pre-phi11401382, %._crit_edge361 ], [ %.pre-phi11401345, %.loopexit98 ], [ %.pre-phi11401342, %.loopexit104 ], [ %.pre-phi11401342, %.loopexit107 ], [ %.pre-phi11401378, %3050 ], [ %.pre-phi11401379, %2991 ], [ %.pre-phi11401380, %2932 ], [ %.pre-phi11401381, %2873 ], [ %.pre-phi11401382, %2812 ], [ %.pre-phi11401383, %2756 ], [ %.pre-phi11401384, %2700 ], [ %.pre-phi11401385, %2644 ], [ %.pre-phi11401386, %2588 ], [ %.pre-phi11401363, %1146 ], [ %.pre-phi11401359, %1254 ], [ %.pre-phi11401355, %1483 ], [ %.pre-phi11401355, %1507 ], [ %.pre-phi11401349, %1721 ], [ %.pre-phi11401350, %1672 ], [ %.pre-phi11401353, %1584 ], [ %.pre-phi11401346, %1864 ], [ %.pre-phi11401341, %1983 ], [ %.pre-phi11401343, %1938 ], [ %.pre-phi11401338, %2276 ], [ %.pre-phi11401340, %2231 ], [ %.pre-phi11401348, %1813 ], [ %.pre-phi11401357, %1408 ], [ %.pre-phi11401358, %1356 ], [ %.pre-phi11401365, %1057 ], [ %.pre-phi11401366, %997 ], [ %.pre-phi11401367, %938 ], [ %.pre-phi11401368, %879 ], [ %.pre-phi11401369, %822 ], [ %.pre-phi11401370, %763 ], [ %.pre-phi11401371, %704 ], [ %.pre-phi11401372, %645 ], [ %.pre-phi11401373, %574 ], [ %.pre-phi11401374, %518 ], [ %.pre-phi11401375, %462 ], [ %.pre-phi11401376, %406 ], [ %.pre-phi11401377, %350 ], [ %.pre-phi11401387, %294 ], [ %.pre-phi11401388, %209 ], [ %.pre-phi11401389, %152 ], [ %.pre-phi11401390, %96 ], [ %27, %40 ]
  %.pre-phi11411282 = phi i32** [ %.phi.trans.insert780, %3074 ], [ %.pre-phi11411323, %._crit_edge ], [ %28, %._crit_edge607 ], [ %.pre-phi11411335, %._crit_edge602 ], [ %.pre-phi11411334, %._crit_edge597 ], [ %.pre-phi11411333, %._crit_edge592 ], [ %.pre-phi11411333, %242 ], [ %.pre-phi11411333, %257 ], [ %.pre-phi11411332, %._crit_edge587 ], [ %.pre-phi11411322, %._crit_edge582 ], [ %.pre-phi11411321, %._crit_edge577 ], [ %.pre-phi11411320, %._crit_edge572 ], [ %.pre-phi11411319, %._crit_edge567 ], [ %.pre-phi11411318, %._crit_edge562 ], [ %.pre-phi11411310, %._crit_edge522 ], [ %.pre-phi11411310, %1081 ], [ %.pre-phi11411307, %makeMaps_d.exit ], [ %.pre-phi11411303, %._crit_edge516 ], [ %.pre-phi11411303, %._crit_edge516 ], [ %.pre-phi11411303, %._crit_edge516 ], [ %.pre-phi11411302, %._crit_edge511 ], [ %.pre-phi11411296, %1627 ], [ %.pre-phi11411299, %1784 ], [ %.pre-phi11411292, %1837 ], [ %.pre-phi11411292, %1888 ], [ %.pre-phi11411289, %1910 ], [ %.pre-phi11411287, %1962 ], [ %.pre-phi11411287, %2007 ], [ %.pre-phi11411290, %2059 ], [ %.pre-phi11411290, %2203 ], [ %.pre-phi11411284, %2255 ], [ %.pre-phi11411284, %2300 ], [ %.pre-phi11411290, %2309 ], [ %.pre-phi11411290, %2536 ], [ %.pre-phi11411290, %2549 ], [ %.pre-phi11411290, %2480 ], [ %.pre-phi11411290, %2486 ], [ %.pre-phi11411331, %._crit_edge381 ], [ %.pre-phi11411330, %._crit_edge376 ], [ %.pre-phi11411329, %._crit_edge371 ], [ %.pre-phi11411328, %._crit_edge366 ], [ %.pre-phi11411327, %._crit_edge361 ], [ %.pre-phi11411290, %.loopexit98 ], [ %.pre-phi11411287, %.loopexit104 ], [ %.pre-phi11411287, %.loopexit107 ], [ %.pre-phi11411323, %3050 ], [ %.pre-phi11411324, %2991 ], [ %.pre-phi11411325, %2932 ], [ %.pre-phi11411326, %2873 ], [ %.pre-phi11411327, %2812 ], [ %.pre-phi11411328, %2756 ], [ %.pre-phi11411329, %2700 ], [ %.pre-phi11411330, %2644 ], [ %.pre-phi11411331, %2588 ], [ %.pre-phi11411308, %1146 ], [ %.pre-phi11411304, %1254 ], [ %.pre-phi11411300, %1483 ], [ %.pre-phi11411300, %1507 ], [ %.pre-phi11411294, %1721 ], [ %.pre-phi11411295, %1672 ], [ %.pre-phi11411298, %1584 ], [ %.pre-phi11411291, %1864 ], [ %.pre-phi11411286, %1983 ], [ %.pre-phi11411288, %1938 ], [ %.pre-phi11411283, %2276 ], [ %.pre-phi11411285, %2231 ], [ %.pre-phi11411293, %1813 ], [ %.pre-phi11411302, %1408 ], [ %.pre-phi11411303, %1356 ], [ %.pre-phi11411310, %1057 ], [ %.pre-phi11411311, %997 ], [ %.pre-phi11411312, %938 ], [ %.pre-phi11411313, %879 ], [ %.pre-phi11411314, %822 ], [ %.pre-phi11411315, %763 ], [ %.pre-phi11411316, %704 ], [ %.pre-phi11411317, %645 ], [ %.pre-phi11411318, %574 ], [ %.pre-phi11411319, %518 ], [ %.pre-phi11411320, %462 ], [ %.pre-phi11411321, %406 ], [ %.pre-phi11411322, %350 ], [ %.pre-phi11411332, %294 ], [ %.pre-phi11411333, %209 ], [ %.pre-phi11411334, %152 ], [ %.pre-phi11411335, %96 ], [ %28, %40 ]
  %.pre-phi11421227 = phi i32** [ %.phi.trans.insert782, %3074 ], [ %.pre-phi11421268, %._crit_edge ], [ %29, %._crit_edge607 ], [ %.pre-phi11421280, %._crit_edge602 ], [ %.pre-phi11421279, %._crit_edge597 ], [ %.pre-phi11421278, %._crit_edge592 ], [ %.pre-phi11421278, %242 ], [ %.pre-phi11421278, %257 ], [ %.pre-phi11421277, %._crit_edge587 ], [ %.pre-phi11421267, %._crit_edge582 ], [ %.pre-phi11421266, %._crit_edge577 ], [ %.pre-phi11421265, %._crit_edge572 ], [ %.pre-phi11421264, %._crit_edge567 ], [ %.pre-phi11421263, %._crit_edge562 ], [ %.pre-phi11421255, %._crit_edge522 ], [ %.pre-phi11421255, %1081 ], [ %.pre-phi11421252, %makeMaps_d.exit ], [ %.pre-phi11421248, %._crit_edge516 ], [ %.pre-phi11421248, %._crit_edge516 ], [ %.pre-phi11421248, %._crit_edge516 ], [ %.pre-phi11421247, %._crit_edge511 ], [ %.pre-phi11421241, %1627 ], [ %.pre-phi11421244, %1784 ], [ %.pre-phi11421237, %1837 ], [ %.pre-phi11421237, %1888 ], [ %.pre-phi11421234, %1910 ], [ %.pre-phi11421232, %1962 ], [ %.pre-phi11421232, %2007 ], [ %.pre-phi11421235, %2059 ], [ %.pre-phi11421235, %2203 ], [ %.pre-phi11421229, %2255 ], [ %.pre-phi11421229, %2300 ], [ %.pre-phi11421235, %2309 ], [ %.pre-phi11421235, %2536 ], [ %.pre-phi11421235, %2549 ], [ %.pre-phi11421235, %2480 ], [ %.pre-phi11421235, %2486 ], [ %.pre-phi11421276, %._crit_edge381 ], [ %.pre-phi11421275, %._crit_edge376 ], [ %.pre-phi11421274, %._crit_edge371 ], [ %.pre-phi11421273, %._crit_edge366 ], [ %.pre-phi11421272, %._crit_edge361 ], [ %.pre-phi11421235, %.loopexit98 ], [ %.pre-phi11421232, %.loopexit104 ], [ %.pre-phi11421232, %.loopexit107 ], [ %.pre-phi11421268, %3050 ], [ %.pre-phi11421269, %2991 ], [ %.pre-phi11421270, %2932 ], [ %.pre-phi11421271, %2873 ], [ %.pre-phi11421272, %2812 ], [ %.pre-phi11421273, %2756 ], [ %.pre-phi11421274, %2700 ], [ %.pre-phi11421275, %2644 ], [ %.pre-phi11421276, %2588 ], [ %.pre-phi11421253, %1146 ], [ %.pre-phi11421249, %1254 ], [ %.pre-phi11421245, %1483 ], [ %.pre-phi11421245, %1507 ], [ %.pre-phi11421239, %1721 ], [ %.pre-phi11421240, %1672 ], [ %.pre-phi11421243, %1584 ], [ %.pre-phi11421236, %1864 ], [ %.pre-phi11421231, %1983 ], [ %.pre-phi11421233, %1938 ], [ %.pre-phi11421228, %2276 ], [ %.pre-phi11421230, %2231 ], [ %.pre-phi11421238, %1813 ], [ %.pre-phi11421247, %1408 ], [ %.pre-phi11421248, %1356 ], [ %.pre-phi11421255, %1057 ], [ %.pre-phi11421256, %997 ], [ %.pre-phi11421257, %938 ], [ %.pre-phi11421258, %879 ], [ %.pre-phi11421259, %822 ], [ %.pre-phi11421260, %763 ], [ %.pre-phi11421261, %704 ], [ %.pre-phi11421262, %645 ], [ %.pre-phi11421263, %574 ], [ %.pre-phi11421264, %518 ], [ %.pre-phi11421265, %462 ], [ %.pre-phi11421266, %406 ], [ %.pre-phi11421267, %350 ], [ %.pre-phi11421277, %294 ], [ %.pre-phi11421278, %209 ], [ %.pre-phi11421279, %152 ], [ %.pre-phi11421280, %96 ], [ %29, %40 ]
  %gPerm.14 = phi i32* [ %.pre783, %3074 ], [ %3039, %._crit_edge ], [ null, %._crit_edge607 ], [ %88, %._crit_edge602 ], [ %144, %._crit_edge597 ], [ %200, %._crit_edge592 ], [ %200, %242 ], [ %200, %257 ], [ %287, %._crit_edge587 ], [ %342, %._crit_edge582 ], [ %398, %._crit_edge577 ], [ %454, %._crit_edge572 ], [ %510, %._crit_edge567 ], [ %566, %._crit_edge562 ], [ %1045, %._crit_edge522 ], [ %1045, %1081 ], [ %1192, %makeMaps_d.exit ], [ %1348, %._crit_edge516 ], [ %1348, %._crit_edge516 ], [ %1348, %._crit_edge516 ], [ %1400, %._crit_edge511 ], [ %1644, %1627 ], [ %1553, %1784 ], [ %gPerm.2, %1837 ], [ %gPerm.2, %1888 ], [ %gPerm.5, %1910 ], [ %gPerm.8, %1962 ], [ %gPerm.8, %2007 ], [ %gPerm.4, %2059 ], [ %gPerm.4, %2203 ], [ %gPerm.12, %2255 ], [ %gPerm.12, %2300 ], [ %gPerm.4, %2309 ], [ %gPerm.4, %2536 ], [ %gPerm.4, %2549 ], [ %gPerm.4, %2480 ], [ %gPerm.4, %2486 ], [ %2580, %._crit_edge381 ], [ %2636, %._crit_edge376 ], [ %2692, %._crit_edge371 ], [ %2748, %._crit_edge366 ], [ %2804, %._crit_edge361 ], [ %gPerm.4, %.loopexit98 ], [ %gPerm.8, %.loopexit104 ], [ %gPerm.8, %.loopexit107 ], [ %3039, %3050 ], [ %2980, %2991 ], [ %2921, %2932 ], [ %2862, %2873 ], [ %2804, %2812 ], [ %2748, %2756 ], [ %2692, %2700 ], [ %2636, %2644 ], [ %2580, %2588 ], [ %1135, %1146 ], [ %1245, %1254 ], [ %1472, %1483 ], [ %1472, %1507 ], [ %1713, %1721 ], [ %1663, %1672 ], [ %1576, %1584 ], [ %gPerm.3, %1864 ], [ %gPerm.9, %1983 ], [ %gPerm.7, %1938 ], [ %gPerm.13, %2276 ], [ %gPerm.11, %2231 ], [ %gPerm.1, %1813 ], [ %1400, %1408 ], [ %1348, %1356 ], [ %1045, %1057 ], [ %986, %997 ], [ %927, %938 ], [ %870, %879 ], [ %811, %822 ], [ %752, %763 ], [ %693, %704 ], [ %634, %645 ], [ %566, %574 ], [ %510, %518 ], [ %454, %462 ], [ %398, %406 ], [ %342, %350 ], [ %287, %294 ], [ %200, %209 ], [ %144, %152 ], [ %88, %96 ], [ null, %40 ]
  %gBase.14 = phi i32* [ %.pre781, %3074 ], [ %3038, %._crit_edge ], [ null, %._crit_edge607 ], [ %87, %._crit_edge602 ], [ %143, %._crit_edge597 ], [ %199, %._crit_edge592 ], [ %199, %242 ], [ %199, %257 ], [ %286, %._crit_edge587 ], [ %341, %._crit_edge582 ], [ %397, %._crit_edge577 ], [ %453, %._crit_edge572 ], [ %509, %._crit_edge567 ], [ %565, %._crit_edge562 ], [ %1044, %._crit_edge522 ], [ %1044, %1081 ], [ %1191, %makeMaps_d.exit ], [ %1347, %._crit_edge516 ], [ %1347, %._crit_edge516 ], [ %1347, %._crit_edge516 ], [ %1399, %._crit_edge511 ], [ %1643, %1627 ], [ %1552, %1784 ], [ %gBase.2, %1837 ], [ %gBase.2, %1888 ], [ %gBase.5, %1910 ], [ %gBase.8, %1962 ], [ %gBase.8, %2007 ], [ %gBase.4, %2059 ], [ %gBase.4, %2203 ], [ %gBase.12, %2255 ], [ %gBase.12, %2300 ], [ %gBase.4, %2309 ], [ %gBase.4, %2536 ], [ %gBase.4, %2549 ], [ %gBase.4, %2480 ], [ %gBase.4, %2486 ], [ %2579, %._crit_edge381 ], [ %2635, %._crit_edge376 ], [ %2691, %._crit_edge371 ], [ %2747, %._crit_edge366 ], [ %2803, %._crit_edge361 ], [ %gBase.4, %.loopexit98 ], [ %gBase.8, %.loopexit104 ], [ %gBase.8, %.loopexit107 ], [ %3038, %3050 ], [ %2979, %2991 ], [ %2920, %2932 ], [ %2861, %2873 ], [ %2803, %2812 ], [ %2747, %2756 ], [ %2691, %2700 ], [ %2635, %2644 ], [ %2579, %2588 ], [ %1134, %1146 ], [ %1244, %1254 ], [ %1471, %1483 ], [ %1471, %1507 ], [ %1712, %1721 ], [ %1662, %1672 ], [ %1575, %1584 ], [ %gBase.3, %1864 ], [ %gBase.9, %1983 ], [ %gBase.7, %1938 ], [ %gBase.13, %2276 ], [ %gBase.11, %2231 ], [ %gBase.1, %1813 ], [ %1399, %1408 ], [ %1347, %1356 ], [ %1044, %1057 ], [ %985, %997 ], [ %926, %938 ], [ %869, %879 ], [ %810, %822 ], [ %751, %763 ], [ %692, %704 ], [ %633, %645 ], [ %565, %574 ], [ %509, %518 ], [ %453, %462 ], [ %397, %406 ], [ %341, %350 ], [ %286, %294 ], [ %199, %209 ], [ %143, %152 ], [ %87, %96 ], [ null, %40 ]
  %gLimit.14 = phi i32* [ %.pre779, %3074 ], [ %3037, %._crit_edge ], [ null, %._crit_edge607 ], [ %86, %._crit_edge602 ], [ %142, %._crit_edge597 ], [ %198, %._crit_edge592 ], [ %198, %242 ], [ %198, %257 ], [ %285, %._crit_edge587 ], [ %340, %._crit_edge582 ], [ %396, %._crit_edge577 ], [ %452, %._crit_edge572 ], [ %508, %._crit_edge567 ], [ %564, %._crit_edge562 ], [ %1043, %._crit_edge522 ], [ %1043, %1081 ], [ %1190, %makeMaps_d.exit ], [ %1346, %._crit_edge516 ], [ %1346, %._crit_edge516 ], [ %1346, %._crit_edge516 ], [ %1398, %._crit_edge511 ], [ %1642, %1627 ], [ %1551, %1784 ], [ %gLimit.2, %1837 ], [ %gLimit.2, %1888 ], [ %gLimit.5, %1910 ], [ %gLimit.8, %1962 ], [ %gLimit.8, %2007 ], [ %gLimit.4, %2059 ], [ %gLimit.4, %2203 ], [ %gLimit.12, %2255 ], [ %gLimit.12, %2300 ], [ %gLimit.4, %2309 ], [ %gLimit.4, %2536 ], [ %gLimit.4, %2549 ], [ %gLimit.4, %2480 ], [ %gLimit.4, %2486 ], [ %2578, %._crit_edge381 ], [ %2634, %._crit_edge376 ], [ %2690, %._crit_edge371 ], [ %2746, %._crit_edge366 ], [ %2802, %._crit_edge361 ], [ %gLimit.4, %.loopexit98 ], [ %gLimit.8, %.loopexit104 ], [ %gLimit.8, %.loopexit107 ], [ %3037, %3050 ], [ %2978, %2991 ], [ %2919, %2932 ], [ %2860, %2873 ], [ %2802, %2812 ], [ %2746, %2756 ], [ %2690, %2700 ], [ %2634, %2644 ], [ %2578, %2588 ], [ %1133, %1146 ], [ %1243, %1254 ], [ %1470, %1483 ], [ %1470, %1507 ], [ %1711, %1721 ], [ %1661, %1672 ], [ %1574, %1584 ], [ %gLimit.3, %1864 ], [ %gLimit.9, %1983 ], [ %gLimit.7, %1938 ], [ %gLimit.13, %2276 ], [ %gLimit.11, %2231 ], [ %gLimit.1, %1813 ], [ %1398, %1408 ], [ %1346, %1356 ], [ %1043, %1057 ], [ %984, %997 ], [ %925, %938 ], [ %868, %879 ], [ %809, %822 ], [ %750, %763 ], [ %691, %704 ], [ %632, %645 ], [ %564, %574 ], [ %508, %518 ], [ %452, %462 ], [ %396, %406 ], [ %340, %350 ], [ %285, %294 ], [ %198, %209 ], [ %142, %152 ], [ %86, %96 ], [ null, %40 ]
  %gMinlen.14 = phi i32 [ %.pre777, %3074 ], [ %3036, %._crit_edge ], [ 0, %._crit_edge607 ], [ %85, %._crit_edge602 ], [ %141, %._crit_edge597 ], [ %197, %._crit_edge592 ], [ %197, %242 ], [ %197, %257 ], [ %284, %._crit_edge587 ], [ %339, %._crit_edge582 ], [ %395, %._crit_edge577 ], [ %451, %._crit_edge572 ], [ %507, %._crit_edge567 ], [ %563, %._crit_edge562 ], [ %1042, %._crit_edge522 ], [ %1042, %1081 ], [ %1189, %makeMaps_d.exit ], [ %1345, %._crit_edge516 ], [ %1345, %._crit_edge516 ], [ %1345, %._crit_edge516 ], [ %1397, %._crit_edge511 ], [ %1641, %1627 ], [ %1550, %1784 ], [ %gMinlen.2, %1837 ], [ %gMinlen.2, %1888 ], [ %gMinlen.5, %1910 ], [ %gMinlen.8, %1962 ], [ %gMinlen.8, %2007 ], [ %gMinlen.4, %2059 ], [ %gMinlen.4, %2203 ], [ %gMinlen.12, %2255 ], [ %gMinlen.12, %2300 ], [ %gMinlen.4, %2309 ], [ %gMinlen.4, %2536 ], [ %gMinlen.4, %2549 ], [ %gMinlen.4, %2480 ], [ %gMinlen.4, %2486 ], [ %2577, %._crit_edge381 ], [ %2633, %._crit_edge376 ], [ %2689, %._crit_edge371 ], [ %2745, %._crit_edge366 ], [ %2801, %._crit_edge361 ], [ %gMinlen.4, %.loopexit98 ], [ %gMinlen.8, %.loopexit104 ], [ %gMinlen.8, %.loopexit107 ], [ %3036, %3050 ], [ %2977, %2991 ], [ %2918, %2932 ], [ %2859, %2873 ], [ %2801, %2812 ], [ %2745, %2756 ], [ %2689, %2700 ], [ %2633, %2644 ], [ %2577, %2588 ], [ %1132, %1146 ], [ %1242, %1254 ], [ %1469, %1483 ], [ %1469, %1507 ], [ %1710, %1721 ], [ %1660, %1672 ], [ %1573, %1584 ], [ %gMinlen.3, %1864 ], [ %gMinlen.9, %1983 ], [ %gMinlen.7, %1938 ], [ %gMinlen.13, %2276 ], [ %gMinlen.11, %2231 ], [ %gMinlen.1, %1813 ], [ %1397, %1408 ], [ %1345, %1356 ], [ %1042, %1057 ], [ %983, %997 ], [ %924, %938 ], [ %867, %879 ], [ %808, %822 ], [ %749, %763 ], [ %690, %704 ], [ %631, %645 ], [ %563, %574 ], [ %507, %518 ], [ %451, %462 ], [ %395, %406 ], [ %339, %350 ], [ %284, %294 ], [ %197, %209 ], [ %141, %152 ], [ %85, %96 ], [ 0, %40 ]
  %gSel.14 = phi i32 [ %.pre775, %3074 ], [ %3035, %._crit_edge ], [ 0, %._crit_edge607 ], [ %84, %._crit_edge602 ], [ %140, %._crit_edge597 ], [ %196, %._crit_edge592 ], [ %196, %242 ], [ %196, %257 ], [ %283, %._crit_edge587 ], [ %338, %._crit_edge582 ], [ %394, %._crit_edge577 ], [ %450, %._crit_edge572 ], [ %506, %._crit_edge567 ], [ %562, %._crit_edge562 ], [ %1041, %._crit_edge522 ], [ %1041, %1081 ], [ %1188, %makeMaps_d.exit ], [ %1344, %._crit_edge516 ], [ %1344, %._crit_edge516 ], [ %1344, %._crit_edge516 ], [ %1396, %._crit_edge511 ], [ %1640, %1627 ], [ %1549, %1784 ], [ %gSel.2, %1837 ], [ %gSel.2, %1888 ], [ %gSel.5, %1910 ], [ %gSel.8, %1962 ], [ %gSel.8, %2007 ], [ %gSel.4, %2059 ], [ %gSel.4, %2203 ], [ %gSel.12, %2255 ], [ %gSel.12, %2300 ], [ %gSel.4, %2309 ], [ %gSel.4, %2536 ], [ %gSel.4, %2549 ], [ %gSel.4, %2480 ], [ %gSel.4, %2486 ], [ %2576, %._crit_edge381 ], [ %2632, %._crit_edge376 ], [ %2688, %._crit_edge371 ], [ %2744, %._crit_edge366 ], [ %2800, %._crit_edge361 ], [ %gSel.4, %.loopexit98 ], [ %gSel.8, %.loopexit104 ], [ %gSel.8, %.loopexit107 ], [ %3035, %3050 ], [ %2976, %2991 ], [ %2917, %2932 ], [ %2858, %2873 ], [ %2800, %2812 ], [ %2744, %2756 ], [ %2688, %2700 ], [ %2632, %2644 ], [ %2576, %2588 ], [ %1131, %1146 ], [ %1241, %1254 ], [ %1468, %1483 ], [ %1468, %1507 ], [ %1709, %1721 ], [ %1659, %1672 ], [ %1572, %1584 ], [ %gSel.3, %1864 ], [ %gSel.9, %1983 ], [ %gSel.7, %1938 ], [ %gSel.13, %2276 ], [ %gSel.11, %2231 ], [ %gSel.1, %1813 ], [ %1396, %1408 ], [ %1344, %1356 ], [ %1041, %1057 ], [ %982, %997 ], [ %923, %938 ], [ %866, %879 ], [ %807, %822 ], [ %748, %763 ], [ %689, %704 ], [ %630, %645 ], [ %562, %574 ], [ %506, %518 ], [ %450, %462 ], [ %394, %406 ], [ %338, %350 ], [ %283, %294 ], [ %196, %209 ], [ %140, %152 ], [ %84, %96 ], [ 0, %40 ]
  %zj.10 = phi i32 [ %.pre773, %3074 ], [ %3034, %._crit_edge ], [ 0, %._crit_edge607 ], [ %83, %._crit_edge602 ], [ %139, %._crit_edge597 ], [ %195, %._crit_edge592 ], [ %195, %242 ], [ %195, %257 ], [ %282, %._crit_edge587 ], [ %337, %._crit_edge582 ], [ %393, %._crit_edge577 ], [ %449, %._crit_edge572 ], [ %505, %._crit_edge567 ], [ %561, %._crit_edge562 ], [ %1040, %._crit_edge522 ], [ %1040, %1081 ], [ %1187, %makeMaps_d.exit ], [ %1343, %._crit_edge516 ], [ %1343, %._crit_edge516 ], [ %1343, %._crit_edge516 ], [ %1395, %._crit_edge511 ], [ %1639, %1627 ], [ %1548, %1784 ], [ %zj.0, %1837 ], [ %zj.0, %1888 ], [ %zj.3, %1910 ], [ %zj.5, %1962 ], [ %zj.5, %2007 ], [ %zj.2, %2059 ], [ %zj.2, %2203 ], [ %zj.8, %2255 ], [ %zj.8, %2300 ], [ %zj.2, %2309 ], [ %zj.2, %2536 ], [ %zj.2, %2549 ], [ %zj.2, %2480 ], [ %zj.2, %2486 ], [ %2575, %._crit_edge381 ], [ %2631, %._crit_edge376 ], [ %2687, %._crit_edge371 ], [ %2743, %._crit_edge366 ], [ %2799, %._crit_edge361 ], [ %zj.2, %.loopexit98 ], [ %zj.5, %.loopexit104 ], [ %zj.5, %.loopexit107 ], [ %3034, %3050 ], [ %2975, %2991 ], [ %2916, %2932 ], [ %2857, %2873 ], [ %2799, %2812 ], [ %2743, %2756 ], [ %2687, %2700 ], [ %2631, %2644 ], [ %2575, %2588 ], [ %1130, %1146 ], [ %1240, %1254 ], [ %1467, %1483 ], [ %1467, %1507 ], [ %1708, %1721 ], [ %1658, %1672 ], [ %1571, %1584 ], [ %zj.1, %1864 ], [ %zj.6, %1983 ], [ %zj.4, %1938 ], [ %zj.9, %2276 ], [ %zj.7, %2231 ], [ %1802, %1813 ], [ %1395, %1408 ], [ %1343, %1356 ], [ %1040, %1057 ], [ %981, %997 ], [ %922, %938 ], [ %865, %879 ], [ %806, %822 ], [ %747, %763 ], [ %688, %704 ], [ %629, %645 ], [ %561, %574 ], [ %505, %518 ], [ %449, %462 ], [ %393, %406 ], [ %337, %350 ], [ %282, %294 ], [ %195, %209 ], [ %139, %152 ], [ %83, %96 ], [ 0, %40 ]
  %zvec.10 = phi i32 [ %.pre771, %3074 ], [ %3033, %._crit_edge ], [ 0, %._crit_edge607 ], [ %82, %._crit_edge602 ], [ %138, %._crit_edge597 ], [ %194, %._crit_edge592 ], [ %194, %242 ], [ %194, %257 ], [ %281, %._crit_edge587 ], [ %336, %._crit_edge582 ], [ %392, %._crit_edge577 ], [ %448, %._crit_edge572 ], [ %504, %._crit_edge567 ], [ %560, %._crit_edge562 ], [ %1039, %._crit_edge522 ], [ %1039, %1081 ], [ %1186, %makeMaps_d.exit ], [ %1342, %._crit_edge516 ], [ %1342, %._crit_edge516 ], [ %1342, %._crit_edge516 ], [ %1394, %._crit_edge511 ], [ %1638, %1627 ], [ %1547, %1784 ], [ %zvec.0, %1837 ], [ %zvec.0, %1888 ], [ %zvec.3, %1910 ], [ %zvec.5, %1962 ], [ %zvec.5, %2007 ], [ %zvec.2, %2059 ], [ %zvec.2, %2203 ], [ %zvec.8, %2255 ], [ %zvec.8, %2300 ], [ %zvec.2, %2309 ], [ %zvec.2, %2536 ], [ %zvec.2, %2549 ], [ %zvec.2, %2480 ], [ %zvec.2, %2486 ], [ %2574, %._crit_edge381 ], [ %2630, %._crit_edge376 ], [ %2686, %._crit_edge371 ], [ %2742, %._crit_edge366 ], [ %2798, %._crit_edge361 ], [ %zvec.2, %.loopexit98 ], [ %zvec.5, %.loopexit104 ], [ %zvec.5, %.loopexit107 ], [ %3033, %3050 ], [ %2974, %2991 ], [ %2915, %2932 ], [ %2856, %2873 ], [ %2798, %2812 ], [ %2742, %2756 ], [ %2686, %2700 ], [ %2630, %2644 ], [ %2574, %2588 ], [ %1129, %1146 ], [ %1239, %1254 ], [ %1466, %1483 ], [ %1466, %1507 ], [ %1707, %1721 ], [ %1657, %1672 ], [ %1570, %1584 ], [ %zvec.1, %1864 ], [ %zvec.6, %1983 ], [ %zvec.4, %1938 ], [ %zvec.9, %2276 ], [ %zvec.7, %2231 ], [ %1801, %1813 ], [ %1394, %1408 ], [ %1342, %1356 ], [ %1039, %1057 ], [ %980, %997 ], [ %921, %938 ], [ %864, %879 ], [ %805, %822 ], [ %746, %763 ], [ %687, %704 ], [ %628, %645 ], [ %560, %574 ], [ %504, %518 ], [ %448, %462 ], [ %392, %406 ], [ %336, %350 ], [ %281, %294 ], [ %194, %209 ], [ %138, %152 ], [ %82, %96 ], [ 0, %40 ]
  %zn.11 = phi i32 [ %.pre769, %3074 ], [ %3032, %._crit_edge ], [ 0, %._crit_edge607 ], [ %81, %._crit_edge602 ], [ %137, %._crit_edge597 ], [ %193, %._crit_edge592 ], [ %193, %242 ], [ %193, %257 ], [ %280, %._crit_edge587 ], [ %335, %._crit_edge582 ], [ %391, %._crit_edge577 ], [ %447, %._crit_edge572 ], [ %503, %._crit_edge567 ], [ %559, %._crit_edge562 ], [ %1038, %._crit_edge522 ], [ %1038, %1081 ], [ %1185, %makeMaps_d.exit ], [ %1341, %._crit_edge516 ], [ %1341, %._crit_edge516 ], [ %1341, %._crit_edge516 ], [ %1393, %._crit_edge511 ], [ %1637, %1627 ], [ %1546, %1784 ], [ %zn.1, %1837 ], [ %zn.1, %1888 ], [ %zn.4, %1910 ], [ %zn.6, %1962 ], [ %zn.6, %2007 ], [ %zn.3, %2059 ], [ %zn.3, %2203 ], [ %zn.9, %2255 ], [ %zn.9, %2300 ], [ %zn.3, %2309 ], [ %zn.3, %2536 ], [ %zn.3, %2549 ], [ %zn.3, %2480 ], [ %zn.3, %2486 ], [ %2573, %._crit_edge381 ], [ %2629, %._crit_edge376 ], [ %2685, %._crit_edge371 ], [ %2741, %._crit_edge366 ], [ %2797, %._crit_edge361 ], [ %zn.3, %.loopexit98 ], [ %zn.6, %.loopexit104 ], [ %zn.6, %.loopexit107 ], [ %3032, %3050 ], [ %2973, %2991 ], [ %2914, %2932 ], [ %2855, %2873 ], [ %2797, %2812 ], [ %2741, %2756 ], [ %2685, %2700 ], [ %2629, %2644 ], [ %2573, %2588 ], [ %1128, %1146 ], [ %1238, %1254 ], [ %1465, %1483 ], [ %1465, %1507 ], [ %1706, %1721 ], [ %1656, %1672 ], [ %1569, %1584 ], [ %zn.2, %1864 ], [ %zn.7, %1983 ], [ %zn.5, %1938 ], [ %zn.10, %2276 ], [ %zn.8, %2231 ], [ %zn.0, %1813 ], [ %1393, %1408 ], [ %1341, %1356 ], [ %1038, %1057 ], [ %979, %997 ], [ %920, %938 ], [ %863, %879 ], [ %804, %822 ], [ %745, %763 ], [ %686, %704 ], [ %627, %645 ], [ %559, %574 ], [ %503, %518 ], [ %447, %462 ], [ %391, %406 ], [ %335, %350 ], [ %280, %294 ], [ %193, %209 ], [ %137, %152 ], [ %81, %96 ], [ 0, %40 ]
  %curr.17 = phi i32 [ %.pre765, %3074 ], [ %3030, %._crit_edge ], [ 0, %._crit_edge607 ], [ %79, %._crit_edge602 ], [ %135, %._crit_edge597 ], [ %191, %._crit_edge592 ], [ %191, %242 ], [ %191, %257 ], [ %278, %._crit_edge587 ], [ %333, %._crit_edge582 ], [ %389, %._crit_edge577 ], [ %445, %._crit_edge572 ], [ %501, %._crit_edge567 ], [ %557, %._crit_edge562 ], [ %1036, %._crit_edge522 ], [ %1036, %1081 ], [ %1183, %makeMaps_d.exit ], [ %1339, %._crit_edge516 ], [ %1339, %._crit_edge516 ], [ %1339, %._crit_edge516 ], [ %1391, %._crit_edge511 ], [ %curr.3, %1627 ], [ %curr.0, %1784 ], [ %curr.7, %1837 ], [ %curr.7, %1888 ], [ %curr.10, %1910 ], [ %curr.12, %1962 ], [ %curr.12, %2007 ], [ %curr.9, %2059 ], [ %curr.9, %2203 ], [ %curr.15, %2255 ], [ %curr.15, %2300 ], [ %curr.9, %2309 ], [ %curr.9, %2536 ], [ %curr.9, %2549 ], [ %curr.9, %2480 ], [ %curr.9, %2486 ], [ %2571, %._crit_edge381 ], [ %2627, %._crit_edge376 ], [ %2683, %._crit_edge371 ], [ %2739, %._crit_edge366 ], [ %2795, %._crit_edge361 ], [ %curr.9, %.loopexit98 ], [ %curr.12, %.loopexit104 ], [ %curr.12, %.loopexit107 ], [ %3030, %3050 ], [ %2971, %2991 ], [ %2912, %2932 ], [ %2853, %2873 ], [ %2795, %2812 ], [ %2739, %2756 ], [ %2683, %2700 ], [ %2627, %2644 ], [ %2571, %2588 ], [ %1126, %1146 ], [ %1236, %1254 ], [ %1463, %1483 ], [ %1463, %1507 ], [ %curr.5, %1721 ], [ %curr.4, %1672 ], [ %curr.1, %1584 ], [ %curr.8, %1864 ], [ %curr.13, %1983 ], [ %curr.11, %1938 ], [ %curr.16, %2276 ], [ %curr.14, %2231 ], [ %curr.6, %1813 ], [ %1391, %1408 ], [ %1339, %1356 ], [ %1036, %1057 ], [ %977, %997 ], [ %918, %938 ], [ %861, %879 ], [ %802, %822 ], [ %743, %763 ], [ %684, %704 ], [ %625, %645 ], [ %557, %574 ], [ %501, %518 ], [ %445, %462 ], [ %389, %406 ], [ %333, %350 ], [ %278, %294 ], [ %191, %209 ], [ %135, %152 ], [ %79, %96 ], [ 0, %40 ]
  %N.8 = phi i32 [ %.pre763, %3074 ], [ %3029, %._crit_edge ], [ 0, %._crit_edge607 ], [ %78, %._crit_edge602 ], [ %134, %._crit_edge597 ], [ %190, %._crit_edge592 ], [ %190, %242 ], [ %190, %257 ], [ %277, %._crit_edge587 ], [ %332, %._crit_edge582 ], [ %388, %._crit_edge577 ], [ %444, %._crit_edge572 ], [ %500, %._crit_edge567 ], [ %556, %._crit_edge562 ], [ %1035, %._crit_edge522 ], [ %1035, %1081 ], [ %1182, %makeMaps_d.exit ], [ %1338, %._crit_edge516 ], [ %1338, %._crit_edge516 ], [ %1338, %._crit_edge516 ], [ %1390, %._crit_edge511 ], [ %1635, %1627 ], [ %1544, %1784 ], [ %1840, %1837 ], [ %1840, %1888 ], [ %1908, %1910 ], [ %N.3, %1962 ], [ %N.3, %2007 ], [ %N.0, %2059 ], [ %N.0, %2203 ], [ %N.6, %2255 ], [ %N.6, %2300 ], [ %N.0, %2309 ], [ %N.0, %2536 ], [ %N.0, %2549 ], [ %N.0, %2480 ], [ %N.0, %2486 ], [ %2570, %._crit_edge381 ], [ %2626, %._crit_edge376 ], [ %2682, %._crit_edge371 ], [ %2738, %._crit_edge366 ], [ %2794, %._crit_edge361 ], [ %N.0, %.loopexit98 ], [ %N.3, %.loopexit104 ], [ %N.3, %.loopexit107 ], [ %3029, %3050 ], [ %2970, %2991 ], [ %2911, %2932 ], [ %2852, %2873 ], [ %2794, %2812 ], [ %2738, %2756 ], [ %2682, %2700 ], [ %2626, %2644 ], [ %2570, %2588 ], [ %1125, %1146 ], [ %1235, %1254 ], [ %1462, %1483 ], [ %1462, %1507 ], [ %1704, %1721 ], [ %1654, %1672 ], [ %1567, %1584 ], [ %1854, %1864 ], [ %N.4, %1983 ], [ %N.2, %1938 ], [ %N.7, %2276 ], [ %N.5, %2231 ], [ %1799, %1813 ], [ %1390, %1408 ], [ %1338, %1356 ], [ %1035, %1057 ], [ %976, %997 ], [ %917, %938 ], [ %860, %879 ], [ %801, %822 ], [ %742, %763 ], [ %683, %704 ], [ %624, %645 ], [ %556, %574 ], [ %500, %518 ], [ %444, %462 ], [ %388, %406 ], [ %332, %350 ], [ %277, %294 ], [ %190, %209 ], [ %134, %152 ], [ %78, %96 ], [ 0, %40 ]
  %es.11 = phi i32 [ %.pre761, %3074 ], [ %3028, %._crit_edge ], [ 0, %._crit_edge607 ], [ %77, %._crit_edge602 ], [ %133, %._crit_edge597 ], [ %189, %._crit_edge592 ], [ %189, %242 ], [ %189, %257 ], [ %276, %._crit_edge587 ], [ %331, %._crit_edge582 ], [ %387, %._crit_edge577 ], [ %443, %._crit_edge572 ], [ %499, %._crit_edge567 ], [ %555, %._crit_edge562 ], [ %1034, %._crit_edge522 ], [ %1034, %1081 ], [ %1181, %makeMaps_d.exit ], [ %1337, %._crit_edge516 ], [ %1337, %._crit_edge516 ], [ %1337, %._crit_edge516 ], [ %1389, %._crit_edge511 ], [ %1634, %1627 ], [ %1543, %1784 ], [ %1839, %1837 ], [ %1839, %1888 ], [ %es.2, %1910 ], [ %es.4, %1962 ], [ %es.4, %2007 ], [ %es.0, %2059 ], [ %es.0, %2203 ], [ %es.9, %2255 ], [ %es.9, %2300 ], [ %es.0, %2309 ], [ %es.0, %2536 ], [ %es.0, %2549 ], [ %es.0, %2480 ], [ %es.0, %2486 ], [ %2569, %._crit_edge381 ], [ %2625, %._crit_edge376 ], [ %2681, %._crit_edge371 ], [ %2737, %._crit_edge366 ], [ %2793, %._crit_edge361 ], [ %es.0, %.loopexit98 ], [ %es.7435, %.loopexit104 ], [ %es.6440, %.loopexit107 ], [ %3028, %3050 ], [ %2969, %2991 ], [ %2910, %2932 ], [ %2851, %2873 ], [ %2793, %2812 ], [ %2737, %2756 ], [ %2681, %2700 ], [ %2625, %2644 ], [ %2569, %2588 ], [ %1124, %1146 ], [ %1234, %1254 ], [ %1461, %1483 ], [ %1461, %1507 ], [ %1703, %1721 ], [ %1653, %1672 ], [ %1566, %1584 ], [ %1853, %1864 ], [ %es.5, %1983 ], [ %es.3, %1938 ], [ %es.10, %2276 ], [ %es.8, %2231 ], [ %1798, %1813 ], [ %1389, %1408 ], [ %1337, %1356 ], [ %1034, %1057 ], [ %975, %997 ], [ %916, %938 ], [ %859, %879 ], [ %800, %822 ], [ %741, %763 ], [ %682, %704 ], [ %623, %645 ], [ %555, %574 ], [ %499, %518 ], [ %443, %462 ], [ %387, %406 ], [ %331, %350 ], [ %276, %294 ], [ %189, %209 ], [ %133, %152 ], [ %77, %96 ], [ 0, %40 ]
  %nblock.13 = phi i32 [ %.pre759, %3074 ], [ %3027, %._crit_edge ], [ 0, %._crit_edge607 ], [ %76, %._crit_edge602 ], [ %132, %._crit_edge597 ], [ %188, %._crit_edge592 ], [ %188, %242 ], [ %188, %257 ], [ %275, %._crit_edge587 ], [ %330, %._crit_edge582 ], [ %386, %._crit_edge577 ], [ %442, %._crit_edge572 ], [ %498, %._crit_edge567 ], [ %554, %._crit_edge562 ], [ %1033, %._crit_edge522 ], [ %1033, %1081 ], [ %1180, %makeMaps_d.exit ], [ %1336, %._crit_edge516 ], [ %1336, %._crit_edge516 ], [ %1336, %._crit_edge516 ], [ %1388, %._crit_edge511 ], [ %1633, %1627 ], [ 0, %1784 ], [ %nblock.1, %1837 ], [ %nblock.1, %1888 ], [ %nblock.4, %1910 ], [ %nblock.6, %1962 ], [ %nblock.6, %2007 ], [ %nblock.3, %2059 ], [ %2201, %2203 ], [ %nblock.11, %2255 ], [ %nblock.11, %2300 ], [ %nblock.3, %2309 ], [ %nblock.3, %2536 ], [ %nblock.3, %2549 ], [ %nblock.3, %2480 ], [ %nblock.3, %2486 ], [ %2568, %._crit_edge381 ], [ %2624, %._crit_edge376 ], [ %2680, %._crit_edge371 ], [ %2736, %._crit_edge366 ], [ %2792, %._crit_edge361 ], [ %nblock.3, %.loopexit98 ], [ %3076, %.loopexit104 ], [ %3077, %.loopexit107 ], [ %3027, %3050 ], [ %2968, %2991 ], [ %2909, %2932 ], [ %2850, %2873 ], [ %2792, %2812 ], [ %2736, %2756 ], [ %2680, %2700 ], [ %2624, %2644 ], [ %2568, %2588 ], [ %1123, %1146 ], [ %1233, %1254 ], [ %1460, %1483 ], [ %1460, %1507 ], [ %1702, %1721 ], [ %1652, %1672 ], [ %1565, %1584 ], [ %nblock.2, %1864 ], [ %nblock.7, %1983 ], [ %nblock.5, %1938 ], [ %nblock.12, %2276 ], [ %nblock.10, %2231 ], [ %nblock.0, %1813 ], [ %1388, %1408 ], [ %1336, %1356 ], [ %1033, %1057 ], [ %974, %997 ], [ %915, %938 ], [ %858, %879 ], [ %799, %822 ], [ %740, %763 ], [ %681, %704 ], [ %622, %645 ], [ %554, %574 ], [ %498, %518 ], [ %442, %462 ], [ %386, %406 ], [ %330, %350 ], [ %275, %294 ], [ %188, %209 ], [ %132, %152 ], [ %76, %96 ], [ 0, %40 ]
  %nblockMAX.11 = phi i32 [ %.pre757, %3074 ], [ %3026, %._crit_edge ], [ 0, %._crit_edge607 ], [ %75, %._crit_edge602 ], [ %131, %._crit_edge597 ], [ %187, %._crit_edge592 ], [ %187, %242 ], [ %187, %257 ], [ %274, %._crit_edge587 ], [ %329, %._crit_edge582 ], [ %385, %._crit_edge577 ], [ %441, %._crit_edge572 ], [ %497, %._crit_edge567 ], [ %553, %._crit_edge562 ], [ %1032, %._crit_edge522 ], [ %1032, %1081 ], [ %1179, %makeMaps_d.exit ], [ %1335, %._crit_edge516 ], [ %1335, %._crit_edge516 ], [ %1335, %._crit_edge516 ], [ %1387, %._crit_edge511 ], [ %1632, %1627 ], [ %1772, %1784 ], [ %nblockMAX.1, %1837 ], [ %nblockMAX.1, %1888 ], [ %nblockMAX.4, %1910 ], [ %nblockMAX.6, %1962 ], [ %nblockMAX.6, %2007 ], [ %nblockMAX.3, %2059 ], [ %nblockMAX.3, %2203 ], [ %nblockMAX.9, %2255 ], [ %nblockMAX.9, %2300 ], [ %nblockMAX.3, %2309 ], [ %nblockMAX.3, %2536 ], [ %nblockMAX.3, %2549 ], [ %nblockMAX.3, %2480 ], [ %nblockMAX.3, %2486 ], [ %2567, %._crit_edge381 ], [ %2623, %._crit_edge376 ], [ %2679, %._crit_edge371 ], [ %2735, %._crit_edge366 ], [ %2791, %._crit_edge361 ], [ %nblockMAX.3, %.loopexit98 ], [ %nblockMAX.6, %.loopexit104 ], [ %nblockMAX.6, %.loopexit107 ], [ %3026, %3050 ], [ %2967, %2991 ], [ %2908, %2932 ], [ %2849, %2873 ], [ %2791, %2812 ], [ %2735, %2756 ], [ %2679, %2700 ], [ %2623, %2644 ], [ %2567, %2588 ], [ %1122, %1146 ], [ %1232, %1254 ], [ %1459, %1483 ], [ %1459, %1507 ], [ %1701, %1721 ], [ %1651, %1672 ], [ %1564, %1584 ], [ %nblockMAX.2, %1864 ], [ %nblockMAX.7, %1983 ], [ %nblockMAX.5, %1938 ], [ %nblockMAX.10, %2276 ], [ %nblockMAX.8, %2231 ], [ %nblockMAX.0, %1813 ], [ %1387, %1408 ], [ %1335, %1356 ], [ %1032, %1057 ], [ %973, %997 ], [ %914, %938 ], [ %857, %879 ], [ %798, %822 ], [ %739, %763 ], [ %680, %704 ], [ %621, %645 ], [ %553, %574 ], [ %497, %518 ], [ %441, %462 ], [ %385, %406 ], [ %329, %350 ], [ %274, %294 ], [ %187, %209 ], [ %131, %152 ], [ %75, %96 ], [ 0, %40 ]
  %nextSym.8 = phi i32 [ %.pre755, %3074 ], [ %3025, %._crit_edge ], [ 0, %._crit_edge607 ], [ %74, %._crit_edge602 ], [ %130, %._crit_edge597 ], [ %186, %._crit_edge592 ], [ %186, %242 ], [ %186, %257 ], [ %273, %._crit_edge587 ], [ %328, %._crit_edge582 ], [ %384, %._crit_edge577 ], [ %440, %._crit_edge572 ], [ %496, %._crit_edge567 ], [ %552, %._crit_edge562 ], [ %1031, %._crit_edge522 ], [ %1031, %1081 ], [ %1178, %makeMaps_d.exit ], [ %1334, %._crit_edge516 ], [ %1334, %._crit_edge516 ], [ %1334, %._crit_edge516 ], [ %1386, %._crit_edge511 ], [ %1631, %1627 ], [ %1540, %1784 ], [ %1838, %1837 ], [ %1838, %1888 ], [ %nextSym.1, %1910 ], [ %nextSym.3, %1962 ], [ %nextSym.3, %2007 ], [ %nextSym.0, %2059 ], [ %nextSym.0, %2203 ], [ %nextSym.6, %2255 ], [ %nextSym.6, %2300 ], [ %nextSym.0, %2309 ], [ %nextSym.0, %2536 ], [ %nextSym.0, %2549 ], [ %nextSym.0, %2480 ], [ %nextSym.0, %2486 ], [ %2566, %._crit_edge381 ], [ %2622, %._crit_edge376 ], [ %2678, %._crit_edge371 ], [ %2734, %._crit_edge366 ], [ %2790, %._crit_edge361 ], [ %nextSym.0, %.loopexit98 ], [ %2015, %.loopexit104 ], [ %2015, %.loopexit107 ], [ %3025, %3050 ], [ %2966, %2991 ], [ %2907, %2932 ], [ %2848, %2873 ], [ %2790, %2812 ], [ %2734, %2756 ], [ %2678, %2700 ], [ %2622, %2644 ], [ %2566, %2588 ], [ %1121, %1146 ], [ %1231, %1254 ], [ %1458, %1483 ], [ %1458, %1507 ], [ %1700, %1721 ], [ %1650, %1672 ], [ %1563, %1584 ], [ %1852, %1864 ], [ %nextSym.4, %1983 ], [ %nextSym.2, %1938 ], [ %nextSym.7, %2276 ], [ %nextSym.5, %2231 ], [ %1797, %1813 ], [ %1386, %1408 ], [ %1334, %1356 ], [ %1031, %1057 ], [ %972, %997 ], [ %913, %938 ], [ %856, %879 ], [ %797, %822 ], [ %738, %763 ], [ %679, %704 ], [ %620, %645 ], [ %552, %574 ], [ %496, %518 ], [ %440, %462 ], [ %384, %406 ], [ %328, %350 ], [ %273, %294 ], [ %186, %209 ], [ %130, %152 ], [ %74, %96 ], [ 0, %40 ]
  %groupPos.14 = phi i32 [ %.pre753, %3074 ], [ %3024, %._crit_edge ], [ 0, %._crit_edge607 ], [ %73, %._crit_edge602 ], [ %129, %._crit_edge597 ], [ %185, %._crit_edge592 ], [ %185, %242 ], [ %185, %257 ], [ %272, %._crit_edge587 ], [ %327, %._crit_edge582 ], [ %383, %._crit_edge577 ], [ %439, %._crit_edge572 ], [ %495, %._crit_edge567 ], [ %551, %._crit_edge562 ], [ %1030, %._crit_edge522 ], [ %1030, %1081 ], [ %1177, %makeMaps_d.exit ], [ %1333, %._crit_edge516 ], [ %1333, %._crit_edge516 ], [ %1333, %._crit_edge516 ], [ %1385, %._crit_edge511 ], [ %1630, %1627 ], [ 0, %1784 ], [ %groupPos.2, %1837 ], [ %groupPos.2, %1888 ], [ 0, %1910 ], [ %groupPos.8, %1962 ], [ %groupPos.8, %2007 ], [ %groupPos.4, %2059 ], [ 0, %2203 ], [ %groupPos.12, %2255 ], [ %groupPos.12, %2300 ], [ %groupPos.4, %2309 ], [ %groupPos.4, %2536 ], [ %groupPos.4, %2549 ], [ %groupPos.4, %2480 ], [ %groupPos.4, %2486 ], [ %2565, %._crit_edge381 ], [ %2621, %._crit_edge376 ], [ %2677, %._crit_edge371 ], [ %2733, %._crit_edge366 ], [ %2789, %._crit_edge361 ], [ %groupPos.4, %.loopexit98 ], [ %groupPos.8, %.loopexit104 ], [ %groupPos.8, %.loopexit107 ], [ %3024, %3050 ], [ %2965, %2991 ], [ %2906, %2932 ], [ %2847, %2873 ], [ %2789, %2812 ], [ %2733, %2756 ], [ %2677, %2700 ], [ %2621, %2644 ], [ %2565, %2588 ], [ %1120, %1146 ], [ %1230, %1254 ], [ %1457, %1483 ], [ %1457, %1507 ], [ %1699, %1721 ], [ %1649, %1672 ], [ %1562, %1584 ], [ %groupPos.3, %1864 ], [ %groupPos.9, %1983 ], [ %groupPos.7, %1938 ], [ %groupPos.13, %2276 ], [ %groupPos.11, %2231 ], [ %groupPos.1, %1813 ], [ %1385, %1408 ], [ %1333, %1356 ], [ %1030, %1057 ], [ %971, %997 ], [ %912, %938 ], [ %855, %879 ], [ %796, %822 ], [ %737, %763 ], [ %678, %704 ], [ %619, %645 ], [ %551, %574 ], [ %495, %518 ], [ %439, %462 ], [ %383, %406 ], [ %327, %350 ], [ %272, %294 ], [ %185, %209 ], [ %129, %152 ], [ %73, %96 ], [ 0, %40 ]
  %groupNo.14 = phi i32 [ %.pre751, %3074 ], [ %3023, %._crit_edge ], [ 0, %._crit_edge607 ], [ %72, %._crit_edge602 ], [ %128, %._crit_edge597 ], [ %184, %._crit_edge592 ], [ %184, %242 ], [ %184, %257 ], [ %271, %._crit_edge587 ], [ %326, %._crit_edge582 ], [ %382, %._crit_edge577 ], [ %438, %._crit_edge572 ], [ %494, %._crit_edge567 ], [ %550, %._crit_edge562 ], [ %1029, %._crit_edge522 ], [ %1029, %1081 ], [ %1176, %makeMaps_d.exit ], [ %1332, %._crit_edge516 ], [ %1332, %._crit_edge516 ], [ %1332, %._crit_edge516 ], [ %1384, %._crit_edge511 ], [ %1629, %1627 ], [ 0, %1784 ], [ %groupNo.2, %1837 ], [ %groupNo.2, %1888 ], [ %1911, %1910 ], [ %groupNo.8, %1962 ], [ %groupNo.8, %2007 ], [ %groupNo.4, %2059 ], [ %2204, %2203 ], [ %groupNo.12, %2255 ], [ %groupNo.12, %2300 ], [ %groupNo.4, %2309 ], [ %groupNo.4, %2536 ], [ %groupNo.4, %2549 ], [ %groupNo.4, %2480 ], [ %groupNo.4, %2486 ], [ %2564, %._crit_edge381 ], [ %2620, %._crit_edge376 ], [ %2676, %._crit_edge371 ], [ %2732, %._crit_edge366 ], [ %2788, %._crit_edge361 ], [ %groupNo.4, %.loopexit98 ], [ %groupNo.8, %.loopexit104 ], [ %groupNo.8, %.loopexit107 ], [ %3023, %3050 ], [ %2964, %2991 ], [ %2905, %2932 ], [ %2846, %2873 ], [ %2788, %2812 ], [ %2732, %2756 ], [ %2676, %2700 ], [ %2620, %2644 ], [ %2564, %2588 ], [ %1119, %1146 ], [ %1229, %1254 ], [ %1456, %1483 ], [ %1456, %1507 ], [ %1698, %1721 ], [ %1648, %1672 ], [ %1561, %1584 ], [ %groupNo.3, %1864 ], [ %groupNo.9, %1983 ], [ %groupNo.7, %1938 ], [ %groupNo.13, %2276 ], [ %groupNo.11, %2231 ], [ %groupNo.1, %1813 ], [ %1384, %1408 ], [ %1332, %1356 ], [ %1029, %1057 ], [ %970, %997 ], [ %911, %938 ], [ %854, %879 ], [ %795, %822 ], [ %736, %763 ], [ %677, %704 ], [ %618, %645 ], [ %550, %574 ], [ %494, %518 ], [ %438, %462 ], [ %382, %406 ], [ %326, %350 ], [ %271, %294 ], [ %184, %209 ], [ %128, %152 ], [ %72, %96 ], [ 0, %40 ]
  %EOB.11 = phi i32 [ %.pre749, %3074 ], [ %3022, %._crit_edge ], [ 0, %._crit_edge607 ], [ %71, %._crit_edge602 ], [ %127, %._crit_edge597 ], [ %183, %._crit_edge592 ], [ %183, %242 ], [ %183, %257 ], [ %270, %._crit_edge587 ], [ %325, %._crit_edge582 ], [ %381, %._crit_edge577 ], [ %437, %._crit_edge572 ], [ %493, %._crit_edge567 ], [ %549, %._crit_edge562 ], [ %1028, %._crit_edge522 ], [ %1028, %1081 ], [ %1175, %makeMaps_d.exit ], [ %1331, %._crit_edge516 ], [ %1331, %._crit_edge516 ], [ %1331, %._crit_edge516 ], [ %1383, %._crit_edge511 ], [ %1628, %1627 ], [ %1771, %1784 ], [ %EOB.1, %1837 ], [ %EOB.1, %1888 ], [ %EOB.4, %1910 ], [ %EOB.6, %1962 ], [ %EOB.6, %2007 ], [ %EOB.3, %2059 ], [ %EOB.3, %2203 ], [ %EOB.9, %2255 ], [ %EOB.9, %2300 ], [ %nextSym.0, %2309 ], [ %nextSym.0, %2536 ], [ %nextSym.0, %2549 ], [ %nextSym.0, %2480 ], [ %nextSym.0, %2486 ], [ %2563, %._crit_edge381 ], [ %2619, %._crit_edge376 ], [ %2675, %._crit_edge371 ], [ %2731, %._crit_edge366 ], [ %2787, %._crit_edge361 ], [ %nextSym.0, %.loopexit98 ], [ %EOB.6, %.loopexit104 ], [ %EOB.6, %.loopexit107 ], [ %3022, %3050 ], [ %2963, %2991 ], [ %2904, %2932 ], [ %2845, %2873 ], [ %2787, %2812 ], [ %2731, %2756 ], [ %2675, %2700 ], [ %2619, %2644 ], [ %2563, %2588 ], [ %1118, %1146 ], [ %1228, %1254 ], [ %1455, %1483 ], [ %1455, %1507 ], [ %1697, %1721 ], [ %1647, %1672 ], [ %1560, %1584 ], [ %EOB.2, %1864 ], [ %EOB.7, %1983 ], [ %EOB.5, %1938 ], [ %EOB.10, %2276 ], [ %EOB.8, %2231 ], [ %EOB.0, %1813 ], [ %1383, %1408 ], [ %1331, %1356 ], [ %1028, %1057 ], [ %969, %997 ], [ %910, %938 ], [ %853, %879 ], [ %794, %822 ], [ %735, %763 ], [ %676, %704 ], [ %617, %645 ], [ %549, %574 ], [ %493, %518 ], [ %437, %462 ], [ %381, %406 ], [ %325, %350 ], [ %270, %294 ], [ %183, %209 ], [ %127, %152 ], [ %71, %96 ], [ 0, %40 ]
  %nSelectors.19 = phi i32 [ %.pre747, %3074 ], [ %3021, %._crit_edge ], [ 0, %._crit_edge607 ], [ %70, %._crit_edge602 ], [ %126, %._crit_edge597 ], [ %182, %._crit_edge592 ], [ %182, %242 ], [ %182, %257 ], [ %269, %._crit_edge587 ], [ %324, %._crit_edge582 ], [ %380, %._crit_edge577 ], [ %436, %._crit_edge572 ], [ %492, %._crit_edge567 ], [ %548, %._crit_edge562 ], [ %1027, %._crit_edge522 ], [ %1027, %1081 ], [ %1174, %makeMaps_d.exit ], [ %1330, %._crit_edge516 ], [ %1330, %._crit_edge516 ], [ %1330, %._crit_edge516 ], [ 0, %._crit_edge511 ], [ %nSelectors.5, %1627 ], [ %nSelectors.2, %1784 ], [ %nSelectors.9, %1837 ], [ %nSelectors.9, %1888 ], [ %nSelectors.12, %1910 ], [ %nSelectors.14, %1962 ], [ %nSelectors.14, %2007 ], [ %nSelectors.11, %2059 ], [ %nSelectors.11, %2203 ], [ %nSelectors.17, %2255 ], [ %nSelectors.17, %2300 ], [ %nSelectors.11, %2309 ], [ %nSelectors.11, %2536 ], [ %nSelectors.11, %2549 ], [ %nSelectors.11, %2480 ], [ %nSelectors.11, %2486 ], [ %2562, %._crit_edge381 ], [ %2618, %._crit_edge376 ], [ %2674, %._crit_edge371 ], [ %2730, %._crit_edge366 ], [ %2786, %._crit_edge361 ], [ %nSelectors.11, %.loopexit98 ], [ %nSelectors.14, %.loopexit104 ], [ %nSelectors.14, %.loopexit107 ], [ %3021, %3050 ], [ %2962, %2991 ], [ %2903, %2932 ], [ %2844, %2873 ], [ %2786, %2812 ], [ %2730, %2756 ], [ %2674, %2700 ], [ %2618, %2644 ], [ %2562, %2588 ], [ %1117, %1146 ], [ %1227, %1254 ], [ %nSelectors.1.ph, %1483 ], [ %nSelectors.1.ph, %1507 ], [ %nSelectors.7, %1721 ], [ %nSelectors.6, %1672 ], [ %nSelectors.3, %1584 ], [ %nSelectors.10, %1864 ], [ %nSelectors.15, %1983 ], [ %nSelectors.13, %1938 ], [ %nSelectors.18, %2276 ], [ %nSelectors.16, %2231 ], [ %nSelectors.8, %1813 ], [ %1382, %1408 ], [ %1330, %1356 ], [ %1027, %1057 ], [ %968, %997 ], [ %909, %938 ], [ %852, %879 ], [ %793, %822 ], [ %734, %763 ], [ %675, %704 ], [ %616, %645 ], [ %548, %574 ], [ %492, %518 ], [ %436, %462 ], [ %380, %406 ], [ %324, %350 ], [ %269, %294 ], [ %182, %209 ], [ %126, %152 ], [ %70, %96 ], [ 0, %40 ]
  %nGroups.20 = phi i32 [ %.pre745, %3074 ], [ %3020, %._crit_edge ], [ 0, %._crit_edge607 ], [ %69, %._crit_edge602 ], [ %125, %._crit_edge597 ], [ %181, %._crit_edge592 ], [ %181, %242 ], [ %181, %257 ], [ %268, %._crit_edge587 ], [ %323, %._crit_edge582 ], [ %379, %._crit_edge577 ], [ %435, %._crit_edge572 ], [ %491, %._crit_edge567 ], [ %547, %._crit_edge562 ], [ %1026, %._crit_edge522 ], [ %1026, %1081 ], [ %1173, %makeMaps_d.exit ], [ %1355, %._crit_edge516 ], [ %1355, %._crit_edge516 ], [ %1355, %._crit_edge516 ], [ %nGroups.0, %._crit_edge511 ], [ %nGroups.6, %1627 ], [ %nGroups.3, %1784 ], [ %nGroups.10, %1837 ], [ %nGroups.10, %1888 ], [ %nGroups.13, %1910 ], [ %nGroups.15, %1962 ], [ %nGroups.15, %2007 ], [ %nGroups.12, %2059 ], [ %nGroups.12, %2203 ], [ %nGroups.18, %2255 ], [ %nGroups.18, %2300 ], [ %nGroups.12, %2309 ], [ %nGroups.12, %2536 ], [ %nGroups.12, %2549 ], [ %nGroups.12, %2480 ], [ %nGroups.12, %2486 ], [ %2561, %._crit_edge381 ], [ %2617, %._crit_edge376 ], [ %2673, %._crit_edge371 ], [ %2729, %._crit_edge366 ], [ %2785, %._crit_edge361 ], [ %nGroups.12, %.loopexit98 ], [ %nGroups.15, %.loopexit104 ], [ %nGroups.15, %.loopexit107 ], [ %3020, %3050 ], [ %2961, %2991 ], [ %2902, %2932 ], [ %2843, %2873 ], [ %2785, %2812 ], [ %2729, %2756 ], [ %2673, %2700 ], [ %2617, %2644 ], [ %2561, %2588 ], [ %1116, %1146 ], [ %1226, %1254 ], [ %nGroups.2.ph, %1483 ], [ %nGroups.2.ph, %1507 ], [ %nGroups.8, %1721 ], [ %nGroups.7, %1672 ], [ %nGroups.4, %1584 ], [ %nGroups.11, %1864 ], [ %nGroups.16, %1983 ], [ %nGroups.14, %1938 ], [ %nGroups.19, %2276 ], [ %nGroups.17, %2231 ], [ %nGroups.9, %1813 ], [ %nGroups.0, %1408 ], [ %1329, %1356 ], [ %1026, %1057 ], [ %967, %997 ], [ %908, %938 ], [ %851, %879 ], [ %792, %822 ], [ %733, %763 ], [ %674, %704 ], [ %615, %645 ], [ %547, %574 ], [ %491, %518 ], [ %435, %462 ], [ %379, %406 ], [ %323, %350 ], [ %268, %294 ], [ %181, %209 ], [ %125, %152 ], [ %69, %96 ], [ 0, %40 ]
  %alphaSize.21 = phi i32 [ %.pre743, %3074 ], [ %3019, %._crit_edge ], [ 0, %._crit_edge607 ], [ %68, %._crit_edge602 ], [ %124, %._crit_edge597 ], [ %180, %._crit_edge592 ], [ %180, %242 ], [ %180, %257 ], [ %267, %._crit_edge587 ], [ %322, %._crit_edge582 ], [ %378, %._crit_edge577 ], [ %434, %._crit_edge572 ], [ %490, %._crit_edge567 ], [ %546, %._crit_edge562 ], [ %1025, %._crit_edge522 ], [ %1025, %1081 ], [ %1172, %makeMaps_d.exit ], [ %alphaSize.0, %._crit_edge516 ], [ %alphaSize.0, %._crit_edge516 ], [ %alphaSize.0, %._crit_edge516 ], [ %alphaSize.1, %._crit_edge511 ], [ %alphaSize.7, %1627 ], [ %alphaSize.4, %1784 ], [ %alphaSize.11, %1837 ], [ %alphaSize.11, %1888 ], [ %alphaSize.14, %1910 ], [ %alphaSize.16, %1962 ], [ %alphaSize.16, %2007 ], [ %alphaSize.13, %2059 ], [ %alphaSize.13, %2203 ], [ %alphaSize.19, %2255 ], [ %alphaSize.19, %2300 ], [ %alphaSize.13, %2309 ], [ %alphaSize.13, %2536 ], [ %alphaSize.13, %2549 ], [ %alphaSize.13, %2480 ], [ %alphaSize.13, %2486 ], [ %2560, %._crit_edge381 ], [ %2616, %._crit_edge376 ], [ %2672, %._crit_edge371 ], [ %2728, %._crit_edge366 ], [ %2784, %._crit_edge361 ], [ %alphaSize.13, %.loopexit98 ], [ %alphaSize.16, %.loopexit104 ], [ %alphaSize.16, %.loopexit107 ], [ %3019, %3050 ], [ %2960, %2991 ], [ %2901, %2932 ], [ %2842, %2873 ], [ %2784, %2812 ], [ %2728, %2756 ], [ %2672, %2700 ], [ %2616, %2644 ], [ %2560, %2588 ], [ %1115, %1146 ], [ %1225, %1254 ], [ %alphaSize.3.ph, %1483 ], [ %alphaSize.3.ph, %1507 ], [ %alphaSize.9, %1721 ], [ %alphaSize.8, %1672 ], [ %alphaSize.5, %1584 ], [ %alphaSize.12, %1864 ], [ %alphaSize.17, %1983 ], [ %alphaSize.15, %1938 ], [ %alphaSize.20, %2276 ], [ %alphaSize.18, %2231 ], [ %alphaSize.10, %1813 ], [ %alphaSize.1, %1408 ], [ %alphaSize.0, %1356 ], [ %1025, %1057 ], [ %966, %997 ], [ %907, %938 ], [ %850, %879 ], [ %791, %822 ], [ %732, %763 ], [ %673, %704 ], [ %614, %645 ], [ %546, %574 ], [ %490, %518 ], [ %434, %462 ], [ %378, %406 ], [ %322, %350 ], [ %267, %294 ], [ %180, %209 ], [ %124, %152 ], [ %68, %96 ], [ 0, %40 ]
  %t.18 = phi i32 [ %.pre741, %3074 ], [ %3018, %._crit_edge ], [ 0, %._crit_edge607 ], [ %67, %._crit_edge602 ], [ %123, %._crit_edge597 ], [ %179, %._crit_edge592 ], [ %179, %242 ], [ %179, %257 ], [ %266, %._crit_edge587 ], [ %321, %._crit_edge582 ], [ %377, %._crit_edge577 ], [ %433, %._crit_edge572 ], [ %489, %._crit_edge567 ], [ %545, %._crit_edge562 ], [ %1024, %._crit_edge522 ], [ %1024, %1081 ], [ %1171, %makeMaps_d.exit ], [ %1328, %._crit_edge516 ], [ %1328, %._crit_edge516 ], [ %1328, %._crit_edge516 ], [ %1381, %._crit_edge511 ], [ %t.3, %1627 ], [ %t.6.lcssa, %1784 ], [ %t.8, %1837 ], [ %t.8, %1888 ], [ %t.11, %1910 ], [ %t.13, %1962 ], [ %t.13, %2007 ], [ %t.10, %2059 ], [ %t.10, %2203 ], [ %t.16, %2255 ], [ %t.16, %2300 ], [ %t.10, %2309 ], [ %t.10, %2536 ], [ %t.10, %2549 ], [ %t.10, %2480 ], [ %t.10, %2486 ], [ %2559, %._crit_edge381 ], [ %2615, %._crit_edge376 ], [ %2671, %._crit_edge371 ], [ %2727, %._crit_edge366 ], [ %2783, %._crit_edge361 ], [ %t.10, %.loopexit98 ], [ %t.13, %.loopexit104 ], [ %t.13, %.loopexit107 ], [ %3018, %3050 ], [ %2959, %2991 ], [ %2900, %2932 ], [ %2841, %2873 ], [ %2783, %2812 ], [ %2727, %2756 ], [ %2671, %2700 ], [ %2615, %2644 ], [ %2559, %2588 ], [ %1114, %1146 ], [ %1224, %1254 ], [ %1454, %1483 ], [ %1454, %1507 ], [ %t.5, %1721 ], [ %t.4, %1672 ], [ %t.1, %1584 ], [ %t.9, %1864 ], [ %t.14, %1983 ], [ %t.12, %1938 ], [ %t.17, %2276 ], [ %t.15, %2231 ], [ %t.7, %1813 ], [ %1381, %1408 ], [ %1328, %1356 ], [ %1024, %1057 ], [ %965, %997 ], [ %906, %938 ], [ %849, %879 ], [ %790, %822 ], [ %731, %763 ], [ %672, %704 ], [ %613, %645 ], [ %545, %574 ], [ %489, %518 ], [ %433, %462 ], [ %377, %406 ], [ %321, %350 ], [ %266, %294 ], [ %179, %209 ], [ %123, %152 ], [ %67, %96 ], [ 0, %40 ]
  %j.27 = phi i32 [ %.pre739, %3074 ], [ %3017, %._crit_edge ], [ 0, %._crit_edge607 ], [ %66, %._crit_edge602 ], [ %122, %._crit_edge597 ], [ %178, %._crit_edge592 ], [ %178, %242 ], [ %178, %257 ], [ %265, %._crit_edge587 ], [ %320, %._crit_edge582 ], [ %376, %._crit_edge577 ], [ %432, %._crit_edge572 ], [ %488, %._crit_edge567 ], [ %544, %._crit_edge562 ], [ %1023, %._crit_edge522 ], [ %1023, %1081 ], [ %j.0, %makeMaps_d.exit ], [ %j.4, %._crit_edge516 ], [ %j.4, %._crit_edge516 ], [ %j.4, %._crit_edge516 ], [ %j.5, %._crit_edge511 ], [ %j.11, %1627 ], [ %j.8, %1784 ], [ %j.15, %1837 ], [ %j.15, %1888 ], [ %j.18, %1910 ], [ %j.20, %1962 ], [ %j.20, %2007 ], [ %j.17, %2059 ], [ %j.17, %2203 ], [ %j.23, %2255 ], [ %j.23, %2300 ], [ %j.17, %2309 ], [ %j.17, %2536 ], [ %j.17, %2549 ], [ %2422, %2480 ], [ %2422, %2486 ], [ %2558, %._crit_edge381 ], [ %2614, %._crit_edge376 ], [ %2670, %._crit_edge371 ], [ %2726, %._crit_edge366 ], [ %2782, %._crit_edge361 ], [ %j.17, %.loopexit98 ], [ %j.20, %.loopexit104 ], [ %j.20, %.loopexit107 ], [ %3017, %3050 ], [ %2958, %2991 ], [ %2899, %2932 ], [ %2840, %2873 ], [ %2782, %2812 ], [ %2726, %2756 ], [ %2670, %2700 ], [ %2614, %2644 ], [ %2558, %2588 ], [ %1113, %1146 ], [ %j.2, %1254 ], [ %j.7, %1483 ], [ %1508, %1507 ], [ %j.13, %1721 ], [ %j.12, %1672 ], [ %j.9, %1584 ], [ %j.16, %1864 ], [ %j.21, %1983 ], [ %j.19, %1938 ], [ %j.24, %2276 ], [ %j.22, %2231 ], [ %j.14, %1813 ], [ %j.5, %1408 ], [ %j.4, %1356 ], [ %1023, %1057 ], [ %964, %997 ], [ %905, %938 ], [ %848, %879 ], [ %789, %822 ], [ %730, %763 ], [ %671, %704 ], [ %612, %645 ], [ %544, %574 ], [ %488, %518 ], [ %432, %462 ], [ %376, %406 ], [ %320, %350 ], [ %265, %294 ], [ %178, %209 ], [ %122, %152 ], [ %66, %96 ], [ 0, %40 ]
  %i.39 = phi i32 [ %.pre, %3074 ], [ %3016, %._crit_edge ], [ 0, %._crit_edge607 ], [ %65, %._crit_edge602 ], [ %121, %._crit_edge597 ], [ %177, %._crit_edge592 ], [ %177, %242 ], [ %177, %257 ], [ %264, %._crit_edge587 ], [ %319, %._crit_edge582 ], [ %375, %._crit_edge577 ], [ %431, %._crit_edge572 ], [ %487, %._crit_edge567 ], [ %543, %._crit_edge562 ], [ %1022, %._crit_edge522 ], [ %1022, %1081 ], [ %i.3, %makeMaps_d.exit ], [ %i.7, %._crit_edge516 ], [ %i.7, %._crit_edge516 ], [ %i.7, %._crit_edge516 ], [ %i.8, %._crit_edge511 ], [ %i.15, %1627 ], [ 256, %1784 ], [ %i.21, %1837 ], [ %i.21, %1888 ], [ %i.24, %1910 ], [ %i.26, %1962 ], [ %i.26, %2007 ], [ %i.23, %2059 ], [ %i.23, %2203 ], [ %i.29, %2255 ], [ %i.29, %2300 ], [ %i.23, %2309 ], [ %i.37.lcssa, %2536 ], [ %i.37.lcssa, %2549 ], [ %2407, %2480 ], [ %2407, %2486 ], [ %2557, %._crit_edge381 ], [ %2613, %._crit_edge376 ], [ %2669, %._crit_edge371 ], [ %2725, %._crit_edge366 ], [ %2781, %._crit_edge361 ], [ %3075, %.loopexit98 ], [ %i.26, %.loopexit104 ], [ %i.26, %.loopexit107 ], [ %3016, %3050 ], [ %2957, %2991 ], [ %2898, %2932 ], [ %2839, %2873 ], [ %2781, %2812 ], [ %2725, %2756 ], [ %2669, %2700 ], [ %2613, %2644 ], [ %2557, %2588 ], [ %i.1, %1146 ], [ %i.5, %1254 ], [ %i.10.ph, %1483 ], [ %i.10.ph, %1507 ], [ %i.17, %1721 ], [ %i.16, %1672 ], [ %i.13, %1584 ], [ %i.22, %1864 ], [ %i.27, %1983 ], [ %i.25, %1938 ], [ %i.30, %2276 ], [ %i.28, %2231 ], [ %i.20, %1813 ], [ %i.8, %1408 ], [ %i.7, %1356 ], [ %1022, %1057 ], [ %963, %997 ], [ %904, %938 ], [ %847, %879 ], [ %788, %822 ], [ %729, %763 ], [ %670, %704 ], [ %611, %645 ], [ %543, %574 ], [ %487, %518 ], [ %431, %462 ], [ %375, %406 ], [ %319, %350 ], [ %264, %294 ], [ %177, %209 ], [ %121, %152 ], [ %65, %96 ], [ 0, %40 ]
  %retVal.0 = phi i32 [ 0, %3074 ], [ 4, %._crit_edge ], [ -5, %._crit_edge607 ], [ -5, %._crit_edge602 ], [ -5, %._crit_edge597 ], [ -5, %._crit_edge592 ], [ -3, %242 ], [ -3, %257 ], [ -4, %._crit_edge587 ], [ -4, %._crit_edge582 ], [ -4, %._crit_edge577 ], [ -4, %._crit_edge572 ], [ -4, %._crit_edge567 ], [ -4, %._crit_edge562 ], [ -4, %._crit_edge522 ], [ -4, %1081 ], [ -4, %makeMaps_d.exit ], [ -4, %._crit_edge516 ], [ -4, %._crit_edge516 ], [ -4, %._crit_edge516 ], [ -4, %._crit_edge511 ], [ -4, %1627 ], [ -4, %1784 ], [ -4, %1837 ], [ -4, %1888 ], [ -4, %1910 ], [ -4, %1962 ], [ -4, %2007 ], [ -4, %2059 ], [ -4, %2203 ], [ -4, %2255 ], [ -4, %2300 ], [ -4, %2309 ], [ 0, %2536 ], [ 0, %2549 ], [ 0, %2480 ], [ 0, %2486 ], [ -4, %._crit_edge381 ], [ -4, %._crit_edge376 ], [ -4, %._crit_edge371 ], [ -4, %._crit_edge366 ], [ -4, %._crit_edge361 ], [ -4, %.loopexit98 ], [ -4, %.loopexit104 ], [ -4, %.loopexit107 ], [ 0, %3050 ], [ 0, %2991 ], [ 0, %2932 ], [ 0, %2873 ], [ 0, %2812 ], [ 0, %2756 ], [ 0, %2700 ], [ 0, %2644 ], [ 0, %2588 ], [ 0, %1146 ], [ 0, %1254 ], [ 0, %1483 ], [ -4, %1507 ], [ 0, %1721 ], [ 0, %1672 ], [ 0, %1584 ], [ 0, %1864 ], [ 0, %1983 ], [ 0, %1938 ], [ 0, %2276 ], [ 0, %2231 ], [ 0, %1813 ], [ 0, %1408 ], [ 0, %1356 ], [ 0, %1057 ], [ 0, %997 ], [ 0, %938 ], [ 0, %879 ], [ 0, %822 ], [ 0, %763 ], [ 0, %704 ], [ 0, %645 ], [ 0, %574 ], [ 0, %518 ], [ 0, %462 ], [ 0, %406 ], [ 0, %350 ], [ 0, %294 ], [ 0, %209 ], [ 0, %152 ], [ 0, %96 ], [ 0, %40 ]
  store i32 %i.39, i32* %6, align 4, !tbaa !10
  store i32 %j.27, i32* %.pre-phi11202437, align 4, !tbaa !11
  store i32 %t.18, i32* %.pre-phi11212382, align 4, !tbaa !12
  store i32 %alphaSize.21, i32* %.pre-phi11222327, align 4, !tbaa !13
  store i32 %nGroups.20, i32* %.pre-phi11232272, align 4, !tbaa !14
  store i32 %nSelectors.19, i32* %.pre-phi11242217, align 4, !tbaa !15
  store i32 %EOB.11, i32* %.pre-phi11252162, align 4, !tbaa !16
  store i32 %groupNo.14, i32* %.pre-phi11262107, align 4, !tbaa !17
  store i32 %groupPos.14, i32* %.pre-phi11272052, align 4, !tbaa !18
  store i32 %nextSym.8, i32* %.pre-phi11281997, align 4, !tbaa !19
  store i32 %nblockMAX.11, i32* %.pre-phi11291942, align 4, !tbaa !20
  store i32 %nblock.13, i32* %.pre-phi11301887, align 4, !tbaa !21
  store i32 %es.11, i32* %.pre-phi11311832, align 4, !tbaa !22
  store i32 %N.8, i32* %.pre-phi11321777, align 4, !tbaa !23
  store i32 %curr.17, i32* %.pre-phi11331722, align 4, !tbaa !24
  store i32 %3078, i32* %.pre-phi11341667, align 4, !tbaa !25
  store i32 %zn.11, i32* %.pre-phi11351612, align 4, !tbaa !26
  store i32 %zvec.10, i32* %.pre-phi11361557, align 4, !tbaa !27
  store i32 %zj.10, i32* %.pre-phi11371502, align 4, !tbaa !28
  store i32 %gSel.14, i32* %.pre-phi11381447, align 4, !tbaa !29
  store i32 %gMinlen.14, i32* %.pre-phi11391392, align 4, !tbaa !30
  store i32* %gLimit.14, i32** %.pre-phi11401337, align 8, !tbaa !31
  store i32* %gBase.14, i32** %.pre-phi11411282, align 8, !tbaa !32
  store i32* %gPerm.14, i32** %.pre-phi11421227, align 8, !tbaa !33
  ret i32 %retVal.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: optsize
declare void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i32 @BZ2_indexIntoF(i32, i32*) #2

; Function Attrs: optsize
declare void @BZ2_bz__AssertH__fail(i32) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !7, i64 8, !5, i64 12, !7, i64 16, !5, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !5, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !5, i64 68, !7, i64 1092, !5, i64 1096, !5, i64 2124, !4, i64 3152, !4, i64 3160, !4, i64 3168, !7, i64 3176, !7, i64 3180, !7, i64 3184, !7, i64 3188, !7, i64 3192, !5, i64 3196, !5, i64 3452, !5, i64 3468, !5, i64 3724, !5, i64 7820, !5, i64 7884, !5, i64 25886, !5, i64 43888, !5, i64 45436, !5, i64 51628, !5, i64 57820, !5, i64 64012, !7, i64 64036, !7, i64 64040, !7, i64 64044, !7, i64 64048, !7, i64 64052, !7, i64 64056, !7, i64 64060, !7, i64 64064, !7, i64 64068, !7, i64 64072, !7, i64 64076, !7, i64 64080, !7, i64 64084, !7, i64 64088, !7, i64 64092, !7, i64 64096, !7, i64 64100, !7, i64 64104, !7, i64 64108, !7, i64 64112, !7, i64 64116, !4, i64 64120, !4, i64 64128, !4, i64 64136}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!3, !7, i64 8}
!9 = !{!3, !7, i64 36}
!10 = !{!3, !7, i64 64036}
!11 = !{!3, !7, i64 64040}
!12 = !{!3, !7, i64 64044}
!13 = !{!3, !7, i64 64048}
!14 = !{!3, !7, i64 64052}
!15 = !{!3, !7, i64 64056}
!16 = !{!3, !7, i64 64060}
!17 = !{!3, !7, i64 64064}
!18 = !{!3, !7, i64 64068}
!19 = !{!3, !7, i64 64072}
!20 = !{!3, !7, i64 64076}
!21 = !{!3, !7, i64 64080}
!22 = !{!3, !7, i64 64084}
!23 = !{!3, !7, i64 64088}
!24 = !{!3, !7, i64 64092}
!25 = !{!3, !7, i64 64096}
!26 = !{!3, !7, i64 64100}
!27 = !{!3, !7, i64 64104}
!28 = !{!3, !7, i64 64108}
!29 = !{!3, !7, i64 64112}
!30 = !{!3, !7, i64 64116}
!31 = !{!3, !4, i64 64120}
!32 = !{!3, !4, i64 64128}
!33 = !{!3, !4, i64 64136}
!34 = !{!3, !7, i64 32}
!35 = !{!36, !7, i64 8}
!36 = !{!"", !4, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72}
!37 = !{!36, !4, i64 0}
!38 = !{!5, !5, i64 0}
!39 = !{!36, !7, i64 12}
!40 = !{!36, !7, i64 16}
!41 = !{!3, !7, i64 40}
!42 = !{!3, !5, i64 44}
!43 = !{!36, !4, i64 56}
!44 = !{!36, !4, i64 72}
!45 = !{!3, !4, i64 3160}
!46 = !{!3, !4, i64 3168}
!47 = !{!3, !4, i64 3152}
!48 = !{!3, !7, i64 48}
!49 = !{!3, !7, i64 52}
!50 = !{!4, !4, i64 0}
!51 = !{!3, !7, i64 3176}
!52 = !{!3, !5, i64 20}
!53 = !{!3, !7, i64 56}
!54 = !{!3, !7, i64 3192}
!55 = !{!7, !7, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.vectorize.width", i32 1}
!58 = !{!"llvm.loop.interleave.count", i32 1}
!59 = !{!60, !60, i64 0}
!60 = !{!"short", !5, i64 0}
!61 = distinct !{!61, !57, !58}
!62 = !{!3, !7, i64 16}
!63 = !{!3, !5, i64 12}
!64 = !{!3, !7, i64 3184}
!65 = !{!3, !7, i64 60}
!66 = !{!3, !7, i64 1092}
!67 = !{!3, !7, i64 24}
!68 = !{!3, !7, i64 28}
!69 = !{!3, !7, i64 64}
!70 = !{!3, !7, i64 3180}

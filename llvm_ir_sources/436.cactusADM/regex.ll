; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/regex.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }
%union.fail_stack_elt = type { i8* }
%struct.re_registers = type { i32, i32*, i32* }
%union.register_info_type = type { %union.fail_stack_elt }
%struct.compile_stack_elt_t = type { i64, i64, i64, i64, i32 }
%struct.regmatch_t = type { i32, i32 }

@re_syntax_options = common global i64 0, align 8
@re_max_failures = global i32 20000, align 4
@re_syntax_table = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@re_error_msgid = internal constant [369 x i8] c"Success\00No match\00Invalid regular expression\00Invalid collation character\00Invalid character class name\00Trailing backslash\00Invalid back reference\00Unmatched [ or [^\00Unmatched ( or \5C(\00Unmatched \5C{\00Invalid content of \5C{\5C}\00Invalid range end\00Memory exhausted\00Invalid preceding regular expression\00Premature end of regular expression\00Regular expression too big\00Unmatched ) or \5C)\00", align 16
@re_error_msgid_idx = internal unnamed_addr constant [17 x i64] [i64 0, i64 8, i64 17, i64 44, i64 72, i64 101, i64 120, i64 143, i64 161, i64 179, i64 192, i64 216, i64 234, i64 251, i64 288, i64 324, i64 351], align 16
@reg_unset_dummy = internal global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str9 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str11 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@init_syntax_once.done = internal unnamed_addr global i1 false
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define i64 @re_set_syntax(i64 %syntax) #0 {
  %1 = load i64* @re_syntax_options, align 8, !tbaa !2
  store i64 %syntax, i64* @re_syntax_options, align 8, !tbaa !2
  ret i64 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @re_compile_fastmap(%struct.re_pattern_buffer* nocapture %bufp) #0 {
  %1 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 4
  %2 = load i8** %1, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0
  %4 = load i8** %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 2
  %6 = load i64* %5, align 8, !tbaa !11
  %7 = getelementptr inbounds i8* %4, i64 %6
  %8 = tail call i8* @malloc(i64 40) #7
  %9 = icmp eq i8* %8, null
  br i1 %9, label %200, label %10

; <label>:10                                      ; preds = %0
  %11 = bitcast i8* %8 to %union.fail_stack_elt*
  %12 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %2, i1 false)
  %13 = tail call i8* @__memset_chk(i8* %2, i32 0, i64 256, i64 %12) #7
  %14 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7
  %15 = load i8* %14, align 8
  %16 = and i8 %15, -10
  %17 = or i8 %16, 8
  store i8 %17, i8* %14, align 8
  %18 = getelementptr inbounds i8* %2, i64 10
  %19 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 3
  br label %.backedge18

.backedge18:                                      ; preds = %180, %140, %41, %111, %112, %126, %183, %128, %116, %35, %35, %35, %35, %35, %35, %35, %35, %35, %35, %30, %194, %196, %46, %67, %.backedge, %.backedge13, %99, %105, %10
  %fail_stack.sroa.10.0 = phi i32 [ 5, %10 ], [ %fail_stack.sroa.10.0, %30 ], [ %fail_stack.sroa.10.0, %196 ], [ %fail_stack.sroa.10.0, %194 ], [ %fail_stack.sroa.10.0, %183 ], [ %fail_stack.sroa.10.0, %116 ], [ %fail_stack.sroa.10.0, %128 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %35 ], [ %fail_stack.sroa.10.0, %126 ], [ %fail_stack.sroa.10.0, %140 ], [ %fail_stack.sroa.10.3, %180 ], [ %fail_stack.sroa.10.0, %112 ], [ %fail_stack.sroa.10.0, %111 ], [ %fail_stack.sroa.10.0, %41 ], [ %fail_stack.sroa.10.0, %46 ], [ %fail_stack.sroa.10.0, %67 ], [ %fail_stack.sroa.10.0, %.backedge ], [ %fail_stack.sroa.10.0, %.backedge13 ], [ %fail_stack.sroa.10.0, %99 ], [ %fail_stack.sroa.10.0, %105 ]
  %fail_stack.sroa.0.0 = phi %union.fail_stack_elt* [ %11, %10 ], [ %fail_stack.sroa.0.0, %30 ], [ %fail_stack.sroa.0.0, %196 ], [ %fail_stack.sroa.0.0, %194 ], [ %fail_stack.sroa.0.0, %183 ], [ %fail_stack.sroa.0.0, %116 ], [ %fail_stack.sroa.0.0, %128 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %35 ], [ %fail_stack.sroa.0.0, %126 ], [ %fail_stack.sroa.0.0, %140 ], [ %fail_stack.sroa.0.3, %180 ], [ %fail_stack.sroa.0.0, %112 ], [ %fail_stack.sroa.0.0, %111 ], [ %fail_stack.sroa.0.0, %41 ], [ %fail_stack.sroa.0.0, %46 ], [ %fail_stack.sroa.0.0, %67 ], [ %fail_stack.sroa.0.0, %.backedge ], [ %fail_stack.sroa.0.0, %.backedge13 ], [ %fail_stack.sroa.0.0, %99 ], [ %fail_stack.sroa.0.0, %105 ]
  %fail_stack.sroa.16.0 = phi i32 [ 0, %10 ], [ %31, %30 ], [ %fail_stack.sroa.16.0, %196 ], [ %fail_stack.sroa.16.0, %194 ], [ %fail_stack.sroa.16.0, %183 ], [ %fail_stack.sroa.16.0, %116 ], [ 0, %128 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %35 ], [ %fail_stack.sroa.16.0, %126 ], [ %.fail_stack.sroa.16.0, %140 ], [ %fail_stack.sroa.16.1, %180 ], [ %fail_stack.sroa.16.0, %112 ], [ %fail_stack.sroa.16.0, %111 ], [ %fail_stack.sroa.16.0, %41 ], [ %fail_stack.sroa.16.0, %46 ], [ %fail_stack.sroa.16.0, %67 ], [ %fail_stack.sroa.16.0, %.backedge ], [ %fail_stack.sroa.16.0, %.backedge13 ], [ %fail_stack.sroa.16.0, %99 ], [ %fail_stack.sroa.16.0, %105 ]
  %p.0 = phi i8* [ %4, %10 ], [ %34, %30 ], [ %197, %196 ], [ %195, %194 ], [ %192, %183 ], [ %124, %116 ], [ %138, %128 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %124, %126 ], [ %138, %140 ], [ %.11, %180 ], [ %7, %112 ], [ %7, %111 ], [ %7, %41 ], [ %7, %46 ], [ %7, %67 ], [ %7, %.backedge ], [ %7, %.backedge13 ], [ %7, %99 ], [ %7, %105 ]
  %path_can_be_null.0 = phi i8 [ 1, %10 ], [ 1, %30 ], [ %path_can_be_null.0, %196 ], [ %path_can_be_null.0, %194 ], [ %path_can_be_null.0, %183 ], [ %path_can_be_null.0, %116 ], [ %path_can_be_null.0, %128 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %35 ], [ %path_can_be_null.0, %126 ], [ %path_can_be_null.0, %140 ], [ %path_can_be_null.0, %180 ], [ 0, %112 ], [ 0, %111 ], [ 0, %41 ], [ 0, %46 ], [ 0, %67 ], [ 0, %.backedge ], [ 0, %.backedge13 ], [ 0, %99 ], [ 0, %105 ]
  %20 = icmp eq i8* %p.0, %7
  br i1 %20, label %24, label %21

; <label>:21                                      ; preds = %.backedge18
  %22 = load i8* %p.0, align 1, !tbaa !12
  %23 = icmp eq i8 %22, 1
  br i1 %23, label %24, label %35

; <label>:24                                      ; preds = %21, %.backedge18
  %25 = icmp eq i32 %fail_stack.sroa.16.0, 0
  %26 = load i8* %14, align 8
  %.masked = and i8 %26, 1
  %27 = or i8 %.masked, %path_can_be_null.0
  %28 = and i8 %26, -2
  %29 = or i8 %27, %28
  store i8 %29, i8* %14, align 8
  br i1 %25, label %.loopexit17, label %30

; <label>:30                                      ; preds = %24
  %31 = add i32 %fail_stack.sroa.16.0, -1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %32, i32 0
  %34 = load i8** %33, align 8, !tbaa !13
  br label %.backedge18

; <label>:35                                      ; preds = %21
  %36 = zext i8 %22 to i32
  %37 = getelementptr inbounds i8* %p.0, i64 1
  switch i32 %36, label %198 [
    i32 8, label %38
    i32 2, label %41
    i32 4, label %46
    i32 5, label %64
    i32 24, label %.preheader
    i32 25, label %.preheader15
    i32 3, label %106
    i32 0, label %.backedge18
    i32 9, label %.backedge18
    i32 10, label %.backedge18
    i32 11, label %.backedge18
    i32 12, label %.backedge18
    i32 28, label %.backedge18
    i32 29, label %.backedge18
    i32 26, label %.backedge18
    i32 27, label %.backedge18
    i32 20, label %.backedge18
    i32 22, label %116
    i32 17, label %116
    i32 18, label %116
    i32 13, label %116
    i32 14, label %116
    i32 19, label %116
    i32 15, label %146
    i32 16, label %146
    i32 21, label %183
    i32 23, label %194
    i32 6, label %196
    i32 7, label %196
  ]

; <label>:38                                      ; preds = %35
  %39 = load i8* %14, align 8
  %40 = or i8 %39, 1
  store i8 %40, i8* %14, align 8
  br label %.loopexit17

; <label>:41                                      ; preds = %35
  %42 = getelementptr inbounds i8* %p.0, i64 2
  %43 = load i8* %42, align 1, !tbaa !12
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8* %2, i64 %44
  store i8 1, i8* %45, align 1, !tbaa !12
  br label %.backedge18

; <label>:46                                      ; preds = %35
  %47 = load i8* %37, align 1, !tbaa !12
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %.backedge18, label %.lr.ph34

.lr.ph34:                                         ; preds = %46
  %49 = zext i8 %47 to i64
  %50 = shl nuw nsw i64 %49, 3
  br label %51

; <label>:51                                      ; preds = %.lr.ph34, %.backedge
  %indvars.iv46 = phi i64 [ %50, %.lr.ph34 ], [ %indvars.iv.next47, %.backedge ]
  %indvars.iv.next47 = add nsw i64 %indvars.iv46, -1
  %52 = trunc i64 %indvars.iv.next47 to i32
  %53 = sdiv i32 %52, 8
  %addconv10 = add nsw i32 %53, 2
  %.sum9 = sext i32 %addconv10 to i64
  %54 = getelementptr inbounds i8* %p.0, i64 %.sum9
  %55 = load i8* %54, align 1, !tbaa !12
  %56 = zext i8 %55 to i32
  %57 = and i32 %52, 7
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %.backedge, label %62

.backedge:                                        ; preds = %51, %62
  %61 = icmp sgt i64 %indvars.iv46, 1
  br i1 %61, label %51, label %.backedge18

; <label>:62                                      ; preds = %51
  %63 = getelementptr inbounds i8* %2, i64 %indvars.iv.next47
  store i8 1, i8* %63, align 1, !tbaa !12
  br label %.backedge

; <label>:64                                      ; preds = %35
  %65 = load i8* %37, align 1, !tbaa !12
  %66 = icmp ult i8 %65, 32
  br i1 %66, label %67, label %.lr.ph30

; <label>:67                                      ; preds = %64
  %68 = zext i8 %65 to i32
  %69 = shl nuw nsw i32 %68, 3
  %70 = zext i32 %69 to i64
  %scevgep = getelementptr i8* %2, i64 %70
  %71 = or i32 %69, 1
  %72 = icmp ugt i32 %71, 256
  %.op = add nsw i32 %71, -1
  %73 = select i1 %72, i32 %.op, i32 255
  %74 = sub nsw i32 %73, %69
  %75 = zext i32 %74 to i64
  %76 = add nuw nsw i64 %75, 1
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 1, i64 %76, i32 1, i1 false)
  %.pre = load i8* %37, align 1, !tbaa !12
  %77 = icmp eq i8 %.pre, 0
  br i1 %77, label %.backedge18, label %.lr.ph30

.lr.ph30:                                         ; preds = %64, %67
  %78 = phi i8 [ %.pre, %67 ], [ %65, %64 ]
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 3
  br label %81

; <label>:81                                      ; preds = %.lr.ph30, %.backedge13
  %indvars.iv44 = phi i64 [ %80, %.lr.ph30 ], [ %indvars.iv.next45, %.backedge13 ]
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  %82 = trunc i64 %indvars.iv.next45 to i32
  %83 = sdiv i32 %82, 8
  %addconv8 = add nsw i32 %83, 2
  %.sum7 = sext i32 %addconv8 to i64
  %84 = getelementptr inbounds i8* %p.0, i64 %.sum7
  %85 = load i8* %84, align 1, !tbaa !12
  %86 = zext i8 %85 to i32
  %87 = and i32 %82, 7
  %88 = shl i32 1, %87
  %89 = and i32 %86, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %.backedge13

.backedge13:                                      ; preds = %81, %92
  %91 = icmp sgt i64 %indvars.iv44, 1
  br i1 %91, label %81, label %.backedge18

; <label>:92                                      ; preds = %81
  %93 = getelementptr inbounds i8* %2, i64 %indvars.iv.next45
  store i8 1, i8* %93, align 1, !tbaa !12
  br label %.backedge13

.preheader:                                       ; preds = %35, %99
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %99 ], [ 0, %35 ]
  %94 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %indvars.iv39
  %95 = load i8* %94, align 1, !tbaa !12
  %96 = icmp eq i8 %95, 1
  br i1 %96, label %97, label %99

; <label>:97                                      ; preds = %.preheader
  %98 = getelementptr inbounds i8* %2, i64 %indvars.iv39
  store i8 1, i8* %98, align 1, !tbaa !12
  br label %99

; <label>:99                                      ; preds = %.preheader, %97
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond41 = icmp eq i64 %indvars.iv.next40, 256
  br i1 %exitcond41, label %.backedge18, label %.preheader

.preheader15:                                     ; preds = %35, %105
  %indvars.iv = phi i64 [ %indvars.iv.next, %105 ], [ 0, %35 ]
  %100 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %indvars.iv
  %101 = load i8* %100, align 1, !tbaa !12
  %102 = icmp eq i8 %101, 1
  br i1 %102, label %105, label %103

; <label>:103                                     ; preds = %.preheader15
  %104 = getelementptr inbounds i8* %2, i64 %indvars.iv
  store i8 1, i8* %104, align 1, !tbaa !12
  br label %105

; <label>:105                                     ; preds = %.preheader15, %103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %.backedge18, label %.preheader15

; <label>:106                                     ; preds = %35
  %107 = load i8* %18, align 1, !tbaa !12
  call void @llvm.memset.p0i8.i64(i8* %2, i8 1, i64 256, i32 1, i1 false)
  %108 = load i64* %19, align 8, !tbaa !14
  %109 = and i64 %108, 64
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

; <label>:111                                     ; preds = %106
  store i8 %107, i8* %18, align 1, !tbaa !12
  br label %.backedge18

; <label>:112                                     ; preds = %106
  %113 = load i8* %14, align 8
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %.backedge18, label %.loopexit17

; <label>:116                                     ; preds = %35, %35, %35, %35, %35, %35
  %117 = load i8* %37, align 1, !tbaa !12
  %118 = zext i8 %117 to i32
  %119 = getelementptr inbounds i8* %p.0, i64 2
  %120 = load i8* %119, align 1, !tbaa !12
  %121 = sext i8 %120 to i32
  %122 = shl nsw i32 %121, 8
  %123 = or i32 %122, %118
  %addconv2 = add nsw i32 %123, 3
  %.sum1 = sext i32 %addconv2 to i64
  %124 = getelementptr inbounds i8* %p.0, i64 %.sum1
  %125 = icmp sgt i32 %123, 0
  br i1 %125, label %.backedge18, label %126

; <label>:126                                     ; preds = %116
  %127 = load i8* %124, align 1, !tbaa !12
  switch i8 %127, label %.backedge18 [
    i8 15, label %128
    i8 21, label %128
  ]

; <label>:128                                     ; preds = %126, %126
  %.sum3 = add nsw i64 %.sum1, 1
  %129 = getelementptr inbounds i8* %p.0, i64 %.sum3
  %130 = load i8* %129, align 1, !tbaa !12
  %131 = zext i8 %130 to i32
  %.sum4 = add nsw i64 %.sum1, 2
  %132 = getelementptr inbounds i8* %p.0, i64 %.sum4
  %133 = load i8* %132, align 1, !tbaa !12
  %134 = sext i8 %133 to i32
  %135 = shl nsw i32 %134, 8
  %136 = or i32 %135, %131
  %.sum5 = add nsw i64 %.sum1, 3
  %137 = sext i32 %136 to i64
  %.sum6 = add nsw i64 %.sum5, %137
  %138 = getelementptr inbounds i8* %p.0, i64 %.sum6
  %139 = icmp eq i32 %fail_stack.sroa.16.0, 0
  br i1 %139, label %.backedge18, label %140

; <label>:140                                     ; preds = %128
  %141 = add i32 %fail_stack.sroa.16.0, -1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %142, i32 0
  %144 = load i8** %143, align 8, !tbaa !13
  %145 = icmp eq i8* %144, %138
  %.fail_stack.sroa.16.0 = select i1 %145, i32 %141, i32 %fail_stack.sroa.16.0
  br label %.backedge18

; <label>:146                                     ; preds = %183, %35, %35
  %succeed_n_p.1 = phi i8 [ 0, %35 ], [ 0, %35 ], [ 1, %183 ]
  %147 = load i8* %37, align 1, !tbaa !12
  %148 = zext i8 %147 to i32
  %149 = getelementptr inbounds i8* %p.0, i64 2
  %150 = load i8* %149, align 1, !tbaa !12
  %151 = sext i8 %150 to i32
  %152 = shl nsw i32 %151, 8
  %153 = or i32 %152, %148
  %154 = getelementptr inbounds i8* %p.0, i64 3
  %addconv = add nsw i32 %153, 3
  %.sum = sext i32 %addconv to i64
  %155 = getelementptr inbounds i8* %p.0, i64 %.sum
  %156 = icmp ult i8* %155, %7
  br i1 %156, label %157, label %177

; <label>:157                                     ; preds = %146
  %158 = icmp eq i32 %fail_stack.sroa.16.0, %fail_stack.sroa.10.0
  br i1 %158, label %159, label %171

; <label>:159                                     ; preds = %157
  %160 = load i32* @re_max_failures, align 4, !tbaa !15
  %161 = mul nsw i32 %160, 19
  %162 = icmp ugt i32 %fail_stack.sroa.10.0, %161
  br i1 %162, label %175, label %163

; <label>:163                                     ; preds = %159
  %164 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.0 to i8*
  %165 = shl i32 %fail_stack.sroa.10.0, 1
  %166 = zext i32 %165 to i64
  %167 = shl nuw nsw i64 %166, 3
  %168 = tail call i8* @realloc(i8* %164, i64 %167) #7
  %169 = bitcast i8* %168 to %union.fail_stack_elt*
  %170 = icmp eq i8* %168, null
  %fail_stack.sroa.10.0. = select i1 %170, i32 %fail_stack.sroa.10.0, i32 %165
  br i1 %170, label %175, label %171

; <label>:171                                     ; preds = %163, %157
  %fail_stack.sroa.10.2 = phi i32 [ %fail_stack.sroa.10.0., %163 ], [ %fail_stack.sroa.10.0, %157 ]
  %fail_stack.sroa.0.1 = phi %union.fail_stack_elt* [ %169, %163 ], [ %fail_stack.sroa.0.0, %157 ]
  %172 = add i32 %fail_stack.sroa.16.0, 1
  %173 = zext i32 %fail_stack.sroa.16.0 to i64
  %174 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.1, i64 %173, i32 0
  store i8* %155, i8** %174, align 8, !tbaa !13
  br label %180

; <label>:175                                     ; preds = %163, %159
  %fail_stack.sroa.0.2 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %159 ], [ %169, %163 ]
  %176 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.2 to i8*
  tail call void @free(i8* %176) #8
  br label %200

; <label>:177                                     ; preds = %146
  %178 = load i8* %14, align 8
  %179 = or i8 %178, 1
  store i8 %179, i8* %14, align 8
  br label %180

; <label>:180                                     ; preds = %177, %171
  %fail_stack.sroa.10.3 = phi i32 [ %fail_stack.sroa.10.2, %171 ], [ %fail_stack.sroa.10.0, %177 ]
  %fail_stack.sroa.0.3 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.1, %171 ], [ %fail_stack.sroa.0.0, %177 ]
  %fail_stack.sroa.16.1 = phi i32 [ %172, %171 ], [ %fail_stack.sroa.16.0, %177 ]
  %181 = icmp eq i8 %succeed_n_p.1, 0
  %182 = getelementptr inbounds i8* %p.0, i64 5
  %.11 = select i1 %181, i8* %154, i8* %182
  br label %.backedge18

; <label>:183                                     ; preds = %35
  %184 = getelementptr inbounds i8* %p.0, i64 3
  %185 = load i8* %184, align 1, !tbaa !12
  %186 = zext i8 %185 to i32
  %187 = getelementptr inbounds i8* %p.0, i64 4
  %188 = load i8* %187, align 1, !tbaa !12
  %189 = sext i8 %188 to i32
  %190 = shl nsw i32 %189, 8
  %191 = or i32 %190, %186
  %192 = getelementptr inbounds i8* %p.0, i64 5
  %193 = icmp eq i32 %191, 0
  br i1 %193, label %146, label %.backedge18

; <label>:194                                     ; preds = %35
  %195 = getelementptr inbounds i8* %p.0, i64 5
  br label %.backedge18

; <label>:196                                     ; preds = %35, %35
  %197 = getelementptr inbounds i8* %p.0, i64 3
  br label %.backedge18

; <label>:198                                     ; preds = %35
  tail call void @abort() #9
  unreachable

.loopexit17:                                      ; preds = %112, %24, %38
  %199 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.0 to i8*
  tail call void @free(i8* %199) #8
  br label %200

; <label>:200                                     ; preds = %0, %.loopexit17, %175
  %.0 = phi i32 [ 0, %.loopexit17 ], [ -2, %175 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #1

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: noreturn optsize
declare void @abort() #3

; Function Attrs: nounwind optsize ssp uwtable
define void @re_set_registers(%struct.re_pattern_buffer* nocapture %bufp, %struct.re_registers* nocapture %regs, i32 %num_regs, i32* %starts, i32* %ends) #0 {
  %1 = icmp eq i32 %num_regs, 0
  %2 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7
  %3 = load i8* %2, align 8
  %4 = and i8 %3, -7
  %5 = or i8 %4, 2
  %. = select i1 %1, i8 %4, i8 %5
  %.ends = select i1 %1, i32* null, i32* %ends
  %.starts = select i1 %1, i32* null, i32* %starts
  store i8 %., i8* %2, align 8
  %6 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0
  store i32 %num_regs, i32* %6, align 4
  %7 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2
  store i32* %.ends, i32** %7, align 8
  %8 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1
  store i32* %.starts, i32** %8, align 8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @re_search(%struct.re_pattern_buffer* nocapture %bufp, i8* %string, i32 %size, i32 %startpos, i32 %range, %struct.re_registers* %regs) #0 {
  %1 = tail call i32 @re_search_2(%struct.re_pattern_buffer* %bufp, i8* null, i32 0, i8* %string, i32 %size, i32 %startpos, i32 %range, %struct.re_registers* %regs, i32 %size) #8
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @re_search_2(%struct.re_pattern_buffer* nocapture %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %startpos, i32 %range, %struct.re_registers* %regs, i32 %stop) #0 {
  %1 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 4
  %2 = load i8** %1, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 5
  %4 = load i8** %3, align 8, !tbaa !16
  %5 = add nsw i32 %size2, %size1
  %6 = add nsw i32 %range, %startpos
  %7 = icmp slt i32 %startpos, 0
  %8 = icmp slt i32 %5, %startpos
  %or.cond11 = or i1 %7, %8
  br i1 %or.cond11, label %.loopexit, label %9

; <label>:9                                       ; preds = %0
  %10 = icmp slt i32 %6, 0
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %9
  %12 = sub nsw i32 0, %startpos
  br label %16

; <label>:13                                      ; preds = %9
  %14 = icmp sgt i32 %6, %5
  %15 = sub nsw i32 %5, %startpos
  %.range = select i1 %14, i32 %15, i32 %range
  br label %16

; <label>:16                                      ; preds = %13, %11
  %.07 = phi i32 [ %12, %11 ], [ %.range, %13 ]
  %17 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 2
  %18 = load i64* %17, align 8, !tbaa !11
  %19 = icmp ne i64 %18, 0
  %20 = icmp sgt i32 %.07, 0
  %or.cond = and i1 %20, %19
  br i1 %or.cond, label %21, label %31

; <label>:21                                      ; preds = %16
  %22 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0
  %23 = load i8** %22, align 8, !tbaa !10
  %24 = load i8* %23, align 1, !tbaa !12
  switch i8 %24, label %31 [
    i8 11, label %29
    i8 9, label %25
  ]

; <label>:25                                      ; preds = %21
  %26 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7
  %27 = load i8* %26, align 8
  %28 = icmp slt i8 %27, 0
  br i1 %28, label %31, label %29

; <label>:29                                      ; preds = %21, %25
  %30 = icmp sgt i32 %startpos, 0
  br i1 %30, label %.loopexit, label %31

; <label>:31                                      ; preds = %29, %21, %25, %16
  %.18 = phi i32 [ %.07, %25 ], [ %.07, %16 ], [ %.07, %21 ], [ 1, %29 ]
  %32 = icmp ne i8* %2, null
  %33 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7
  br i1 %32, label %34, label %.preheader19

; <label>:34                                      ; preds = %31
  %35 = load i8* %33, align 8
  %36 = and i8 %35, 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %.preheader19

; <label>:38                                      ; preds = %34
  %39 = tail call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %bufp) #8
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %.loopexit, label %.preheader19

.preheader19:                                     ; preds = %31, %38, %34
  %41 = icmp eq i8* %4, null
  %42 = sext i32 %size1 to i64
  %43 = sub nsw i64 0, %42
  %44 = getelementptr inbounds i8* %string2, i64 %43
  %45 = icmp ne i32 %size1, 0
  br label %.backedge

.backedge:                                        ; preds = %125, %122, %.preheader19
  %.29 = phi i32 [ %.18, %.preheader19 ], [ %123, %122 ], [ %126, %125 ]
  %.06 = phi i32 [ %startpos, %.preheader19 ], [ %124, %122 ], [ %127, %125 ]
  %46 = icmp slt i32 %.06, %5
  %or.cond12 = and i1 %32, %46
  br i1 %or.cond12, label %47, label %106

; <label>:47                                      ; preds = %.backedge
  %48 = load i8* %33, align 8
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %106

; <label>:51                                      ; preds = %47
  %52 = icmp sgt i32 %.29, 0
  br i1 %52, label %53, label %87

; <label>:53                                      ; preds = %51
  %54 = icmp sge i32 %.06, %size1
  %55 = add i32 %.06, %.29
  %56 = icmp slt i32 %55, %size1
  %or.cond14 = or i1 %54, %56
  br i1 %or.cond14, label %60, label %57

; <label>:57                                      ; preds = %53
  %58 = sub i32 %.29, %size1
  %59 = add i32 %58, %.06
  br label %60

; <label>:60                                      ; preds = %53, %57
  %lim.0 = phi i32 [ %59, %57 ], [ 0, %53 ]
  %61 = icmp slt i32 %.06, %size1
  %string1. = select i1 %61, i8* %string1, i8* %44
  %62 = sext i32 %.06 to i64
  %63 = getelementptr inbounds i8* %string1., i64 %62
  %64 = icmp sgt i32 %.29, %lim.0
  br i1 %41, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %60
  br i1 %64, label %.lr.ph, label %.critedge

.preheader:                                       ; preds = %60
  br i1 %64, label %.lr.ph26, label %.critedge

.lr.ph:                                           ; preds = %.preheader17, %73
  %d.021 = phi i8* [ %74, %73 ], [ %63, %.preheader17 ]
  %.320 = phi i32 [ %75, %73 ], [ %.29, %.preheader17 ]
  %65 = load i8* %d.021, align 1, !tbaa !12
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i8* %4, i64 %66
  %68 = load i8* %67, align 1, !tbaa !12
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i8* %2, i64 %69
  %71 = load i8* %70, align 1, !tbaa !12
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %.critedge

; <label>:73                                      ; preds = %.lr.ph
  %74 = getelementptr inbounds i8* %d.021, i64 1
  %75 = add nsw i32 %.320, -1
  %76 = icmp sgt i32 %75, %lim.0
  br i1 %76, label %.lr.ph, label %.critedge

.lr.ph26:                                         ; preds = %.preheader, %82
  %d.125 = phi i8* [ %83, %82 ], [ %63, %.preheader ]
  %.424 = phi i32 [ %84, %82 ], [ %.29, %.preheader ]
  %77 = load i8* %d.125, align 1, !tbaa !12
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds i8* %2, i64 %78
  %80 = load i8* %79, align 1, !tbaa !12
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %.critedge

; <label>:82                                      ; preds = %.lr.ph26
  %83 = getelementptr inbounds i8* %d.125, i64 1
  %84 = add nsw i32 %.424, -1
  %85 = icmp sgt i32 %84, %lim.0
  br i1 %85, label %.lr.ph26, label %.critedge

.critedge:                                        ; preds = %73, %.lr.ph, %82, %.lr.ph26, %.preheader17, %.preheader
  %.5 = phi i32 [ %.29, %.preheader ], [ %.29, %.preheader17 ], [ %.424, %.lr.ph26 ], [ %84, %82 ], [ %.320, %.lr.ph ], [ %75, %73 ]
  %86 = sub i32 %55, %.5
  br label %106

; <label>:87                                      ; preds = %51
  %88 = icmp slt i32 %.06, %size1
  %or.cond15 = and i1 %45, %88
  br i1 %or.cond15, label %93, label %89

; <label>:89                                      ; preds = %87
  %90 = sub nsw i32 %.06, %size1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8* %string2, i64 %91
  br label %96

; <label>:93                                      ; preds = %87
  %94 = sext i32 %.06 to i64
  %95 = getelementptr inbounds i8* %string1, i64 %94
  br label %96

; <label>:96                                      ; preds = %93, %89
  %.sink.in = phi i8* [ %92, %89 ], [ %95, %93 ]
  %.sink10 = load i8* %.sink.in, align 1
  br i1 %41, label %101, label %97

; <label>:97                                      ; preds = %96
  %98 = zext i8 %.sink10 to i64
  %99 = getelementptr inbounds i8* %4, i64 %98
  %100 = load i8* %99, align 1, !tbaa !12
  br label %101

; <label>:101                                     ; preds = %96, %97
  %.sink3 = phi i8 [ %100, %97 ], [ %.sink10, %96 ]
  %102 = zext i8 %.sink3 to i64
  %103 = getelementptr inbounds i8* %2, i64 %102
  %104 = load i8* %103, align 1, !tbaa !12
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %118, label %106

; <label>:106                                     ; preds = %101, %47, %.critedge, %.backedge
  %.6 = phi i32 [ %.29, %47 ], [ %.5, %.critedge ], [ %.29, %101 ], [ %.29, %.backedge ]
  %.1 = phi i32 [ %.06, %47 ], [ %86, %.critedge ], [ %.06, %101 ], [ %.06, %.backedge ]
  %107 = icmp sgt i32 %.6, -1
  %108 = icmp eq i32 %.1, %5
  %or.cond5 = and i1 %32, %108
  %or.cond16 = and i1 %107, %or.cond5
  br i1 %or.cond16, label %109, label %113

; <label>:109                                     ; preds = %106
  %110 = load i8* %33, align 8
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %.loopexit, label %113

; <label>:113                                     ; preds = %109, %106
  %114 = tail call fastcc i32 @re_match_2_internal(%struct.re_pattern_buffer* %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %.1, %struct.re_registers* %regs, i32 %stop) #8
  %115 = icmp sgt i32 %114, -1
  br i1 %115, label %.loopexit, label %116

; <label>:116                                     ; preds = %113
  %117 = icmp eq i32 %114, -2
  br i1 %117, label %.loopexit, label %118

; <label>:118                                     ; preds = %101, %116
  %.7 = phi i32 [ %.6, %116 ], [ %.29, %101 ]
  %.2 = phi i32 [ %.1, %116 ], [ %.06, %101 ]
  %119 = icmp eq i32 %.7, 0
  br i1 %119, label %.loopexit, label %120

; <label>:120                                     ; preds = %118
  %121 = icmp sgt i32 %.7, 0
  br i1 %121, label %122, label %125

; <label>:122                                     ; preds = %120
  %123 = add nsw i32 %.7, -1
  %124 = add nsw i32 %.2, 1
  br label %.backedge

; <label>:125                                     ; preds = %120
  %126 = add nsw i32 %.7, 1
  %127 = add nsw i32 %.2, -1
  br label %.backedge

.loopexit:                                        ; preds = %118, %116, %113, %109, %38, %29, %0
  %.0 = phi i32 [ -1, %0 ], [ -1, %29 ], [ -2, %38 ], [ -1, %109 ], [ %.1, %113 ], [ -2, %116 ], [ -1, %118 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @re_match_2_internal(%struct.re_pattern_buffer* nocapture %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %pos, %struct.re_registers* %regs, i32 %stop) #0 {
  %p1 = alloca i8*, align 8
  %1 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0
  %2 = load i8** %1, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 2
  %4 = load i64* %3, align 8, !tbaa !11
  %5 = getelementptr inbounds i8* %2, i64 %4
  %6 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 5
  %7 = load i8** %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 6
  %9 = load i64* %8, align 8, !tbaa !17
  %10 = add i64 %9, 1
  %11 = tail call i8* @malloc(i64 40) #7
  %12 = bitcast i8* %11 to %union.fail_stack_elt*
  %13 = icmp eq i8* %11, null
  br i1 %13, label %.loopexit220, label %14

; <label>:14                                      ; preds = %0
  %15 = icmp eq i64 %9, 0
  br i1 %15, label %63, label %16

; <label>:16                                      ; preds = %14
  %17 = shl i64 %10, 3
  %18 = tail call i8* @malloc(i64 %17) #7
  %19 = bitcast i8* %18 to i8**
  %20 = tail call i8* @malloc(i64 %17) #7
  %21 = bitcast i8* %20 to i8**
  %22 = tail call i8* @malloc(i64 %17) #7
  %23 = bitcast i8* %22 to i8**
  %24 = tail call i8* @malloc(i64 %17) #7
  %25 = bitcast i8* %24 to i8**
  %26 = tail call i8* @malloc(i64 %17) #7
  %27 = bitcast i8* %26 to i8**
  %28 = tail call i8* @malloc(i64 %17) #7
  %29 = bitcast i8* %28 to i8**
  %30 = tail call i8* @malloc(i64 %17) #7
  %31 = bitcast i8* %30 to %union.register_info_type*
  %32 = tail call i8* @malloc(i64 %17) #7
  %33 = bitcast i8* %32 to i8**
  %34 = tail call i8* @malloc(i64 %17) #7
  %35 = bitcast i8* %34 to %union.register_info_type*
  %36 = icmp ne i8* %18, null
  %37 = icmp ne i8* %20, null
  %or.cond = and i1 %36, %37
  %38 = icmp ne i8* %22, null
  %or.cond27 = and i1 %or.cond, %38
  %39 = icmp ne i8* %24, null
  %or.cond29 = and i1 %or.cond27, %39
  %40 = icmp ne i8* %30, null
  %or.cond31 = and i1 %or.cond29, %40
  %41 = icmp ne i8* %26, null
  %or.cond33 = and i1 %41, %or.cond31
  %42 = icmp ne i8* %28, null
  %or.cond35 = and i1 %42, %or.cond33
  %43 = icmp ne i8* %32, null
  %or.cond37 = and i1 %43, %or.cond35
  %44 = icmp ne i8* %34, null
  %or.cond39 = and i1 %44, %or.cond37
  br i1 %or.cond39, label %63, label %45

; <label>:45                                      ; preds = %16
  tail call void @free(i8* %11) #8
  br i1 %36, label %46, label %47

; <label>:46                                      ; preds = %45
  tail call void @free(i8* %18) #8
  br label %47

; <label>:47                                      ; preds = %46, %45
  br i1 %37, label %48, label %49

; <label>:48                                      ; preds = %47
  tail call void @free(i8* %20) #8
  br label %49

; <label>:49                                      ; preds = %48, %47
  br i1 %38, label %50, label %51

; <label>:50                                      ; preds = %49
  tail call void @free(i8* %22) #8
  br label %51

; <label>:51                                      ; preds = %50, %49
  br i1 %39, label %52, label %53

; <label>:52                                      ; preds = %51
  tail call void @free(i8* %24) #8
  br label %53

; <label>:53                                      ; preds = %52, %51
  br i1 %41, label %54, label %55

; <label>:54                                      ; preds = %53
  tail call void @free(i8* %26) #8
  br label %55

; <label>:55                                      ; preds = %54, %53
  br i1 %42, label %56, label %57

; <label>:56                                      ; preds = %55
  tail call void @free(i8* %28) #8
  br label %57

; <label>:57                                      ; preds = %56, %55
  br i1 %40, label %58, label %59

; <label>:58                                      ; preds = %57
  tail call void @free(i8* %30) #8
  br label %59

; <label>:59                                      ; preds = %58, %57
  br i1 %43, label %60, label %61

; <label>:60                                      ; preds = %59
  tail call void @free(i8* %32) #8
  br label %61

; <label>:61                                      ; preds = %60, %59
  br i1 %44, label %62, label %.loopexit220

; <label>:62                                      ; preds = %61
  tail call void @free(i8* %34) #8
  br label %.loopexit220

; <label>:63                                      ; preds = %14, %16
  %regstart.0 = phi i8** [ %19, %16 ], [ null, %14 ]
  %regend.0 = phi i8** [ %21, %16 ], [ null, %14 ]
  %old_regstart.0 = phi i8** [ %23, %16 ], [ null, %14 ]
  %old_regend.0 = phi i8** [ %25, %16 ], [ null, %14 ]
  %reg_info.0 = phi %union.register_info_type* [ %31, %16 ], [ null, %14 ]
  %best_regstart.0 = phi i8** [ %27, %16 ], [ null, %14 ]
  %best_regend.0 = phi i8** [ %29, %16 ], [ null, %14 ]
  %reg_dummy.0 = phi i8** [ %33, %16 ], [ null, %14 ]
  %reg_info_dummy.0 = phi %union.register_info_type* [ %35, %16 ], [ null, %14 ]
  %64 = icmp slt i32 %pos, 0
  %65 = add nsw i32 %size2, %size1
  %66 = icmp slt i32 %65, %pos
  %or.cond108 = or i1 %64, %66
  br i1 %or.cond108, label %68, label %.preheader258

.preheader258:                                    ; preds = %63
  %67 = icmp ugt i64 %10, 1
  br i1 %67, label %.lr.ph454, label %._crit_edge455

; <label>:68                                      ; preds = %63
  tail call void @free(i8* %11) #8
  %69 = icmp eq i8** %regstart.0, null
  br i1 %69, label %72, label %70

; <label>:70                                      ; preds = %68
  %71 = bitcast i8** %regstart.0 to i8*
  tail call void @free(i8* %71) #8
  br label %72

; <label>:72                                      ; preds = %68, %70
  %73 = icmp eq i8** %regend.0, null
  br i1 %73, label %76, label %74

; <label>:74                                      ; preds = %72
  %75 = bitcast i8** %regend.0 to i8*
  tail call void @free(i8* %75) #8
  br label %76

; <label>:76                                      ; preds = %72, %74
  %77 = icmp eq i8** %old_regstart.0, null
  br i1 %77, label %80, label %78

; <label>:78                                      ; preds = %76
  %79 = bitcast i8** %old_regstart.0 to i8*
  tail call void @free(i8* %79) #8
  br label %80

; <label>:80                                      ; preds = %76, %78
  %81 = icmp eq i8** %old_regend.0, null
  br i1 %81, label %84, label %82

; <label>:82                                      ; preds = %80
  %83 = bitcast i8** %old_regend.0 to i8*
  tail call void @free(i8* %83) #8
  br label %84

; <label>:84                                      ; preds = %80, %82
  %85 = icmp eq i8** %best_regstart.0, null
  br i1 %85, label %88, label %86

; <label>:86                                      ; preds = %84
  %87 = bitcast i8** %best_regstart.0 to i8*
  tail call void @free(i8* %87) #8
  br label %88

; <label>:88                                      ; preds = %84, %86
  %89 = icmp eq i8** %best_regend.0, null
  br i1 %89, label %92, label %90

; <label>:90                                      ; preds = %88
  %91 = bitcast i8** %best_regend.0 to i8*
  tail call void @free(i8* %91) #8
  br label %92

; <label>:92                                      ; preds = %88, %90
  %93 = icmp eq %union.register_info_type* %reg_info.0, null
  br i1 %93, label %96, label %94

; <label>:94                                      ; preds = %92
  %95 = bitcast %union.register_info_type* %reg_info.0 to i8*
  tail call void @free(i8* %95) #8
  br label %96

; <label>:96                                      ; preds = %92, %94
  %97 = icmp eq i8** %reg_dummy.0, null
  br i1 %97, label %100, label %98

; <label>:98                                      ; preds = %96
  %99 = bitcast i8** %reg_dummy.0 to i8*
  tail call void @free(i8* %99) #8
  br label %100

; <label>:100                                     ; preds = %96, %98
  %101 = icmp eq %union.register_info_type* %reg_info_dummy.0, null
  br i1 %101, label %.loopexit220, label %102

; <label>:102                                     ; preds = %100
  %103 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*
  tail call void @free(i8* %103) #8
  br label %.loopexit220

.lr.ph454:                                        ; preds = %.preheader258, %.lr.ph454
  %indvars.iv597 = phi i64 [ %indvars.iv.next598, %.lr.ph454 ], [ 1, %.preheader258 ]
  %sext633 = shl i64 %indvars.iv597, 32
  %104 = ashr exact i64 %sext633, 32
  %105 = getelementptr inbounds i8** %old_regend.0, i64 %104
  store i8* @reg_unset_dummy, i8** %105, align 8, !tbaa !13
  %106 = getelementptr inbounds i8** %old_regstart.0, i64 %104
  store i8* @reg_unset_dummy, i8** %106, align 8, !tbaa !13
  %107 = getelementptr inbounds i8** %regend.0, i64 %104
  store i8* @reg_unset_dummy, i8** %107, align 8, !tbaa !13
  %108 = getelementptr inbounds i8** %regstart.0, i64 %104
  store i8* @reg_unset_dummy, i8** %108, align 8, !tbaa !13
  %109 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %104
  %110 = bitcast %union.register_info_type* %109 to i8*
  %111 = load i8* %110, align 4
  %112 = and i8 %111, -32
  %113 = or i8 %112, 3
  store i8 %113, i8* %110, align 4
  %indvars.iv.next598 = add nuw nsw i64 %indvars.iv597, 1
  %exitcond599 = icmp eq i64 %indvars.iv597, %9
  br i1 %exitcond599, label %._crit_edge455, label %.lr.ph454

._crit_edge455:                                   ; preds = %.lr.ph454, %.preheader258
  %114 = icmp eq i32 %size2, 0
  %115 = icmp ne i8* %string1, null
  %or.cond41 = and i1 %115, %114
  %size1.size2 = select i1 %or.cond41, i32 %size1, i32 %size2
  %string1.string2 = select i1 %or.cond41, i8* %string1, i8* %string2
  %.size1 = select i1 %or.cond41, i32 0, i32 %size1
  %.string1 = select i1 %or.cond41, i8* null, i8* %string1
  %116 = sext i32 %.size1 to i64
  %117 = getelementptr inbounds i8* %.string1, i64 %116
  %118 = sext i32 %size1.size2 to i64
  %119 = getelementptr inbounds i8* %string1.string2, i64 %118
  %120 = icmp slt i32 %.size1, %stop
  %121 = sext i32 %stop to i64
  br i1 %120, label %124, label %122

; <label>:122                                     ; preds = %._crit_edge455
  %123 = getelementptr inbounds i8* %.string1, i64 %121
  br label %126

; <label>:124                                     ; preds = %._crit_edge455
  %.sum = sub nsw i64 %121, %116
  %125 = getelementptr inbounds i8* %string1.string2, i64 %.sum
  br label %126

; <label>:126                                     ; preds = %124, %122
  %end_match_2.0 = phi i8* [ %string1.string2, %122 ], [ %125, %124 ]
  %end_match_1.0 = phi i8* [ %123, %122 ], [ %117, %124 ]
  %127 = icmp slt i32 %.size1, 1
  %128 = icmp slt i32 %.size1, %pos
  %or.cond109 = or i1 %127, %128
  %129 = sext i32 %pos to i64
  br i1 %or.cond109, label %132, label %130

; <label>:130                                     ; preds = %126
  %131 = getelementptr inbounds i8* %.string1, i64 %129
  br label %.preheader255

; <label>:132                                     ; preds = %126
  %.sum76 = sub nsw i64 %129, %116
  %133 = getelementptr inbounds i8* %string1.string2, i64 %.sum76
  br label %.preheader255

.preheader255:                                    ; preds = %132, %130
  %dend.0.ph = phi i8* [ %end_match_2.0, %132 ], [ %end_match_1.0, %130 ]
  %d.0.ph = phi i8* [ %133, %132 ], [ %131, %130 ]
  %notlhs184 = icmp ne i32 %.size1, 0
  %134 = icmp eq i8* %7, null
  %135 = select i1 %notlhs184, i8* %.string1, i8* %string1.string2
  %136 = icmp ne i32 %size1.size2, 0
  %137 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7
  %notrhs168 = icmp eq i32 %size1.size2, 0
  %138 = getelementptr inbounds i8* %string1.string2, i64 -1
  %.sum86 = add nsw i64 %116, -1
  %139 = getelementptr inbounds i8* %.string1, i64 %.sum86
  %140 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 3
  br label %.backedge257

.backedge257:                                     ; preds = %.critedge121, %.thread164, %1498, %1419, %.loopexit204, %870, %883, %.loopexit213, %.loopexit217, %600, %._crit_edge418, %._crit_edge413, %.loopexit238, %._crit_edge376, %1401, %1403, %.loopexit248, %.loopexit252, %443, %878, %890, %893, %895, %1383, %1377, %1434, %1455, %1470, %1477, %.preheader200, %663, %switch.hole_check, %switch.lookup, %683, %686, %690, %826, %.lr.ph435, %.preheader255
  %fail_stack.sroa.0.0 = phi %union.fail_stack_elt* [ %12, %.preheader255 ], [ %fail_stack.sroa.0.0, %.loopexit252 ], [ %fail_stack.sroa.0.0, %.loopexit248 ], [ %fail_stack.sroa.0.0, %1498 ], [ %fail_stack.sroa.0.0, %1477 ], [ %fail_stack.sroa.0.0, %1470 ], [ %fail_stack.sroa.0.0, %1455 ], [ %fail_stack.sroa.0.0, %1434 ], [ %fail_stack.sroa.0.0, %1419 ], [ %fail_stack.sroa.0.0, %1403 ], [ %fail_stack.sroa.0.6, %.loopexit238 ], [ %fail_stack.sroa.0.0, %1401 ], [ %fail_stack.sroa.0.0, %1377 ], [ %fail_stack.sroa.0.5, %._crit_edge413 ], [ %fail_stack.sroa.0.0, %1383 ], [ %fail_stack.sroa.0.8, %._crit_edge376 ], [ %fail_stack.sroa.0.4, %._crit_edge418 ], [ %fail_stack.sroa.0.0, %895 ], [ %fail_stack.sroa.0.0, %893 ], [ %fail_stack.sroa.0.0, %883 ], [ %fail_stack.sroa.0.0, %890 ], [ %fail_stack.sroa.0.0, %878 ], [ %fail_stack.sroa.0.0, %870 ], [ %fail_stack.sroa.0.0, %600 ], [ %fail_stack.sroa.0.0, %.loopexit217 ], [ %fail_stack.sroa.0.0, %.loopexit213 ], [ %fail_stack.sroa.0.0, %.loopexit204 ], [ %fail_stack.sroa.0.0, %443 ], [ %fail_stack.sroa.0.9.ph636, %.thread164 ], [ %fail_stack.sroa.0.0, %.preheader200 ], [ %fail_stack.sroa.0.0, %663 ], [ %fail_stack.sroa.0.0, %switch.hole_check ], [ %fail_stack.sroa.0.0, %switch.lookup ], [ %fail_stack.sroa.0.0, %683 ], [ %fail_stack.sroa.0.0, %686 ], [ %fail_stack.sroa.0.0, %690 ], [ %fail_stack.sroa.0.0, %.critedge121 ], [ %fail_stack.sroa.0.0, %826 ], [ %fail_stack.sroa.0.0, %.lr.ph435 ]
  %lowest_active_reg.0 = phi i64 [ 257, %.preheader255 ], [ %lowest_active_reg.0, %.loopexit252 ], [ %lowest_active_reg.0, %.loopexit248 ], [ %lowest_active_reg.0, %1498 ], [ %lowest_active_reg.0, %1477 ], [ %lowest_active_reg.0, %1470 ], [ %lowest_active_reg.0, %1455 ], [ %lowest_active_reg.0, %1434 ], [ %lowest_active_reg.0, %1419 ], [ %lowest_active_reg.0, %1403 ], [ %lowest_active_reg.0, %.loopexit238 ], [ %lowest_active_reg.0, %1401 ], [ %lowest_active_reg.0, %1377 ], [ %lowest_active_reg.3.ph, %._crit_edge413 ], [ %lowest_active_reg.0, %1383 ], [ %lowest_active_reg.0, %._crit_edge376 ], [ %lowest_active_reg.0, %._crit_edge418 ], [ %lowest_active_reg.0, %895 ], [ %lowest_active_reg.0, %893 ], [ %lowest_active_reg.0, %883 ], [ %lowest_active_reg.0, %890 ], [ %lowest_active_reg.0, %878 ], [ %lowest_active_reg.0, %870 ], [ %.lowest_active_reg.0, %600 ], [ %lowest_active_reg.0, %.loopexit217 ], [ %lowest_active_reg.0, %.loopexit213 ], [ %lowest_active_reg.0, %.loopexit204 ], [ %lowest_active_reg.0, %443 ], [ %1571, %.thread164 ], [ %lowest_active_reg.0, %.preheader200 ], [ %lowest_active_reg.2, %663 ], [ %lowest_active_reg.2, %switch.hole_check ], [ %lowest_active_reg.2, %switch.lookup ], [ %lowest_active_reg.2, %683 ], [ %lowest_active_reg.2, %686 ], [ %lowest_active_reg.2, %690 ], [ %lowest_active_reg.2, %.critedge121 ], [ %lowest_active_reg.0, %826 ], [ %lowest_active_reg.0, %.lr.ph435 ]
  %highest_active_reg.0 = phi i64 [ 256, %.preheader255 ], [ %highest_active_reg.0, %.loopexit252 ], [ %highest_active_reg.0, %.loopexit248 ], [ %highest_active_reg.0, %1498 ], [ %highest_active_reg.0, %1477 ], [ %highest_active_reg.0, %1470 ], [ %highest_active_reg.0, %1455 ], [ %highest_active_reg.0, %1434 ], [ %highest_active_reg.0, %1419 ], [ %highest_active_reg.0, %1403 ], [ %highest_active_reg.0, %.loopexit238 ], [ %highest_active_reg.0, %1401 ], [ %highest_active_reg.0, %1377 ], [ %highest_active_reg.2.ph, %._crit_edge413 ], [ %highest_active_reg.0, %1383 ], [ %highest_active_reg.0, %._crit_edge376 ], [ %highest_active_reg.0, %._crit_edge418 ], [ %highest_active_reg.0, %895 ], [ %highest_active_reg.0, %893 ], [ %highest_active_reg.0, %883 ], [ %highest_active_reg.0, %890 ], [ %highest_active_reg.0, %878 ], [ %highest_active_reg.0, %870 ], [ %619, %600 ], [ %highest_active_reg.0, %.loopexit217 ], [ %highest_active_reg.0, %.loopexit213 ], [ %highest_active_reg.0, %.loopexit204 ], [ %highest_active_reg.0, %443 ], [ %1565, %.thread164 ], [ %highest_active_reg.0, %.preheader200 ], [ %highest_active_reg.1, %663 ], [ %highest_active_reg.1, %switch.hole_check ], [ %highest_active_reg.1, %switch.lookup ], [ %highest_active_reg.1, %683 ], [ %highest_active_reg.1, %686 ], [ %highest_active_reg.1, %690 ], [ %highest_active_reg.1, %.critedge121 ], [ %highest_active_reg.0, %826 ], [ %highest_active_reg.0, %.lr.ph435 ]
  %best_regs_set.0 = phi i32 [ 0, %.preheader255 ], [ %best_regs_set.0, %.loopexit252 ], [ %best_regs_set.0, %.loopexit248 ], [ %best_regs_set.0, %1498 ], [ %best_regs_set.0, %1477 ], [ %best_regs_set.0, %1470 ], [ %best_regs_set.0, %1455 ], [ %best_regs_set.0, %1434 ], [ %best_regs_set.0, %1419 ], [ %best_regs_set.0, %1403 ], [ %best_regs_set.0, %.loopexit238 ], [ %best_regs_set.0, %1401 ], [ %best_regs_set.0, %1377 ], [ %best_regs_set.0, %._crit_edge413 ], [ %best_regs_set.0, %1383 ], [ %best_regs_set.0, %._crit_edge376 ], [ %best_regs_set.0, %._crit_edge418 ], [ %best_regs_set.0, %895 ], [ %best_regs_set.0, %893 ], [ %best_regs_set.0, %883 ], [ %best_regs_set.0, %890 ], [ %best_regs_set.0, %878 ], [ %best_regs_set.0, %870 ], [ %best_regs_set.0, %600 ], [ %best_regs_set.0, %.loopexit217 ], [ %best_regs_set.0, %.loopexit213 ], [ %best_regs_set.0, %.loopexit204 ], [ %best_regs_set.0, %443 ], [ %best_regs_set.1.ph639, %.thread164 ], [ %best_regs_set.0, %.preheader200 ], [ %best_regs_set.0, %663 ], [ %best_regs_set.0, %switch.hole_check ], [ %best_regs_set.0, %switch.lookup ], [ %best_regs_set.0, %683 ], [ %best_regs_set.0, %686 ], [ %best_regs_set.0, %690 ], [ %best_regs_set.0, %.critedge121 ], [ %best_regs_set.0, %826 ], [ %best_regs_set.0, %.lr.ph435 ]
  %match_end.0 = phi i8* [ null, %.preheader255 ], [ %match_end.0, %.loopexit252 ], [ %match_end.0, %.loopexit248 ], [ %match_end.0, %1498 ], [ %match_end.0, %1477 ], [ %match_end.0, %1470 ], [ %match_end.0, %1455 ], [ %match_end.0, %1434 ], [ %match_end.0, %1419 ], [ %match_end.0, %1403 ], [ %match_end.0, %.loopexit238 ], [ %match_end.0, %1401 ], [ %match_end.0, %1377 ], [ %match_end.0, %._crit_edge413 ], [ %match_end.0, %1383 ], [ %match_end.0, %._crit_edge376 ], [ %match_end.0, %._crit_edge418 ], [ %match_end.0, %895 ], [ %match_end.0, %893 ], [ %match_end.0, %883 ], [ %match_end.0, %890 ], [ %match_end.0, %878 ], [ %match_end.0, %870 ], [ %match_end.0, %600 ], [ %match_end.0, %.loopexit217 ], [ %match_end.0, %.loopexit213 ], [ %match_end.0, %.loopexit204 ], [ %match_end.0, %443 ], [ %match_end.2.ph641, %.thread164 ], [ %match_end.0, %.preheader200 ], [ %match_end.0, %663 ], [ %match_end.0, %switch.hole_check ], [ %match_end.0, %switch.lookup ], [ %match_end.0, %683 ], [ %match_end.0, %686 ], [ %match_end.0, %690 ], [ %match_end.0, %.critedge121 ], [ %match_end.0, %826 ], [ %match_end.0, %.lr.ph435 ]
  %set_regs_matched_done.0 = phi i32 [ 0, %.preheader255 ], [ %set_regs_matched_done.6, %.loopexit252 ], [ %set_regs_matched_done.5, %.loopexit248 ], [ %set_regs_matched_done.0, %1498 ], [ %set_regs_matched_done.0, %1477 ], [ %set_regs_matched_done.0, %1470 ], [ %set_regs_matched_done.0, %1455 ], [ %set_regs_matched_done.0, %1434 ], [ %set_regs_matched_done.0, %1419 ], [ %set_regs_matched_done.0, %1403 ], [ %set_regs_matched_done.4, %.loopexit238 ], [ %set_regs_matched_done.0, %1401 ], [ %set_regs_matched_done.0, %1377 ], [ %set_regs_matched_done.0, %._crit_edge413 ], [ %set_regs_matched_done.0, %1383 ], [ %set_regs_matched_done.0, %._crit_edge376 ], [ %set_regs_matched_done.0, %._crit_edge418 ], [ %set_regs_matched_done.0, %895 ], [ %set_regs_matched_done.0, %893 ], [ %set_regs_matched_done.0, %883 ], [ %set_regs_matched_done.0, %890 ], [ %set_regs_matched_done.0, %878 ], [ %set_regs_matched_done.0, %870 ], [ 0, %600 ], [ %set_regs_matched_done.2, %.loopexit217 ], [ %set_regs_matched_done.1, %.loopexit213 ], [ %set_regs_matched_done.0, %.loopexit204 ], [ %set_regs_matched_done.0, %443 ], [ 0, %.thread164 ], [ 1, %.preheader200 ], [ 0, %663 ], [ 0, %switch.hole_check ], [ 0, %switch.lookup ], [ 0, %683 ], [ 0, %686 ], [ 0, %690 ], [ 0, %.critedge121 ], [ %set_regs_matched_done.3.ph, %826 ], [ 1, %.lr.ph435 ]
  %fail_stack.sroa.72.0 = phi i32 [ 5, %.preheader255 ], [ %fail_stack.sroa.72.0, %.loopexit252 ], [ %fail_stack.sroa.72.0, %.loopexit248 ], [ %fail_stack.sroa.72.0, %1498 ], [ %fail_stack.sroa.72.0, %1477 ], [ %fail_stack.sroa.72.0, %1470 ], [ %fail_stack.sroa.72.0, %1455 ], [ %fail_stack.sroa.72.0, %1434 ], [ %fail_stack.sroa.72.0, %1419 ], [ %fail_stack.sroa.72.0, %1403 ], [ %fail_stack.sroa.72.7, %.loopexit238 ], [ %fail_stack.sroa.72.0, %1401 ], [ %fail_stack.sroa.72.0, %1377 ], [ %fail_stack.sroa.72.5, %._crit_edge413 ], [ %fail_stack.sroa.72.0, %1383 ], [ %fail_stack.sroa.72.10, %._crit_edge376 ], [ %fail_stack.sroa.72.3, %._crit_edge418 ], [ %fail_stack.sroa.72.0, %895 ], [ %fail_stack.sroa.72.0, %893 ], [ %fail_stack.sroa.72.0, %883 ], [ %fail_stack.sroa.72.0, %890 ], [ %fail_stack.sroa.72.0, %878 ], [ %fail_stack.sroa.72.0, %870 ], [ %fail_stack.sroa.72.0, %600 ], [ %fail_stack.sroa.72.0, %.loopexit217 ], [ %fail_stack.sroa.72.0, %.loopexit213 ], [ %fail_stack.sroa.72.0, %.loopexit204 ], [ %fail_stack.sroa.72.0, %443 ], [ %fail_stack.sroa.72.12.ph642, %.thread164 ], [ %fail_stack.sroa.72.0, %.preheader200 ], [ %fail_stack.sroa.72.0, %663 ], [ %fail_stack.sroa.72.0, %switch.hole_check ], [ %fail_stack.sroa.72.0, %switch.lookup ], [ %fail_stack.sroa.72.0, %683 ], [ %fail_stack.sroa.72.0, %686 ], [ %fail_stack.sroa.72.0, %690 ], [ %fail_stack.sroa.72.0, %.critedge121 ], [ %fail_stack.sroa.72.0, %826 ], [ %fail_stack.sroa.72.0, %.lr.ph435 ]
  %fail_stack.sroa.98.0 = phi i32 [ 0, %.preheader255 ], [ %fail_stack.sroa.98.0, %.loopexit252 ], [ %fail_stack.sroa.98.0, %.loopexit248 ], [ %fail_stack.sroa.98.0, %1498 ], [ %fail_stack.sroa.98.0, %1477 ], [ %fail_stack.sroa.98.0, %1470 ], [ %fail_stack.sroa.98.0, %1455 ], [ %fail_stack.sroa.98.0, %1434 ], [ %fail_stack.sroa.98.0, %1419 ], [ %fail_stack.sroa.98.0, %1403 ], [ %fail_stack.sroa.98.5, %.loopexit238 ], [ %fail_stack.sroa.98.0, %1401 ], [ %fail_stack.sroa.98.0, %1377 ], [ %1052, %._crit_edge413 ], [ %fail_stack.sroa.98.0, %1383 ], [ %1364, %._crit_edge376 ], [ %963, %._crit_edge418 ], [ %fail_stack.sroa.98.0, %895 ], [ %fail_stack.sroa.98.0, %893 ], [ %fail_stack.sroa.98.0, %883 ], [ %fail_stack.sroa.98.0, %890 ], [ %fail_stack.sroa.98.0, %878 ], [ %fail_stack.sroa.98.0, %870 ], [ %fail_stack.sroa.98.0, %600 ], [ %fail_stack.sroa.98.0, %.loopexit217 ], [ %fail_stack.sroa.98.0, %.loopexit213 ], [ %fail_stack.sroa.98.0, %.loopexit204 ], [ %fail_stack.sroa.98.0, %443 ], [ %fail_stack.sroa.98.9.lcssa, %.thread164 ], [ %fail_stack.sroa.98.0, %.preheader200 ], [ %fail_stack.sroa.98.0, %663 ], [ %fail_stack.sroa.98.0, %switch.hole_check ], [ %fail_stack.sroa.98.0, %switch.lookup ], [ %fail_stack.sroa.98.0, %683 ], [ %fail_stack.sroa.98.0, %686 ], [ %fail_stack.sroa.98.0, %690 ], [ %fail_stack.sroa.98.0, %.critedge121 ], [ %fail_stack.sroa.98.0, %826 ], [ %fail_stack.sroa.98.0, %.lr.ph435 ]
  %just_past_start_mem.0 = phi i8* [ null, %.preheader255 ], [ %just_past_start_mem.0, %.loopexit252 ], [ %just_past_start_mem.0, %.loopexit248 ], [ %just_past_start_mem.0, %1498 ], [ %just_past_start_mem.0, %1477 ], [ %just_past_start_mem.0, %1470 ], [ %just_past_start_mem.0, %1455 ], [ %just_past_start_mem.0, %1434 ], [ %just_past_start_mem.0, %1419 ], [ %just_past_start_mem.0, %1403 ], [ %just_past_start_mem.0, %.loopexit238 ], [ %just_past_start_mem.0, %1401 ], [ %just_past_start_mem.0, %1377 ], [ %just_past_start_mem.0, %._crit_edge413 ], [ %just_past_start_mem.0, %1383 ], [ %just_past_start_mem.0, %._crit_edge376 ], [ %just_past_start_mem.0, %._crit_edge418 ], [ %just_past_start_mem.0, %895 ], [ %just_past_start_mem.0, %893 ], [ %just_past_start_mem.0, %883 ], [ %just_past_start_mem.0, %890 ], [ %just_past_start_mem.0, %878 ], [ %just_past_start_mem.0, %870 ], [ %621, %600 ], [ %just_past_start_mem.0, %.loopexit217 ], [ %just_past_start_mem.0, %.loopexit213 ], [ %just_past_start_mem.0, %.loopexit204 ], [ %just_past_start_mem.0, %443 ], [ %just_past_start_mem.0, %.thread164 ], [ %just_past_start_mem.0, %.preheader200 ], [ %just_past_start_mem.0, %663 ], [ %just_past_start_mem.0, %switch.hole_check ], [ %just_past_start_mem.0, %switch.lookup ], [ %just_past_start_mem.0, %683 ], [ %just_past_start_mem.0, %686 ], [ %just_past_start_mem.0, %690 ], [ %just_past_start_mem.0, %.critedge121 ], [ %just_past_start_mem.0, %826 ], [ %just_past_start_mem.0, %.lr.ph435 ]
  %p.0 = phi i8* [ %2, %.preheader255 ], [ %444, %.loopexit252 ], [ %444, %.loopexit248 ], [ %444, %1498 ], [ %444, %1477 ], [ %444, %1470 ], [ %444, %1455 ], [ %444, %1434 ], [ %444, %1419 ], [ %1416, %1403 ], [ %1254, %.loopexit238 ], [ %1402, %1401 ], [ %1382, %1377 ], [ %.pre-phi616, %._crit_edge413 ], [ %444, %1383 ], [ %444, %._crit_edge376 ], [ %905, %._crit_edge418 ], [ %444, %895 ], [ %444, %893 ], [ %444, %883 ], [ %444, %890 ], [ %444, %878 ], [ %444, %870 ], [ %621, %600 ], [ %560, %.loopexit217 ], [ %444, %.loopexit213 ], [ %p.3, %.loopexit204 ], [ %444, %443 ], [ %1559, %.thread164 ], [ %p.3, %.preheader200 ], [ %661, %663 ], [ %661, %switch.hole_check ], [ %661, %switch.lookup ], [ %661, %683 ], [ %661, %686 ], [ %661, %690 ], [ %661, %.critedge121 ], [ %800, %826 ], [ %p.3, %.lr.ph435 ]
  %dend.0 = phi i8* [ %dend.0.ph, %.preheader255 ], [ %dend.10, %.loopexit252 ], [ %dend.9, %.loopexit248 ], [ %dend.0, %1498 ], [ %dend.0, %1477 ], [ %dend.0, %1470 ], [ %dend.0, %1455 ], [ %dend.0, %1434 ], [ %dend.0, %1419 ], [ %dend.0, %1403 ], [ %dend.0, %.loopexit238 ], [ %dend.0, %1401 ], [ %dend.0, %1377 ], [ %dend.0, %._crit_edge413 ], [ %dend.0, %1383 ], [ %dend.0, %._crit_edge376 ], [ %dend.0, %._crit_edge418 ], [ %dend.0, %895 ], [ %dend.0, %893 ], [ %dend.0, %883 ], [ %dend.0, %890 ], [ %dend.0, %878 ], [ %dend.0, %870 ], [ %dend.0, %600 ], [ %dend.6, %.loopexit217 ], [ %dend.5, %.loopexit213 ], [ %dend.4, %.loopexit204 ], [ %dend.0, %443 ], [ %dend.11.end_match_1.0, %.thread164 ], [ %dend.4, %.preheader200 ], [ %dend.0, %663 ], [ %dend.0, %switch.hole_check ], [ %dend.0, %switch.lookup ], [ %dend.0, %683 ], [ %dend.0, %686 ], [ %dend.0, %690 ], [ %dend.0, %.critedge121 ], [ %dend.7, %826 ], [ %dend.4, %.lr.ph435 ]
  %d.0 = phi i8* [ %d.0.ph, %.preheader255 ], [ %1547, %.loopexit252 ], [ %1525, %.loopexit248 ], [ %d.0, %1498 ], [ %d.0, %1477 ], [ %d.0, %1470 ], [ %d.0, %1455 ], [ %d.0, %1434 ], [ %d.0, %1419 ], [ %d.0, %1403 ], [ %d.0, %.loopexit238 ], [ %d.0, %1401 ], [ %d.0, %1377 ], [ %d.0, %._crit_edge413 ], [ %d.0, %1383 ], [ %d.0, %._crit_edge376 ], [ %d.0, %._crit_edge418 ], [ %119, %895 ], [ %d.0, %893 ], [ %119, %883 ], [ %d.0, %890 ], [ %d.0, %878 ], [ %d.0, %870 ], [ %d.0, %600 ], [ %571, %.loopexit217 ], [ %529, %.loopexit213 ], [ %d.4, %.loopexit204 ], [ %d.0, %443 ], [ %d.11., %.thread164 ], [ %d.4, %.preheader200 ], [ %d.0, %663 ], [ %d.0, %switch.hole_check ], [ %d.0, %switch.lookup ], [ %d.0, %683 ], [ %d.0, %686 ], [ %d.0, %690 ], [ %d.0, %.critedge121 ], [ %d.7, %826 ], [ %d.4, %.lr.ph435 ]
  %141 = icmp eq i8* %p.0, %5
  br i1 %141, label %142, label %443

; <label>:142                                     ; preds = %.backedge257
  %143 = icmp eq i8* %d.0, %end_match_2.0
  br i1 %143, label %.loopexit194, label %144

; <label>:144                                     ; preds = %142
  %145 = icmp ule i8* %match_end.0, %117
  %notrhs185 = icmp ule i8* %.string1, %match_end.0
  %not.or.cond110 = and i1 %notlhs184, %notrhs185
  %.152 = and i1 %145, %not.or.cond110
  %146 = icmp eq i8* %dend.0, %end_match_1.0
  %tmp106 = xor i1 %.152, %146
  br i1 %tmp106, label %150, label %147

; <label>:147                                     ; preds = %144
  %148 = icmp ugt i8* %d.0, %match_end.0
  %149 = zext i1 %148 to i8
  br label %153

; <label>:150                                     ; preds = %144
  %151 = zext i1 %146 to i8
  %152 = xor i8 %151, 1
  br label %153

; <label>:153                                     ; preds = %150, %147
  %best_match_p.0 = phi i8 [ %149, %147 ], [ %152, %150 ]
  %154 = icmp eq i32 %fail_stack.sroa.98.0, 0
  %155 = icmp ne i32 %best_regs_set.0, 0
  br i1 %154, label %169, label %156

; <label>:156                                     ; preds = %153
  %157 = icmp eq i8 %best_match_p.0, 0
  %or.cond111 = and i1 %155, %157
  br i1 %or.cond111, label %.lr.ph446, label %.preheader199

.preheader199:                                    ; preds = %156
  br i1 %67, label %.lr.ph437, label %.lr.ph446

.lr.ph437:                                        ; preds = %.preheader199, %.lr.ph437
  %indvars.iv592 = phi i64 [ %indvars.iv.next593, %.lr.ph437 ], [ 1, %.preheader199 ]
  %sext632 = shl i64 %indvars.iv592, 32
  %158 = ashr exact i64 %sext632, 32
  %159 = getelementptr inbounds i8** %regstart.0, i64 %158
  %160 = bitcast i8** %159 to i64*
  %161 = load i64* %160, align 8, !tbaa !13
  %162 = getelementptr inbounds i8** %best_regstart.0, i64 %158
  %163 = bitcast i8** %162 to i64*
  store i64 %161, i64* %163, align 8, !tbaa !13
  %164 = getelementptr inbounds i8** %regend.0, i64 %158
  %165 = bitcast i8** %164 to i64*
  %166 = load i64* %165, align 8, !tbaa !13
  %167 = getelementptr inbounds i8** %best_regend.0, i64 %158
  %168 = bitcast i8** %167 to i64*
  store i64 %166, i64* %168, align 8, !tbaa !13
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1
  %exitcond594 = icmp eq i64 %indvars.iv592, %9
  br i1 %exitcond594, label %bcmp_translate.exit.thread158.preheader, label %.lr.ph437

; <label>:169                                     ; preds = %153
  %.not = xor i1 %155, true
  %170 = icmp ne i8 %best_match_p.0, 0
  %or.cond43 = or i1 %170, %.not
  br i1 %or.cond43, label %.loopexit194, label %171

; <label>:171                                     ; preds = %bcmp_translate.exit.thread158.preheader._crit_edge, %169
  %fail_stack.sroa.0.1 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %169 ], [ %fail_stack.sroa.0.9.ph637, %bcmp_translate.exit.thread158.preheader._crit_edge ]
  %match_end.1 = phi i8* [ %match_end.0, %169 ], [ %match_end.2.ph640, %bcmp_translate.exit.thread158.preheader._crit_edge ]
  %172 = icmp ult i8* %match_end.1, %.string1
  %173 = icmp ugt i8* %match_end.1, %117
  %or.cond112 = or i1 %172, %173
  %174 = select i1 %or.cond112, i8* %end_match_2.0, i8* %end_match_1.0
  br i1 %67, label %.lr.ph368, label %.loopexit194

.lr.ph368:                                        ; preds = %171, %.lr.ph368
  %indvars.iv584 = phi i64 [ %indvars.iv.next585, %.lr.ph368 ], [ 1, %171 ]
  %sext619 = shl i64 %indvars.iv584, 32
  %175 = ashr exact i64 %sext619, 32
  %176 = getelementptr inbounds i8** %best_regstart.0, i64 %175
  %177 = bitcast i8** %176 to i64*
  %178 = load i64* %177, align 8, !tbaa !13
  %179 = getelementptr inbounds i8** %regstart.0, i64 %175
  %180 = bitcast i8** %179 to i64*
  store i64 %178, i64* %180, align 8, !tbaa !13
  %181 = getelementptr inbounds i8** %best_regend.0, i64 %175
  %182 = bitcast i8** %181 to i64*
  %183 = load i64* %182, align 8, !tbaa !13
  %184 = getelementptr inbounds i8** %regend.0, i64 %175
  %185 = bitcast i8** %184 to i64*
  store i64 %183, i64* %185, align 8, !tbaa !13
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 1
  %exitcond = icmp eq i64 %indvars.iv584, %9
  br i1 %exitcond, label %.loopexit194, label %.lr.ph368

.loopexit194:                                     ; preds = %142, %443, %.lr.ph368, %171, %169
  %fail_stack.sroa.0.2 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %169 ], [ %fail_stack.sroa.0.1, %171 ], [ %fail_stack.sroa.0.1, %.lr.ph368 ], [ %fail_stack.sroa.0.0, %443 ], [ %fail_stack.sroa.0.0, %142 ]
  %dend.1 = phi i8* [ %dend.0, %169 ], [ %174, %171 ], [ %174, %.lr.ph368 ], [ %dend.0, %443 ], [ %dend.0, %142 ]
  %d.1 = phi i8* [ %d.0, %169 ], [ %match_end.1, %171 ], [ %match_end.1, %.lr.ph368 ], [ %d.0, %443 ], [ %end_match_2.0, %142 ]
  %186 = icmp eq %struct.re_registers* %regs, null
  br i1 %186, label %.loopexit, label %187

; <label>:187                                     ; preds = %.loopexit194
  %188 = load i8* %137, align 8
  %189 = and i8 %188, 16
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %.loopexit

; <label>:191                                     ; preds = %187
  %192 = lshr i8 %188, 1
  %193 = and i8 %192, 3
  switch i8 %193, label %._crit_edge611 [
    i8 0, label %194
    i8 1, label %252
  ]

._crit_edge611:                                   ; preds = %191
  %.pre612 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0
  br label %313

; <label>:194                                     ; preds = %191
  %195 = add i64 %9, 2
  %196 = icmp ult i64 %195, 30
  %. = select i1 %196, i64 30, i64 %195
  %197 = trunc i64 %. to i32
  %198 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0
  store i32 %197, i32* %198, align 4, !tbaa !18
  %199 = shl i64 %., 2
  %200 = and i64 %199, 17179869180
  %201 = tail call i8* @malloc(i64 %200) #7
  %202 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1
  %203 = bitcast i32** %202 to i8**
  store i8* %201, i8** %203, align 8, !tbaa !20
  %204 = shl i64 %., 2
  %205 = and i64 %204, 17179869180
  %206 = tail call i8* @malloc(i64 %205) #7
  %207 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2
  %208 = bitcast i32** %207 to i8**
  store i8* %206, i8** %208, align 8, !tbaa !21
  %209 = icmp eq i8* %201, null
  %210 = icmp eq i8* %206, null
  %or.cond113 = or i1 %210, %209
  br i1 %or.cond113, label %211, label %248

; <label>:211                                     ; preds = %194
  %212 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.2 to i8*
  tail call void @free(i8* %212) #8
  %213 = icmp eq i8** %regstart.0, null
  br i1 %213, label %216, label %214

; <label>:214                                     ; preds = %211
  %215 = bitcast i8** %regstart.0 to i8*
  tail call void @free(i8* %215) #8
  br label %216

; <label>:216                                     ; preds = %211, %214
  %217 = icmp eq i8** %regend.0, null
  br i1 %217, label %220, label %218

; <label>:218                                     ; preds = %216
  %219 = bitcast i8** %regend.0 to i8*
  tail call void @free(i8* %219) #8
  br label %220

; <label>:220                                     ; preds = %216, %218
  %221 = icmp eq i8** %old_regstart.0, null
  br i1 %221, label %224, label %222

; <label>:222                                     ; preds = %220
  %223 = bitcast i8** %old_regstart.0 to i8*
  tail call void @free(i8* %223) #8
  br label %224

; <label>:224                                     ; preds = %220, %222
  %225 = icmp eq i8** %old_regend.0, null
  br i1 %225, label %228, label %226

; <label>:226                                     ; preds = %224
  %227 = bitcast i8** %old_regend.0 to i8*
  tail call void @free(i8* %227) #8
  br label %228

; <label>:228                                     ; preds = %224, %226
  %229 = icmp eq i8** %best_regstart.0, null
  br i1 %229, label %232, label %230

; <label>:230                                     ; preds = %228
  %231 = bitcast i8** %best_regstart.0 to i8*
  tail call void @free(i8* %231) #8
  br label %232

; <label>:232                                     ; preds = %228, %230
  %233 = icmp eq i8** %best_regend.0, null
  br i1 %233, label %236, label %234

; <label>:234                                     ; preds = %232
  %235 = bitcast i8** %best_regend.0 to i8*
  tail call void @free(i8* %235) #8
  br label %236

; <label>:236                                     ; preds = %232, %234
  %237 = icmp eq %union.register_info_type* %reg_info.0, null
  br i1 %237, label %240, label %238

; <label>:238                                     ; preds = %236
  %239 = bitcast %union.register_info_type* %reg_info.0 to i8*
  tail call void @free(i8* %239) #8
  br label %240

; <label>:240                                     ; preds = %236, %238
  %241 = icmp eq i8** %reg_dummy.0, null
  br i1 %241, label %244, label %242

; <label>:242                                     ; preds = %240
  %243 = bitcast i8** %reg_dummy.0 to i8*
  tail call void @free(i8* %243) #8
  br label %244

; <label>:244                                     ; preds = %240, %242
  %245 = icmp eq %union.register_info_type* %reg_info_dummy.0, null
  br i1 %245, label %.loopexit220, label %246

; <label>:246                                     ; preds = %244
  %247 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*
  tail call void @free(i8* %247) #8
  br label %.loopexit220

; <label>:248                                     ; preds = %194
  %249 = load i8* %137, align 8
  %250 = and i8 %249, -7
  %251 = or i8 %250, 2
  store i8 %251, i8* %137, align 8
  br label %313

; <label>:252                                     ; preds = %191
  %253 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0
  %254 = load i32* %253, align 4, !tbaa !18
  %255 = zext i32 %254 to i64
  %256 = add i64 %9, 2
  %257 = icmp ult i64 %255, %256
  br i1 %257, label %258, label %313

; <label>:258                                     ; preds = %252
  %259 = trunc i64 %256 to i32
  store i32 %259, i32* %253, align 4, !tbaa !18
  %260 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1
  %261 = bitcast i32** %260 to i8**
  %262 = load i8** %261, align 8, !tbaa !20
  %263 = shl i64 %256, 2
  %264 = and i64 %263, 17179869180
  %265 = tail call i8* @realloc(i8* %262, i64 %264) #7
  store i8* %265, i8** %261, align 8, !tbaa !20
  %266 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2
  %267 = bitcast i32** %266 to i8**
  %268 = load i8** %267, align 8, !tbaa !21
  %269 = load i32* %253, align 4, !tbaa !18
  %270 = zext i32 %269 to i64
  %271 = shl nuw nsw i64 %270, 2
  %272 = tail call i8* @realloc(i8* %268, i64 %271) #7
  store i8* %272, i8** %267, align 8, !tbaa !21
  %273 = load i32** %260, align 8, !tbaa !20
  %274 = icmp eq i32* %273, null
  %275 = icmp eq i8* %272, null
  %or.cond114 = or i1 %275, %274
  br i1 %or.cond114, label %276, label %313

; <label>:276                                     ; preds = %258
  %277 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.2 to i8*
  tail call void @free(i8* %277) #8
  %278 = icmp eq i8** %regstart.0, null
  br i1 %278, label %281, label %279

; <label>:279                                     ; preds = %276
  %280 = bitcast i8** %regstart.0 to i8*
  tail call void @free(i8* %280) #8
  br label %281

; <label>:281                                     ; preds = %276, %279
  %282 = icmp eq i8** %regend.0, null
  br i1 %282, label %285, label %283

; <label>:283                                     ; preds = %281
  %284 = bitcast i8** %regend.0 to i8*
  tail call void @free(i8* %284) #8
  br label %285

; <label>:285                                     ; preds = %281, %283
  %286 = icmp eq i8** %old_regstart.0, null
  br i1 %286, label %289, label %287

; <label>:287                                     ; preds = %285
  %288 = bitcast i8** %old_regstart.0 to i8*
  tail call void @free(i8* %288) #8
  br label %289

; <label>:289                                     ; preds = %285, %287
  %290 = icmp eq i8** %old_regend.0, null
  br i1 %290, label %293, label %291

; <label>:291                                     ; preds = %289
  %292 = bitcast i8** %old_regend.0 to i8*
  tail call void @free(i8* %292) #8
  br label %293

; <label>:293                                     ; preds = %289, %291
  %294 = icmp eq i8** %best_regstart.0, null
  br i1 %294, label %297, label %295

; <label>:295                                     ; preds = %293
  %296 = bitcast i8** %best_regstart.0 to i8*
  tail call void @free(i8* %296) #8
  br label %297

; <label>:297                                     ; preds = %293, %295
  %298 = icmp eq i8** %best_regend.0, null
  br i1 %298, label %301, label %299

; <label>:299                                     ; preds = %297
  %300 = bitcast i8** %best_regend.0 to i8*
  tail call void @free(i8* %300) #8
  br label %301

; <label>:301                                     ; preds = %297, %299
  %302 = icmp eq %union.register_info_type* %reg_info.0, null
  br i1 %302, label %305, label %303

; <label>:303                                     ; preds = %301
  %304 = bitcast %union.register_info_type* %reg_info.0 to i8*
  tail call void @free(i8* %304) #8
  br label %305

; <label>:305                                     ; preds = %301, %303
  %306 = icmp eq i8** %reg_dummy.0, null
  br i1 %306, label %309, label %307

; <label>:307                                     ; preds = %305
  %308 = bitcast i8** %reg_dummy.0 to i8*
  tail call void @free(i8* %308) #8
  br label %309

; <label>:309                                     ; preds = %305, %307
  %310 = icmp eq %union.register_info_type* %reg_info_dummy.0, null
  br i1 %310, label %.loopexit220, label %311

; <label>:311                                     ; preds = %309
  %312 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*
  tail call void @free(i8* %312) #8
  br label %.loopexit220

; <label>:313                                     ; preds = %._crit_edge611, %258, %252, %248
  %.pre-phi = phi i32* [ %.pre612, %._crit_edge611 ], [ %253, %258 ], [ %253, %252 ], [ %198, %248 ]
  %314 = load i32* %.pre-phi, align 4, !tbaa !18
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %.preheader, label %316

; <label>:316                                     ; preds = %313
  %317 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1
  %318 = load i32** %317, align 8, !tbaa !20
  store i32 %pos, i32* %318, align 4, !tbaa !15
  %319 = icmp eq i8* %dend.1, %end_match_1.0
  %320 = ptrtoint i8* %d.1 to i64
  br i1 %319, label %321, label %324

; <label>:321                                     ; preds = %316
  %322 = ptrtoint i8* %.string1 to i64
  %323 = sub i64 %320, %322
  br label %328

; <label>:324                                     ; preds = %316
  %325 = ptrtoint i8* %string1.string2 to i64
  %326 = sub i64 %116, %325
  %327 = add i64 %326, %320
  br label %328

; <label>:328                                     ; preds = %324, %321
  %.sink = phi i64 [ %323, %321 ], [ %327, %324 ]
  %329 = trunc i64 %.sink to i32
  %330 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2
  %331 = load i32** %330, align 8, !tbaa !21
  store i32 %329, i32* %331, align 4, !tbaa !15
  %.pre609 = load i32* %.pre-phi, align 4, !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %313, %328
  %332 = phi i32 [ 0, %313 ], [ %.pre609, %328 ]
  %333 = zext i32 %332 to i64
  %334 = icmp ult i64 %10, %333
  %.115362 = select i1 %334, i64 %10, i64 %333
  %335 = icmp ugt i64 %.115362, 1
  br i1 %335, label %.lr.ph364, label %._crit_edge365

.lr.ph364:                                        ; preds = %.preheader
  %336 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2
  %337 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1
  %.not116 = xor i1 %notlhs184, true
  %338 = ptrtoint i8* %string1.string2 to i64
  %339 = sub i64 %116, %338
  %340 = ptrtoint i8* %.string1 to i64
  br label %341

; <label>:341                                     ; preds = %.lr.ph364, %376
  %indvars.iv582 = phi i64 [ 1, %.lr.ph364 ], [ %indvars.iv.next583, %376 ]
  %sext618 = shl i64 %indvars.iv582, 32
  %342 = ashr exact i64 %sext618, 32
  %343 = getelementptr inbounds i8** %regstart.0, i64 %342
  %344 = load i8** %343, align 8, !tbaa !13
  %345 = icmp eq i8* %344, @reg_unset_dummy
  br i1 %345, label %350, label %346

; <label>:346                                     ; preds = %341
  %347 = getelementptr inbounds i8** %regend.0, i64 %342
  %348 = load i8** %347, align 8, !tbaa !13
  %349 = icmp eq i8* %348, @reg_unset_dummy
  br i1 %349, label %350, label %355

; <label>:350                                     ; preds = %346, %341
  %351 = load i32** %336, align 8, !tbaa !21
  %352 = getelementptr inbounds i32* %351, i64 %342
  store i32 -1, i32* %352, align 4, !tbaa !15
  %353 = load i32** %337, align 8, !tbaa !20
  %354 = getelementptr inbounds i32* %353, i64 %342
  store i32 -1, i32* %354, align 4, !tbaa !15
  br label %376

; <label>:355                                     ; preds = %346
  %356 = icmp ugt i8* %.string1, %344
  %or.cond117 = or i1 %356, %.not116
  %357 = icmp ugt i8* %344, %117
  %or.cond118 = or i1 %357, %or.cond117
  %358 = ptrtoint i8* %344 to i64
  %359 = sub i64 0, %340
  %.sink44.p = select i1 %or.cond118, i64 %339, i64 %359
  %.sink44 = add i64 %358, %.sink44.p
  %360 = trunc i64 %.sink44 to i32
  %361 = load i32** %337, align 8, !tbaa !20
  %362 = getelementptr inbounds i32* %361, i64 %342
  store i32 %360, i32* %362, align 4, !tbaa !15
  br i1 %notlhs184, label %363, label %369

; <label>:363                                     ; preds = %355
  %364 = icmp ugt i8* %.string1, %348
  %365 = icmp ugt i8* %348, %117
  %or.cond119 = or i1 %364, %365
  br i1 %or.cond119, label %369, label %366

; <label>:366                                     ; preds = %363
  %367 = ptrtoint i8* %348 to i64
  %368 = sub i64 %367, %340
  br label %372

; <label>:369                                     ; preds = %363, %355
  %370 = ptrtoint i8* %348 to i64
  %371 = add i64 %339, %370
  br label %372

; <label>:372                                     ; preds = %369, %366
  %.sink45 = phi i64 [ %368, %366 ], [ %371, %369 ]
  %373 = trunc i64 %.sink45 to i32
  %374 = load i32** %336, align 8, !tbaa !21
  %375 = getelementptr inbounds i32* %374, i64 %342
  store i32 %373, i32* %375, align 4, !tbaa !15
  br label %376

; <label>:376                                     ; preds = %350, %372
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1
  %377 = load i32* %.pre-phi, align 4, !tbaa !18
  %378 = zext i32 %377 to i64
  %379 = icmp ult i64 %10, %378
  %.115 = select i1 %379, i64 %10, i64 %378
  %380 = icmp ult i64 %indvars.iv.next583, %.115
  br i1 %380, label %341, label %._crit_edge365

._crit_edge365:                                   ; preds = %376, %.preheader
  %381 = phi i32 [ %332, %.preheader ], [ %377, %376 ]
  %382 = trunc i64 %10 to i32
  %383 = icmp ult i32 %382, %381
  br i1 %383, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %._crit_edge365
  %384 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2
  %385 = load i32** %384, align 8, !tbaa !21
  %386 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1
  %387 = load i32** %386, align 8, !tbaa !20
  %sext617 = shl i64 %10, 32
  %388 = ashr exact i64 %sext617, 32
  br label %389

; <label>:389                                     ; preds = %.lr.ph, %389
  %indvars.iv = phi i64 [ %388, %.lr.ph ], [ %indvars.iv.next, %389 ]
  %390 = getelementptr inbounds i32* %385, i64 %indvars.iv
  store i32 -1, i32* %390, align 4, !tbaa !15
  %391 = getelementptr inbounds i32* %387, i64 %indvars.iv
  store i32 -1, i32* %391, align 4, !tbaa !15
  %indvars.iv.next = add i64 %indvars.iv, 1
  %392 = load i32* %.pre-phi, align 4, !tbaa !18
  %393 = trunc i64 %indvars.iv.next to i32
  %394 = icmp ult i32 %393, %392
  br i1 %394, label %389, label %.loopexit

.loopexit:                                        ; preds = %389, %._crit_edge365, %187, %.loopexit194
  %395 = sub nsw i64 0, %129
  %396 = getelementptr inbounds i8* %d.1, i64 %395
  %397 = icmp eq i8* %dend.1, %end_match_1.0
  br i1 %397, label %401, label %398

; <label>:398                                     ; preds = %.loopexit
  %399 = sub nsw i64 0, %116
  %400 = getelementptr inbounds i8* %string1.string2, i64 %399
  br label %401

; <label>:401                                     ; preds = %.loopexit, %398
  %402 = phi i8* [ %400, %398 ], [ %.string1, %.loopexit ]
  %403 = ptrtoint i8* %396 to i64
  %404 = ptrtoint i8* %402 to i64
  %405 = sub i64 %403, %404
  %406 = trunc i64 %405 to i32
  %407 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.2 to i8*
  tail call void @free(i8* %407) #8
  %408 = icmp eq i8** %regstart.0, null
  br i1 %408, label %411, label %409

; <label>:409                                     ; preds = %401
  %410 = bitcast i8** %regstart.0 to i8*
  tail call void @free(i8* %410) #8
  br label %411

; <label>:411                                     ; preds = %401, %409
  %412 = icmp eq i8** %regend.0, null
  br i1 %412, label %415, label %413

; <label>:413                                     ; preds = %411
  %414 = bitcast i8** %regend.0 to i8*
  tail call void @free(i8* %414) #8
  br label %415

; <label>:415                                     ; preds = %411, %413
  %416 = icmp eq i8** %old_regstart.0, null
  br i1 %416, label %419, label %417

; <label>:417                                     ; preds = %415
  %418 = bitcast i8** %old_regstart.0 to i8*
  tail call void @free(i8* %418) #8
  br label %419

; <label>:419                                     ; preds = %415, %417
  %420 = icmp eq i8** %old_regend.0, null
  br i1 %420, label %423, label %421

; <label>:421                                     ; preds = %419
  %422 = bitcast i8** %old_regend.0 to i8*
  tail call void @free(i8* %422) #8
  br label %423

; <label>:423                                     ; preds = %419, %421
  %424 = icmp eq i8** %best_regstart.0, null
  br i1 %424, label %427, label %425

; <label>:425                                     ; preds = %423
  %426 = bitcast i8** %best_regstart.0 to i8*
  tail call void @free(i8* %426) #8
  br label %427

; <label>:427                                     ; preds = %423, %425
  %428 = icmp eq i8** %best_regend.0, null
  br i1 %428, label %431, label %429

; <label>:429                                     ; preds = %427
  %430 = bitcast i8** %best_regend.0 to i8*
  tail call void @free(i8* %430) #8
  br label %431

; <label>:431                                     ; preds = %427, %429
  %432 = icmp eq %union.register_info_type* %reg_info.0, null
  br i1 %432, label %435, label %433

; <label>:433                                     ; preds = %431
  %434 = bitcast %union.register_info_type* %reg_info.0 to i8*
  tail call void @free(i8* %434) #8
  br label %435

; <label>:435                                     ; preds = %431, %433
  %436 = icmp eq i8** %reg_dummy.0, null
  br i1 %436, label %439, label %437

; <label>:437                                     ; preds = %435
  %438 = bitcast i8** %reg_dummy.0 to i8*
  tail call void @free(i8* %438) #8
  br label %439

; <label>:439                                     ; preds = %435, %437
  %440 = icmp eq %union.register_info_type* %reg_info_dummy.0, null
  br i1 %440, label %.loopexit220, label %441

; <label>:441                                     ; preds = %439
  %442 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*
  tail call void @free(i8* %442) #8
  br label %.loopexit220

; <label>:443                                     ; preds = %.backedge257
  %444 = getelementptr inbounds i8* %p.0, i64 1
  %445 = load i8* %p.0, align 1, !tbaa !12
  %446 = zext i8 %445 to i32
  switch i32 %446, label %1548 [
    i32 0, label %.backedge257
    i32 1, label %.loopexit194
    i32 2, label %453
    i32 3, label %.preheader214
    i32 4, label %530
    i32 5, label %530
    i32 6, label %572
    i32 7, label %622
    i32 8, label %799
    i32 9, label %868
    i32 10, label %881
    i32 11, label %893
    i32 12, label %895
    i32 16, label %897
    i32 15, label %._crit_edge610
    i32 18, label %1055
    i32 17, label %.thread163
    i32 13, label %.loopexit238
    i32 14, label %.loopexit238
    i32 19, label %.preheader242
    i32 20, label %.preheader245
    i32 21, label %1367
    i32 22, label %1386
    i32 23, label %1403
    i32 28, label %1419
    i32 29, label %1440
    i32 26, label %1461
    i32 27, label %1482
    i32 24, label %.preheader249
    i32 25, label %.preheader253
  ]

._crit_edge610:                                   ; preds = %443
  %.pre615 = getelementptr inbounds i8* %p.0, i64 3
  br label %966

.preheader245:                                    ; preds = %443
  %447 = sub i64 %highest_active_reg.0, %lowest_active_reg.0
  %448 = mul i64 %447, 3
  %449 = add i64 %448, 7
  br label %1311

.preheader242:                                    ; preds = %443
  %450 = sub i64 %highest_active_reg.0, %lowest_active_reg.0
  %451 = mul i64 %450, 3
  %452 = add i64 %451, 7
  br label %1255

; <label>:453                                     ; preds = %443
  %454 = getelementptr inbounds i8* %p.0, i64 2
  %455 = load i8* %444, align 1, !tbaa !12
  %456 = zext i8 %455 to i32
  br i1 %134, label %.outer, label %.outer210

; <label>:457                                     ; preds = %.outer210, %459
  %dend.2 = phi i8* [ %end_match_2.0, %459 ], [ %dend.2.ph, %.outer210 ]
  %d.2 = phi i8* [ %string1.string2, %459 ], [ %d.2.ph, %.outer210 ]
  %458 = icmp eq i8* %d.2, %dend.2
  br i1 %458, label %459, label %461

; <label>:459                                     ; preds = %457
  %460 = icmp eq i8* %dend.2, %end_match_2.0
  br i1 %460, label %bcmp_translate.exit.thread158.preheader, label %457

; <label>:461                                     ; preds = %457
  %462 = getelementptr inbounds i8* %d.2, i64 1
  %463 = load i8* %d.2, align 1, !tbaa !12
  %464 = zext i8 %463 to i64
  %465 = getelementptr inbounds i8* %7, i64 %464
  %466 = load i8* %465, align 1, !tbaa !12
  %467 = getelementptr inbounds i8* %p.1.ph, i64 1
  %468 = load i8* %p.1.ph, align 1, !tbaa !12
  %469 = icmp eq i8 %466, %468
  br i1 %469, label %470, label %bcmp_translate.exit.thread158.preheader

; <label>:470                                     ; preds = %461
  %471 = add nsw i32 %mcnt.5.ph, -1
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %.loopexit204, label %.outer210

.outer210:                                        ; preds = %453, %470
  %p.1.ph = phi i8* [ %467, %470 ], [ %454, %453 ]
  %dend.2.ph = phi i8* [ %dend.2, %470 ], [ %dend.0, %453 ]
  %d.2.ph = phi i8* [ %462, %470 ], [ %d.0, %453 ]
  %mcnt.5.ph = phi i32 [ %471, %470 ], [ %456, %453 ]
  br label %457

; <label>:473                                     ; preds = %.outer, %475
  %dend.3 = phi i8* [ %end_match_2.0, %475 ], [ %dend.3.ph, %.outer ]
  %d.3 = phi i8* [ %string1.string2, %475 ], [ %d.3.ph, %.outer ]
  %474 = icmp eq i8* %d.3, %dend.3
  br i1 %474, label %475, label %477

; <label>:475                                     ; preds = %473
  %476 = icmp eq i8* %dend.3, %end_match_2.0
  br i1 %476, label %bcmp_translate.exit.thread158.preheader, label %473

; <label>:477                                     ; preds = %473
  %478 = getelementptr inbounds i8* %d.3, i64 1
  %479 = load i8* %d.3, align 1, !tbaa !12
  %480 = getelementptr inbounds i8* %p.2.ph, i64 1
  %481 = load i8* %p.2.ph, align 1, !tbaa !12
  %482 = icmp eq i8 %479, %481
  br i1 %482, label %483, label %bcmp_translate.exit.thread158.preheader

; <label>:483                                     ; preds = %477
  %484 = add nsw i32 %mcnt.6.ph, -1
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %.loopexit204, label %.outer

.outer:                                           ; preds = %453, %483
  %p.2.ph = phi i8* [ %480, %483 ], [ %454, %453 ]
  %dend.3.ph = phi i8* [ %dend.3, %483 ], [ %dend.0, %453 ]
  %d.3.ph = phi i8* [ %478, %483 ], [ %d.0, %453 ]
  %mcnt.6.ph = phi i32 [ %484, %483 ], [ %456, %453 ]
  br label %473

.loopexit204:                                     ; preds = %470, %483
  %p.3 = phi i8* [ %480, %483 ], [ %467, %470 ]
  %dend.4 = phi i8* [ %dend.3, %483 ], [ %dend.2, %470 ]
  %d.4 = phi i8* [ %478, %483 ], [ %462, %470 ]
  %486 = icmp eq i32 %set_regs_matched_done.0, 0
  br i1 %486, label %.preheader200, label %.backedge257

.preheader200:                                    ; preds = %.loopexit204
  %487 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br i1 %487, label %.backedge257, label %.lr.ph435

.lr.ph435:                                        ; preds = %.preheader200, %.lr.ph435
  %r.0434 = phi i64 [ %492, %.lr.ph435 ], [ %lowest_active_reg.0, %.preheader200 ]
  %488 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r.0434
  %489 = bitcast %union.register_info_type* %488 to i8*
  %490 = load i8* %489, align 4
  %491 = or i8 %490, 24
  store i8 %491, i8* %489, align 4
  %492 = add i64 %r.0434, 1
  %493 = icmp ugt i64 %492, %highest_active_reg.0
  br i1 %493, label %.backedge257, label %.lr.ph435

.preheader214:                                    ; preds = %443, %495
  %dend.5 = phi i8* [ %end_match_2.0, %495 ], [ %dend.0, %443 ]
  %d.5 = phi i8* [ %string1.string2, %495 ], [ %d.0, %443 ]
  %494 = icmp eq i8* %d.5, %dend.5
  br i1 %494, label %495, label %497

; <label>:495                                     ; preds = %.preheader214
  %496 = icmp eq i8* %dend.5, %end_match_2.0
  br i1 %496, label %bcmp_translate.exit.thread158.preheader, label %.preheader214

; <label>:497                                     ; preds = %.preheader214
  %498 = load i64* %140, align 8, !tbaa !14
  %499 = and i64 %498, 64
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %501, label %509

; <label>:501                                     ; preds = %497
  %502 = load i8* %d.5, align 1, !tbaa !12
  br i1 %134, label %507, label %503

; <label>:503                                     ; preds = %501
  %504 = zext i8 %502 to i64
  %505 = getelementptr inbounds i8* %7, i64 %504
  %506 = load i8* %505, align 1, !tbaa !12
  br label %507

; <label>:507                                     ; preds = %501, %503
  %.sink46 = phi i8 [ %506, %503 ], [ %502, %501 ]
  %508 = icmp eq i8 %.sink46, 10
  br i1 %508, label %bcmp_translate.exit.thread158.preheader, label %509

; <label>:509                                     ; preds = %497, %507
  %510 = and i64 %498, 128
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %520, label %512

; <label>:512                                     ; preds = %509
  %513 = load i8* %d.5, align 1, !tbaa !12
  br i1 %134, label %518, label %514

; <label>:514                                     ; preds = %512
  %515 = zext i8 %513 to i64
  %516 = getelementptr inbounds i8* %7, i64 %515
  %517 = load i8* %516, align 1, !tbaa !12
  br label %518

; <label>:518                                     ; preds = %512, %514
  %.sink47 = phi i8 [ %517, %514 ], [ %513, %512 ]
  %519 = icmp eq i8 %.sink47, 0
  br i1 %519, label %bcmp_translate.exit.thread158.preheader, label %520

; <label>:520                                     ; preds = %509, %518
  %521 = icmp eq i32 %set_regs_matched_done.0, 0
  br i1 %521, label %.preheader212, label %.loopexit213

.preheader212:                                    ; preds = %520
  %522 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br i1 %522, label %.loopexit213, label %.lr.ph433

.lr.ph433:                                        ; preds = %.preheader212, %.lr.ph433
  %r1.0432 = phi i64 [ %527, %.lr.ph433 ], [ %lowest_active_reg.0, %.preheader212 ]
  %523 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r1.0432
  %524 = bitcast %union.register_info_type* %523 to i8*
  %525 = load i8* %524, align 4
  %526 = or i8 %525, 24
  store i8 %526, i8* %524, align 4
  %527 = add i64 %r1.0432, 1
  %528 = icmp ugt i64 %527, %highest_active_reg.0
  br i1 %528, label %.loopexit213, label %.lr.ph433

.loopexit213:                                     ; preds = %.lr.ph433, %.preheader212, %520
  %set_regs_matched_done.1 = phi i32 [ %set_regs_matched_done.0, %520 ], [ 1, %.preheader212 ], [ 1, %.lr.ph433 ]
  %529 = getelementptr inbounds i8* %d.5, i64 1
  br label %.backedge257

; <label>:530                                     ; preds = %443, %443
  %531 = icmp eq i8 %445, 5
  %532 = zext i1 %531 to i8
  br label %533

; <label>:533                                     ; preds = %535, %530
  %dend.6 = phi i8* [ %dend.0, %530 ], [ %end_match_2.0, %535 ]
  %d.6 = phi i8* [ %d.0, %530 ], [ %string1.string2, %535 ]
  %534 = icmp eq i8* %d.6, %dend.6
  br i1 %534, label %535, label %537

; <label>:535                                     ; preds = %533
  %536 = icmp eq i8* %dend.6, %end_match_2.0
  br i1 %536, label %bcmp_translate.exit.thread158.preheader, label %533

; <label>:537                                     ; preds = %533
  %538 = load i8* %d.6, align 1, !tbaa !12
  br i1 %134, label %543, label %539

; <label>:539                                     ; preds = %537
  %540 = zext i8 %538 to i64
  %541 = getelementptr inbounds i8* %7, i64 %540
  %542 = load i8* %541, align 1, !tbaa !12
  br label %543

; <label>:543                                     ; preds = %537, %539
  %.sink48 = phi i8 [ %542, %539 ], [ %538, %537 ]
  %544 = zext i8 %.sink48 to i32
  %545 = load i8* %444, align 1, !tbaa !12
  %546 = zext i8 %545 to i32
  %547 = shl nuw nsw i32 %546, 3
  %548 = icmp ult i32 %544, %547
  br i1 %548, label %549, label %558

; <label>:549                                     ; preds = %543
  %div104 = lshr i8 %.sink48, 3
  %550 = zext i8 %div104 to i64
  %.sum105 = add nuw nsw i64 %550, 2
  %551 = getelementptr inbounds i8* %p.0, i64 %.sum105
  %552 = load i8* %551, align 1, !tbaa !12
  %553 = zext i8 %552 to i32
  %554 = and i8 %.sink48, 7
  %555 = zext i8 %554 to i32
  %556 = shl i32 1, %555
  %557 = and i32 %553, %556
  %not.182 = icmp ne i32 %557, 0
  %.165183 = xor i1 %531, %not.182
  %.165 = zext i1 %.165183 to i8
  br label %558

; <label>:558                                     ; preds = %549, %543
  %not.0 = phi i8 [ %532, %543 ], [ %.165, %549 ]
  %559 = zext i8 %545 to i64
  %.sum103 = add nuw nsw i64 %559, 2
  %560 = getelementptr inbounds i8* %p.0, i64 %.sum103
  %561 = icmp eq i8 %not.0, 0
  br i1 %561, label %bcmp_translate.exit.thread158.preheader, label %562

; <label>:562                                     ; preds = %558
  %563 = icmp eq i32 %set_regs_matched_done.0, 0
  br i1 %563, label %.preheader216, label %.loopexit217

.preheader216:                                    ; preds = %562
  %564 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br i1 %564, label %.loopexit217, label %.lr.ph431

.lr.ph431:                                        ; preds = %.preheader216, %.lr.ph431
  %r2.0430 = phi i64 [ %569, %.lr.ph431 ], [ %lowest_active_reg.0, %.preheader216 ]
  %565 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r2.0430
  %566 = bitcast %union.register_info_type* %565 to i8*
  %567 = load i8* %566, align 4
  %568 = or i8 %567, 24
  store i8 %568, i8* %566, align 4
  %569 = add i64 %r2.0430, 1
  %570 = icmp ugt i64 %569, %highest_active_reg.0
  br i1 %570, label %.loopexit217, label %.lr.ph431

.loopexit217:                                     ; preds = %.lr.ph431, %.preheader216, %562
  %set_regs_matched_done.2 = phi i32 [ %set_regs_matched_done.0, %562 ], [ 1, %.preheader216 ], [ 1, %.lr.ph431 ]
  %571 = getelementptr inbounds i8* %d.6, i64 1
  br label %.backedge257

; <label>:572                                     ; preds = %443
  store i8* %444, i8** %p1, align 8, !tbaa !13
  %573 = load i8* %444, align 1, !tbaa !12
  %574 = zext i8 %573 to i64
  %575 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %574
  %576 = bitcast %union.register_info_type* %575 to i8*
  %577 = load i8* %576, align 4
  %578 = and i8 %577, 3
  %579 = icmp eq i8 %578, 3
  br i1 %579, label %580, label %590

; <label>:580                                     ; preds = %572
  %581 = call fastcc signext i8 @group_match_null_string_p(i8** %p1, i8* %5, %union.register_info_type* %reg_info.0) #8
  %582 = load i8* %444, align 1, !tbaa !12
  %583 = zext i8 %582 to i64
  %584 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %583
  %585 = bitcast %union.register_info_type* %584 to i8*
  %586 = load i8* %585, align 4
  %587 = and i8 %581, 3
  %588 = and i8 %586, -4
  %589 = or i8 %588, %587
  store i8 %589, i8* %585, align 4
  %.pre605 = load i8* %444, align 1, !tbaa !12
  %.phi.trans.insert = zext i8 %.pre605 to i64
  %.phi.trans.insert606 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %.phi.trans.insert
  %.phi.trans.insert607 = bitcast %union.register_info_type* %.phi.trans.insert606 to i8*
  %.pre608 = load i8* %.phi.trans.insert607, align 4
  br label %590

; <label>:590                                     ; preds = %580, %572
  %591 = phi i8 [ %.pre608, %580 ], [ %577, %572 ]
  %592 = phi i8 [ %.pre605, %580 ], [ %573, %572 ]
  %593 = zext i8 %592 to i64
  %594 = and i8 %591, 3
  %595 = icmp eq i8 %594, 0
  %596 = getelementptr inbounds i8** %regstart.0, i64 %593
  %597 = load i8** %596, align 8, !tbaa !13
  br i1 %595, label %600, label %598

; <label>:598                                     ; preds = %590
  %599 = icmp eq i8* %597, @reg_unset_dummy
  %d.0. = select i1 %599, i8* %d.0, i8* %597
  br label %600

; <label>:600                                     ; preds = %598, %590
  %601 = phi i8* [ %597, %590 ], [ %d.0., %598 ]
  %602 = getelementptr inbounds i8** %old_regstart.0, i64 %593
  store i8* %601, i8** %602, align 8, !tbaa !13
  %603 = load i8* %444, align 1, !tbaa !12
  %604 = zext i8 %603 to i64
  %605 = getelementptr inbounds i8** %regstart.0, i64 %604
  store i8* %d.0, i8** %605, align 8, !tbaa !13
  %606 = load i8* %444, align 1, !tbaa !12
  %607 = zext i8 %606 to i64
  %608 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %607
  %609 = bitcast %union.register_info_type* %608 to i8*
  %610 = load i8* %609, align 4
  %611 = or i8 %610, 4
  store i8 %611, i8* %609, align 4
  %612 = load i8* %444, align 1, !tbaa !12
  %613 = zext i8 %612 to i64
  %614 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %613
  %615 = bitcast %union.register_info_type* %614 to i8*
  %616 = load i8* %615, align 4
  %617 = and i8 %616, -9
  store i8 %617, i8* %615, align 4
  %618 = load i8* %444, align 1, !tbaa !12
  %619 = zext i8 %618 to i64
  %620 = icmp eq i64 %lowest_active_reg.0, 257
  %.lowest_active_reg.0 = select i1 %620, i64 %619, i64 %lowest_active_reg.0
  %621 = getelementptr inbounds i8* %p.0, i64 3
  br label %.backedge257

; <label>:622                                     ; preds = %443
  %623 = load i8* %444, align 1, !tbaa !12
  %624 = zext i8 %623 to i64
  %625 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %624
  %626 = bitcast %union.register_info_type* %625 to i8*
  %627 = load i8* %626, align 4
  %628 = and i8 %627, 3
  %629 = icmp eq i8 %628, 0
  %630 = getelementptr inbounds i8** %regend.0, i64 %624
  %631 = load i8** %630, align 8, !tbaa !13
  br i1 %629, label %634, label %632

; <label>:632                                     ; preds = %622
  %633 = icmp eq i8* %631, @reg_unset_dummy
  %d.0.120 = select i1 %633, i8* %d.0, i8* %631
  br label %634

; <label>:634                                     ; preds = %632, %622
  %635 = phi i8* [ %631, %622 ], [ %d.0.120, %632 ]
  %636 = getelementptr inbounds i8** %old_regend.0, i64 %624
  store i8* %635, i8** %636, align 8, !tbaa !13
  %637 = load i8* %444, align 1, !tbaa !12
  %638 = zext i8 %637 to i64
  %639 = getelementptr inbounds i8** %regend.0, i64 %638
  store i8* %d.0, i8** %639, align 8, !tbaa !13
  %640 = load i8* %444, align 1, !tbaa !12
  %641 = zext i8 %640 to i64
  %642 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %641
  %643 = bitcast %union.register_info_type* %642 to i8*
  %644 = load i8* %643, align 4
  %645 = and i8 %644, -5
  store i8 %645, i8* %643, align 4
  %646 = icmp eq i64 %highest_active_reg.0, %lowest_active_reg.0
  %.pre = load i8* %444, align 1, !tbaa !12
  br i1 %646, label %.critedge121, label %.preheader665

.preheader665:                                    ; preds = %634, %647
  %r3.0.in = phi i8 [ %r3.0, %647 ], [ %.pre, %634 ]
  %r3.0 = add i8 %r3.0.in, -1
  %cond = icmp eq i8 %r3.0, 0
  br i1 %cond, label %.critedge121, label %647

; <label>:647                                     ; preds = %.preheader665
  %648 = zext i8 %r3.0 to i64
  %649 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %648
  %650 = bitcast %union.register_info_type* %649 to i8*
  %651 = load i8* %650, align 4
  %652 = and i8 %651, 4
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %.preheader665, label %.critedge121

.critedge121:                                     ; preds = %647, %.preheader665, %634
  %lowest_active_reg.2 = phi i64 [ 257, %634 ], [ 257, %.preheader665 ], [ %lowest_active_reg.0, %647 ]
  %highest_active_reg.1 = phi i64 [ 256, %634 ], [ 256, %.preheader665 ], [ %648, %647 ]
  %654 = zext i8 %.pre to i64
  %655 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %654
  %656 = bitcast %union.register_info_type* %655 to i8*
  %657 = load i8* %656, align 4
  %658 = and i8 %657, 8
  %659 = icmp eq i8 %658, 0
  %660 = icmp eq i8* %just_past_start_mem.0, %p.0
  %or.cond122 = or i1 %660, %659
  %661 = getelementptr inbounds i8* %p.0, i64 3
  %662 = icmp ult i8* %661, %5
  %or.cond646 = and i1 %or.cond122, %662
  br i1 %or.cond646, label %663, label %.backedge257

; <label>:663                                     ; preds = %.critedge121
  %664 = getelementptr inbounds i8* %p.0, i64 4
  store i8* %664, i8** %p1, align 8, !tbaa !13
  %665 = load i8* %661, align 1, !tbaa !12
  %666 = zext i8 %665 to i32
  %switch.tableidx = add nsw i32 %666, -13
  %667 = icmp ult i32 %switch.tableidx, 10
  br i1 %667, label %switch.hole_check, label %.backedge257

switch.hole_check:                                ; preds = %663
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 625, %switch.maskindex
  %668 = and i16 %switch.shifted, 1
  %switch.lobit = icmp eq i16 %668, 0
  br i1 %switch.lobit, label %.backedge257, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = trunc i32 %switch.tableidx to i10
  %switch.downshift = lshr i10 -114, %switch.cast
  %669 = and i10 %switch.downshift, 1
  %670 = load i8* %664, align 1, !tbaa !12
  %671 = zext i8 %670 to i32
  %672 = getelementptr inbounds i8* %p.0, i64 5
  %673 = load i8* %672, align 1, !tbaa !12
  %674 = sext i8 %673 to i32
  %675 = shl nsw i32 %674, 8
  %676 = or i32 %675, %671
  %677 = zext i10 %669 to i64
  %678 = shl nuw nsw i64 %677, 1
  %679 = add nuw nsw i64 %678, 6
  %680 = sext i32 %676 to i64
  %.sum186 = add nsw i64 %680, %679
  %681 = getelementptr inbounds i8* %p.0, i64 %.sum186
  store i8* %681, i8** %p1, align 8, !tbaa !13
  %682 = icmp slt i32 %676, 0
  br i1 %682, label %683, label %.backedge257

; <label>:683                                     ; preds = %switch.lookup
  %684 = load i8* %681, align 1, !tbaa !12
  %685 = icmp eq i8 %684, 15
  br i1 %685, label %686, label %.backedge257

; <label>:686                                     ; preds = %683
  %.sum101 = or i64 %678, 9
  %.sum187 = add nsw i64 %.sum101, %680
  %687 = getelementptr inbounds i8* %p.0, i64 %.sum187
  %688 = load i8* %687, align 1, !tbaa !12
  %689 = icmp eq i8 %688, 6
  br i1 %689, label %690, label %.backedge257

; <label>:690                                     ; preds = %686
  %.sum102 = add nuw nsw i64 %678, 10
  %.sum188 = add nsw i64 %.sum102, %680
  %691 = getelementptr inbounds i8* %p.0, i64 %.sum188
  %692 = load i8* %691, align 1, !tbaa !12
  %693 = load i8* %444, align 1, !tbaa !12
  %694 = icmp eq i8 %692, %693
  br i1 %694, label %695, label %.backedge257

; <label>:695                                     ; preds = %690
  %696 = zext i8 %692 to i64
  %697 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %696
  %698 = bitcast %union.register_info_type* %697 to i8*
  %699 = load i8* %698, align 4
  %700 = and i8 %699, 16
  %701 = icmp eq i8 %700, 0
  br i1 %701, label %.loopexit221, label %702

; <label>:702                                     ; preds = %695
  %703 = and i8 %699, -17
  store i8 %703, i8* %698, align 4
  %704 = getelementptr inbounds i8* %p.0, i64 2
  %705 = load i8* %704, align 1, !tbaa !12
  %706 = icmp eq i8 %705, 0
  br i1 %706, label %.loopexit221, label %.lr.ph424

.lr.ph424:                                        ; preds = %702
  %707 = load i8* %444, align 1, !tbaa !12
  %708 = zext i8 %707 to i32
  br label %709

; <label>:709                                     ; preds = %.lr.ph424, %719
  %r4.0422 = phi i32 [ %708, %.lr.ph424 ], [ %720, %719 ]
  %710 = zext i32 %r4.0422 to i64
  %711 = getelementptr inbounds i8** %old_regstart.0, i64 %710
  %712 = load i8** %711, align 8, !tbaa !13
  %713 = getelementptr inbounds i8** %regstart.0, i64 %710
  store i8* %712, i8** %713, align 8, !tbaa !13
  %714 = getelementptr inbounds i8** %old_regend.0, i64 %710
  %715 = load i8** %714, align 8, !tbaa !13
  %716 = icmp ult i8* %715, %712
  br i1 %716, label %719, label %717

; <label>:717                                     ; preds = %709
  %718 = getelementptr inbounds i8** %regend.0, i64 %710
  store i8* %715, i8** %718, align 8, !tbaa !13
  br label %719

; <label>:719                                     ; preds = %709, %717
  %720 = add nuw nsw i32 %r4.0422, 1
  %721 = load i8* %444, align 1, !tbaa !12
  %722 = zext i8 %721 to i32
  %723 = load i8* %704, align 1, !tbaa !12
  %724 = zext i8 %723 to i32
  %725 = add nuw nsw i32 %724, %722
  %726 = icmp ult i32 %720, %725
  br i1 %726, label %709, label %.loopexit221

.loopexit221:                                     ; preds = %719, %702, %695
  %.sum629 = add nsw i64 %.sum186, 1
  %727 = getelementptr inbounds i8* %p.0, i64 %.sum629
  store i8* %727, i8** %p1, align 8, !tbaa !13
  %728 = load i8* %727, align 1, !tbaa !12
  %729 = zext i8 %728 to i32
  %.sum630 = add nsw i64 %.sum186, 2
  %730 = getelementptr inbounds i8* %p.0, i64 %.sum630
  %731 = load i8* %730, align 1, !tbaa !12
  %732 = sext i8 %731 to i32
  %733 = shl nsw i32 %732, 8
  %734 = or i32 %733, %729
  %.sum631 = add nsw i64 %.sum186, 3
  %735 = getelementptr inbounds i8* %p.0, i64 %.sum631
  store i8* %735, i8** %p1, align 8, !tbaa !13
  %736 = sub i64 %highest_active_reg.1, %lowest_active_reg.2
  %737 = mul i64 %736, 3
  %738 = add i64 %737, 7
  br label %739

; <label>:739                                     ; preds = %748, %.loopexit221
  %fail_stack.sroa.0.3 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %.loopexit221 ], [ %754, %748 ]
  %fail_stack.sroa.72.1 = phi i32 [ %fail_stack.sroa.72.0, %.loopexit221 ], [ %fail_stack.sroa.72.1., %748 ]
  %740 = sub i32 %fail_stack.sroa.72.1, %fail_stack.sroa.98.0
  %741 = zext i32 %740 to i64
  %742 = icmp ult i64 %741, %738
  br i1 %742, label %744, label %.preheader219

.preheader219:                                    ; preds = %739
  %743 = icmp ult i64 %highest_active_reg.1, %lowest_active_reg.2
  br i1 %743, label %779, label %.lr.ph427

; <label>:744                                     ; preds = %739
  %745 = load i32* @re_max_failures, align 4, !tbaa !15
  %746 = mul nsw i32 %745, 19
  %747 = icmp ugt i32 %fail_stack.sroa.72.1, %746
  br i1 %747, label %.loopexit220, label %748

; <label>:748                                     ; preds = %744
  %749 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.3 to i8*
  %750 = shl i32 %fail_stack.sroa.72.1, 1
  %751 = zext i32 %750 to i64
  %752 = shl nuw nsw i64 %751, 3
  %753 = tail call i8* @realloc(i8* %749, i64 %752) #7
  %754 = bitcast i8* %753 to %union.fail_stack_elt*
  %755 = icmp eq i8* %753, null
  %fail_stack.sroa.72.1. = select i1 %755, i32 %fail_stack.sroa.72.1, i32 %750
  br i1 %755, label %.loopexit220, label %739

.lr.ph427:                                        ; preds = %.preheader219, %.lr.ph427
  %this_reg.0426 = phi i64 [ %777, %.lr.ph427 ], [ %lowest_active_reg.2, %.preheader219 ]
  %fail_stack.sroa.98.1425 = phi i32 [ %770, %.lr.ph427 ], [ %fail_stack.sroa.98.0, %.preheader219 ]
  %756 = getelementptr inbounds i8** %regstart.0, i64 %this_reg.0426
  %757 = bitcast i8** %756 to i64*
  %758 = load i64* %757, align 8, !tbaa !13
  %759 = add i32 %fail_stack.sroa.98.1425, 1
  %760 = zext i32 %fail_stack.sroa.98.1425 to i64
  %761 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %760
  %762 = bitcast %union.fail_stack_elt* %761 to i64*
  store i64 %758, i64* %762, align 8, !tbaa !13
  %763 = getelementptr inbounds i8** %regend.0, i64 %this_reg.0426
  %764 = bitcast i8** %763 to i64*
  %765 = load i64* %764, align 8, !tbaa !13
  %766 = add i32 %fail_stack.sroa.98.1425, 2
  %767 = zext i32 %759 to i64
  %768 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %767
  %769 = bitcast %union.fail_stack_elt* %768 to i64*
  store i64 %765, i64* %769, align 8, !tbaa !13
  %770 = add i32 %fail_stack.sroa.98.1425, 3
  %771 = zext i32 %766 to i64
  %772 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %771
  %773 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg.0426, i32 0
  %774 = bitcast %union.fail_stack_elt* %773 to i64*
  %775 = load i64* %774, align 8
  %776 = bitcast %union.fail_stack_elt* %772 to i64*
  store i64 %775, i64* %776, align 8
  %777 = add i64 %this_reg.0426, 1
  %778 = icmp ugt i64 %777, %highest_active_reg.1
  br i1 %778, label %._crit_edge428, label %.lr.ph427

._crit_edge428:                                   ; preds = %.lr.ph427
  %.pre604 = load i8** %p1, align 8, !tbaa !13
  br label %779

; <label>:779                                     ; preds = %._crit_edge428, %.preheader219
  %780 = phi i8* [ %.pre604, %._crit_edge428 ], [ %735, %.preheader219 ]
  %fail_stack.sroa.98.1.lcssa = phi i32 [ %770, %._crit_edge428 ], [ %fail_stack.sroa.98.0, %.preheader219 ]
  %781 = trunc i64 %lowest_active_reg.2 to i32
  %782 = add i32 %fail_stack.sroa.98.1.lcssa, 1
  %783 = zext i32 %fail_stack.sroa.98.1.lcssa to i64
  %784 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %783
  %785 = bitcast %union.fail_stack_elt* %784 to i32*
  store i32 %781, i32* %785, align 4, !tbaa !15
  %786 = trunc i64 %highest_active_reg.1 to i32
  %787 = add i32 %fail_stack.sroa.98.1.lcssa, 2
  %788 = zext i32 %782 to i64
  %789 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %788
  %790 = bitcast %union.fail_stack_elt* %789 to i32*
  store i32 %786, i32* %790, align 4, !tbaa !15
  %791 = sext i32 %734 to i64
  %792 = getelementptr inbounds i8* %780, i64 %791
  %793 = add i32 %fail_stack.sroa.98.1.lcssa, 3
  %794 = zext i32 %787 to i64
  %795 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %794, i32 0
  store i8* %792, i8** %795, align 8, !tbaa !13
  %796 = add i32 %fail_stack.sroa.98.1.lcssa, 4
  %797 = zext i32 %793 to i64
  %798 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.3, i64 %797, i32 0
  store i8* %d.0, i8** %798, align 8, !tbaa !13
  br label %bcmp_translate.exit.thread158.preheader

; <label>:799                                     ; preds = %443
  %800 = getelementptr inbounds i8* %p.0, i64 2
  %801 = load i8* %444, align 1, !tbaa !12
  %802 = zext i8 %801 to i64
  %803 = getelementptr inbounds i8** %regstart.0, i64 %802
  %804 = load i8** %803, align 8, !tbaa !13
  %805 = icmp eq i8* %804, @reg_unset_dummy
  br i1 %805, label %bcmp_translate.exit.thread158.preheader, label %806

; <label>:806                                     ; preds = %799
  %807 = getelementptr inbounds i8** %regend.0, i64 %802
  %808 = load i8** %807, align 8, !tbaa !13
  %809 = icmp eq i8* %808, @reg_unset_dummy
  br i1 %809, label %bcmp_translate.exit.thread158.preheader, label %810

; <label>:810                                     ; preds = %806
  %811 = icmp ule i8* %804, %117
  %.not178 = icmp ule i8* %.string1, %804
  %not.or.cond125 = and i1 %notlhs184, %.not178
  %.155 = and i1 %811, %not.or.cond125
  br i1 %notlhs184, label %812, label %._crit_edge

._crit_edge:                                      ; preds = %810
  br i1 %.155, label %.preheader222, label %814

; <label>:812                                     ; preds = %810
  %813 = icmp ule i8* %808, %117
  %not.179 = icmp ule i8* %.string1, %808
  %.126 = and i1 %813, %not.179
  %tmp = xor i1 %.155, %.126
  br i1 %tmp, label %.preheader222, label %814

; <label>:814                                     ; preds = %._crit_edge, %812
  br label %.preheader222

.preheader222:                                    ; preds = %812, %814, %._crit_edge
  %dend2.0.ph = phi i8* [ %end_match_1.0, %._crit_edge ], [ %808, %814 ], [ %end_match_1.0, %812 ]
  %815 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br label %.outer225

.outer225:                                        ; preds = %.preheader195, %.lr.ph421, %.preheader222
  %816 = phi i8* [ %808, %.preheader222 ], [ %827, %.lr.ph421 ], [ %827, %.preheader195 ]
  %set_regs_matched_done.3.ph = phi i32 [ %set_regs_matched_done.0, %.preheader222 ], [ 1, %.lr.ph421 ], [ 1, %.preheader195 ]
  %d2.0.ph = phi i8* [ %804, %.preheader222 ], [ %861, %.lr.ph421 ], [ %861, %.preheader195 ]
  %dend2.0.ph226 = phi i8* [ %dend2.0.ph, %.preheader222 ], [ %dend2.0.ph229, %.lr.ph421 ], [ %dend2.0.ph229, %.preheader195 ]
  %dend.7.ph = phi i8* [ %dend.0, %.preheader222 ], [ %dend.8, %.lr.ph421 ], [ %dend.8, %.preheader195 ]
  %d.7.ph = phi i8* [ %d.0, %.preheader222 ], [ %860, %.lr.ph421 ], [ %860, %.preheader195 ]
  %817 = icmp eq i32 %set_regs_matched_done.3.ph, 0
  br label %.outer227

.outer227:                                        ; preds = %824, %.outer225
  %818 = phi i8* [ %816, %.outer225 ], [ %822, %824 ]
  %d2.0.ph228 = phi i8* [ %d2.0.ph, %.outer225 ], [ %string1.string2, %824 ]
  %dend2.0.ph229 = phi i8* [ %dend2.0.ph226, %.outer225 ], [ %822, %824 ]
  %dend.7.ph230 = phi i8* [ %dend.7.ph, %.outer225 ], [ %dend.7, %824 ]
  %d.7.ph231 = phi i8* [ %d.7.ph, %.outer225 ], [ %d.7, %824 ]
  %819 = icmp eq i8* %dend2.0.ph229, %end_match_2.0
  %820 = ptrtoint i8* %dend2.0.ph229 to i64
  br label %821

; <label>:821                                     ; preds = %.outer227, %bcmp_translate.exit.thread
  %822 = phi i8* [ %827, %bcmp_translate.exit.thread ], [ %818, %.outer227 ]
  %d2.0 = phi i8* [ %861, %bcmp_translate.exit.thread ], [ %d2.0.ph228, %.outer227 ]
  %dend.7 = phi i8* [ %dend.8, %bcmp_translate.exit.thread ], [ %dend.7.ph230, %.outer227 ]
  %d.7 = phi i8* [ %860, %bcmp_translate.exit.thread ], [ %d.7.ph231, %.outer227 ]
  %823 = icmp eq i8* %d2.0, %dend2.0.ph229
  %.not127 = xor i1 %823, true
  %or.cond128 = or i1 %819, %.not127
  br i1 %or.cond128, label %826, label %824

; <label>:824                                     ; preds = %821
  %825 = icmp eq i8* %dend2.0.ph229, %822
  br i1 %825, label %826, label %.outer227

; <label>:826                                     ; preds = %821, %824
  %827 = phi i8* [ %822, %821 ], [ %dend2.0.ph229, %824 ]
  br i1 %823, label %.backedge257, label %.preheader197

.preheader197:                                    ; preds = %826, %829
  %dend.8 = phi i8* [ %end_match_2.0, %829 ], [ %dend.7, %826 ]
  %d.8 = phi i8* [ %string1.string2, %829 ], [ %d.7, %826 ]
  %828 = icmp eq i8* %d.8, %dend.8
  br i1 %828, label %829, label %831

; <label>:829                                     ; preds = %.preheader197
  %830 = icmp eq i8* %dend.8, %end_match_2.0
  br i1 %830, label %bcmp_translate.exit.thread158.preheader, label %.preheader197

; <label>:831                                     ; preds = %.preheader197
  %832 = ptrtoint i8* %dend.8 to i64
  %833 = ptrtoint i8* %d.8 to i64
  %834 = sub i64 %832, %833
  %sext = shl i64 %834, 32
  %835 = ashr exact i64 %sext, 32
  %836 = ptrtoint i8* %d2.0 to i64
  %837 = sub i64 %820, %836
  %838 = icmp sgt i64 %835, %837
  %.129 = select i1 %838, i64 %837, i64 %834
  br i1 %134, label %855, label %839

; <label>:839                                     ; preds = %831
  %mcnt.8 = trunc i64 %.129 to i32
  %840 = icmp eq i32 %mcnt.8, 0
  br i1 %840, label %bcmp_translate.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %839, %850
  %p2.04.i = phi i8* [ %851, %850 ], [ %d2.0, %839 ]
  %p1.03.i = phi i8* [ %852, %850 ], [ %d.8, %839 ]
  %.012.i = phi i32 [ %853, %850 ], [ %mcnt.8, %839 ]
  %841 = load i8* %p1.03.i, align 1, !tbaa !12
  %842 = zext i8 %841 to i64
  %843 = getelementptr inbounds i8* %7, i64 %842
  %844 = load i8* %843, align 1, !tbaa !12
  %845 = load i8* %p2.04.i, align 1, !tbaa !12
  %846 = zext i8 %845 to i64
  %847 = getelementptr inbounds i8* %7, i64 %846
  %848 = load i8* %847, align 1, !tbaa !12
  %849 = icmp eq i8 %844, %848
  br i1 %849, label %850, label %bcmp_translate.exit.thread158.preheader

; <label>:850                                     ; preds = %.lr.ph.i
  %851 = getelementptr inbounds i8* %p2.04.i, i64 1
  %852 = getelementptr inbounds i8* %p1.03.i, i64 1
  %853 = add nsw i32 %.012.i, -1
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %bcmp_translate.exit.thread, label %.lr.ph.i

; <label>:855                                     ; preds = %831
  %sext99 = shl i64 %.129, 32
  %856 = ashr exact i64 %sext99, 32
  %857 = tail call i32 @memcmp(i8* %d.8, i8* %d2.0, i64 %856) #7
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %bcmp_translate.exit.thread, label %bcmp_translate.exit.thread158.preheader

bcmp_translate.exit.thread:                       ; preds = %850, %839, %855
  %sext100 = shl i64 %.129, 32
  %859 = ashr exact i64 %sext100, 32
  %860 = getelementptr inbounds i8* %d.8, i64 %859
  %861 = getelementptr inbounds i8* %d2.0, i64 %859
  br i1 %817, label %.preheader195, label %821

.preheader195:                                    ; preds = %bcmp_translate.exit.thread
  br i1 %815, label %.outer225, label %.lr.ph421

.lr.ph421:                                        ; preds = %.preheader195, %.lr.ph421
  %r5.0420 = phi i64 [ %866, %.lr.ph421 ], [ %lowest_active_reg.0, %.preheader195 ]
  %862 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r5.0420
  %863 = bitcast %union.register_info_type* %862 to i8*
  %864 = load i8* %863, align 4
  %865 = or i8 %864, 24
  store i8 %865, i8* %863, align 4
  %866 = add i64 %r5.0420, 1
  %867 = icmp ugt i64 %866, %highest_active_reg.0
  br i1 %867, label %.outer225, label %.lr.ph421

; <label>:868                                     ; preds = %443
  %869 = icmp ne i8* %d.0, %135
  %or.cond50 = and i1 %136, %869
  br i1 %or.cond50, label %874, label %870

; <label>:870                                     ; preds = %868
  %871 = load i8* %137, align 8
  %872 = and i8 %871, 32
  %873 = icmp eq i8 %872, 0
  br i1 %873, label %.backedge257, label %bcmp_translate.exit.thread158.preheader

; <label>:874                                     ; preds = %868
  %875 = getelementptr inbounds i8* %d.0, i64 -1
  %876 = load i8* %875, align 1, !tbaa !12
  %877 = icmp eq i8 %876, 10
  br i1 %877, label %878, label %bcmp_translate.exit.thread158.preheader

; <label>:878                                     ; preds = %874
  %879 = load i8* %137, align 8
  %880 = icmp slt i8 %879, 0
  br i1 %880, label %.backedge257, label %bcmp_translate.exit.thread158.preheader

; <label>:881                                     ; preds = %443
  %882 = icmp eq i8* %d.0, %119
  br i1 %882, label %883, label %887

; <label>:883                                     ; preds = %881
  %884 = load i8* %137, align 8
  %885 = and i8 %884, 64
  %886 = icmp eq i8 %885, 0
  br i1 %886, label %.backedge257, label %bcmp_translate.exit.thread158.preheader

; <label>:887                                     ; preds = %881
  %888 = icmp eq i8* %d.0, %117
  %string1.string2.d.0 = select i1 %888, i8* %string1.string2, i8* %d.0
  %.sink51 = load i8* %string1.string2.d.0, align 1
  %889 = icmp eq i8 %.sink51, 10
  br i1 %889, label %890, label %bcmp_translate.exit.thread158.preheader

; <label>:890                                     ; preds = %887
  %891 = load i8* %137, align 8
  %892 = icmp slt i8 %891, 0
  br i1 %892, label %.backedge257, label %bcmp_translate.exit.thread158.preheader

; <label>:893                                     ; preds = %443
  %894 = icmp ne i8* %d.0, %135
  %or.cond53 = and i1 %136, %894
  br i1 %or.cond53, label %bcmp_translate.exit.thread158.preheader, label %.backedge257

; <label>:895                                     ; preds = %443
  %896 = icmp eq i8* %d.0, %119
  br i1 %896, label %.backedge257, label %bcmp_translate.exit.thread158.preheader

; <label>:897                                     ; preds = %443
  %898 = load i8* %444, align 1, !tbaa !12
  %899 = zext i8 %898 to i32
  %900 = getelementptr inbounds i8* %p.0, i64 2
  %901 = load i8* %900, align 1, !tbaa !12
  %902 = sext i8 %901 to i32
  %903 = shl nsw i32 %902, 8
  %904 = or i32 %903, %899
  %905 = getelementptr inbounds i8* %p.0, i64 3
  %906 = sub i64 %highest_active_reg.0, %lowest_active_reg.0
  %907 = mul i64 %906, 3
  %908 = add i64 %907, 7
  br label %909

; <label>:909                                     ; preds = %918, %897
  %fail_stack.sroa.0.4 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %897 ], [ %924, %918 ]
  %fail_stack.sroa.72.3 = phi i32 [ %fail_stack.sroa.72.0, %897 ], [ %fail_stack.sroa.72.3., %918 ]
  %910 = sub i32 %fail_stack.sroa.72.3, %fail_stack.sroa.98.0
  %911 = zext i32 %910 to i64
  %912 = icmp ult i64 %911, %908
  br i1 %912, label %914, label %.preheader232

.preheader232:                                    ; preds = %909
  %913 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br i1 %913, label %._crit_edge418, label %.lr.ph417

; <label>:914                                     ; preds = %909
  %915 = load i32* @re_max_failures, align 4, !tbaa !15
  %916 = mul nsw i32 %915, 19
  %917 = icmp ugt i32 %fail_stack.sroa.72.3, %916
  br i1 %917, label %.loopexit220, label %918

; <label>:918                                     ; preds = %914
  %919 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.4 to i8*
  %920 = shl i32 %fail_stack.sroa.72.3, 1
  %921 = zext i32 %920 to i64
  %922 = shl nuw nsw i64 %921, 3
  %923 = tail call i8* @realloc(i8* %919, i64 %922) #7
  %924 = bitcast i8* %923 to %union.fail_stack_elt*
  %925 = icmp eq i8* %923, null
  %fail_stack.sroa.72.3. = select i1 %925, i32 %fail_stack.sroa.72.3, i32 %920
  br i1 %925, label %.loopexit220, label %909

.lr.ph417:                                        ; preds = %.preheader232, %.lr.ph417
  %this_reg7.0416 = phi i64 [ %947, %.lr.ph417 ], [ %lowest_active_reg.0, %.preheader232 ]
  %fail_stack.sroa.98.2415 = phi i32 [ %940, %.lr.ph417 ], [ %fail_stack.sroa.98.0, %.preheader232 ]
  %926 = getelementptr inbounds i8** %regstart.0, i64 %this_reg7.0416
  %927 = bitcast i8** %926 to i64*
  %928 = load i64* %927, align 8, !tbaa !13
  %929 = add i32 %fail_stack.sroa.98.2415, 1
  %930 = zext i32 %fail_stack.sroa.98.2415 to i64
  %931 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %930
  %932 = bitcast %union.fail_stack_elt* %931 to i64*
  store i64 %928, i64* %932, align 8, !tbaa !13
  %933 = getelementptr inbounds i8** %regend.0, i64 %this_reg7.0416
  %934 = bitcast i8** %933 to i64*
  %935 = load i64* %934, align 8, !tbaa !13
  %936 = add i32 %fail_stack.sroa.98.2415, 2
  %937 = zext i32 %929 to i64
  %938 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %937
  %939 = bitcast %union.fail_stack_elt* %938 to i64*
  store i64 %935, i64* %939, align 8, !tbaa !13
  %940 = add i32 %fail_stack.sroa.98.2415, 3
  %941 = zext i32 %936 to i64
  %942 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %941
  %943 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg7.0416, i32 0
  %944 = bitcast %union.fail_stack_elt* %943 to i64*
  %945 = load i64* %944, align 8
  %946 = bitcast %union.fail_stack_elt* %942 to i64*
  store i64 %945, i64* %946, align 8
  %947 = add i64 %this_reg7.0416, 1
  %948 = icmp ugt i64 %947, %highest_active_reg.0
  br i1 %948, label %._crit_edge418, label %.lr.ph417

._crit_edge418:                                   ; preds = %.lr.ph417, %.preheader232
  %fail_stack.sroa.98.2.lcssa = phi i32 [ %fail_stack.sroa.98.0, %.preheader232 ], [ %940, %.lr.ph417 ]
  %949 = trunc i64 %lowest_active_reg.0 to i32
  %950 = add i32 %fail_stack.sroa.98.2.lcssa, 1
  %951 = zext i32 %fail_stack.sroa.98.2.lcssa to i64
  %952 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %951
  %953 = bitcast %union.fail_stack_elt* %952 to i32*
  store i32 %949, i32* %953, align 4, !tbaa !15
  %954 = trunc i64 %highest_active_reg.0 to i32
  %955 = add i32 %fail_stack.sroa.98.2.lcssa, 2
  %956 = zext i32 %950 to i64
  %957 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %956
  %958 = bitcast %union.fail_stack_elt* %957 to i32*
  store i32 %954, i32* %958, align 4, !tbaa !15
  %addconv98 = add nsw i32 %904, 3
  %.sum97 = sext i32 %addconv98 to i64
  %959 = getelementptr inbounds i8* %p.0, i64 %.sum97
  %960 = add i32 %fail_stack.sroa.98.2.lcssa, 3
  %961 = zext i32 %955 to i64
  %962 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %961, i32 0
  store i8* %959, i8** %962, align 8, !tbaa !13
  %963 = add i32 %fail_stack.sroa.98.2.lcssa, 4
  %964 = zext i32 %960 to i64
  %965 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.4, i64 %964, i32 0
  store i8* null, i8** %965, align 8, !tbaa !13
  br label %.backedge257

; <label>:966                                     ; preds = %._crit_edge610, %1385
  %.pre-phi616 = phi i8* [ %.pre615, %._crit_edge610 ], [ %1368, %1385 ]
  %967 = load i8* %444, align 1, !tbaa !12
  %968 = zext i8 %967 to i32
  %969 = getelementptr inbounds i8* %p.0, i64 2
  %970 = load i8* %969, align 1, !tbaa !12
  %971 = sext i8 %970 to i32
  %972 = shl nsw i32 %971, 8
  %973 = or i32 %972, %968
  store i8* %.pre-phi616, i8** %p1, align 8, !tbaa !13
  %974 = icmp ult i8* %.pre-phi616, %5
  br i1 %974, label %.lr.ph409, label %.thread159

.lr.ph409:                                        ; preds = %966, %978
  %975 = phi i8* [ %979, %978 ], [ %.pre-phi616, %966 ]
  %976 = load i8* %975, align 1, !tbaa !12
  %977 = icmp eq i8 %976, 0
  br i1 %977, label %978, label %.thread159

; <label>:978                                     ; preds = %.lr.ph409
  %979 = getelementptr inbounds i8* %975, i64 1
  store i8* %979, i8** %p1, align 8, !tbaa !13
  %980 = icmp ult i8* %979, %5
  br i1 %980, label %.lr.ph409, label %.thread159

.thread159:                                       ; preds = %.lr.ph409, %978, %966
  %981 = phi i8* [ %.pre-phi616, %966 ], [ %975, %.lr.ph409 ], [ %979, %978 ]
  %982 = icmp ult i8* %981, %5
  br i1 %982, label %983, label %.preheader235

; <label>:983                                     ; preds = %.thread159
  %984 = load i8* %981, align 1, !tbaa !12
  %985 = icmp eq i8 %984, 6
  br i1 %985, label %986, label %.preheader235

; <label>:986                                     ; preds = %983
  %987 = getelementptr inbounds i8* %981, i64 1
  %988 = load i8* %987, align 1, !tbaa !12
  %989 = zext i8 %988 to i64
  %990 = getelementptr inbounds i8* %981, i64 2
  %991 = load i8* %990, align 1, !tbaa !12
  %992 = zext i8 %991 to i64
  %993 = add nuw nsw i64 %992, %989
  %994 = icmp eq i64 %lowest_active_reg.0, 257
  %.lowest_active_reg.0131 = select i1 %994, i64 %989, i64 %lowest_active_reg.0
  br label %.preheader235

.preheader235:                                    ; preds = %.thread159, %983, %986
  %lowest_active_reg.3.ph = phi i64 [ %.lowest_active_reg.0131, %986 ], [ %lowest_active_reg.0, %.thread159 ], [ %lowest_active_reg.0, %983 ]
  %highest_active_reg.2.ph = phi i64 [ %993, %986 ], [ %highest_active_reg.0, %.thread159 ], [ %highest_active_reg.0, %983 ]
  %995 = sub i64 %highest_active_reg.2.ph, %lowest_active_reg.3.ph
  %996 = mul i64 %995, 3
  %997 = add i64 %996, 7
  br label %998

; <label>:998                                     ; preds = %.preheader235, %1007
  %fail_stack.sroa.0.5 = phi %union.fail_stack_elt* [ %1013, %1007 ], [ %fail_stack.sroa.0.0, %.preheader235 ]
  %fail_stack.sroa.72.5 = phi i32 [ %fail_stack.sroa.72.5., %1007 ], [ %fail_stack.sroa.72.0, %.preheader235 ]
  %999 = sub i32 %fail_stack.sroa.72.5, %fail_stack.sroa.98.0
  %1000 = zext i32 %999 to i64
  %1001 = icmp ult i64 %1000, %997
  br i1 %1001, label %1003, label %.preheader234

.preheader234:                                    ; preds = %998
  %1002 = icmp ult i64 %highest_active_reg.2.ph, %lowest_active_reg.3.ph
  br i1 %1002, label %._crit_edge413, label %.lr.ph412

; <label>:1003                                    ; preds = %998
  %1004 = load i32* @re_max_failures, align 4, !tbaa !15
  %1005 = mul nsw i32 %1004, 19
  %1006 = icmp ugt i32 %fail_stack.sroa.72.5, %1005
  br i1 %1006, label %.loopexit220, label %1007

; <label>:1007                                    ; preds = %1003
  %1008 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.5 to i8*
  %1009 = shl i32 %fail_stack.sroa.72.5, 1
  %1010 = zext i32 %1009 to i64
  %1011 = shl nuw nsw i64 %1010, 3
  %1012 = tail call i8* @realloc(i8* %1008, i64 %1011) #7
  %1013 = bitcast i8* %1012 to %union.fail_stack_elt*
  %1014 = icmp eq i8* %1012, null
  %fail_stack.sroa.72.5. = select i1 %1014, i32 %fail_stack.sroa.72.5, i32 %1009
  br i1 %1014, label %.loopexit220, label %998

.lr.ph412:                                        ; preds = %.preheader234, %.lr.ph412
  %this_reg9.0411 = phi i64 [ %1036, %.lr.ph412 ], [ %lowest_active_reg.3.ph, %.preheader234 ]
  %fail_stack.sroa.98.3410 = phi i32 [ %1029, %.lr.ph412 ], [ %fail_stack.sroa.98.0, %.preheader234 ]
  %1015 = getelementptr inbounds i8** %regstart.0, i64 %this_reg9.0411
  %1016 = bitcast i8** %1015 to i64*
  %1017 = load i64* %1016, align 8, !tbaa !13
  %1018 = add i32 %fail_stack.sroa.98.3410, 1
  %1019 = zext i32 %fail_stack.sroa.98.3410 to i64
  %1020 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %1019
  %1021 = bitcast %union.fail_stack_elt* %1020 to i64*
  store i64 %1017, i64* %1021, align 8, !tbaa !13
  %1022 = getelementptr inbounds i8** %regend.0, i64 %this_reg9.0411
  %1023 = bitcast i8** %1022 to i64*
  %1024 = load i64* %1023, align 8, !tbaa !13
  %1025 = add i32 %fail_stack.sroa.98.3410, 2
  %1026 = zext i32 %1018 to i64
  %1027 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %1026
  %1028 = bitcast %union.fail_stack_elt* %1027 to i64*
  store i64 %1024, i64* %1028, align 8, !tbaa !13
  %1029 = add i32 %fail_stack.sroa.98.3410, 3
  %1030 = zext i32 %1025 to i64
  %1031 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %1030
  %1032 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg9.0411, i32 0
  %1033 = bitcast %union.fail_stack_elt* %1032 to i64*
  %1034 = load i64* %1033, align 8
  %1035 = bitcast %union.fail_stack_elt* %1031 to i64*
  store i64 %1034, i64* %1035, align 8
  %1036 = add i64 %this_reg9.0411, 1
  %1037 = icmp ugt i64 %1036, %highest_active_reg.2.ph
  br i1 %1037, label %._crit_edge413, label %.lr.ph412

._crit_edge413:                                   ; preds = %.lr.ph412, %.preheader234
  %fail_stack.sroa.98.3.lcssa = phi i32 [ %fail_stack.sroa.98.0, %.preheader234 ], [ %1029, %.lr.ph412 ]
  %1038 = trunc i64 %lowest_active_reg.3.ph to i32
  %1039 = add i32 %fail_stack.sroa.98.3.lcssa, 1
  %1040 = zext i32 %fail_stack.sroa.98.3.lcssa to i64
  %1041 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %1040
  %1042 = bitcast %union.fail_stack_elt* %1041 to i32*
  store i32 %1038, i32* %1042, align 4, !tbaa !15
  %1043 = trunc i64 %highest_active_reg.2.ph to i32
  %1044 = add i32 %fail_stack.sroa.98.3.lcssa, 2
  %1045 = zext i32 %1039 to i64
  %1046 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %1045
  %1047 = bitcast %union.fail_stack_elt* %1046 to i32*
  store i32 %1043, i32* %1047, align 4, !tbaa !15
  %addconv93 = add nsw i32 %973, 3
  %.sum92 = sext i32 %addconv93 to i64
  %1048 = getelementptr inbounds i8* %p.0, i64 %.sum92
  %1049 = add i32 %fail_stack.sroa.98.3.lcssa, 3
  %1050 = zext i32 %1044 to i64
  %1051 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %1050, i32 0
  store i8* %1048, i8** %1051, align 8, !tbaa !13
  %1052 = add i32 %fail_stack.sroa.98.3.lcssa, 4
  %1053 = zext i32 %1049 to i64
  %1054 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.5, i64 %1053, i32 0
  store i8* %d.0, i8** %1054, align 8, !tbaa !13
  br label %.backedge257

; <label>:1055                                    ; preds = %443
  %1056 = load i8* %444, align 1, !tbaa !12
  %1057 = zext i8 %1056 to i32
  %1058 = getelementptr inbounds i8* %p.0, i64 2
  %1059 = load i8* %1058, align 1, !tbaa !12
  %1060 = sext i8 %1059 to i32
  %1061 = shl nsw i32 %1060, 8
  %1062 = or i32 %1061, %1057
  %1063 = getelementptr inbounds i8* %p.0, i64 3
  br label %.backedge

.backedge:                                        ; preds = %1074, %1069, %1055
  %p2.0 = phi i8* [ %1063, %1055 ], [ %1070, %1069 ], [ %1072, %1074 ]
  %1064 = getelementptr inbounds i8* %p2.0, i64 2
  %1065 = icmp ult i8* %1064, %5
  br i1 %1065, label %1066, label %1071

; <label>:1066                                    ; preds = %.backedge
  %1067 = load i8* %p2.0, align 1, !tbaa !12
  %1068 = and i8 %1067, -2
  %switch = icmp eq i8 %1068, 6
  br i1 %switch, label %1069, label %1071

; <label>:1069                                    ; preds = %1066
  %1070 = getelementptr inbounds i8* %p2.0, i64 3
  br label %.backedge

; <label>:1071                                    ; preds = %1066, %.backedge
  %1072 = getelementptr inbounds i8* %p2.0, i64 6
  %1073 = icmp ult i8* %1072, %5
  br i1 %1073, label %1074, label %1077

; <label>:1074                                    ; preds = %1071
  %1075 = load i8* %p2.0, align 1, !tbaa !12
  %1076 = icmp eq i8 %1075, 19
  br i1 %1076, label %.backedge, label %1077

; <label>:1077                                    ; preds = %1071, %1074
  %addconv95 = add nsw i32 %1062, 3
  %.sum94 = sext i32 %addconv95 to i64
  %1078 = getelementptr inbounds i8* %p.0, i64 %.sum94
  store i8* %1078, i8** %p1, align 8, !tbaa !13
  %1079 = icmp eq i8* %p2.0, %5
  br i1 %1079, label %1080, label %1081

; <label>:1080                                    ; preds = %1077
  store i8 17, i8* %p.0, align 1, !tbaa !12
  br label %.thread163

; <label>:1081                                    ; preds = %1077
  %1082 = load i8* %p2.0, align 1, !tbaa !12
  %1083 = icmp eq i8 %1082, 2
  br i1 %1083, label %.thread160, label %1084

; <label>:1084                                    ; preds = %1081
  %1085 = load i8* %137, align 8
  %1086 = icmp slt i8 %1085, 0
  %1087 = icmp eq i8 %1082, 10
  %or.cond133 = and i1 %1087, %1086
  br i1 %or.cond133, label %1089, label %1121

.thread160:                                       ; preds = %1081
  %1088 = load i8* %1064, align 1, !tbaa !12
  br label %1089

; <label>:1089                                    ; preds = %1084, %.thread160
  %1090 = phi i8 [ %1088, %.thread160 ], [ 10, %1084 ]
  %.sum625 = add nsw i64 %.sum94, 3
  %1091 = getelementptr inbounds i8* %p.0, i64 %.sum625
  %1092 = load i8* %1091, align 1, !tbaa !12
  %1093 = icmp eq i8 %1092, 2
  br i1 %1093, label %1094, label %1099

; <label>:1094                                    ; preds = %1089
  %.sum628 = add nsw i64 %.sum94, 5
  %1095 = getelementptr inbounds i8* %p.0, i64 %.sum628
  %1096 = load i8* %1095, align 1, !tbaa !12
  %1097 = icmp eq i8 %1096, %1090
  br i1 %1097, label %.thread, label %1098

; <label>:1098                                    ; preds = %1094
  store i8 17, i8* %p.0, align 1, !tbaa !12
  br label %.thread163

; <label>:1099                                    ; preds = %1089
  %1100 = and i8 %1092, -2
  %switch157 = icmp eq i8 %1100, 4
  br i1 %switch157, label %1101, label %.thread

; <label>:1101                                    ; preds = %1099
  %1102 = icmp eq i8 %1092, 5
  %1103 = zext i1 %1102 to i32
  %.sum626 = add nsw i64 %.sum94, 4
  %1104 = getelementptr inbounds i8* %p.0, i64 %.sum626
  %1105 = load i8* %1104, align 1, !tbaa !12
  %1106 = shl i8 %1105, 3
  %1107 = icmp ult i8 %1090, %1106
  br i1 %1107, label %1108, label %1118

; <label>:1108                                    ; preds = %1101
  %div96 = lshr i8 %1090, 3
  %1109 = zext i8 %div96 to i64
  %1110 = add nuw nsw i64 %1109, 5
  %.sum627 = add nsw i64 %.sum94, %1110
  %1111 = getelementptr inbounds i8* %p.0, i64 %.sum627
  %1112 = load i8* %1111, align 1, !tbaa !12
  %1113 = zext i8 %1112 to i32
  %1114 = and i8 %1090, 7
  %1115 = zext i8 %1114 to i32
  %1116 = shl i32 1, %1115
  %1117 = and i32 %1113, %1116
  %not.175 = icmp ne i32 %1117, 0
  %.166176 = xor i1 %1102, %not.175
  %.166 = zext i1 %.166176 to i32
  br label %1118

; <label>:1118                                    ; preds = %1108, %1101
  %not11.0 = phi i32 [ %1103, %1101 ], [ %.166, %1108 ]
  %1119 = icmp eq i32 %not11.0, 0
  br i1 %1119, label %1120, label %.thread

; <label>:1120                                    ; preds = %1118
  store i8 17, i8* %p.0, align 1, !tbaa !12
  br label %.thread163

; <label>:1121                                    ; preds = %1084
  %1122 = icmp eq i8 %1082, 4
  br i1 %1122, label %1123, label %.thread

; <label>:1123                                    ; preds = %1121
  %.sum173 = add nsw i64 %.sum94, 3
  %1124 = getelementptr inbounds i8* %p.0, i64 %.sum173
  %1125 = load i8* %1124, align 1, !tbaa !12
  switch i8 %1125, label %.thread [
    i8 2, label %1126
    i8 5, label %.preheader239
    i8 4, label %.preheader240
  ]

; <label>:1126                                    ; preds = %1123
  %1127 = getelementptr inbounds i8* %p2.0, i64 1
  %1128 = load i8* %1127, align 1, !tbaa !12
  %1129 = zext i8 %1128 to i32
  %1130 = shl nuw nsw i32 %1129, 3
  %.sum174 = add nsw i64 %.sum94, 5
  %1131 = getelementptr inbounds i8* %p.0, i64 %.sum174
  %1132 = load i8* %1131, align 1, !tbaa !12
  %1133 = zext i8 %1132 to i32
  %1134 = icmp ugt i32 %1130, %1133
  br i1 %1134, label %1135, label %1146

; <label>:1135                                    ; preds = %1126
  %div = lshr i8 %1132, 3
  %1136 = zext i8 %div to i64
  %1137 = add nuw nsw i64 %1136, 2
  %1138 = getelementptr inbounds i8* %p2.0, i64 %1137
  %1139 = load i8* %1138, align 1, !tbaa !12
  %1140 = zext i8 %1139 to i32
  %1141 = and i8 %1132, 7
  %1142 = zext i8 %1141 to i32
  %1143 = shl i32 1, %1142
  %1144 = and i32 %1140, %1143
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %1146, label %.thread

; <label>:1146                                    ; preds = %1135, %1126
  store i8 17, i8* %p.0, align 1, !tbaa !12
  br label %.thread163

.preheader240:                                    ; preds = %1123
  %1147 = getelementptr inbounds i8* %p2.0, i64 1
  %1148 = load i8* %1147, align 1, !tbaa !12
  %1149 = icmp eq i8 %1148, 0
  br i1 %1149, label %.critedge, label %.lr.ph383

.lr.ph383:                                        ; preds = %.preheader240
  %.sum620 = add nsw i64 %.sum94, 4
  %1150 = getelementptr inbounds i8* %p.0, i64 %.sum620
  %1151 = load i8* %1150, align 1, !tbaa !12
  %1152 = zext i8 %1151 to i64
  br label %1185

.preheader239:                                    ; preds = %1123
  %1153 = getelementptr inbounds i8* %p2.0, i64 1
  %1154 = load i8* %1153, align 1, !tbaa !12
  %1155 = icmp eq i8 %1154, 0
  br i1 %1155, label %1181, label %.lr.ph393

.lr.ph393:                                        ; preds = %.preheader239
  %.sum623 = add nsw i64 %.sum94, 4
  %1156 = getelementptr inbounds i8* %p.0, i64 %.sum623
  br label %1157

; <label>:1157                                    ; preds = %.lr.ph393, %1175
  %indvars.iv590 = phi i64 [ 0, %.lr.ph393 ], [ %indvars.iv.next591, %1175 ]
  %1158 = add nsw i64 %indvars.iv590, 2
  %1159 = getelementptr inbounds i8* %p2.0, i64 %1158
  %1160 = load i8* %1159, align 1, !tbaa !12
  %1161 = zext i8 %1160 to i32
  %1162 = icmp eq i8 %1160, 0
  br i1 %1162, label %1175, label %1163

; <label>:1163                                    ; preds = %1157
  %1164 = load i8* %1156, align 1, !tbaa !12
  %1165 = zext i8 %1164 to i64
  %1166 = icmp slt i64 %indvars.iv590, %1165
  br i1 %1166, label %1167, label %._crit_edge394

; <label>:1167                                    ; preds = %1163
  %1168 = add nsw i64 %indvars.iv590, 5
  %.sum624 = add i64 %.sum94, %1168
  %1169 = getelementptr inbounds i8* %p.0, i64 %.sum624
  %1170 = load i8* %1169, align 1, !tbaa !12
  %1171 = zext i8 %1170 to i32
  %1172 = xor i32 %1171, -1
  %1173 = and i32 %1161, %1172
  %1174 = icmp eq i32 %1173, 0
  br i1 %1174, label %1175, label %._crit_edge397

; <label>:1175                                    ; preds = %1157, %1167
  %indvars.iv.next591 = add nuw nsw i64 %indvars.iv590, 1
  %1176 = zext i8 %1154 to i64
  %1177 = icmp slt i64 %indvars.iv.next591, %1176
  br i1 %1177, label %1157, label %._crit_edge400

._crit_edge394:                                   ; preds = %1163
  %1178 = trunc i64 %indvars.iv590 to i32
  br label %1181

._crit_edge397:                                   ; preds = %1167
  %1179 = trunc i64 %indvars.iv590 to i32
  br label %1181

._crit_edge400:                                   ; preds = %1175
  %1180 = trunc i64 %indvars.iv.next591 to i32
  br label %1181

; <label>:1181                                    ; preds = %.preheader239, %._crit_edge400, %._crit_edge397, %._crit_edge394
  %idx.0.lcssa = phi i32 [ %1178, %._crit_edge394 ], [ %1179, %._crit_edge397 ], [ %1180, %._crit_edge400 ], [ 0, %.preheader239 ]
  %1182 = zext i8 %1154 to i32
  %1183 = icmp eq i32 %idx.0.lcssa, %1182
  br i1 %1183, label %1184, label %.thread

; <label>:1184                                    ; preds = %1181
  store i8 17, i8* %p.0, align 1, !tbaa !12
  br label %.thread163

; <label>:1185                                    ; preds = %.lr.ph383, %1196
  %indvars.iv588 = phi i64 [ 0, %.lr.ph383 ], [ %indvars.iv.next589, %1196 ]
  %1186 = icmp slt i64 %indvars.iv588, %1152
  br i1 %1186, label %1187, label %..critedge_crit_edge389

; <label>:1187                                    ; preds = %1185
  %1188 = add nuw nsw i64 %indvars.iv588, 2
  %1189 = getelementptr inbounds i8* %p2.0, i64 %1188
  %1190 = load i8* %1189, align 1, !tbaa !12
  %1191 = add nuw nsw i64 %indvars.iv588, 5
  %.sum622 = add i64 %.sum94, %1191
  %1192 = getelementptr inbounds i8* %p.0, i64 %.sum622
  %1193 = load i8* %1192, align 1, !tbaa !12
  %1194 = and i8 %1193, %1190
  %1195 = icmp eq i8 %1194, 0
  br i1 %1195, label %1196, label %..critedge_crit_edge

; <label>:1196                                    ; preds = %1187
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1
  %1197 = zext i8 %1148 to i64
  %1198 = icmp slt i64 %indvars.iv.next589, %1197
  br i1 %1198, label %1185, label %..critedge_crit_edge386

..critedge_crit_edge:                             ; preds = %1187
  %1199 = trunc i64 %indvars.iv588 to i32
  br label %.critedge

..critedge_crit_edge386:                          ; preds = %1196
  %1200 = trunc i64 %indvars.iv.next589 to i32
  br label %.critedge

..critedge_crit_edge389:                          ; preds = %1185
  %1201 = trunc i64 %indvars.iv588 to i32
  br label %.critedge

.critedge:                                        ; preds = %.preheader240, %..critedge_crit_edge389, %..critedge_crit_edge386, %..critedge_crit_edge
  %idx12.0.lcssa = phi i32 [ %1199, %..critedge_crit_edge ], [ %1200, %..critedge_crit_edge386 ], [ %1201, %..critedge_crit_edge389 ], [ 0, %.preheader240 ]
  %1202 = zext i8 %1148 to i32
  %1203 = icmp eq i32 %idx12.0.lcssa, %1202
  br i1 %1203, label %1209, label %1204

; <label>:1204                                    ; preds = %.critedge
  %.sum621 = add nsw i64 %.sum94, 4
  %1205 = getelementptr inbounds i8* %p.0, i64 %.sum621
  %1206 = load i8* %1205, align 1, !tbaa !12
  %1207 = zext i8 %1206 to i32
  %1208 = icmp eq i32 %idx12.0.lcssa, %1207
  br i1 %1208, label %1209, label %.thread

; <label>:1209                                    ; preds = %1204, %.critedge
  store i8 17, i8* %p.0, align 1, !tbaa !12
  br label %.thread163

.thread:                                          ; preds = %1123, %1135, %1094, %1099, %1118, %1204, %1181, %1121
  %.pr161 = load i8* %p.0, align 1, !tbaa !12
  %1210 = icmp eq i8 %.pr161, 17
  br i1 %1210, label %.thread163, label %1211

; <label>:1211                                    ; preds = %.thread
  store i8 13, i8* %p.0, align 1, !tbaa !12
  br label %.loopexit238

.thread163:                                       ; preds = %1080, %1184, %1209, %1146, %1098, %1120, %.thread, %443
  %1212 = add i32 %fail_stack.sroa.98.0, -3
  %1213 = zext i32 %1212 to i64
  %1214 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %1213
  %1215 = bitcast %union.fail_stack_elt* %1214 to i32*
  %1216 = load i32* %1215, align 4, !tbaa !15
  %1217 = add i32 %fail_stack.sroa.98.0, -4
  %1218 = zext i32 %1217 to i64
  %1219 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %1218
  %1220 = bitcast %union.fail_stack_elt* %1219 to i32*
  %1221 = load i32* %1220, align 4, !tbaa !15
  %1222 = sext i32 %1221 to i64
  %1223 = icmp ult i32 %1216, %1221
  br i1 %1223, label %.loopexit238, label %.lr.ph405

.lr.ph405:                                        ; preds = %.thread163
  %1224 = sext i32 %1216 to i64
  br label %1225

; <label>:1225                                    ; preds = %.lr.ph405, %1225
  %this_reg13.0404 = phi i64 [ %1224, %.lr.ph405 ], [ %1245, %1225 ]
  %fail_stack.sroa.98.4403 = phi i32 [ %1217, %.lr.ph405 ], [ %1240, %1225 ]
  %1226 = getelementptr inbounds %union.register_info_type* %reg_info_dummy.0, i64 %this_reg13.0404, i32 0
  %1227 = add i32 %fail_stack.sroa.98.4403, -1
  %1228 = zext i32 %1227 to i64
  %1229 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %1228
  %1230 = bitcast %union.fail_stack_elt* %1229 to i64*
  %1231 = load i64* %1230, align 8
  %1232 = bitcast %union.fail_stack_elt* %1226 to i64*
  store i64 %1231, i64* %1232, align 8
  %1233 = add i32 %fail_stack.sroa.98.4403, -2
  %1234 = zext i32 %1233 to i64
  %1235 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %1234, i32 0
  %1236 = bitcast i8** %1235 to i64*
  %1237 = load i64* %1236, align 8, !tbaa !13
  %1238 = getelementptr inbounds i8** %reg_dummy.0, i64 %this_reg13.0404
  %1239 = bitcast i8** %1238 to i64*
  store i64 %1237, i64* %1239, align 8, !tbaa !13
  %1240 = add i32 %fail_stack.sroa.98.4403, -3
  %1241 = zext i32 %1240 to i64
  %1242 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.0, i64 %1241, i32 0
  %1243 = bitcast i8** %1242 to i64*
  %1244 = load i64* %1243, align 8, !tbaa !13
  store i64 %1244, i64* %1239, align 8, !tbaa !13
  %1245 = add i64 %this_reg13.0404, -1
  %1246 = icmp ult i64 %1245, %1222
  br i1 %1246, label %.loopexit238, label %1225

.loopexit238:                                     ; preds = %1225, %.thread163, %443, %1211, %._crit_edge380, %1396, %443
  %fail_stack.sroa.0.6 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %1396 ], [ %fail_stack.sroa.0.7, %._crit_edge380 ], [ %fail_stack.sroa.0.0, %443 ], [ %fail_stack.sroa.0.0, %443 ], [ %fail_stack.sroa.0.0, %1211 ], [ %fail_stack.sroa.0.0, %.thread163 ], [ %fail_stack.sroa.0.0, %1225 ]
  %set_regs_matched_done.4 = phi i32 [ %set_regs_matched_done.0, %1396 ], [ %set_regs_matched_done.0, %._crit_edge380 ], [ %set_regs_matched_done.0, %443 ], [ %set_regs_matched_done.0, %443 ], [ %set_regs_matched_done.0, %1211 ], [ 0, %.thread163 ], [ 0, %1225 ]
  %fail_stack.sroa.72.7 = phi i32 [ %fail_stack.sroa.72.0, %1396 ], [ %fail_stack.sroa.72.8, %._crit_edge380 ], [ %fail_stack.sroa.72.0, %443 ], [ %fail_stack.sroa.72.0, %443 ], [ %fail_stack.sroa.72.0, %1211 ], [ %fail_stack.sroa.72.0, %.thread163 ], [ %fail_stack.sroa.72.0, %1225 ]
  %fail_stack.sroa.98.5 = phi i32 [ %fail_stack.sroa.98.0, %1396 ], [ %1308, %._crit_edge380 ], [ %fail_stack.sroa.98.0, %443 ], [ %fail_stack.sroa.98.0, %443 ], [ %fail_stack.sroa.98.0, %1211 ], [ %1217, %.thread163 ], [ %1240, %1225 ]
  %1247 = load i8* %444, align 1, !tbaa !12
  %1248 = zext i8 %1247 to i32
  %1249 = getelementptr inbounds i8* %p.0, i64 2
  %1250 = load i8* %1249, align 1, !tbaa !12
  %1251 = sext i8 %1250 to i32
  %1252 = shl nsw i32 %1251, 8
  %1253 = or i32 %1252, %1248
  %addconv170 = add nsw i32 %1253, 3
  %.sum169 = sext i32 %addconv170 to i64
  %1254 = getelementptr inbounds i8* %p.0, i64 %.sum169
  br label %.backedge257

; <label>:1255                                    ; preds = %.preheader242, %1264
  %fail_stack.sroa.0.7 = phi %union.fail_stack_elt* [ %1270, %1264 ], [ %fail_stack.sroa.0.0, %.preheader242 ]
  %fail_stack.sroa.72.8 = phi i32 [ %fail_stack.sroa.72.8., %1264 ], [ %fail_stack.sroa.72.0, %.preheader242 ]
  %1256 = sub i32 %fail_stack.sroa.72.8, %fail_stack.sroa.98.0
  %1257 = zext i32 %1256 to i64
  %1258 = icmp ult i64 %1257, %452
  br i1 %1258, label %1260, label %.preheader241

.preheader241:                                    ; preds = %1255
  %1259 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br i1 %1259, label %._crit_edge380, label %.lr.ph379

; <label>:1260                                    ; preds = %1255
  %1261 = load i32* @re_max_failures, align 4, !tbaa !15
  %1262 = mul nsw i32 %1261, 19
  %1263 = icmp ugt i32 %fail_stack.sroa.72.8, %1262
  br i1 %1263, label %.loopexit220, label %1264

; <label>:1264                                    ; preds = %1260
  %1265 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.7 to i8*
  %1266 = shl i32 %fail_stack.sroa.72.8, 1
  %1267 = zext i32 %1266 to i64
  %1268 = shl nuw nsw i64 %1267, 3
  %1269 = tail call i8* @realloc(i8* %1265, i64 %1268) #7
  %1270 = bitcast i8* %1269 to %union.fail_stack_elt*
  %1271 = icmp eq i8* %1269, null
  %fail_stack.sroa.72.8. = select i1 %1271, i32 %fail_stack.sroa.72.8, i32 %1266
  br i1 %1271, label %.loopexit220, label %1255

.lr.ph379:                                        ; preds = %.preheader241, %.lr.ph379
  %this_reg15.0378 = phi i64 [ %1293, %.lr.ph379 ], [ %lowest_active_reg.0, %.preheader241 ]
  %fail_stack.sroa.98.6377 = phi i32 [ %1286, %.lr.ph379 ], [ %fail_stack.sroa.98.0, %.preheader241 ]
  %1272 = getelementptr inbounds i8** %regstart.0, i64 %this_reg15.0378
  %1273 = bitcast i8** %1272 to i64*
  %1274 = load i64* %1273, align 8, !tbaa !13
  %1275 = add i32 %fail_stack.sroa.98.6377, 1
  %1276 = zext i32 %fail_stack.sroa.98.6377 to i64
  %1277 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %1276
  %1278 = bitcast %union.fail_stack_elt* %1277 to i64*
  store i64 %1274, i64* %1278, align 8, !tbaa !13
  %1279 = getelementptr inbounds i8** %regend.0, i64 %this_reg15.0378
  %1280 = bitcast i8** %1279 to i64*
  %1281 = load i64* %1280, align 8, !tbaa !13
  %1282 = add i32 %fail_stack.sroa.98.6377, 2
  %1283 = zext i32 %1275 to i64
  %1284 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %1283
  %1285 = bitcast %union.fail_stack_elt* %1284 to i64*
  store i64 %1281, i64* %1285, align 8, !tbaa !13
  %1286 = add i32 %fail_stack.sroa.98.6377, 3
  %1287 = zext i32 %1282 to i64
  %1288 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %1287
  %1289 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg15.0378, i32 0
  %1290 = bitcast %union.fail_stack_elt* %1289 to i64*
  %1291 = load i64* %1290, align 8
  %1292 = bitcast %union.fail_stack_elt* %1288 to i64*
  store i64 %1291, i64* %1292, align 8
  %1293 = add i64 %this_reg15.0378, 1
  %1294 = icmp ugt i64 %1293, %highest_active_reg.0
  br i1 %1294, label %._crit_edge380, label %.lr.ph379

._crit_edge380:                                   ; preds = %.lr.ph379, %.preheader241
  %fail_stack.sroa.98.6.lcssa = phi i32 [ %fail_stack.sroa.98.0, %.preheader241 ], [ %1286, %.lr.ph379 ]
  %1295 = trunc i64 %lowest_active_reg.0 to i32
  %1296 = add i32 %fail_stack.sroa.98.6.lcssa, 1
  %1297 = zext i32 %fail_stack.sroa.98.6.lcssa to i64
  %1298 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %1297
  %1299 = bitcast %union.fail_stack_elt* %1298 to i32*
  store i32 %1295, i32* %1299, align 4, !tbaa !15
  %1300 = trunc i64 %highest_active_reg.0 to i32
  %1301 = add i32 %fail_stack.sroa.98.6.lcssa, 2
  %1302 = zext i32 %1296 to i64
  %1303 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %1302
  %1304 = bitcast %union.fail_stack_elt* %1303 to i32*
  store i32 %1300, i32* %1304, align 4, !tbaa !15
  %1305 = add i32 %fail_stack.sroa.98.6.lcssa, 3
  %1306 = zext i32 %1301 to i64
  %1307 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %1306, i32 0
  store i8* null, i8** %1307, align 8, !tbaa !13
  %1308 = add i32 %fail_stack.sroa.98.6.lcssa, 4
  %1309 = zext i32 %1305 to i64
  %1310 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.7, i64 %1309, i32 0
  store i8* null, i8** %1310, align 8, !tbaa !13
  br label %.loopexit238

; <label>:1311                                    ; preds = %.preheader245, %1320
  %fail_stack.sroa.0.8 = phi %union.fail_stack_elt* [ %1326, %1320 ], [ %fail_stack.sroa.0.0, %.preheader245 ]
  %fail_stack.sroa.72.10 = phi i32 [ %fail_stack.sroa.72.10., %1320 ], [ %fail_stack.sroa.72.0, %.preheader245 ]
  %1312 = sub i32 %fail_stack.sroa.72.10, %fail_stack.sroa.98.0
  %1313 = zext i32 %1312 to i64
  %1314 = icmp ult i64 %1313, %449
  br i1 %1314, label %1316, label %.preheader244

.preheader244:                                    ; preds = %1311
  %1315 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br i1 %1315, label %._crit_edge376, label %.lr.ph375

; <label>:1316                                    ; preds = %1311
  %1317 = load i32* @re_max_failures, align 4, !tbaa !15
  %1318 = mul nsw i32 %1317, 19
  %1319 = icmp ugt i32 %fail_stack.sroa.72.10, %1318
  br i1 %1319, label %.loopexit220, label %1320

; <label>:1320                                    ; preds = %1316
  %1321 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.8 to i8*
  %1322 = shl i32 %fail_stack.sroa.72.10, 1
  %1323 = zext i32 %1322 to i64
  %1324 = shl nuw nsw i64 %1323, 3
  %1325 = tail call i8* @realloc(i8* %1321, i64 %1324) #7
  %1326 = bitcast i8* %1325 to %union.fail_stack_elt*
  %1327 = icmp eq i8* %1325, null
  %fail_stack.sroa.72.10. = select i1 %1327, i32 %fail_stack.sroa.72.10, i32 %1322
  br i1 %1327, label %.loopexit220, label %1311

.lr.ph375:                                        ; preds = %.preheader244, %.lr.ph375
  %this_reg17.0374 = phi i64 [ %1349, %.lr.ph375 ], [ %lowest_active_reg.0, %.preheader244 ]
  %fail_stack.sroa.98.7373 = phi i32 [ %1342, %.lr.ph375 ], [ %fail_stack.sroa.98.0, %.preheader244 ]
  %1328 = getelementptr inbounds i8** %regstart.0, i64 %this_reg17.0374
  %1329 = bitcast i8** %1328 to i64*
  %1330 = load i64* %1329, align 8, !tbaa !13
  %1331 = add i32 %fail_stack.sroa.98.7373, 1
  %1332 = zext i32 %fail_stack.sroa.98.7373 to i64
  %1333 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %1332
  %1334 = bitcast %union.fail_stack_elt* %1333 to i64*
  store i64 %1330, i64* %1334, align 8, !tbaa !13
  %1335 = getelementptr inbounds i8** %regend.0, i64 %this_reg17.0374
  %1336 = bitcast i8** %1335 to i64*
  %1337 = load i64* %1336, align 8, !tbaa !13
  %1338 = add i32 %fail_stack.sroa.98.7373, 2
  %1339 = zext i32 %1331 to i64
  %1340 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %1339
  %1341 = bitcast %union.fail_stack_elt* %1340 to i64*
  store i64 %1337, i64* %1341, align 8, !tbaa !13
  %1342 = add i32 %fail_stack.sroa.98.7373, 3
  %1343 = zext i32 %1338 to i64
  %1344 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %1343
  %1345 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg17.0374, i32 0
  %1346 = bitcast %union.fail_stack_elt* %1345 to i64*
  %1347 = load i64* %1346, align 8
  %1348 = bitcast %union.fail_stack_elt* %1344 to i64*
  store i64 %1347, i64* %1348, align 8
  %1349 = add i64 %this_reg17.0374, 1
  %1350 = icmp ugt i64 %1349, %highest_active_reg.0
  br i1 %1350, label %._crit_edge376, label %.lr.ph375

._crit_edge376:                                   ; preds = %.lr.ph375, %.preheader244
  %fail_stack.sroa.98.7.lcssa = phi i32 [ %fail_stack.sroa.98.0, %.preheader244 ], [ %1342, %.lr.ph375 ]
  %1351 = trunc i64 %lowest_active_reg.0 to i32
  %1352 = add i32 %fail_stack.sroa.98.7.lcssa, 1
  %1353 = zext i32 %fail_stack.sroa.98.7.lcssa to i64
  %1354 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %1353
  %1355 = bitcast %union.fail_stack_elt* %1354 to i32*
  store i32 %1351, i32* %1355, align 4, !tbaa !15
  %1356 = trunc i64 %highest_active_reg.0 to i32
  %1357 = add i32 %fail_stack.sroa.98.7.lcssa, 2
  %1358 = zext i32 %1352 to i64
  %1359 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %1358
  %1360 = bitcast %union.fail_stack_elt* %1359 to i32*
  store i32 %1356, i32* %1360, align 4, !tbaa !15
  %1361 = add i32 %fail_stack.sroa.98.7.lcssa, 3
  %1362 = zext i32 %1357 to i64
  %1363 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %1362, i32 0
  store i8* null, i8** %1363, align 8, !tbaa !13
  %1364 = add i32 %fail_stack.sroa.98.7.lcssa, 4
  %1365 = zext i32 %1361 to i64
  %1366 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.8, i64 %1365, i32 0
  store i8* null, i8** %1366, align 8, !tbaa !13
  br label %.backedge257

; <label>:1367                                    ; preds = %443
  %1368 = getelementptr inbounds i8* %p.0, i64 3
  %1369 = load i8* %1368, align 1, !tbaa !12
  %1370 = zext i8 %1369 to i32
  %1371 = getelementptr inbounds i8* %p.0, i64 4
  %1372 = load i8* %1371, align 1, !tbaa !12
  %1373 = sext i8 %1372 to i32
  %1374 = shl nsw i32 %1373, 8
  %1375 = or i32 %1374, %1370
  %1376 = icmp sgt i32 %1375, 0
  br i1 %1376, label %1377, label %1383

; <label>:1377                                    ; preds = %1367
  %1378 = add nsw i32 %1375, -1
  %1379 = trunc i32 %1378 to i8
  store i8 %1379, i8* %1368, align 1, !tbaa !12
  %1380 = lshr i32 %1378, 8
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %1371, align 1, !tbaa !12
  %1382 = getelementptr inbounds i8* %p.0, i64 5
  br label %.backedge257

; <label>:1383                                    ; preds = %1367
  %1384 = icmp eq i32 %1375, 0
  br i1 %1384, label %1385, label %.backedge257

; <label>:1385                                    ; preds = %1383
  store i8 0, i8* %1368, align 1, !tbaa !12
  store i8 0, i8* %1371, align 1, !tbaa !12
  br label %966

; <label>:1386                                    ; preds = %443
  %1387 = getelementptr inbounds i8* %p.0, i64 3
  %1388 = load i8* %1387, align 1, !tbaa !12
  %1389 = zext i8 %1388 to i32
  %1390 = getelementptr inbounds i8* %p.0, i64 4
  %1391 = load i8* %1390, align 1, !tbaa !12
  %1392 = sext i8 %1391 to i32
  %1393 = shl nsw i32 %1392, 8
  %1394 = or i32 %1393, %1389
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1401, label %1396

; <label>:1396                                    ; preds = %1386
  %1397 = add nsw i32 %1394, -1
  %1398 = trunc i32 %1397 to i8
  store i8 %1398, i8* %1387, align 1, !tbaa !12
  %1399 = lshr i32 %1397, 8
  %1400 = trunc i32 %1399 to i8
  store i8 %1400, i8* %1390, align 1, !tbaa !12
  br label %.loopexit238

; <label>:1401                                    ; preds = %1386
  %1402 = getelementptr inbounds i8* %p.0, i64 5
  br label %.backedge257

; <label>:1403                                    ; preds = %443
  %1404 = load i8* %444, align 1, !tbaa !12
  %1405 = zext i8 %1404 to i32
  %1406 = getelementptr inbounds i8* %p.0, i64 2
  %1407 = load i8* %1406, align 1, !tbaa !12
  %1408 = sext i8 %1407 to i32
  %1409 = shl nsw i32 %1408, 8
  %1410 = or i32 %1409, %1405
  %1411 = getelementptr inbounds i8* %p.0, i64 3
  %addconv89 = add nsw i32 %1410, 3
  %.sum88 = sext i32 %addconv89 to i64
  %1412 = getelementptr inbounds i8* %p.0, i64 %.sum88
  store i8* %1412, i8** %p1, align 8, !tbaa !13
  %1413 = load i8* %1411, align 1, !tbaa !12
  %1414 = getelementptr inbounds i8* %p.0, i64 4
  %1415 = load i8* %1414, align 1, !tbaa !12
  %1416 = getelementptr inbounds i8* %p.0, i64 5
  store i8 %1413, i8* %1412, align 1, !tbaa !12
  %1417 = load i8** %p1, align 8, !tbaa !13
  %1418 = getelementptr inbounds i8* %1417, i64 1
  store i8 %1415, i8* %1418, align 1, !tbaa !12
  br label %.backedge257

; <label>:1419                                    ; preds = %443
  %notlhs167 = icmp eq i8* %d.0, %135
  %or.cond55.not = or i1 %notrhs168, %notlhs167
  %1420 = icmp eq i8* %d.0, %119
  %or.cond136 = or i1 %1420, %or.cond55.not
  br i1 %or.cond136, label %.backedge257, label %1421

; <label>:1421                                    ; preds = %1419
  %1422 = getelementptr inbounds i8* %d.0, i64 -1
  %1423 = icmp eq i8* %1422, %117
  br i1 %1423, label %1426, label %1424

; <label>:1424                                    ; preds = %1421
  %1425 = icmp eq i8* %d.0, %string1.string2
  %.647 = select i1 %1425, i8* %139, i8* %1422
  br label %1426

; <label>:1426                                    ; preds = %1424, %1421
  %.sink56.sink.in = phi i8* [ %string1.string2, %1421 ], [ %.647, %1424 ]
  %.sink56.sink = load i8* %.sink56.sink.in, align 1
  %1427 = sext i8 %.sink56.sink to i64
  %1428 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1427
  %1429 = load i8* %1428, align 1, !tbaa !12
  %1430 = icmp eq i8 %1429, 1
  %1431 = icmp eq i8* %d.0, %117
  br i1 %1431, label %1434, label %1432

; <label>:1432                                    ; preds = %1426
  %1433 = icmp eq i8* %d.0, %138
  %.d.0 = select i1 %1433, i8* %139, i8* %d.0
  br label %1434

; <label>:1434                                    ; preds = %1432, %1426
  %.sink57.sink.in = phi i8* [ %string1.string2, %1426 ], [ %.d.0, %1432 ]
  %.sink57.sink = load i8* %.sink57.sink.in, align 1
  %1435 = sext i8 %.sink57.sink to i64
  %1436 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1435
  %1437 = load i8* %1436, align 1, !tbaa !12
  %1438 = icmp eq i8 %1437, 1
  %1439 = xor i1 %1430, %1438
  br i1 %1439, label %.backedge257, label %bcmp_translate.exit.thread158.preheader

; <label>:1440                                    ; preds = %443
  %notlhs = icmp eq i8* %d.0, %135
  %or.cond59.not = or i1 %notrhs168, %notlhs
  %1441 = icmp eq i8* %d.0, %119
  %or.cond137 = or i1 %1441, %or.cond59.not
  br i1 %or.cond137, label %bcmp_translate.exit.thread158.preheader, label %1442

; <label>:1442                                    ; preds = %1440
  %1443 = getelementptr inbounds i8* %d.0, i64 -1
  %1444 = icmp eq i8* %1443, %117
  br i1 %1444, label %1447, label %1445

; <label>:1445                                    ; preds = %1442
  %1446 = icmp eq i8* %d.0, %string1.string2
  %.648 = select i1 %1446, i8* %139, i8* %1443
  br label %1447

; <label>:1447                                    ; preds = %1445, %1442
  %.sink60.sink.in = phi i8* [ %string1.string2, %1442 ], [ %.648, %1445 ]
  %.sink60.sink = load i8* %.sink60.sink.in, align 1
  %1448 = sext i8 %.sink60.sink to i64
  %1449 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1448
  %1450 = load i8* %1449, align 1, !tbaa !12
  %1451 = icmp eq i8 %1450, 1
  %1452 = icmp eq i8* %d.0, %117
  br i1 %1452, label %1455, label %1453

; <label>:1453                                    ; preds = %1447
  %1454 = icmp eq i8* %d.0, %138
  %.d.0649 = select i1 %1454, i8* %139, i8* %d.0
  br label %1455

; <label>:1455                                    ; preds = %1453, %1447
  %.sink61.sink.in = phi i8* [ %string1.string2, %1447 ], [ %.d.0649, %1453 ]
  %.sink61.sink = load i8* %.sink61.sink.in, align 1
  %1456 = sext i8 %.sink61.sink to i64
  %1457 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1456
  %1458 = load i8* %1457, align 1, !tbaa !12
  %1459 = icmp eq i8 %1458, 1
  %1460 = xor i1 %1451, %1459
  br i1 %1460, label %bcmp_translate.exit.thread158.preheader, label %.backedge257

; <label>:1461                                    ; preds = %443
  %1462 = icmp eq i8* %d.0, %117
  br i1 %1462, label %1465, label %1463

; <label>:1463                                    ; preds = %1461
  %1464 = icmp eq i8* %d.0, %138
  %.d.0650 = select i1 %1464, i8* %139, i8* %d.0
  br label %1465

; <label>:1465                                    ; preds = %1463, %1461
  %.sink62.sink.in = phi i8* [ %string1.string2, %1461 ], [ %.d.0650, %1463 ]
  %.sink62.sink = load i8* %.sink62.sink.in, align 1
  %1466 = sext i8 %.sink62.sink to i64
  %1467 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1466
  %1468 = load i8* %1467, align 1, !tbaa !12
  %1469 = icmp eq i8 %1468, 1
  br i1 %1469, label %1470, label %bcmp_translate.exit.thread158.preheader

; <label>:1470                                    ; preds = %1465
  %1471 = icmp ne i8* %d.0, %135
  %or.cond64 = and i1 %136, %1471
  br i1 %or.cond64, label %1472, label %.backedge257

; <label>:1472                                    ; preds = %1470
  %1473 = getelementptr inbounds i8* %d.0, i64 -1
  %1474 = icmp eq i8* %1473, %117
  br i1 %1474, label %1477, label %1475

; <label>:1475                                    ; preds = %1472
  %1476 = icmp eq i8* %d.0, %string1.string2
  %.651 = select i1 %1476, i8* %139, i8* %1473
  br label %1477

; <label>:1477                                    ; preds = %1475, %1472
  %.sink65.sink.in = phi i8* [ %string1.string2, %1472 ], [ %.651, %1475 ]
  %.sink65.sink = load i8* %.sink65.sink.in, align 1
  %1478 = sext i8 %.sink65.sink to i64
  %1479 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1478
  %1480 = load i8* %1479, align 1, !tbaa !12
  %1481 = icmp eq i8 %1480, 1
  br i1 %1481, label %bcmp_translate.exit.thread158.preheader, label %.backedge257

; <label>:1482                                    ; preds = %443
  %1483 = icmp ne i8* %d.0, %135
  %or.cond67 = and i1 %136, %1483
  br i1 %or.cond67, label %1484, label %bcmp_translate.exit.thread158.preheader

; <label>:1484                                    ; preds = %1482
  %1485 = getelementptr inbounds i8* %d.0, i64 -1
  %1486 = icmp eq i8* %1485, %117
  br i1 %1486, label %1489, label %1487

; <label>:1487                                    ; preds = %1484
  %1488 = icmp eq i8* %d.0, %string1.string2
  %.652 = select i1 %1488, i8* %139, i8* %1485
  br label %1489

; <label>:1489                                    ; preds = %1487, %1484
  %.sink68.sink.in = phi i8* [ %string1.string2, %1484 ], [ %.652, %1487 ]
  %.sink68.sink = load i8* %.sink68.sink.in, align 1
  %1490 = sext i8 %.sink68.sink to i64
  %1491 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1490
  %1492 = load i8* %1491, align 1, !tbaa !12
  %1493 = icmp eq i8 %1492, 1
  br i1 %1493, label %1494, label %bcmp_translate.exit.thread158.preheader

; <label>:1494                                    ; preds = %1489
  %1495 = icmp eq i8* %d.0, %117
  br i1 %1495, label %1498, label %1496

; <label>:1496                                    ; preds = %1494
  %1497 = icmp eq i8* %d.0, %138
  %.d.0653 = select i1 %1497, i8* %139, i8* %d.0
  br label %1498

; <label>:1498                                    ; preds = %1496, %1494
  %.sink69.sink.in = phi i8* [ %string1.string2, %1494 ], [ %.d.0653, %1496 ]
  %.sink69.sink = load i8* %.sink69.sink.in, align 1
  %1499 = sext i8 %.sink69.sink to i64
  %1500 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1499
  %1501 = load i8* %1500, align 1, !tbaa !12
  %1502 = icmp ne i8 %1501, 1
  %1503 = icmp eq i8* %d.0, %119
  %or.cond138 = or i1 %1503, %1502
  br i1 %or.cond138, label %.backedge257, label %bcmp_translate.exit.thread158.preheader

.preheader249:                                    ; preds = %443, %1505
  %dend.9 = phi i8* [ %end_match_2.0, %1505 ], [ %dend.0, %443 ]
  %d.9 = phi i8* [ %string1.string2, %1505 ], [ %d.0, %443 ]
  %1504 = icmp eq i8* %d.9, %dend.9
  br i1 %1504, label %1505, label %1507

; <label>:1505                                    ; preds = %.preheader249
  %1506 = icmp eq i8* %dend.9, %end_match_2.0
  br i1 %1506, label %bcmp_translate.exit.thread158.preheader, label %.preheader249

; <label>:1507                                    ; preds = %.preheader249
  %1508 = icmp eq i8* %d.9, %117
  br i1 %1508, label %1511, label %1509

; <label>:1509                                    ; preds = %1507
  %1510 = icmp eq i8* %d.9, %138
  %.d.9 = select i1 %1510, i8* %139, i8* %d.9
  br label %1511

; <label>:1511                                    ; preds = %1509, %1507
  %.sink70.sink.in = phi i8* [ %string1.string2, %1507 ], [ %.d.9, %1509 ]
  %.sink70.sink = load i8* %.sink70.sink.in, align 1
  %1512 = sext i8 %.sink70.sink to i64
  %1513 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1512
  %1514 = load i8* %1513, align 1, !tbaa !12
  %1515 = icmp eq i8 %1514, 1
  br i1 %1515, label %1516, label %bcmp_translate.exit.thread158.preheader

; <label>:1516                                    ; preds = %1511
  %1517 = icmp eq i32 %set_regs_matched_done.0, 0
  br i1 %1517, label %.preheader247, label %.loopexit248

.preheader247:                                    ; preds = %1516
  %1518 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br i1 %1518, label %.loopexit248, label %.lr.ph372

.lr.ph372:                                        ; preds = %.preheader247, %.lr.ph372
  %r20.0371 = phi i64 [ %1523, %.lr.ph372 ], [ %lowest_active_reg.0, %.preheader247 ]
  %1519 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r20.0371
  %1520 = bitcast %union.register_info_type* %1519 to i8*
  %1521 = load i8* %1520, align 4
  %1522 = or i8 %1521, 24
  store i8 %1522, i8* %1520, align 4
  %1523 = add i64 %r20.0371, 1
  %1524 = icmp ugt i64 %1523, %highest_active_reg.0
  br i1 %1524, label %.loopexit248, label %.lr.ph372

.loopexit248:                                     ; preds = %.lr.ph372, %.preheader247, %1516
  %set_regs_matched_done.5 = phi i32 [ %set_regs_matched_done.0, %1516 ], [ 1, %.preheader247 ], [ 1, %.lr.ph372 ]
  %1525 = getelementptr inbounds i8* %d.9, i64 1
  br label %.backedge257

.preheader253:                                    ; preds = %443, %1527
  %dend.10 = phi i8* [ %end_match_2.0, %1527 ], [ %dend.0, %443 ]
  %d.10 = phi i8* [ %string1.string2, %1527 ], [ %d.0, %443 ]
  %1526 = icmp eq i8* %d.10, %dend.10
  br i1 %1526, label %1527, label %1529

; <label>:1527                                    ; preds = %.preheader253
  %1528 = icmp eq i8* %dend.10, %end_match_2.0
  br i1 %1528, label %bcmp_translate.exit.thread158.preheader, label %.preheader253

; <label>:1529                                    ; preds = %.preheader253
  %1530 = icmp eq i8* %d.10, %117
  br i1 %1530, label %1533, label %1531

; <label>:1531                                    ; preds = %1529
  %1532 = icmp eq i8* %d.10, %138
  %.d.10 = select i1 %1532, i8* %139, i8* %d.10
  br label %1533

; <label>:1533                                    ; preds = %1531, %1529
  %.sink71.sink.in = phi i8* [ %string1.string2, %1529 ], [ %.d.10, %1531 ]
  %.sink71.sink = load i8* %.sink71.sink.in, align 1
  %1534 = sext i8 %.sink71.sink to i64
  %1535 = getelementptr inbounds [256 x i8]* @re_syntax_table, i64 0, i64 %1534
  %1536 = load i8* %1535, align 1, !tbaa !12
  %1537 = icmp eq i8 %1536, 1
  br i1 %1537, label %bcmp_translate.exit.thread158.preheader, label %1538

; <label>:1538                                    ; preds = %1533
  %1539 = icmp eq i32 %set_regs_matched_done.0, 0
  br i1 %1539, label %.preheader251, label %.loopexit252

.preheader251:                                    ; preds = %1538
  %1540 = icmp ult i64 %highest_active_reg.0, %lowest_active_reg.0
  br i1 %1540, label %.loopexit252, label %.lr.ph370

.lr.ph370:                                        ; preds = %.preheader251, %.lr.ph370
  %r21.0369 = phi i64 [ %1545, %.lr.ph370 ], [ %lowest_active_reg.0, %.preheader251 ]
  %1541 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %r21.0369
  %1542 = bitcast %union.register_info_type* %1541 to i8*
  %1543 = load i8* %1542, align 4
  %1544 = or i8 %1543, 24
  store i8 %1544, i8* %1542, align 4
  %1545 = add i64 %r21.0369, 1
  %1546 = icmp ugt i64 %1545, %highest_active_reg.0
  br i1 %1546, label %.loopexit252, label %.lr.ph370

.loopexit252:                                     ; preds = %.lr.ph370, %.preheader251, %1538
  %set_regs_matched_done.6 = phi i32 [ %set_regs_matched_done.0, %1538 ], [ 1, %.preheader251 ], [ 1, %.lr.ph370 ]
  %1547 = getelementptr inbounds i8* %d.10, i64 1
  br label %.backedge257

; <label>:1548                                    ; preds = %443
  tail call void @abort() #9
  unreachable

bcmp_translate.exit.thread158.preheader:          ; preds = %1527, %1505, %535, %495, %461, %477, %.lr.ph437, %459, %475, %855, %829, %.lr.ph.i, %779, %518, %507, %806, %799, %874, %878, %887, %890, %893, %895, %1434, %1455, %1477, %1465, %1482, %1489, %1511, %1533, %883, %870, %558, %1440, %1498
  %fail_stack.sroa.0.9.ph = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.0, %1498 ], [ %fail_stack.sroa.0.0, %507 ], [ %fail_stack.sroa.0.0, %518 ], [ %fail_stack.sroa.0.0, %558 ], [ %fail_stack.sroa.0.3, %779 ], [ %fail_stack.sroa.0.0, %806 ], [ %fail_stack.sroa.0.0, %799 ], [ %fail_stack.sroa.0.0, %870 ], [ %fail_stack.sroa.0.0, %874 ], [ %fail_stack.sroa.0.0, %878 ], [ %fail_stack.sroa.0.0, %887 ], [ %fail_stack.sroa.0.0, %890 ], [ %fail_stack.sroa.0.0, %883 ], [ %fail_stack.sroa.0.0, %893 ], [ %fail_stack.sroa.0.0, %895 ], [ %fail_stack.sroa.0.0, %1434 ], [ %fail_stack.sroa.0.0, %1440 ], [ %fail_stack.sroa.0.0, %1455 ], [ %fail_stack.sroa.0.0, %1465 ], [ %fail_stack.sroa.0.0, %1477 ], [ %fail_stack.sroa.0.0, %1482 ], [ %fail_stack.sroa.0.0, %1489 ], [ %fail_stack.sroa.0.0, %1511 ], [ %fail_stack.sroa.0.0, %1533 ], [ %fail_stack.sroa.0.0, %.lr.ph.i ], [ %fail_stack.sroa.0.0, %829 ], [ %fail_stack.sroa.0.0, %855 ], [ %fail_stack.sroa.0.0, %475 ], [ %fail_stack.sroa.0.0, %459 ], [ %fail_stack.sroa.0.0, %.lr.ph437 ], [ %fail_stack.sroa.0.0, %477 ], [ %fail_stack.sroa.0.0, %461 ], [ %fail_stack.sroa.0.0, %495 ], [ %fail_stack.sroa.0.0, %535 ], [ %fail_stack.sroa.0.0, %1505 ], [ %fail_stack.sroa.0.0, %1527 ]
  %best_regs_set.1.ph = phi i32 [ %best_regs_set.0, %1498 ], [ %best_regs_set.0, %507 ], [ %best_regs_set.0, %518 ], [ %best_regs_set.0, %558 ], [ %best_regs_set.0, %779 ], [ %best_regs_set.0, %806 ], [ %best_regs_set.0, %799 ], [ %best_regs_set.0, %870 ], [ %best_regs_set.0, %874 ], [ %best_regs_set.0, %878 ], [ %best_regs_set.0, %887 ], [ %best_regs_set.0, %890 ], [ %best_regs_set.0, %883 ], [ %best_regs_set.0, %893 ], [ %best_regs_set.0, %895 ], [ %best_regs_set.0, %1434 ], [ %best_regs_set.0, %1440 ], [ %best_regs_set.0, %1455 ], [ %best_regs_set.0, %1465 ], [ %best_regs_set.0, %1477 ], [ %best_regs_set.0, %1482 ], [ %best_regs_set.0, %1489 ], [ %best_regs_set.0, %1511 ], [ %best_regs_set.0, %1533 ], [ %best_regs_set.0, %.lr.ph.i ], [ %best_regs_set.0, %829 ], [ %best_regs_set.0, %855 ], [ %best_regs_set.0, %475 ], [ %best_regs_set.0, %459 ], [ 1, %.lr.ph437 ], [ %best_regs_set.0, %477 ], [ %best_regs_set.0, %461 ], [ %best_regs_set.0, %495 ], [ %best_regs_set.0, %535 ], [ %best_regs_set.0, %1505 ], [ %best_regs_set.0, %1527 ]
  %match_end.2.ph = phi i8* [ %match_end.0, %1498 ], [ %match_end.0, %507 ], [ %match_end.0, %518 ], [ %match_end.0, %558 ], [ %match_end.0, %779 ], [ %match_end.0, %806 ], [ %match_end.0, %799 ], [ %match_end.0, %870 ], [ %match_end.0, %874 ], [ %match_end.0, %878 ], [ %match_end.0, %887 ], [ %match_end.0, %890 ], [ %match_end.0, %883 ], [ %match_end.0, %893 ], [ %match_end.0, %895 ], [ %match_end.0, %1434 ], [ %match_end.0, %1440 ], [ %match_end.0, %1455 ], [ %match_end.0, %1465 ], [ %match_end.0, %1477 ], [ %match_end.0, %1482 ], [ %match_end.0, %1489 ], [ %match_end.0, %1511 ], [ %match_end.0, %1533 ], [ %match_end.0, %.lr.ph.i ], [ %match_end.0, %829 ], [ %match_end.0, %855 ], [ %match_end.0, %475 ], [ %match_end.0, %459 ], [ %d.0, %.lr.ph437 ], [ %match_end.0, %477 ], [ %match_end.0, %461 ], [ %match_end.0, %495 ], [ %match_end.0, %535 ], [ %match_end.0, %1505 ], [ %match_end.0, %1527 ]
  %fail_stack.sroa.72.12.ph = phi i32 [ %fail_stack.sroa.72.0, %1498 ], [ %fail_stack.sroa.72.0, %507 ], [ %fail_stack.sroa.72.0, %518 ], [ %fail_stack.sroa.72.0, %558 ], [ %fail_stack.sroa.72.1, %779 ], [ %fail_stack.sroa.72.0, %806 ], [ %fail_stack.sroa.72.0, %799 ], [ %fail_stack.sroa.72.0, %870 ], [ %fail_stack.sroa.72.0, %874 ], [ %fail_stack.sroa.72.0, %878 ], [ %fail_stack.sroa.72.0, %887 ], [ %fail_stack.sroa.72.0, %890 ], [ %fail_stack.sroa.72.0, %883 ], [ %fail_stack.sroa.72.0, %893 ], [ %fail_stack.sroa.72.0, %895 ], [ %fail_stack.sroa.72.0, %1434 ], [ %fail_stack.sroa.72.0, %1440 ], [ %fail_stack.sroa.72.0, %1455 ], [ %fail_stack.sroa.72.0, %1465 ], [ %fail_stack.sroa.72.0, %1477 ], [ %fail_stack.sroa.72.0, %1482 ], [ %fail_stack.sroa.72.0, %1489 ], [ %fail_stack.sroa.72.0, %1511 ], [ %fail_stack.sroa.72.0, %1533 ], [ %fail_stack.sroa.72.0, %.lr.ph.i ], [ %fail_stack.sroa.72.0, %829 ], [ %fail_stack.sroa.72.0, %855 ], [ %fail_stack.sroa.72.0, %475 ], [ %fail_stack.sroa.72.0, %459 ], [ %fail_stack.sroa.72.0, %.lr.ph437 ], [ %fail_stack.sroa.72.0, %477 ], [ %fail_stack.sroa.72.0, %461 ], [ %fail_stack.sroa.72.0, %495 ], [ %fail_stack.sroa.72.0, %535 ], [ %fail_stack.sroa.72.0, %1505 ], [ %fail_stack.sroa.72.0, %1527 ]
  %fail_stack.sroa.98.8.ph = phi i32 [ %fail_stack.sroa.98.0, %1498 ], [ %fail_stack.sroa.98.0, %507 ], [ %fail_stack.sroa.98.0, %518 ], [ %fail_stack.sroa.98.0, %558 ], [ %796, %779 ], [ %fail_stack.sroa.98.0, %806 ], [ %fail_stack.sroa.98.0, %799 ], [ %fail_stack.sroa.98.0, %870 ], [ %fail_stack.sroa.98.0, %874 ], [ %fail_stack.sroa.98.0, %878 ], [ %fail_stack.sroa.98.0, %887 ], [ %fail_stack.sroa.98.0, %890 ], [ %fail_stack.sroa.98.0, %883 ], [ %fail_stack.sroa.98.0, %893 ], [ %fail_stack.sroa.98.0, %895 ], [ %fail_stack.sroa.98.0, %1434 ], [ %fail_stack.sroa.98.0, %1440 ], [ %fail_stack.sroa.98.0, %1455 ], [ %fail_stack.sroa.98.0, %1465 ], [ %fail_stack.sroa.98.0, %1477 ], [ %fail_stack.sroa.98.0, %1482 ], [ %fail_stack.sroa.98.0, %1489 ], [ %fail_stack.sroa.98.0, %1511 ], [ %fail_stack.sroa.98.0, %1533 ], [ %fail_stack.sroa.98.0, %.lr.ph.i ], [ %fail_stack.sroa.98.0, %829 ], [ %fail_stack.sroa.98.0, %855 ], [ %fail_stack.sroa.98.0, %475 ], [ %fail_stack.sroa.98.0, %459 ], [ %fail_stack.sroa.98.0, %.lr.ph437 ], [ %fail_stack.sroa.98.0, %477 ], [ %fail_stack.sroa.98.0, %461 ], [ %fail_stack.sroa.98.0, %495 ], [ %fail_stack.sroa.98.0, %535 ], [ %fail_stack.sroa.98.0, %1505 ], [ %fail_stack.sroa.98.0, %1527 ]
  %dend.11.ph = phi i8* [ %dend.0, %1498 ], [ %dend.5, %507 ], [ %dend.5, %518 ], [ %dend.6, %558 ], [ %dend.0, %779 ], [ %dend.0, %806 ], [ %dend.0, %799 ], [ %dend.0, %870 ], [ %dend.0, %874 ], [ %dend.0, %878 ], [ %dend.0, %887 ], [ %dend.0, %890 ], [ %dend.0, %883 ], [ %dend.0, %893 ], [ %dend.0, %895 ], [ %dend.0, %1434 ], [ %dend.0, %1440 ], [ %dend.0, %1455 ], [ %dend.0, %1465 ], [ %dend.0, %1477 ], [ %dend.0, %1482 ], [ %dend.0, %1489 ], [ %dend.9, %1511 ], [ %dend.10, %1533 ], [ %dend.8, %.lr.ph.i ], [ %end_match_2.0, %829 ], [ %dend.8, %855 ], [ %end_match_2.0, %475 ], [ %end_match_2.0, %459 ], [ %dend.0, %.lr.ph437 ], [ %dend.3, %477 ], [ %dend.2, %461 ], [ %end_match_2.0, %495 ], [ %end_match_2.0, %535 ], [ %end_match_2.0, %1505 ], [ %end_match_2.0, %1527 ]
  %d.11.ph = phi i8* [ %d.0, %1498 ], [ %d.5, %507 ], [ %d.5, %518 ], [ %d.6, %558 ], [ %d.0, %779 ], [ %d.0, %806 ], [ %d.0, %799 ], [ %d.0, %870 ], [ %d.0, %874 ], [ %d.0, %878 ], [ %d.0, %887 ], [ %d.0, %890 ], [ %119, %883 ], [ %d.0, %893 ], [ %d.0, %895 ], [ %d.0, %1434 ], [ %d.0, %1440 ], [ %d.0, %1455 ], [ %d.0, %1465 ], [ %d.0, %1477 ], [ %d.0, %1482 ], [ %d.0, %1489 ], [ %d.9, %1511 ], [ %d.10, %1533 ], [ %d.8, %.lr.ph.i ], [ %end_match_2.0, %829 ], [ %d.8, %855 ], [ %end_match_2.0, %475 ], [ %end_match_2.0, %459 ], [ %d.0, %.lr.ph437 ], [ %478, %477 ], [ %462, %461 ], [ %end_match_2.0, %495 ], [ %end_match_2.0, %535 ], [ %end_match_2.0, %1505 ], [ %end_match_2.0, %1527 ]
  %1549 = icmp eq i32 %fail_stack.sroa.98.8.ph, 0
  br i1 %1549, label %bcmp_translate.exit.thread158.preheader._crit_edge, label %.lr.ph446

.lr.ph446:                                        ; preds = %.preheader199, %156, %bcmp_translate.exit.thread158.preheader
  %d.11.ph645 = phi i8* [ %d.11.ph, %bcmp_translate.exit.thread158.preheader ], [ %d.0, %156 ], [ %d.0, %.preheader199 ]
  %dend.11.ph644 = phi i8* [ %dend.11.ph, %bcmp_translate.exit.thread158.preheader ], [ %dend.0, %156 ], [ %dend.0, %.preheader199 ]
  %fail_stack.sroa.98.8.ph643 = phi i32 [ %fail_stack.sroa.98.8.ph, %bcmp_translate.exit.thread158.preheader ], [ %fail_stack.sroa.98.0, %156 ], [ %fail_stack.sroa.98.0, %.preheader199 ]
  %fail_stack.sroa.72.12.ph642 = phi i32 [ %fail_stack.sroa.72.12.ph, %bcmp_translate.exit.thread158.preheader ], [ %fail_stack.sroa.72.0, %156 ], [ %fail_stack.sroa.72.0, %.preheader199 ]
  %match_end.2.ph641 = phi i8* [ %match_end.2.ph, %bcmp_translate.exit.thread158.preheader ], [ %match_end.0, %156 ], [ %d.0, %.preheader199 ]
  %best_regs_set.1.ph639 = phi i32 [ %best_regs_set.1.ph, %bcmp_translate.exit.thread158.preheader ], [ %best_regs_set.0, %156 ], [ 1, %.preheader199 ]
  %fail_stack.sroa.0.9.ph636 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.9.ph, %bcmp_translate.exit.thread158.preheader ], [ %fail_stack.sroa.0.0, %156 ], [ %fail_stack.sroa.0.0, %.preheader199 ]
  br label %1550

; <label>:1550                                    ; preds = %.lr.ph446, %bcmp_translate.exit.thread158.backedge
  %d.11445 = phi i8* [ %d.11.ph645, %.lr.ph446 ], [ %d.11., %bcmp_translate.exit.thread158.backedge ]
  %fail_stack.sroa.98.8444 = phi i32 [ %fail_stack.sroa.98.8.ph643, %.lr.ph446 ], [ %fail_stack.sroa.98.9.lcssa, %bcmp_translate.exit.thread158.backedge ]
  %1551 = add i32 %fail_stack.sroa.98.8444, -1
  %1552 = zext i32 %1551 to i64
  %1553 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph636, i64 %1552, i32 0
  %1554 = load i8** %1553, align 8, !tbaa !13
  %1555 = icmp eq i8* %1554, null
  %d.11. = select i1 %1555, i8* %d.11445, i8* %1554
  %1556 = add i32 %fail_stack.sroa.98.8444, -2
  %1557 = zext i32 %1556 to i64
  %1558 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph636, i64 %1557, i32 0
  %1559 = load i8** %1558, align 8, !tbaa !13
  %1560 = add i32 %fail_stack.sroa.98.8444, -3
  %1561 = zext i32 %1560 to i64
  %1562 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph636, i64 %1561
  %1563 = bitcast %union.fail_stack_elt* %1562 to i32*
  %1564 = load i32* %1563, align 4, !tbaa !15
  %1565 = sext i32 %1564 to i64
  %1566 = add i32 %fail_stack.sroa.98.8444, -4
  %1567 = zext i32 %1566 to i64
  %1568 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph636, i64 %1567
  %1569 = bitcast %union.fail_stack_elt* %1568 to i32*
  %1570 = load i32* %1569, align 4, !tbaa !15
  %1571 = sext i32 %1570 to i64
  %1572 = icmp ult i32 %1564, %1570
  br i1 %1572, label %._crit_edge442, label %.lr.ph441

.lr.ph441:                                        ; preds = %1550, %.lr.ph441
  %this_reg22.0439 = phi i64 [ %1594, %.lr.ph441 ], [ %1565, %1550 ]
  %fail_stack.sroa.98.9438 = phi i32 [ %1587, %.lr.ph441 ], [ %1566, %1550 ]
  %1573 = getelementptr inbounds %union.register_info_type* %reg_info.0, i64 %this_reg22.0439, i32 0
  %1574 = add i32 %fail_stack.sroa.98.9438, -1
  %1575 = zext i32 %1574 to i64
  %1576 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph636, i64 %1575
  %1577 = bitcast %union.fail_stack_elt* %1576 to i64*
  %1578 = load i64* %1577, align 8
  %1579 = bitcast %union.fail_stack_elt* %1573 to i64*
  store i64 %1578, i64* %1579, align 8
  %1580 = add i32 %fail_stack.sroa.98.9438, -2
  %1581 = zext i32 %1580 to i64
  %1582 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph636, i64 %1581, i32 0
  %1583 = bitcast i8** %1582 to i64*
  %1584 = load i64* %1583, align 8, !tbaa !13
  %1585 = getelementptr inbounds i8** %regend.0, i64 %this_reg22.0439
  %1586 = bitcast i8** %1585 to i64*
  store i64 %1584, i64* %1586, align 8, !tbaa !13
  %1587 = add i32 %fail_stack.sroa.98.9438, -3
  %1588 = zext i32 %1587 to i64
  %1589 = getelementptr inbounds %union.fail_stack_elt* %fail_stack.sroa.0.9.ph636, i64 %1588, i32 0
  %1590 = bitcast i8** %1589 to i64*
  %1591 = load i64* %1590, align 8, !tbaa !13
  %1592 = getelementptr inbounds i8** %regstart.0, i64 %this_reg22.0439
  %1593 = bitcast i8** %1592 to i64*
  store i64 %1591, i64* %1593, align 8, !tbaa !13
  %1594 = add i64 %this_reg22.0439, -1
  %1595 = icmp ult i64 %1594, %1571
  br i1 %1595, label %._crit_edge442, label %.lr.ph441

._crit_edge442:                                   ; preds = %.lr.ph441, %1550
  %fail_stack.sroa.98.9.lcssa = phi i32 [ %1566, %1550 ], [ %1587, %.lr.ph441 ]
  %1596 = icmp eq i8* %1559, null
  br i1 %1596, label %bcmp_translate.exit.thread158.backedge, label %1597

; <label>:1597                                    ; preds = %._crit_edge442
  %1598 = icmp ult i8* %1559, %5
  br i1 %1598, label %1599, label %.thread164

; <label>:1599                                    ; preds = %1597
  %1600 = load i8* %1559, align 1, !tbaa !12
  %1601 = zext i8 %1600 to i32
  %switch.tableidx140 = add nsw i32 %1601, -13
  %1602 = icmp ult i32 %switch.tableidx140, 10
  br i1 %1602, label %switch.hole_check141, label %.thread164

switch.hole_check141:                             ; preds = %1599
  %switch.maskindex143 = trunc i32 %switch.tableidx140 to i16
  %switch.shifted144 = lshr i16 561, %switch.maskindex143
  %1603 = and i16 %switch.shifted144, 1
  %switch.lobit145 = icmp eq i16 %1603, 0
  br i1 %switch.lobit145, label %.thread164, label %switch.lookup142

switch.lookup142:                                 ; preds = %switch.hole_check141
  %switch.cast146 = trunc i32 %switch.tableidx140 to i10
  %switch.downshift148 = lshr i10 -50, %switch.cast146
  %1604 = and i10 %switch.downshift148, 1
  %switch.masked149 = icmp eq i10 %1604, 0
  %1605 = getelementptr inbounds i8* %1559, i64 1
  %1606 = load i8* %1605, align 1, !tbaa !12
  %1607 = zext i8 %1606 to i32
  %1608 = getelementptr inbounds i8* %1559, i64 2
  %1609 = load i8* %1608, align 1, !tbaa !12
  %1610 = sext i8 %1609 to i32
  %1611 = shl nsw i32 %1610, 8
  %1612 = or i32 %1611, %1607
  %addconv = add nsw i32 %1612, 3
  %.sum77 = sext i32 %addconv to i64
  %1613 = getelementptr inbounds i8* %1559, i64 %.sum77
  store i8* %1613, i8** %p1, align 8, !tbaa !13
  %1614 = load i8* %1613, align 1, !tbaa !12
  br i1 %switch.masked149, label %.critedge150, label %1615

; <label>:1615                                    ; preds = %switch.lookup142
  %1616 = icmp eq i8 %1614, 21
  br i1 %1616, label %bcmp_translate.exit.thread158.backedge, label %.thread164

.critedge150:                                     ; preds = %switch.lookup142
  %1617 = icmp eq i8 %1614, 15
  br i1 %1617, label %bcmp_translate.exit.thread158.backedge, label %.thread164

bcmp_translate.exit.thread158.backedge:           ; preds = %.critedge150, %1615, %._crit_edge442
  %1618 = icmp eq i32 %fail_stack.sroa.98.9.lcssa, 0
  br i1 %1618, label %bcmp_translate.exit.thread158.preheader._crit_edge, label %1550

.thread164:                                       ; preds = %switch.hole_check141, %1615, %1599, %.critedge150, %1597
  %1619 = icmp ult i8* %d.11., %.string1
  %1620 = icmp ugt i8* %d.11., %117
  %or.cond151 = or i1 %1619, %1620
  %dend.11.end_match_1.0 = select i1 %or.cond151, i8* %dend.11.ph644, i8* %end_match_1.0
  br label %.backedge257

bcmp_translate.exit.thread158.preheader._crit_edge: ; preds = %bcmp_translate.exit.thread158.preheader, %bcmp_translate.exit.thread158.backedge
  %match_end.2.ph640 = phi i8* [ %match_end.2.ph641, %bcmp_translate.exit.thread158.backedge ], [ %match_end.2.ph, %bcmp_translate.exit.thread158.preheader ]
  %best_regs_set.1.ph638 = phi i32 [ %best_regs_set.1.ph639, %bcmp_translate.exit.thread158.backedge ], [ %best_regs_set.1.ph, %bcmp_translate.exit.thread158.preheader ]
  %fail_stack.sroa.0.9.ph637 = phi %union.fail_stack_elt* [ %fail_stack.sroa.0.9.ph636, %bcmp_translate.exit.thread158.backedge ], [ %fail_stack.sroa.0.9.ph, %bcmp_translate.exit.thread158.preheader ]
  %1621 = icmp eq i32 %best_regs_set.1.ph638, 0
  br i1 %1621, label %1622, label %171

; <label>:1622                                    ; preds = %bcmp_translate.exit.thread158.preheader._crit_edge
  %1623 = bitcast %union.fail_stack_elt* %fail_stack.sroa.0.9.ph637 to i8*
  tail call void @free(i8* %1623) #8
  %1624 = icmp eq i8** %regstart.0, null
  br i1 %1624, label %1627, label %1625

; <label>:1625                                    ; preds = %1622
  %1626 = bitcast i8** %regstart.0 to i8*
  tail call void @free(i8* %1626) #8
  br label %1627

; <label>:1627                                    ; preds = %1622, %1625
  %1628 = icmp eq i8** %regend.0, null
  br i1 %1628, label %1631, label %1629

; <label>:1629                                    ; preds = %1627
  %1630 = bitcast i8** %regend.0 to i8*
  tail call void @free(i8* %1630) #8
  br label %1631

; <label>:1631                                    ; preds = %1627, %1629
  %1632 = icmp eq i8** %old_regstart.0, null
  br i1 %1632, label %1635, label %1633

; <label>:1633                                    ; preds = %1631
  %1634 = bitcast i8** %old_regstart.0 to i8*
  tail call void @free(i8* %1634) #8
  br label %1635

; <label>:1635                                    ; preds = %1631, %1633
  %1636 = icmp eq i8** %old_regend.0, null
  br i1 %1636, label %1639, label %1637

; <label>:1637                                    ; preds = %1635
  %1638 = bitcast i8** %old_regend.0 to i8*
  tail call void @free(i8* %1638) #8
  br label %1639

; <label>:1639                                    ; preds = %1635, %1637
  %1640 = icmp eq i8** %best_regstart.0, null
  br i1 %1640, label %1643, label %1641

; <label>:1641                                    ; preds = %1639
  %1642 = bitcast i8** %best_regstart.0 to i8*
  tail call void @free(i8* %1642) #8
  br label %1643

; <label>:1643                                    ; preds = %1639, %1641
  %1644 = icmp eq i8** %best_regend.0, null
  br i1 %1644, label %1647, label %1645

; <label>:1645                                    ; preds = %1643
  %1646 = bitcast i8** %best_regend.0 to i8*
  tail call void @free(i8* %1646) #8
  br label %1647

; <label>:1647                                    ; preds = %1643, %1645
  %1648 = icmp eq %union.register_info_type* %reg_info.0, null
  br i1 %1648, label %1651, label %1649

; <label>:1649                                    ; preds = %1647
  %1650 = bitcast %union.register_info_type* %reg_info.0 to i8*
  tail call void @free(i8* %1650) #8
  br label %1651

; <label>:1651                                    ; preds = %1647, %1649
  %1652 = icmp eq i8** %reg_dummy.0, null
  br i1 %1652, label %1655, label %1653

; <label>:1653                                    ; preds = %1651
  %1654 = bitcast i8** %reg_dummy.0 to i8*
  tail call void @free(i8* %1654) #8
  br label %1655

; <label>:1655                                    ; preds = %1651, %1653
  %1656 = icmp eq %union.register_info_type* %reg_info_dummy.0, null
  br i1 %1656, label %.loopexit220, label %1657

; <label>:1657                                    ; preds = %1655
  %1658 = bitcast %union.register_info_type* %reg_info_dummy.0 to i8*
  tail call void @free(i8* %1658) #8
  br label %.loopexit220

.loopexit220:                                     ; preds = %1320, %1316, %1264, %1260, %1007, %1003, %918, %914, %748, %744, %1657, %1655, %441, %439, %311, %309, %246, %244, %102, %100, %61, %62, %0
  %.0 = phi i32 [ -2, %0 ], [ -2, %62 ], [ -2, %61 ], [ -1, %100 ], [ -1, %102 ], [ -2, %244 ], [ -2, %246 ], [ -2, %309 ], [ -2, %311 ], [ %406, %439 ], [ %406, %441 ], [ -1, %1655 ], [ -1, %1657 ], [ -2, %744 ], [ -2, %748 ], [ -2, %914 ], [ -2, %918 ], [ -2, %1003 ], [ -2, %1007 ], [ -2, %1260 ], [ -2, %1264 ], [ -2, %1316 ], [ -2, %1320 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @re_match(%struct.re_pattern_buffer* nocapture %bufp, i8* %string, i32 %size, i32 %pos, %struct.re_registers* %regs) #0 {
  %1 = tail call fastcc i32 @re_match_2_internal(%struct.re_pattern_buffer* %bufp, i8* null, i32 0, i8* %string, i32 %size, i32 %pos, %struct.re_registers* %regs, i32 %size) #8
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @re_match_2(%struct.re_pattern_buffer* nocapture %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %pos, %struct.re_registers* %regs, i32 %stop) #0 {
  %1 = tail call fastcc i32 @re_match_2_internal(%struct.re_pattern_buffer* %bufp, i8* %string1, i32 %size1, i8* %string2, i32 %size2, i32 %pos, %struct.re_registers* %regs, i32 %stop) #8
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i8* @re_compile_pattern(i8* %pattern, i64 %length, %struct.re_pattern_buffer* %bufp) #0 {
  %1 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7
  %2 = load i8* %1, align 8
  %3 = and i8 %2, 105
  %4 = or i8 %3, -128
  store i8 %4, i8* %1, align 8
  %5 = load i64* @re_syntax_options, align 8, !tbaa !2
  %6 = tail call fastcc i32 @regex_compile(i8* %pattern, i64 %length, i64 %5, %struct.re_pattern_buffer* %bufp) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

; <label>:8                                       ; preds = %0
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [17 x i64]* @re_error_msgid_idx, i64 0, i64 %9
  %11 = load i64* %10, align 8, !tbaa !2
  %12 = getelementptr inbounds [369 x i8]* @re_error_msgid, i64 0, i64 %11
  br label %13

; <label>:13                                      ; preds = %0, %8
  %.0 = phi i8* [ %12, %8 ], [ null, %0 ]
  ret i8* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @regex_compile(i8* %pattern, i64 %size, i64 %syntax, %struct.re_pattern_buffer* %bufp) #0 {
  %p = alloca i8*, align 8
  %str = alloca [7 x i8], align 1
  store i8* %pattern, i8** %p, align 8, !tbaa !13
  %1 = getelementptr inbounds i8* %pattern, i64 %size
  %2 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 5
  %3 = load i8** %2, align 8, !tbaa !16
  %4 = tail call i8* @malloc(i64 1280) #7
  %5 = bitcast i8* %4 to %struct.compile_stack_elt_t*
  %6 = icmp eq i8* %4, null
  br i1 %6, label %.loopexit, label %7

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 3
  store i64 %syntax, i64* %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 7
  %10 = load i8* %9, align 8
  %11 = and i8 %10, -105
  store i8 %11, i8* %9, align 8
  %12 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 2
  store i64 0, i64* %12, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 6
  store i64 0, i64* %13, align 8, !tbaa !17
  %.b.i = load i1* @init_syntax_once.done, align 1
  br i1 %.b.i, label %init_syntax_once.exit, label %.preheader1.i

.preheader1.i:                                    ; preds = %7
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 0), i8 0, i64 256, i32 16, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 97), i8 1, i64 26, i32 1, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 65), i8 1, i64 26, i32 1, i1 false) #6
  tail call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 48), i8 1, i64 10, i32 16, i1 false) #6
  store i8 1, i8* getelementptr inbounds ([256 x i8]* @re_syntax_table, i64 0, i64 95), align 1, !tbaa !12
  store i1 true, i1* @init_syntax_once.done, align 1
  br label %init_syntax_once.exit

init_syntax_once.exit:                            ; preds = %7, %.preheader1.i
  %14 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 1
  %15 = load i64* %14, align 8, !tbaa !22
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.re_pattern_buffer* %bufp, i64 0, i32 0
  %18 = load i8** %17, align 8, !tbaa !10
  br i1 %16, label %19, label %init_syntax_once.exit._crit_edge

; <label>:19                                      ; preds = %init_syntax_once.exit
  %20 = icmp eq i8* %18, null
  br i1 %20, label %23, label %21

; <label>:21                                      ; preds = %19
  %22 = tail call i8* @realloc(i8* %18, i64 32) #7
  br label %25

; <label>:23                                      ; preds = %19
  %24 = tail call i8* @malloc(i64 32) #7
  br label %25

; <label>:25                                      ; preds = %23, %21
  %storemerge76 = phi i8* [ %24, %23 ], [ %22, %21 ]
  store i8* %storemerge76, i8** %17, align 8, !tbaa !10
  %26 = icmp eq i8* %storemerge76, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %25
  tail call void @free(i8* %4) #8
  br label %.loopexit

; <label>:28                                      ; preds = %25
  store i64 32, i64* %14, align 8, !tbaa !22
  br label %init_syntax_once.exit._crit_edge

init_syntax_once.exit._crit_edge:                 ; preds = %init_syntax_once.exit, %28
  %29 = phi i8* [ %storemerge76, %28 ], [ %18, %init_syntax_once.exit ]
  %30 = icmp eq i64 %size, 0
  br i1 %30, label %.thread1656, label %.lr.ph1153

.lr.ph1153:                                       ; preds = %init_syntax_once.exit._crit_edge
  %31 = icmp ne i8* %3, null
  %32 = and i64 %syntax, 2
  %33 = icmp eq i64 %32, 0
  %34 = and i64 %syntax, 512
  %35 = icmp eq i64 %34, 0
  %36 = and i64 %syntax, 4096
  %37 = icmp eq i64 %36, 0
  %38 = and i64 %syntax, 8
  %39 = icmp eq i64 %38, 0
  %40 = and i64 %syntax, 8192
  %41 = and i64 %syntax, 32768
  %42 = icmp eq i64 %40, 0
  %43 = icmp eq i64 %41, 0
  %44 = and i64 %syntax, 1026
  %45 = icmp eq i64 %44, 0
  %46 = and i64 %syntax, 32
  %47 = icmp eq i64 %46, 0
  %48 = and i64 %syntax, 16
  %49 = icmp eq i64 %48, 0
  %50 = getelementptr inbounds i8* %3, i64 46
  %51 = getelementptr inbounds i8* %3, i64 10
  %52 = and i64 %syntax, 64
  %53 = icmp eq i64 %52, 0
  %54 = and i64 %syntax, 256
  %55 = icmp eq i64 %54, 0
  %56 = and i64 %syntax, 1
  %57 = icmp ne i64 %56, 0
  %58 = and i64 %syntax, 4
  %59 = icmp ne i64 %58, 0
  %60 = getelementptr inbounds [7 x i8]* %str, i64 0, i64 0
  %61 = and i64 %syntax, 131072
  %62 = icmp eq i64 %61, 0
  %63 = and i64 %syntax, 2048
  %64 = icmp eq i64 %63, 0
  %65 = and i64 %syntax, 1024
  %66 = icmp eq i64 %65, 0
  %67 = and i64 %syntax, 4608
  %68 = icmp eq i64 %67, 4608
  %69 = icmp ne i64 %36, 0
  %70 = and i64 %syntax, 33792
  %71 = icmp eq i64 %70, 0
  %72 = icmp eq i64 %67, 512
  %73 = and i64 %syntax, 524288
  %74 = icmp eq i64 %73, 0
  %75 = and i64 %syntax, 16384
  %76 = icmp eq i64 %75, 0
  br label %77

; <label>:77                                      ; preds = %.lr.ph1153, %.backedge367
  %78 = phi i8* [ %pattern, %.lr.ph1153 ], [ %1078, %.backedge367 ]
  %b.01147 = phi i8* [ %29, %.lr.ph1153 ], [ %b.0.be, %.backedge367 ]
  %compile_stack.sroa.40.01143 = phi i64 [ 32, %.lr.ph1153 ], [ %compile_stack.sroa.40.0.be, %.backedge367 ]
  %compile_stack.sroa.0.01137 = phi %struct.compile_stack_elt_t* [ %5, %.lr.ph1153 ], [ %compile_stack.sroa.0.0.be, %.backedge367 ]
  %pending_exact.01132 = phi i8* [ null, %.lr.ph1153 ], [ %pending_exact.0.be, %.backedge367 ]
  %laststart.01128 = phi i8* [ null, %.lr.ph1153 ], [ %laststart.0.be, %.backedge367 ]
  %begalt.01123 = phi i8* [ %29, %.lr.ph1153 ], [ %begalt.0.be, %.backedge367 ]
  %fixup_alt_jump.01118 = phi i8* [ null, %.lr.ph1153 ], [ %fixup_alt_jump.0.be, %.backedge367 ]
  %regnum.01114 = phi i32 [ 0, %.lr.ph1153 ], [ %regnum.0.be, %.backedge367 ]
  %79 = getelementptr inbounds i8* %78, i64 1
  store i8* %79, i8** %p, align 8, !tbaa !13
  %80 = load i8* %78, align 1, !tbaa !12
  br i1 %31, label %81, label %85

; <label>:81                                      ; preds = %77
  %82 = zext i8 %80 to i64
  %83 = getelementptr inbounds i8* %3, i64 %82
  %84 = load i8* %83, align 1, !tbaa !12
  br label %85

; <label>:85                                      ; preds = %77, %81
  %c.0 = phi i8 [ %84, %81 ], [ %80, %77 ]
  %86 = zext i8 %c.0 to i32
  switch i32 %86, label %group_in_compile_stack.exit.thread216 [
    i32 94, label %87
    i32 36, label %140
    i32 43, label %197
    i32 63, label %197
    i32 42, label %198
    i32 46, label %.preheader280
    i32 91, label %481
    i32 40, label %975
    i32 41, label %976
    i32 10, label %977
    i32 124, label %978
    i32 123, label %979
    i32 92, label %980
  ]

.preheader280:                                    ; preds = %85
  %.pre1598.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer283

; <label>:87                                      ; preds = %85
  %88 = icmp ne i8* %78, %pattern
  %or.cond78 = and i1 %39, %88
  br i1 %or.cond78, label %89, label %.preheader255

; <label>:89                                      ; preds = %87
  %90 = getelementptr inbounds i8* %78, i64 -1
  %91 = icmp ugt i8* %90, %pattern
  br i1 %91, label %92, label %96

; <label>:92                                      ; preds = %89
  %93 = getelementptr inbounds i8* %78, i64 -2
  %94 = load i8* %93, align 1, !tbaa !12
  %95 = icmp eq i8 %94, 92
  br label %96

; <label>:96                                      ; preds = %92, %89
  %97 = phi i1 [ false, %89 ], [ %95, %92 ]
  %98 = load i8* %90, align 1, !tbaa !12
  switch i8 %98, label %group_in_compile_stack.exit.thread216 [
    i8 40, label %at_begline_loc_p.exit
    i8 124, label %99
  ]

; <label>:99                                      ; preds = %96
  br label %at_begline_loc_p.exit

at_begline_loc_p.exit:                            ; preds = %96, %99
  %.sink = phi i64 [ %41, %99 ], [ %40, %96 ]
  %.not.i = icmp ne i64 %.sink, 0
  %.1.i = or i1 %97, %.not.i
  br i1 %.1.i, label %.preheader255, label %group_in_compile_stack.exit.thread216

.preheader255:                                    ; preds = %87, %at_begline_loc_p.exit
  %.pre1603.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer258

.outer258:                                        ; preds = %132, %134, %.preheader255
  %.pre1603 = phi i8* [ %.pre1603.pre, %.preheader255 ], [ %112, %134 ], [ %112, %132 ]
  %fixup_alt_jump.1.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader255 ], [ %fixup_alt_jump.2, %134 ], [ %fixup_alt_jump.2, %132 ]
  %begalt.1.ph = phi i8* [ %begalt.01123, %.preheader255 ], [ %120, %134 ], [ %120, %132 ]
  %laststart.1.ph = phi i8* [ %laststart.01128, %.preheader255 ], [ %laststart.2, %134 ], [ %laststart.2, %132 ]
  %pending_exact.1.ph = phi i8* [ %pending_exact.01132, %.preheader255 ], [ %137, %134 ], [ null, %132 ]
  %b.1.ph = phi i8* [ %b.01147, %.preheader255 ], [ %117, %134 ], [ %117, %132 ]
  %100 = ptrtoint i8* %b.1.ph to i64
  br label %101

; <label>:101                                     ; preds = %.outer258, %114
  %102 = ptrtoint i8* %.pre1603 to i64
  %103 = sub i64 %100, %102
  %104 = add nsw i64 %103, 1
  %105 = load i64* %14, align 8, !tbaa !22
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %107, label %138

; <label>:107                                     ; preds = %101
  %108 = icmp eq i64 %105, 65536
  br i1 %108, label %.loopexit, label %109

; <label>:109                                     ; preds = %107
  %110 = shl i64 %105, 1
  %111 = icmp ugt i64 %110, 65536
  %. = select i1 %111, i64 65536, i64 %110
  store i64 %., i64* %14, align 8, !tbaa !22
  %112 = tail call i8* @realloc(i8* %.pre1603, i64 %.) #7
  store i8* %112, i8** %17, align 8, !tbaa !10
  %113 = icmp eq i8* %112, null
  br i1 %113, label %.loopexit, label %114

; <label>:114                                     ; preds = %109
  %115 = icmp eq i8* %.pre1603, %112
  br i1 %115, label %101, label %116

; <label>:116                                     ; preds = %114
  %117 = getelementptr inbounds i8* %112, i64 %103
  %118 = ptrtoint i8* %begalt.1.ph to i64
  %119 = sub i64 %118, %102
  %120 = getelementptr inbounds i8* %112, i64 %119
  %121 = icmp eq i8* %fixup_alt_jump.1.ph, null
  br i1 %121, label %126, label %122

; <label>:122                                     ; preds = %116
  %123 = ptrtoint i8* %fixup_alt_jump.1.ph to i64
  %124 = sub i64 %123, %102
  %125 = getelementptr inbounds i8* %112, i64 %124
  br label %126

; <label>:126                                     ; preds = %116, %122
  %fixup_alt_jump.2 = phi i8* [ %125, %122 ], [ null, %116 ]
  %127 = icmp eq i8* %laststart.1.ph, null
  br i1 %127, label %132, label %128

; <label>:128                                     ; preds = %126
  %129 = ptrtoint i8* %laststart.1.ph to i64
  %130 = sub i64 %129, %102
  %131 = getelementptr inbounds i8* %112, i64 %130
  br label %132

; <label>:132                                     ; preds = %126, %128
  %laststart.2 = phi i8* [ %131, %128 ], [ null, %126 ]
  %133 = icmp eq i8* %pending_exact.1.ph, null
  br i1 %133, label %.outer258, label %134

; <label>:134                                     ; preds = %132
  %135 = ptrtoint i8* %pending_exact.1.ph to i64
  %136 = sub i64 %135, %102
  %137 = getelementptr inbounds i8* %112, i64 %136
  br label %.outer258

; <label>:138                                     ; preds = %101
  %139 = getelementptr inbounds i8* %b.1.ph, i64 1
  store i8 9, i8* %b.1.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:140                                     ; preds = %85
  %141 = icmp ne i8* %79, %1
  %or.cond80 = and i1 %39, %141
  br i1 %or.cond80, label %142, label %.critedge231.preheader

; <label>:142                                     ; preds = %140
  %143 = load i8* %79, align 1, !tbaa !12
  %144 = icmp eq i8 %143, 92
  %145 = getelementptr inbounds i8* %78, i64 2
  %146 = icmp ult i8* %145, %1
  %..i163 = select i1 %146, i8* %145, i8* null
  br i1 %42, label %149, label %147

; <label>:147                                     ; preds = %142
  %148 = icmp eq i8 %143, 41
  br i1 %148, label %.critedge231.preheader, label %153

; <label>:149                                     ; preds = %142
  %or.cond.i = and i1 %146, %144
  br i1 %or.cond.i, label %150, label %153

; <label>:150                                     ; preds = %149
  %151 = load i8* %..i163, align 1, !tbaa !12
  %152 = icmp eq i8 %151, 41
  br i1 %152, label %.critedge231.preheader, label %153

; <label>:153                                     ; preds = %150, %149, %147
  br i1 %43, label %154, label %at_endline_loc_p.exit

; <label>:154                                     ; preds = %153
  %or.cond3.i = and i1 %146, %144
  br i1 %or.cond3.i, label %155, label %group_in_compile_stack.exit.thread216

; <label>:155                                     ; preds = %154
  %156 = load i8* %..i163, align 1, !tbaa !12
  br label %at_endline_loc_p.exit

at_endline_loc_p.exit:                            ; preds = %153, %155
  %.sink234 = phi i8 [ %156, %155 ], [ %143, %153 ]
  %157 = icmp eq i8 %.sink234, 124
  br i1 %157, label %.critedge231.preheader, label %group_in_compile_stack.exit.thread216

.critedge231.preheader:                           ; preds = %140, %at_endline_loc_p.exit, %150, %147
  %.pre1602.pre = load i8** %17, align 8, !tbaa !10
  br label %.critedge231.outer

.critedge231.outer:                               ; preds = %189, %191, %.critedge231.preheader
  %.pre1602 = phi i8* [ %.pre1602.pre, %.critedge231.preheader ], [ %169, %191 ], [ %169, %189 ]
  %fixup_alt_jump.3.ph = phi i8* [ %fixup_alt_jump.01118, %.critedge231.preheader ], [ %fixup_alt_jump.4, %191 ], [ %fixup_alt_jump.4, %189 ]
  %begalt.2.ph = phi i8* [ %begalt.01123, %.critedge231.preheader ], [ %177, %191 ], [ %177, %189 ]
  %laststart.3.ph = phi i8* [ %laststart.01128, %.critedge231.preheader ], [ %laststart.4, %191 ], [ %laststart.4, %189 ]
  %pending_exact.2.ph = phi i8* [ %pending_exact.01132, %.critedge231.preheader ], [ %194, %191 ], [ null, %189 ]
  %b.2.ph = phi i8* [ %b.01147, %.critedge231.preheader ], [ %174, %191 ], [ %174, %189 ]
  %158 = ptrtoint i8* %b.2.ph to i64
  br label %.critedge231

.critedge231:                                     ; preds = %.critedge231.outer, %171
  %159 = ptrtoint i8* %.pre1602 to i64
  %160 = sub i64 %158, %159
  %161 = add nsw i64 %160, 1
  %162 = load i64* %14, align 8, !tbaa !22
  %163 = icmp ugt i64 %161, %162
  br i1 %163, label %164, label %195

; <label>:164                                     ; preds = %.critedge231
  %165 = icmp eq i64 %162, 65536
  br i1 %165, label %.loopexit, label %166

; <label>:166                                     ; preds = %164
  %167 = shl i64 %162, 1
  %168 = icmp ugt i64 %167, 65536
  %.81 = select i1 %168, i64 65536, i64 %167
  store i64 %.81, i64* %14, align 8, !tbaa !22
  %169 = tail call i8* @realloc(i8* %.pre1602, i64 %.81) #7
  store i8* %169, i8** %17, align 8, !tbaa !10
  %170 = icmp eq i8* %169, null
  br i1 %170, label %.loopexit, label %171

; <label>:171                                     ; preds = %166
  %172 = icmp eq i8* %.pre1602, %169
  br i1 %172, label %.critedge231, label %173

; <label>:173                                     ; preds = %171
  %174 = getelementptr inbounds i8* %169, i64 %160
  %175 = ptrtoint i8* %begalt.2.ph to i64
  %176 = sub i64 %175, %159
  %177 = getelementptr inbounds i8* %169, i64 %176
  %178 = icmp eq i8* %fixup_alt_jump.3.ph, null
  br i1 %178, label %183, label %179

; <label>:179                                     ; preds = %173
  %180 = ptrtoint i8* %fixup_alt_jump.3.ph to i64
  %181 = sub i64 %180, %159
  %182 = getelementptr inbounds i8* %169, i64 %181
  br label %183

; <label>:183                                     ; preds = %173, %179
  %fixup_alt_jump.4 = phi i8* [ %182, %179 ], [ null, %173 ]
  %184 = icmp eq i8* %laststart.3.ph, null
  br i1 %184, label %189, label %185

; <label>:185                                     ; preds = %183
  %186 = ptrtoint i8* %laststart.3.ph to i64
  %187 = sub i64 %186, %159
  %188 = getelementptr inbounds i8* %169, i64 %187
  br label %189

; <label>:189                                     ; preds = %183, %185
  %laststart.4 = phi i8* [ %188, %185 ], [ null, %183 ]
  %190 = icmp eq i8* %pending_exact.2.ph, null
  br i1 %190, label %.critedge231.outer, label %191

; <label>:191                                     ; preds = %189
  %192 = ptrtoint i8* %pending_exact.2.ph to i64
  %193 = sub i64 %192, %159
  %194 = getelementptr inbounds i8* %169, i64 %193
  br label %.critedge231.outer

; <label>:195                                     ; preds = %.critedge231
  %196 = getelementptr inbounds i8* %b.2.ph, i64 1
  store i8 10, i8* %b.2.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:197                                     ; preds = %85, %85
  br i1 %45, label %198, label %group_in_compile_stack.exit.thread216

; <label>:198                                     ; preds = %197, %1960, %85
  %199 = phi i8* [ %985, %1960 ], [ %79, %85 ], [ %79, %197 ]
  %c.1 = phi i8 [ %986, %1960 ], [ %c.0, %85 ], [ %c.0, %197 ]
  %200 = icmp ne i8* %laststart.01128, null
  br i1 %200, label %.preheader278, label %201

; <label>:201                                     ; preds = %198
  br i1 %47, label %204, label %202

; <label>:202                                     ; preds = %201
  %203 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %203) #8
  br label %.loopexit

; <label>:204                                     ; preds = %201
  br i1 %49, label %group_in_compile_stack.exit.thread216, label %.preheader278

.preheader278:                                    ; preds = %204, %198
  %205 = icmp ne i8 %c.1, 43
  %206 = zext i1 %205 to i32
  %207 = zext i1 %205 to i8
  %208 = icmp ne i8 %c.1, 63
  %209 = zext i1 %208 to i8
  %210 = icmp eq i8* %199, %1
  br i1 %210, label %.loopexit279, label %.lr.ph1110

.lr.ph1110:                                       ; preds = %.preheader278
  %211 = zext i1 %208 to i32
  br label %212

; <label>:212                                     ; preds = %.lr.ph1110, %.backedge
  %213 = phi i8* [ %199, %.lr.ph1110 ], [ %226, %.backedge ]
  %214 = phi i8 [ %209, %.lr.ph1110 ], [ %234, %.backedge ]
  %215 = phi i32 [ %211, %.lr.ph1110 ], [ %233, %.backedge ]
  %216 = phi i8 [ %207, %.lr.ph1110 ], [ %230, %.backedge ]
  %217 = phi i32 [ %206, %.lr.ph1110 ], [ %229, %.backedge ]
  %218 = getelementptr inbounds i8* %213, i64 1
  store i8* %218, i8** %p, align 8, !tbaa !13
  %219 = load i8* %213, align 1, !tbaa !12
  br i1 %31, label %220, label %224

; <label>:220                                     ; preds = %212
  %221 = zext i8 %219 to i64
  %222 = getelementptr inbounds i8* %3, i64 %221
  %223 = load i8* %222, align 1, !tbaa !12
  br label %224

; <label>:224                                     ; preds = %212, %220
  %c.3 = phi i8 [ %223, %220 ], [ %219, %212 ]
  %225 = icmp eq i8 %c.3, 42
  br i1 %225, label %.backedge, label %236

.backedge:                                        ; preds = %224, %237, %237, %249, %249
  %226 = phi i8* [ %218, %224 ], [ %218, %237 ], [ %218, %237 ], [ %243, %249 ], [ %243, %249 ]
  %c.2.be = phi i8 [ 42, %224 ], [ %c.3, %237 ], [ %c.3, %237 ], [ %c1.0, %249 ], [ %c1.0, %249 ]
  %227 = icmp ne i8 %c.2.be, 43
  %228 = zext i1 %227 to i32
  %229 = or i32 %228, %217
  %230 = trunc i32 %229 to i8
  %231 = icmp ne i8 %c.2.be, 63
  %232 = zext i1 %231 to i32
  %233 = or i32 %232, %215
  %234 = trunc i32 %233 to i8
  %235 = icmp eq i8* %226, %1
  br i1 %235, label %.loopexit279, label %212

; <label>:236                                     ; preds = %224
  br i1 %33, label %237, label %.critedge

; <label>:237                                     ; preds = %236
  switch i8 %c.3, label %.thread [
    i8 43, label %.backedge
    i8 63, label %.backedge
  ]

.critedge:                                        ; preds = %236
  %.old = icmp eq i8 %c.3, 92
  br i1 %.old, label %238, label %.thread

; <label>:238                                     ; preds = %.critedge
  %239 = icmp eq i8* %218, %1
  br i1 %239, label %240, label %242

; <label>:240                                     ; preds = %238
  %241 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %241) #8
  br label %.loopexit

; <label>:242                                     ; preds = %238
  %243 = getelementptr inbounds i8* %213, i64 2
  store i8* %243, i8** %p, align 8, !tbaa !13
  %244 = load i8* %218, align 1, !tbaa !12
  br i1 %31, label %245, label %249

; <label>:245                                     ; preds = %242
  %246 = zext i8 %244 to i64
  %247 = getelementptr inbounds i8* %3, i64 %246
  %248 = load i8* %247, align 1, !tbaa !12
  br label %249

; <label>:249                                     ; preds = %242, %245
  %c1.0 = phi i8 [ %248, %245 ], [ %244, %242 ]
  switch i8 %c1.0, label %250 [
    i8 43, label %.backedge
    i8 63, label %.backedge
  ]

; <label>:250                                     ; preds = %249
  store i8* %213, i8** %p, align 8, !tbaa !13
  br label %.loopexit279

.thread:                                          ; preds = %237, %.critedge
  store i8* %213, i8** %p, align 8, !tbaa !13
  br label %.loopexit279

.loopexit279:                                     ; preds = %.backedge, %.preheader278, %.thread, %250
  %251 = phi i8* [ %213, %.thread ], [ %213, %250 ], [ %1, %.preheader278 ], [ %1, %.backedge ]
  %252 = phi i8 [ %214, %.thread ], [ %214, %250 ], [ %209, %.preheader278 ], [ %234, %.backedge ]
  %253 = phi i8 [ %216, %.thread ], [ %216, %250 ], [ %207, %.preheader278 ], [ %230, %.backedge ]
  %254 = phi i32 [ %217, %.thread ], [ %217, %250 ], [ %206, %.preheader278 ], [ %229, %.backedge ]
  br i1 %200, label %255, label %.backedge367

; <label>:255                                     ; preds = %.loopexit279
  %256 = icmp eq i8 %252, 0
  br i1 %256, label %.preheader265, label %.preheader274

.preheader274:                                    ; preds = %255
  %.pre1599.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer277

.outer277:                                        ; preds = %289, %291, %.preheader274
  %.pre1599 = phi i8* [ %.pre1599.pre, %.preheader274 ], [ %269, %291 ], [ %269, %289 ]
  %fixup_alt_jump.5.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader274 ], [ %fixup_alt_jump.6, %291 ], [ %fixup_alt_jump.6, %289 ]
  %begalt.3.ph = phi i8* [ %begalt.01123, %.preheader274 ], [ %277, %291 ], [ %277, %289 ]
  %laststart.5.ph = phi i8* [ %laststart.01128, %.preheader274 ], [ %laststart.6, %291 ], [ %laststart.6, %289 ]
  %pending_exact.3.ph = phi i8* [ %pending_exact.01132, %.preheader274 ], [ %294, %291 ], [ null, %289 ]
  %b.3.ph = phi i8* [ %b.01147, %.preheader274 ], [ %274, %291 ], [ %274, %289 ]
  %257 = ptrtoint i8* %b.3.ph to i64
  br label %258

; <label>:258                                     ; preds = %.outer277, %271
  %259 = ptrtoint i8* %.pre1599 to i64
  %260 = sub i64 %257, %259
  %261 = add nsw i64 %260, 3
  %262 = load i64* %14, align 8, !tbaa !22
  %263 = icmp ugt i64 %261, %262
  br i1 %263, label %264, label %295

; <label>:264                                     ; preds = %258
  %265 = icmp eq i64 %262, 65536
  br i1 %265, label %.loopexit, label %266

; <label>:266                                     ; preds = %264
  %267 = shl i64 %262, 1
  %268 = icmp ugt i64 %267, 65536
  %.85 = select i1 %268, i64 65536, i64 %267
  store i64 %.85, i64* %14, align 8, !tbaa !22
  %269 = tail call i8* @realloc(i8* %.pre1599, i64 %.85) #7
  store i8* %269, i8** %17, align 8, !tbaa !10
  %270 = icmp eq i8* %269, null
  br i1 %270, label %.loopexit, label %271

; <label>:271                                     ; preds = %266
  %272 = icmp eq i8* %.pre1599, %269
  br i1 %272, label %258, label %273

; <label>:273                                     ; preds = %271
  %274 = getelementptr inbounds i8* %269, i64 %260
  %275 = ptrtoint i8* %begalt.3.ph to i64
  %276 = sub i64 %275, %259
  %277 = getelementptr inbounds i8* %269, i64 %276
  %278 = icmp eq i8* %fixup_alt_jump.5.ph, null
  br i1 %278, label %283, label %279

; <label>:279                                     ; preds = %273
  %280 = ptrtoint i8* %fixup_alt_jump.5.ph to i64
  %281 = sub i64 %280, %259
  %282 = getelementptr inbounds i8* %269, i64 %281
  br label %283

; <label>:283                                     ; preds = %273, %279
  %fixup_alt_jump.6 = phi i8* [ %282, %279 ], [ null, %273 ]
  %284 = icmp eq i8* %laststart.5.ph, null
  br i1 %284, label %289, label %285

; <label>:285                                     ; preds = %283
  %286 = ptrtoint i8* %laststart.5.ph to i64
  %287 = sub i64 %286, %259
  %288 = getelementptr inbounds i8* %269, i64 %287
  br label %289

; <label>:289                                     ; preds = %283, %285
  %laststart.6 = phi i8* [ %288, %285 ], [ null, %283 ]
  %290 = icmp eq i8* %pending_exact.3.ph, null
  br i1 %290, label %.outer277, label %291

; <label>:291                                     ; preds = %289
  %292 = ptrtoint i8* %pending_exact.3.ph to i64
  %293 = sub i64 %292, %259
  %294 = getelementptr inbounds i8* %269, i64 %293
  br label %.outer277

; <label>:295                                     ; preds = %258
  %296 = getelementptr inbounds i8* %251, i64 -2
  %297 = load i8* %296, align 1, !tbaa !12
  br i1 %31, label %298, label %304

; <label>:298                                     ; preds = %295
  %299 = zext i8 %297 to i64
  %300 = getelementptr inbounds i8* %3, i64 %299
  %301 = load i8* %300, align 1, !tbaa !12
  %302 = load i8* %50, align 1, !tbaa !12
  %303 = sext i8 %302 to i32
  br label %304

; <label>:304                                     ; preds = %295, %298
  %.in = phi i8 [ %301, %298 ], [ %297, %295 ]
  %305 = phi i32 [ %303, %298 ], [ 46, %295 ]
  %306 = sext i8 %.in to i32
  %notlhs = icmp ne i32 %254, 0
  %notrhs = icmp eq i32 %306, %305
  %or.cond87.not = and i1 %notrhs, %notlhs
  %307 = icmp ult i8* %251, %1
  %or.cond1663 = and i1 %or.cond87.not, %307
  br i1 %or.cond1663, label %308, label %330

; <label>:308                                     ; preds = %304
  %309 = load i8* %251, align 1, !tbaa !12
  br i1 %31, label %310, label %316

; <label>:310                                     ; preds = %308
  %311 = zext i8 %309 to i64
  %312 = getelementptr inbounds i8* %3, i64 %311
  %313 = load i8* %312, align 1, !tbaa !12
  %314 = load i8* %51, align 1, !tbaa !12
  %315 = sext i8 %314 to i32
  br label %316

; <label>:316                                     ; preds = %308, %310
  %.in230 = phi i8 [ %313, %310 ], [ %309, %308 ]
  %317 = phi i32 [ %315, %310 ], [ 10, %308 ]
  %318 = sext i8 %.in230 to i32
  %319 = icmp eq i32 %318, %317
  %or.cond90 = and i1 %53, %319
  br i1 %or.cond90, label %320, label %330

; <label>:320                                     ; preds = %316
  %321 = ptrtoint i8* %laststart.5.ph to i64
  %322 = sub i64 %321, %257
  %323 = add i64 %322, 4294967293
  %324 = trunc i64 %323 to i32
  store i8 13, i8* %b.3.ph, align 1, !tbaa !12
  %325 = trunc i64 %323 to i8
  %326 = getelementptr inbounds i8* %b.3.ph, i64 1
  store i8 %325, i8* %326, align 1, !tbaa !12
  %327 = lshr i32 %324, 8
  %328 = trunc i32 %327 to i8
  %329 = getelementptr inbounds i8* %b.3.ph, i64 2
  store i8 %328, i8* %329, align 1, !tbaa !12
  br label %341

; <label>:330                                     ; preds = %304, %316
  %331 = getelementptr inbounds i8* %laststart.5.ph, i64 -3
  %332 = ptrtoint i8* %331 to i64
  %333 = sub i64 %332, %257
  %334 = add i64 %333, 4294967293
  %335 = trunc i64 %334 to i32
  store i8 18, i8* %b.3.ph, align 1, !tbaa !12
  %336 = trunc i64 %334 to i8
  %337 = getelementptr inbounds i8* %b.3.ph, i64 1
  store i8 %336, i8* %337, align 1, !tbaa !12
  %338 = lshr i32 %335, 8
  %339 = trunc i32 %338 to i8
  %340 = getelementptr inbounds i8* %b.3.ph, i64 2
  store i8 %339, i8* %340, align 1, !tbaa !12
  br label %341

; <label>:341                                     ; preds = %330, %320
  %keep_string_p.0 = phi i8 [ 0, %330 ], [ 1, %320 ]
  %342 = getelementptr inbounds i8* %b.3.ph, i64 3
  br label %.preheader265

.preheader265:                                    ; preds = %341, %255
  %keep_string_p.1.ph = phi i8 [ 0, %255 ], [ %keep_string_p.0, %341 ]
  %fixup_alt_jump.7.ph = phi i8* [ %fixup_alt_jump.01118, %255 ], [ %fixup_alt_jump.5.ph, %341 ]
  %begalt.4.ph = phi i8* [ %begalt.01123, %255 ], [ %begalt.3.ph, %341 ]
  %laststart.7.ph = phi i8* [ %laststart.01128, %255 ], [ %laststart.5.ph, %341 ]
  %pending_exact.4.ph = phi i8* [ %pending_exact.01132, %255 ], [ %pending_exact.3.ph, %341 ]
  %b.4.ph = phi i8* [ %b.01147, %255 ], [ %342, %341 ]
  %.pre1600.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer268

.outer268:                                        ; preds = %375, %377, %.preheader265
  %.pre1600 = phi i8* [ %.pre1600.pre, %.preheader265 ], [ %355, %377 ], [ %355, %375 ]
  %fixup_alt_jump.7.ph269 = phi i8* [ %fixup_alt_jump.7.ph, %.preheader265 ], [ %fixup_alt_jump.8, %377 ], [ %fixup_alt_jump.8, %375 ]
  %begalt.4.ph270 = phi i8* [ %begalt.4.ph, %.preheader265 ], [ %363, %377 ], [ %363, %375 ]
  %laststart.7.ph271 = phi i8* [ %laststart.7.ph, %.preheader265 ], [ %laststart.8, %377 ], [ %laststart.8, %375 ]
  %pending_exact.4.ph272 = phi i8* [ %pending_exact.4.ph, %.preheader265 ], [ %380, %377 ], [ null, %375 ]
  %b.4.ph273 = phi i8* [ %b.4.ph, %.preheader265 ], [ %360, %377 ], [ %360, %375 ]
  %343 = ptrtoint i8* %b.4.ph273 to i64
  br label %344

; <label>:344                                     ; preds = %.outer268, %357
  %345 = ptrtoint i8* %.pre1600 to i64
  %346 = sub i64 %343, %345
  %347 = add nsw i64 %346, 3
  %348 = load i64* %14, align 8, !tbaa !22
  %349 = icmp ugt i64 %347, %348
  br i1 %349, label %350, label %381

; <label>:350                                     ; preds = %344
  %351 = icmp eq i64 %348, 65536
  br i1 %351, label %.loopexit, label %352

; <label>:352                                     ; preds = %350
  %353 = shl i64 %348, 1
  %354 = icmp ugt i64 %353, 65536
  %.91 = select i1 %354, i64 65536, i64 %353
  store i64 %.91, i64* %14, align 8, !tbaa !22
  %355 = tail call i8* @realloc(i8* %.pre1600, i64 %.91) #7
  store i8* %355, i8** %17, align 8, !tbaa !10
  %356 = icmp eq i8* %355, null
  br i1 %356, label %.loopexit, label %357

; <label>:357                                     ; preds = %352
  %358 = icmp eq i8* %.pre1600, %355
  br i1 %358, label %344, label %359

; <label>:359                                     ; preds = %357
  %360 = getelementptr inbounds i8* %355, i64 %346
  %361 = ptrtoint i8* %begalt.4.ph270 to i64
  %362 = sub i64 %361, %345
  %363 = getelementptr inbounds i8* %355, i64 %362
  %364 = icmp eq i8* %fixup_alt_jump.7.ph269, null
  br i1 %364, label %369, label %365

; <label>:365                                     ; preds = %359
  %366 = ptrtoint i8* %fixup_alt_jump.7.ph269 to i64
  %367 = sub i64 %366, %345
  %368 = getelementptr inbounds i8* %355, i64 %367
  br label %369

; <label>:369                                     ; preds = %359, %365
  %fixup_alt_jump.8 = phi i8* [ %368, %365 ], [ null, %359 ]
  %370 = icmp eq i8* %laststart.7.ph271, null
  br i1 %370, label %375, label %371

; <label>:371                                     ; preds = %369
  %372 = ptrtoint i8* %laststart.7.ph271 to i64
  %373 = sub i64 %372, %345
  %374 = getelementptr inbounds i8* %355, i64 %373
  br label %375

; <label>:375                                     ; preds = %369, %371
  %laststart.8 = phi i8* [ %374, %371 ], [ null, %369 ]
  %376 = icmp eq i8* %pending_exact.4.ph272, null
  br i1 %376, label %.outer268, label %377

; <label>:377                                     ; preds = %375
  %378 = ptrtoint i8* %pending_exact.4.ph272 to i64
  %379 = sub i64 %378, %345
  %380 = getelementptr inbounds i8* %355, i64 %379
  br label %.outer268

; <label>:381                                     ; preds = %344
  %382 = icmp ne i8 %keep_string_p.1.ph, 0
  %383 = getelementptr inbounds i8* %b.4.ph273, i64 3
  %384 = ptrtoint i8* %383 to i64
  %385 = ptrtoint i8* %laststart.7.ph271 to i64
  %386 = sub i64 %384, %385
  %387 = add i64 %386, 4294967293
  %388 = trunc i64 %387 to i32
  %389 = icmp eq i8* %b.4.ph273, %laststart.7.ph271
  br i1 %389, label %insert_op1.exit177, label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %381, %.lr.ph.i174
  %pto.02.i175 = phi i8* [ %392, %.lr.ph.i174 ], [ %383, %381 ]
  %pfrom.01.i176 = phi i8* [ %390, %.lr.ph.i174 ], [ %b.4.ph273, %381 ]
  %390 = getelementptr inbounds i8* %pfrom.01.i176, i64 -1
  %391 = load i8* %390, align 1, !tbaa !12
  %392 = getelementptr inbounds i8* %pto.02.i175, i64 -1
  store i8 %391, i8* %392, align 1, !tbaa !12
  %393 = icmp eq i8* %390, %laststart.7.ph271
  br i1 %393, label %insert_op1.exit177, label %.lr.ph.i174

insert_op1.exit177:                               ; preds = %.lr.ph.i174, %381
  %394 = select i1 %382, i8 16, i8 15
  store i8 %394, i8* %laststart.7.ph271, align 1, !tbaa !12
  %395 = trunc i64 %387 to i8
  %396 = getelementptr inbounds i8* %laststart.7.ph271, i64 1
  store i8 %395, i8* %396, align 1, !tbaa !12
  %397 = lshr i32 %388, 8
  %398 = trunc i32 %397 to i8
  %399 = getelementptr inbounds i8* %laststart.7.ph271, i64 2
  store i8 %398, i8* %399, align 1, !tbaa !12
  %400 = icmp eq i8 %253, 0
  br i1 %400, label %.preheader261, label %.backedge367

.preheader261:                                    ; preds = %insert_op1.exit177
  %.pre1601.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer264

.outer264:                                        ; preds = %429, %427, %.preheader261
  %.pre1601 = phi i8* [ %.pre1601.pre, %.preheader261 ], [ %413, %427 ], [ %413, %429 ]
  %fixup_alt_jump.9.ph = phi i8* [ %fixup_alt_jump.7.ph269, %.preheader261 ], [ %fixup_alt_jump.10, %427 ], [ %fixup_alt_jump.10, %429 ]
  %begalt.5.ph = phi i8* [ %begalt.4.ph270, %.preheader261 ], [ %421, %427 ], [ %421, %429 ]
  %laststart.9.ph = phi i8* [ %laststart.7.ph271, %.preheader261 ], [ null, %427 ], [ %432, %429 ]
  %b.5.ph = phi i8* [ %383, %.preheader261 ], [ %418, %427 ], [ %418, %429 ]
  %401 = ptrtoint i8* %b.5.ph to i64
  br label %402

; <label>:402                                     ; preds = %.outer264, %415
  %403 = ptrtoint i8* %.pre1601 to i64
  %404 = sub i64 %401, %403
  %405 = add nsw i64 %404, 3
  %406 = load i64* %14, align 8, !tbaa !22
  %407 = icmp ugt i64 %405, %406
  br i1 %407, label %408, label %433

; <label>:408                                     ; preds = %402
  %409 = icmp eq i64 %406, 65536
  br i1 %409, label %.loopexit, label %410

; <label>:410                                     ; preds = %408
  %411 = shl i64 %406, 1
  %412 = icmp ugt i64 %411, 65536
  %.92 = select i1 %412, i64 65536, i64 %411
  store i64 %.92, i64* %14, align 8, !tbaa !22
  %413 = tail call i8* @realloc(i8* %.pre1601, i64 %.92) #7
  store i8* %413, i8** %17, align 8, !tbaa !10
  %414 = icmp eq i8* %413, null
  br i1 %414, label %.loopexit, label %415

; <label>:415                                     ; preds = %410
  %416 = icmp eq i8* %.pre1601, %413
  br i1 %416, label %402, label %417

; <label>:417                                     ; preds = %415
  %418 = getelementptr inbounds i8* %413, i64 %404
  %419 = ptrtoint i8* %begalt.5.ph to i64
  %420 = sub i64 %419, %403
  %421 = getelementptr inbounds i8* %413, i64 %420
  %422 = icmp eq i8* %fixup_alt_jump.9.ph, null
  br i1 %422, label %427, label %423

; <label>:423                                     ; preds = %417
  %424 = ptrtoint i8* %fixup_alt_jump.9.ph to i64
  %425 = sub i64 %424, %403
  %426 = getelementptr inbounds i8* %413, i64 %425
  br label %427

; <label>:427                                     ; preds = %417, %423
  %fixup_alt_jump.10 = phi i8* [ %426, %423 ], [ null, %417 ]
  %428 = icmp eq i8* %laststart.9.ph, null
  br i1 %428, label %.outer264, label %429

; <label>:429                                     ; preds = %427
  %430 = ptrtoint i8* %laststart.9.ph to i64
  %431 = sub i64 %430, %403
  %432 = getelementptr inbounds i8* %413, i64 %431
  br label %.outer264

; <label>:433                                     ; preds = %402
  %434 = icmp eq i8* %b.5.ph, %laststart.9.ph
  %.pre1635 = getelementptr inbounds i8* %b.5.ph, i64 3
  br i1 %434, label %insert_op1.exit184, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %433, %.lr.ph.i181
  %pto.02.i182 = phi i8* [ %437, %.lr.ph.i181 ], [ %.pre1635, %433 ]
  %pfrom.01.i183 = phi i8* [ %435, %.lr.ph.i181 ], [ %b.5.ph, %433 ]
  %435 = getelementptr inbounds i8* %pfrom.01.i183, i64 -1
  %436 = load i8* %435, align 1, !tbaa !12
  %437 = getelementptr inbounds i8* %pto.02.i182, i64 -1
  store i8 %436, i8* %437, align 1, !tbaa !12
  %438 = icmp eq i8* %435, %laststart.9.ph
  br i1 %438, label %insert_op1.exit184, label %.lr.ph.i181

insert_op1.exit184:                               ; preds = %.lr.ph.i181, %433
  store i8 19, i8* %laststart.9.ph, align 1, !tbaa !12
  %439 = getelementptr inbounds i8* %laststart.9.ph, i64 1
  store i8 3, i8* %439, align 1, !tbaa !12
  %440 = getelementptr inbounds i8* %laststart.9.ph, i64 2
  store i8 0, i8* %440, align 1, !tbaa !12
  br label %.backedge367

; <label>:441                                     ; preds = %.outer283, %454
  %442 = ptrtoint i8* %.pre1598 to i64
  %443 = sub i64 %474, %442
  %444 = add nsw i64 %443, 1
  %445 = load i64* %14, align 8, !tbaa !22
  %446 = icmp ugt i64 %444, %445
  br i1 %446, label %447, label %479

; <label>:447                                     ; preds = %441
  %448 = icmp eq i64 %445, 65536
  br i1 %448, label %.loopexit, label %449

; <label>:449                                     ; preds = %447
  %450 = shl i64 %445, 1
  %451 = icmp ugt i64 %450, 65536
  %.93 = select i1 %451, i64 65536, i64 %450
  store i64 %.93, i64* %14, align 8, !tbaa !22
  %452 = tail call i8* @realloc(i8* %.pre1598, i64 %.93) #7
  store i8* %452, i8** %17, align 8, !tbaa !10
  %453 = icmp eq i8* %452, null
  br i1 %453, label %.loopexit, label %454

; <label>:454                                     ; preds = %449
  %455 = icmp eq i8* %.pre1598, %452
  br i1 %455, label %441, label %456

; <label>:456                                     ; preds = %454
  %457 = getelementptr inbounds i8* %452, i64 %443
  %458 = ptrtoint i8* %begalt.6.ph to i64
  %459 = sub i64 %458, %442
  %460 = getelementptr inbounds i8* %452, i64 %459
  %461 = icmp eq i8* %fixup_alt_jump.11.ph, null
  br i1 %461, label %466, label %462

; <label>:462                                     ; preds = %456
  %463 = ptrtoint i8* %fixup_alt_jump.11.ph to i64
  %464 = sub i64 %463, %442
  %465 = getelementptr inbounds i8* %452, i64 %464
  br label %466

; <label>:466                                     ; preds = %456, %462
  %fixup_alt_jump.12 = phi i8* [ %465, %462 ], [ null, %456 ]
  %467 = icmp eq i8* %laststart.11.ph, null
  br i1 %467, label %472, label %468

; <label>:468                                     ; preds = %466
  %469 = ptrtoint i8* %laststart.11.ph to i64
  %470 = sub i64 %469, %442
  %471 = getelementptr inbounds i8* %452, i64 %470
  br label %472

; <label>:472                                     ; preds = %466, %468
  %laststart.12 = phi i8* [ %471, %468 ], [ null, %466 ]
  %473 = icmp eq i8* %pending_exact.6.ph, null
  br i1 %473, label %.outer283, label %475

.outer283:                                        ; preds = %472, %475, %.preheader280
  %.pre1598 = phi i8* [ %.pre1598.pre, %.preheader280 ], [ %452, %475 ], [ %452, %472 ]
  %fixup_alt_jump.11.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader280 ], [ %fixup_alt_jump.12, %475 ], [ %fixup_alt_jump.12, %472 ]
  %begalt.6.ph = phi i8* [ %begalt.01123, %.preheader280 ], [ %460, %475 ], [ %460, %472 ]
  %laststart.11.ph = phi i8* [ %b.01147, %.preheader280 ], [ %laststart.12, %475 ], [ %laststart.12, %472 ]
  %pending_exact.6.ph = phi i8* [ %pending_exact.01132, %.preheader280 ], [ %478, %475 ], [ null, %472 ]
  %b.6.ph = phi i8* [ %b.01147, %.preheader280 ], [ %457, %475 ], [ %457, %472 ]
  %474 = ptrtoint i8* %b.6.ph to i64
  br label %441

; <label>:475                                     ; preds = %472
  %476 = ptrtoint i8* %pending_exact.6.ph to i64
  %477 = sub i64 %476, %442
  %478 = getelementptr inbounds i8* %452, i64 %477
  br label %.outer283

; <label>:479                                     ; preds = %441
  %480 = getelementptr inbounds i8* %b.6.ph, i64 1
  store i8 3, i8* %b.6.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:481                                     ; preds = %85
  %482 = icmp eq i8* %79, %1
  br i1 %482, label %483, label %.preheader297

.preheader297:                                    ; preds = %481
  %.pre1596.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer300

; <label>:483                                     ; preds = %481
  %484 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %484) #8
  br label %.loopexit

; <label>:485                                     ; preds = %.outer300, %498
  %486 = ptrtoint i8* %.pre1596 to i64
  %487 = sub i64 %518, %486
  %488 = add nsw i64 %487, 34
  %489 = load i64* %14, align 8, !tbaa !22
  %490 = icmp ugt i64 %488, %489
  br i1 %490, label %491, label %.outer296

; <label>:491                                     ; preds = %485
  %492 = icmp eq i64 %489, 65536
  br i1 %492, label %.loopexit, label %493

; <label>:493                                     ; preds = %491
  %494 = shl i64 %489, 1
  %495 = icmp ugt i64 %494, 65536
  %.94 = select i1 %495, i64 65536, i64 %494
  store i64 %.94, i64* %14, align 8, !tbaa !22
  %496 = tail call i8* @realloc(i8* %.pre1596, i64 %.94) #7
  store i8* %496, i8** %17, align 8, !tbaa !10
  %497 = icmp eq i8* %496, null
  br i1 %497, label %.loopexit, label %498

; <label>:498                                     ; preds = %493
  %499 = icmp eq i8* %.pre1596, %496
  br i1 %499, label %485, label %500

; <label>:500                                     ; preds = %498
  %501 = getelementptr inbounds i8* %496, i64 %487
  %502 = ptrtoint i8* %begalt.7.ph to i64
  %503 = sub i64 %502, %486
  %504 = getelementptr inbounds i8* %496, i64 %503
  %505 = icmp eq i8* %fixup_alt_jump.13.ph, null
  br i1 %505, label %510, label %506

; <label>:506                                     ; preds = %500
  %507 = ptrtoint i8* %fixup_alt_jump.13.ph to i64
  %508 = sub i64 %507, %486
  %509 = getelementptr inbounds i8* %496, i64 %508
  br label %510

; <label>:510                                     ; preds = %500, %506
  %fixup_alt_jump.14 = phi i8* [ %509, %506 ], [ null, %500 ]
  %511 = icmp eq i8* %laststart.13.ph, null
  br i1 %511, label %516, label %512

; <label>:512                                     ; preds = %510
  %513 = ptrtoint i8* %laststart.13.ph to i64
  %514 = sub i64 %513, %486
  %515 = getelementptr inbounds i8* %496, i64 %514
  br label %516

; <label>:516                                     ; preds = %510, %512
  %laststart.14 = phi i8* [ %515, %512 ], [ null, %510 ]
  %517 = icmp eq i8* %pending_exact.7.ph, null
  br i1 %517, label %.outer300, label %519

.outer300:                                        ; preds = %516, %519, %.preheader297
  %.pre1596 = phi i8* [ %.pre1596.pre, %.preheader297 ], [ %496, %519 ], [ %496, %516 ]
  %fixup_alt_jump.13.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader297 ], [ %fixup_alt_jump.14, %519 ], [ %fixup_alt_jump.14, %516 ]
  %begalt.7.ph = phi i8* [ %begalt.01123, %.preheader297 ], [ %504, %519 ], [ %504, %516 ]
  %laststart.13.ph = phi i8* [ %laststart.01128, %.preheader297 ], [ %laststart.14, %519 ], [ %laststart.14, %516 ]
  %pending_exact.7.ph = phi i8* [ %pending_exact.01132, %.preheader297 ], [ %522, %519 ], [ null, %516 ]
  %b.7.ph = phi i8* [ %b.01147, %.preheader297 ], [ %501, %519 ], [ %501, %516 ]
  %518 = ptrtoint i8* %b.7.ph to i64
  br label %485

; <label>:519                                     ; preds = %516
  %520 = ptrtoint i8* %pending_exact.7.ph to i64
  %521 = sub i64 %520, %486
  %522 = getelementptr inbounds i8* %496, i64 %521
  br label %.outer300

; <label>:523                                     ; preds = %.outer296, %536
  %524 = ptrtoint i8* %556 to i64
  %525 = sub i64 %557, %524
  %526 = add nsw i64 %525, 1
  %527 = load i64* %14, align 8, !tbaa !22
  %528 = icmp ugt i64 %526, %527
  br i1 %528, label %529, label %562

; <label>:529                                     ; preds = %523
  %530 = icmp eq i64 %527, 65536
  br i1 %530, label %.loopexit, label %531

; <label>:531                                     ; preds = %529
  %532 = shl i64 %527, 1
  %533 = icmp ugt i64 %532, 65536
  %.95 = select i1 %533, i64 65536, i64 %532
  store i64 %.95, i64* %14, align 8, !tbaa !22
  %534 = tail call i8* @realloc(i8* %556, i64 %.95) #7
  store i8* %534, i8** %17, align 8, !tbaa !10
  %535 = icmp eq i8* %534, null
  br i1 %535, label %.loopexit, label %536

; <label>:536                                     ; preds = %531
  %537 = icmp eq i8* %556, %534
  br i1 %537, label %523, label %538

; <label>:538                                     ; preds = %536
  %539 = getelementptr inbounds i8* %534, i64 %525
  %540 = ptrtoint i8* %begalt.8.ph to i64
  %541 = sub i64 %540, %524
  %542 = getelementptr inbounds i8* %534, i64 %541
  %543 = icmp eq i8* %fixup_alt_jump.15.ph, null
  br i1 %543, label %548, label %544

; <label>:544                                     ; preds = %538
  %545 = ptrtoint i8* %fixup_alt_jump.15.ph to i64
  %546 = sub i64 %545, %524
  %547 = getelementptr inbounds i8* %534, i64 %546
  br label %548

; <label>:548                                     ; preds = %538, %544
  %fixup_alt_jump.16 = phi i8* [ %547, %544 ], [ null, %538 ]
  %549 = icmp eq i8* %laststart.15.ph, null
  br i1 %549, label %554, label %550

; <label>:550                                     ; preds = %548
  %551 = ptrtoint i8* %laststart.15.ph to i64
  %552 = sub i64 %551, %524
  %553 = getelementptr inbounds i8* %534, i64 %552
  br label %554

; <label>:554                                     ; preds = %548, %550
  %laststart.16 = phi i8* [ %553, %550 ], [ null, %548 ]
  %555 = icmp eq i8* %pending_exact.8.ph, null
  br i1 %555, label %.outer296, label %558

.outer296:                                        ; preds = %554, %558, %485
  %556 = phi i8* [ %.pre1596, %485 ], [ %534, %558 ], [ %534, %554 ]
  %fixup_alt_jump.15.ph = phi i8* [ %fixup_alt_jump.13.ph, %485 ], [ %fixup_alt_jump.16, %558 ], [ %fixup_alt_jump.16, %554 ]
  %begalt.8.ph = phi i8* [ %begalt.7.ph, %485 ], [ %542, %558 ], [ %542, %554 ]
  %laststart.15.ph = phi i8* [ %b.7.ph, %485 ], [ %laststart.16, %558 ], [ %laststart.16, %554 ]
  %pending_exact.8.ph = phi i8* [ %pending_exact.7.ph, %485 ], [ %561, %558 ], [ null, %554 ]
  %b.8.ph = phi i8* [ %b.7.ph, %485 ], [ %539, %558 ], [ %539, %554 ]
  %557 = ptrtoint i8* %b.8.ph to i64
  br label %523

; <label>:558                                     ; preds = %554
  %559 = ptrtoint i8* %pending_exact.8.ph to i64
  %560 = sub i64 %559, %524
  %561 = getelementptr inbounds i8* %534, i64 %560
  br label %.outer296

; <label>:562                                     ; preds = %523
  %563 = load i8* %79, align 1, !tbaa !12
  %564 = icmp eq i8 %563, 94
  %565 = select i1 %564, i8 5, i8 4
  %566 = getelementptr inbounds i8* %b.8.ph, i64 1
  store i8 %565, i8* %b.8.ph, align 1, !tbaa !12
  %567 = load i8** %p, align 8, !tbaa !13
  %568 = load i8* %567, align 1, !tbaa !12
  %569 = icmp eq i8 %568, 94
  br i1 %569, label %570, label %572

; <label>:570                                     ; preds = %562
  %571 = getelementptr inbounds i8* %567, i64 1
  store i8* %571, i8** %p, align 8, !tbaa !13
  br label %572

; <label>:572                                     ; preds = %570, %562
  %573 = phi i8* [ %571, %570 ], [ %567, %562 ]
  %.pre1597.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer292

.outer292:                                        ; preds = %606, %608, %572
  %.pre1597 = phi i8* [ %.pre1597.pre, %572 ], [ %586, %608 ], [ %586, %606 ]
  %fixup_alt_jump.17.ph = phi i8* [ %fixup_alt_jump.15.ph, %572 ], [ %fixup_alt_jump.18, %608 ], [ %fixup_alt_jump.18, %606 ]
  %begalt.9.ph = phi i8* [ %begalt.8.ph, %572 ], [ %594, %608 ], [ %594, %606 ]
  %laststart.17.ph = phi i8* [ %laststart.15.ph, %572 ], [ %laststart.18, %608 ], [ %laststart.18, %606 ]
  %pending_exact.9.ph = phi i8* [ %pending_exact.8.ph, %572 ], [ %611, %608 ], [ null, %606 ]
  %b.9.ph = phi i8* [ %566, %572 ], [ %591, %608 ], [ %591, %606 ]
  %574 = ptrtoint i8* %b.9.ph to i64
  br label %575

; <label>:575                                     ; preds = %.outer292, %588
  %576 = ptrtoint i8* %.pre1597 to i64
  %577 = sub i64 %574, %576
  %578 = add nsw i64 %577, 1
  %579 = load i64* %14, align 8, !tbaa !22
  %580 = icmp ugt i64 %578, %579
  br i1 %580, label %581, label %612

; <label>:581                                     ; preds = %575
  %582 = icmp eq i64 %579, 65536
  br i1 %582, label %.loopexit, label %583

; <label>:583                                     ; preds = %581
  %584 = shl i64 %579, 1
  %585 = icmp ugt i64 %584, 65536
  %.96 = select i1 %585, i64 65536, i64 %584
  store i64 %.96, i64* %14, align 8, !tbaa !22
  %586 = tail call i8* @realloc(i8* %.pre1597, i64 %.96) #7
  store i8* %586, i8** %17, align 8, !tbaa !10
  %587 = icmp eq i8* %586, null
  br i1 %587, label %.loopexit, label %588

; <label>:588                                     ; preds = %583
  %589 = icmp eq i8* %.pre1597, %586
  br i1 %589, label %575, label %590

; <label>:590                                     ; preds = %588
  %591 = getelementptr inbounds i8* %586, i64 %577
  %592 = ptrtoint i8* %begalt.9.ph to i64
  %593 = sub i64 %592, %576
  %594 = getelementptr inbounds i8* %586, i64 %593
  %595 = icmp eq i8* %fixup_alt_jump.17.ph, null
  br i1 %595, label %600, label %596

; <label>:596                                     ; preds = %590
  %597 = ptrtoint i8* %fixup_alt_jump.17.ph to i64
  %598 = sub i64 %597, %576
  %599 = getelementptr inbounds i8* %586, i64 %598
  br label %600

; <label>:600                                     ; preds = %590, %596
  %fixup_alt_jump.18 = phi i8* [ %599, %596 ], [ null, %590 ]
  %601 = icmp eq i8* %laststart.17.ph, null
  br i1 %601, label %606, label %602

; <label>:602                                     ; preds = %600
  %603 = ptrtoint i8* %laststart.17.ph to i64
  %604 = sub i64 %603, %576
  %605 = getelementptr inbounds i8* %586, i64 %604
  br label %606

; <label>:606                                     ; preds = %600, %602
  %laststart.18 = phi i8* [ %605, %602 ], [ null, %600 ]
  %607 = icmp eq i8* %pending_exact.9.ph, null
  br i1 %607, label %.outer292, label %608

; <label>:608                                     ; preds = %606
  %609 = ptrtoint i8* %pending_exact.9.ph to i64
  %610 = sub i64 %609, %576
  %611 = getelementptr inbounds i8* %586, i64 %610
  br label %.outer292

; <label>:612                                     ; preds = %575
  %613 = getelementptr inbounds i8* %b.9.ph, i64 1
  store i8 32, i8* %b.9.ph, align 1, !tbaa !12
  %614 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %613, i1 false)
  %615 = tail call i8* @__memset_chk(i8* %613, i32 0, i64 32, i64 %614) #7
  %616 = getelementptr inbounds i8* %b.9.ph, i64 -1
  %617 = load i8* %616, align 1, !tbaa !12
  %618 = icmp ne i8 %617, 5
  %or.cond99 = or i1 %55, %618
  br i1 %or.cond99, label %.preheader285, label %619

; <label>:619                                     ; preds = %612
  %620 = getelementptr inbounds i8* %b.9.ph, i64 2
  %621 = load i8* %620, align 1, !tbaa !12
  %622 = or i8 %621, 4
  store i8 %622, i8* %620, align 1, !tbaa !12
  br label %.preheader285

.preheader285:                                    ; preds = %619, %612
  %623 = load i8** %p, align 8, !tbaa !13
  %624 = icmp eq i8* %623, %1
  br i1 %624, label %.outer287._crit_edge, label %.lr.ph1091.lr.ph

.lr.ph1091.lr.ph:                                 ; preds = %.preheader285
  %625 = getelementptr inbounds i8* %b.9.ph, i64 12
  %626 = getelementptr inbounds i8* %b.9.ph, i64 8
  br label %.lr.ph1091

.lr.ph1091:                                       ; preds = %.lr.ph1091.lr.ph, %.outer287.backedge
  %627 = phi i8* [ %623, %.lr.ph1091.lr.ph ], [ %951, %.outer287.backedge ]
  %had_char_class.0.ph1106 = phi i8 [ 0, %.lr.ph1091.lr.ph ], [ %had_char_class.0.ph.be, %.outer287.backedge ]
  %628 = icmp ne i8 %had_char_class.0.ph1106, 0
  br label %630

.outer287._crit_edge:                             ; preds = %.preheader285, %.outer287.backedge, %.backedge288
  %629 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %629) #8
  br label %.loopexit

; <label>:630                                     ; preds = %.lr.ph1091, %.backedge288
  %631 = phi i8* [ %627, %.lr.ph1091 ], [ %661, %.backedge288 ]
  %632 = getelementptr inbounds i8* %631, i64 1
  store i8* %632, i8** %p, align 8, !tbaa !13
  %633 = load i8* %631, align 1, !tbaa !12
  br i1 %31, label %634, label %638

; <label>:634                                     ; preds = %630
  %635 = zext i8 %633 to i64
  %636 = getelementptr inbounds i8* %3, i64 %635
  %637 = load i8* %636, align 1, !tbaa !12
  br label %638

; <label>:638                                     ; preds = %630, %634
  %c.4 = phi i8 [ %637, %634 ], [ %633, %630 ]
  %639 = icmp eq i8 %c.4, 92
  %or.cond101 = and i1 %57, %639
  br i1 %or.cond101, label %640, label %663

; <label>:640                                     ; preds = %638
  %641 = icmp eq i8* %632, %1
  br i1 %641, label %642, label %644

; <label>:642                                     ; preds = %640
  %643 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %643) #8
  br label %.loopexit

; <label>:644                                     ; preds = %640
  %645 = getelementptr inbounds i8* %631, i64 2
  store i8* %645, i8** %p, align 8, !tbaa !13
  %646 = load i8* %632, align 1, !tbaa !12
  br i1 %31, label %647, label %651

; <label>:647                                     ; preds = %644
  %648 = zext i8 %646 to i64
  %649 = getelementptr inbounds i8* %3, i64 %648
  %650 = load i8* %649, align 1, !tbaa !12
  br label %651

; <label>:651                                     ; preds = %644, %647
  %c1.1 = phi i8 [ %650, %647 ], [ %646, %644 ]
  %652 = and i8 %c1.1, 7
  %653 = zext i8 %652 to i32
  %654 = shl i32 1, %653
  %div68 = lshr i8 %c1.1, 3
  %655 = zext i8 %div68 to i64
  %.sum69 = add nuw nsw i64 %655, 1
  %656 = getelementptr inbounds i8* %b.9.ph, i64 %.sum69
  %657 = load i8* %656, align 1, !tbaa !12
  %658 = zext i8 %657 to i32
  %659 = or i32 %654, %658
  %660 = trunc i32 %659 to i8
  store i8 %660, i8* %656, align 1, !tbaa !12
  br label %.backedge288

.backedge288:                                     ; preds = %651, %705, %693
  %661 = load i8** %p, align 8, !tbaa !13
  %662 = icmp eq i8* %661, %1
  br i1 %662, label %.outer287._crit_edge, label %630

; <label>:663                                     ; preds = %638
  %664 = icmp eq i8 %c.4, 93
  br i1 %664, label %665, label %667

; <label>:665                                     ; preds = %663
  %666 = icmp eq i8* %631, %573
  br i1 %666, label %.thread209, label %thread-pre-split

; <label>:667                                     ; preds = %663
  %668 = icmp eq i8 %c.4, 45
  %or.cond103 = and i1 %628, %668
  br i1 %or.cond103, label %669, label %674

; <label>:669                                     ; preds = %667
  %670 = load i8* %632, align 1, !tbaa !12
  %671 = icmp eq i8 %670, 93
  br i1 %671, label %674, label %672

; <label>:672                                     ; preds = %669
  %673 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %673) #8
  br label %.loopexit

; <label>:674                                     ; preds = %667, %669
  br i1 %668, label %675, label %.thread209

; <label>:675                                     ; preds = %674
  %676 = getelementptr inbounds i8* %631, i64 -1
  %677 = icmp ult i8* %676, %pattern
  br i1 %677, label %681, label %678

; <label>:678                                     ; preds = %675
  %679 = load i8* %676, align 1, !tbaa !12
  %680 = icmp eq i8 %679, 91
  br i1 %680, label %.thread209, label %681

; <label>:681                                     ; preds = %675, %678
  %682 = getelementptr inbounds i8* %631, i64 -2
  %683 = icmp ult i8* %682, %pattern
  br i1 %683, label %690, label %684

; <label>:684                                     ; preds = %681
  %685 = load i8* %682, align 1, !tbaa !12
  %686 = icmp eq i8 %685, 91
  br i1 %686, label %687, label %690

; <label>:687                                     ; preds = %684
  %688 = load i8* %676, align 1, !tbaa !12
  %689 = icmp eq i8 %688, 94
  br i1 %689, label %.thread209, label %690

; <label>:690                                     ; preds = %681, %687, %684
  %691 = load i8* %632, align 1, !tbaa !12
  %692 = icmp eq i8 %691, 93
  br i1 %692, label %.thread209.thread, label %693

; <label>:693                                     ; preds = %690
  %694 = call fastcc i32 @compile_range(i8** %p, i8* %1, i8* %3, i64 %syntax, i8* %613) #8
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %.backedge288, label %696

; <label>:696                                     ; preds = %693
  %697 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %697) #8
  br label %.loopexit

.thread209:                                       ; preds = %665, %687, %678, %674
  %.pr1649 = load i8* %632, align 1, !tbaa !12
  %698 = icmp eq i8 %.pr1649, 45
  br i1 %698, label %699, label %.thread209.thread

; <label>:699                                     ; preds = %.thread209
  %700 = getelementptr inbounds i8* %631, i64 2
  %701 = load i8* %700, align 1, !tbaa !12
  %702 = icmp eq i8 %701, 93
  br i1 %702, label %.thread209.thread, label %703

; <label>:703                                     ; preds = %699
  %704 = icmp eq i8* %632, %1
  br i1 %704, label %.loopexit, label %705

; <label>:705                                     ; preds = %703
  store i8* %700, i8** %p, align 8, !tbaa !13
  %706 = call fastcc i32 @compile_range(i8** %p, i8* %1, i8* %3, i64 %syntax, i8* %613) #8
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %.backedge288, label %708

; <label>:708                                     ; preds = %705
  %709 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %709) #8
  br label %.loopexit

.thread209.thread:                                ; preds = %690, %699, %.thread209
  %710 = phi i8 [ 45, %699 ], [ %.pr1649, %.thread209 ], [ 93, %690 ]
  %711 = icmp eq i8 %c.4, 91
  %or.cond105 = and i1 %59, %711
  %712 = icmp eq i8 %710, 58
  %or.cond1665 = and i1 %or.cond105, %712
  br i1 %or.cond1665, label %713, label %953

; <label>:713                                     ; preds = %.thread209.thread
  %714 = icmp eq i8* %632, %1
  br i1 %714, label %.loopexit, label %715

; <label>:715                                     ; preds = %713
  %716 = getelementptr inbounds i8* %631, i64 2
  store i8* %716, i8** %p, align 8, !tbaa !13
  %717 = icmp eq i8* %716, %1
  br i1 %717, label %718, label %.lr.ph1095

; <label>:718                                     ; preds = %715
  %719 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %719) #8
  br label %.loopexit

; <label>:720                                     ; preds = %.lr.ph1095, %742
  %721 = phi i8* [ %740, %.lr.ph1095 ], [ %722, %742 ]
  %722 = getelementptr inbounds i8* %721, i64 1
  store i8* %722, i8** %p, align 8, !tbaa !13
  %723 = load i8* %721, align 1, !tbaa !12
  br i1 %31, label %724, label %728

; <label>:724                                     ; preds = %720
  %725 = zext i8 %723 to i64
  %726 = getelementptr inbounds i8* %3, i64 %725
  %727 = load i8* %726, align 1, !tbaa !12
  br label %728

; <label>:728                                     ; preds = %720, %724
  %c.5 = phi i8 [ %727, %724 ], [ %723, %720 ]
  %729 = icmp eq i8 %c.5, 58
  br i1 %729, label %730, label %734

; <label>:730                                     ; preds = %728
  %731 = load i8* %722, align 1, !tbaa !12
  %732 = icmp eq i8 %731, 93
  %733 = icmp eq i8* %722, %1
  %or.cond108 = or i1 %733, %732
  br i1 %or.cond108, label %747, label %735

; <label>:734                                     ; preds = %728
  %.old107 = icmp eq i8* %722, %1
  br i1 %.old107, label %744, label %735

; <label>:735                                     ; preds = %730, %734
  br i1 %741, label %.outer240, label %742

.outer240:                                        ; preds = %735
  %736 = add i8 %c1.2.ph1096, 1
  %737 = zext i8 %c1.2.ph1096 to i64
  %738 = getelementptr inbounds [7 x i8]* %str, i64 0, i64 %737
  store i8 %c.5, i8* %738, align 1, !tbaa !12
  %739 = icmp eq i8* %722, %1
  br i1 %739, label %.loopexit, label %.lr.ph1095

.lr.ph1095:                                       ; preds = %715, %.outer240
  %740 = phi i8* [ %722, %.outer240 ], [ %716, %715 ]
  %c1.2.ph1096 = phi i8 [ %736, %.outer240 ], [ 0, %715 ]
  %741 = icmp ult i8 %c1.2.ph1096, 6
  br label %720

; <label>:742                                     ; preds = %735
  store i8 0, i8* %60, align 1, !tbaa !12
  %743 = icmp eq i8* %722, %1
  br i1 %743, label %.loopexit, label %720

; <label>:744                                     ; preds = %734
  %745 = zext i8 %c1.2.ph1096 to i64
  %746 = getelementptr inbounds [7 x i8]* %str, i64 0, i64 %745
  store i8 0, i8* %746, align 1, !tbaa !12
  br label %942

; <label>:747                                     ; preds = %730
  %748 = zext i8 %c1.2.ph1096 to i64
  %749 = getelementptr inbounds [7 x i8]* %str, i64 0, i64 %748
  store i8 0, i8* %749, align 1, !tbaa !12
  %750 = load i8* %722, align 1, !tbaa !12
  %751 = icmp eq i8 %750, 93
  br i1 %751, label %752, label %942

; <label>:752                                     ; preds = %747
  %753 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) #7
  %754 = icmp eq i32 %753, 0
  %755 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)) #7
  %756 = icmp eq i32 %755, 0
  %757 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str2, i64 0, i64 0)) #7
  %758 = icmp eq i32 %757, 0
  %759 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) #7
  %760 = icmp eq i32 %759, 0
  %761 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0)) #7
  %762 = icmp eq i32 %761, 0
  %763 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0)) #7
  %764 = icmp eq i32 %763, 0
  %765 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #7
  %766 = icmp eq i32 %765, 0
  %767 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0)) #7
  %768 = icmp eq i32 %767, 0
  %769 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str8, i64 0, i64 0)) #7
  %770 = icmp eq i32 %769, 0
  %771 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str9, i64 0, i64 0)) #7
  %772 = icmp eq i32 %771, 0
  %773 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0)) #7
  %774 = icmp eq i32 %773, 0
  %775 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8]* @.str11, i64 0, i64 0)) #7
  %776 = icmp eq i32 %775, 0
  %brmerge217 = or i1 %756, %774
  %brmerge218 = or i1 %766, %brmerge217
  %brmerge219 = or i1 %762, %brmerge218
  %brmerge220 = or i1 %754, %brmerge219
  %brmerge221 = or i1 %776, %brmerge220
  %brmerge222 = or i1 %772, %brmerge221
  %brmerge223 = or i1 %768, %brmerge222
  %brmerge224 = or i1 %770, %brmerge223
  %brmerge225 = or i1 %764, %brmerge224
  %brmerge226 = or i1 %760, %brmerge225
  %brmerge227 = or i1 %758, %brmerge226
  br i1 %brmerge227, label %779, label %777

; <label>:777                                     ; preds = %752
  %778 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %778) #8
  br label %.loopexit

; <label>:779                                     ; preds = %752
  br i1 %733, label %.loopexit, label %780

; <label>:780                                     ; preds = %779
  %781 = getelementptr inbounds i8* %721, i64 2
  store i8* %781, i8** %p, align 8, !tbaa !13
  %782 = icmp eq i8* %781, %1
  br i1 %782, label %783, label %.preheader236

.preheader236:                                    ; preds = %780
  %brmerge = or i1 %766, %774
  %or.cond144 = and i1 %31, %brmerge
  br label %785

; <label>:783                                     ; preds = %780
  %784 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %784) #8
  br label %.loopexit

; <label>:785                                     ; preds = %941, %.preheader236
  %indvars.iv = phi i64 [ 0, %.preheader236 ], [ %indvars.iv.next, %941 ]
  br i1 %754, label %786, label %794

; <label>:786                                     ; preds = %785
  %787 = trunc i64 %indvars.iv to i32
  %isascii.i.i189 = icmp ult i32 %787, 128
  br i1 %isascii.i.i189, label %788, label %792

; <label>:788                                     ; preds = %786
  %789 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %790 = load i32* %789, align 4, !tbaa !15
  %791 = and i32 %790, 1280
  br label %isalnum.exit

; <label>:792                                     ; preds = %786
  %793 = tail call i32 @__maskrune(i32 %787, i64 1280) #7
  br label %isalnum.exit

isalnum.exit:                                     ; preds = %788, %792
  %.sink.i.in.i190 = phi i32 [ %791, %788 ], [ %793, %792 ]
  %.sink.i.i191 = icmp eq i32 %.sink.i.in.i190, 0
  br i1 %.sink.i.i191, label %794, label %815

; <label>:794                                     ; preds = %isalnum.exit, %785
  br i1 %756, label %795, label %803

; <label>:795                                     ; preds = %794
  %796 = trunc i64 %indvars.iv to i32
  %isascii.i.i192 = icmp ult i32 %796, 128
  br i1 %isascii.i.i192, label %797, label %801

; <label>:797                                     ; preds = %795
  %798 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %799 = load i32* %798, align 4, !tbaa !15
  %800 = and i32 %799, 256
  br label %isalpha.exit

; <label>:801                                     ; preds = %795
  %802 = tail call i32 @__maskrune(i32 %796, i64 256) #7
  br label %isalpha.exit

isalpha.exit:                                     ; preds = %797, %801
  %.sink.i.in.i193 = phi i32 [ %800, %797 ], [ %802, %801 ]
  %.sink.i.i194 = icmp eq i32 %.sink.i.in.i193, 0
  br i1 %.sink.i.i194, label %803, label %815

; <label>:803                                     ; preds = %isalpha.exit, %794
  br i1 %758, label %804, label %806

; <label>:804                                     ; preds = %803
  %805 = trunc i64 %indvars.iv to i32
  switch i32 %805, label %806 [
    i32 32, label %815
    i32 9, label %815
  ]

; <label>:806                                     ; preds = %804, %803
  br i1 %760, label %807, label %826

; <label>:807                                     ; preds = %806
  %808 = trunc i64 %indvars.iv to i32
  %isascii.i.i195 = icmp ult i32 %808, 128
  br i1 %isascii.i.i195, label %809, label %813

; <label>:809                                     ; preds = %807
  %810 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %811 = load i32* %810, align 4, !tbaa !15
  %812 = and i32 %811, 512
  br label %iscntrl.exit

; <label>:813                                     ; preds = %807
  %814 = tail call i32 @__maskrune(i32 %808, i64 512) #7
  br label %iscntrl.exit

iscntrl.exit:                                     ; preds = %809, %813
  %.sink.i.in.i196 = phi i32 [ %812, %809 ], [ %814, %813 ]
  %.sink.i.i197 = icmp eq i32 %.sink.i.in.i196, 0
  br i1 %.sink.i.i197, label %826, label %815

; <label>:815                                     ; preds = %isalnum.exit, %isalpha.exit, %iscntrl.exit, %804, %804
  %.pre-phi1633 = phi i32 [ %787, %isalnum.exit ], [ %796, %isalpha.exit ], [ %808, %iscntrl.exit ], [ %805, %804 ], [ %805, %804 ]
  %816 = and i32 %.pre-phi1633, 7
  %817 = shl i32 1, %816
  %818 = lshr i32 %.pre-phi1633, 3
  %819 = and i32 %818, 31
  %820 = zext i32 %819 to i64
  %.sum65 = add nuw nsw i64 %820, 1
  %821 = getelementptr inbounds i8* %b.9.ph, i64 %.sum65
  %822 = load i8* %821, align 1, !tbaa !12
  %823 = zext i8 %822 to i32
  %824 = or i32 %823, %817
  %825 = trunc i32 %824 to i8
  store i8 %825, i8* %821, align 1, !tbaa !12
  br label %826

; <label>:826                                     ; preds = %iscntrl.exit, %815, %806
  %827 = add i64 %indvars.iv, 4294967248
  %828 = trunc i64 %827 to i32
  %isdigit64 = icmp ult i32 %828, 10
  %or.cond = and i1 %762, %isdigit64
  br i1 %or.cond, label %._crit_edge1634, label %829

._crit_edge1634:                                  ; preds = %826
  %.pre1637 = trunc i64 %indvars.iv to i32
  br label %863

; <label>:829                                     ; preds = %826
  br i1 %764, label %830, label %845

; <label>:830                                     ; preds = %829
  %831 = trunc i64 %indvars.iv to i32
  %isascii.i.i198 = icmp ult i32 %831, 128
  br i1 %isascii.i.i198, label %832, label %836

; <label>:832                                     ; preds = %830
  %833 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %834 = load i32* %833, align 4, !tbaa !15
  %835 = and i32 %834, 262144
  br label %isprint.exit201

; <label>:836                                     ; preds = %830
  %837 = tail call i32 @__maskrune(i32 %831, i64 262144) #7
  br label %isprint.exit201

isprint.exit201:                                  ; preds = %832, %836
  %.sink.i.in.i199 = phi i32 [ %835, %832 ], [ %837, %836 ]
  %.sink.i.i200 = icmp eq i32 %.sink.i.in.i199, 0
  br i1 %.sink.i.i200, label %845, label %838

; <label>:838                                     ; preds = %isprint.exit201
  br i1 %isascii.i.i198, label %839, label %843

; <label>:839                                     ; preds = %838
  %840 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %841 = load i32* %840, align 4, !tbaa !15
  %842 = and i32 %841, 16384
  br label %isspace.exit205

; <label>:843                                     ; preds = %838
  %844 = tail call i32 @__maskrune(i32 %831, i64 16384) #7
  br label %isspace.exit205

isspace.exit205:                                  ; preds = %839, %843
  %.sink.i.in.i203 = phi i32 [ %842, %839 ], [ %844, %843 ]
  %.sink.i.i204 = icmp eq i32 %.sink.i.in.i203, 0
  br i1 %.sink.i.i204, label %863, label %845

; <label>:845                                     ; preds = %isspace.exit205, %isprint.exit201, %829
  br i1 %766, label %846, label %854

; <label>:846                                     ; preds = %845
  %847 = trunc i64 %indvars.iv to i32
  %isascii.i.i185 = icmp ult i32 %847, 128
  br i1 %isascii.i.i185, label %848, label %852

; <label>:848                                     ; preds = %846
  %849 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %850 = load i32* %849, align 4, !tbaa !15
  %851 = and i32 %850, 4096
  br label %islower.exit188

; <label>:852                                     ; preds = %846
  %853 = tail call i32 @__maskrune(i32 %847, i64 4096) #7
  br label %islower.exit188

islower.exit188:                                  ; preds = %848, %852
  %.sink.i.in.i186 = phi i32 [ %851, %848 ], [ %853, %852 ]
  %.sink.i.i187 = icmp eq i32 %.sink.i.in.i186, 0
  br i1 %.sink.i.i187, label %854, label %863

; <label>:854                                     ; preds = %islower.exit188, %845
  br i1 %768, label %855, label %874

; <label>:855                                     ; preds = %854
  %856 = trunc i64 %indvars.iv to i32
  %isascii.i.i178 = icmp ult i32 %856, 128
  br i1 %isascii.i.i178, label %857, label %861

; <label>:857                                     ; preds = %855
  %858 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %859 = load i32* %858, align 4, !tbaa !15
  %860 = and i32 %859, 262144
  br label %isprint.exit

; <label>:861                                     ; preds = %855
  %862 = tail call i32 @__maskrune(i32 %856, i64 262144) #7
  br label %isprint.exit

isprint.exit:                                     ; preds = %857, %861
  %.sink.i.in.i179 = phi i32 [ %860, %857 ], [ %862, %861 ]
  %.sink.i.i180 = icmp eq i32 %.sink.i.in.i179, 0
  br i1 %.sink.i.i180, label %874, label %863

; <label>:863                                     ; preds = %._crit_edge1634, %isspace.exit205, %islower.exit188, %isprint.exit
  %.pre-phi1638 = phi i32 [ %.pre1637, %._crit_edge1634 ], [ %831, %isspace.exit205 ], [ %847, %islower.exit188 ], [ %856, %isprint.exit ]
  %864 = and i32 %.pre-phi1638, 7
  %865 = shl i32 1, %864
  %866 = lshr i32 %.pre-phi1638, 3
  %867 = and i32 %866, 31
  %868 = zext i32 %867 to i64
  %.sum62 = add nuw nsw i64 %868, 1
  %869 = getelementptr inbounds i8* %b.9.ph, i64 %.sum62
  %870 = load i8* %869, align 1, !tbaa !12
  %871 = zext i8 %870 to i32
  %872 = or i32 %871, %865
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %869, align 1, !tbaa !12
  br label %874

; <label>:874                                     ; preds = %isprint.exit, %863, %854
  br i1 %770, label %875, label %883

; <label>:875                                     ; preds = %874
  %876 = trunc i64 %indvars.iv to i32
  %isascii.i.i171 = icmp ult i32 %876, 128
  br i1 %isascii.i.i171, label %877, label %881

; <label>:877                                     ; preds = %875
  %878 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %879 = load i32* %878, align 4, !tbaa !15
  %880 = and i32 %879, 8192
  br label %ispunct.exit

; <label>:881                                     ; preds = %875
  %882 = tail call i32 @__maskrune(i32 %876, i64 8192) #7
  br label %ispunct.exit

ispunct.exit:                                     ; preds = %877, %881
  %.sink.i.in.i172 = phi i32 [ %880, %877 ], [ %882, %881 ]
  %.sink.i.i173 = icmp eq i32 %.sink.i.in.i172, 0
  br i1 %.sink.i.i173, label %883, label %905

; <label>:883                                     ; preds = %ispunct.exit, %874
  br i1 %772, label %884, label %892

; <label>:884                                     ; preds = %883
  %885 = trunc i64 %indvars.iv to i32
  %isascii.i.i168 = icmp ult i32 %885, 128
  br i1 %isascii.i.i168, label %886, label %890

; <label>:886                                     ; preds = %884
  %887 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %888 = load i32* %887, align 4, !tbaa !15
  %889 = and i32 %888, 16384
  br label %isspace.exit

; <label>:890                                     ; preds = %884
  %891 = tail call i32 @__maskrune(i32 %885, i64 16384) #7
  br label %isspace.exit

isspace.exit:                                     ; preds = %886, %890
  %.sink.i.in.i169 = phi i32 [ %889, %886 ], [ %891, %890 ]
  %.sink.i.i170 = icmp eq i32 %.sink.i.in.i169, 0
  br i1 %.sink.i.i170, label %892, label %905

; <label>:892                                     ; preds = %isspace.exit, %883
  br i1 %774, label %893, label %901

; <label>:893                                     ; preds = %892
  %894 = trunc i64 %indvars.iv to i32
  %isascii.i.i164 = icmp ult i32 %894, 128
  br i1 %isascii.i.i164, label %895, label %899

; <label>:895                                     ; preds = %893
  %896 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %897 = load i32* %896, align 4, !tbaa !15
  %898 = and i32 %897, 32768
  br label %isupper.exit167

; <label>:899                                     ; preds = %893
  %900 = tail call i32 @__maskrune(i32 %894, i64 32768) #7
  br label %isupper.exit167

isupper.exit167:                                  ; preds = %895, %899
  %.sink.i.in.i165 = phi i32 [ %898, %895 ], [ %900, %899 ]
  %.sink.i.i166 = icmp eq i32 %.sink.i.in.i165, 0
  br i1 %.sink.i.i166, label %901, label %905

; <label>:901                                     ; preds = %isupper.exit167, %892
  br i1 %776, label %isxdigit.exit, label %isxdigit.exit.thread

isxdigit.exit:                                    ; preds = %901
  %902 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %903 = load i32* %902, align 4, !tbaa !15
  %.lobit.i = and i32 %903, 65536
  %904 = icmp eq i32 %.lobit.i, 0
  br i1 %904, label %isxdigit.exit.thread, label %isxdigit.exit._crit_edge

isxdigit.exit._crit_edge:                         ; preds = %isxdigit.exit
  %.pre1639 = trunc i64 %indvars.iv to i32
  br label %905

; <label>:905                                     ; preds = %isxdigit.exit._crit_edge, %ispunct.exit, %isspace.exit, %isupper.exit167
  %.pre-phi1640 = phi i32 [ %.pre1639, %isxdigit.exit._crit_edge ], [ %876, %ispunct.exit ], [ %885, %isspace.exit ], [ %894, %isupper.exit167 ]
  %906 = and i32 %.pre-phi1640, 7
  %907 = shl i32 1, %906
  %908 = lshr i32 %.pre-phi1640, 3
  %909 = and i32 %908, 31
  %910 = zext i32 %909 to i64
  %.sum61 = add nuw nsw i64 %910, 1
  %911 = getelementptr inbounds i8* %b.9.ph, i64 %.sum61
  %912 = load i8* %911, align 1, !tbaa !12
  %913 = zext i8 %912 to i32
  %914 = or i32 %913, %907
  %915 = trunc i32 %914 to i8
  store i8 %915, i8* %911, align 1, !tbaa !12
  br label %isxdigit.exit.thread

isxdigit.exit.thread:                             ; preds = %901, %isxdigit.exit, %905
  br i1 %or.cond144, label %916, label %941

; <label>:916                                     ; preds = %isxdigit.exit.thread
  %917 = trunc i64 %indvars.iv to i32
  %isascii.i.i160 = icmp ult i32 %917, 128
  br i1 %isascii.i.i160, label %918, label %922

; <label>:918                                     ; preds = %916
  %919 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %920 = load i32* %919, align 4, !tbaa !15
  %921 = and i32 %920, 32768
  br label %isupper.exit

; <label>:922                                     ; preds = %916
  %923 = tail call i32 @__maskrune(i32 %917, i64 32768) #7
  br label %isupper.exit

isupper.exit:                                     ; preds = %918, %922
  %.sink.i.in.i161 = phi i32 [ %921, %918 ], [ %923, %922 ]
  %.sink.i.i162 = icmp eq i32 %.sink.i.in.i161, 0
  br i1 %.sink.i.i162, label %924, label %931

; <label>:924                                     ; preds = %isupper.exit
  br i1 %isascii.i.i160, label %925, label %929

; <label>:925                                     ; preds = %924
  %926 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %927 = load i32* %926, align 4, !tbaa !15
  %928 = and i32 %927, 4096
  br label %islower.exit

; <label>:929                                     ; preds = %924
  %930 = tail call i32 @__maskrune(i32 %917, i64 4096) #7
  br label %islower.exit

islower.exit:                                     ; preds = %925, %929
  %.sink.i.in.i = phi i32 [ %928, %925 ], [ %930, %929 ]
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0
  br i1 %.sink.i.i, label %941, label %931

; <label>:931                                     ; preds = %islower.exit, %isupper.exit
  %932 = and i32 %917, 7
  %933 = shl i32 1, %932
  %934 = lshr i64 %indvars.iv, 3
  %935 = and i64 %934, 31
  %.sum60 = add nuw nsw i64 %935, 1
  %936 = getelementptr inbounds i8* %b.9.ph, i64 %.sum60
  %937 = load i8* %936, align 1, !tbaa !12
  %938 = zext i8 %937 to i32
  %939 = or i32 %938, %933
  %940 = trunc i32 %939 to i8
  store i8 %940, i8* %936, align 1, !tbaa !12
  br label %941

; <label>:941                                     ; preds = %islower.exit, %isxdigit.exit.thread, %931
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %.outer287.backedge, label %785

; <label>:942                                     ; preds = %744, %747
  %943 = icmp eq i8 %c1.2.ph1096, -1
  br i1 %943, label %946, label %.lr.ph1099

.lr.ph1099:                                       ; preds = %942
  %944 = zext i8 %c1.2.ph1096 to i64
  %945 = sub nsw i64 0, %944
  %scevgep1579 = getelementptr i8* %721, i64 %945
  store i8* %scevgep1579, i8** %p, align 8, !tbaa !13
  br label %946

; <label>:946                                     ; preds = %.lr.ph1099, %942
  %947 = load i8* %625, align 1, !tbaa !12
  %948 = or i8 %947, 8
  store i8 %948, i8* %625, align 1, !tbaa !12
  %949 = load i8* %626, align 1, !tbaa !12
  %950 = or i8 %949, 4
  store i8 %950, i8* %626, align 1, !tbaa !12
  br label %.outer287.backedge

.outer287.backedge:                               ; preds = %941, %946, %953
  %had_char_class.0.ph.be = phi i8 [ 0, %953 ], [ 0, %946 ], [ 1, %941 ]
  %951 = load i8** %p, align 8, !tbaa !13
  %952 = icmp eq i8* %951, %1
  br i1 %952, label %.outer287._crit_edge, label %.lr.ph1091

; <label>:953                                     ; preds = %.thread209.thread
  %954 = and i8 %c.4, 7
  %955 = zext i8 %954 to i32
  %956 = shl i32 1, %955
  %div = lshr i8 %c.4, 3
  %957 = zext i8 %div to i64
  %.sum59 = add nuw nsw i64 %957, 1
  %958 = getelementptr inbounds i8* %b.9.ph, i64 %.sum59
  %959 = load i8* %958, align 1, !tbaa !12
  %960 = zext i8 %959 to i32
  %961 = or i32 %960, %956
  %962 = trunc i32 %961 to i8
  store i8 %962, i8* %958, align 1, !tbaa !12
  br label %.outer287.backedge

thread-pre-split:                                 ; preds = %665
  %.pr = load i8* %b.9.ph, align 1, !tbaa !12
  %963 = icmp eq i8 %.pr, 0
  br i1 %963, label %.thread212, label %.lr.ph1109

.lr.ph1109:                                       ; preds = %thread-pre-split, %969
  %964 = phi i8 [ %970, %969 ], [ %.pr, %thread-pre-split ]
  %965 = zext i8 %964 to i64
  %966 = getelementptr inbounds i8* %b.9.ph, i64 %965
  %967 = load i8* %966, align 1, !tbaa !12
  %968 = icmp eq i8 %967, 0
  br i1 %968, label %969, label %.thread212

; <label>:969                                     ; preds = %.lr.ph1109
  %970 = add i8 %964, -1
  store i8 %970, i8* %b.9.ph, align 1, !tbaa !12
  %971 = icmp eq i8 %970, 0
  br i1 %971, label %.thread212, label %.lr.ph1109

.thread212:                                       ; preds = %.lr.ph1109, %969, %thread-pre-split
  %972 = phi i8 [ 0, %thread-pre-split ], [ %964, %.lr.ph1109 ], [ 0, %969 ]
  %973 = zext i8 %972 to i64
  %.sum66 = add nuw nsw i64 %973, 1
  %974 = getelementptr inbounds i8* %b.9.ph, i64 %.sum66
  br label %.backedge367

; <label>:975                                     ; preds = %85
  br i1 %42, label %group_in_compile_stack.exit.thread216, label %989

; <label>:976                                     ; preds = %85
  br i1 %42, label %group_in_compile_stack.exit.thread216, label %1086

; <label>:977                                     ; preds = %85
  br i1 %64, label %group_in_compile_stack.exit.thread216, label %1210

; <label>:978                                     ; preds = %85
  br i1 %43, label %group_in_compile_stack.exit.thread216, label %1210

; <label>:979                                     ; preds = %85
  br i1 %68, label %1313, label %group_in_compile_stack.exit.thread216

; <label>:980                                     ; preds = %85
  %981 = icmp eq i8* %79, %1
  br i1 %981, label %982, label %984

; <label>:982                                     ; preds = %980
  %983 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %983) #8
  br label %.loopexit

; <label>:984                                     ; preds = %980
  %985 = getelementptr inbounds i8* %78, i64 2
  store i8* %985, i8** %p, align 8, !tbaa !13
  %986 = load i8* %79, align 1, !tbaa !12
  %987 = zext i8 %986 to i32
  switch i32 %987, label %1961 [
    i32 40, label %988
    i32 41, label %1080
    i32 124, label %1209
    i32 123, label %1309
    i32 119, label %1575
    i32 87, label %1616
    i32 60, label %1657
    i32 62, label %1698
    i32 98, label %1739
    i32 66, label %1780
    i32 96, label %1821
    i32 39, label %1862
    i32 49, label %1903
    i32 50, label %1903
    i32 51, label %1903
    i32 52, label %1903
    i32 53, label %1903
    i32 54, label %1903
    i32 55, label %1903
    i32 56, label %1903
    i32 57, label %1903
    i32 43, label %1960
    i32 63, label %1960
  ]

; <label>:988                                     ; preds = %984
  br i1 %42, label %989, label %1961

; <label>:989                                     ; preds = %975, %988
  %990 = load i64* %13, align 8, !tbaa !17
  %991 = add i64 %990, 1
  store i64 %991, i64* %13, align 8, !tbaa !17
  %992 = add i32 %regnum.01114, 1
  %993 = lshr i64 %compile_stack.sroa.40.01143, 32
  %994 = trunc i64 %993 to i32
  %995 = trunc i64 %compile_stack.sroa.40.01143 to i32
  %996 = icmp eq i32 %994, %995
  br i1 %996, label %997, label %1008

; <label>:997                                     ; preds = %989
  %998 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  %999 = shl i64 %compile_stack.sroa.40.01143, 1
  %1000 = and i64 %999, 4294967294
  %1001 = mul nuw nsw i64 %1000, 40
  %1002 = tail call i8* @realloc(i8* %998, i64 %1001) #7
  %1003 = icmp eq i8* %1002, null
  br i1 %1003, label %.loopexit, label %1004

; <label>:1004                                    ; preds = %997
  %1005 = bitcast i8* %1002 to %struct.compile_stack_elt_t*
  %1006 = and i64 %compile_stack.sroa.40.01143, -4294967296
  %1007 = or i64 %1000, %1006
  br label %1008

; <label>:1008                                    ; preds = %1004, %989
  %compile_stack.sroa.0.1 = phi %struct.compile_stack_elt_t* [ %1005, %1004 ], [ %compile_stack.sroa.0.01137, %989 ]
  %compile_stack.sroa.40.1 = phi i64 [ %1007, %1004 ], [ %compile_stack.sroa.40.01143, %989 ]
  %1009 = load i8** %17, align 8, !tbaa !10
  %1010 = ptrtoint i8* %begalt.01123 to i64
  %1011 = ptrtoint i8* %1009 to i64
  %1012 = sub i64 %1010, %1011
  %1013 = lshr i64 %compile_stack.sroa.40.1, 32
  %1014 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %1013, i32 0
  store i64 %1012, i64* %1014, align 8, !tbaa !23
  %1015 = icmp eq i8* %fixup_alt_jump.01118, null
  br i1 %1015, label %1020, label %1016

; <label>:1016                                    ; preds = %1008
  %1017 = ptrtoint i8* %fixup_alt_jump.01118 to i64
  %1018 = add i64 %1017, 1
  %1019 = sub i64 %1018, %1011
  br label %1020

; <label>:1020                                    ; preds = %1008, %1016
  %1021 = phi i64 [ %1019, %1016 ], [ 0, %1008 ]
  %1022 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %1013, i32 1
  store i64 %1021, i64* %1022, align 8, !tbaa !25
  %1023 = ptrtoint i8* %b.01147 to i64
  %1024 = sub i64 %1023, %1011
  %1025 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %1013, i32 3
  store i64 %1024, i64* %1025, align 8, !tbaa !26
  %1026 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %1013, i32 4
  store i32 %992, i32* %1026, align 4, !tbaa !27
  %1027 = icmp ult i32 %992, 256
  br i1 %1027, label %1028, label %1073

; <label>:1028                                    ; preds = %1020
  %1029 = add i64 %1023, 2
  %1030 = sub i64 %1029, %1011
  %1031 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.1, i64 %1013, i32 2
  store i64 %1030, i64* %1031, align 8, !tbaa !28
  br label %.outer303

.outer303:                                        ; preds = %1062, %1064, %1028
  %1032 = phi i8* [ %1009, %1028 ], [ %1045, %1064 ], [ %1045, %1062 ]
  %fixup_alt_jump.19.ph = phi i8* [ %fixup_alt_jump.01118, %1028 ], [ %fixup_alt_jump.20, %1064 ], [ %fixup_alt_jump.20, %1062 ]
  %laststart.19.ph = phi i8* [ %laststart.01128, %1028 ], [ %laststart.20, %1064 ], [ %laststart.20, %1062 ]
  %pending_exact.10.ph = phi i8* [ %pending_exact.01132, %1028 ], [ %1067, %1064 ], [ null, %1062 ]
  %b.10.ph = phi i8* [ %b.01147, %1028 ], [ %1050, %1064 ], [ %1050, %1062 ]
  %1033 = ptrtoint i8* %b.10.ph to i64
  br label %1034

; <label>:1034                                    ; preds = %.outer303, %1047
  %1035 = ptrtoint i8* %1032 to i64
  %1036 = sub i64 %1033, %1035
  %1037 = add nsw i64 %1036, 3
  %1038 = load i64* %14, align 8, !tbaa !22
  %1039 = icmp ugt i64 %1037, %1038
  br i1 %1039, label %1040, label %1068

; <label>:1040                                    ; preds = %1034
  %1041 = icmp eq i64 %1038, 65536
  br i1 %1041, label %.loopexit, label %1042

; <label>:1042                                    ; preds = %1040
  %1043 = shl i64 %1038, 1
  %1044 = icmp ugt i64 %1043, 65536
  %.113 = select i1 %1044, i64 65536, i64 %1043
  store i64 %.113, i64* %14, align 8, !tbaa !22
  %1045 = tail call i8* @realloc(i8* %1032, i64 %.113) #7
  store i8* %1045, i8** %17, align 8, !tbaa !10
  %1046 = icmp eq i8* %1045, null
  br i1 %1046, label %.loopexit, label %1047

; <label>:1047                                    ; preds = %1042
  %1048 = icmp eq i8* %1032, %1045
  br i1 %1048, label %1034, label %1049

; <label>:1049                                    ; preds = %1047
  %1050 = getelementptr inbounds i8* %1045, i64 %1036
  %1051 = icmp eq i8* %fixup_alt_jump.19.ph, null
  br i1 %1051, label %1056, label %1052

; <label>:1052                                    ; preds = %1049
  %1053 = ptrtoint i8* %fixup_alt_jump.19.ph to i64
  %1054 = sub i64 %1053, %1035
  %1055 = getelementptr inbounds i8* %1045, i64 %1054
  br label %1056

; <label>:1056                                    ; preds = %1049, %1052
  %fixup_alt_jump.20 = phi i8* [ %1055, %1052 ], [ null, %1049 ]
  %1057 = icmp eq i8* %laststart.19.ph, null
  br i1 %1057, label %1062, label %1058

; <label>:1058                                    ; preds = %1056
  %1059 = ptrtoint i8* %laststart.19.ph to i64
  %1060 = sub i64 %1059, %1035
  %1061 = getelementptr inbounds i8* %1045, i64 %1060
  br label %1062

; <label>:1062                                    ; preds = %1056, %1058
  %laststart.20 = phi i8* [ %1061, %1058 ], [ null, %1056 ]
  %1063 = icmp eq i8* %pending_exact.10.ph, null
  br i1 %1063, label %.outer303, label %1064

; <label>:1064                                    ; preds = %1062
  %1065 = ptrtoint i8* %pending_exact.10.ph to i64
  %1066 = sub i64 %1065, %1035
  %1067 = getelementptr inbounds i8* %1045, i64 %1066
  br label %.outer303

; <label>:1068                                    ; preds = %1034
  %1069 = getelementptr inbounds i8* %b.10.ph, i64 1
  store i8 6, i8* %b.10.ph, align 1, !tbaa !12
  %1070 = trunc i32 %992 to i8
  %1071 = getelementptr inbounds i8* %b.10.ph, i64 2
  store i8 %1070, i8* %1069, align 1, !tbaa !12
  %1072 = getelementptr inbounds i8* %b.10.ph, i64 3
  store i8 0, i8* %1071, align 1, !tbaa !12
  br label %1073

; <label>:1073                                    ; preds = %1068, %1020
  %b.11 = phi i8* [ %1072, %1068 ], [ %b.01147, %1020 ]
  %1074 = shl nuw i64 %1013, 32
  %1075 = add i64 %1074, 4294967296
  %1076 = and i64 %compile_stack.sroa.40.1, 4294967295
  %1077 = or i64 %1075, %1076
  br label %.backedge367

.backedge367:                                     ; preds = %1073, %1307, %1614, %1655, %1696, %1737, %1778, %1819, %1860, %1901, %1957, %1204, %1158, %insert_op1.exit184, %.loopexit279, %2072, %.thread212, %479, %195, %138, %insert_op1.exit177, %insert_op2.exit148, %insert_op2.exit, %insert_op1.exit
  %regnum.0.be = phi i32 [ %regnum.01114, %2072 ], [ %regnum.01114, %insert_op1.exit177 ], [ %regnum.01114, %insert_op1.exit184 ], [ %regnum.01114, %.loopexit279 ], [ %regnum.01114, %1957 ], [ %regnum.01114, %1901 ], [ %regnum.01114, %1860 ], [ %regnum.01114, %1819 ], [ %regnum.01114, %1778 ], [ %regnum.01114, %1737 ], [ %regnum.01114, %1696 ], [ %regnum.01114, %1655 ], [ %regnum.01114, %1614 ], [ %regnum.01114, %1307 ], [ %regnum.01114, %1204 ], [ %regnum.01114, %1158 ], [ %992, %1073 ], [ %regnum.01114, %.thread212 ], [ %regnum.01114, %479 ], [ %regnum.01114, %195 ], [ %regnum.01114, %138 ], [ %regnum.01114, %insert_op2.exit148 ], [ %regnum.01114, %insert_op2.exit ], [ %regnum.01114, %insert_op1.exit ]
  %fixup_alt_jump.0.be = phi i8* [ %fixup_alt_jump.56.ph245, %2072 ], [ %fixup_alt_jump.7.ph269, %insert_op1.exit177 ], [ %fixup_alt_jump.9.ph, %insert_op1.exit184 ], [ %fixup_alt_jump.01118, %.loopexit279 ], [ %fixup_alt_jump.51.ph, %1957 ], [ %fixup_alt_jump.49.ph, %1901 ], [ %fixup_alt_jump.47.ph, %1860 ], [ %fixup_alt_jump.45.ph, %1819 ], [ %fixup_alt_jump.43.ph, %1778 ], [ %fixup_alt_jump.41.ph, %1737 ], [ %fixup_alt_jump.39.ph, %1696 ], [ %fixup_alt_jump.37.ph, %1655 ], [ %fixup_alt_jump.35.ph, %1614 ], [ %fixup_alt_jump.28.ph, %1307 ], [ %fixup_alt_jump.24.ph, %1204 ], [ %1159, %1158 ], [ null, %1073 ], [ %fixup_alt_jump.17.ph, %.thread212 ], [ %fixup_alt_jump.11.ph, %479 ], [ %fixup_alt_jump.3.ph, %195 ], [ %fixup_alt_jump.1.ph, %138 ], [ %fixup_alt_jump.32.ph, %insert_op2.exit148 ], [ %fixup_alt_jump.32.ph, %insert_op2.exit ], [ %fixup_alt_jump.30.ph, %insert_op1.exit ]
  %begalt.0.be = phi i8* [ %begalt.30.ph246, %2072 ], [ %begalt.4.ph270, %insert_op1.exit177 ], [ %begalt.5.ph, %insert_op1.exit184 ], [ %begalt.01123, %.loopexit279 ], [ %begalt.27.ph, %1957 ], [ %begalt.26.ph, %1901 ], [ %begalt.25.ph, %1860 ], [ %begalt.24.ph, %1819 ], [ %begalt.23.ph, %1778 ], [ %begalt.22.ph, %1737 ], [ %begalt.21.ph, %1696 ], [ %begalt.20.ph, %1655 ], [ %begalt.19.ph, %1614 ], [ %1308, %1307 ], [ %begalt.13.ph, %1204 ], [ %1152, %1158 ], [ %b.11, %1073 ], [ %begalt.9.ph, %.thread212 ], [ %begalt.6.ph, %479 ], [ %begalt.2.ph, %195 ], [ %begalt.1.ph, %138 ], [ %begalt.17.ph, %insert_op2.exit148 ], [ %begalt.17.ph, %insert_op2.exit ], [ %begalt.16.ph, %insert_op1.exit ]
  %laststart.0.be = phi i8* [ %laststart.57.ph247, %2072 ], [ %laststart.7.ph271, %insert_op1.exit177 ], [ %laststart.9.ph, %insert_op1.exit184 ], [ null, %.loopexit279 ], [ %laststart.52.ph, %1957 ], [ %laststart.50.ph, %1901 ], [ %laststart.48.ph, %1860 ], [ %laststart.46.ph, %1819 ], [ %laststart.44.ph, %1778 ], [ %laststart.42.ph, %1737 ], [ %laststart.40.ph, %1696 ], [ %laststart.38.ph, %1655 ], [ %laststart.36.ph, %1614 ], [ null, %1307 ], [ %laststart.24.ph, %1204 ], [ %1162, %1158 ], [ null, %1073 ], [ %laststart.17.ph, %.thread212 ], [ %laststart.11.ph, %479 ], [ %laststart.3.ph, %195 ], [ %laststart.1.ph, %138 ], [ %laststart.33.ph, %insert_op2.exit148 ], [ %laststart.33.ph, %insert_op2.exit ], [ %laststart.31.ph, %insert_op1.exit ]
  %pending_exact.0.be = phi i8* [ %pending_exact.29.ph248, %2072 ], [ null, %insert_op1.exit177 ], [ null, %insert_op1.exit184 ], [ %pending_exact.01132, %.loopexit279 ], [ %pending_exact.26.ph, %1957 ], [ %pending_exact.25.ph, %1901 ], [ %pending_exact.24.ph, %1860 ], [ %pending_exact.23.ph, %1819 ], [ %pending_exact.22.ph, %1778 ], [ %pending_exact.21.ph, %1737 ], [ %pending_exact.20.ph, %1696 ], [ %pending_exact.19.ph, %1655 ], [ %pending_exact.18.ph, %1614 ], [ null, %1307 ], [ null, %1204 ], [ null, %1158 ], [ null, %1073 ], [ %pending_exact.9.ph, %.thread212 ], [ %pending_exact.6.ph, %479 ], [ %pending_exact.2.ph, %195 ], [ %pending_exact.1.ph, %138 ], [ null, %insert_op2.exit148 ], [ null, %insert_op2.exit ], [ null, %insert_op1.exit ]
  %compile_stack.sroa.0.0.be = phi %struct.compile_stack_elt_t* [ %compile_stack.sroa.0.01137, %2072 ], [ %compile_stack.sroa.0.01137, %insert_op1.exit177 ], [ %compile_stack.sroa.0.01137, %insert_op1.exit184 ], [ %compile_stack.sroa.0.01137, %.loopexit279 ], [ %compile_stack.sroa.0.01137, %1957 ], [ %compile_stack.sroa.0.01137, %1901 ], [ %compile_stack.sroa.0.01137, %1860 ], [ %compile_stack.sroa.0.01137, %1819 ], [ %compile_stack.sroa.0.01137, %1778 ], [ %compile_stack.sroa.0.01137, %1737 ], [ %compile_stack.sroa.0.01137, %1696 ], [ %compile_stack.sroa.0.01137, %1655 ], [ %compile_stack.sroa.0.01137, %1614 ], [ %compile_stack.sroa.0.01137, %1307 ], [ %compile_stack.sroa.0.01137, %1204 ], [ %compile_stack.sroa.0.01137, %1158 ], [ %compile_stack.sroa.0.1, %1073 ], [ %compile_stack.sroa.0.01137, %.thread212 ], [ %compile_stack.sroa.0.01137, %479 ], [ %compile_stack.sroa.0.01137, %195 ], [ %compile_stack.sroa.0.01137, %138 ], [ %compile_stack.sroa.0.01137, %insert_op2.exit148 ], [ %compile_stack.sroa.0.01137, %insert_op2.exit ], [ %compile_stack.sroa.0.01137, %insert_op1.exit ]
  %compile_stack.sroa.40.0.be = phi i64 [ %compile_stack.sroa.40.01143, %2072 ], [ %compile_stack.sroa.40.01143, %insert_op1.exit177 ], [ %compile_stack.sroa.40.01143, %insert_op1.exit184 ], [ %compile_stack.sroa.40.01143, %.loopexit279 ], [ %compile_stack.sroa.40.01143, %1957 ], [ %compile_stack.sroa.40.01143, %1901 ], [ %compile_stack.sroa.40.01143, %1860 ], [ %compile_stack.sroa.40.01143, %1819 ], [ %compile_stack.sroa.40.01143, %1778 ], [ %compile_stack.sroa.40.01143, %1737 ], [ %compile_stack.sroa.40.01143, %1696 ], [ %compile_stack.sroa.40.01143, %1655 ], [ %compile_stack.sroa.40.01143, %1614 ], [ %compile_stack.sroa.40.01143, %1307 ], [ %1147, %1204 ], [ %1147, %1158 ], [ %1077, %1073 ], [ %compile_stack.sroa.40.01143, %.thread212 ], [ %compile_stack.sroa.40.01143, %479 ], [ %compile_stack.sroa.40.01143, %195 ], [ %compile_stack.sroa.40.01143, %138 ], [ %compile_stack.sroa.40.01143, %insert_op2.exit148 ], [ %compile_stack.sroa.40.01143, %insert_op2.exit ], [ %compile_stack.sroa.40.01143, %insert_op1.exit ]
  %b.0.be = phi i8* [ %2073, %2072 ], [ %383, %insert_op1.exit177 ], [ %.pre1635, %insert_op1.exit184 ], [ %b.01147, %.loopexit279 ], [ %1959, %1957 ], [ %1902, %1901 ], [ %1861, %1860 ], [ %1820, %1819 ], [ %1779, %1778 ], [ %1738, %1737 ], [ %1697, %1696 ], [ %1656, %1655 ], [ %1615, %1614 ], [ %1308, %1307 ], [ %1208, %1204 ], [ %b.13, %1158 ], [ %b.11, %1073 ], [ %974, %.thread212 ], [ %480, %479 ], [ %196, %195 ], [ %139, %138 ], [ %.pre1643, %insert_op2.exit148 ], [ %.pre1645, %insert_op2.exit ], [ %1449, %insert_op1.exit ]
  %1078 = load i8** %p, align 8, !tbaa !13
  %1079 = icmp eq i8* %1078, %1
  br i1 %1079, label %._crit_edge1154, label %77

; <label>:1080                                    ; preds = %984
  br i1 %42, label %1081, label %1961

; <label>:1081                                    ; preds = %1080
  %1082 = icmp ult i64 %compile_stack.sroa.40.01143, 4294967296
  br i1 %1082, label %1083, label %1086

; <label>:1083                                    ; preds = %1081
  br i1 %62, label %1084, label %1961

; <label>:1084                                    ; preds = %1083
  %1085 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %1085) #8
  br label %.loopexit

; <label>:1086                                    ; preds = %976, %1081
  %c.6 = phi i8 [ %986, %1081 ], [ %c.0, %976 ]
  %1087 = icmp eq i8* %fixup_alt_jump.01118, null
  br i1 %1087, label %1137, label %.preheader307

.preheader307:                                    ; preds = %1086
  %.pre1594.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer310

.outer310:                                        ; preds = %1120, %1122, %.preheader307
  %.pre1594 = phi i8* [ %.pre1594.pre, %.preheader307 ], [ %1100, %1122 ], [ %1100, %1120 ]
  %fixup_alt_jump.21.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader307 ], [ %fixup_alt_jump.22, %1122 ], [ %fixup_alt_jump.22, %1120 ]
  %begalt.11.ph = phi i8* [ %begalt.01123, %.preheader307 ], [ %1108, %1122 ], [ %1108, %1120 ]
  %laststart.21.ph = phi i8* [ %laststart.01128, %.preheader307 ], [ %laststart.22, %1122 ], [ %laststart.22, %1120 ]
  %pending_exact.11.ph = phi i8* [ %pending_exact.01132, %.preheader307 ], [ %1125, %1122 ], [ null, %1120 ]
  %b.12.ph = phi i8* [ %b.01147, %.preheader307 ], [ %1105, %1122 ], [ %1105, %1120 ]
  %1088 = ptrtoint i8* %b.12.ph to i64
  br label %1089

; <label>:1089                                    ; preds = %.outer310, %1102
  %1090 = ptrtoint i8* %.pre1594 to i64
  %1091 = sub i64 %1088, %1090
  %1092 = add nsw i64 %1091, 1
  %1093 = load i64* %14, align 8, !tbaa !22
  %1094 = icmp ugt i64 %1092, %1093
  br i1 %1094, label %1095, label %1126

; <label>:1095                                    ; preds = %1089
  %1096 = icmp eq i64 %1093, 65536
  br i1 %1096, label %.loopexit, label %1097

; <label>:1097                                    ; preds = %1095
  %1098 = shl i64 %1093, 1
  %1099 = icmp ugt i64 %1098, 65536
  %.114 = select i1 %1099, i64 65536, i64 %1098
  store i64 %.114, i64* %14, align 8, !tbaa !22
  %1100 = tail call i8* @realloc(i8* %.pre1594, i64 %.114) #7
  store i8* %1100, i8** %17, align 8, !tbaa !10
  %1101 = icmp eq i8* %1100, null
  br i1 %1101, label %.loopexit, label %1102

; <label>:1102                                    ; preds = %1097
  %1103 = icmp eq i8* %.pre1594, %1100
  br i1 %1103, label %1089, label %1104

; <label>:1104                                    ; preds = %1102
  %1105 = getelementptr inbounds i8* %1100, i64 %1091
  %1106 = ptrtoint i8* %begalt.11.ph to i64
  %1107 = sub i64 %1106, %1090
  %1108 = getelementptr inbounds i8* %1100, i64 %1107
  %1109 = icmp eq i8* %fixup_alt_jump.21.ph, null
  br i1 %1109, label %1114, label %1110

; <label>:1110                                    ; preds = %1104
  %1111 = ptrtoint i8* %fixup_alt_jump.21.ph to i64
  %1112 = sub i64 %1111, %1090
  %1113 = getelementptr inbounds i8* %1100, i64 %1112
  br label %1114

; <label>:1114                                    ; preds = %1104, %1110
  %fixup_alt_jump.22 = phi i8* [ %1113, %1110 ], [ null, %1104 ]
  %1115 = icmp eq i8* %laststart.21.ph, null
  br i1 %1115, label %1120, label %1116

; <label>:1116                                    ; preds = %1114
  %1117 = ptrtoint i8* %laststart.21.ph to i64
  %1118 = sub i64 %1117, %1090
  %1119 = getelementptr inbounds i8* %1100, i64 %1118
  br label %1120

; <label>:1120                                    ; preds = %1114, %1116
  %laststart.22 = phi i8* [ %1119, %1116 ], [ null, %1114 ]
  %1121 = icmp eq i8* %pending_exact.11.ph, null
  br i1 %1121, label %.outer310, label %1122

; <label>:1122                                    ; preds = %1120
  %1123 = ptrtoint i8* %pending_exact.11.ph to i64
  %1124 = sub i64 %1123, %1090
  %1125 = getelementptr inbounds i8* %1100, i64 %1124
  br label %.outer310

; <label>:1126                                    ; preds = %1089
  %1127 = getelementptr inbounds i8* %b.12.ph, i64 1
  store i8 20, i8* %b.12.ph, align 1, !tbaa !12
  %1128 = ptrtoint i8* %fixup_alt_jump.21.ph to i64
  %1129 = sub i64 %1088, %1128
  %1130 = add i64 %1129, 4294967293
  %1131 = trunc i64 %1130 to i32
  store i8 14, i8* %fixup_alt_jump.21.ph, align 1, !tbaa !12
  %1132 = trunc i64 %1130 to i8
  %1133 = getelementptr inbounds i8* %fixup_alt_jump.21.ph, i64 1
  store i8 %1132, i8* %1133, align 1, !tbaa !12
  %1134 = lshr i32 %1131, 8
  %1135 = trunc i32 %1134 to i8
  %1136 = getelementptr inbounds i8* %fixup_alt_jump.21.ph, i64 2
  store i8 %1135, i8* %1136, align 1, !tbaa !12
  br label %1137

; <label>:1137                                    ; preds = %1086, %1126
  %fixup_alt_jump.23 = phi i8* [ %fixup_alt_jump.21.ph, %1126 ], [ null, %1086 ]
  %begalt.12 = phi i8* [ %begalt.11.ph, %1126 ], [ %begalt.01123, %1086 ]
  %laststart.23 = phi i8* [ %laststart.21.ph, %1126 ], [ %laststart.01128, %1086 ]
  %pending_exact.12 = phi i8* [ %pending_exact.11.ph, %1126 ], [ %pending_exact.01132, %1086 ]
  %b.13 = phi i8* [ %1127, %1126 ], [ %b.01147, %1086 ]
  %1138 = lshr i64 %compile_stack.sroa.40.01143, 32
  %1139 = icmp eq i64 %1138, 0
  br i1 %1139, label %1140, label %1143

; <label>:1140                                    ; preds = %1137
  br i1 %62, label %1141, label %group_in_compile_stack.exit.thread216

; <label>:1141                                    ; preds = %1140
  %1142 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %1142) #8
  br label %.loopexit

; <label>:1143                                    ; preds = %1137
  %1144 = add nuw nsw i64 %1138, 4294967295
  %1145 = shl i64 %1144, 32
  %1146 = and i64 %compile_stack.sroa.40.01143, 4294967295
  %1147 = or i64 %1145, %1146
  %1148 = load i8** %17, align 8, !tbaa !10
  %1149 = and i64 %1144, 4294967295
  %1150 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137, i64 %1149, i32 0
  %1151 = load i64* %1150, align 8, !tbaa !23
  %1152 = getelementptr inbounds i8* %1148, i64 %1151
  %1153 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137, i64 %1149, i32 1
  %1154 = load i64* %1153, align 8, !tbaa !25
  %1155 = icmp eq i64 %1154, 0
  br i1 %1155, label %1158, label %1156

; <label>:1156                                    ; preds = %1143
  %.sum56 = add i64 %1154, -1
  %1157 = getelementptr inbounds i8* %1148, i64 %.sum56
  br label %1158

; <label>:1158                                    ; preds = %1143, %1156
  %1159 = phi i8* [ %1157, %1156 ], [ null, %1143 ]
  %1160 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137, i64 %1149, i32 3
  %1161 = load i64* %1160, align 8, !tbaa !26
  %1162 = getelementptr inbounds i8* %1148, i64 %1161
  %1163 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137, i64 %1149, i32 4
  %1164 = load i32* %1163, align 4, !tbaa !27
  %1165 = icmp ult i32 %1164, 256
  br i1 %1165, label %1166, label %.backedge367

; <label>:1166                                    ; preds = %1158
  %1167 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137, i64 %1149, i32 2
  %1168 = load i64* %1167, align 8, !tbaa !28
  %1169 = getelementptr inbounds i8* %1148, i64 %1168
  %1170 = sub i32 %regnum.01114, %1164
  %1171 = trunc i32 %1170 to i8
  store i8 %1171, i8* %1169, align 1, !tbaa !12
  %.pre1595.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer306

.outer306:                                        ; preds = %1200, %1198, %1166
  %.pre1595 = phi i8* [ %.pre1595.pre, %1166 ], [ %1184, %1198 ], [ %1184, %1200 ]
  %fixup_alt_jump.24.ph = phi i8* [ %1159, %1166 ], [ %fixup_alt_jump.25, %1198 ], [ %fixup_alt_jump.25, %1200 ]
  %begalt.13.ph = phi i8* [ %1152, %1166 ], [ %1192, %1198 ], [ %1192, %1200 ]
  %laststart.24.ph = phi i8* [ %1162, %1166 ], [ null, %1198 ], [ %1203, %1200 ]
  %b.14.ph = phi i8* [ %b.13, %1166 ], [ %1189, %1198 ], [ %1189, %1200 ]
  %1172 = ptrtoint i8* %b.14.ph to i64
  br label %1173

; <label>:1173                                    ; preds = %.outer306, %1186
  %1174 = ptrtoint i8* %.pre1595 to i64
  %1175 = sub i64 %1172, %1174
  %1176 = add nsw i64 %1175, 3
  %1177 = load i64* %14, align 8, !tbaa !22
  %1178 = icmp ugt i64 %1176, %1177
  br i1 %1178, label %1179, label %1204

; <label>:1179                                    ; preds = %1173
  %1180 = icmp eq i64 %1177, 65536
  br i1 %1180, label %.loopexit, label %1181

; <label>:1181                                    ; preds = %1179
  %1182 = shl i64 %1177, 1
  %1183 = icmp ugt i64 %1182, 65536
  %.115 = select i1 %1183, i64 65536, i64 %1182
  store i64 %.115, i64* %14, align 8, !tbaa !22
  %1184 = tail call i8* @realloc(i8* %.pre1595, i64 %.115) #7
  store i8* %1184, i8** %17, align 8, !tbaa !10
  %1185 = icmp eq i8* %1184, null
  br i1 %1185, label %.loopexit, label %1186

; <label>:1186                                    ; preds = %1181
  %1187 = icmp eq i8* %.pre1595, %1184
  br i1 %1187, label %1173, label %1188

; <label>:1188                                    ; preds = %1186
  %1189 = getelementptr inbounds i8* %1184, i64 %1175
  %1190 = ptrtoint i8* %begalt.13.ph to i64
  %1191 = sub i64 %1190, %1174
  %1192 = getelementptr inbounds i8* %1184, i64 %1191
  %1193 = icmp eq i8* %fixup_alt_jump.24.ph, null
  br i1 %1193, label %1198, label %1194

; <label>:1194                                    ; preds = %1188
  %1195 = ptrtoint i8* %fixup_alt_jump.24.ph to i64
  %1196 = sub i64 %1195, %1174
  %1197 = getelementptr inbounds i8* %1184, i64 %1196
  br label %1198

; <label>:1198                                    ; preds = %1188, %1194
  %fixup_alt_jump.25 = phi i8* [ %1197, %1194 ], [ null, %1188 ]
  %1199 = icmp eq i8* %laststart.24.ph, null
  br i1 %1199, label %.outer306, label %1200

; <label>:1200                                    ; preds = %1198
  %1201 = ptrtoint i8* %laststart.24.ph to i64
  %1202 = sub i64 %1201, %1174
  %1203 = getelementptr inbounds i8* %1184, i64 %1202
  br label %.outer306

; <label>:1204                                    ; preds = %1173
  %1205 = getelementptr inbounds i8* %b.14.ph, i64 1
  store i8 7, i8* %b.14.ph, align 1, !tbaa !12
  %1206 = trunc i32 %1164 to i8
  %1207 = getelementptr inbounds i8* %b.14.ph, i64 2
  store i8 %1206, i8* %1205, align 1, !tbaa !12
  %1208 = getelementptr inbounds i8* %b.14.ph, i64 3
  store i8 %1171, i8* %1207, align 1, !tbaa !12
  br label %.backedge367

; <label>:1209                                    ; preds = %984
  br i1 %71, label %1210, label %1961

; <label>:1210                                    ; preds = %1209, %977, %978
  %c.7 = phi i8 [ %c.0, %978 ], [ %c.0, %977 ], [ %986, %1209 ]
  br i1 %66, label %.preheader315, label %group_in_compile_stack.exit.thread216

.preheader315:                                    ; preds = %1210
  %.pre1592.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer318

.outer318:                                        ; preds = %1243, %1245, %.preheader315
  %.pre1592 = phi i8* [ %.pre1592.pre, %.preheader315 ], [ %1223, %1245 ], [ %1223, %1243 ]
  %fixup_alt_jump.26.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader315 ], [ %fixup_alt_jump.27, %1245 ], [ %fixup_alt_jump.27, %1243 ]
  %begalt.14.ph = phi i8* [ %begalt.01123, %.preheader315 ], [ %1231, %1245 ], [ %1231, %1243 ]
  %laststart.26.ph = phi i8* [ %laststart.01128, %.preheader315 ], [ %laststart.27, %1245 ], [ %laststart.27, %1243 ]
  %pending_exact.14.ph = phi i8* [ %pending_exact.01132, %.preheader315 ], [ %1248, %1245 ], [ null, %1243 ]
  %b.15.ph = phi i8* [ %b.01147, %.preheader315 ], [ %1228, %1245 ], [ %1228, %1243 ]
  %1211 = ptrtoint i8* %b.15.ph to i64
  br label %1212

; <label>:1212                                    ; preds = %.outer318, %1225
  %1213 = ptrtoint i8* %.pre1592 to i64
  %1214 = sub i64 %1211, %1213
  %1215 = add nsw i64 %1214, 3
  %1216 = load i64* %14, align 8, !tbaa !22
  %1217 = icmp ugt i64 %1215, %1216
  br i1 %1217, label %1218, label %1249

; <label>:1218                                    ; preds = %1212
  %1219 = icmp eq i64 %1216, 65536
  br i1 %1219, label %.loopexit, label %1220

; <label>:1220                                    ; preds = %1218
  %1221 = shl i64 %1216, 1
  %1222 = icmp ugt i64 %1221, 65536
  %.119 = select i1 %1222, i64 65536, i64 %1221
  store i64 %.119, i64* %14, align 8, !tbaa !22
  %1223 = tail call i8* @realloc(i8* %.pre1592, i64 %.119) #7
  store i8* %1223, i8** %17, align 8, !tbaa !10
  %1224 = icmp eq i8* %1223, null
  br i1 %1224, label %.loopexit, label %1225

; <label>:1225                                    ; preds = %1220
  %1226 = icmp eq i8* %.pre1592, %1223
  br i1 %1226, label %1212, label %1227

; <label>:1227                                    ; preds = %1225
  %1228 = getelementptr inbounds i8* %1223, i64 %1214
  %1229 = ptrtoint i8* %begalt.14.ph to i64
  %1230 = sub i64 %1229, %1213
  %1231 = getelementptr inbounds i8* %1223, i64 %1230
  %1232 = icmp eq i8* %fixup_alt_jump.26.ph, null
  br i1 %1232, label %1237, label %1233

; <label>:1233                                    ; preds = %1227
  %1234 = ptrtoint i8* %fixup_alt_jump.26.ph to i64
  %1235 = sub i64 %1234, %1213
  %1236 = getelementptr inbounds i8* %1223, i64 %1235
  br label %1237

; <label>:1237                                    ; preds = %1227, %1233
  %fixup_alt_jump.27 = phi i8* [ %1236, %1233 ], [ null, %1227 ]
  %1238 = icmp eq i8* %laststart.26.ph, null
  br i1 %1238, label %1243, label %1239

; <label>:1239                                    ; preds = %1237
  %1240 = ptrtoint i8* %laststart.26.ph to i64
  %1241 = sub i64 %1240, %1213
  %1242 = getelementptr inbounds i8* %1223, i64 %1241
  br label %1243

; <label>:1243                                    ; preds = %1237, %1239
  %laststart.27 = phi i8* [ %1242, %1239 ], [ null, %1237 ]
  %1244 = icmp eq i8* %pending_exact.14.ph, null
  br i1 %1244, label %.outer318, label %1245

; <label>:1245                                    ; preds = %1243
  %1246 = ptrtoint i8* %pending_exact.14.ph to i64
  %1247 = sub i64 %1246, %1213
  %1248 = getelementptr inbounds i8* %1223, i64 %1247
  br label %.outer318

; <label>:1249                                    ; preds = %1212
  %1250 = getelementptr inbounds i8* %b.15.ph, i64 6
  %1251 = ptrtoint i8* %1250 to i64
  %1252 = ptrtoint i8* %begalt.14.ph to i64
  %1253 = sub i64 %1251, %1252
  %1254 = add i64 %1253, 4294967293
  %1255 = trunc i64 %1254 to i32
  %1256 = icmp eq i8* %b.15.ph, %begalt.14.ph
  %.pre1641 = getelementptr inbounds i8* %b.15.ph, i64 3
  br i1 %1256, label %insert_op1.exit159, label %.lr.ph.i156

.lr.ph.i156:                                      ; preds = %1249, %.lr.ph.i156
  %pto.02.i157 = phi i8* [ %1259, %.lr.ph.i156 ], [ %.pre1641, %1249 ]
  %pfrom.01.i158 = phi i8* [ %1257, %.lr.ph.i156 ], [ %b.15.ph, %1249 ]
  %1257 = getelementptr inbounds i8* %pfrom.01.i158, i64 -1
  %1258 = load i8* %1257, align 1, !tbaa !12
  %1259 = getelementptr inbounds i8* %pto.02.i157, i64 -1
  store i8 %1258, i8* %1259, align 1, !tbaa !12
  %1260 = icmp eq i8* %1257, %begalt.14.ph
  br i1 %1260, label %insert_op1.exit159, label %.lr.ph.i156

insert_op1.exit159:                               ; preds = %.lr.ph.i156, %1249
  store i8 15, i8* %begalt.14.ph, align 1, !tbaa !12
  %1261 = trunc i64 %1254 to i8
  %1262 = getelementptr inbounds i8* %begalt.14.ph, i64 1
  store i8 %1261, i8* %1262, align 1, !tbaa !12
  %1263 = lshr i32 %1255, 8
  %1264 = trunc i32 %1263 to i8
  %1265 = getelementptr inbounds i8* %begalt.14.ph, i64 2
  store i8 %1264, i8* %1265, align 1, !tbaa !12
  %1266 = icmp eq i8* %fixup_alt_jump.26.ph, null
  br i1 %1266, label %.preheader311, label %1267

; <label>:1267                                    ; preds = %insert_op1.exit159
  %1268 = ptrtoint i8* %.pre1641 to i64
  %1269 = ptrtoint i8* %fixup_alt_jump.26.ph to i64
  %1270 = sub i64 %1268, %1269
  %1271 = add i64 %1270, 4294967293
  %1272 = trunc i64 %1271 to i32
  store i8 14, i8* %fixup_alt_jump.26.ph, align 1, !tbaa !12
  %1273 = trunc i64 %1271 to i8
  %1274 = getelementptr inbounds i8* %fixup_alt_jump.26.ph, i64 1
  store i8 %1273, i8* %1274, align 1, !tbaa !12
  %1275 = lshr i32 %1272, 8
  %1276 = trunc i32 %1275 to i8
  %1277 = getelementptr inbounds i8* %fixup_alt_jump.26.ph, i64 2
  store i8 %1276, i8* %1277, align 1, !tbaa !12
  br label %.preheader311

.preheader311:                                    ; preds = %insert_op1.exit159, %1267
  %.pre1593.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer314

.outer314:                                        ; preds = %1303, %1301, %.preheader311
  %.pre1593 = phi i8* [ %.pre1593.pre, %.preheader311 ], [ %1290, %1301 ], [ %1290, %1303 ]
  %fixup_alt_jump.28.ph = phi i8* [ %.pre1641, %.preheader311 ], [ %fixup_alt_jump.29, %1301 ], [ %fixup_alt_jump.29, %1303 ]
  %laststart.28.ph = phi i8* [ %laststart.26.ph, %.preheader311 ], [ null, %1301 ], [ %1306, %1303 ]
  %b.16.ph = phi i8* [ %.pre1641, %.preheader311 ], [ %1295, %1301 ], [ %1295, %1303 ]
  %1278 = ptrtoint i8* %b.16.ph to i64
  br label %1279

; <label>:1279                                    ; preds = %.outer314, %1292
  %1280 = ptrtoint i8* %.pre1593 to i64
  %1281 = sub i64 %1278, %1280
  %1282 = add nsw i64 %1281, 3
  %1283 = load i64* %14, align 8, !tbaa !22
  %1284 = icmp ugt i64 %1282, %1283
  br i1 %1284, label %1285, label %1307

; <label>:1285                                    ; preds = %1279
  %1286 = icmp eq i64 %1283, 65536
  br i1 %1286, label %.loopexit, label %1287

; <label>:1287                                    ; preds = %1285
  %1288 = shl i64 %1283, 1
  %1289 = icmp ugt i64 %1288, 65536
  %.120 = select i1 %1289, i64 65536, i64 %1288
  store i64 %.120, i64* %14, align 8, !tbaa !22
  %1290 = tail call i8* @realloc(i8* %.pre1593, i64 %.120) #7
  store i8* %1290, i8** %17, align 8, !tbaa !10
  %1291 = icmp eq i8* %1290, null
  br i1 %1291, label %.loopexit, label %1292

; <label>:1292                                    ; preds = %1287
  %1293 = icmp eq i8* %.pre1593, %1290
  br i1 %1293, label %1279, label %1294

; <label>:1294                                    ; preds = %1292
  %1295 = getelementptr inbounds i8* %1290, i64 %1281
  %1296 = icmp eq i8* %fixup_alt_jump.28.ph, null
  br i1 %1296, label %1301, label %1297

; <label>:1297                                    ; preds = %1294
  %1298 = ptrtoint i8* %fixup_alt_jump.28.ph to i64
  %1299 = sub i64 %1298, %1280
  %1300 = getelementptr inbounds i8* %1290, i64 %1299
  br label %1301

; <label>:1301                                    ; preds = %1294, %1297
  %fixup_alt_jump.29 = phi i8* [ %1300, %1297 ], [ null, %1294 ]
  %1302 = icmp eq i8* %laststart.28.ph, null
  br i1 %1302, label %.outer314, label %1303

; <label>:1303                                    ; preds = %1301
  %1304 = ptrtoint i8* %laststart.28.ph to i64
  %1305 = sub i64 %1304, %1280
  %1306 = getelementptr inbounds i8* %1290, i64 %1305
  br label %.outer314

; <label>:1307                                    ; preds = %1279
  %1308 = getelementptr inbounds i8* %b.16.ph, i64 3
  br label %.backedge367

; <label>:1309                                    ; preds = %984
  br i1 %72, label %1310, label %1961

; <label>:1310                                    ; preds = %1309
  %1311 = icmp eq i8* %78, %pattern
  %1312 = icmp eq i8* %985, %1
  %or.cond125 = and i1 %1311, %1312
  br i1 %or.cond125, label %1961, label %1313

; <label>:1313                                    ; preds = %979, %1310
  %1314 = phi i64 [ 0, %979 ], [ 1, %1310 ]
  %1315 = phi i64 [ 2, %979 ], [ 3, %1310 ]
  %1316 = phi i8* [ %79, %979 ], [ %985, %1310 ]
  %1317 = getelementptr inbounds i8* %78, i64 %1314
  %1318 = icmp eq i8* %1316, %1
  br i1 %1318, label %1319, label %1322

; <label>:1319                                    ; preds = %1313
  br i1 %37, label %1320, label %1564

; <label>:1320                                    ; preds = %1319
  %1321 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %1321) #8
  br label %.loopexit

; <label>:1322                                    ; preds = %1313
  %1323 = getelementptr inbounds i8* %78, i64 %1315
  store i8* %1323, i8** %p, align 8, !tbaa !13
  %1324 = load i8* %1316, align 1, !tbaa !12
  br i1 %31, label %1325, label %.preheader329

; <label>:1325                                    ; preds = %1322
  %1326 = zext i8 %1324 to i64
  %1327 = getelementptr inbounds i8* %3, i64 %1326
  %1328 = load i8* %1327, align 1, !tbaa !12
  br label %.preheader329

.preheader329:                                    ; preds = %1322, %1325
  %c.9.ph = phi i8 [ %1324, %1322 ], [ %1328, %1325 ]
  %1329 = zext i8 %c.9.ph to i32
  %isdigittmp511073 = add nsw i32 %1329, -48
  %isdigit521074 = icmp ult i32 %isdigittmp511073, 10
  br i1 %isdigit521074, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader329, %.backedge330
  %1330 = phi i8* [ %1338, %.backedge330 ], [ %1323, %.preheader329 ]
  %1331 = phi i32 [ %1340, %.backedge330 ], [ %1329, %.preheader329 ]
  %c.91076 = phi i8 [ %c.9.be, %.backedge330 ], [ %c.9.ph, %.preheader329 ]
  %lower_bound.01075 = phi i32 [ %1335, %.backedge330 ], [ -1, %.preheader329 ]
  %1332 = icmp slt i32 %lower_bound.01075, 0
  %lower_bound.0.op = mul i32 %lower_bound.01075, 10
  %1333 = select i1 %1332, i32 0, i32 %lower_bound.0.op
  %1334 = add nsw i32 %1331, -48
  %1335 = add i32 %1334, %1333
  %1336 = icmp eq i8* %1330, %1
  br i1 %1336, label %._crit_edge, label %1337

; <label>:1337                                    ; preds = %.lr.ph
  %1338 = getelementptr inbounds i8* %1330, i64 1
  store i8* %1338, i8** %p, align 8, !tbaa !13
  %1339 = load i8* %1330, align 1, !tbaa !12
  br i1 %31, label %1341, label %.backedge330

.backedge330:                                     ; preds = %1337, %1341
  %c.9.be = phi i8 [ %1344, %1341 ], [ %1339, %1337 ]
  %1340 = zext i8 %c.9.be to i32
  %isdigittmp51 = add nsw i32 %1340, -48
  %isdigit52 = icmp ult i32 %isdigittmp51, 10
  br i1 %isdigit52, label %.lr.ph, label %._crit_edge

; <label>:1341                                    ; preds = %1337
  %1342 = zext i8 %1339 to i64
  %1343 = getelementptr inbounds i8* %3, i64 %1342
  %1344 = load i8* %1343, align 1, !tbaa !12
  br label %.backedge330

._crit_edge:                                      ; preds = %.lr.ph, %.backedge330, %.preheader329
  %1345 = phi i8* [ %1323, %.preheader329 ], [ %1, %.lr.ph ], [ %1338, %.backedge330 ]
  %c.9.lcssa = phi i8 [ %c.9.ph, %.preheader329 ], [ %c.91076, %.lr.ph ], [ %c.9.be, %.backedge330 ]
  %lower_bound.2 = phi i32 [ -1, %.preheader329 ], [ %1335, %.lr.ph ], [ %1335, %.backedge330 ]
  %1346 = icmp eq i8 %c.9.lcssa, 44
  br i1 %1346, label %1347, label %1375

; <label>:1347                                    ; preds = %._crit_edge
  %1348 = icmp eq i8* %1345, %1
  br i1 %1348, label %.loopexit327, label %1349

; <label>:1349                                    ; preds = %1347
  %1350 = getelementptr inbounds i8* %1345, i64 1
  store i8* %1350, i8** %p, align 8, !tbaa !13
  %1351 = load i8* %1345, align 1, !tbaa !12
  br i1 %31, label %1352, label %.preheader326

; <label>:1352                                    ; preds = %1349
  %1353 = zext i8 %1351 to i64
  %1354 = getelementptr inbounds i8* %3, i64 %1353
  %1355 = load i8* %1354, align 1, !tbaa !12
  br label %.preheader326

.preheader326:                                    ; preds = %1349, %1352
  %c.11.ph = phi i8 [ %1351, %1349 ], [ %1355, %1352 ]
  %1356 = zext i8 %c.11.ph to i32
  %isdigittmp1081 = add nsw i32 %1356, -48
  %isdigit1082 = icmp ult i32 %isdigittmp1081, 10
  br i1 %isdigit1082, label %.lr.ph1085, label %.loopexit327

.lr.ph1085:                                       ; preds = %.preheader326, %.backedge328
  %1357 = phi i8* [ %1358, %.backedge328 ], [ %1345, %.preheader326 ]
  %1358 = phi i8* [ %1366, %.backedge328 ], [ %1350, %.preheader326 ]
  %1359 = phi i32 [ %1368, %.backedge328 ], [ %1356, %.preheader326 ]
  %c.111084 = phi i8 [ %c.11.be, %.backedge328 ], [ %c.11.ph, %.preheader326 ]
  %upper_bound.01083 = phi i32 [ %1363, %.backedge328 ], [ -1, %.preheader326 ]
  %1360 = icmp slt i32 %upper_bound.01083, 0
  %upper_bound.0.op = mul i32 %upper_bound.01083, 10
  %1361 = select i1 %1360, i32 0, i32 %upper_bound.0.op
  %1362 = add nsw i32 %1359, -48
  %1363 = add i32 %1362, %1361
  %1364 = icmp eq i8* %1358, %1
  br i1 %1364, label %.loopexit327, label %1365

; <label>:1365                                    ; preds = %.lr.ph1085
  %1366 = getelementptr inbounds i8* %1357, i64 2
  store i8* %1366, i8** %p, align 8, !tbaa !13
  %1367 = load i8* %1358, align 1, !tbaa !12
  br i1 %31, label %1369, label %.backedge328

.backedge328:                                     ; preds = %1365, %1369
  %c.11.be = phi i8 [ %1372, %1369 ], [ %1367, %1365 ]
  %1368 = zext i8 %c.11.be to i32
  %isdigittmp = add nsw i32 %1368, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.lr.ph1085, label %.loopexit327

; <label>:1369                                    ; preds = %1365
  %1370 = zext i8 %1367 to i64
  %1371 = getelementptr inbounds i8* %3, i64 %1370
  %1372 = load i8* %1371, align 1, !tbaa !12
  br label %.backedge328

.loopexit327:                                     ; preds = %.lr.ph1085, %.backedge328, %.preheader326, %1347
  %1373 = phi i8* [ %1, %1347 ], [ %1350, %.preheader326 ], [ %1366, %.backedge328 ], [ %1, %.lr.ph1085 ]
  %upper_bound.2 = phi i32 [ -1, %1347 ], [ -1, %.preheader326 ], [ %1363, %.backedge328 ], [ %1363, %.lr.ph1085 ]
  %c.12 = phi i8 [ 44, %1347 ], [ %c.11.ph, %.preheader326 ], [ %c.11.be, %.backedge328 ], [ %c.111084, %.lr.ph1085 ]
  %1374 = icmp slt i32 %upper_bound.2, 0
  %.upper_bound.2 = select i1 %1374, i32 32767, i32 %upper_bound.2
  br label %1375

; <label>:1375                                    ; preds = %.loopexit327, %._crit_edge
  %1376 = phi i8* [ %1373, %.loopexit327 ], [ %1345, %._crit_edge ]
  %upper_bound.3 = phi i32 [ %.upper_bound.2, %.loopexit327 ], [ %lower_bound.2, %._crit_edge ]
  %c.13 = phi i8 [ %c.12, %.loopexit327 ], [ %c.9.lcssa, %._crit_edge ]
  %1377 = icmp slt i32 %lower_bound.2, 0
  %1378 = icmp sgt i32 %upper_bound.3, 32767
  %or.cond32 = or i1 %1377, %1378
  %1379 = icmp sgt i32 %lower_bound.2, %upper_bound.3
  %or.cond127 = or i1 %1379, %or.cond32
  br i1 %or.cond127, label %1380, label %1383

; <label>:1380                                    ; preds = %1375
  br i1 %37, label %1381, label %1564

; <label>:1381                                    ; preds = %1380
  %1382 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %1382) #8
  br label %.loopexit

; <label>:1383                                    ; preds = %1375
  br i1 %69, label %1397, label %1384

; <label>:1384                                    ; preds = %1383
  %1385 = icmp eq i8 %c.13, 92
  br i1 %1385, label %1388, label %1386

; <label>:1386                                    ; preds = %1384
  %1387 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %1387) #8
  br label %.loopexit

; <label>:1388                                    ; preds = %1384
  %1389 = icmp eq i8* %1376, %1
  br i1 %1389, label %.loopexit, label %1390

; <label>:1390                                    ; preds = %1388
  %1391 = getelementptr inbounds i8* %1376, i64 1
  store i8* %1391, i8** %p, align 8, !tbaa !13
  %1392 = load i8* %1376, align 1, !tbaa !12
  br i1 %31, label %1393, label %1397

; <label>:1393                                    ; preds = %1390
  %1394 = zext i8 %1392 to i64
  %1395 = getelementptr inbounds i8* %3, i64 %1394
  %1396 = load i8* %1395, align 1, !tbaa !12
  br label %1397

; <label>:1397                                    ; preds = %1393, %1390, %1383
  %c.14 = phi i8 [ %c.13, %1383 ], [ %1396, %1393 ], [ %1392, %1390 ]
  %1398 = icmp eq i8 %c.14, 125
  br i1 %1398, label %1402, label %1399

; <label>:1399                                    ; preds = %1397
  br i1 %69, label %1564, label %1400

; <label>:1400                                    ; preds = %1399
  %1401 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %1401) #8
  br label %.loopexit

; <label>:1402                                    ; preds = %1397
  %1403 = icmp eq i8* %laststart.01128, null
  br i1 %1403, label %1404, label %1408

; <label>:1404                                    ; preds = %1402
  br i1 %47, label %1407, label %1405

; <label>:1405                                    ; preds = %1404
  %1406 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %1406) #8
  br label %.loopexit

; <label>:1407                                    ; preds = %1404
  br i1 %49, label %1564, label %1408

; <label>:1408                                    ; preds = %1407, %1402
  %laststart.30 = phi i8* [ %laststart.01128, %1402 ], [ %b.01147, %1407 ]
  %1409 = icmp eq i32 %upper_bound.3, 0
  br i1 %1409, label %.preheader319, label %1465

.preheader319:                                    ; preds = %1408
  %.pre1591.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer322

.outer322:                                        ; preds = %1442, %1444, %.preheader319
  %.pre1591 = phi i8* [ %.pre1591.pre, %.preheader319 ], [ %1422, %1444 ], [ %1422, %1442 ]
  %fixup_alt_jump.30.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader319 ], [ %fixup_alt_jump.31, %1444 ], [ %fixup_alt_jump.31, %1442 ]
  %begalt.16.ph = phi i8* [ %begalt.01123, %.preheader319 ], [ %1430, %1444 ], [ %1430, %1442 ]
  %laststart.31.ph = phi i8* [ %laststart.30, %.preheader319 ], [ %laststart.32, %1444 ], [ %laststart.32, %1442 ]
  %pending_exact.16.ph = phi i8* [ %pending_exact.01132, %.preheader319 ], [ %1447, %1444 ], [ null, %1442 ]
  %b.17.ph = phi i8* [ %b.01147, %.preheader319 ], [ %1427, %1444 ], [ %1427, %1442 ]
  %1410 = ptrtoint i8* %b.17.ph to i64
  br label %1411

; <label>:1411                                    ; preds = %.outer322, %1424
  %1412 = ptrtoint i8* %.pre1591 to i64
  %1413 = sub i64 %1410, %1412
  %1414 = add nsw i64 %1413, 3
  %1415 = load i64* %14, align 8, !tbaa !22
  %1416 = icmp ugt i64 %1414, %1415
  br i1 %1416, label %1417, label %1448

; <label>:1417                                    ; preds = %1411
  %1418 = icmp eq i64 %1415, 65536
  br i1 %1418, label %.loopexit, label %1419

; <label>:1419                                    ; preds = %1417
  %1420 = shl i64 %1415, 1
  %1421 = icmp ugt i64 %1420, 65536
  %.128 = select i1 %1421, i64 65536, i64 %1420
  store i64 %.128, i64* %14, align 8, !tbaa !22
  %1422 = tail call i8* @realloc(i8* %.pre1591, i64 %.128) #7
  store i8* %1422, i8** %17, align 8, !tbaa !10
  %1423 = icmp eq i8* %1422, null
  br i1 %1423, label %.loopexit, label %1424

; <label>:1424                                    ; preds = %1419
  %1425 = icmp eq i8* %.pre1591, %1422
  br i1 %1425, label %1411, label %1426

; <label>:1426                                    ; preds = %1424
  %1427 = getelementptr inbounds i8* %1422, i64 %1413
  %1428 = ptrtoint i8* %begalt.16.ph to i64
  %1429 = sub i64 %1428, %1412
  %1430 = getelementptr inbounds i8* %1422, i64 %1429
  %1431 = icmp eq i8* %fixup_alt_jump.30.ph, null
  br i1 %1431, label %1436, label %1432

; <label>:1432                                    ; preds = %1426
  %1433 = ptrtoint i8* %fixup_alt_jump.30.ph to i64
  %1434 = sub i64 %1433, %1412
  %1435 = getelementptr inbounds i8* %1422, i64 %1434
  br label %1436

; <label>:1436                                    ; preds = %1426, %1432
  %fixup_alt_jump.31 = phi i8* [ %1435, %1432 ], [ null, %1426 ]
  %1437 = icmp eq i8* %laststart.31.ph, null
  br i1 %1437, label %1442, label %1438

; <label>:1438                                    ; preds = %1436
  %1439 = ptrtoint i8* %laststart.31.ph to i64
  %1440 = sub i64 %1439, %1412
  %1441 = getelementptr inbounds i8* %1422, i64 %1440
  br label %1442

; <label>:1442                                    ; preds = %1436, %1438
  %laststart.32 = phi i8* [ %1441, %1438 ], [ null, %1436 ]
  %1443 = icmp eq i8* %pending_exact.16.ph, null
  br i1 %1443, label %.outer322, label %1444

; <label>:1444                                    ; preds = %1442
  %1445 = ptrtoint i8* %pending_exact.16.ph to i64
  %1446 = sub i64 %1445, %1412
  %1447 = getelementptr inbounds i8* %1422, i64 %1446
  br label %.outer322

; <label>:1448                                    ; preds = %1411
  %1449 = getelementptr inbounds i8* %b.17.ph, i64 3
  %1450 = ptrtoint i8* %1449 to i64
  %1451 = ptrtoint i8* %laststart.31.ph to i64
  %1452 = sub i64 %1450, %1451
  %1453 = add i64 %1452, 4294967293
  %1454 = trunc i64 %1453 to i32
  %1455 = icmp eq i8* %b.17.ph, %laststart.31.ph
  br i1 %1455, label %insert_op1.exit, label %.lr.ph.i153

.lr.ph.i153:                                      ; preds = %1448, %.lr.ph.i153
  %pto.02.i154 = phi i8* [ %1458, %.lr.ph.i153 ], [ %1449, %1448 ]
  %pfrom.01.i155 = phi i8* [ %1456, %.lr.ph.i153 ], [ %b.17.ph, %1448 ]
  %1456 = getelementptr inbounds i8* %pfrom.01.i155, i64 -1
  %1457 = load i8* %1456, align 1, !tbaa !12
  %1458 = getelementptr inbounds i8* %pto.02.i154, i64 -1
  store i8 %1457, i8* %1458, align 1, !tbaa !12
  %1459 = icmp eq i8* %1456, %laststart.31.ph
  br i1 %1459, label %insert_op1.exit, label %.lr.ph.i153

insert_op1.exit:                                  ; preds = %.lr.ph.i153, %1448
  store i8 13, i8* %laststart.31.ph, align 1, !tbaa !12
  %1460 = trunc i64 %1453 to i8
  %1461 = getelementptr inbounds i8* %laststart.31.ph, i64 1
  store i8 %1460, i8* %1461, align 1, !tbaa !12
  %1462 = lshr i32 %1454, 8
  %1463 = trunc i32 %1462 to i8
  %1464 = getelementptr inbounds i8* %laststart.31.ph, i64 2
  store i8 %1463, i8* %1464, align 1, !tbaa !12
  br label %.backedge367

; <label>:1465                                    ; preds = %1408
  %1466 = icmp sgt i32 %upper_bound.3, 1
  %1467 = select i1 %1466, i64 20, i64 10
  %.pre1590.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer325

.outer325:                                        ; preds = %1500, %1502, %1465
  %.pre1590 = phi i8* [ %.pre1590.pre, %1465 ], [ %1480, %1502 ], [ %1480, %1500 ]
  %fixup_alt_jump.32.ph = phi i8* [ %fixup_alt_jump.01118, %1465 ], [ %fixup_alt_jump.33, %1502 ], [ %fixup_alt_jump.33, %1500 ]
  %begalt.17.ph = phi i8* [ %begalt.01123, %1465 ], [ %1488, %1502 ], [ %1488, %1500 ]
  %laststart.33.ph = phi i8* [ %laststart.30, %1465 ], [ %laststart.34, %1502 ], [ %laststart.34, %1500 ]
  %pending_exact.17.ph = phi i8* [ %pending_exact.01132, %1465 ], [ %1505, %1502 ], [ null, %1500 ]
  %b.18.ph = phi i8* [ %b.01147, %1465 ], [ %1485, %1502 ], [ %1485, %1500 ]
  %1468 = ptrtoint i8* %b.18.ph to i64
  br label %1469

; <label>:1469                                    ; preds = %.outer325, %1482
  %1470 = ptrtoint i8* %.pre1590 to i64
  %1471 = sub i64 %1468, %1470
  %1472 = add nsw i64 %1471, %1467
  %1473 = load i64* %14, align 8, !tbaa !22
  %1474 = icmp ugt i64 %1472, %1473
  br i1 %1474, label %1475, label %1506

; <label>:1475                                    ; preds = %1469
  %1476 = icmp eq i64 %1473, 65536
  br i1 %1476, label %.loopexit, label %1477

; <label>:1477                                    ; preds = %1475
  %1478 = shl i64 %1473, 1
  %1479 = icmp ugt i64 %1478, 65536
  %.129 = select i1 %1479, i64 65536, i64 %1478
  store i64 %.129, i64* %14, align 8, !tbaa !22
  %1480 = tail call i8* @realloc(i8* %.pre1590, i64 %.129) #7
  store i8* %1480, i8** %17, align 8, !tbaa !10
  %1481 = icmp eq i8* %1480, null
  br i1 %1481, label %.loopexit, label %1482

; <label>:1482                                    ; preds = %1477
  %1483 = icmp eq i8* %.pre1590, %1480
  br i1 %1483, label %1469, label %1484

; <label>:1484                                    ; preds = %1482
  %1485 = getelementptr inbounds i8* %1480, i64 %1471
  %1486 = ptrtoint i8* %begalt.17.ph to i64
  %1487 = sub i64 %1486, %1470
  %1488 = getelementptr inbounds i8* %1480, i64 %1487
  %1489 = icmp eq i8* %fixup_alt_jump.32.ph, null
  br i1 %1489, label %1494, label %1490

; <label>:1490                                    ; preds = %1484
  %1491 = ptrtoint i8* %fixup_alt_jump.32.ph to i64
  %1492 = sub i64 %1491, %1470
  %1493 = getelementptr inbounds i8* %1480, i64 %1492
  br label %1494

; <label>:1494                                    ; preds = %1484, %1490
  %fixup_alt_jump.33 = phi i8* [ %1493, %1490 ], [ null, %1484 ]
  %1495 = icmp eq i8* %laststart.33.ph, null
  br i1 %1495, label %1500, label %1496

; <label>:1496                                    ; preds = %1494
  %1497 = ptrtoint i8* %laststart.33.ph to i64
  %1498 = sub i64 %1497, %1470
  %1499 = getelementptr inbounds i8* %1480, i64 %1498
  br label %1500

; <label>:1500                                    ; preds = %1494, %1496
  %laststart.34 = phi i8* [ %1499, %1496 ], [ null, %1494 ]
  %1501 = icmp eq i8* %pending_exact.17.ph, null
  br i1 %1501, label %.outer325, label %1502

; <label>:1502                                    ; preds = %1500
  %1503 = ptrtoint i8* %pending_exact.17.ph to i64
  %1504 = sub i64 %1503, %1470
  %1505 = getelementptr inbounds i8* %1480, i64 %1504
  br label %.outer325

; <label>:1506                                    ; preds = %1469
  %1507 = getelementptr inbounds i8* %b.18.ph, i64 5
  %.sum48 = select i1 %1466, i64 10, i64 5
  %1508 = getelementptr inbounds i8* %b.18.ph, i64 %.sum48
  %1509 = ptrtoint i8* %1508 to i64
  %1510 = ptrtoint i8* %laststart.33.ph to i64
  %1511 = sub i64 %1509, %1510
  %1512 = add i64 %1511, 4294967293
  %1513 = trunc i64 %1512 to i32
  %1514 = icmp eq i8* %b.18.ph, %laststart.33.ph
  br i1 %1514, label %insert_op2.exit152, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %1506, %.lr.ph.i149
  %pto.02.i150 = phi i8* [ %1517, %.lr.ph.i149 ], [ %1507, %1506 ]
  %pfrom.01.i151 = phi i8* [ %1515, %.lr.ph.i149 ], [ %b.18.ph, %1506 ]
  %1515 = getelementptr inbounds i8* %pfrom.01.i151, i64 -1
  %1516 = load i8* %1515, align 1, !tbaa !12
  %1517 = getelementptr inbounds i8* %pto.02.i150, i64 -1
  store i8 %1516, i8* %1517, align 1, !tbaa !12
  %1518 = icmp eq i8* %1515, %laststart.33.ph
  br i1 %1518, label %insert_op2.exit152, label %.lr.ph.i149

insert_op2.exit152:                               ; preds = %.lr.ph.i149, %1506
  store i8 21, i8* %laststart.33.ph, align 1, !tbaa !12
  %1519 = trunc i64 %1512 to i8
  %1520 = getelementptr inbounds i8* %laststart.33.ph, i64 1
  store i8 %1519, i8* %1520, align 1, !tbaa !12
  %1521 = lshr i32 %1513, 8
  %1522 = trunc i32 %1521 to i8
  %1523 = getelementptr inbounds i8* %laststart.33.ph, i64 2
  store i8 %1522, i8* %1523, align 1, !tbaa !12
  %1524 = trunc i32 %lower_bound.2 to i8
  %1525 = getelementptr inbounds i8* %laststart.33.ph, i64 3
  store i8 %1524, i8* %1525, align 1, !tbaa !12
  %1526 = lshr i32 %lower_bound.2, 8
  %1527 = trunc i32 %1526 to i8
  %1528 = getelementptr inbounds i8* %laststart.33.ph, i64 4
  store i8 %1527, i8* %1528, align 1, !tbaa !12
  %1529 = icmp eq i8* %1507, %laststart.33.ph
  %.pre1643 = getelementptr inbounds i8* %b.18.ph, i64 10
  br i1 %1529, label %insert_op2.exit148, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %insert_op2.exit152, %.lr.ph.i145
  %pto.02.i146 = phi i8* [ %1532, %.lr.ph.i145 ], [ %.pre1643, %insert_op2.exit152 ]
  %pfrom.01.i147 = phi i8* [ %1530, %.lr.ph.i145 ], [ %1507, %insert_op2.exit152 ]
  %1530 = getelementptr inbounds i8* %pfrom.01.i147, i64 -1
  %1531 = load i8* %1530, align 1, !tbaa !12
  %1532 = getelementptr inbounds i8* %pto.02.i146, i64 -1
  store i8 %1531, i8* %1532, align 1, !tbaa !12
  %1533 = icmp eq i8* %1530, %laststart.33.ph
  br i1 %1533, label %insert_op2.exit148, label %.lr.ph.i145

insert_op2.exit148:                               ; preds = %.lr.ph.i145, %insert_op2.exit152
  store i8 23, i8* %laststart.33.ph, align 1, !tbaa !12
  store i8 5, i8* %1520, align 1, !tbaa !12
  store i8 0, i8* %1523, align 1, !tbaa !12
  store i8 %1524, i8* %1525, align 1, !tbaa !12
  store i8 %1527, i8* %1528, align 1, !tbaa !12
  br i1 %1466, label %1534, label %.backedge367

; <label>:1534                                    ; preds = %insert_op2.exit148
  %1535 = getelementptr inbounds i8* %laststart.33.ph, i64 5
  %1536 = ptrtoint i8* %1535 to i64
  %1537 = ptrtoint i8* %.pre1643 to i64
  %1538 = sub i64 %1536, %1537
  %1539 = add i64 %1538, 4294967293
  %1540 = trunc i64 %1539 to i32
  %1541 = add nsw i32 %upper_bound.3, -1
  store i8 22, i8* %.pre1643, align 1, !tbaa !12
  %1542 = trunc i64 %1539 to i8
  %1543 = getelementptr inbounds i8* %b.18.ph, i64 11
  store i8 %1542, i8* %1543, align 1, !tbaa !12
  %1544 = lshr i32 %1540, 8
  %1545 = trunc i32 %1544 to i8
  %1546 = getelementptr inbounds i8* %b.18.ph, i64 12
  store i8 %1545, i8* %1546, align 1, !tbaa !12
  %1547 = trunc i32 %1541 to i8
  %1548 = getelementptr inbounds i8* %b.18.ph, i64 13
  store i8 %1547, i8* %1548, align 1, !tbaa !12
  %1549 = lshr i32 %1541, 8
  %1550 = trunc i32 %1549 to i8
  %1551 = getelementptr inbounds i8* %b.18.ph, i64 14
  store i8 %1550, i8* %1551, align 1, !tbaa !12
  %1552 = getelementptr inbounds i8* %b.18.ph, i64 15
  %1553 = ptrtoint i8* %1552 to i64
  %1554 = sub i64 %1553, %1510
  %1555 = trunc i64 %1554 to i32
  %1556 = icmp eq i8* %1552, %laststart.33.ph
  %.pre1645 = getelementptr inbounds i8* %b.18.ph, i64 20
  br i1 %1556, label %insert_op2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %1534, %.lr.ph.i
  %pto.02.i = phi i8* [ %1559, %.lr.ph.i ], [ %.pre1645, %1534 ]
  %pfrom.01.i = phi i8* [ %1557, %.lr.ph.i ], [ %1552, %1534 ]
  %1557 = getelementptr inbounds i8* %pfrom.01.i, i64 -1
  %1558 = load i8* %1557, align 1, !tbaa !12
  %1559 = getelementptr inbounds i8* %pto.02.i, i64 -1
  store i8 %1558, i8* %1559, align 1, !tbaa !12
  %1560 = icmp eq i8* %1557, %laststart.33.ph
  br i1 %1560, label %insert_op2.exit, label %.lr.ph.i

insert_op2.exit:                                  ; preds = %.lr.ph.i, %1534
  store i8 23, i8* %laststart.33.ph, align 1, !tbaa !12
  %1561 = trunc i64 %1554 to i8
  store i8 %1561, i8* %1520, align 1, !tbaa !12
  %1562 = lshr i32 %1555, 8
  %1563 = trunc i32 %1562 to i8
  store i8 %1563, i8* %1523, align 1, !tbaa !12
  store i8 %1547, i8* %1525, align 1, !tbaa !12
  store i8 %1550, i8* %1528, align 1, !tbaa !12
  br label %.backedge367

; <label>:1564                                    ; preds = %1319, %1380, %1407, %1399
  store i8* %1317, i8** %p, align 8, !tbaa !13
  %1565 = icmp eq i8* %1317, %1
  br i1 %1565, label %.loopexit, label %1566

; <label>:1566                                    ; preds = %1564
  store i8* %1316, i8** %p, align 8, !tbaa !13
  %1567 = load i8* %1317, align 1, !tbaa !12
  br i1 %31, label %1568, label %1572

; <label>:1568                                    ; preds = %1566
  %1569 = zext i8 %1567 to i64
  %1570 = getelementptr inbounds i8* %3, i64 %1569
  %1571 = load i8* %1570, align 1, !tbaa !12
  br label %1572

; <label>:1572                                    ; preds = %1566, %1568
  %c.15 = phi i8 [ %1571, %1568 ], [ %1567, %1566 ]
  %1573 = icmp ugt i8* %1316, %pattern
  %or.cond1667 = and i1 %37, %1573
  %1574 = icmp eq i8 %1567, 92
  %or.cond1669 = and i1 %or.cond1667, %1574
  br i1 %or.cond1669, label %1961, label %group_in_compile_stack.exit.thread216

; <label>:1575                                    ; preds = %984
  br i1 %74, label %.preheader331, label %group_in_compile_stack.exit.thread216

.preheader331:                                    ; preds = %1575
  %.pre1589.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer334

.outer334:                                        ; preds = %1608, %1610, %.preheader331
  %.pre1589 = phi i8* [ %.pre1589.pre, %.preheader331 ], [ %1588, %1610 ], [ %1588, %1608 ]
  %fixup_alt_jump.35.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader331 ], [ %fixup_alt_jump.36, %1610 ], [ %fixup_alt_jump.36, %1608 ]
  %begalt.19.ph = phi i8* [ %begalt.01123, %.preheader331 ], [ %1596, %1610 ], [ %1596, %1608 ]
  %laststart.36.ph = phi i8* [ %b.01147, %.preheader331 ], [ %laststart.37, %1610 ], [ %laststart.37, %1608 ]
  %pending_exact.18.ph = phi i8* [ %pending_exact.01132, %.preheader331 ], [ %1613, %1610 ], [ null, %1608 ]
  %b.20.ph = phi i8* [ %b.01147, %.preheader331 ], [ %1593, %1610 ], [ %1593, %1608 ]
  %1576 = ptrtoint i8* %b.20.ph to i64
  br label %1577

; <label>:1577                                    ; preds = %.outer334, %1590
  %1578 = ptrtoint i8* %.pre1589 to i64
  %1579 = sub i64 %1576, %1578
  %1580 = add nsw i64 %1579, 1
  %1581 = load i64* %14, align 8, !tbaa !22
  %1582 = icmp ugt i64 %1580, %1581
  br i1 %1582, label %1583, label %1614

; <label>:1583                                    ; preds = %1577
  %1584 = icmp eq i64 %1581, 65536
  br i1 %1584, label %.loopexit, label %1585

; <label>:1585                                    ; preds = %1583
  %1586 = shl i64 %1581, 1
  %1587 = icmp ugt i64 %1586, 65536
  %.130 = select i1 %1587, i64 65536, i64 %1586
  store i64 %.130, i64* %14, align 8, !tbaa !22
  %1588 = tail call i8* @realloc(i8* %.pre1589, i64 %.130) #7
  store i8* %1588, i8** %17, align 8, !tbaa !10
  %1589 = icmp eq i8* %1588, null
  br i1 %1589, label %.loopexit, label %1590

; <label>:1590                                    ; preds = %1585
  %1591 = icmp eq i8* %.pre1589, %1588
  br i1 %1591, label %1577, label %1592

; <label>:1592                                    ; preds = %1590
  %1593 = getelementptr inbounds i8* %1588, i64 %1579
  %1594 = ptrtoint i8* %begalt.19.ph to i64
  %1595 = sub i64 %1594, %1578
  %1596 = getelementptr inbounds i8* %1588, i64 %1595
  %1597 = icmp eq i8* %fixup_alt_jump.35.ph, null
  br i1 %1597, label %1602, label %1598

; <label>:1598                                    ; preds = %1592
  %1599 = ptrtoint i8* %fixup_alt_jump.35.ph to i64
  %1600 = sub i64 %1599, %1578
  %1601 = getelementptr inbounds i8* %1588, i64 %1600
  br label %1602

; <label>:1602                                    ; preds = %1592, %1598
  %fixup_alt_jump.36 = phi i8* [ %1601, %1598 ], [ null, %1592 ]
  %1603 = icmp eq i8* %laststart.36.ph, null
  br i1 %1603, label %1608, label %1604

; <label>:1604                                    ; preds = %1602
  %1605 = ptrtoint i8* %laststart.36.ph to i64
  %1606 = sub i64 %1605, %1578
  %1607 = getelementptr inbounds i8* %1588, i64 %1606
  br label %1608

; <label>:1608                                    ; preds = %1602, %1604
  %laststart.37 = phi i8* [ %1607, %1604 ], [ null, %1602 ]
  %1609 = icmp eq i8* %pending_exact.18.ph, null
  br i1 %1609, label %.outer334, label %1610

; <label>:1610                                    ; preds = %1608
  %1611 = ptrtoint i8* %pending_exact.18.ph to i64
  %1612 = sub i64 %1611, %1578
  %1613 = getelementptr inbounds i8* %1588, i64 %1612
  br label %.outer334

; <label>:1614                                    ; preds = %1577
  %1615 = getelementptr inbounds i8* %b.20.ph, i64 1
  store i8 24, i8* %b.20.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:1616                                    ; preds = %984
  br i1 %74, label %.preheader335, label %group_in_compile_stack.exit.thread216

.preheader335:                                    ; preds = %1616
  %.pre1588.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer338

.outer338:                                        ; preds = %1649, %1651, %.preheader335
  %.pre1588 = phi i8* [ %.pre1588.pre, %.preheader335 ], [ %1629, %1651 ], [ %1629, %1649 ]
  %fixup_alt_jump.37.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader335 ], [ %fixup_alt_jump.38, %1651 ], [ %fixup_alt_jump.38, %1649 ]
  %begalt.20.ph = phi i8* [ %begalt.01123, %.preheader335 ], [ %1637, %1651 ], [ %1637, %1649 ]
  %laststart.38.ph = phi i8* [ %b.01147, %.preheader335 ], [ %laststart.39, %1651 ], [ %laststart.39, %1649 ]
  %pending_exact.19.ph = phi i8* [ %pending_exact.01132, %.preheader335 ], [ %1654, %1651 ], [ null, %1649 ]
  %b.21.ph = phi i8* [ %b.01147, %.preheader335 ], [ %1634, %1651 ], [ %1634, %1649 ]
  %1617 = ptrtoint i8* %b.21.ph to i64
  br label %1618

; <label>:1618                                    ; preds = %.outer338, %1631
  %1619 = ptrtoint i8* %.pre1588 to i64
  %1620 = sub i64 %1617, %1619
  %1621 = add nsw i64 %1620, 1
  %1622 = load i64* %14, align 8, !tbaa !22
  %1623 = icmp ugt i64 %1621, %1622
  br i1 %1623, label %1624, label %1655

; <label>:1624                                    ; preds = %1618
  %1625 = icmp eq i64 %1622, 65536
  br i1 %1625, label %.loopexit, label %1626

; <label>:1626                                    ; preds = %1624
  %1627 = shl i64 %1622, 1
  %1628 = icmp ugt i64 %1627, 65536
  %.131 = select i1 %1628, i64 65536, i64 %1627
  store i64 %.131, i64* %14, align 8, !tbaa !22
  %1629 = tail call i8* @realloc(i8* %.pre1588, i64 %.131) #7
  store i8* %1629, i8** %17, align 8, !tbaa !10
  %1630 = icmp eq i8* %1629, null
  br i1 %1630, label %.loopexit, label %1631

; <label>:1631                                    ; preds = %1626
  %1632 = icmp eq i8* %.pre1588, %1629
  br i1 %1632, label %1618, label %1633

; <label>:1633                                    ; preds = %1631
  %1634 = getelementptr inbounds i8* %1629, i64 %1620
  %1635 = ptrtoint i8* %begalt.20.ph to i64
  %1636 = sub i64 %1635, %1619
  %1637 = getelementptr inbounds i8* %1629, i64 %1636
  %1638 = icmp eq i8* %fixup_alt_jump.37.ph, null
  br i1 %1638, label %1643, label %1639

; <label>:1639                                    ; preds = %1633
  %1640 = ptrtoint i8* %fixup_alt_jump.37.ph to i64
  %1641 = sub i64 %1640, %1619
  %1642 = getelementptr inbounds i8* %1629, i64 %1641
  br label %1643

; <label>:1643                                    ; preds = %1633, %1639
  %fixup_alt_jump.38 = phi i8* [ %1642, %1639 ], [ null, %1633 ]
  %1644 = icmp eq i8* %laststart.38.ph, null
  br i1 %1644, label %1649, label %1645

; <label>:1645                                    ; preds = %1643
  %1646 = ptrtoint i8* %laststart.38.ph to i64
  %1647 = sub i64 %1646, %1619
  %1648 = getelementptr inbounds i8* %1629, i64 %1647
  br label %1649

; <label>:1649                                    ; preds = %1643, %1645
  %laststart.39 = phi i8* [ %1648, %1645 ], [ null, %1643 ]
  %1650 = icmp eq i8* %pending_exact.19.ph, null
  br i1 %1650, label %.outer338, label %1651

; <label>:1651                                    ; preds = %1649
  %1652 = ptrtoint i8* %pending_exact.19.ph to i64
  %1653 = sub i64 %1652, %1619
  %1654 = getelementptr inbounds i8* %1629, i64 %1653
  br label %.outer338

; <label>:1655                                    ; preds = %1618
  %1656 = getelementptr inbounds i8* %b.21.ph, i64 1
  store i8 25, i8* %b.21.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:1657                                    ; preds = %984
  br i1 %74, label %.preheader339, label %group_in_compile_stack.exit.thread216

.preheader339:                                    ; preds = %1657
  %.pre1587.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer342

.outer342:                                        ; preds = %1690, %1692, %.preheader339
  %.pre1587 = phi i8* [ %.pre1587.pre, %.preheader339 ], [ %1670, %1692 ], [ %1670, %1690 ]
  %fixup_alt_jump.39.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader339 ], [ %fixup_alt_jump.40, %1692 ], [ %fixup_alt_jump.40, %1690 ]
  %begalt.21.ph = phi i8* [ %begalt.01123, %.preheader339 ], [ %1678, %1692 ], [ %1678, %1690 ]
  %laststart.40.ph = phi i8* [ %laststart.01128, %.preheader339 ], [ %laststart.41, %1692 ], [ %laststart.41, %1690 ]
  %pending_exact.20.ph = phi i8* [ %pending_exact.01132, %.preheader339 ], [ %1695, %1692 ], [ null, %1690 ]
  %b.22.ph = phi i8* [ %b.01147, %.preheader339 ], [ %1675, %1692 ], [ %1675, %1690 ]
  %1658 = ptrtoint i8* %b.22.ph to i64
  br label %1659

; <label>:1659                                    ; preds = %.outer342, %1672
  %1660 = ptrtoint i8* %.pre1587 to i64
  %1661 = sub i64 %1658, %1660
  %1662 = add nsw i64 %1661, 1
  %1663 = load i64* %14, align 8, !tbaa !22
  %1664 = icmp ugt i64 %1662, %1663
  br i1 %1664, label %1665, label %1696

; <label>:1665                                    ; preds = %1659
  %1666 = icmp eq i64 %1663, 65536
  br i1 %1666, label %.loopexit, label %1667

; <label>:1667                                    ; preds = %1665
  %1668 = shl i64 %1663, 1
  %1669 = icmp ugt i64 %1668, 65536
  %.132 = select i1 %1669, i64 65536, i64 %1668
  store i64 %.132, i64* %14, align 8, !tbaa !22
  %1670 = tail call i8* @realloc(i8* %.pre1587, i64 %.132) #7
  store i8* %1670, i8** %17, align 8, !tbaa !10
  %1671 = icmp eq i8* %1670, null
  br i1 %1671, label %.loopexit, label %1672

; <label>:1672                                    ; preds = %1667
  %1673 = icmp eq i8* %.pre1587, %1670
  br i1 %1673, label %1659, label %1674

; <label>:1674                                    ; preds = %1672
  %1675 = getelementptr inbounds i8* %1670, i64 %1661
  %1676 = ptrtoint i8* %begalt.21.ph to i64
  %1677 = sub i64 %1676, %1660
  %1678 = getelementptr inbounds i8* %1670, i64 %1677
  %1679 = icmp eq i8* %fixup_alt_jump.39.ph, null
  br i1 %1679, label %1684, label %1680

; <label>:1680                                    ; preds = %1674
  %1681 = ptrtoint i8* %fixup_alt_jump.39.ph to i64
  %1682 = sub i64 %1681, %1660
  %1683 = getelementptr inbounds i8* %1670, i64 %1682
  br label %1684

; <label>:1684                                    ; preds = %1674, %1680
  %fixup_alt_jump.40 = phi i8* [ %1683, %1680 ], [ null, %1674 ]
  %1685 = icmp eq i8* %laststart.40.ph, null
  br i1 %1685, label %1690, label %1686

; <label>:1686                                    ; preds = %1684
  %1687 = ptrtoint i8* %laststart.40.ph to i64
  %1688 = sub i64 %1687, %1660
  %1689 = getelementptr inbounds i8* %1670, i64 %1688
  br label %1690

; <label>:1690                                    ; preds = %1684, %1686
  %laststart.41 = phi i8* [ %1689, %1686 ], [ null, %1684 ]
  %1691 = icmp eq i8* %pending_exact.20.ph, null
  br i1 %1691, label %.outer342, label %1692

; <label>:1692                                    ; preds = %1690
  %1693 = ptrtoint i8* %pending_exact.20.ph to i64
  %1694 = sub i64 %1693, %1660
  %1695 = getelementptr inbounds i8* %1670, i64 %1694
  br label %.outer342

; <label>:1696                                    ; preds = %1659
  %1697 = getelementptr inbounds i8* %b.22.ph, i64 1
  store i8 26, i8* %b.22.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:1698                                    ; preds = %984
  br i1 %74, label %.preheader343, label %group_in_compile_stack.exit.thread216

.preheader343:                                    ; preds = %1698
  %.pre1586.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer346

.outer346:                                        ; preds = %1731, %1733, %.preheader343
  %.pre1586 = phi i8* [ %.pre1586.pre, %.preheader343 ], [ %1711, %1733 ], [ %1711, %1731 ]
  %fixup_alt_jump.41.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader343 ], [ %fixup_alt_jump.42, %1733 ], [ %fixup_alt_jump.42, %1731 ]
  %begalt.22.ph = phi i8* [ %begalt.01123, %.preheader343 ], [ %1719, %1733 ], [ %1719, %1731 ]
  %laststart.42.ph = phi i8* [ %laststart.01128, %.preheader343 ], [ %laststart.43, %1733 ], [ %laststart.43, %1731 ]
  %pending_exact.21.ph = phi i8* [ %pending_exact.01132, %.preheader343 ], [ %1736, %1733 ], [ null, %1731 ]
  %b.23.ph = phi i8* [ %b.01147, %.preheader343 ], [ %1716, %1733 ], [ %1716, %1731 ]
  %1699 = ptrtoint i8* %b.23.ph to i64
  br label %1700

; <label>:1700                                    ; preds = %.outer346, %1713
  %1701 = ptrtoint i8* %.pre1586 to i64
  %1702 = sub i64 %1699, %1701
  %1703 = add nsw i64 %1702, 1
  %1704 = load i64* %14, align 8, !tbaa !22
  %1705 = icmp ugt i64 %1703, %1704
  br i1 %1705, label %1706, label %1737

; <label>:1706                                    ; preds = %1700
  %1707 = icmp eq i64 %1704, 65536
  br i1 %1707, label %.loopexit, label %1708

; <label>:1708                                    ; preds = %1706
  %1709 = shl i64 %1704, 1
  %1710 = icmp ugt i64 %1709, 65536
  %.133 = select i1 %1710, i64 65536, i64 %1709
  store i64 %.133, i64* %14, align 8, !tbaa !22
  %1711 = tail call i8* @realloc(i8* %.pre1586, i64 %.133) #7
  store i8* %1711, i8** %17, align 8, !tbaa !10
  %1712 = icmp eq i8* %1711, null
  br i1 %1712, label %.loopexit, label %1713

; <label>:1713                                    ; preds = %1708
  %1714 = icmp eq i8* %.pre1586, %1711
  br i1 %1714, label %1700, label %1715

; <label>:1715                                    ; preds = %1713
  %1716 = getelementptr inbounds i8* %1711, i64 %1702
  %1717 = ptrtoint i8* %begalt.22.ph to i64
  %1718 = sub i64 %1717, %1701
  %1719 = getelementptr inbounds i8* %1711, i64 %1718
  %1720 = icmp eq i8* %fixup_alt_jump.41.ph, null
  br i1 %1720, label %1725, label %1721

; <label>:1721                                    ; preds = %1715
  %1722 = ptrtoint i8* %fixup_alt_jump.41.ph to i64
  %1723 = sub i64 %1722, %1701
  %1724 = getelementptr inbounds i8* %1711, i64 %1723
  br label %1725

; <label>:1725                                    ; preds = %1715, %1721
  %fixup_alt_jump.42 = phi i8* [ %1724, %1721 ], [ null, %1715 ]
  %1726 = icmp eq i8* %laststart.42.ph, null
  br i1 %1726, label %1731, label %1727

; <label>:1727                                    ; preds = %1725
  %1728 = ptrtoint i8* %laststart.42.ph to i64
  %1729 = sub i64 %1728, %1701
  %1730 = getelementptr inbounds i8* %1711, i64 %1729
  br label %1731

; <label>:1731                                    ; preds = %1725, %1727
  %laststart.43 = phi i8* [ %1730, %1727 ], [ null, %1725 ]
  %1732 = icmp eq i8* %pending_exact.21.ph, null
  br i1 %1732, label %.outer346, label %1733

; <label>:1733                                    ; preds = %1731
  %1734 = ptrtoint i8* %pending_exact.21.ph to i64
  %1735 = sub i64 %1734, %1701
  %1736 = getelementptr inbounds i8* %1711, i64 %1735
  br label %.outer346

; <label>:1737                                    ; preds = %1700
  %1738 = getelementptr inbounds i8* %b.23.ph, i64 1
  store i8 27, i8* %b.23.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:1739                                    ; preds = %984
  br i1 %74, label %.preheader347, label %group_in_compile_stack.exit.thread216

.preheader347:                                    ; preds = %1739
  %.pre1585.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer350

.outer350:                                        ; preds = %1772, %1774, %.preheader347
  %.pre1585 = phi i8* [ %.pre1585.pre, %.preheader347 ], [ %1752, %1774 ], [ %1752, %1772 ]
  %fixup_alt_jump.43.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader347 ], [ %fixup_alt_jump.44, %1774 ], [ %fixup_alt_jump.44, %1772 ]
  %begalt.23.ph = phi i8* [ %begalt.01123, %.preheader347 ], [ %1760, %1774 ], [ %1760, %1772 ]
  %laststart.44.ph = phi i8* [ %laststart.01128, %.preheader347 ], [ %laststart.45, %1774 ], [ %laststart.45, %1772 ]
  %pending_exact.22.ph = phi i8* [ %pending_exact.01132, %.preheader347 ], [ %1777, %1774 ], [ null, %1772 ]
  %b.24.ph = phi i8* [ %b.01147, %.preheader347 ], [ %1757, %1774 ], [ %1757, %1772 ]
  %1740 = ptrtoint i8* %b.24.ph to i64
  br label %1741

; <label>:1741                                    ; preds = %.outer350, %1754
  %1742 = ptrtoint i8* %.pre1585 to i64
  %1743 = sub i64 %1740, %1742
  %1744 = add nsw i64 %1743, 1
  %1745 = load i64* %14, align 8, !tbaa !22
  %1746 = icmp ugt i64 %1744, %1745
  br i1 %1746, label %1747, label %1778

; <label>:1747                                    ; preds = %1741
  %1748 = icmp eq i64 %1745, 65536
  br i1 %1748, label %.loopexit, label %1749

; <label>:1749                                    ; preds = %1747
  %1750 = shl i64 %1745, 1
  %1751 = icmp ugt i64 %1750, 65536
  %.134 = select i1 %1751, i64 65536, i64 %1750
  store i64 %.134, i64* %14, align 8, !tbaa !22
  %1752 = tail call i8* @realloc(i8* %.pre1585, i64 %.134) #7
  store i8* %1752, i8** %17, align 8, !tbaa !10
  %1753 = icmp eq i8* %1752, null
  br i1 %1753, label %.loopexit, label %1754

; <label>:1754                                    ; preds = %1749
  %1755 = icmp eq i8* %.pre1585, %1752
  br i1 %1755, label %1741, label %1756

; <label>:1756                                    ; preds = %1754
  %1757 = getelementptr inbounds i8* %1752, i64 %1743
  %1758 = ptrtoint i8* %begalt.23.ph to i64
  %1759 = sub i64 %1758, %1742
  %1760 = getelementptr inbounds i8* %1752, i64 %1759
  %1761 = icmp eq i8* %fixup_alt_jump.43.ph, null
  br i1 %1761, label %1766, label %1762

; <label>:1762                                    ; preds = %1756
  %1763 = ptrtoint i8* %fixup_alt_jump.43.ph to i64
  %1764 = sub i64 %1763, %1742
  %1765 = getelementptr inbounds i8* %1752, i64 %1764
  br label %1766

; <label>:1766                                    ; preds = %1756, %1762
  %fixup_alt_jump.44 = phi i8* [ %1765, %1762 ], [ null, %1756 ]
  %1767 = icmp eq i8* %laststart.44.ph, null
  br i1 %1767, label %1772, label %1768

; <label>:1768                                    ; preds = %1766
  %1769 = ptrtoint i8* %laststart.44.ph to i64
  %1770 = sub i64 %1769, %1742
  %1771 = getelementptr inbounds i8* %1752, i64 %1770
  br label %1772

; <label>:1772                                    ; preds = %1766, %1768
  %laststart.45 = phi i8* [ %1771, %1768 ], [ null, %1766 ]
  %1773 = icmp eq i8* %pending_exact.22.ph, null
  br i1 %1773, label %.outer350, label %1774

; <label>:1774                                    ; preds = %1772
  %1775 = ptrtoint i8* %pending_exact.22.ph to i64
  %1776 = sub i64 %1775, %1742
  %1777 = getelementptr inbounds i8* %1752, i64 %1776
  br label %.outer350

; <label>:1778                                    ; preds = %1741
  %1779 = getelementptr inbounds i8* %b.24.ph, i64 1
  store i8 28, i8* %b.24.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:1780                                    ; preds = %984
  br i1 %74, label %.preheader351, label %group_in_compile_stack.exit.thread216

.preheader351:                                    ; preds = %1780
  %.pre1584.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer354

.outer354:                                        ; preds = %1813, %1815, %.preheader351
  %.pre1584 = phi i8* [ %.pre1584.pre, %.preheader351 ], [ %1793, %1815 ], [ %1793, %1813 ]
  %fixup_alt_jump.45.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader351 ], [ %fixup_alt_jump.46, %1815 ], [ %fixup_alt_jump.46, %1813 ]
  %begalt.24.ph = phi i8* [ %begalt.01123, %.preheader351 ], [ %1801, %1815 ], [ %1801, %1813 ]
  %laststart.46.ph = phi i8* [ %laststart.01128, %.preheader351 ], [ %laststart.47, %1815 ], [ %laststart.47, %1813 ]
  %pending_exact.23.ph = phi i8* [ %pending_exact.01132, %.preheader351 ], [ %1818, %1815 ], [ null, %1813 ]
  %b.25.ph = phi i8* [ %b.01147, %.preheader351 ], [ %1798, %1815 ], [ %1798, %1813 ]
  %1781 = ptrtoint i8* %b.25.ph to i64
  br label %1782

; <label>:1782                                    ; preds = %.outer354, %1795
  %1783 = ptrtoint i8* %.pre1584 to i64
  %1784 = sub i64 %1781, %1783
  %1785 = add nsw i64 %1784, 1
  %1786 = load i64* %14, align 8, !tbaa !22
  %1787 = icmp ugt i64 %1785, %1786
  br i1 %1787, label %1788, label %1819

; <label>:1788                                    ; preds = %1782
  %1789 = icmp eq i64 %1786, 65536
  br i1 %1789, label %.loopexit, label %1790

; <label>:1790                                    ; preds = %1788
  %1791 = shl i64 %1786, 1
  %1792 = icmp ugt i64 %1791, 65536
  %.135 = select i1 %1792, i64 65536, i64 %1791
  store i64 %.135, i64* %14, align 8, !tbaa !22
  %1793 = tail call i8* @realloc(i8* %.pre1584, i64 %.135) #7
  store i8* %1793, i8** %17, align 8, !tbaa !10
  %1794 = icmp eq i8* %1793, null
  br i1 %1794, label %.loopexit, label %1795

; <label>:1795                                    ; preds = %1790
  %1796 = icmp eq i8* %.pre1584, %1793
  br i1 %1796, label %1782, label %1797

; <label>:1797                                    ; preds = %1795
  %1798 = getelementptr inbounds i8* %1793, i64 %1784
  %1799 = ptrtoint i8* %begalt.24.ph to i64
  %1800 = sub i64 %1799, %1783
  %1801 = getelementptr inbounds i8* %1793, i64 %1800
  %1802 = icmp eq i8* %fixup_alt_jump.45.ph, null
  br i1 %1802, label %1807, label %1803

; <label>:1803                                    ; preds = %1797
  %1804 = ptrtoint i8* %fixup_alt_jump.45.ph to i64
  %1805 = sub i64 %1804, %1783
  %1806 = getelementptr inbounds i8* %1793, i64 %1805
  br label %1807

; <label>:1807                                    ; preds = %1797, %1803
  %fixup_alt_jump.46 = phi i8* [ %1806, %1803 ], [ null, %1797 ]
  %1808 = icmp eq i8* %laststart.46.ph, null
  br i1 %1808, label %1813, label %1809

; <label>:1809                                    ; preds = %1807
  %1810 = ptrtoint i8* %laststart.46.ph to i64
  %1811 = sub i64 %1810, %1783
  %1812 = getelementptr inbounds i8* %1793, i64 %1811
  br label %1813

; <label>:1813                                    ; preds = %1807, %1809
  %laststart.47 = phi i8* [ %1812, %1809 ], [ null, %1807 ]
  %1814 = icmp eq i8* %pending_exact.23.ph, null
  br i1 %1814, label %.outer354, label %1815

; <label>:1815                                    ; preds = %1813
  %1816 = ptrtoint i8* %pending_exact.23.ph to i64
  %1817 = sub i64 %1816, %1783
  %1818 = getelementptr inbounds i8* %1793, i64 %1817
  br label %.outer354

; <label>:1819                                    ; preds = %1782
  %1820 = getelementptr inbounds i8* %b.25.ph, i64 1
  store i8 29, i8* %b.25.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:1821                                    ; preds = %984
  br i1 %74, label %.preheader355, label %group_in_compile_stack.exit.thread216

.preheader355:                                    ; preds = %1821
  %.pre1583.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer358

.outer358:                                        ; preds = %1854, %1856, %.preheader355
  %.pre1583 = phi i8* [ %.pre1583.pre, %.preheader355 ], [ %1834, %1856 ], [ %1834, %1854 ]
  %fixup_alt_jump.47.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader355 ], [ %fixup_alt_jump.48, %1856 ], [ %fixup_alt_jump.48, %1854 ]
  %begalt.25.ph = phi i8* [ %begalt.01123, %.preheader355 ], [ %1842, %1856 ], [ %1842, %1854 ]
  %laststart.48.ph = phi i8* [ %laststart.01128, %.preheader355 ], [ %laststart.49, %1856 ], [ %laststart.49, %1854 ]
  %pending_exact.24.ph = phi i8* [ %pending_exact.01132, %.preheader355 ], [ %1859, %1856 ], [ null, %1854 ]
  %b.26.ph = phi i8* [ %b.01147, %.preheader355 ], [ %1839, %1856 ], [ %1839, %1854 ]
  %1822 = ptrtoint i8* %b.26.ph to i64
  br label %1823

; <label>:1823                                    ; preds = %.outer358, %1836
  %1824 = ptrtoint i8* %.pre1583 to i64
  %1825 = sub i64 %1822, %1824
  %1826 = add nsw i64 %1825, 1
  %1827 = load i64* %14, align 8, !tbaa !22
  %1828 = icmp ugt i64 %1826, %1827
  br i1 %1828, label %1829, label %1860

; <label>:1829                                    ; preds = %1823
  %1830 = icmp eq i64 %1827, 65536
  br i1 %1830, label %.loopexit, label %1831

; <label>:1831                                    ; preds = %1829
  %1832 = shl i64 %1827, 1
  %1833 = icmp ugt i64 %1832, 65536
  %.136 = select i1 %1833, i64 65536, i64 %1832
  store i64 %.136, i64* %14, align 8, !tbaa !22
  %1834 = tail call i8* @realloc(i8* %.pre1583, i64 %.136) #7
  store i8* %1834, i8** %17, align 8, !tbaa !10
  %1835 = icmp eq i8* %1834, null
  br i1 %1835, label %.loopexit, label %1836

; <label>:1836                                    ; preds = %1831
  %1837 = icmp eq i8* %.pre1583, %1834
  br i1 %1837, label %1823, label %1838

; <label>:1838                                    ; preds = %1836
  %1839 = getelementptr inbounds i8* %1834, i64 %1825
  %1840 = ptrtoint i8* %begalt.25.ph to i64
  %1841 = sub i64 %1840, %1824
  %1842 = getelementptr inbounds i8* %1834, i64 %1841
  %1843 = icmp eq i8* %fixup_alt_jump.47.ph, null
  br i1 %1843, label %1848, label %1844

; <label>:1844                                    ; preds = %1838
  %1845 = ptrtoint i8* %fixup_alt_jump.47.ph to i64
  %1846 = sub i64 %1845, %1824
  %1847 = getelementptr inbounds i8* %1834, i64 %1846
  br label %1848

; <label>:1848                                    ; preds = %1838, %1844
  %fixup_alt_jump.48 = phi i8* [ %1847, %1844 ], [ null, %1838 ]
  %1849 = icmp eq i8* %laststart.48.ph, null
  br i1 %1849, label %1854, label %1850

; <label>:1850                                    ; preds = %1848
  %1851 = ptrtoint i8* %laststart.48.ph to i64
  %1852 = sub i64 %1851, %1824
  %1853 = getelementptr inbounds i8* %1834, i64 %1852
  br label %1854

; <label>:1854                                    ; preds = %1848, %1850
  %laststart.49 = phi i8* [ %1853, %1850 ], [ null, %1848 ]
  %1855 = icmp eq i8* %pending_exact.24.ph, null
  br i1 %1855, label %.outer358, label %1856

; <label>:1856                                    ; preds = %1854
  %1857 = ptrtoint i8* %pending_exact.24.ph to i64
  %1858 = sub i64 %1857, %1824
  %1859 = getelementptr inbounds i8* %1834, i64 %1858
  br label %.outer358

; <label>:1860                                    ; preds = %1823
  %1861 = getelementptr inbounds i8* %b.26.ph, i64 1
  store i8 11, i8* %b.26.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:1862                                    ; preds = %984
  br i1 %74, label %.preheader359, label %group_in_compile_stack.exit.thread216

.preheader359:                                    ; preds = %1862
  %.pre1582.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer362

.outer362:                                        ; preds = %1895, %1897, %.preheader359
  %.pre1582 = phi i8* [ %.pre1582.pre, %.preheader359 ], [ %1875, %1897 ], [ %1875, %1895 ]
  %fixup_alt_jump.49.ph = phi i8* [ %fixup_alt_jump.01118, %.preheader359 ], [ %fixup_alt_jump.50, %1897 ], [ %fixup_alt_jump.50, %1895 ]
  %begalt.26.ph = phi i8* [ %begalt.01123, %.preheader359 ], [ %1883, %1897 ], [ %1883, %1895 ]
  %laststart.50.ph = phi i8* [ %laststart.01128, %.preheader359 ], [ %laststart.51, %1897 ], [ %laststart.51, %1895 ]
  %pending_exact.25.ph = phi i8* [ %pending_exact.01132, %.preheader359 ], [ %1900, %1897 ], [ null, %1895 ]
  %b.27.ph = phi i8* [ %b.01147, %.preheader359 ], [ %1880, %1897 ], [ %1880, %1895 ]
  %1863 = ptrtoint i8* %b.27.ph to i64
  br label %1864

; <label>:1864                                    ; preds = %.outer362, %1877
  %1865 = ptrtoint i8* %.pre1582 to i64
  %1866 = sub i64 %1863, %1865
  %1867 = add nsw i64 %1866, 1
  %1868 = load i64* %14, align 8, !tbaa !22
  %1869 = icmp ugt i64 %1867, %1868
  br i1 %1869, label %1870, label %1901

; <label>:1870                                    ; preds = %1864
  %1871 = icmp eq i64 %1868, 65536
  br i1 %1871, label %.loopexit, label %1872

; <label>:1872                                    ; preds = %1870
  %1873 = shl i64 %1868, 1
  %1874 = icmp ugt i64 %1873, 65536
  %.137 = select i1 %1874, i64 65536, i64 %1873
  store i64 %.137, i64* %14, align 8, !tbaa !22
  %1875 = tail call i8* @realloc(i8* %.pre1582, i64 %.137) #7
  store i8* %1875, i8** %17, align 8, !tbaa !10
  %1876 = icmp eq i8* %1875, null
  br i1 %1876, label %.loopexit, label %1877

; <label>:1877                                    ; preds = %1872
  %1878 = icmp eq i8* %.pre1582, %1875
  br i1 %1878, label %1864, label %1879

; <label>:1879                                    ; preds = %1877
  %1880 = getelementptr inbounds i8* %1875, i64 %1866
  %1881 = ptrtoint i8* %begalt.26.ph to i64
  %1882 = sub i64 %1881, %1865
  %1883 = getelementptr inbounds i8* %1875, i64 %1882
  %1884 = icmp eq i8* %fixup_alt_jump.49.ph, null
  br i1 %1884, label %1889, label %1885

; <label>:1885                                    ; preds = %1879
  %1886 = ptrtoint i8* %fixup_alt_jump.49.ph to i64
  %1887 = sub i64 %1886, %1865
  %1888 = getelementptr inbounds i8* %1875, i64 %1887
  br label %1889

; <label>:1889                                    ; preds = %1879, %1885
  %fixup_alt_jump.50 = phi i8* [ %1888, %1885 ], [ null, %1879 ]
  %1890 = icmp eq i8* %laststart.50.ph, null
  br i1 %1890, label %1895, label %1891

; <label>:1891                                    ; preds = %1889
  %1892 = ptrtoint i8* %laststart.50.ph to i64
  %1893 = sub i64 %1892, %1865
  %1894 = getelementptr inbounds i8* %1875, i64 %1893
  br label %1895

; <label>:1895                                    ; preds = %1889, %1891
  %laststart.51 = phi i8* [ %1894, %1891 ], [ null, %1889 ]
  %1896 = icmp eq i8* %pending_exact.25.ph, null
  br i1 %1896, label %.outer362, label %1897

; <label>:1897                                    ; preds = %1895
  %1898 = ptrtoint i8* %pending_exact.25.ph to i64
  %1899 = sub i64 %1898, %1865
  %1900 = getelementptr inbounds i8* %1875, i64 %1899
  br label %.outer362

; <label>:1901                                    ; preds = %1864
  %1902 = getelementptr inbounds i8* %b.27.ph, i64 1
  store i8 12, i8* %b.27.ph, align 1, !tbaa !12
  br label %.backedge367

; <label>:1903                                    ; preds = %984, %984, %984, %984, %984, %984, %984, %984, %984
  br i1 %76, label %1904, label %group_in_compile_stack.exit.thread216

; <label>:1904                                    ; preds = %1903
  %1905 = add i8 %986, -48
  %1906 = zext i8 %1905 to i32
  %1907 = icmp ugt i32 %1906, %regnum.01114
  br i1 %1907, label %1908, label %1910

; <label>:1908                                    ; preds = %1904
  %1909 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137 to i8*
  tail call void @free(i8* %1909) #8
  br label %.loopexit

; <label>:1910                                    ; preds = %1904
  %1911 = lshr i64 %compile_stack.sroa.40.01143, 32
  %1912 = trunc i64 %1911 to i32
  br label %1913

; <label>:1913                                    ; preds = %1915, %1910
  %this_element.0.in.i = phi i32 [ %1912, %1910 ], [ %this_element.0.i, %1915 ]
  %this_element.0.i = add i32 %this_element.0.in.i, -1
  %1914 = icmp sgt i32 %this_element.0.i, -1
  br i1 %1914, label %1915, label %group_in_compile_stack.exit.thread.preheader

group_in_compile_stack.exit.thread.preheader:     ; preds = %1913
  %.pre1581.pre = load i8** %17, align 8, !tbaa !10
  br label %group_in_compile_stack.exit.thread.outer

; <label>:1915                                    ; preds = %1913
  %1916 = sext i32 %this_element.0.i to i64
  %1917 = getelementptr inbounds %struct.compile_stack_elt_t* %compile_stack.sroa.0.01137, i64 %1916, i32 4
  %1918 = load i32* %1917, align 4, !tbaa !27
  %1919 = icmp eq i32 %1918, %1906
  br i1 %1919, label %group_in_compile_stack.exit.thread216, label %1913

group_in_compile_stack.exit.thread:               ; preds = %group_in_compile_stack.exit.thread.outer, %1932
  %1920 = ptrtoint i8* %.pre1581 to i64
  %1921 = sub i64 %1952, %1920
  %1922 = add nsw i64 %1921, 2
  %1923 = load i64* %14, align 8, !tbaa !22
  %1924 = icmp ugt i64 %1922, %1923
  br i1 %1924, label %1925, label %1957

; <label>:1925                                    ; preds = %group_in_compile_stack.exit.thread
  %1926 = icmp eq i64 %1923, 65536
  br i1 %1926, label %.loopexit, label %1927

; <label>:1927                                    ; preds = %1925
  %1928 = shl i64 %1923, 1
  %1929 = icmp ugt i64 %1928, 65536
  %.138 = select i1 %1929, i64 65536, i64 %1928
  store i64 %.138, i64* %14, align 8, !tbaa !22
  %1930 = tail call i8* @realloc(i8* %.pre1581, i64 %.138) #7
  store i8* %1930, i8** %17, align 8, !tbaa !10
  %1931 = icmp eq i8* %1930, null
  br i1 %1931, label %.loopexit, label %1932

; <label>:1932                                    ; preds = %1927
  %1933 = icmp eq i8* %.pre1581, %1930
  br i1 %1933, label %group_in_compile_stack.exit.thread, label %1934

; <label>:1934                                    ; preds = %1932
  %1935 = getelementptr inbounds i8* %1930, i64 %1921
  %1936 = ptrtoint i8* %begalt.27.ph to i64
  %1937 = sub i64 %1936, %1920
  %1938 = getelementptr inbounds i8* %1930, i64 %1937
  %1939 = icmp eq i8* %fixup_alt_jump.51.ph, null
  br i1 %1939, label %1944, label %1940

; <label>:1940                                    ; preds = %1934
  %1941 = ptrtoint i8* %fixup_alt_jump.51.ph to i64
  %1942 = sub i64 %1941, %1920
  %1943 = getelementptr inbounds i8* %1930, i64 %1942
  br label %1944

; <label>:1944                                    ; preds = %1934, %1940
  %fixup_alt_jump.52 = phi i8* [ %1943, %1940 ], [ null, %1934 ]
  %1945 = icmp eq i8* %laststart.52.ph, null
  br i1 %1945, label %1950, label %1946

; <label>:1946                                    ; preds = %1944
  %1947 = ptrtoint i8* %laststart.52.ph to i64
  %1948 = sub i64 %1947, %1920
  %1949 = getelementptr inbounds i8* %1930, i64 %1948
  br label %1950

; <label>:1950                                    ; preds = %1944, %1946
  %laststart.53 = phi i8* [ %1949, %1946 ], [ null, %1944 ]
  %1951 = icmp eq i8* %pending_exact.26.ph, null
  br i1 %1951, label %group_in_compile_stack.exit.thread.outer, label %1953

group_in_compile_stack.exit.thread.outer:         ; preds = %1950, %1953, %group_in_compile_stack.exit.thread.preheader
  %.pre1581 = phi i8* [ %.pre1581.pre, %group_in_compile_stack.exit.thread.preheader ], [ %1930, %1953 ], [ %1930, %1950 ]
  %fixup_alt_jump.51.ph = phi i8* [ %fixup_alt_jump.01118, %group_in_compile_stack.exit.thread.preheader ], [ %fixup_alt_jump.52, %1953 ], [ %fixup_alt_jump.52, %1950 ]
  %begalt.27.ph = phi i8* [ %begalt.01123, %group_in_compile_stack.exit.thread.preheader ], [ %1938, %1953 ], [ %1938, %1950 ]
  %laststart.52.ph = phi i8* [ %b.01147, %group_in_compile_stack.exit.thread.preheader ], [ %laststart.53, %1953 ], [ %laststart.53, %1950 ]
  %pending_exact.26.ph = phi i8* [ %pending_exact.01132, %group_in_compile_stack.exit.thread.preheader ], [ %1956, %1953 ], [ null, %1950 ]
  %b.28.ph = phi i8* [ %b.01147, %group_in_compile_stack.exit.thread.preheader ], [ %1935, %1953 ], [ %1935, %1950 ]
  %1952 = ptrtoint i8* %b.28.ph to i64
  br label %group_in_compile_stack.exit.thread

; <label>:1953                                    ; preds = %1950
  %1954 = ptrtoint i8* %pending_exact.26.ph to i64
  %1955 = sub i64 %1954, %1920
  %1956 = getelementptr inbounds i8* %1930, i64 %1955
  br label %group_in_compile_stack.exit.thread.outer

; <label>:1957                                    ; preds = %group_in_compile_stack.exit.thread
  %1958 = getelementptr inbounds i8* %b.28.ph, i64 1
  store i8 8, i8* %b.28.ph, align 1, !tbaa !12
  %1959 = getelementptr inbounds i8* %b.28.ph, i64 2
  store i8 %1905, i8* %1958, align 1, !tbaa !12
  br label %.backedge367

; <label>:1960                                    ; preds = %984, %984
  br i1 %33, label %1961, label %198

; <label>:1961                                    ; preds = %1572, %1310, %988, %1083, %1080, %1209, %1960, %984, %1309
  %c.16 = phi i8 [ %986, %984 ], [ %986, %1960 ], [ %986, %1309 ], [ %986, %1209 ], [ %986, %1080 ], [ %986, %1083 ], [ %986, %988 ], [ %986, %1310 ], [ %c.15, %1572 ]
  br i1 %31, label %1962, label %group_in_compile_stack.exit.thread216

; <label>:1962                                    ; preds = %1961
  %1963 = zext i8 %c.16 to i64
  %1964 = getelementptr inbounds i8* %3, i64 %1963
  %1965 = load i8* %1964, align 1, !tbaa !12
  br label %group_in_compile_stack.exit.thread216

group_in_compile_stack.exit.thread216:            ; preds = %1915, %154, %96, %at_begline_loc_p.exit, %at_endline_loc_p.exit, %979, %1962, %1961, %197, %975, %976, %977, %978, %1140, %1210, %1572, %1575, %1616, %1657, %1698, %1739, %1780, %1821, %1862, %1903, %204, %85
  %fixup_alt_jump.53 = phi i8* [ %fixup_alt_jump.01118, %85 ], [ %fixup_alt_jump.01118, %204 ], [ %fixup_alt_jump.01118, %1903 ], [ %fixup_alt_jump.01118, %1862 ], [ %fixup_alt_jump.01118, %1821 ], [ %fixup_alt_jump.01118, %1780 ], [ %fixup_alt_jump.01118, %1739 ], [ %fixup_alt_jump.01118, %1698 ], [ %fixup_alt_jump.01118, %1657 ], [ %fixup_alt_jump.01118, %1616 ], [ %fixup_alt_jump.01118, %1575 ], [ %fixup_alt_jump.01118, %1572 ], [ %fixup_alt_jump.01118, %1210 ], [ %fixup_alt_jump.23, %1140 ], [ %fixup_alt_jump.01118, %979 ], [ %fixup_alt_jump.01118, %978 ], [ %fixup_alt_jump.01118, %977 ], [ %fixup_alt_jump.01118, %976 ], [ %fixup_alt_jump.01118, %975 ], [ %fixup_alt_jump.01118, %197 ], [ %fixup_alt_jump.01118, %at_endline_loc_p.exit ], [ %fixup_alt_jump.01118, %at_begline_loc_p.exit ], [ %fixup_alt_jump.01118, %1961 ], [ %fixup_alt_jump.01118, %1962 ], [ %fixup_alt_jump.01118, %96 ], [ %fixup_alt_jump.01118, %154 ], [ %fixup_alt_jump.01118, %1915 ]
  %begalt.28 = phi i8* [ %begalt.01123, %85 ], [ %begalt.01123, %204 ], [ %begalt.01123, %1903 ], [ %begalt.01123, %1862 ], [ %begalt.01123, %1821 ], [ %begalt.01123, %1780 ], [ %begalt.01123, %1739 ], [ %begalt.01123, %1698 ], [ %begalt.01123, %1657 ], [ %begalt.01123, %1616 ], [ %begalt.01123, %1575 ], [ %begalt.01123, %1572 ], [ %begalt.01123, %1210 ], [ %begalt.12, %1140 ], [ %begalt.01123, %979 ], [ %begalt.01123, %978 ], [ %begalt.01123, %977 ], [ %begalt.01123, %976 ], [ %begalt.01123, %975 ], [ %begalt.01123, %197 ], [ %begalt.01123, %at_endline_loc_p.exit ], [ %begalt.01123, %at_begline_loc_p.exit ], [ %begalt.01123, %1961 ], [ %begalt.01123, %1962 ], [ %begalt.01123, %96 ], [ %begalt.01123, %154 ], [ %begalt.01123, %1915 ]
  %laststart.54 = phi i8* [ %laststart.01128, %85 ], [ null, %204 ], [ %laststart.01128, %1903 ], [ %laststart.01128, %1862 ], [ %laststart.01128, %1821 ], [ %laststart.01128, %1780 ], [ %laststart.01128, %1739 ], [ %laststart.01128, %1698 ], [ %laststart.01128, %1657 ], [ %laststart.01128, %1616 ], [ %laststart.01128, %1575 ], [ %laststart.01128, %1572 ], [ %laststart.01128, %1210 ], [ %laststart.23, %1140 ], [ %laststart.01128, %979 ], [ %laststart.01128, %978 ], [ %laststart.01128, %977 ], [ %laststart.01128, %976 ], [ %laststart.01128, %975 ], [ %laststart.01128, %197 ], [ %laststart.01128, %at_endline_loc_p.exit ], [ %laststart.01128, %at_begline_loc_p.exit ], [ %laststart.01128, %1961 ], [ %laststart.01128, %1962 ], [ %laststart.01128, %96 ], [ %laststart.01128, %154 ], [ %laststart.01128, %1915 ]
  %pending_exact.27 = phi i8* [ %pending_exact.01132, %85 ], [ %pending_exact.01132, %204 ], [ %pending_exact.01132, %1903 ], [ %pending_exact.01132, %1862 ], [ %pending_exact.01132, %1821 ], [ %pending_exact.01132, %1780 ], [ %pending_exact.01132, %1739 ], [ %pending_exact.01132, %1698 ], [ %pending_exact.01132, %1657 ], [ %pending_exact.01132, %1616 ], [ %pending_exact.01132, %1575 ], [ %pending_exact.01132, %1572 ], [ %pending_exact.01132, %1210 ], [ %pending_exact.12, %1140 ], [ %pending_exact.01132, %979 ], [ %pending_exact.01132, %978 ], [ %pending_exact.01132, %977 ], [ %pending_exact.01132, %976 ], [ %pending_exact.01132, %975 ], [ %pending_exact.01132, %197 ], [ %pending_exact.01132, %at_endline_loc_p.exit ], [ %pending_exact.01132, %at_begline_loc_p.exit ], [ %pending_exact.01132, %1961 ], [ %pending_exact.01132, %1962 ], [ %pending_exact.01132, %96 ], [ %pending_exact.01132, %154 ], [ %pending_exact.01132, %1915 ]
  %b.29 = phi i8* [ %b.01147, %85 ], [ %b.01147, %204 ], [ %b.01147, %1903 ], [ %b.01147, %1862 ], [ %b.01147, %1821 ], [ %b.01147, %1780 ], [ %b.01147, %1739 ], [ %b.01147, %1698 ], [ %b.01147, %1657 ], [ %b.01147, %1616 ], [ %b.01147, %1575 ], [ %b.01147, %1572 ], [ %b.01147, %1210 ], [ %b.13, %1140 ], [ %b.01147, %979 ], [ %b.01147, %978 ], [ %b.01147, %977 ], [ %b.01147, %976 ], [ %b.01147, %975 ], [ %b.01147, %197 ], [ %b.01147, %at_endline_loc_p.exit ], [ %b.01147, %at_begline_loc_p.exit ], [ %b.01147, %1961 ], [ %b.01147, %1962 ], [ %b.01147, %96 ], [ %b.01147, %154 ], [ %b.01147, %1915 ]
  %c.17 = phi i8 [ %c.0, %85 ], [ %c.1, %204 ], [ %986, %1903 ], [ %986, %1862 ], [ %986, %1821 ], [ %986, %1780 ], [ %986, %1739 ], [ %986, %1698 ], [ %986, %1657 ], [ %986, %1616 ], [ %986, %1575 ], [ %c.15, %1572 ], [ %c.7, %1210 ], [ %c.6, %1140 ], [ %c.0, %979 ], [ %c.0, %978 ], [ %c.0, %977 ], [ %c.0, %976 ], [ %c.0, %975 ], [ %c.0, %197 ], [ %c.0, %at_endline_loc_p.exit ], [ %c.0, %at_begline_loc_p.exit ], [ %c.16, %1961 ], [ %1965, %1962 ], [ %c.0, %96 ], [ %c.0, %154 ], [ %986, %1915 ]
  %1966 = icmp eq i8* %pending_exact.27, null
  br i1 %1966, label %.preheader250, label %1967

; <label>:1967                                    ; preds = %group_in_compile_stack.exit.thread216
  %1968 = load i8* %pending_exact.27, align 1, !tbaa !12
  %1969 = zext i8 %1968 to i64
  %.sum = add nuw nsw i64 %1969, 1
  %1970 = getelementptr inbounds i8* %pending_exact.27, i64 %.sum
  %1971 = icmp ne i8* %1970, %b.29
  %1972 = icmp eq i8 %1968, -1
  %or.cond140 = or i1 %1972, %1971
  br i1 %or.cond140, label %.preheader250, label %1973

; <label>:1973                                    ; preds = %1967
  %1974 = load i8** %p, align 8, !tbaa !13
  %1975 = load i8* %1974, align 1, !tbaa !12
  switch i8 %1975, label %1976 [
    i8 42, label %.preheader250
    i8 94, label %.preheader250
  ]

; <label>:1976                                    ; preds = %1973
  br i1 %33, label %1982, label %1977

; <label>:1977                                    ; preds = %1976
  %1978 = icmp eq i8 %1975, 92
  br i1 %1978, label %1979, label %1983

; <label>:1979                                    ; preds = %1977
  %1980 = getelementptr inbounds i8* %1974, i64 1
  %1981 = load i8* %1980, align 1, !tbaa !12
  switch i8 %1981, label %1983 [
    i8 43, label %.preheader250
    i8 63, label %.preheader250
  ]

; <label>:1982                                    ; preds = %1976
  switch i8 %1975, label %1983 [
    i8 43, label %.preheader250
    i8 63, label %.preheader250
  ]

; <label>:1983                                    ; preds = %1982, %1979, %1977
  br i1 %35, label %.preheader241, label %1984

; <label>:1984                                    ; preds = %1983
  br i1 %37, label %1987, label %1985

; <label>:1985                                    ; preds = %1984
  %1986 = icmp eq i8 %1975, 123
  br i1 %1986, label %.preheader250, label %.preheader241

; <label>:1987                                    ; preds = %1984
  %1988 = icmp eq i8 %1975, 92
  br i1 %1988, label %1989, label %.preheader241

; <label>:1989                                    ; preds = %1987
  %1990 = getelementptr inbounds i8* %1974, i64 1
  %1991 = load i8* %1990, align 1, !tbaa !12
  %1992 = icmp eq i8 %1991, 123
  br i1 %1992, label %.preheader250, label %.preheader241

.preheader250:                                    ; preds = %1982, %1982, %1979, %1979, %1973, %1973, %1967, %group_in_compile_stack.exit.thread216, %1989, %1985
  %pending_exact.28.ph = phi i8* [ %pending_exact.27, %1985 ], [ %pending_exact.27, %1989 ], [ null, %group_in_compile_stack.exit.thread216 ], [ %pending_exact.27, %1967 ], [ %pending_exact.27, %1973 ], [ %pending_exact.27, %1973 ], [ %pending_exact.27, %1979 ], [ %pending_exact.27, %1979 ], [ %pending_exact.27, %1982 ], [ %pending_exact.27, %1982 ]
  %.pre1604.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer253

.outer253:                                        ; preds = %2025, %2027, %.preheader250
  %.pre1604 = phi i8* [ %.pre1604.pre, %.preheader250 ], [ %2005, %2027 ], [ %2005, %2025 ]
  %fixup_alt_jump.54.ph = phi i8* [ %fixup_alt_jump.53, %.preheader250 ], [ %fixup_alt_jump.55, %2027 ], [ %fixup_alt_jump.55, %2025 ]
  %begalt.29.ph = phi i8* [ %begalt.28, %.preheader250 ], [ %2013, %2027 ], [ %2013, %2025 ]
  %laststart.55.ph = phi i8* [ %b.29, %.preheader250 ], [ %laststart.56, %2027 ], [ %laststart.56, %2025 ]
  %pending_exact.28.ph254 = phi i8* [ %pending_exact.28.ph, %.preheader250 ], [ %2030, %2027 ], [ null, %2025 ]
  %b.30.ph = phi i8* [ %b.29, %.preheader250 ], [ %2010, %2027 ], [ %2010, %2025 ]
  %1993 = ptrtoint i8* %b.30.ph to i64
  br label %1994

; <label>:1994                                    ; preds = %.outer253, %2007
  %1995 = ptrtoint i8* %.pre1604 to i64
  %1996 = sub i64 %1993, %1995
  %1997 = add nsw i64 %1996, 2
  %1998 = load i64* %14, align 8, !tbaa !22
  %1999 = icmp ugt i64 %1997, %1998
  br i1 %1999, label %2000, label %2031

; <label>:2000                                    ; preds = %1994
  %2001 = icmp eq i64 %1998, 65536
  br i1 %2001, label %.loopexit, label %2002

; <label>:2002                                    ; preds = %2000
  %2003 = shl i64 %1998, 1
  %2004 = icmp ugt i64 %2003, 65536
  %.141 = select i1 %2004, i64 65536, i64 %2003
  store i64 %.141, i64* %14, align 8, !tbaa !22
  %2005 = tail call i8* @realloc(i8* %.pre1604, i64 %.141) #7
  store i8* %2005, i8** %17, align 8, !tbaa !10
  %2006 = icmp eq i8* %2005, null
  br i1 %2006, label %.loopexit, label %2007

; <label>:2007                                    ; preds = %2002
  %2008 = icmp eq i8* %.pre1604, %2005
  br i1 %2008, label %1994, label %2009

; <label>:2009                                    ; preds = %2007
  %2010 = getelementptr inbounds i8* %2005, i64 %1996
  %2011 = ptrtoint i8* %begalt.29.ph to i64
  %2012 = sub i64 %2011, %1995
  %2013 = getelementptr inbounds i8* %2005, i64 %2012
  %2014 = icmp eq i8* %fixup_alt_jump.54.ph, null
  br i1 %2014, label %2019, label %2015

; <label>:2015                                    ; preds = %2009
  %2016 = ptrtoint i8* %fixup_alt_jump.54.ph to i64
  %2017 = sub i64 %2016, %1995
  %2018 = getelementptr inbounds i8* %2005, i64 %2017
  br label %2019

; <label>:2019                                    ; preds = %2009, %2015
  %fixup_alt_jump.55 = phi i8* [ %2018, %2015 ], [ null, %2009 ]
  %2020 = icmp eq i8* %laststart.55.ph, null
  br i1 %2020, label %2025, label %2021

; <label>:2021                                    ; preds = %2019
  %2022 = ptrtoint i8* %laststart.55.ph to i64
  %2023 = sub i64 %2022, %1995
  %2024 = getelementptr inbounds i8* %2005, i64 %2023
  br label %2025

; <label>:2025                                    ; preds = %2019, %2021
  %laststart.56 = phi i8* [ %2024, %2021 ], [ null, %2019 ]
  %2026 = icmp eq i8* %pending_exact.28.ph254, null
  br i1 %2026, label %.outer253, label %2027

; <label>:2027                                    ; preds = %2025
  %2028 = ptrtoint i8* %pending_exact.28.ph254 to i64
  %2029 = sub i64 %2028, %1995
  %2030 = getelementptr inbounds i8* %2005, i64 %2029
  br label %.outer253

; <label>:2031                                    ; preds = %1994
  %2032 = getelementptr inbounds i8* %b.30.ph, i64 1
  store i8 2, i8* %b.30.ph, align 1, !tbaa !12
  %2033 = getelementptr inbounds i8* %b.30.ph, i64 2
  store i8 0, i8* %2032, align 1, !tbaa !12
  br label %.preheader241

.preheader241:                                    ; preds = %1985, %1987, %1989, %2031, %1983
  %fixup_alt_jump.56.ph = phi i8* [ %fixup_alt_jump.53, %1983 ], [ %fixup_alt_jump.53, %1987 ], [ %fixup_alt_jump.53, %1989 ], [ %fixup_alt_jump.53, %1985 ], [ %fixup_alt_jump.54.ph, %2031 ]
  %begalt.30.ph = phi i8* [ %begalt.28, %1983 ], [ %begalt.28, %1987 ], [ %begalt.28, %1989 ], [ %begalt.28, %1985 ], [ %begalt.29.ph, %2031 ]
  %laststart.57.ph = phi i8* [ %laststart.54, %1983 ], [ %laststart.54, %1987 ], [ %laststart.54, %1989 ], [ %laststart.54, %1985 ], [ %laststart.55.ph, %2031 ]
  %pending_exact.29.ph = phi i8* [ %pending_exact.27, %1983 ], [ %pending_exact.27, %1987 ], [ %pending_exact.27, %1989 ], [ %pending_exact.27, %1985 ], [ %2032, %2031 ]
  %b.31.ph = phi i8* [ %b.29, %1983 ], [ %b.29, %1987 ], [ %b.29, %1989 ], [ %b.29, %1985 ], [ %2033, %2031 ]
  %.pre1605.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer244

.outer244:                                        ; preds = %2066, %2068, %.preheader241
  %.pre1605 = phi i8* [ %.pre1605.pre, %.preheader241 ], [ %2046, %2068 ], [ %2046, %2066 ]
  %fixup_alt_jump.56.ph245 = phi i8* [ %fixup_alt_jump.56.ph, %.preheader241 ], [ %fixup_alt_jump.57, %2068 ], [ %fixup_alt_jump.57, %2066 ]
  %begalt.30.ph246 = phi i8* [ %begalt.30.ph, %.preheader241 ], [ %2054, %2068 ], [ %2054, %2066 ]
  %laststart.57.ph247 = phi i8* [ %laststart.57.ph, %.preheader241 ], [ %laststart.58, %2068 ], [ %laststart.58, %2066 ]
  %pending_exact.29.ph248 = phi i8* [ %pending_exact.29.ph, %.preheader241 ], [ %2071, %2068 ], [ null, %2066 ]
  %b.31.ph249 = phi i8* [ %b.31.ph, %.preheader241 ], [ %2051, %2068 ], [ %2051, %2066 ]
  %2034 = ptrtoint i8* %b.31.ph249 to i64
  br label %2035

; <label>:2035                                    ; preds = %.outer244, %2048
  %2036 = ptrtoint i8* %.pre1605 to i64
  %2037 = sub i64 %2034, %2036
  %2038 = add nsw i64 %2037, 1
  %2039 = load i64* %14, align 8, !tbaa !22
  %2040 = icmp ugt i64 %2038, %2039
  br i1 %2040, label %2041, label %2072

; <label>:2041                                    ; preds = %2035
  %2042 = icmp eq i64 %2039, 65536
  br i1 %2042, label %.loopexit, label %2043

; <label>:2043                                    ; preds = %2041
  %2044 = shl i64 %2039, 1
  %2045 = icmp ugt i64 %2044, 65536
  %.142 = select i1 %2045, i64 65536, i64 %2044
  store i64 %.142, i64* %14, align 8, !tbaa !22
  %2046 = tail call i8* @realloc(i8* %.pre1605, i64 %.142) #7
  store i8* %2046, i8** %17, align 8, !tbaa !10
  %2047 = icmp eq i8* %2046, null
  br i1 %2047, label %.loopexit, label %2048

; <label>:2048                                    ; preds = %2043
  %2049 = icmp eq i8* %.pre1605, %2046
  br i1 %2049, label %2035, label %2050

; <label>:2050                                    ; preds = %2048
  %2051 = getelementptr inbounds i8* %2046, i64 %2037
  %2052 = ptrtoint i8* %begalt.30.ph246 to i64
  %2053 = sub i64 %2052, %2036
  %2054 = getelementptr inbounds i8* %2046, i64 %2053
  %2055 = icmp eq i8* %fixup_alt_jump.56.ph245, null
  br i1 %2055, label %2060, label %2056

; <label>:2056                                    ; preds = %2050
  %2057 = ptrtoint i8* %fixup_alt_jump.56.ph245 to i64
  %2058 = sub i64 %2057, %2036
  %2059 = getelementptr inbounds i8* %2046, i64 %2058
  br label %2060

; <label>:2060                                    ; preds = %2050, %2056
  %fixup_alt_jump.57 = phi i8* [ %2059, %2056 ], [ null, %2050 ]
  %2061 = icmp eq i8* %laststart.57.ph247, null
  br i1 %2061, label %2066, label %2062

; <label>:2062                                    ; preds = %2060
  %2063 = ptrtoint i8* %laststart.57.ph247 to i64
  %2064 = sub i64 %2063, %2036
  %2065 = getelementptr inbounds i8* %2046, i64 %2064
  br label %2066

; <label>:2066                                    ; preds = %2060, %2062
  %laststart.58 = phi i8* [ %2065, %2062 ], [ null, %2060 ]
  %2067 = icmp eq i8* %pending_exact.29.ph248, null
  br i1 %2067, label %.outer244, label %2068

; <label>:2068                                    ; preds = %2066
  %2069 = ptrtoint i8* %pending_exact.29.ph248 to i64
  %2070 = sub i64 %2069, %2036
  %2071 = getelementptr inbounds i8* %2046, i64 %2070
  br label %.outer244

; <label>:2072                                    ; preds = %2035
  %2073 = getelementptr inbounds i8* %b.31.ph249, i64 1
  store i8 %c.17, i8* %b.31.ph249, align 1, !tbaa !12
  %2074 = load i8* %pending_exact.29.ph248, align 1, !tbaa !12
  %2075 = add i8 %2074, 1
  store i8 %2075, i8* %pending_exact.29.ph248, align 1, !tbaa !12
  br label %.backedge367

._crit_edge1154:                                  ; preds = %.backedge367
  %2076 = icmp eq i8* %fixup_alt_jump.0.be, null
  br i1 %2076, label %2088, label %2077

; <label>:2077                                    ; preds = %._crit_edge1154
  %2078 = ptrtoint i8* %b.0.be to i64
  %2079 = ptrtoint i8* %fixup_alt_jump.0.be to i64
  %2080 = sub i64 %2078, %2079
  %2081 = add i64 %2080, 4294967293
  %2082 = trunc i64 %2081 to i32
  store i8 14, i8* %fixup_alt_jump.0.be, align 1, !tbaa !12
  %2083 = trunc i64 %2081 to i8
  %2084 = getelementptr inbounds i8* %fixup_alt_jump.0.be, i64 1
  store i8 %2083, i8* %2084, align 1, !tbaa !12
  %2085 = lshr i32 %2082, 8
  %2086 = trunc i32 %2085 to i8
  %2087 = getelementptr inbounds i8* %fixup_alt_jump.0.be, i64 2
  store i8 %2086, i8* %2087, align 1, !tbaa !12
  br label %2088

; <label>:2088                                    ; preds = %._crit_edge1154, %2077
  %fixup_alt_jump.0.lcssa1655 = phi i8* [ null, %._crit_edge1154 ], [ %fixup_alt_jump.0.be, %2077 ]
  %2089 = icmp ult i64 %compile_stack.sroa.40.0.be, 4294967296
  br i1 %2089, label %.thread1656, label %2090

; <label>:2090                                    ; preds = %2088
  %2091 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.0.be to i8*
  tail call void @free(i8* %2091) #8
  br label %.loopexit

.thread1656:                                      ; preds = %init_syntax_once.exit._crit_edge, %2088
  %b.0.lcssa16501661 = phi i8* [ %b.0.be, %2088 ], [ %29, %init_syntax_once.exit._crit_edge ]
  %compile_stack.sroa.0.0.lcssa16521660 = phi %struct.compile_stack_elt_t* [ %compile_stack.sroa.0.0.be, %2088 ], [ %5, %init_syntax_once.exit._crit_edge ]
  %pending_exact.0.lcssa16531659 = phi i8* [ %pending_exact.0.be, %2088 ], [ null, %init_syntax_once.exit._crit_edge ]
  %laststart.0.lcssa16541658 = phi i8* [ %laststart.0.be, %2088 ], [ null, %init_syntax_once.exit._crit_edge ]
  %fixup_alt_jump.0.lcssa16551657 = phi i8* [ %fixup_alt_jump.0.lcssa1655, %2088 ], [ null, %init_syntax_once.exit._crit_edge ]
  %2092 = and i64 %syntax, 262144
  %2093 = icmp eq i64 %2092, 0
  br i1 %2093, label %2131, label %.preheader

.preheader:                                       ; preds = %.thread1656
  %.pre1606.pre = load i8** %17, align 8, !tbaa !10
  br label %.outer

.outer:                                           ; preds = %2123, %2125, %.preheader
  %.pre1606 = phi i8* [ %.pre1606.pre, %.preheader ], [ %2106, %2125 ], [ %2106, %2123 ]
  %fixup_alt_jump.58.ph = phi i8* [ %fixup_alt_jump.0.lcssa16551657, %.preheader ], [ %fixup_alt_jump.59, %2125 ], [ %fixup_alt_jump.59, %2123 ]
  %laststart.59.ph = phi i8* [ %laststart.0.lcssa16541658, %.preheader ], [ %laststart.60, %2125 ], [ %laststart.60, %2123 ]
  %pending_exact.30.ph = phi i8* [ %pending_exact.0.lcssa16531659, %.preheader ], [ %2128, %2125 ], [ null, %2123 ]
  %b.32.ph = phi i8* [ %b.0.lcssa16501661, %.preheader ], [ %2111, %2125 ], [ %2111, %2123 ]
  %2094 = ptrtoint i8* %b.32.ph to i64
  br label %2095

; <label>:2095                                    ; preds = %.outer, %2108
  %2096 = ptrtoint i8* %.pre1606 to i64
  %2097 = sub i64 %2094, %2096
  %2098 = add nsw i64 %2097, 1
  %2099 = load i64* %14, align 8, !tbaa !22
  %2100 = icmp ugt i64 %2098, %2099
  br i1 %2100, label %2101, label %2129

; <label>:2101                                    ; preds = %2095
  %2102 = icmp eq i64 %2099, 65536
  br i1 %2102, label %.loopexit, label %2103

; <label>:2103                                    ; preds = %2101
  %2104 = shl i64 %2099, 1
  %2105 = icmp ugt i64 %2104, 65536
  %.143 = select i1 %2105, i64 65536, i64 %2104
  store i64 %.143, i64* %14, align 8, !tbaa !22
  %2106 = tail call i8* @realloc(i8* %.pre1606, i64 %.143) #7
  store i8* %2106, i8** %17, align 8, !tbaa !10
  %2107 = icmp eq i8* %2106, null
  br i1 %2107, label %.loopexit, label %2108

; <label>:2108                                    ; preds = %2103
  %2109 = icmp eq i8* %.pre1606, %2106
  br i1 %2109, label %2095, label %2110

; <label>:2110                                    ; preds = %2108
  %2111 = getelementptr inbounds i8* %2106, i64 %2097
  %2112 = icmp eq i8* %fixup_alt_jump.58.ph, null
  br i1 %2112, label %2117, label %2113

; <label>:2113                                    ; preds = %2110
  %2114 = ptrtoint i8* %fixup_alt_jump.58.ph to i64
  %2115 = sub i64 %2114, %2096
  %2116 = getelementptr inbounds i8* %2106, i64 %2115
  br label %2117

; <label>:2117                                    ; preds = %2110, %2113
  %fixup_alt_jump.59 = phi i8* [ %2116, %2113 ], [ null, %2110 ]
  %2118 = icmp eq i8* %laststart.59.ph, null
  br i1 %2118, label %2123, label %2119

; <label>:2119                                    ; preds = %2117
  %2120 = ptrtoint i8* %laststart.59.ph to i64
  %2121 = sub i64 %2120, %2096
  %2122 = getelementptr inbounds i8* %2106, i64 %2121
  br label %2123

; <label>:2123                                    ; preds = %2117, %2119
  %laststart.60 = phi i8* [ %2122, %2119 ], [ null, %2117 ]
  %2124 = icmp eq i8* %pending_exact.30.ph, null
  br i1 %2124, label %.outer, label %2125

; <label>:2125                                    ; preds = %2123
  %2126 = ptrtoint i8* %pending_exact.30.ph to i64
  %2127 = sub i64 %2126, %2096
  %2128 = getelementptr inbounds i8* %2106, i64 %2127
  br label %.outer

; <label>:2129                                    ; preds = %2095
  %2130 = getelementptr inbounds i8* %b.32.ph, i64 1
  store i8 1, i8* %b.32.ph, align 1, !tbaa !12
  br label %2131

; <label>:2131                                    ; preds = %.thread1656, %2129
  %b.33 = phi i8* [ %2130, %2129 ], [ %b.0.lcssa16501661, %.thread1656 ]
  %2132 = bitcast %struct.compile_stack_elt_t* %compile_stack.sroa.0.0.lcssa16521660 to i8*
  tail call void @free(i8* %2132) #8
  %2133 = load i8** %17, align 8, !tbaa !10
  %2134 = ptrtoint i8* %b.33 to i64
  %2135 = ptrtoint i8* %2133 to i64
  %2136 = sub i64 %2134, %2135
  store i64 %2136, i64* %12, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %1564, %1388, %997, %779, %713, %1927, %1925, %1872, %1870, %1831, %1829, %1790, %1788, %1749, %1747, %1708, %1706, %1667, %1665, %1626, %1624, %1585, %1583, %1477, %1475, %1419, %1417, %1220, %1218, %1287, %1285, %1097, %1095, %1181, %1179, %1042, %1040, %493, %491, %531, %529, %583, %581, %703, %.outer240, %449, %447, %266, %264, %352, %350, %410, %408, %166, %164, %109, %107, %2002, %2000, %2043, %2041, %742, %2103, %2101, %0, %2131, %2090, %1908, %1405, %1400, %1386, %1381, %1320, %1141, %1084, %982, %783, %777, %718, %708, %696, %672, %642, %.outer287._crit_edge, %483, %240, %202, %27
  %.0 = phi i32 [ 5, %982 ], [ 5, %240 ], [ 13, %202 ], [ 6, %1908 ], [ 9, %1320 ], [ 10, %1381 ], [ 10, %1400 ], [ 13, %1405 ], [ 9, %1386 ], [ 16, %1084 ], [ 16, %1141 ], [ 7, %483 ], [ 7, %.outer287._crit_edge ], [ 5, %642 ], [ 11, %672 ], [ %706, %708 ], [ 7, %718 ], [ 7, %783 ], [ 4, %777 ], [ %694, %696 ], [ 0, %2131 ], [ 8, %2090 ], [ 12, %27 ], [ 12, %0 ], [ 15, %2101 ], [ 12, %2103 ], [ 14, %742 ], [ 15, %2041 ], [ 12, %2043 ], [ 15, %2000 ], [ 12, %2002 ], [ 15, %107 ], [ 12, %109 ], [ 15, %164 ], [ 12, %166 ], [ 15, %408 ], [ 12, %410 ], [ 15, %350 ], [ 12, %352 ], [ 15, %264 ], [ 12, %266 ], [ 15, %447 ], [ 12, %449 ], [ 14, %.outer240 ], [ 14, %703 ], [ 15, %581 ], [ 12, %583 ], [ 15, %529 ], [ 12, %531 ], [ 15, %491 ], [ 12, %493 ], [ 15, %1040 ], [ 12, %1042 ], [ 15, %1179 ], [ 12, %1181 ], [ 15, %1095 ], [ 12, %1097 ], [ 15, %1285 ], [ 12, %1287 ], [ 15, %1218 ], [ 12, %1220 ], [ 15, %1417 ], [ 12, %1419 ], [ 15, %1475 ], [ 12, %1477 ], [ 15, %1583 ], [ 12, %1585 ], [ 15, %1624 ], [ 12, %1626 ], [ 15, %1665 ], [ 12, %1667 ], [ 15, %1706 ], [ 12, %1708 ], [ 15, %1747 ], [ 12, %1749 ], [ 15, %1788 ], [ 12, %1790 ], [ 15, %1829 ], [ 12, %1831 ], [ 15, %1870 ], [ 12, %1872 ], [ 15, %1925 ], [ 12, %1927 ], [ 14, %713 ], [ 14, %779 ], [ 12, %997 ], [ 14, %1388 ], [ 14, %1564 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @regcomp(%struct.re_pattern_buffer* %preg, i8* %pattern, i32 %cflags) #0 {
  %1 = and i32 %cflags, 1
  %2 = icmp ne i32 %1, 0
  %3 = select i1 %2, i64 242396, i64 66246
  %4 = bitcast %struct.re_pattern_buffer* %preg to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false)
  %5 = tail call i8* @malloc(i64 256) #7
  %6 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 4
  store i8* %5, i8** %6, align 8, !tbaa !6
  %7 = and i32 %cflags, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

; <label>:9                                       ; preds = %0
  %10 = tail call i8* @malloc(i64 256) #7
  %11 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 5
  store i8* %10, i8** %11, align 8, !tbaa !16
  %12 = icmp eq i8* %10, null
  br i1 %12, label %61, label %.preheader

.preheader:                                       ; preds = %9, %22
  %indvars.iv = phi i64 [ %indvars.iv.next, %22 ], [ 0, %9 ]
  %13 = trunc i64 %indvars.iv to i32
  %isascii.i.i = icmp ult i32 %13, 128
  br i1 %isascii.i.i, label %14, label %18

; <label>:14                                      ; preds = %.preheader
  %15 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %indvars.iv
  %16 = load i32* %15, align 4, !tbaa !15
  %17 = and i32 %16, 32768
  br label %isupper.exit

; <label>:18                                      ; preds = %.preheader
  %19 = tail call i32 @__maskrune(i32 %13, i64 32768) #7
  br label %isupper.exit

isupper.exit:                                     ; preds = %14, %18
  %.sink.i.in.i = phi i32 [ %17, %14 ], [ %19, %18 ]
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0
  br i1 %.sink.i.i, label %22, label %20

; <label>:20                                      ; preds = %isupper.exit
  %21 = tail call i32 @__tolower(i32 %13) #7
  br label %22

; <label>:22                                      ; preds = %isupper.exit, %20
  %23 = phi i32 [ %21, %20 ], [ %13, %isupper.exit ]
  %24 = trunc i32 %23 to i8
  %25 = and i64 %indvars.iv, 4294967295
  %26 = load i8** %11, align 8, !tbaa !16
  %27 = getelementptr inbounds i8* %26, i64 %25
  store i8 %24, i8* %27, align 1, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond, label %.loopexit, label %.preheader

; <label>:28                                      ; preds = %0
  %29 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 5
  store i8* null, i8** %29, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %22, %28
  %30 = and i32 %cflags, 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

; <label>:32                                      ; preds = %.loopexit
  %33 = and i64 %3, 242334
  %34 = or i64 %33, 256
  %35 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7
  %36 = load i8* %35, align 8
  %37 = or i8 %36, -128
  store i8 %37, i8* %35, align 8
  br label %42

; <label>:38                                      ; preds = %.loopexit
  %39 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7
  %40 = load i8* %39, align 8
  %41 = and i8 %40, 127
  store i8 %41, i8* %39, align 8
  br label %42

; <label>:42                                      ; preds = %38, %32
  %.pre-phi = phi i8* [ %39, %38 ], [ %35, %32 ]
  %43 = phi i8 [ %41, %38 ], [ %37, %32 ]
  %syntax.0 = phi i64 [ %3, %38 ], [ %34, %32 ]
  %44 = shl i32 %cflags, 1
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 16
  %47 = and i8 %43, -17
  %48 = or i8 %47, %46
  store i8 %48, i8* %.pre-phi, align 8
  %49 = tail call i64 @strlen(i8* %pattern) #7
  %50 = tail call fastcc i32 @regex_compile(i8* %pattern, i64 %49, i64 %syntax.0, %struct.re_pattern_buffer* %preg) #8
  %51 = icmp eq i32 %50, 16
  %. = select i1 %51, i32 8, i32 %50
  %52 = icmp eq i32 %., 0
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %42
  %54 = load i8** %6, align 8, !tbaa !6
  %55 = icmp eq i8* %54, null
  br i1 %55, label %61, label %56

; <label>:56                                      ; preds = %53
  %57 = tail call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %preg) #8
  %58 = icmp eq i32 %57, -2
  br i1 %58, label %59, label %61

; <label>:59                                      ; preds = %56
  %60 = load i8** %6, align 8, !tbaa !6
  tail call void @free(i8* %60) #8
  store i8* null, i8** %6, align 8, !tbaa !6
  br label %61

; <label>:61                                      ; preds = %42, %59, %56, %53, %9
  %.0 = phi i32 [ 12, %9 ], [ 0, %53 ], [ 0, %56 ], [ 0, %59 ], [ %., %42 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__tolower(i32) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @regexec(%struct.re_pattern_buffer* nocapture readonly %preg, i8* %string, i64 %nmatch, %struct.regmatch_t* nocapture %pmatch, i32 %eflags) #0 {
  %regs = alloca %struct.re_registers, align 8
  %private_preg = alloca %struct.re_pattern_buffer, align 8
  %1 = bitcast %struct.re_pattern_buffer* %private_preg to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #6
  %2 = tail call i64 @strlen(i8* %string) #7
  %3 = trunc i64 %2 to i32
  %4 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7
  %5 = load i8* %4, align 8
  %6 = and i8 %5, 16
  %7 = icmp eq i8 %6, 0
  %8 = icmp ne i64 %nmatch, 0
  %. = and i1 %8, %7
  %9 = bitcast %struct.re_pattern_buffer* %preg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %9, i64 64, i32 8, i1 false), !tbaa.struct !29
  %10 = getelementptr inbounds %struct.re_pattern_buffer* %private_preg, i64 0, i32 7
  %eflags.tr = trunc i32 %eflags to i8
  %11 = load i8* %10, align 8
  %12 = shl i8 %eflags.tr, 5
  %13 = and i8 %12, 32
  %14 = and i8 %11, -103
  %15 = shl i32 %eflags, 5
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 64
  %18 = or i8 %13, %17
  %19 = or i8 %18, %14
  %20 = or i8 %19, 4
  store i8 %20, i8* %10, align 8
  br i1 %., label %22, label %.thread3

.thread3:                                         ; preds = %0
  %21 = call i32 @re_search_2(%struct.re_pattern_buffer* %private_preg, i8* null, i32 0, i8* %string, i32 %3, i32 0, i32 %3, %struct.re_registers* null, i32 %3) #7
  br label %50

; <label>:22                                      ; preds = %0
  %23 = trunc i64 %nmatch to i32
  %24 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 0
  store i32 %23, i32* %24, align 8, !tbaa !18
  %25 = shl i64 %nmatch, 3
  %26 = tail call i8* @malloc(i64 %25) #7
  %27 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 1
  %28 = bitcast i32** %27 to i8**
  store i8* %26, i8** %28, align 8, !tbaa !20
  %29 = icmp eq i8* %26, null
  br i1 %29, label %52, label %30

; <label>:30                                      ; preds = %22
  %31 = bitcast i8* %26 to i32*
  %32 = getelementptr inbounds i32* %31, i64 %nmatch
  %33 = getelementptr inbounds %struct.re_registers* %regs, i64 0, i32 2
  store i32* %32, i32** %33, align 8, !tbaa !21
  %34 = call i32 @re_search_2(%struct.re_pattern_buffer* %private_preg, i8* null, i32 0, i8* %string, i32 %3, i32 0, i32 %3, %struct.re_registers* %regs, i32 %3) #7
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %30
  %36 = load i32** %27, align 8, !tbaa !20
  %37 = load i32** %33, align 8, !tbaa !21
  br label %38

; <label>:38                                      ; preds = %.lr.ph, %38
  %39 = phi i64 [ 0, %.lr.ph ], [ %47, %38 ]
  %r.05 = phi i32 [ 0, %.lr.ph ], [ %46, %38 ]
  %40 = getelementptr inbounds i32* %36, i64 %39
  %41 = load i32* %40, align 4, !tbaa !15
  %42 = getelementptr inbounds %struct.regmatch_t* %pmatch, i64 %39, i32 0
  store i32 %41, i32* %42, align 4, !tbaa !30
  %43 = getelementptr inbounds i32* %37, i64 %39
  %44 = load i32* %43, align 4, !tbaa !15
  %45 = getelementptr inbounds %struct.regmatch_t* %pmatch, i64 %39, i32 1
  store i32 %44, i32* %45, align 4, !tbaa !32
  %46 = add i32 %r.05, 1
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %47, %nmatch
  br i1 %48, label %38, label %.loopexit

.loopexit:                                        ; preds = %38, %30
  %49 = load i8** %28, align 8, !tbaa !20
  call void @free(i8* %49) #8
  br label %50

; <label>:50                                      ; preds = %.thread3, %.loopexit
  %51 = phi i32 [ %34, %.loopexit ], [ %21, %.thread3 ]
  %.lobit = lshr i32 %51, 31
  br label %52

; <label>:52                                      ; preds = %22, %50
  %.0 = phi i32 [ %.lobit, %50 ], [ 1, %22 ]
  call void @llvm.lifetime.end(i64 64, i8* %1) #6
  ret i32 %.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @regfree(%struct.re_pattern_buffer* nocapture %preg) #0 {
  %1 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 0
  %2 = load i8** %1, align 8, !tbaa !10
  %3 = icmp eq i8* %2, null
  br i1 %3, label %5, label %4

; <label>:4                                       ; preds = %0
  tail call void @free(i8* %2) #8
  br label %5

; <label>:5                                       ; preds = %0, %4
  %6 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 4
  %7 = bitcast %struct.re_pattern_buffer* %preg to i8*
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 24, i32 8, i1 false)
  %8 = load i8** %6, align 8, !tbaa !6
  %9 = icmp eq i8* %8, null
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %5
  tail call void @free(i8* %8) #8
  br label %11

; <label>:11                                      ; preds = %5, %10
  store i8* null, i8** %6, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 7
  %13 = load i8* %12, align 8
  %14 = and i8 %13, -9
  store i8 %14, i8* %12, align 8
  %15 = getelementptr inbounds %struct.re_pattern_buffer* %preg, i64 0, i32 5
  %16 = load i8** %15, align 8, !tbaa !16
  %17 = icmp eq i8* %16, null
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %11
  tail call void @free(i8* %16) #8
  br label %19

; <label>:19                                      ; preds = %11, %18
  store i8* null, i8** %15, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc signext i8 @group_match_null_string_p(i8** nocapture %p, i8* %end, %union.register_info_type* nocapture %reg_info) #0 {
  %p1 = alloca i8*, align 8
  %1 = load i8** %p, align 8, !tbaa !13
  %2 = getelementptr inbounds i8* %1, i64 2
  store i8* %2, i8** %p1, align 8, !tbaa !13
  %3 = icmp ult i8* %2, %end
  br i1 %3, label %.lr.ph, label %.loopexit6

.lr.ph:                                           ; preds = %0, %.backedge
  %4 = phi i8* [ %18, %.backedge ], [ %2, %0 ]
  %5 = load i8* %4, align 1, !tbaa !12
  %6 = zext i8 %5 to i32
  switch i32 %6, label %67 [
    i32 15, label %7
    i32 7, label %65
  ]

; <label>:7                                       ; preds = %.lr.ph
  %8 = getelementptr inbounds i8* %4, i64 1
  store i8* %8, i8** %p1, align 8, !tbaa !13
  %9 = load i8* %8, align 1, !tbaa !12
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds i8* %4, i64 2
  %12 = load i8* %11, align 1, !tbaa !12
  %13 = sext i8 %12 to i32
  %14 = shl nsw i32 %13, 8
  %15 = or i32 %14, %10
  %16 = getelementptr inbounds i8* %4, i64 3
  store i8* %16, i8** %p1, align 8, !tbaa !13
  %17 = icmp sgt i32 %15, -1
  br i1 %17, label %.preheader, label %.backedge

.backedge:                                        ; preds = %..backedge_crit_edge, %7, %64
  %18 = phi i8* [ %.pre, %..backedge_crit_edge ], [ %16, %7 ], [ %61, %64 ]
  %19 = icmp ult i8* %18, %end
  br i1 %19, label %.lr.ph, label %.loopexit6

.preheader:                                       ; preds = %7, %35
  %20 = phi i8* [ %44, %35 ], [ %16, %7 ]
  %mcnt.0 = phi i32 [ %43, %35 ], [ %15, %7 ]
  %21 = add nsw i32 %mcnt.0, -3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8* %20, i64 %22
  %24 = load i8* %23, align 1, !tbaa !12
  %25 = icmp eq i8 %24, 14
  br i1 %25, label %26, label %.loopexit

; <label>:26                                      ; preds = %.preheader
  %27 = sext i32 %mcnt.0 to i64
  %.sum = add nsw i64 %27, -3
  %28 = getelementptr inbounds i8* %20, i64 %.sum
  %29 = tail call fastcc signext i8 @alt_match_null_string_p(i8* %20, i8* %28, %union.register_info_type* %reg_info) #8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %.loopexit6, label %31

; <label>:31                                      ; preds = %26
  %32 = getelementptr inbounds i8* %20, i64 %27
  store i8* %32, i8** %p1, align 8, !tbaa !13
  %33 = load i8* %32, align 1, !tbaa !12
  %34 = icmp eq i8 %33, 15
  br i1 %34, label %35, label %.loopexit

; <label>:35                                      ; preds = %31
  %.sum1 = add nsw i64 %27, 1
  %36 = getelementptr inbounds i8* %20, i64 %.sum1
  store i8* %36, i8** %p1, align 8, !tbaa !13
  %37 = load i8* %36, align 1, !tbaa !12
  %38 = zext i8 %37 to i32
  %.sum2 = add nsw i64 %27, 2
  %39 = getelementptr inbounds i8* %20, i64 %.sum2
  %40 = load i8* %39, align 1, !tbaa !12
  %41 = sext i8 %40 to i32
  %42 = shl nsw i32 %41, 8
  %43 = or i32 %42, %38
  %.sum3 = add nsw i64 %27, 3
  %44 = getelementptr inbounds i8* %20, i64 %.sum3
  store i8* %44, i8** %p1, align 8, !tbaa !13
  %45 = add nsw i32 %43, -3
  %46 = sext i32 %45 to i64
  %.sum4 = add nsw i64 %46, %.sum3
  %47 = getelementptr inbounds i8* %20, i64 %.sum4
  %48 = load i8* %47, align 1, !tbaa !12
  %49 = icmp eq i8 %48, 14
  br i1 %49, label %.preheader, label %50

; <label>:50                                      ; preds = %35
  store i8* %32, i8** %p1, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %31, %.preheader, %50
  %51 = phi i8* [ %32, %50 ], [ %32, %31 ], [ %20, %.preheader ]
  %52 = getelementptr inbounds i8* %51, i64 -2
  %53 = load i8* %52, align 1, !tbaa !12
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds i8* %51, i64 -1
  %56 = load i8* %55, align 1, !tbaa !12
  %57 = sext i8 %56 to i32
  %58 = shl nsw i32 %57, 8
  %59 = or i32 %58, %54
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8* %51, i64 %60
  %62 = tail call fastcc signext i8 @alt_match_null_string_p(i8* %51, i8* %61, %union.register_info_type* %reg_info) #8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %.loopexit6, label %64

; <label>:64                                      ; preds = %.loopexit
  store i8* %61, i8** %p1, align 8, !tbaa !13
  br label %.backedge

; <label>:65                                      ; preds = %.lr.ph
  %66 = getelementptr inbounds i8* %4, i64 2
  store i8* %66, i8** %p, align 8, !tbaa !13
  br label %.loopexit6

; <label>:67                                      ; preds = %.lr.ph
  %68 = call fastcc signext i8 @common_op_match_null_string_p(i8** %p1, i8* %end, %union.register_info_type* %reg_info) #8
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %.loopexit6, label %..backedge_crit_edge

..backedge_crit_edge:                             ; preds = %67
  %.pre = load i8** %p1, align 8, !tbaa !13
  br label %.backedge

.loopexit6:                                       ; preds = %.loopexit, %67, %.backedge, %26, %0, %65
  %.0 = phi i8 [ 1, %65 ], [ 0, %0 ], [ 0, %26 ], [ 0, %.backedge ], [ 0, %67 ], [ 0, %.loopexit ]
  ret i8 %.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc signext i8 @alt_match_null_string_p(i8* %p, i8* %end, %union.register_info_type* nocapture %reg_info) #0 {
  %p1 = alloca i8*, align 8
  store i8* %p, i8** %p1, align 8, !tbaa !13
  %1 = icmp ult i8* %p, %end
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0, %.backedge
  %2 = phi i8* [ %14, %.backedge ], [ %p, %0 ]
  %3 = load i8* %2, align 1, !tbaa !12
  %cond = icmp eq i8 %3, 15
  br i1 %cond, label %4, label %16

; <label>:4                                       ; preds = %.lr.ph
  %5 = getelementptr inbounds i8* %2, i64 1
  store i8* %5, i8** %p1, align 8, !tbaa !13
  %6 = load i8* %5, align 1, !tbaa !12
  %7 = zext i8 %6 to i32
  %8 = getelementptr inbounds i8* %2, i64 2
  %9 = load i8* %8, align 1, !tbaa !12
  %10 = sext i8 %9 to i32
  %11 = shl nsw i32 %10, 8
  %12 = or i32 %11, %7
  %addconv = add nsw i32 %12, 3
  %.sum = sext i32 %addconv to i64
  %13 = getelementptr inbounds i8* %2, i64 %.sum
  store i8* %13, i8** %p1, align 8, !tbaa !13
  br label %.backedge

.backedge:                                        ; preds = %..backedge_crit_edge, %4
  %14 = phi i8* [ %.pre, %..backedge_crit_edge ], [ %13, %4 ]
  %15 = icmp ult i8* %14, %end
  br i1 %15, label %.lr.ph, label %._crit_edge

; <label>:16                                      ; preds = %.lr.ph
  %17 = call fastcc signext i8 @common_op_match_null_string_p(i8** %p1, i8* %end, %union.register_info_type* %reg_info) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %._crit_edge, label %..backedge_crit_edge

..backedge_crit_edge:                             ; preds = %16
  %.pre = load i8** %p1, align 8, !tbaa !13
  br label %.backedge

._crit_edge:                                      ; preds = %16, %.backedge, %0
  %.0 = phi i8 [ 1, %0 ], [ 0, %16 ], [ 1, %.backedge ]
  ret i8 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc signext i8 @common_op_match_null_string_p(i8** nocapture %p, i8* %end, %union.register_info_type* nocapture %reg_info) #0 {
  %p1 = alloca i8*, align 8
  %1 = load i8** %p, align 8, !tbaa !13
  %2 = getelementptr inbounds i8* %1, i64 1
  store i8* %2, i8** %p1, align 8, !tbaa !13
  %3 = load i8* %1, align 1, !tbaa !12
  %4 = zext i8 %3 to i32
  %5 = ptrtoint i8* %2 to i64
  switch i32 %4, label %68 [
    i32 0, label %65
    i32 9, label %65
    i32 10, label %65
    i32 11, label %65
    i32 12, label %65
    i32 26, label %65
    i32 27, label %65
    i32 28, label %65
    i32 29, label %65
    i32 6, label %6
    i32 13, label %21
    i32 21, label %34
    i32 8, label %55
    i32 23, label %63
  ]

; <label>:6                                       ; preds = %0
  %7 = load i8* %2, align 1, !tbaa !12
  %8 = call fastcc signext i8 @group_match_null_string_p(i8** %p1, i8* %end, %union.register_info_type* %reg_info) #8
  %9 = zext i8 %7 to i64
  %10 = getelementptr inbounds %union.register_info_type* %reg_info, i64 %9
  %11 = bitcast %union.register_info_type* %10 to i8*
  %12 = load i8* %11, align 4
  %13 = and i8 %12, 3
  %14 = icmp eq i8 %13, 3
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %6
  %16 = and i8 %8, 3
  %17 = and i8 %12, -4
  %18 = or i8 %17, %16
  store i8 %18, i8* %11, align 4
  br label %19

; <label>:19                                      ; preds = %15, %6
  %20 = icmp eq i8 %8, 0
  br i1 %20, label %68, label %._crit_edge

._crit_edge:                                      ; preds = %19
  %.phi.trans.insert = bitcast i8** %p1 to i64*
  %.pre = load i64* %.phi.trans.insert, align 8, !tbaa !13
  br label %65

; <label>:21                                      ; preds = %0
  %22 = load i8* %2, align 1, !tbaa !12
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds i8* %1, i64 2
  %25 = load i8* %24, align 1, !tbaa !12
  %26 = sext i8 %25 to i32
  %27 = shl nsw i32 %26, 8
  %28 = or i32 %27, %23
  %29 = getelementptr inbounds i8* %1, i64 3
  store i8* %29, i8** %p1, align 8, !tbaa !13
  %30 = icmp sgt i32 %28, -1
  br i1 %30, label %31, label %68

; <label>:31                                      ; preds = %21
  %addconv2 = add nsw i32 %28, 3
  %.sum1 = sext i32 %addconv2 to i64
  %32 = getelementptr inbounds i8* %1, i64 %.sum1
  store i8* %32, i8** %p1, align 8, !tbaa !13
  %33 = ptrtoint i8* %32 to i64
  br label %65

; <label>:34                                      ; preds = %0
  %35 = getelementptr inbounds i8* %1, i64 3
  %36 = load i8* %35, align 1, !tbaa !12
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds i8* %1, i64 4
  %39 = load i8* %38, align 1, !tbaa !12
  %40 = sext i8 %39 to i32
  %41 = shl nsw i32 %40, 8
  %42 = or i32 %41, %37
  %43 = getelementptr inbounds i8* %1, i64 5
  store i8* %43, i8** %p1, align 8, !tbaa !13
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %68

; <label>:45                                      ; preds = %34
  %46 = load i8* %2, align 1, !tbaa !12
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8* %1, i64 2
  %49 = load i8* %48, align 1, !tbaa !12
  %50 = sext i8 %49 to i32
  %51 = shl nsw i32 %50, 8
  %52 = or i32 %51, %47
  %addconv = add nsw i32 %52, 3
  %.sum = sext i32 %addconv to i64
  %53 = getelementptr inbounds i8* %1, i64 %.sum
  store i8* %53, i8** %p1, align 8, !tbaa !13
  %54 = ptrtoint i8* %53 to i64
  br label %65

; <label>:55                                      ; preds = %0
  %56 = load i8* %2, align 1, !tbaa !12
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds %union.register_info_type* %reg_info, i64 %57
  %59 = bitcast %union.register_info_type* %58 to i8*
  %60 = load i8* %59, align 4
  %61 = and i8 %60, 3
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %68, label %65

; <label>:63                                      ; preds = %0
  %64 = getelementptr inbounds i8* %1, i64 5
  store i8* %64, i8** %p1, align 8, !tbaa !13
  br label %68

; <label>:65                                      ; preds = %._crit_edge, %55, %0, %0, %0, %0, %0, %0, %0, %0, %0, %45, %31
  %66 = phi i64 [ %.pre, %._crit_edge ], [ %5, %55 ], [ %5, %0 ], [ %5, %0 ], [ %5, %0 ], [ %5, %0 ], [ %5, %0 ], [ %5, %0 ], [ %5, %0 ], [ %5, %0 ], [ %5, %0 ], [ %54, %45 ], [ %33, %31 ]
  %67 = bitcast i8** %p to i64*
  store i64 %66, i64* %67, align 8, !tbaa !13
  br label %68

; <label>:68                                      ; preds = %63, %0, %55, %34, %21, %19, %65
  %.0 = phi i8 [ 1, %65 ], [ 0, %19 ], [ 0, %21 ], [ 0, %34 ], [ 0, %55 ], [ 0, %0 ], [ 0, %63 ]
  ret i8 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @compile_range(i8** nocapture %p_ptr, i8* readnone %pend, i8* readonly %translate, i64 %syntax, i8* nocapture %b) #0 {
  %1 = load i8** %p_ptr, align 8, !tbaa !13
  %2 = icmp eq i8* %1, %pend
  br i1 %2, label %.loopexit, label %3

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds i8* %1, i64 -2
  %5 = load i8* %4, align 1, !tbaa !12
  %6 = load i8* %1, align 1, !tbaa !12
  %7 = getelementptr inbounds i8* %1, i64 1
  store i8* %7, i8** %p_ptr, align 8, !tbaa !13
  %8 = icmp ugt i8 %5, %6
  br i1 %8, label %9, label %.lr.ph

; <label>:9                                       ; preds = %3
  %10 = and i64 %syntax, 65536
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %11, i32 11, i32 0
  br label %.loopexit

.lr.ph:                                           ; preds = %3
  %13 = zext i8 %5 to i32
  %14 = icmp eq i8* %translate, null
  %15 = zext i8 %5 to i64
  %16 = zext i8 %6 to i32
  br label %17

; <label>:17                                      ; preds = %.lr.ph, %25
  %indvars.iv = phi i64 [ %15, %.lr.ph ], [ %indvars.iv.next, %25 ]
  %this_char.01 = phi i32 [ %13, %.lr.ph ], [ %35, %25 ]
  %18 = trunc i64 %indvars.iv to i32
  br i1 %14, label %25, label %19

; <label>:19                                      ; preds = %17
  %20 = and i64 %indvars.iv, 255
  %21 = getelementptr inbounds i8* %translate, i64 %20
  %22 = load i8* %21, align 1, !tbaa !12
  %23 = zext i8 %22 to i32
  %24 = sext i8 %22 to i64
  br label %25

; <label>:25                                      ; preds = %17, %19
  %.pn.in = phi i32 [ %23, %19 ], [ %18, %17 ]
  %26 = phi i64 [ %24, %19 ], [ %indvars.iv, %17 ]
  %.pn = and i32 %.pn.in, 7
  %27 = shl i32 1, %.pn
  %28 = lshr i64 %26, 3
  %29 = and i64 %28, 31
  %30 = getelementptr inbounds i8* %b, i64 %29
  %31 = load i8* %30, align 1, !tbaa !12
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, %27
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %30, align 1, !tbaa !12
  %35 = add nuw nsw i32 %this_char.01, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %this_char.01, %16
  br i1 %exitcond, label %.loopexit, label %17

.loopexit:                                        ; preds = %25, %0, %9
  %.0 = phi i32 [ %12, %9 ], [ 11, %0 ], [ 0, %25 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"long", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !8, i64 32}
!7 = !{!"re_pattern_buffer", !8, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !8, i64 32, !8, i64 40, !3, i64 48, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56, !9, i64 56}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!7, !8, i64 0}
!11 = !{!7, !3, i64 16}
!12 = !{!4, !4, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!7, !3, i64 24}
!15 = !{!9, !9, i64 0}
!16 = !{!7, !8, i64 40}
!17 = !{!7, !3, i64 48}
!18 = !{!19, !9, i64 0}
!19 = !{!"re_registers", !9, i64 0, !8, i64 8, !8, i64 16}
!20 = !{!19, !8, i64 8}
!21 = !{!19, !8, i64 16}
!22 = !{!7, !3, i64 8}
!23 = !{!24, !3, i64 0}
!24 = !{!"", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24, !9, i64 32}
!25 = !{!24, !3, i64 8}
!26 = !{!24, !3, i64 24}
!27 = !{!24, !9, i64 32}
!28 = !{!24, !3, i64 16}
!29 = !{i64 0, i64 8, !13, i64 8, i64 8, !2, i64 16, i64 8, !2, i64 24, i64 8, !2, i64 32, i64 8, !13, i64 40, i64 8, !13, i64 48, i64 8, !2, i64 56, i64 4, !15, i64 56, i64 4, !15, i64 56, i64 4, !15, i64 56, i64 4, !15, i64 56, i64 4, !15, i64 56, i64 4, !15, i64 56, i64 4, !15}
!30 = !{!31, !9, i64 0}
!31 = !{!"", !9, i64 0, !9, i64 4}
!32 = !{!31, !9, i64 4}

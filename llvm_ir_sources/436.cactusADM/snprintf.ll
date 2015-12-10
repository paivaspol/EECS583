; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/snprintf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str1 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_vsnprintf(i8* %str, i64 %count, i8* readonly %fmt, %struct.__va_list_tag* %args) #0 {
  %iconvert.i.i = alloca [20 x i8], align 16
  %fconvert.i.i = alloca [20 x i8], align 16
  %currlen.i = alloca i64, align 8
  %1 = icmp eq i8* %str, null
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  store i8 0, i8* %str, align 1, !tbaa !2
  br label %3

; <label>:3                                       ; preds = %0, %2
  %4 = bitcast i64* %currlen.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4)
  store i64 0, i64* %currlen.i, align 8, !tbaa !5
  %5 = getelementptr inbounds i8* %fmt, i64 1
  %6 = load i8* %fmt, align 1, !tbaa !2
  %7 = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 0
  %8 = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 3
  %9 = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 2
  %10 = getelementptr inbounds %struct.__va_list_tag* %args, i64 0, i32 1
  %11 = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 0
  %12 = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 0
  br label %.backedge.thread.i

.backedge.thread.i:                               ; preds = %730, %109, %106, %103, %102, %97, %84, %78, %74, %72, %67, %54, %49, %44, %40, %36, %32, %28, %27, %24, %.backedge.thread.i, %3
  %.048.i = phi i8* [ %5, %3 ], [ %104, %103 ], [ %107, %106 ], [ %110, %109 ], [ %.048.i, %102 ], [ %.048.i, %84 ], [ %.048.i, %72 ], [ %.048.i, %54 ], [ %.048.i, %27 ], [ %25, %24 ], [ %30, %28 ], [ %34, %32 ], [ %38, %36 ], [ %42, %40 ], [ %46, %44 ], [ %70, %67 ], [ %52, %49 ], [ %75, %74 ], [ %100, %97 ], [ %82, %78 ], [ %731, %730 ], [ %.048.i, %.backedge.thread.i ]
  %ch.047.i = phi i8 [ %6, %3 ], [ %105, %103 ], [ %108, %106 ], [ %111, %109 ], [ %ch.047.i, %102 ], [ %ch.047.i, %84 ], [ %ch.047.i, %72 ], [ %ch.047.i, %54 ], [ %ch.047.i, %27 ], [ %26, %24 ], [ %31, %28 ], [ %35, %32 ], [ %39, %36 ], [ %43, %40 ], [ %47, %44 ], [ %71, %67 ], [ %53, %49 ], [ %76, %74 ], [ %101, %97 ], [ %83, %78 ], [ %732, %730 ], [ %ch.047.i, %.backedge.thread.i ]
  %total.046.i = phi i32 [ 0, %3 ], [ %total.046.i, %103 ], [ %total.046.i, %106 ], [ %total.046.i, %109 ], [ %total.046.i, %102 ], [ %total.046.i, %84 ], [ %total.046.i, %72 ], [ %total.046.i, %54 ], [ %total.046.i, %27 ], [ %total.1.i, %24 ], [ %total.046.i, %28 ], [ %total.046.i, %32 ], [ %total.046.i, %36 ], [ %total.046.i, %40 ], [ %total.046.i, %44 ], [ %total.046.i, %67 ], [ %total.046.i, %49 ], [ %total.046.i, %74 ], [ %total.046.i, %97 ], [ %total.046.i, %78 ], [ %total.2.i, %730 ], [ %total.046.i, %.backedge.thread.i ]
  %cflags.045.i = phi i32 [ 0, %3 ], [ 1, %103 ], [ 2, %106 ], [ 3, %109 ], [ %cflags.045.i, %102 ], [ %cflags.045.i, %84 ], [ %cflags.045.i, %72 ], [ %cflags.045.i, %54 ], [ %cflags.045.i, %27 ], [ %cflags.045.i, %24 ], [ %cflags.045.i, %28 ], [ %cflags.045.i, %32 ], [ %cflags.045.i, %36 ], [ %cflags.045.i, %40 ], [ %cflags.045.i, %44 ], [ %cflags.045.i, %67 ], [ %cflags.045.i, %49 ], [ %cflags.045.i, %74 ], [ %cflags.045.i, %97 ], [ %cflags.045.i, %78 ], [ 0, %730 ], [ %cflags.045.i, %.backedge.thread.i ]
  %flags.044.i = phi i32 [ 0, %3 ], [ %flags.044.i, %103 ], [ %flags.044.i, %106 ], [ %flags.044.i, %109 ], [ %flags.044.i, %102 ], [ %flags.044.i, %84 ], [ %flags.044.i, %72 ], [ %flags.044.i, %54 ], [ %flags.044.i, %27 ], [ %flags.044.i, %24 ], [ %29, %28 ], [ %33, %32 ], [ %37, %36 ], [ %41, %40 ], [ %45, %44 ], [ %flags.044.i, %67 ], [ %flags.044.i, %49 ], [ %flags.044.i, %74 ], [ %flags.044.i, %97 ], [ %flags.044.i, %78 ], [ 0, %730 ], [ %flags.044.i, %.backedge.thread.i ]
  %state.043.i = phi i32 [ 0, %3 ], [ 6, %103 ], [ 6, %106 ], [ 6, %109 ], [ 6, %102 ], [ 5, %84 ], [ 5, %72 ], [ 3, %54 ], [ 2, %27 ], [ %state.2.i, %24 ], [ 1, %28 ], [ 1, %32 ], [ 1, %36 ], [ 1, %40 ], [ 1, %44 ], [ 3, %67 ], [ 2, %49 ], [ 4, %74 ], [ 5, %97 ], [ 4, %78 ], [ 0, %730 ], [ %.state.0.i, %.backedge.thread.i ]
  %max.042.i = phi i32 [ -1, %3 ], [ %max.042.i, %103 ], [ %max.042.i, %106 ], [ %max.042.i, %109 ], [ %max.042.i, %102 ], [ %max.042.i, %84 ], [ %max.042.i, %72 ], [ %max.042.i, %54 ], [ %max.042.i, %27 ], [ %max.042.i, %24 ], [ %max.042.i, %28 ], [ %max.042.i, %32 ], [ %max.042.i, %36 ], [ %max.042.i, %40 ], [ %max.042.i, %44 ], [ %max.042.i, %67 ], [ %max.042.i, %49 ], [ %max.042.i, %74 ], [ %99, %97 ], [ %81, %78 ], [ -1, %730 ], [ %max.042.i, %.backedge.thread.i ]
  %min.041.i = phi i32 [ 0, %3 ], [ %min.041.i, %103 ], [ %min.041.i, %106 ], [ %min.041.i, %109 ], [ %min.041.i, %102 ], [ %min.041.i, %84 ], [ %min.041.i, %72 ], [ %min.041.i, %54 ], [ %min.041.i, %27 ], [ %min.041.i, %24 ], [ %min.041.i, %28 ], [ %min.041.i, %32 ], [ %min.041.i, %36 ], [ %min.041.i, %40 ], [ %min.041.i, %44 ], [ %69, %67 ], [ %51, %49 ], [ %min.041.i, %74 ], [ %min.041.i, %97 ], [ %min.041.i, %78 ], [ 0, %730 ], [ %min.041.i, %.backedge.thread.i ]
  %13 = sext i8 %ch.047.i to i32
  %14 = icmp eq i8 %ch.047.i, 0
  %.state.0.i = select i1 %14, i32 7, i32 %state.043.i
  switch i32 %.state.0.i, label %.backedge.thread.i [
    i32 0, label %15
    i32 1, label %27
    i32 2, label %48
    i32 3, label %72
    i32 4, label %77
    i32 5, label %102
    i32 6, label %112
    i32 7, label %733
  ]

; <label>:15                                      ; preds = %.backedge.thread.i
  %16 = icmp eq i8 %ch.047.i, 37
  br i1 %16, label %24, label %17

; <label>:17                                      ; preds = %15
  %18 = load i64* %currlen.i, align 8, !tbaa !5
  %19 = add i64 %18, 1
  %20 = icmp ult i64 %19, %count
  br i1 %20, label %21, label %dopr_outch.exit.i

; <label>:21                                      ; preds = %17
  store i64 %19, i64* %currlen.i, align 8, !tbaa !5
  %22 = getelementptr inbounds i8* %str, i64 %18
  store i8 %ch.047.i, i8* %22, align 1, !tbaa !2
  br label %dopr_outch.exit.i

dopr_outch.exit.i:                                ; preds = %21, %17
  %23 = add nsw i32 %total.046.i, 1
  br label %24

; <label>:24                                      ; preds = %dopr_outch.exit.i, %15
  %state.2.i = phi i32 [ 0, %dopr_outch.exit.i ], [ 1, %15 ]
  %total.1.i = phi i32 [ %23, %dopr_outch.exit.i ], [ %total.046.i, %15 ]
  %25 = getelementptr inbounds i8* %.048.i, i64 1
  %26 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:27                                      ; preds = %.backedge.thread.i
  switch i32 %13, label %.backedge.thread.i [
    i32 45, label %28
    i32 43, label %32
    i32 32, label %36
    i32 35, label %40
    i32 48, label %44
  ]

; <label>:28                                      ; preds = %27
  %29 = or i32 %flags.044.i, 1
  %30 = getelementptr inbounds i8* %.048.i, i64 1
  %31 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:32                                      ; preds = %27
  %33 = or i32 %flags.044.i, 2
  %34 = getelementptr inbounds i8* %.048.i, i64 1
  %35 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:36                                      ; preds = %27
  %37 = or i32 %flags.044.i, 4
  %38 = getelementptr inbounds i8* %.048.i, i64 1
  %39 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:40                                      ; preds = %27
  %41 = or i32 %flags.044.i, 8
  %42 = getelementptr inbounds i8* %.048.i, i64 1
  %43 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:44                                      ; preds = %27
  %45 = or i32 %flags.044.i, 16
  %46 = getelementptr inbounds i8* %.048.i, i64 1
  %47 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:48                                      ; preds = %.backedge.thread.i
  %isdigittmp23.i = add nsw i32 %13, -48
  %isdigit24.i = icmp ult i32 %isdigittmp23.i, 10
  br i1 %isdigit24.i, label %49, label %54

; <label>:49                                      ; preds = %48
  %50 = mul nsw i32 %min.041.i, 10
  %51 = add nsw i32 %50, %isdigittmp23.i
  %52 = getelementptr inbounds i8* %.048.i, i64 1
  %53 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:54                                      ; preds = %48
  %55 = icmp eq i8 %ch.047.i, 42
  br i1 %55, label %56, label %.backedge.thread.i

; <label>:56                                      ; preds = %54
  %57 = load i32* %7, align 4
  %58 = icmp ult i32 %57, 41
  br i1 %58, label %59, label %64

; <label>:59                                      ; preds = %56
  %60 = load i8** %8, align 8
  %61 = sext i32 %57 to i64
  %62 = getelementptr i8* %60, i64 %61
  %63 = add i32 %57, 8
  store i32 %63, i32* %7, align 4
  br label %67

; <label>:64                                      ; preds = %56
  %65 = load i8** %9, align 8
  %66 = getelementptr i8* %65, i64 8
  store i8* %66, i8** %9, align 8
  br label %67

; <label>:67                                      ; preds = %64, %59
  %.in25.i = phi i8* [ %62, %59 ], [ %65, %64 ]
  %68 = bitcast i8* %.in25.i to i32*
  %69 = load i32* %68, align 4
  %70 = getelementptr inbounds i8* %.048.i, i64 1
  %71 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:72                                      ; preds = %.backedge.thread.i
  %73 = icmp eq i8 %ch.047.i, 46
  br i1 %73, label %74, label %.backedge.thread.i

; <label>:74                                      ; preds = %72
  %75 = getelementptr inbounds i8* %.048.i, i64 1
  %76 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:77                                      ; preds = %.backedge.thread.i
  %isdigittmp.i = add nsw i32 %13, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %78, label %84

; <label>:78                                      ; preds = %77
  %79 = icmp slt i32 %max.042.i, 0
  %max.0.op.i = mul i32 %max.042.i, 10
  %80 = select i1 %79, i32 0, i32 %max.0.op.i
  %81 = add nsw i32 %80, %isdigittmp.i
  %82 = getelementptr inbounds i8* %.048.i, i64 1
  %83 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:84                                      ; preds = %77
  %85 = icmp eq i8 %ch.047.i, 42
  br i1 %85, label %86, label %.backedge.thread.i

; <label>:86                                      ; preds = %84
  %87 = load i32* %7, align 4
  %88 = icmp ult i32 %87, 41
  br i1 %88, label %89, label %94

; <label>:89                                      ; preds = %86
  %90 = load i8** %8, align 8
  %91 = sext i32 %87 to i64
  %92 = getelementptr i8* %90, i64 %91
  %93 = add i32 %87, 8
  store i32 %93, i32* %7, align 4
  br label %97

; <label>:94                                      ; preds = %86
  %95 = load i8** %9, align 8
  %96 = getelementptr i8* %95, i64 8
  store i8* %96, i8** %9, align 8
  br label %97

; <label>:97                                      ; preds = %94, %89
  %.in22.i = phi i8* [ %92, %89 ], [ %95, %94 ]
  %98 = bitcast i8* %.in22.i to i32*
  %99 = load i32* %98, align 4
  %100 = getelementptr inbounds i8* %.048.i, i64 1
  %101 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:102                                     ; preds = %.backedge.thread.i
  switch i32 %13, label %.backedge.thread.i [
    i32 104, label %103
    i32 108, label %106
    i32 76, label %109
  ]

; <label>:103                                     ; preds = %102
  %104 = getelementptr inbounds i8* %.048.i, i64 1
  %105 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:106                                     ; preds = %102
  %107 = getelementptr inbounds i8* %.048.i, i64 1
  %108 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:109                                     ; preds = %102
  %110 = getelementptr inbounds i8* %.048.i, i64 1
  %111 = load i8* %.048.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:112                                     ; preds = %.backedge.thread.i
  switch i32 %13, label %730 [
    i32 100, label %113
    i32 105, label %113
    i32 111, label %162
    i32 117, label %212
    i32 88, label %262
    i32 120, label %264
    i32 102, label %314
    i32 69, label %533
    i32 101, label %533
    i32 71, label %549
    i32 103, label %549
    i32 99, label %565
    i32 115, label %586
    i32 112, label %655
    i32 110, label %672
    i32 37, label %721
    i32 119, label %728
  ]

; <label>:113                                     ; preds = %112, %112
  %114 = icmp eq i32 %cflags.045.i, 1
  br i1 %114, label %115, label %130

; <label>:115                                     ; preds = %113
  %116 = load i32* %7, align 4
  %117 = icmp ult i32 %116, 41
  br i1 %117, label %118, label %123

; <label>:118                                     ; preds = %115
  %119 = load i8** %8, align 8
  %120 = sext i32 %116 to i64
  %121 = getelementptr i8* %119, i64 %120
  %122 = add i32 %116, 8
  store i32 %122, i32* %7, align 4
  br label %126

; <label>:123                                     ; preds = %115
  %124 = load i8** %9, align 8
  %125 = getelementptr i8* %124, i64 8
  store i8* %125, i8** %9, align 8
  br label %126

; <label>:126                                     ; preds = %123, %118
  %.in21.i = phi i8* [ %121, %118 ], [ %124, %123 ]
  %127 = bitcast i8* %.in21.i to i32*
  %128 = load i32* %127, align 4
  %129 = sext i32 %128 to i64
  br label %159

; <label>:130                                     ; preds = %113
  %131 = icmp eq i32 %cflags.045.i, 2
  %132 = load i32* %7, align 4
  %133 = icmp ult i32 %132, 41
  br i1 %131, label %134, label %146

; <label>:134                                     ; preds = %130
  br i1 %133, label %135, label %140

; <label>:135                                     ; preds = %134
  %136 = load i8** %8, align 8
  %137 = sext i32 %132 to i64
  %138 = getelementptr i8* %136, i64 %137
  %139 = add i32 %132, 8
  store i32 %139, i32* %7, align 4
  br label %143

; <label>:140                                     ; preds = %134
  %141 = load i8** %9, align 8
  %142 = getelementptr i8* %141, i64 8
  store i8* %142, i8** %9, align 8
  br label %143

; <label>:143                                     ; preds = %140, %135
  %.in20.i = phi i8* [ %138, %135 ], [ %141, %140 ]
  %144 = bitcast i8* %.in20.i to i64*
  %145 = load i64* %144, align 8
  br label %159

; <label>:146                                     ; preds = %130
  br i1 %133, label %147, label %152

; <label>:147                                     ; preds = %146
  %148 = load i8** %8, align 8
  %149 = sext i32 %132 to i64
  %150 = getelementptr i8* %148, i64 %149
  %151 = add i32 %132, 8
  store i32 %151, i32* %7, align 4
  br label %155

; <label>:152                                     ; preds = %146
  %153 = load i8** %9, align 8
  %154 = getelementptr i8* %153, i64 8
  store i8* %154, i8** %9, align 8
  br label %155

; <label>:155                                     ; preds = %152, %147
  %.in19.i = phi i8* [ %150, %147 ], [ %153, %152 ]
  %156 = bitcast i8* %.in19.i to i32*
  %157 = load i32* %156, align 4
  %158 = sext i32 %157 to i64
  br label %159

; <label>:159                                     ; preds = %155, %143, %126
  %value.0.i = phi i64 [ %129, %126 ], [ %145, %143 ], [ %158, %155 ]
  %160 = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.0.i, i32 10, i32 %min.041.i, i32 %max.042.i, i32 %flags.044.i) #2
  %161 = add nsw i32 %160, %total.046.i
  br label %730

; <label>:162                                     ; preds = %112
  %163 = or i32 %flags.044.i, 64
  %164 = icmp eq i32 %cflags.045.i, 1
  br i1 %164, label %165, label %180

; <label>:165                                     ; preds = %162
  %166 = load i32* %7, align 4
  %167 = icmp ult i32 %166, 41
  br i1 %167, label %168, label %173

; <label>:168                                     ; preds = %165
  %169 = load i8** %8, align 8
  %170 = sext i32 %166 to i64
  %171 = getelementptr i8* %169, i64 %170
  %172 = add i32 %166, 8
  store i32 %172, i32* %7, align 4
  br label %176

; <label>:173                                     ; preds = %165
  %174 = load i8** %9, align 8
  %175 = getelementptr i8* %174, i64 8
  store i8* %175, i8** %9, align 8
  br label %176

; <label>:176                                     ; preds = %173, %168
  %.in18.i = phi i8* [ %171, %168 ], [ %174, %173 ]
  %177 = bitcast i8* %.in18.i to i32*
  %178 = load i32* %177, align 4
  %179 = zext i32 %178 to i64
  br label %209

; <label>:180                                     ; preds = %162
  %181 = icmp eq i32 %cflags.045.i, 2
  %182 = load i32* %7, align 4
  %183 = icmp ult i32 %182, 41
  br i1 %181, label %184, label %196

; <label>:184                                     ; preds = %180
  br i1 %183, label %185, label %190

; <label>:185                                     ; preds = %184
  %186 = load i8** %8, align 8
  %187 = sext i32 %182 to i64
  %188 = getelementptr i8* %186, i64 %187
  %189 = add i32 %182, 8
  store i32 %189, i32* %7, align 4
  br label %193

; <label>:190                                     ; preds = %184
  %191 = load i8** %9, align 8
  %192 = getelementptr i8* %191, i64 8
  store i8* %192, i8** %9, align 8
  br label %193

; <label>:193                                     ; preds = %190, %185
  %.in17.i = phi i8* [ %188, %185 ], [ %191, %190 ]
  %194 = bitcast i8* %.in17.i to i64*
  %195 = load i64* %194, align 8
  br label %209

; <label>:196                                     ; preds = %180
  br i1 %183, label %197, label %202

; <label>:197                                     ; preds = %196
  %198 = load i8** %8, align 8
  %199 = sext i32 %182 to i64
  %200 = getelementptr i8* %198, i64 %199
  %201 = add i32 %182, 8
  store i32 %201, i32* %7, align 4
  br label %205

; <label>:202                                     ; preds = %196
  %203 = load i8** %9, align 8
  %204 = getelementptr i8* %203, i64 8
  store i8* %204, i8** %9, align 8
  br label %205

; <label>:205                                     ; preds = %202, %197
  %.in16.i = phi i8* [ %200, %197 ], [ %203, %202 ]
  %206 = bitcast i8* %.in16.i to i32*
  %207 = load i32* %206, align 4
  %208 = zext i32 %207 to i64
  br label %209

; <label>:209                                     ; preds = %205, %193, %176
  %value.1.i = phi i64 [ %179, %176 ], [ %195, %193 ], [ %208, %205 ]
  %210 = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.1.i, i32 8, i32 %min.041.i, i32 %max.042.i, i32 %163) #2
  %211 = add nsw i32 %210, %total.046.i
  br label %730

; <label>:212                                     ; preds = %112
  %213 = or i32 %flags.044.i, 64
  %214 = icmp eq i32 %cflags.045.i, 1
  br i1 %214, label %215, label %230

; <label>:215                                     ; preds = %212
  %216 = load i32* %7, align 4
  %217 = icmp ult i32 %216, 41
  br i1 %217, label %218, label %223

; <label>:218                                     ; preds = %215
  %219 = load i8** %8, align 8
  %220 = sext i32 %216 to i64
  %221 = getelementptr i8* %219, i64 %220
  %222 = add i32 %216, 8
  store i32 %222, i32* %7, align 4
  br label %226

; <label>:223                                     ; preds = %215
  %224 = load i8** %9, align 8
  %225 = getelementptr i8* %224, i64 8
  store i8* %225, i8** %9, align 8
  br label %226

; <label>:226                                     ; preds = %223, %218
  %.in15.i = phi i8* [ %221, %218 ], [ %224, %223 ]
  %227 = bitcast i8* %.in15.i to i32*
  %228 = load i32* %227, align 4
  %229 = zext i32 %228 to i64
  br label %259

; <label>:230                                     ; preds = %212
  %231 = icmp eq i32 %cflags.045.i, 2
  %232 = load i32* %7, align 4
  %233 = icmp ult i32 %232, 41
  br i1 %231, label %234, label %246

; <label>:234                                     ; preds = %230
  br i1 %233, label %235, label %240

; <label>:235                                     ; preds = %234
  %236 = load i8** %8, align 8
  %237 = sext i32 %232 to i64
  %238 = getelementptr i8* %236, i64 %237
  %239 = add i32 %232, 8
  store i32 %239, i32* %7, align 4
  br label %243

; <label>:240                                     ; preds = %234
  %241 = load i8** %9, align 8
  %242 = getelementptr i8* %241, i64 8
  store i8* %242, i8** %9, align 8
  br label %243

; <label>:243                                     ; preds = %240, %235
  %.in14.i = phi i8* [ %238, %235 ], [ %241, %240 ]
  %244 = bitcast i8* %.in14.i to i64*
  %245 = load i64* %244, align 8
  br label %259

; <label>:246                                     ; preds = %230
  br i1 %233, label %247, label %252

; <label>:247                                     ; preds = %246
  %248 = load i8** %8, align 8
  %249 = sext i32 %232 to i64
  %250 = getelementptr i8* %248, i64 %249
  %251 = add i32 %232, 8
  store i32 %251, i32* %7, align 4
  br label %255

; <label>:252                                     ; preds = %246
  %253 = load i8** %9, align 8
  %254 = getelementptr i8* %253, i64 8
  store i8* %254, i8** %9, align 8
  br label %255

; <label>:255                                     ; preds = %252, %247
  %.in13.i = phi i8* [ %250, %247 ], [ %253, %252 ]
  %256 = bitcast i8* %.in13.i to i32*
  %257 = load i32* %256, align 4
  %258 = zext i32 %257 to i64
  br label %259

; <label>:259                                     ; preds = %255, %243, %226
  %value.2.i = phi i64 [ %229, %226 ], [ %245, %243 ], [ %258, %255 ]
  %260 = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.2.i, i32 10, i32 %min.041.i, i32 %max.042.i, i32 %213) #2
  %261 = add nsw i32 %260, %total.046.i
  br label %730

; <label>:262                                     ; preds = %112
  %263 = or i32 %flags.044.i, 32
  br label %264

; <label>:264                                     ; preds = %262, %112
  %flags.1.i = phi i32 [ %flags.044.i, %112 ], [ %263, %262 ]
  %265 = or i32 %flags.1.i, 64
  %266 = icmp eq i32 %cflags.045.i, 1
  br i1 %266, label %267, label %282

; <label>:267                                     ; preds = %264
  %268 = load i32* %7, align 4
  %269 = icmp ult i32 %268, 41
  br i1 %269, label %270, label %275

; <label>:270                                     ; preds = %267
  %271 = load i8** %8, align 8
  %272 = sext i32 %268 to i64
  %273 = getelementptr i8* %271, i64 %272
  %274 = add i32 %268, 8
  store i32 %274, i32* %7, align 4
  br label %278

; <label>:275                                     ; preds = %267
  %276 = load i8** %9, align 8
  %277 = getelementptr i8* %276, i64 8
  store i8* %277, i8** %9, align 8
  br label %278

; <label>:278                                     ; preds = %275, %270
  %.in12.i = phi i8* [ %273, %270 ], [ %276, %275 ]
  %279 = bitcast i8* %.in12.i to i32*
  %280 = load i32* %279, align 4
  %281 = zext i32 %280 to i64
  br label %311

; <label>:282                                     ; preds = %264
  %283 = icmp eq i32 %cflags.045.i, 2
  %284 = load i32* %7, align 4
  %285 = icmp ult i32 %284, 41
  br i1 %283, label %286, label %298

; <label>:286                                     ; preds = %282
  br i1 %285, label %287, label %292

; <label>:287                                     ; preds = %286
  %288 = load i8** %8, align 8
  %289 = sext i32 %284 to i64
  %290 = getelementptr i8* %288, i64 %289
  %291 = add i32 %284, 8
  store i32 %291, i32* %7, align 4
  br label %295

; <label>:292                                     ; preds = %286
  %293 = load i8** %9, align 8
  %294 = getelementptr i8* %293, i64 8
  store i8* %294, i8** %9, align 8
  br label %295

; <label>:295                                     ; preds = %292, %287
  %.in11.i = phi i8* [ %290, %287 ], [ %293, %292 ]
  %296 = bitcast i8* %.in11.i to i64*
  %297 = load i64* %296, align 8
  br label %311

; <label>:298                                     ; preds = %282
  br i1 %285, label %299, label %304

; <label>:299                                     ; preds = %298
  %300 = load i8** %8, align 8
  %301 = sext i32 %284 to i64
  %302 = getelementptr i8* %300, i64 %301
  %303 = add i32 %284, 8
  store i32 %303, i32* %7, align 4
  br label %307

; <label>:304                                     ; preds = %298
  %305 = load i8** %9, align 8
  %306 = getelementptr i8* %305, i64 8
  store i8* %306, i8** %9, align 8
  br label %307

; <label>:307                                     ; preds = %304, %299
  %.in10.i = phi i8* [ %302, %299 ], [ %305, %304 ]
  %308 = bitcast i8* %.in10.i to i32*
  %309 = load i32* %308, align 4
  %310 = zext i32 %309 to i64
  br label %311

; <label>:311                                     ; preds = %307, %295, %278
  %value.3.i = phi i64 [ %281, %278 ], [ %297, %295 ], [ %310, %307 ]
  %312 = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %value.3.i, i32 16, i32 %min.041.i, i32 %max.042.i, i32 %265) #2
  %313 = add nsw i32 %312, %total.046.i
  br label %730

; <label>:314                                     ; preds = %112
  %315 = icmp eq i32 %cflags.045.i, 3
  %316 = load i32* %10, align 4
  %317 = icmp ult i32 %316, 161
  br i1 %315, label %318, label %327

; <label>:318                                     ; preds = %314
  br i1 %317, label %319, label %324

; <label>:319                                     ; preds = %318
  %320 = load i8** %8, align 8
  %321 = sext i32 %316 to i64
  %322 = getelementptr i8* %320, i64 %321
  %323 = add i32 %316, 16
  store i32 %323, i32* %10, align 4
  br label %336

; <label>:324                                     ; preds = %318
  %325 = load i8** %9, align 8
  %326 = getelementptr i8* %325, i64 8
  store i8* %326, i8** %9, align 8
  br label %336

; <label>:327                                     ; preds = %314
  br i1 %317, label %328, label %333

; <label>:328                                     ; preds = %327
  %329 = load i8** %8, align 8
  %330 = sext i32 %316 to i64
  %331 = getelementptr i8* %329, i64 %330
  %332 = add i32 %316, 16
  store i32 %332, i32* %10, align 4
  br label %336

; <label>:333                                     ; preds = %327
  %334 = load i8** %9, align 8
  %335 = getelementptr i8* %334, i64 8
  store i8* %335, i8** %9, align 8
  br label %336

; <label>:336                                     ; preds = %333, %328, %324, %319
  %fvalue.0.in.in.i = phi i8* [ %322, %319 ], [ %325, %324 ], [ %331, %328 ], [ %334, %333 ]
  %fvalue.0.in.i = bitcast i8* %fvalue.0.in.in.i to double*
  %fvalue.0.i = load double* %fvalue.0.in.i, align 8
  call void @llvm.lifetime.start(i64 20, i8* %11) #1
  call void @llvm.lifetime.start(i64 20, i8* %12) #1
  %337 = icmp slt i32 %max.042.i, 0
  %.max.i.i = select i1 %337, i32 6, i32 %max.042.i
  %338 = fcmp olt double %fvalue.0.i, 0.000000e+00
  br i1 %338, label %abs_val.exit.thread.i.i, label %340

abs_val.exit.thread.i.i:                          ; preds = %336
  %339 = fsub double -0.000000e+00, %fvalue.0.i
  br label %346

; <label>:340                                     ; preds = %336
  %341 = and i32 %flags.044.i, 2
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %346

; <label>:343                                     ; preds = %340
  %344 = shl i32 %flags.044.i, 3
  %345 = and i32 %344, 32
  br label %346

; <label>:346                                     ; preds = %343, %340, %abs_val.exit.thread.i.i
  %result.0.i26.i.i = phi double [ %fvalue.0.i, %340 ], [ %fvalue.0.i, %343 ], [ %339, %abs_val.exit.thread.i.i ]
  %signvalue.0.i.i = phi i32 [ 43, %340 ], [ %345, %343 ], [ 45, %abs_val.exit.thread.i.i ]
  %347 = fptosi double %result.0.i26.i.i to i64
  %348 = icmp sgt i32 %.max.i.i, 9
  %..max.i.i = select i1 %348, i32 9, i32 %.max.i.i
  %349 = icmp eq i32 %..max.i.i, 0
  br i1 %349, label %pow10.exit25.i.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %346, %.lr.ph.i23.i.i
  %result.02.i21.i.i = phi double [ %350, %.lr.ph.i23.i.i ], [ 1.000000e+00, %346 ]
  %.01.i22.i.i = phi i32 [ %351, %.lr.ph.i23.i.i ], [ %..max.i.i, %346 ]
  %350 = fmul double %result.02.i21.i.i, 1.000000e+01
  %351 = add nsw i32 %.01.i22.i.i, -1
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %pow10.exit25.i.i, label %.lr.ph.i23.i.i

pow10.exit25.i.i:                                 ; preds = %.lr.ph.i23.i.i, %346
  %result.0.lcssa.i24.i.i = phi double [ 1.000000e+00, %346 ], [ %350, %.lr.ph.i23.i.i ]
  %353 = sitofp i64 %347 to double
  %354 = fsub double %result.0.i26.i.i, %353
  %355 = fmul double %354, %result.0.lcssa.i24.i.i
  %356 = fptosi double %355 to i64
  %357 = sitofp i64 %356 to double
  %358 = fsub double %355, %357
  %not..i.i.i = fcmp oge double %358, 5.000000e-01
  %359 = zext i1 %not..i.i.i to i64
  %intpart.0.i.i.i = add nsw i64 %359, %356
  %360 = sitofp i64 %intpart.0.i.i.i to double
  br i1 %349, label %pow10.exit20.i.i, label %.lr.ph.i18.i.i

.lr.ph.i18.i.i:                                   ; preds = %pow10.exit25.i.i, %.lr.ph.i18.i.i
  %result.02.i16.i.i = phi double [ %361, %.lr.ph.i18.i.i ], [ 1.000000e+00, %pow10.exit25.i.i ]
  %.01.i17.i.i = phi i32 [ %362, %.lr.ph.i18.i.i ], [ %..max.i.i, %pow10.exit25.i.i ]
  %361 = fmul double %result.02.i16.i.i, 1.000000e+01
  %362 = add nsw i32 %.01.i17.i.i, -1
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %pow10.exit20.i.i, label %.lr.ph.i18.i.i

pow10.exit20.i.i:                                 ; preds = %.lr.ph.i18.i.i, %pow10.exit25.i.i
  %result.0.lcssa.i19.i.i = phi double [ 1.000000e+00, %pow10.exit25.i.i ], [ %361, %.lr.ph.i18.i.i ]
  %364 = fcmp ult double %360, %result.0.lcssa.i19.i.i
  br i1 %364, label %.preheader33.i.i, label %365

; <label>:365                                     ; preds = %pow10.exit20.i.i
  %366 = add nsw i64 %347, 1
  br i1 %349, label %pow10.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %365, %.lr.ph.i.i.i
  %result.02.i.i.i = phi double [ %367, %.lr.ph.i.i.i ], [ 1.000000e+00, %365 ]
  %.01.i.i.i = phi i32 [ %368, %.lr.ph.i.i.i ], [ %..max.i.i, %365 ]
  %367 = fmul double %result.02.i.i.i, 1.000000e+01
  %368 = add nsw i32 %.01.i.i.i, -1
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %pow10.exit.i.i, label %.lr.ph.i.i.i

pow10.exit.i.i:                                   ; preds = %.lr.ph.i.i.i, %365
  %result.0.lcssa.i.i.i = phi double [ 1.000000e+00, %365 ], [ %367, %.lr.ph.i.i.i ]
  %370 = fsub double %360, %result.0.lcssa.i.i.i
  %371 = fptosi double %370 to i64
  br label %.preheader33.i.i

.preheader33.i.i:                                 ; preds = %pow10.exit.i.i, %pow10.exit20.i.i
  %intpart.0.ph.i.i = phi i64 [ %347, %pow10.exit20.i.i ], [ %366, %pow10.exit.i.i ]
  %fracpart.0.ph.i.i = phi i64 [ %intpart.0.i.i.i, %pow10.exit20.i.i ], [ %371, %pow10.exit.i.i ]
  br label %372

; <label>:372                                     ; preds = %372, %.preheader33.i.i
  %indvars.iv88.i.i = phi i64 [ 0, %.preheader33.i.i ], [ %indvars.iv.next89.i.i, %372 ]
  %intpart.0.i.i = phi i64 [ %intpart.0.ph.i.i, %.preheader33.i.i ], [ %377, %372 ]
  %373 = srem i64 %intpart.0.i.i, 10
  %374 = getelementptr inbounds [17 x i8]* @.str1, i64 0, i64 %373
  %375 = load i8* %374, align 1, !tbaa !2
  %indvars.iv.next89.i.i = add nuw nsw i64 %indvars.iv88.i.i, 1
  %376 = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %indvars.iv88.i.i
  store i8 %375, i8* %376, align 1, !tbaa !2
  %377 = sdiv i64 %intpart.0.i.i, 10
  %intpart.0.off.i.i = add i64 %intpart.0.i.i, 9
  %378 = icmp ugt i64 %intpart.0.off.i.i, 18
  %379 = icmp slt i64 %indvars.iv.next89.i.i, 20
  %or.cond4.i.i = and i1 %379, %378
  br i1 %or.cond4.i.i, label %372, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %372
  %380 = trunc i64 %indvars.iv88.i.i to i32
  %381 = trunc i64 %indvars.iv.next89.i.i to i32
  %382 = icmp eq i32 %381, 20
  %iplace.0..i.i = select i1 %382, i32 %380, i32 %381
  %383 = sext i32 %iplace.0..i.i to i64
  %384 = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %383
  store i8 0, i8* %384, align 1, !tbaa !2
  br label %385

; <label>:385                                     ; preds = %385, %.critedge.i.i
  %indvars.iv86.i.i = phi i64 [ %indvars.iv.next87.i.i, %385 ], [ 0, %.critedge.i.i ]
  %fracpart.1.i.i = phi i64 [ %390, %385 ], [ %fracpart.0.ph.i.i, %.critedge.i.i ]
  %386 = srem i64 %fracpart.1.i.i, 10
  %387 = getelementptr inbounds [17 x i8]* @.str1, i64 0, i64 %386
  %388 = load i8* %387, align 1, !tbaa !2
  %indvars.iv.next87.i.i = add nuw nsw i64 %indvars.iv86.i.i, 1
  %389 = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %indvars.iv86.i.i
  store i8 %388, i8* %389, align 1, !tbaa !2
  %390 = sdiv i64 %fracpart.1.i.i, 10
  %fracpart.1.off.i.i = add i64 %fracpart.1.i.i, 9
  %391 = icmp ugt i64 %fracpart.1.off.i.i, 18
  %392 = icmp slt i64 %indvars.iv.next87.i.i, 20
  %or.cond6.i.i = and i1 %392, %391
  br i1 %or.cond6.i.i, label %385, label %.critedge1.i.i

.critedge1.i.i:                                   ; preds = %385
  %393 = trunc i64 %indvars.iv86.i.i to i32
  %394 = trunc i64 %indvars.iv.next87.i.i to i32
  %395 = icmp eq i32 %394, 20
  %fplace.0..i.i = select i1 %395, i32 %393, i32 %394
  %396 = sext i32 %fplace.0..i.i to i64
  %397 = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %396
  store i8 0, i8* %397, align 1, !tbaa !2
  %398 = icmp ne i32 %signvalue.0.i.i, 0
  %.neg.i.i = sext i1 %398 to i32
  %399 = add i32 %min.041.i, -1
  %400 = sub i32 %399, %..max.i.i
  %401 = add i32 %400, %.neg.i.i
  %402 = sub i32 %401, %iplace.0..i.i
  %403 = sub nsw i32 %..max.i.i, %fplace.0..i.i
  %404 = icmp slt i32 %403, 0
  %..i.i = select i1 %404, i32 0, i32 %403
  %405 = icmp slt i32 %402, 0
  %padlen.0.i.i = select i1 %405, i32 0, i32 %402
  %406 = and i32 %flags.044.i, 1
  %407 = icmp eq i32 %406, 0
  %408 = sub nsw i32 0, %padlen.0.i.i
  %padlen.0..i.i = select i1 %407, i32 %padlen.0.i.i, i32 %408
  %409 = and i32 %flags.044.i, 16
  %410 = icmp ne i32 %409, 0
  %411 = icmp sgt i32 %padlen.0..i.i, 0
  %or.cond.i.i = and i1 %410, %411
  br i1 %or.cond.i.i, label %419, label %.preheader31.i.i

..preheader31.loopexit_crit_edge.i.i:             ; preds = %dopr_outch.exit14.i.i
  %412 = icmp sgt i32 %429, -2
  %smax85.i.i = select i1 %412, i32 %429, i32 -2
  %413 = sub i32 -2, %smax85.i.i
  %414 = add i32 %padlen.2.ph.i.i, 2
  %415 = add i32 %414, %total.0.ph.i.i
  %416 = add i32 %415, %smax85.i.i
  br label %.preheader31.i.i

.preheader31.i.i:                                 ; preds = %..preheader31.loopexit_crit_edge.i.i, %.critedge1.i.i
  %signvalue.2.ph.i.i = phi i32 [ %signvalue.0.i.i, %.critedge1.i.i ], [ 0, %..preheader31.loopexit_crit_edge.i.i ]
  %padlen.3.ph.i.i = phi i32 [ %padlen.0..i.i, %.critedge1.i.i ], [ %413, %..preheader31.loopexit_crit_edge.i.i ]
  %total.1.ph.i.i = phi i32 [ 0, %.critedge1.i.i ], [ %416, %..preheader31.loopexit_crit_edge.i.i ]
  %417 = icmp sgt i32 %padlen.3.ph.i.i, 0
  br i1 %417, label %.lr.ph56.i.i, label %.preheader31.thread.i.i

.lr.ph56.i.i:                                     ; preds = %.preheader31.i.i
  %418 = xor i32 %padlen.3.ph.i.i, -1
  %.pre52.i = load i64* %currlen.i, align 8, !tbaa !5
  br label %439

; <label>:419                                     ; preds = %.critedge1.i.i
  br i1 %398, label %420, label %.preheader32.i.i

; <label>:420                                     ; preds = %419
  %421 = load i64* %currlen.i, align 8, !tbaa !5
  %422 = add i64 %421, 1
  %423 = icmp ult i64 %422, %count
  br i1 %423, label %424, label %dopr_outch.exit15.i.i

; <label>:424                                     ; preds = %420
  %425 = trunc i32 %signvalue.0.i.i to i8
  store i64 %422, i64* %currlen.i, align 8, !tbaa !5
  %426 = getelementptr inbounds i8* %str, i64 %421
  store i8 %425, i8* %426, align 1, !tbaa !2
  br label %dopr_outch.exit15.i.i

dopr_outch.exit15.i.i:                            ; preds = %424, %420
  %427 = add nsw i32 %padlen.0..i.i, -1
  br label %.preheader32.i.i

.preheader32.i.i:                                 ; preds = %dopr_outch.exit15.i.i, %419
  %padlen.2.ph.i.i = phi i32 [ %padlen.0..i.i, %419 ], [ %427, %dopr_outch.exit15.i.i ]
  %total.0.ph.i.i = phi i32 [ 0, %419 ], [ 1, %dopr_outch.exit15.i.i ]
  %428 = icmp sgt i32 %padlen.2.ph.i.i, 0
  br i1 %428, label %.lr.ph62.i.i, label %.preheader30.i.i

.lr.ph62.i.i:                                     ; preds = %.preheader32.i.i
  %429 = xor i32 %padlen.2.ph.i.i, -1
  %.pre51.i = load i64* %currlen.i, align 8, !tbaa !5
  br label %430

; <label>:430                                     ; preds = %dopr_outch.exit14.i.i, %.lr.ph62.i.i
  %431 = phi i64 [ %.pre51.i, %.lr.ph62.i.i ], [ %436, %dopr_outch.exit14.i.i ]
  %padlen.260.i.i = phi i32 [ %padlen.2.ph.i.i, %.lr.ph62.i.i ], [ %437, %dopr_outch.exit14.i.i ]
  %432 = add i64 %431, 1
  %433 = icmp ult i64 %432, %count
  br i1 %433, label %434, label %dopr_outch.exit14.i.i

; <label>:434                                     ; preds = %430
  store i64 %432, i64* %currlen.i, align 8, !tbaa !5
  %435 = getelementptr inbounds i8* %str, i64 %431
  store i8 48, i8* %435, align 1, !tbaa !2
  br label %dopr_outch.exit14.i.i

dopr_outch.exit14.i.i:                            ; preds = %434, %430
  %436 = phi i64 [ %432, %434 ], [ %431, %430 ]
  %437 = add nsw i32 %padlen.260.i.i, -1
  %438 = icmp sgt i32 %padlen.260.i.i, 1
  br i1 %438, label %430, label %..preheader31.loopexit_crit_edge.i.i

; <label>:439                                     ; preds = %dopr_outch.exit13.i.i, %.lr.ph56.i.i
  %440 = phi i64 [ %.pre52.i, %.lr.ph56.i.i ], [ %445, %dopr_outch.exit13.i.i ]
  %padlen.354.i.i = phi i32 [ %padlen.3.ph.i.i, %.lr.ph56.i.i ], [ %446, %dopr_outch.exit13.i.i ]
  %441 = add i64 %440, 1
  %442 = icmp ult i64 %441, %count
  br i1 %442, label %443, label %dopr_outch.exit13.i.i

; <label>:443                                     ; preds = %439
  store i64 %441, i64* %currlen.i, align 8, !tbaa !5
  %444 = getelementptr inbounds i8* %str, i64 %440
  store i8 32, i8* %444, align 1, !tbaa !2
  br label %dopr_outch.exit13.i.i

dopr_outch.exit13.i.i:                            ; preds = %443, %439
  %445 = phi i64 [ %441, %443 ], [ %440, %439 ]
  %446 = add nsw i32 %padlen.354.i.i, -1
  %447 = icmp sgt i32 %padlen.354.i.i, 1
  br i1 %447, label %439, label %._crit_edge57.i.i

._crit_edge57.i.i:                                ; preds = %dopr_outch.exit13.i.i
  %448 = icmp sgt i32 %418, -2
  %smax84.i.i = select i1 %448, i32 %418, i32 -2
  %449 = sub i32 -2, %smax84.i.i
  %450 = add i32 %padlen.3.ph.i.i, 2
  %451 = add i32 %450, %total.1.ph.i.i
  %452 = add i32 %451, %smax84.i.i
  br label %.preheader31.thread.i.i

.preheader31.thread.i.i:                          ; preds = %._crit_edge57.i.i, %.preheader31.i.i
  %total.1.lcssa.i.i = phi i32 [ %452, %._crit_edge57.i.i ], [ %total.1.ph.i.i, %.preheader31.i.i ]
  %padlen.3.lcssa.i.i = phi i32 [ %449, %._crit_edge57.i.i ], [ %padlen.3.ph.i.i, %.preheader31.i.i ]
  %453 = icmp eq i32 %signvalue.2.ph.i.i, 0
  br i1 %453, label %.preheader30.i.i, label %454

; <label>:454                                     ; preds = %.preheader31.thread.i.i
  %455 = load i64* %currlen.i, align 8, !tbaa !5
  %456 = add i64 %455, 1
  %457 = icmp ult i64 %456, %count
  br i1 %457, label %458, label %dopr_outch.exit12.i.i

; <label>:458                                     ; preds = %454
  %459 = trunc i32 %signvalue.2.ph.i.i to i8
  store i64 %456, i64* %currlen.i, align 8, !tbaa !5
  %460 = getelementptr inbounds i8* %str, i64 %455
  store i8 %459, i8* %460, align 1, !tbaa !2
  br label %dopr_outch.exit12.i.i

dopr_outch.exit12.i.i:                            ; preds = %458, %454
  %461 = add nsw i32 %total.1.lcssa.i.i, 1
  br label %.preheader30.i.i

.preheader30.i.i:                                 ; preds = %dopr_outch.exit12.i.i, %.preheader31.thread.i.i, %.preheader32.i.i
  %padlen.3.lcssa91.i.i = phi i32 [ %padlen.3.lcssa.i.i, %.preheader31.thread.i.i ], [ %padlen.3.lcssa.i.i, %dopr_outch.exit12.i.i ], [ %padlen.2.ph.i.i, %.preheader32.i.i ]
  %total.2.ph.i.i = phi i32 [ %total.1.lcssa.i.i, %.preheader31.thread.i.i ], [ %461, %dopr_outch.exit12.i.i ], [ %total.0.ph.i.i, %.preheader32.i.i ]
  %462 = icmp sgt i32 %iplace.0..i.i, 0
  br i1 %462, label %.lr.ph51.i.i, label %478

.lr.ph51.i.i:                                     ; preds = %.preheader30.i.i
  %463 = xor i32 %iplace.0..i.i, -1
  %.pre53.i = load i64* %currlen.i, align 8, !tbaa !5
  br label %464

; <label>:464                                     ; preds = %dopr_outch.exit11.i.i, %.lr.ph51.i.i
  %465 = phi i64 [ %.pre53.i, %.lr.ph51.i.i ], [ %472, %dopr_outch.exit11.i.i ]
  %indvars.iv81.i.i = phi i64 [ %383, %.lr.ph51.i.i ], [ %indvars.iv.next82.i.i, %dopr_outch.exit11.i.i ]
  %indvars.iv.next82.i.i = add nsw i64 %indvars.iv81.i.i, -1
  %466 = add i64 %465, 1
  %467 = icmp ult i64 %466, %count
  br i1 %467, label %468, label %dopr_outch.exit11.i.i

; <label>:468                                     ; preds = %464
  %469 = getelementptr inbounds [20 x i8]* %iconvert.i.i, i64 0, i64 %indvars.iv.next82.i.i
  %470 = load i8* %469, align 1, !tbaa !2
  store i64 %466, i64* %currlen.i, align 8, !tbaa !5
  %471 = getelementptr inbounds i8* %str, i64 %465
  store i8 %470, i8* %471, align 1, !tbaa !2
  br label %dopr_outch.exit11.i.i

dopr_outch.exit11.i.i:                            ; preds = %468, %464
  %472 = phi i64 [ %466, %468 ], [ %465, %464 ]
  %473 = icmp sgt i64 %indvars.iv81.i.i, 1
  br i1 %473, label %464, label %._crit_edge52.i.i

._crit_edge52.i.i:                                ; preds = %dopr_outch.exit11.i.i
  %474 = icmp sgt i32 %463, -2
  %smax83.i.i = select i1 %474, i32 %463, i32 -2
  %475 = add i32 %iplace.0..i.i, 2
  %476 = add i32 %475, %smax83.i.i
  %477 = add i32 %476, %total.2.ph.i.i
  br label %478

; <label>:478                                     ; preds = %._crit_edge52.i.i, %.preheader30.i.i
  %total.2.lcssa.i.i = phi i32 [ %477, %._crit_edge52.i.i ], [ %total.2.ph.i.i, %.preheader30.i.i ]
  %479 = icmp sgt i32 %..max.i.i, 0
  br i1 %479, label %491, label %.preheader29.i.i

dopr_outch.exit10..preheader29.loopexit_crit_edge.i.i: ; preds = %dopr_outch.exit10.backedge.i.i
  %480 = icmp sgt i32 %499, -2
  %smax80.i.i = select i1 %480, i32 %499, i32 -2
  %481 = add i32 %fplace.0..i.i, 3
  %482 = add i32 %481, %smax80.i.i
  %483 = add i32 %482, %total.2.lcssa.i.i
  br label %.preheader29.i.i

.preheader29.i.i:                                 ; preds = %dopr_outch.exit10.preheader.i.i, %dopr_outch.exit10..preheader29.loopexit_crit_edge.i.i, %478
  %total.4.ph.i.i = phi i32 [ %total.2.lcssa.i.i, %478 ], [ %483, %dopr_outch.exit10..preheader29.loopexit_crit_edge.i.i ], [ %total.344.i.i, %dopr_outch.exit10.preheader.i.i ]
  %484 = icmp sgt i32 %..i.i, 0
  br i1 %484, label %.lr.ph42.i.i, label %.preheader.i.i

.lr.ph42.i.i:                                     ; preds = %.preheader29.i.i
  %485 = xor i32 %fplace.0..i.i, -1
  %486 = xor i32 %.max.i.i, -1
  %487 = icmp sgt i32 %486, -10
  %smax77.i.i = select i1 %487, i32 %486, i32 -10
  %488 = sub i32 %485, %smax77.i.i
  %489 = icmp sgt i32 %488, 0
  %smax78.i.i = select i1 %489, i32 %488, i32 0
  %490 = xor i32 %smax78.i.i, -1
  %.pre54.i = load i64* %currlen.i, align 8, !tbaa !5
  br label %515

; <label>:491                                     ; preds = %478
  %492 = load i64* %currlen.i, align 8, !tbaa !5
  %493 = add i64 %492, 1
  %494 = icmp ult i64 %493, %count
  br i1 %494, label %495, label %dopr_outch.exit10.preheader.i.i

; <label>:495                                     ; preds = %491
  store i64 %493, i64* %currlen.i, align 8, !tbaa !5
  %496 = getelementptr inbounds i8* %str, i64 %492
  store i8 46, i8* %496, align 1, !tbaa !2
  br label %dopr_outch.exit10.preheader.i.i

dopr_outch.exit10.preheader.i.i:                  ; preds = %495, %491
  %497 = phi i64 [ %493, %495 ], [ %492, %491 ]
  %total.344.i.i = add nsw i32 %total.2.lcssa.i.i, 1
  %498 = icmp sgt i32 %fplace.0..i.i, 0
  br i1 %498, label %.lr.ph47.i.i, label %.preheader29.i.i

.lr.ph47.i.i:                                     ; preds = %dopr_outch.exit10.preheader.i.i
  %499 = xor i32 %fplace.0..i.i, -1
  br label %500

; <label>:500                                     ; preds = %dopr_outch.exit10.backedge.i.i, %.lr.ph47.i.i
  %501 = phi i64 [ %497, %.lr.ph47.i.i ], [ %504, %dopr_outch.exit10.backedge.i.i ]
  %indvars.iv.i.i = phi i64 [ %396, %.lr.ph47.i.i ], [ %indvars.iv.next.i.i, %dopr_outch.exit10.backedge.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %502 = add i64 %501, 1
  %503 = icmp ult i64 %502, %count
  br i1 %503, label %506, label %dopr_outch.exit10.backedge.i.i

dopr_outch.exit10.backedge.i.i:                   ; preds = %506, %500
  %504 = phi i64 [ %502, %506 ], [ %501, %500 ]
  %505 = icmp sgt i64 %indvars.iv.i.i, 1
  br i1 %505, label %500, label %dopr_outch.exit10..preheader29.loopexit_crit_edge.i.i

; <label>:506                                     ; preds = %500
  %507 = getelementptr inbounds [20 x i8]* %fconvert.i.i, i64 0, i64 %indvars.iv.next.i.i
  %508 = load i8* %507, align 1, !tbaa !2
  store i64 %502, i64* %currlen.i, align 8, !tbaa !5
  %509 = getelementptr inbounds i8* %str, i64 %501
  store i8 %508, i8* %509, align 1, !tbaa !2
  br label %dopr_outch.exit10.backedge.i.i

..preheader_crit_edge.i.i:                        ; preds = %dopr_outch.exit8.i.i
  %510 = icmp sgt i32 %490, -2
  %smax79.i.i = select i1 %510, i32 %490, i32 -2
  %511 = add i32 %smax78.i.i, 2
  %512 = add i32 %511, %smax79.i.i
  %513 = add i32 %512, %total.4.ph.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %..preheader_crit_edge.i.i, %.preheader29.i.i
  %total.4.lcssa.i.i = phi i32 [ %513, %..preheader_crit_edge.i.i ], [ %total.4.ph.i.i, %.preheader29.i.i ]
  %514 = icmp slt i32 %padlen.3.lcssa91.i.i, 0
  br i1 %514, label %.lr.ph.i.i, label %fmtfp.exit.i

; <label>:515                                     ; preds = %dopr_outch.exit8.i.i, %.lr.ph42.i.i
  %516 = phi i64 [ %.pre54.i, %.lr.ph42.i.i ], [ %521, %dopr_outch.exit8.i.i ]
  %zpadlen.040.i.i = phi i32 [ %..i.i, %.lr.ph42.i.i ], [ %522, %dopr_outch.exit8.i.i ]
  %517 = add i64 %516, 1
  %518 = icmp ult i64 %517, %count
  br i1 %518, label %519, label %dopr_outch.exit8.i.i

; <label>:519                                     ; preds = %515
  store i64 %517, i64* %currlen.i, align 8, !tbaa !5
  %520 = getelementptr inbounds i8* %str, i64 %516
  store i8 48, i8* %520, align 1, !tbaa !2
  br label %dopr_outch.exit8.i.i

dopr_outch.exit8.i.i:                             ; preds = %519, %515
  %521 = phi i64 [ %517, %519 ], [ %516, %515 ]
  %522 = add nsw i32 %zpadlen.040.i.i, -1
  %523 = icmp sgt i32 %zpadlen.040.i.i, 1
  br i1 %523, label %515, label %..preheader_crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %dopr_outch.exit.i.i
  %padlen.438.i.i = phi i32 [ %529, %dopr_outch.exit.i.i ], [ %padlen.3.lcssa91.i.i, %.preheader.i.i ]
  %524 = load i64* %currlen.i, align 8, !tbaa !5
  %525 = add i64 %524, 1
  %526 = icmp ult i64 %525, %count
  br i1 %526, label %527, label %dopr_outch.exit.i.i

; <label>:527                                     ; preds = %.lr.ph.i.i
  store i64 %525, i64* %currlen.i, align 8, !tbaa !5
  %528 = getelementptr inbounds i8* %str, i64 %524
  store i8 32, i8* %528, align 1, !tbaa !2
  br label %dopr_outch.exit.i.i

dopr_outch.exit.i.i:                              ; preds = %527, %.lr.ph.i.i
  %529 = add nsw i32 %padlen.438.i.i, 1
  %530 = icmp slt i32 %padlen.438.i.i, -1
  br i1 %530, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %dopr_outch.exit.i.i
  %531 = sub i32 %total.4.lcssa.i.i, %padlen.3.lcssa91.i.i
  br label %fmtfp.exit.i

fmtfp.exit.i:                                     ; preds = %._crit_edge.i.i, %.preheader.i.i
  %total.5.lcssa.i.i = phi i32 [ %531, %._crit_edge.i.i ], [ %total.4.lcssa.i.i, %.preheader.i.i ]
  call void @llvm.lifetime.end(i64 20, i8* %11) #1
  call void @llvm.lifetime.end(i64 20, i8* %12) #1
  %532 = add nsw i32 %total.5.lcssa.i.i, %total.046.i
  br label %730

; <label>:533                                     ; preds = %112, %112
  %534 = icmp eq i32 %cflags.045.i, 3
  %535 = load i32* %10, align 4
  %536 = icmp ult i32 %535, 161
  br i1 %534, label %537, label %543

; <label>:537                                     ; preds = %533
  br i1 %536, label %538, label %540

; <label>:538                                     ; preds = %537
  %539 = add i32 %535, 16
  store i32 %539, i32* %10, align 4
  br label %730

; <label>:540                                     ; preds = %537
  %541 = load i8** %9, align 8
  %542 = getelementptr i8* %541, i64 8
  store i8* %542, i8** %9, align 8
  br label %730

; <label>:543                                     ; preds = %533
  br i1 %536, label %544, label %546

; <label>:544                                     ; preds = %543
  %545 = add i32 %535, 16
  store i32 %545, i32* %10, align 4
  br label %730

; <label>:546                                     ; preds = %543
  %547 = load i8** %9, align 8
  %548 = getelementptr i8* %547, i64 8
  store i8* %548, i8** %9, align 8
  br label %730

; <label>:549                                     ; preds = %112, %112
  %550 = icmp eq i32 %cflags.045.i, 3
  %551 = load i32* %10, align 4
  %552 = icmp ult i32 %551, 161
  br i1 %550, label %553, label %559

; <label>:553                                     ; preds = %549
  br i1 %552, label %554, label %556

; <label>:554                                     ; preds = %553
  %555 = add i32 %551, 16
  store i32 %555, i32* %10, align 4
  br label %730

; <label>:556                                     ; preds = %553
  %557 = load i8** %9, align 8
  %558 = getelementptr i8* %557, i64 8
  store i8* %558, i8** %9, align 8
  br label %730

; <label>:559                                     ; preds = %549
  br i1 %552, label %560, label %562

; <label>:560                                     ; preds = %559
  %561 = add i32 %551, 16
  store i32 %561, i32* %10, align 4
  br label %730

; <label>:562                                     ; preds = %559
  %563 = load i8** %9, align 8
  %564 = getelementptr i8* %563, i64 8
  store i8* %564, i8** %9, align 8
  br label %730

; <label>:565                                     ; preds = %112
  %566 = load i32* %7, align 4
  %567 = icmp ult i32 %566, 41
  br i1 %567, label %568, label %573

; <label>:568                                     ; preds = %565
  %569 = load i8** %8, align 8
  %570 = sext i32 %566 to i64
  %571 = getelementptr i8* %569, i64 %570
  %572 = add i32 %566, 8
  store i32 %572, i32* %7, align 4
  br label %576

; <label>:573                                     ; preds = %565
  %574 = load i8** %9, align 8
  %575 = getelementptr i8* %574, i64 8
  store i8* %575, i8** %9, align 8
  br label %576

; <label>:576                                     ; preds = %573, %568
  %.in7.i = phi i8* [ %571, %568 ], [ %574, %573 ]
  %577 = load i64* %currlen.i, align 8, !tbaa !5
  %578 = add i64 %577, 1
  %579 = icmp ult i64 %578, %count
  br i1 %579, label %580, label %dopr_outch.exit38.i

; <label>:580                                     ; preds = %576
  %581 = bitcast i8* %.in7.i to i32*
  %582 = load i32* %581, align 4
  %583 = trunc i32 %582 to i8
  store i64 %578, i64* %currlen.i, align 8, !tbaa !5
  %584 = getelementptr inbounds i8* %str, i64 %577
  store i8 %583, i8* %584, align 1, !tbaa !2
  br label %dopr_outch.exit38.i

dopr_outch.exit38.i:                              ; preds = %580, %576
  %585 = add nsw i32 %total.046.i, 1
  br label %730

; <label>:586                                     ; preds = %112
  %587 = load i32* %7, align 4
  %588 = icmp ult i32 %587, 41
  br i1 %588, label %589, label %594

; <label>:589                                     ; preds = %586
  %590 = load i8** %8, align 8
  %591 = sext i32 %587 to i64
  %592 = getelementptr i8* %590, i64 %591
  %593 = add i32 %587, 8
  store i32 %593, i32* %7, align 4
  br label %597

; <label>:594                                     ; preds = %586
  %595 = load i8** %9, align 8
  %596 = getelementptr i8* %595, i64 8
  store i8* %596, i8** %9, align 8
  br label %597

; <label>:597                                     ; preds = %594, %589
  %.in6.i = phi i8* [ %592, %589 ], [ %595, %594 ]
  %598 = bitcast i8* %.in6.i to i8**
  %599 = load i8** %598, align 8
  %600 = icmp eq i8* %599, null
  %.value.i.i = select i1 %600, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* %599
  br label %601

; <label>:601                                     ; preds = %601, %597
  %indvars.iv.i27.i = phi i64 [ %indvars.iv.next.i28.i, %601 ], [ 0, %597 ]
  %602 = getelementptr inbounds i8* %.value.i.i, i64 %indvars.iv.i27.i
  %603 = load i8* %602, align 1, !tbaa !2
  %604 = icmp eq i8 %603, 0
  %indvars.iv.next.i28.i = add nuw i64 %indvars.iv.i27.i, 1
  br i1 %604, label %605, label %601

; <label>:605                                     ; preds = %601
  %606 = trunc i64 %indvars.iv.i27.i to i32
  %607 = icmp sgt i32 %max.042.i, -1
  %608 = icmp sgt i32 %606, %max.042.i
  %or.cond.i29.i = and i1 %607, %608
  %strln.1.i.i = select i1 %or.cond.i29.i, i32 %max.042.i, i32 %606
  %609 = sub nsw i32 %min.041.i, %strln.1.i.i
  %610 = icmp slt i32 %609, 0
  %..i30.i = select i1 %610, i32 0, i32 %609
  %611 = and i32 %flags.044.i, 1
  %612 = icmp eq i32 %611, 0
  %613 = sub nsw i32 0, %..i30.i
  %...i.i = select i1 %612, i32 %..i30.i, i32 %613
  %614 = icmp sgt i32 %...i.i, 0
  br i1 %614, label %.lr.ph16.i.i, label %.preheader.i32.i

.lr.ph16.i.i:                                     ; preds = %605
  %615 = xor i32 %...i.i, -1
  %.pre.i = load i64* %currlen.i, align 8, !tbaa !5
  br label %623

..preheader_crit_edge.i31.i:                      ; preds = %dopr_outch.exit.i33.i
  %616 = icmp sgt i32 %615, -2
  %smax23.i.i = select i1 %616, i32 %615, i32 -2
  %617 = sub i32 -2, %smax23.i.i
  %618 = add i32 %...i.i, 2
  %619 = add i32 %618, %smax23.i.i
  br label %.preheader.i32.i

.preheader.i32.i:                                 ; preds = %..preheader_crit_edge.i31.i, %605
  %total.0.lcssa.i.i = phi i32 [ %619, %..preheader_crit_edge.i31.i ], [ 0, %605 ]
  %padlen.0.lcssa.i.i = phi i32 [ %617, %..preheader_crit_edge.i31.i ], [ %...i.i, %605 ]
  %620 = load i8* %.value.i.i, align 1, !tbaa !2
  %621 = icmp eq i8 %620, 0
  br i1 %621, label %.critedge.preheader.i.i, label %.lr.ph10.i.i

.lr.ph10.i.i:                                     ; preds = %.preheader.i32.i
  %622 = icmp slt i32 %max.042.i, 0
  br label %632

; <label>:623                                     ; preds = %dopr_outch.exit.i33.i, %.lr.ph16.i.i
  %624 = phi i64 [ %.pre.i, %.lr.ph16.i.i ], [ %629, %dopr_outch.exit.i33.i ]
  %padlen.014.i.i = phi i32 [ %...i.i, %.lr.ph16.i.i ], [ %630, %dopr_outch.exit.i33.i ]
  %625 = add i64 %624, 1
  %626 = icmp ult i64 %625, %count
  br i1 %626, label %627, label %dopr_outch.exit.i33.i

; <label>:627                                     ; preds = %623
  store i64 %625, i64* %currlen.i, align 8, !tbaa !5
  %628 = getelementptr inbounds i8* %str, i64 %624
  store i8 32, i8* %628, align 1, !tbaa !2
  br label %dopr_outch.exit.i33.i

dopr_outch.exit.i33.i:                            ; preds = %627, %623
  %629 = phi i64 [ %625, %627 ], [ %624, %623 ]
  %630 = add nsw i32 %padlen.014.i.i, -1
  %631 = icmp sgt i32 %padlen.014.i.i, 1
  br i1 %631, label %623, label %..preheader_crit_edge.i31.i

; <label>:632                                     ; preds = %dopr_outch.exit4.i.i, %.lr.ph10.i.i
  %633 = phi i8 [ %620, %.lr.ph10.i.i ], [ %644, %dopr_outch.exit4.i.i ]
  %total.19.i.i = phi i32 [ %total.0.lcssa.i.i, %.lr.ph10.i.i ], [ %642, %dopr_outch.exit4.i.i ]
  %cnt.08.i.i = phi i32 [ 0, %.lr.ph10.i.i ], [ %643, %dopr_outch.exit4.i.i ]
  %.17.i.i = phi i8* [ %.value.i.i, %.lr.ph10.i.i ], [ %636, %dopr_outch.exit4.i.i ]
  %634 = icmp slt i32 %cnt.08.i.i, %max.042.i
  %or.cond2.i.i = or i1 %622, %634
  br i1 %or.cond2.i.i, label %.critedge1.i36.i, label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %dopr_outch.exit4.i.i, %632, %.preheader.i32.i
  %total.1.lcssa.i34.i = phi i32 [ %total.0.lcssa.i.i, %.preheader.i32.i ], [ %total.19.i.i, %632 ], [ %642, %dopr_outch.exit4.i.i ]
  %635 = icmp slt i32 %padlen.0.lcssa.i.i, 0
  br i1 %635, label %.lr.ph.i35.i, label %fmtstr.exit.i

.critedge1.i36.i:                                 ; preds = %632
  %636 = getelementptr inbounds i8* %.17.i.i, i64 1
  %637 = load i64* %currlen.i, align 8, !tbaa !5
  %638 = add i64 %637, 1
  %639 = icmp ult i64 %638, %count
  br i1 %639, label %640, label %dopr_outch.exit4.i.i

; <label>:640                                     ; preds = %.critedge1.i36.i
  store i64 %638, i64* %currlen.i, align 8, !tbaa !5
  %641 = getelementptr inbounds i8* %str, i64 %637
  store i8 %633, i8* %641, align 1, !tbaa !2
  br label %dopr_outch.exit4.i.i

dopr_outch.exit4.i.i:                             ; preds = %640, %.critedge1.i36.i
  %642 = add nsw i32 %total.19.i.i, 1
  %643 = add nuw nsw i32 %cnt.08.i.i, 1
  %644 = load i8* %636, align 1, !tbaa !2
  %645 = icmp eq i8 %644, 0
  br i1 %645, label %.critedge.preheader.i.i, label %632

.lr.ph.i35.i:                                     ; preds = %.critedge.preheader.i.i, %dopr_outch.exit3.i.i
  %padlen.15.i.i = phi i32 [ %651, %dopr_outch.exit3.i.i ], [ %padlen.0.lcssa.i.i, %.critedge.preheader.i.i ]
  %646 = load i64* %currlen.i, align 8, !tbaa !5
  %647 = add i64 %646, 1
  %648 = icmp ult i64 %647, %count
  br i1 %648, label %649, label %dopr_outch.exit3.i.i

; <label>:649                                     ; preds = %.lr.ph.i35.i
  store i64 %647, i64* %currlen.i, align 8, !tbaa !5
  %650 = getelementptr inbounds i8* %str, i64 %646
  store i8 32, i8* %650, align 1, !tbaa !2
  br label %dopr_outch.exit3.i.i

dopr_outch.exit3.i.i:                             ; preds = %649, %.lr.ph.i35.i
  %651 = add nsw i32 %padlen.15.i.i, 1
  %652 = icmp slt i32 %padlen.15.i.i, -1
  br i1 %652, label %.lr.ph.i35.i, label %.critedge._crit_edge.i.i

.critedge._crit_edge.i.i:                         ; preds = %dopr_outch.exit3.i.i
  %653 = sub i32 %total.1.lcssa.i34.i, %padlen.0.lcssa.i.i
  br label %fmtstr.exit.i

fmtstr.exit.i:                                    ; preds = %.critedge._crit_edge.i.i, %.critedge.preheader.i.i
  %total.2.lcssa.i37.i = phi i32 [ %653, %.critedge._crit_edge.i.i ], [ %total.1.lcssa.i34.i, %.critedge.preheader.i.i ]
  %654 = add nsw i32 %total.2.lcssa.i37.i, %total.046.i
  br label %730

; <label>:655                                     ; preds = %112
  %656 = load i32* %7, align 4
  %657 = icmp ult i32 %656, 41
  br i1 %657, label %658, label %663

; <label>:658                                     ; preds = %655
  %659 = load i8** %8, align 8
  %660 = sext i32 %656 to i64
  %661 = getelementptr i8* %659, i64 %660
  %662 = add i32 %656, 8
  store i32 %662, i32* %7, align 4
  br label %666

; <label>:663                                     ; preds = %655
  %664 = load i8** %9, align 8
  %665 = getelementptr i8* %664, i64 8
  store i8* %665, i8** %9, align 8
  br label %666

; <label>:666                                     ; preds = %663, %658
  %.in5.i = phi i8* [ %661, %658 ], [ %664, %663 ]
  %667 = bitcast i8* %.in5.i to i8**
  %668 = load i8** %667, align 8
  %669 = ptrtoint i8* %668 to i64
  %670 = call fastcc i32 @fmtint(i8* %str, i64* %currlen.i, i64 %count, i64 %669, i32 16, i32 %min.041.i, i32 %max.042.i, i32 %flags.044.i) #2
  %671 = add nsw i32 %670, %total.046.i
  br label %730

; <label>:672                                     ; preds = %112
  %673 = icmp eq i32 %cflags.045.i, 1
  br i1 %673, label %674, label %690

; <label>:674                                     ; preds = %672
  %675 = load i32* %7, align 4
  %676 = icmp ult i32 %675, 41
  br i1 %676, label %677, label %682

; <label>:677                                     ; preds = %674
  %678 = load i8** %8, align 8
  %679 = sext i32 %675 to i64
  %680 = getelementptr i8* %678, i64 %679
  %681 = add i32 %675, 8
  store i32 %681, i32* %7, align 4
  br label %685

; <label>:682                                     ; preds = %674
  %683 = load i8** %9, align 8
  %684 = getelementptr i8* %683, i64 8
  store i8* %684, i8** %9, align 8
  br label %685

; <label>:685                                     ; preds = %682, %677
  %.in4.i = phi i8* [ %680, %677 ], [ %683, %682 ]
  %686 = bitcast i8* %.in4.i to i16**
  %687 = load i16** %686, align 8
  %688 = load i64* %currlen.i, align 8, !tbaa !5
  %689 = trunc i64 %688 to i16
  store i16 %689, i16* %687, align 2, !tbaa !7
  br label %730

; <label>:690                                     ; preds = %672
  %691 = icmp eq i32 %cflags.045.i, 2
  %692 = load i32* %7, align 4
  %693 = icmp ult i32 %692, 41
  br i1 %691, label %694, label %707

; <label>:694                                     ; preds = %690
  br i1 %693, label %695, label %700

; <label>:695                                     ; preds = %694
  %696 = load i8** %8, align 8
  %697 = sext i32 %692 to i64
  %698 = getelementptr i8* %696, i64 %697
  %699 = add i32 %692, 8
  store i32 %699, i32* %7, align 4
  br label %703

; <label>:700                                     ; preds = %694
  %701 = load i8** %9, align 8
  %702 = getelementptr i8* %701, i64 8
  store i8* %702, i8** %9, align 8
  br label %703

; <label>:703                                     ; preds = %700, %695
  %.in3.i = phi i8* [ %698, %695 ], [ %701, %700 ]
  %704 = bitcast i8* %.in3.i to i64**
  %705 = load i64** %704, align 8
  %706 = load i64* %currlen.i, align 8, !tbaa !5
  store i64 %706, i64* %705, align 8, !tbaa !5
  br label %730

; <label>:707                                     ; preds = %690
  br i1 %693, label %708, label %713

; <label>:708                                     ; preds = %707
  %709 = load i8** %8, align 8
  %710 = sext i32 %692 to i64
  %711 = getelementptr i8* %709, i64 %710
  %712 = add i32 %692, 8
  store i32 %712, i32* %7, align 4
  br label %716

; <label>:713                                     ; preds = %707
  %714 = load i8** %9, align 8
  %715 = getelementptr i8* %714, i64 8
  store i8* %715, i8** %9, align 8
  br label %716

; <label>:716                                     ; preds = %713, %708
  %.in.i = phi i8* [ %711, %708 ], [ %714, %713 ]
  %717 = bitcast i8* %.in.i to i32**
  %718 = load i32** %717, align 8
  %719 = load i64* %currlen.i, align 8, !tbaa !5
  %720 = trunc i64 %719 to i32
  store i32 %720, i32* %718, align 4, !tbaa !9
  br label %730

; <label>:721                                     ; preds = %112
  %722 = load i64* %currlen.i, align 8, !tbaa !5
  %723 = add i64 %722, 1
  %724 = icmp ult i64 %723, %count
  br i1 %724, label %725, label %dopr_outch.exit26.i

; <label>:725                                     ; preds = %721
  store i64 %723, i64* %currlen.i, align 8, !tbaa !5
  %726 = getelementptr inbounds i8* %str, i64 %722
  store i8 %ch.047.i, i8* %726, align 1, !tbaa !2
  br label %dopr_outch.exit26.i

dopr_outch.exit26.i:                              ; preds = %725, %721
  %727 = add nsw i32 %total.046.i, 1
  br label %730

; <label>:728                                     ; preds = %112
  %729 = getelementptr inbounds i8* %.048.i, i64 1
  br label %730

; <label>:730                                     ; preds = %728, %dopr_outch.exit26.i, %716, %703, %685, %666, %fmtstr.exit.i, %dopr_outch.exit38.i, %562, %560, %556, %554, %546, %544, %540, %538, %fmtfp.exit.i, %311, %259, %209, %159, %112
  %total.2.i = phi i32 [ %total.046.i, %112 ], [ %total.046.i, %728 ], [ %727, %dopr_outch.exit26.i ], [ %total.046.i, %685 ], [ %total.046.i, %703 ], [ %total.046.i, %716 ], [ %671, %666 ], [ %654, %fmtstr.exit.i ], [ %585, %dopr_outch.exit38.i ], [ %532, %fmtfp.exit.i ], [ %313, %311 ], [ %261, %259 ], [ %211, %209 ], [ %161, %159 ], [ %total.046.i, %540 ], [ %total.046.i, %538 ], [ %total.046.i, %546 ], [ %total.046.i, %544 ], [ %total.046.i, %556 ], [ %total.046.i, %554 ], [ %total.046.i, %562 ], [ %total.046.i, %560 ]
  %.2.i = phi i8* [ %.048.i, %112 ], [ %729, %728 ], [ %.048.i, %dopr_outch.exit26.i ], [ %.048.i, %685 ], [ %.048.i, %703 ], [ %.048.i, %716 ], [ %.048.i, %666 ], [ %.048.i, %fmtstr.exit.i ], [ %.048.i, %dopr_outch.exit38.i ], [ %.048.i, %fmtfp.exit.i ], [ %.048.i, %311 ], [ %.048.i, %259 ], [ %.048.i, %209 ], [ %.048.i, %159 ], [ %.048.i, %540 ], [ %.048.i, %538 ], [ %.048.i, %546 ], [ %.048.i, %544 ], [ %.048.i, %556 ], [ %.048.i, %554 ], [ %.048.i, %562 ], [ %.048.i, %560 ]
  %731 = getelementptr inbounds i8* %.2.i, i64 1
  %732 = load i8* %.2.i, align 1, !tbaa !2
  br label %.backedge.thread.i

; <label>:733                                     ; preds = %.backedge.thread.i
  br i1 %1, label %dopr.exit, label %734

; <label>:734                                     ; preds = %733
  %735 = load i64* %currlen.i, align 8, !tbaa !5
  %736 = add i64 %count, -1
  %737 = icmp ult i64 %735, %736
  br i1 %737, label %738, label %740

; <label>:738                                     ; preds = %734
  %739 = getelementptr inbounds i8* %str, i64 %735
  store i8 0, i8* %739, align 1, !tbaa !2
  br label %dopr.exit

; <label>:740                                     ; preds = %734
  %741 = getelementptr inbounds i8* %str, i64 %736
  store i8 0, i8* %741, align 1, !tbaa !2
  br label %dopr.exit

dopr.exit:                                        ; preds = %733, %738, %740
  call void @llvm.lifetime.end(i64 8, i8* %4)
  ret i32 %total.046.i
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_snprintf(i8* %str, i64 %count, i8* readonly %fmt, ...) #0 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %1 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %2)
  %3 = call i32 @Util_vsnprintf(i8* %str, i64 %count, i8* %fmt, %struct.__va_list_tag* %1) #3
  call void @llvm.va_end(i8* %2)
  ret i32 %3
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @fmtint(i8* nocapture %buffer, i64* nocapture %currlen, i64 %maxlen, i64 %value, i32 %base, i32 %min, i32 %max, i32 %flags) #0 {
  %convert = alloca [20 x i8], align 16
  %1 = icmp slt i32 %max, 0
  %.max = select i1 %1, i32 0, i32 %max
  %2 = and i32 %flags, 64
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

; <label>:4                                       ; preds = %0
  %5 = icmp slt i64 %value, 0
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %4
  %7 = sub nsw i64 0, %value
  br label %14

; <label>:8                                       ; preds = %4
  %9 = and i32 %flags, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %8
  %12 = shl i32 %flags, 3
  %13 = and i32 %12, 32
  br label %14

; <label>:14                                      ; preds = %11, %8, %0, %6
  %signvalue.0 = phi i32 [ 0, %0 ], [ 45, %6 ], [ 43, %8 ], [ %13, %11 ]
  %uvalue.0 = phi i64 [ %value, %0 ], [ %7, %6 ], [ %value, %8 ], [ %value, %11 ]
  %15 = and i32 %flags, 32
  %16 = zext i32 %base to i64
  %17 = icmp ne i32 %15, 0
  %18 = select i1 %17, i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str1, i64 0, i64 0)
  br label %19

; <label>:19                                      ; preds = %14, %19
  %indvars.iv35 = phi i64 [ 0, %14 ], [ %indvars.iv.next36, %19 ]
  %uvalue.1 = phi i64 [ %uvalue.0, %14 ], [ %24, %19 ]
  %20 = urem i64 %uvalue.1, %16
  %21 = getelementptr inbounds i8* %18, i64 %20
  %22 = load i8* %21, align 1, !tbaa !2
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %23 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %indvars.iv35
  store i8 %22, i8* %23, align 1, !tbaa !2
  %24 = udiv i64 %uvalue.1, %16
  %25 = icmp ne i64 %24, 0
  %26 = icmp slt i64 %indvars.iv.next36, 20
  %or.cond4 = and i1 %26, %25
  br i1 %or.cond4, label %19, label %.critedge

.critedge:                                        ; preds = %19
  %27 = trunc i64 %indvars.iv35 to i32
  %28 = trunc i64 %indvars.iv.next36 to i32
  %29 = icmp eq i32 %28, 20
  %place.0. = select i1 %29, i32 %27, i32 %28
  %30 = sext i32 %place.0. to i64
  %31 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %30
  store i8 0, i8* %31, align 1, !tbaa !2
  %32 = sub nsw i32 %.max, %place.0.
  %33 = icmp sge i32 %.max, %place.0.
  %34 = select i1 %33, i32 %.max, i32 %place.0.
  %35 = sub nsw i32 %min, %34
  %36 = icmp ne i32 %signvalue.0, 0
  %.neg = sext i1 %36 to i32
  %37 = add i32 %35, %.neg
  %38 = icmp slt i32 %32, 0
  %zpadlen.0 = select i1 %38, i32 0, i32 %32
  %39 = icmp slt i32 %37, 0
  %.6 = select i1 %39, i32 0, i32 %37
  %40 = and i32 %flags, 16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

; <label>:42                                      ; preds = %.critedge
  %43 = icmp sge i32 %zpadlen.0, %.6
  %44 = select i1 %43, i32 %zpadlen.0, i32 %.6
  br label %45

; <label>:45                                      ; preds = %.critedge, %42
  %spadlen.1 = phi i32 [ 0, %42 ], [ %.6, %.critedge ]
  %zpadlen.1 = phi i32 [ %44, %42 ], [ %zpadlen.0, %.critedge ]
  %46 = and i32 %flags, 1
  %47 = icmp eq i32 %46, 0
  %48 = sub nsw i32 0, %spadlen.1
  %spadlen.1. = select i1 %47, i32 %spadlen.1, i32 %48
  %49 = icmp sgt i32 %spadlen.1., 0
  br i1 %49, label %.lr.ph23, label %63

.lr.ph23:                                         ; preds = %45
  %50 = xor i32 %spadlen.1., -1
  %51 = icmp sgt i32 %50, -2
  %smax34 = select i1 %51, i32 %50, i32 -2
  %52 = add i32 %spadlen.1., %smax34
  br label %53

; <label>:53                                      ; preds = %.lr.ph23, %dopr_outch.exit
  %spadlen.220 = phi i32 [ %spadlen.1., %.lr.ph23 ], [ %59, %dopr_outch.exit ]
  %54 = load i64* %currlen, align 8, !tbaa !5
  %55 = add i64 %54, 1
  %56 = icmp ult i64 %55, %maxlen
  br i1 %56, label %57, label %dopr_outch.exit

; <label>:57                                      ; preds = %53
  store i64 %55, i64* %currlen, align 8, !tbaa !5
  %58 = getelementptr inbounds i8* %buffer, i64 %54
  store i8 32, i8* %58, align 1, !tbaa !2
  br label %dopr_outch.exit

dopr_outch.exit:                                  ; preds = %53, %57
  %59 = add nsw i32 %spadlen.220, -1
  %60 = icmp sgt i32 %spadlen.220, 1
  br i1 %60, label %53, label %._crit_edge24

._crit_edge24:                                    ; preds = %dopr_outch.exit
  %61 = sub i32 -2, %smax34
  %62 = add i32 %52, 2
  br label %63

; <label>:63                                      ; preds = %._crit_edge24, %45
  %total.0.lcssa = phi i32 [ %62, %._crit_edge24 ], [ 0, %45 ]
  %spadlen.2.lcssa = phi i32 [ %61, %._crit_edge24 ], [ %spadlen.1., %45 ]
  br i1 %36, label %64, label %72

; <label>:64                                      ; preds = %63
  %65 = load i64* %currlen, align 8, !tbaa !5
  %66 = add i64 %65, 1
  %67 = icmp ult i64 %66, %maxlen
  br i1 %67, label %68, label %dopr_outch.exit10

; <label>:68                                      ; preds = %64
  %69 = trunc i32 %signvalue.0 to i8
  store i64 %66, i64* %currlen, align 8, !tbaa !5
  %70 = getelementptr inbounds i8* %buffer, i64 %65
  store i8 %69, i8* %70, align 1, !tbaa !2
  br label %dopr_outch.exit10

dopr_outch.exit10:                                ; preds = %64, %68
  %71 = add nsw i32 %total.0.lcssa, 1
  br label %72

; <label>:72                                      ; preds = %dopr_outch.exit10, %63
  %total.1 = phi i32 [ %71, %dopr_outch.exit10 ], [ %total.0.lcssa, %63 ]
  %73 = icmp sgt i32 %zpadlen.1, 0
  br i1 %73, label %.preheader12, label %.preheader11

.preheader12:                                     ; preds = %72
  %74 = add i32 %zpadlen.1, %total.1
  %75 = xor i32 %zpadlen.1, -1
  %76 = icmp sgt i32 %75, -2
  %smax33 = select i1 %76, i32 %75, i32 -2
  %77 = add i32 %74, %smax33
  br label %78

; <label>:78                                      ; preds = %.preheader12, %dopr_outch.exit9
  %zpadlen.2 = phi i32 [ %84, %dopr_outch.exit9 ], [ %zpadlen.1, %.preheader12 ]
  %79 = load i64* %currlen, align 8, !tbaa !5
  %80 = add i64 %79, 1
  %81 = icmp ult i64 %80, %maxlen
  br i1 %81, label %82, label %dopr_outch.exit9

; <label>:82                                      ; preds = %78
  store i64 %80, i64* %currlen, align 8, !tbaa !5
  %83 = getelementptr inbounds i8* %buffer, i64 %79
  store i8 48, i8* %83, align 1, !tbaa !2
  br label %dopr_outch.exit9

dopr_outch.exit9:                                 ; preds = %78, %82
  %84 = add nsw i32 %zpadlen.2, -1
  %.old1 = icmp sgt i32 %zpadlen.2, 1
  br i1 %.old1, label %78, label %.preheader11.loopexit

.preheader11.loopexit:                            ; preds = %dopr_outch.exit9
  %85 = add i32 %77, 2
  br label %.preheader11

.preheader11:                                     ; preds = %.preheader11.loopexit, %72
  %total.3.ph = phi i32 [ %total.1, %72 ], [ %85, %.preheader11.loopexit ]
  %86 = icmp sgt i32 %place.0., 0
  br i1 %86, label %.lr.ph18, label %.preheader

.lr.ph18:                                         ; preds = %.preheader11
  %87 = add i32 %place.0., %total.3.ph
  %88 = xor i32 %place.0., -1
  %89 = icmp sgt i32 %88, -2
  %smax32 = select i1 %89, i32 %88, i32 -2
  %90 = add i32 %87, %smax32
  br label %93

..preheader_crit_edge:                            ; preds = %dopr_outch.exit8
  %91 = add i32 %90, 2
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader11
  %total.3.lcssa = phi i32 [ %91, %..preheader_crit_edge ], [ %total.3.ph, %.preheader11 ]
  %92 = icmp slt i32 %spadlen.2.lcssa, 0
  br i1 %92, label %.lr.ph, label %110

; <label>:93                                      ; preds = %.lr.ph18, %dopr_outch.exit8
  %indvars.iv = phi i64 [ %30, %.lr.ph18 ], [ %indvars.iv.next, %dopr_outch.exit8 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %94 = load i64* %currlen, align 8, !tbaa !5
  %95 = add i64 %94, 1
  %96 = icmp ult i64 %95, %maxlen
  br i1 %96, label %97, label %dopr_outch.exit8

; <label>:97                                      ; preds = %93
  %98 = getelementptr inbounds [20 x i8]* %convert, i64 0, i64 %indvars.iv.next
  %99 = load i8* %98, align 1, !tbaa !2
  store i64 %95, i64* %currlen, align 8, !tbaa !5
  %100 = getelementptr inbounds i8* %buffer, i64 %94
  store i8 %99, i8* %100, align 1, !tbaa !2
  br label %dopr_outch.exit8

dopr_outch.exit8:                                 ; preds = %93, %97
  %101 = icmp sgt i64 %indvars.iv, 1
  br i1 %101, label %93, label %..preheader_crit_edge

.lr.ph:                                           ; preds = %.preheader, %dopr_outch.exit7
  %spadlen.314 = phi i32 [ %107, %dopr_outch.exit7 ], [ %spadlen.2.lcssa, %.preheader ]
  %102 = load i64* %currlen, align 8, !tbaa !5
  %103 = add i64 %102, 1
  %104 = icmp ult i64 %103, %maxlen
  br i1 %104, label %105, label %dopr_outch.exit7

; <label>:105                                     ; preds = %.lr.ph
  store i64 %103, i64* %currlen, align 8, !tbaa !5
  %106 = getelementptr inbounds i8* %buffer, i64 %102
  store i8 32, i8* %106, align 1, !tbaa !2
  br label %dopr_outch.exit7

dopr_outch.exit7:                                 ; preds = %.lr.ph, %105
  %107 = add nsw i32 %spadlen.314, 1
  %108 = icmp slt i32 %spadlen.314, -1
  br i1 %108, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %dopr_outch.exit7
  %109 = sub i32 %total.3.lcssa, %spadlen.2.lcssa
  br label %110

; <label>:110                                     ; preds = %._crit_edge, %.preheader
  %total.4.lcssa = phi i32 [ %109, %._crit_edge ], [ %total.3.lcssa, %.preheader ]
  ret i32 %total.4.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !3, i64 0}

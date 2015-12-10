; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ffscanf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str3 = private unnamed_addr constant [28 x i8] c"unknown ffscanf format '%c'\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !133), !dbg !134
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !133), !dbg !135
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !136
  %2 = load i32* %1, align 4, !dbg !138, !tbaa !139
  %3 = add nsw i32 %2, -1, !dbg !138
  store i32 %3, i32* %1, align 4, !dbg !138, !tbaa !139
  %4 = icmp sgt i32 %2, 0, !dbg !148
  br i1 %4, label %._crit_edge, label %5, !dbg !149

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !150
  br label %10, !dbg !149

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !151
  %7 = load i32* %6, align 4, !dbg !151, !tbaa !152
  %8 = icmp sle i32 %2, %7, !dbg !153
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !154
  %or.cond = or i1 %9, %8, !dbg !155
  br i1 %or.cond, label %15, label %10, !dbg !155

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !150
  %11 = trunc i32 %_c to i8, !dbg !156
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !157
  %13 = load i8** %12, align 8, !dbg !158, !tbaa !159
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !158
  store i8* %14, i8** %12, align 8, !dbg !158, !tbaa !159
  store i8 %11, i8* %13, align 1, !dbg !160, !tbaa !161
  br label %17, !dbg !162

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !163
  br label %17, !dbg !164

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !165
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !133), !dbg !166
  %1 = icmp sgt i32 %__signo, 32, !dbg !167
  br i1 %1, label %5, label %2, !dbg !168

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !169
  %4 = shl i32 1, %3, !dbg !170
  br label %5, !dbg !168

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !168
  ret i32 %6, !dbg !171
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ffscanf(%struct.__sFILE* nocapture %in, i8* %fmt, ...) #4 {
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [4096 x i8], align 16
  %dval = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %in, i64 0, metadata !85, metadata !133), !dbg !172
  tail call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !86, metadata !133), !dbg !173
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !87, metadata !133), !dbg !174
  %1 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0, !dbg !175
  call void @llvm.lifetime.start(i64 4096, i8* %1) #5, !dbg !175
  tail call void @llvm.dbg.declare(metadata [4096 x i8]* %buf, metadata !102, metadata !133), !dbg !176
  %2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !177
  call void @llvm.va_start(i8* %2), !dbg !177
  call void @llvm.dbg.value(metadata i8* %fmt, i64 0, metadata !101, metadata !133), !dbg !178
  %3 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !179
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !179
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !179
  br label %6, !dbg !186

; <label>:6                                       ; preds = %99, %0
  %storemerge = phi i8* [ %fmt, %0 ], [ %101, %99 ]
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !115, metadata !133), !dbg !187
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %storemerge, i64 0, metadata !101, metadata !133), !dbg !178
  %7 = load i8* %storemerge, align 1, !dbg !189, !tbaa !161
  switch i8 %7, label %96 [
    i8 0, label %102
    i8 37, label %8
  ], !dbg !190

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds i8* %storemerge, i64 1, !dbg !191
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !115, metadata !133), !dbg !187
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %9, i64 0, metadata !101, metadata !133), !dbg !178
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !116, metadata !133), !dbg !192
  %10 = load i8* %9, align 1, !dbg !193, !tbaa !161
  %11 = sext i8 %10 to i32, !dbg !193
  %isdigittmp1.i = add nsw i32 %11, -48, !dbg !194
  %isdigit2.i = icmp ult i32 %isdigittmp1.i, 10, !dbg !194
  br i1 %isdigit2.i, label %.lr.ph.i, label %._crit_edge, !dbg !195

.lr.ph.i:                                         ; preds = %8, %.lr.ph.i
  %12 = phi i8 [ %20, %.lr.ph.i ], [ %10, %8 ], !dbg !196
  %13 = phi i8* [ %14, %.lr.ph.i ], [ %storemerge, %8 ], !dbg !197
  %14 = phi i8* [ %16, %.lr.ph.i ], [ %9, %8 ], !dbg !197
  %fld.03.i = phi i32 [ %19, %.lr.ph.i ], [ 0, %8 ], !dbg !197
  %15 = mul nsw i32 %fld.03.i, 10, !dbg !196
  %16 = getelementptr inbounds i8* %13, i64 2, !dbg !198
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !115, metadata !133), !dbg !187
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !101, metadata !133), !dbg !178
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !101, metadata !133), !dbg !178
  %17 = sext i8 %12 to i32, !dbg !199
  %18 = add i32 %15, -48, !dbg !200
  %19 = add i32 %18, %17, !dbg !201
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !116, metadata !133), !dbg !192
  %20 = load i8* %16, align 1, !dbg !193, !tbaa !161
  %21 = sext i8 %20 to i32, !dbg !193
  %isdigittmp.i = add nsw i32 %21, -48, !dbg !194
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10, !dbg !194
  br i1 %isdigit.i, label %.lr.ph.i, label %getfld.exit, !dbg !195

getfld.exit:                                      ; preds = %.lr.ph.i
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !107, metadata !133), !dbg !202
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !106, metadata !133), !dbg !203
  %22 = icmp sgt i32 %19, 0, !dbg !204
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !207

.lr.ph:                                           ; preds = %getfld.exit, %.lr.ph
  %i.05 = phi i32 [ %i.0., %.lr.ph ], [ 0, %getfld.exit ]
  %23 = call i32 @fgetc(%struct.__sFILE* %in) #7, !dbg !208
  %24 = trunc i32 %23 to i8, !dbg !208
  %25 = sext i32 %i.05 to i64, !dbg !210
  %26 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %25, !dbg !210
  store i8 %24, i8* %26, align 1, !dbg !211, !tbaa !161
  %sext.mask = and i32 %23, 255, !dbg !212
  %not. = icmp ne i32 %sext.mask, 10, !dbg !214
  %27 = zext i1 %not. to i32, !dbg !214
  %i.0. = add nsw i32 %27, %i.05, !dbg !214
  %28 = icmp slt i32 %i.0., %19, !dbg !204
  br i1 %28, label %.lr.ph, label %._crit_edge, !dbg !207

._crit_edge:                                      ; preds = %.lr.ph, %8, %getfld.exit
  %fld.0.lcssa.i7 = phi i32 [ %19, %getfld.exit ], [ 0, %8 ], [ %19, %.lr.ph ]
  %29 = phi i8* [ %16, %getfld.exit ], [ %9, %8 ], [ %16, %.lr.ph ]
  %30 = sext i32 %fld.0.lcssa.i7 to i64, !dbg !215
  %31 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 %30, !dbg !215
  store i8 0, i8* %31, align 1, !dbg !216, !tbaa !161
  %32 = load i8* %29, align 1, !dbg !217, !tbaa !161
  %33 = sext i8 %32 to i32, !dbg !217
  switch i32 %33, label %99 [
    i32 100, label %34
    i32 102, label %49
    i32 70, label %64
    i32 114, label %79
  ], !dbg !218

; <label>:34                                      ; preds = %._crit_edge
  %35 = load i32* %3, align 16, !dbg !179
  %36 = icmp ult i32 %35, 41, !dbg !179
  br i1 %36, label %37, label %42, !dbg !179

; <label>:37                                      ; preds = %34
  %38 = load i8** %4, align 16, !dbg !179
  %39 = sext i32 %35 to i64, !dbg !179
  %40 = getelementptr i8* %38, i64 %39, !dbg !179
  %41 = add i32 %35, 8, !dbg !179
  store i32 %41, i32* %3, align 16, !dbg !179
  br label %45, !dbg !179

; <label>:42                                      ; preds = %34
  %43 = load i8** %5, align 8, !dbg !179
  %44 = getelementptr i8* %43, i64 8, !dbg !179
  store i8* %44, i8** %5, align 8, !dbg !179
  br label %45, !dbg !179

; <label>:45                                      ; preds = %42, %37
  %.in3 = phi i8* [ %40, %37 ], [ %43, %42 ]
  %46 = bitcast i8* %.in3 to i32**, !dbg !179
  %47 = load i32** %46, align 8, !dbg !179
  %48 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i32* %47) #7, !dbg !219
  br label %99, !dbg !220

; <label>:49                                      ; preds = %._crit_edge
  %50 = load i32* %3, align 16, !dbg !221
  %51 = icmp ult i32 %50, 41, !dbg !221
  br i1 %51, label %52, label %57, !dbg !221

; <label>:52                                      ; preds = %49
  %53 = load i8** %4, align 16, !dbg !221
  %54 = sext i32 %50 to i64, !dbg !221
  %55 = getelementptr i8* %53, i64 %54, !dbg !221
  %56 = add i32 %50, 8, !dbg !221
  store i32 %56, i32* %3, align 16, !dbg !221
  br label %60, !dbg !221

; <label>:57                                      ; preds = %49
  %58 = load i8** %5, align 8, !dbg !221
  %59 = getelementptr i8* %58, i64 8, !dbg !221
  store i8* %59, i8** %5, align 8, !dbg !221
  br label %60, !dbg !221

; <label>:60                                      ; preds = %57, %52
  %.in2 = phi i8* [ %55, %52 ], [ %58, %57 ]
  %61 = bitcast i8* %.in2 to float**, !dbg !221
  %62 = load float** %61, align 8, !dbg !221
  %63 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), float* %62) #7, !dbg !222
  br label %99, !dbg !223

; <label>:64                                      ; preds = %._crit_edge
  %65 = load i32* %3, align 16, !dbg !224
  %66 = icmp ult i32 %65, 41, !dbg !224
  br i1 %66, label %67, label %72, !dbg !224

; <label>:67                                      ; preds = %64
  %68 = load i8** %4, align 16, !dbg !224
  %69 = sext i32 %65 to i64, !dbg !224
  %70 = getelementptr i8* %68, i64 %69, !dbg !224
  %71 = add i32 %65, 8, !dbg !224
  store i32 %71, i32* %3, align 16, !dbg !224
  br label %75, !dbg !224

; <label>:72                                      ; preds = %64
  %73 = load i8** %5, align 8, !dbg !224
  %74 = getelementptr i8* %73, i64 8, !dbg !224
  store i8* %74, i8** %5, align 8, !dbg !224
  br label %75, !dbg !224

; <label>:75                                      ; preds = %72, %67
  %.in1 = phi i8* [ %70, %67 ], [ %73, %72 ]
  %76 = bitcast i8* %.in1 to double**, !dbg !224
  %77 = load double** %76, align 8, !dbg !224
  %78 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %77) #7, !dbg !225
  br label %99, !dbg !226

; <label>:79                                      ; preds = %._crit_edge
  call void @llvm.dbg.value(metadata double* %dval, i64 0, metadata !108, metadata !133), !dbg !227
  %80 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), double* %dval) #7, !dbg !228
  call void @llvm.dbg.value(metadata double* %dval, i64 0, metadata !108, metadata !133), !dbg !227
  %81 = load double* %dval, align 8, !dbg !229, !tbaa !230
  %82 = fptrunc double %81 to float, !dbg !229
  %83 = load i32* %3, align 16, !dbg !232
  %84 = icmp ult i32 %83, 41, !dbg !232
  br i1 %84, label %85, label %90, !dbg !232

; <label>:85                                      ; preds = %79
  %86 = load i8** %4, align 16, !dbg !232
  %87 = sext i32 %83 to i64, !dbg !232
  %88 = getelementptr i8* %86, i64 %87, !dbg !232
  %89 = add i32 %83, 8, !dbg !232
  store i32 %89, i32* %3, align 16, !dbg !232
  br label %93, !dbg !232

; <label>:90                                      ; preds = %79
  %91 = load i8** %5, align 8, !dbg !232
  %92 = getelementptr i8* %91, i64 8, !dbg !232
  store i8* %92, i8** %5, align 8, !dbg !232
  br label %93, !dbg !232

; <label>:93                                      ; preds = %90, %85
  %.in = phi i8* [ %88, %85 ], [ %91, %90 ]
  %94 = bitcast i8* %.in to float**, !dbg !232
  %95 = load float** %94, align 8, !dbg !232
  store float %82, float* %95, align 4, !dbg !233, !tbaa !234
  br label %99, !dbg !236

; <label>:96                                      ; preds = %6
  %97 = sext i8 %7 to i32, !dbg !237
  %98 = add nsw i32 %97, 1, !dbg !238
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([28 x i8]* @.str3, i64 0, i64 0), i32 %98) #7, !dbg !239
  br label %99

; <label>:99                                      ; preds = %96, %._crit_edge, %93, %75, %60, %45
  %100 = phi i8* [ %storemerge, %96 ], [ %29, %._crit_edge ], [ %29, %93 ], [ %29, %75 ], [ %29, %60 ], [ %29, %45 ]
  %101 = getelementptr inbounds i8* %100, i64 1, !dbg !240
  call void @llvm.dbg.value(metadata i8* %101, i64 0, metadata !101, metadata !133), !dbg !178
  br label %6, !dbg !241

; <label>:102                                     ; preds = %6
  call void @llvm.va_end(i8* %2), !dbg !242
  call void @llvm.lifetime.end(i64 4096, i8* %1) #5, !dbg !243
  ret void, !dbg !243
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct.__sFILE* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!129, !130, !131}
!llvm.ident = !{!132}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ffscanf.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75, !81, !110, !117, !121}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !DISubprogram(name: "ffscanf", scope: !1, file: !1, line: 48, type: !82, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i8*, ...)* @ffscanf, variables: !84)
!82 = !DISubroutineType(types: !83)
!83 = !{null, !11, !39, null}
!84 = !{!85, !86, !87, !101, !102, !106, !107, !108}
!85 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "in", arg: 1, scope: !81, file: !1, line: 48, type: !11)
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 2, scope: !81, file: !1, line: 48, type: !39)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ap", scope: !81, file: !1, line: 50, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !89, line: 31, baseType: !90)
!89 = !DIFile(filename: "/usr/include/sys/_types/_va_list.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_va_list", file: !48, line: 98, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 50, baseType: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 192, align: 64, elements: !67)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 50, baseType: !94)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 50, size: 192, align: 64, elements: !95)
!95 = !{!96, !98, !99, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !94, file: !1, line: 50, baseType: !97, size: 32, align: 32)
!97 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !94, file: !1, line: 50, baseType: !97, size: 32, align: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !94, file: !1, line: 50, baseType: !30, size: 64, align: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !94, file: !1, line: 50, baseType: !30, size: 64, align: 64, offset: 128)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !81, file: !1, line: 51, type: !39)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !81, file: !1, line: 52, type: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 4096)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !81, file: !1, line: 53, type: !10)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fld", scope: !81, file: !1, line: 53, type: !10)
!108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dval", scope: !81, file: !1, line: 54, type: !109)
!109 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!110 = !DISubprogram(name: "getfld", scope: !1, file: !1, line: 39, type: !111, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, variables: !114)
!111 = !DISubroutineType(types: !112)
!112 = !{!10, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!114 = !{!115, !116}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !110, file: !1, line: 39, type: !113)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fld", scope: !110, file: !1, line: 41, type: !10)
!117 = !DISubprogram(name: "isdigit", scope: !118, file: !118, line: 237, type: !77, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, variables: !119)
!118 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!119 = !{!120}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !117, file: !118, line: 237, type: !10)
!121 = !DISubprogram(name: "__isctype", scope: !118, file: !118, line: 164, type: !122, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, variables: !126)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !124, !125}
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !48, line: 70, baseType: !10)
!125 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!126 = !{!127, !128}
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !121, file: !118, line: 164, type: !124)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !121, file: !118, line: 164, type: !125)
!129 = !{i32 2, !"Dwarf Version", i32 2}
!130 = !{i32 2, !"Debug Info Version", i32 700000003}
!131 = !{i32 1, !"PIC Level", i32 2}
!132 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!133 = !DIExpression()
!134 = !DILocation(line: 348, column: 40, scope: !6)
!135 = !DILocation(line: 348, column: 50, scope: !6)
!136 = !DILocation(line: 349, column: 12, scope: !137)
!137 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!138 = !DILocation(line: 349, column: 6, scope: !137)
!139 = !{!140, !144, i64 12}
!140 = !{!"__sFILE", !141, i64 0, !144, i64 8, !144, i64 12, !145, i64 16, !145, i64 18, !146, i64 24, !144, i64 40, !141, i64 48, !141, i64 56, !141, i64 64, !141, i64 72, !141, i64 80, !146, i64 88, !141, i64 104, !144, i64 112, !142, i64 116, !142, i64 119, !146, i64 120, !144, i64 136, !147, i64 144}
!141 = !{!"any pointer", !142, i64 0}
!142 = !{!"omnipotent char", !143, i64 0}
!143 = !{!"Simple C/C++ TBAA"}
!144 = !{!"int", !142, i64 0}
!145 = !{!"short", !142, i64 0}
!146 = !{!"__sbuf", !141, i64 0, !144, i64 8}
!147 = !{!"long long", !142, i64 0}
!148 = !DILocation(line: 349, column: 15, scope: !137)
!149 = !DILocation(line: 349, column: 20, scope: !137)
!150 = !DILocation(line: 350, column: 10, scope: !137)
!151 = !DILocation(line: 349, column: 38, scope: !137)
!152 = !{!140, !144, i64 40}
!153 = !DILocation(line: 349, column: 31, scope: !137)
!154 = !DILocation(line: 349, column: 59, scope: !137)
!155 = !DILocation(line: 349, column: 47, scope: !137)
!156 = !DILocation(line: 350, column: 23, scope: !137)
!157 = !DILocation(line: 350, column: 16, scope: !137)
!158 = !DILocation(line: 350, column: 18, scope: !137)
!159 = !{!140, !141, i64 0}
!160 = !DILocation(line: 350, column: 21, scope: !137)
!161 = !{!142, !142, i64 0}
!162 = !DILocation(line: 350, column: 3, scope: !137)
!163 = !DILocation(line: 352, column: 11, scope: !137)
!164 = !DILocation(line: 352, column: 3, scope: !137)
!165 = !DILocation(line: 353, column: 1, scope: !6)
!166 = !DILocation(line: 114, column: 15, scope: !75)
!167 = !DILocation(line: 116, column: 20, scope: !75)
!168 = !DILocation(line: 116, column: 12, scope: !75)
!169 = !DILocation(line: 116, column: 57, scope: !75)
!170 = !DILocation(line: 116, column: 45, scope: !75)
!171 = !DILocation(line: 116, column: 5, scope: !75)
!172 = !DILocation(line: 48, column: 20, scope: !81)
!173 = !DILocation(line: 48, column: 29, scope: !81)
!174 = !DILocation(line: 50, column: 11, scope: !81)
!175 = !DILocation(line: 52, column: 3, scope: !81)
!176 = !DILocation(line: 52, column: 8, scope: !81)
!177 = !DILocation(line: 56, column: 3, scope: !81)
!178 = !DILocation(line: 51, column: 9, scope: !81)
!179 = !DILocation(line: 68, column: 18, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 66, column: 18)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 58, column: 20)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 58, column: 9)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 57, column: 24)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 57, column: 3)
!185 = distinct !DILexicalBlock(scope: !81, file: !1, line: 57, column: 3)
!186 = !DILocation(line: 57, column: 8, scope: !185)
!187 = !DILocation(line: 39, column: 26, scope: !110, inlinedAt: !188)
!188 = distinct !DILocation(line: 60, column: 11, scope: !181)
!189 = !DILocation(line: 57, column: 15, scope: !184)
!190 = !DILocation(line: 57, column: 3, scope: !185)
!191 = !DILocation(line: 59, column: 8, scope: !181)
!192 = !DILocation(line: 41, column: 7, scope: !110, inlinedAt: !188)
!193 = !DILocation(line: 44, column: 18, scope: !110, inlinedAt: !188)
!194 = !DILocation(line: 44, column: 10, scope: !110, inlinedAt: !188)
!195 = !DILocation(line: 44, column: 3, scope: !110, inlinedAt: !188)
!196 = !DILocation(line: 44, column: 32, scope: !110, inlinedAt: !188)
!197 = !DILocation(line: 60, column: 11, scope: !181)
!198 = !DILocation(line: 44, column: 45, scope: !110, inlinedAt: !188)
!199 = !DILocation(line: 44, column: 38, scope: !110, inlinedAt: !188)
!200 = !DILocation(line: 44, column: 49, scope: !110, inlinedAt: !188)
!201 = !DILocation(line: 44, column: 36, scope: !110, inlinedAt: !188)
!202 = !DILocation(line: 53, column: 9, scope: !81)
!203 = !DILocation(line: 53, column: 7, scope: !81)
!204 = !DILocation(line: 61, column: 18, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 61, column: 7)
!206 = distinct !DILexicalBlock(scope: !181, file: !1, line: 61, column: 7)
!207 = !DILocation(line: 61, column: 7, scope: !206)
!208 = !DILocation(line: 62, column: 9, scope: !209)
!209 = distinct !DILexicalBlock(scope: !205, file: !1, line: 61, column: 27)
!210 = !DILocation(line: 62, column: 2, scope: !209)
!211 = !DILocation(line: 62, column: 8, scope: !209)
!212 = !DILocation(line: 63, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !1, line: 63, column: 6)
!214 = !DILocation(line: 63, column: 6, scope: !209)
!215 = !DILocation(line: 65, column: 7, scope: !181)
!216 = !DILocation(line: 65, column: 15, scope: !181)
!217 = !DILocation(line: 66, column: 14, scope: !181)
!218 = !DILocation(line: 66, column: 7, scope: !181)
!219 = !DILocation(line: 68, column: 2, scope: !180)
!220 = !DILocation(line: 69, column: 2, scope: !180)
!221 = !DILocation(line: 71, column: 18, scope: !180)
!222 = !DILocation(line: 71, column: 2, scope: !180)
!223 = !DILocation(line: 72, column: 2, scope: !180)
!224 = !DILocation(line: 74, column: 19, scope: !180)
!225 = !DILocation(line: 74, column: 2, scope: !180)
!226 = !DILocation(line: 75, column: 2, scope: !180)
!227 = !DILocation(line: 54, column: 10, scope: !81)
!228 = !DILocation(line: 77, column: 2, scope: !180)
!229 = !DILocation(line: 78, column: 25, scope: !180)
!230 = !{!231, !231, i64 0}
!231 = !{!"double", !142, i64 0}
!232 = !DILocation(line: 78, column: 4, scope: !180)
!233 = !DILocation(line: 78, column: 23, scope: !180)
!234 = !{!235, !235, i64 0}
!235 = !{!"float", !142, i64 0}
!236 = !DILocation(line: 79, column: 2, scope: !180)
!237 = !DILocation(line: 58, column: 9, scope: !182)
!238 = !DILocation(line: 85, column: 53, scope: !182)
!239 = !DILocation(line: 85, column: 7, scope: !182)
!240 = !DILocation(line: 57, column: 20, scope: !184)
!241 = !DILocation(line: 57, column: 3, scope: !184)
!242 = !DILocation(line: 87, column: 3, scope: !81)
!243 = !DILocation(line: 88, column: 1, scope: !81)

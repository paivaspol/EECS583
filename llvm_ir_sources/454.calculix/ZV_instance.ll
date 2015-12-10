; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._ZV = type { i32, i32, i32, double* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [42 x i8] c"\0A fatal error in ZV_owned(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ZV_maxsize(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in ZV_size(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [51 x i8] c"\0A fatal error in ZV_entry(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [72 x i8] c"\0A fatal error in ZV_entry(%p,%d,%p,%p)\0A bad state: size = %d, vec = %p\0A\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A fatal error in ZV_pointersToEntry(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [82 x i8] c"\0A fatal error in ZV_pointersToEntry(%p,%d,%p,%p)\0A bad state: size = %d, vec = %p\0A\00", align 1
@.str7 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ZV_entries(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ZV_sizeAndEntries(%p,%p,%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [54 x i8] c"\0A fatal error in ZV_setEntry(%p,%d,%f,%f)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ZV_owned(%struct._ZV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %dv, i64 0, metadata !22, metadata !74), !dbg !75
  %1 = icmp eq %struct._ZV* %dv, null, !dbg !76
  br i1 %1, label %2, label %5, !dbg !78

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !79, !tbaa !81
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([42 x i8]* @.str, i64 0, i64 0), %struct._ZV* null) #5, !dbg !85
  tail call void @exit(i32 -1) #6, !dbg !86
  unreachable, !dbg !86

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 2, !dbg !87
  %7 = load i32* %6, align 4, !dbg !87, !tbaa !88
  ret i32 %7, !dbg !91
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ZV_maxsize(%struct._ZV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %dv, i64 0, metadata !25, metadata !74), !dbg !92
  %1 = icmp eq %struct._ZV* %dv, null, !dbg !93
  br i1 %1, label %2, label %5, !dbg !95

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !96, !tbaa !81
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._ZV* null) #5, !dbg !98
  tail call void @exit(i32 -1) #6, !dbg !99
  unreachable, !dbg !99

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 1, !dbg !100
  %7 = load i32* %6, align 4, !dbg !100, !tbaa !101
  ret i32 %7, !dbg !102
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @ZV_size(%struct._ZV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %dv, i64 0, metadata !28, metadata !74), !dbg !103
  %1 = icmp eq %struct._ZV* %dv, null, !dbg !104
  br i1 %1, label %2, label %5, !dbg !106

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !107, !tbaa !81
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._ZV* null) #5, !dbg !109
  tail call void @exit(i32 -1) #6, !dbg !110
  unreachable, !dbg !110

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0, !dbg !111
  %7 = load i32* %6, align 4, !dbg !111, !tbaa !112
  ret i32 %7, !dbg !113
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_entry(%struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %dv, i64 0, metadata !33, metadata !74), !dbg !114
  tail call void @llvm.dbg.value(metadata i32 %loc, i64 0, metadata !34, metadata !74), !dbg !115
  tail call void @llvm.dbg.value(metadata double* %pReal, i64 0, metadata !35, metadata !74), !dbg !116
  tail call void @llvm.dbg.value(metadata double* %pImag, i64 0, metadata !36, metadata !74), !dbg !117
  %1 = icmp eq %struct._ZV* %dv, null, !dbg !118
  %2 = icmp eq double* %pReal, null, !dbg !120
  %or.cond = or i1 %1, %2, !dbg !121
  %3 = icmp eq double* %pImag, null, !dbg !122
  %or.cond3 = or i1 %or.cond, %3, !dbg !121
  br i1 %or.cond3, label %4, label %7, !dbg !121

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !123, !tbaa !81
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([51 x i8]* @.str3, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag) #5, !dbg !125
  tail call void @exit(i32 -1) #6, !dbg !126
  unreachable, !dbg !126

; <label>:7                                       ; preds = %0
  %8 = icmp sgt i32 %loc, -1, !dbg !127
  %.phi.trans.insert = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !129, !tbaa !112
  %9 = icmp sgt i32 %.pre, %loc, !dbg !131
  %or.cond4 = and i1 %8, %9, !dbg !132
  br i1 %or.cond4, label %10, label %._crit_edge, !dbg !132

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !133
  %12 = load double** %11, align 8, !dbg !133, !tbaa !134
  %13 = icmp eq double* %12, null, !dbg !135
  br i1 %13, label %._crit_edge, label %18, !dbg !136

._crit_edge:                                      ; preds = %7, %10
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !137, !tbaa !81
  %15 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !138
  %16 = load double** %15, align 8, !dbg !138, !tbaa !134
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([72 x i8]* @.str4, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double* %pReal, double* %pImag, i32 %.pre, double* %16) #5, !dbg !139
  tail call void @exit(i32 -1) #6, !dbg !140
  unreachable, !dbg !140

; <label>:18                                      ; preds = %10
  %19 = shl nsw i32 %loc, 1, !dbg !141
  %20 = sext i32 %19 to i64, !dbg !142
  %21 = getelementptr inbounds double* %12, i64 %20, !dbg !142
  %22 = bitcast double* %21 to i64*, !dbg !142
  %23 = load i64* %22, align 8, !dbg !142, !tbaa !143
  %24 = bitcast double* %pReal to i64*, !dbg !145
  store i64 %23, i64* %24, align 8, !dbg !145, !tbaa !143
  %25 = or i32 %19, 1, !dbg !146
  %26 = sext i32 %25 to i64, !dbg !147
  %27 = getelementptr inbounds double* %12, i64 %26, !dbg !147
  %28 = bitcast double* %27 to i64*, !dbg !147
  %29 = load i64* %28, align 8, !dbg !147, !tbaa !143
  %30 = bitcast double* %pImag to i64*, !dbg !148
  store i64 %29, i64* %30, align 8, !dbg !148, !tbaa !143
  ret void, !dbg !149
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_pointersToEntry(%struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %dv, i64 0, metadata !42, metadata !74), !dbg !150
  tail call void @llvm.dbg.value(metadata i32 %loc, i64 0, metadata !43, metadata !74), !dbg !151
  tail call void @llvm.dbg.value(metadata double** %ppReal, i64 0, metadata !44, metadata !74), !dbg !152
  tail call void @llvm.dbg.value(metadata double** %ppImag, i64 0, metadata !45, metadata !74), !dbg !153
  %1 = icmp eq %struct._ZV* %dv, null, !dbg !154
  %2 = icmp eq double** %ppReal, null, !dbg !156
  %or.cond = or i1 %1, %2, !dbg !157
  %3 = icmp eq double** %ppImag, null, !dbg !158
  %or.cond3 = or i1 %or.cond, %3, !dbg !157
  br i1 %or.cond3, label %4, label %7, !dbg !157

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !159, !tbaa !81
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag) #5, !dbg !161
  tail call void @exit(i32 -1) #6, !dbg !162
  unreachable, !dbg !162

; <label>:7                                       ; preds = %0
  %8 = icmp sgt i32 %loc, -1, !dbg !163
  %.phi.trans.insert = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0
  %.pre = load i32* %.phi.trans.insert, align 4, !dbg !165, !tbaa !112
  %9 = icmp sgt i32 %.pre, %loc, !dbg !167
  %or.cond4 = and i1 %8, %9, !dbg !168
  br i1 %or.cond4, label %10, label %._crit_edge, !dbg !168

; <label>:10                                      ; preds = %7
  %11 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !169
  %12 = load double** %11, align 8, !dbg !169, !tbaa !134
  %13 = icmp eq double* %12, null, !dbg !170
  br i1 %13, label %._crit_edge, label %18, !dbg !171

._crit_edge:                                      ; preds = %7, %10
  %14 = load %struct.__sFILE** @__stderrp, align 8, !dbg !172, !tbaa !81
  %15 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !173
  %16 = load double** %15, align 8, !dbg !173, !tbaa !134
  %17 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([82 x i8]* @.str6, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double** %ppReal, double** %ppImag, i32 %.pre, double* %16) #5, !dbg !174
  tail call void @exit(i32 -1) #6, !dbg !175
  unreachable, !dbg !175

; <label>:18                                      ; preds = %10
  %19 = shl nsw i32 %loc, 1, !dbg !176
  %20 = sext i32 %19 to i64, !dbg !177
  %21 = getelementptr inbounds double* %12, i64 %20, !dbg !177
  store double* %21, double** %ppReal, align 8, !dbg !178, !tbaa !81
  %22 = or i32 %19, 1, !dbg !179
  %23 = sext i32 %22 to i64, !dbg !180
  %24 = load double** %11, align 8, !dbg !181, !tbaa !134
  %25 = getelementptr inbounds double* %24, i64 %23, !dbg !180
  store double* %25, double** %ppImag, align 8, !dbg !182, !tbaa !81
  ret void, !dbg !183
}

; Function Attrs: nounwind optsize ssp uwtable
define double* @ZV_entries(%struct._ZV* %dv) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %dv, i64 0, metadata !50, metadata !74), !dbg !184
  %1 = icmp eq %struct._ZV* %dv, null, !dbg !185
  br i1 %1, label %2, label %5, !dbg !187

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !188, !tbaa !81
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([44 x i8]* @.str7, i64 0, i64 0), %struct._ZV* null) #5, !dbg !190
  tail call void @exit(i32 -1) #6, !dbg !191
  unreachable, !dbg !191

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !192
  %7 = load double** %6, align 8, !dbg !192, !tbaa !134
  ret double* %7, !dbg !193
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_sizeAndEntries(%struct._ZV* %dv, i32* %psize, double** %pentries) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %dv, i64 0, metadata !56, metadata !74), !dbg !194
  tail call void @llvm.dbg.value(metadata i32* %psize, i64 0, metadata !57, metadata !74), !dbg !195
  tail call void @llvm.dbg.value(metadata double** %pentries, i64 0, metadata !58, metadata !74), !dbg !196
  %1 = icmp eq %struct._ZV* %dv, null, !dbg !197
  %2 = icmp eq i32* %psize, null, !dbg !199
  %or.cond = or i1 %1, %2, !dbg !200
  %3 = icmp eq double** %pentries, null, !dbg !201
  %or.cond3 = or i1 %or.cond, %3, !dbg !200
  br i1 %or.cond3, label %4, label %7, !dbg !200

; <label>:4                                       ; preds = %0
  %5 = load %struct.__sFILE** @__stderrp, align 8, !dbg !202, !tbaa !81
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), %struct._ZV* %dv, i32* %psize, double** %pentries) #5, !dbg !204
  tail call void @exit(i32 -1) #6, !dbg !205
  unreachable, !dbg !205

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0, !dbg !206
  %9 = load i32* %8, align 4, !dbg !206, !tbaa !112
  store i32 %9, i32* %psize, align 4, !dbg !207, !tbaa !208
  %10 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !209
  %11 = bitcast double** %10 to i64*, !dbg !209
  %12 = load i64* %11, align 8, !dbg !209, !tbaa !134
  %13 = bitcast double** %pentries to i64*, !dbg !210
  store i64 %12, i64* %13, align 8, !dbg !210, !tbaa !81
  ret void, !dbg !211
}

; Function Attrs: nounwind optsize ssp uwtable
define void @ZV_setEntry(%struct._ZV* %dv, i32 %loc, double %real, double %imag) #0 {
  tail call void @llvm.dbg.value(metadata %struct._ZV* %dv, i64 0, metadata !63, metadata !74), !dbg !212
  tail call void @llvm.dbg.value(metadata i32 %loc, i64 0, metadata !64, metadata !74), !dbg !213
  tail call void @llvm.dbg.value(metadata double %real, i64 0, metadata !65, metadata !74), !dbg !214
  tail call void @llvm.dbg.value(metadata double %imag, i64 0, metadata !66, metadata !74), !dbg !215
  %1 = icmp eq %struct._ZV* %dv, null, !dbg !216
  %2 = icmp slt i32 %loc, 0, !dbg !218
  %or.cond = or i1 %1, %2, !dbg !219
  br i1 %or.cond, label %3, label %6, !dbg !219

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !220, !tbaa !81
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([54 x i8]* @.str9, i64 0, i64 0), %struct._ZV* %dv, i32 %loc, double %real, double %imag) #5, !dbg !222
  tail call void @exit(i32 -1) #6, !dbg !223
  unreachable, !dbg !223

; <label>:6                                       ; preds = %0
  %7 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 1, !dbg !224
  %8 = load i32* %7, align 4, !dbg !224, !tbaa !101
  %9 = icmp sgt i32 %8, %loc, !dbg !225
  br i1 %9, label %14, label %10, !dbg !226

; <label>:10                                      ; preds = %6
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !67, metadata !74), !dbg !227
  %11 = icmp slt i32 %8, 10, !dbg !228
  %. = select i1 %11, i32 10, i32 %8, !dbg !230
  tail call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !67, metadata !74), !dbg !227
  %12 = icmp sgt i32 %., %loc, !dbg !231
  %13 = add nsw i32 %loc, 1, !dbg !233
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !67, metadata !74), !dbg !227
  %.. = select i1 %12, i32 %., i32 %13, !dbg !235
  tail call void @ZV_setMaxsize(%struct._ZV* %dv, i32 %..) #5, !dbg !236
  br label %14, !dbg !237

; <label>:14                                      ; preds = %6, %10
  %15 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 0, !dbg !238
  %16 = load i32* %15, align 4, !dbg !238, !tbaa !112
  %17 = icmp sgt i32 %16, %loc, !dbg !240
  br i1 %17, label %20, label %18, !dbg !241

; <label>:18                                      ; preds = %14
  %19 = add nsw i32 %loc, 1, !dbg !242
  store i32 %19, i32* %15, align 4, !dbg !244, !tbaa !112
  br label %20, !dbg !245

; <label>:20                                      ; preds = %14, %18
  %21 = shl nsw i32 %loc, 1, !dbg !246
  %22 = sext i32 %21 to i64, !dbg !247
  %23 = getelementptr inbounds %struct._ZV* %dv, i64 0, i32 3, !dbg !248
  %24 = load double** %23, align 8, !dbg !248, !tbaa !134
  %25 = getelementptr inbounds double* %24, i64 %22, !dbg !247
  store double %real, double* %25, align 8, !dbg !249, !tbaa !143
  %26 = or i32 %21, 1, !dbg !250
  %27 = sext i32 %26 to i64, !dbg !251
  %28 = getelementptr inbounds double* %24, i64 %27, !dbg !251
  store double %imag, double* %28, align 8, !dbg !252, !tbaa !143
  ret void, !dbg !253
}

; Function Attrs: optsize
declare void @ZV_setMaxsize(%struct._ZV*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71, !72}
!llvm.ident = !{!73}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/ZV_instance.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !23, !26, !29, !37, !46, !51, !59}
!7 = !DISubprogram(name: "ZV_owned", scope: !1, file: !1, line: 15, type: !8, isLocal: false, isDefinition: true, scopeLine: 17, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ZV*)* @ZV_owned, variables: !21)
!8 = !DISubroutineType(types: !9)
!9 = !{!5, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZV", file: !12, line: 20, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/ZV/src/../ZV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ZV", file: !12, line: 21, size: 192, align: 64, elements: !14)
!14 = !{!15, !16, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !13, file: !12, line: 22, baseType: !5, size: 32, align: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "maxsize", scope: !13, file: !12, line: 23, baseType: !5, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "owned", scope: !13, file: !12, line: 24, baseType: !5, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !13, file: !12, line: 25, baseType: !19, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !{!22}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !7, file: !1, line: 16, type: !10)
!23 = !DISubprogram(name: "ZV_maxsize", scope: !1, file: !1, line: 34, type: !8, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ZV*)* @ZV_maxsize, variables: !24)
!24 = !{!25}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !23, file: !1, line: 35, type: !10)
!26 = !DISubprogram(name: "ZV_size", scope: !1, file: !1, line: 53, type: !8, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._ZV*)* @ZV_size, variables: !27)
!27 = !{!28}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !26, file: !1, line: 54, type: !10)
!29 = !DISubprogram(name: "ZV_entry", scope: !1, file: !1, line: 72, type: !30, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32, double*, double*)* @ZV_entry, variables: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !10, !5, !19, !19}
!32 = !{!33, !34, !35, !36}
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !29, file: !1, line: 73, type: !10)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "loc", arg: 2, scope: !29, file: !1, line: 74, type: !5)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pReal", arg: 3, scope: !29, file: !1, line: 75, type: !19)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pImag", arg: 4, scope: !29, file: !1, line: 76, type: !19)
!37 = !DISubprogram(name: "ZV_pointersToEntry", scope: !1, file: !1, line: 103, type: !38, isLocal: false, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32, double**, double**)* @ZV_pointersToEntry, variables: !41)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !10, !5, !40, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!41 = !{!42, !43, !44, !45}
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !37, file: !1, line: 104, type: !10)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "loc", arg: 2, scope: !37, file: !1, line: 105, type: !5)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ppReal", arg: 3, scope: !37, file: !1, line: 106, type: !40)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ppImag", arg: 4, scope: !37, file: !1, line: 107, type: !40)
!46 = !DISubprogram(name: "ZV_entries", scope: !1, file: !1, line: 134, type: !47, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, function: double* (%struct._ZV*)* @ZV_entries, variables: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!19, !10}
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !46, file: !1, line: 135, type: !10)
!51 = !DISubprogram(name: "ZV_sizeAndEntries", scope: !1, file: !1, line: 154, type: !52, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32*, double**)* @ZV_sizeAndEntries, variables: !55)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !10, !54, !40}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!55 = !{!56, !57, !58}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !51, file: !1, line: 155, type: !10)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "psize", arg: 2, scope: !51, file: !1, line: 156, type: !54)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pentries", arg: 3, scope: !51, file: !1, line: 157, type: !40)
!59 = !DISubprogram(name: "ZV_setEntry", scope: !1, file: !1, line: 178, type: !60, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._ZV*, i32, double, double)* @ZV_setEntry, variables: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !10, !5, !20, !20}
!62 = !{!63, !64, !65, !66, !67}
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dv", arg: 1, scope: !59, file: !1, line: 179, type: !10)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "loc", arg: 2, scope: !59, file: !1, line: 180, type: !5)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "real", arg: 3, scope: !59, file: !1, line: 181, type: !20)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "imag", arg: 4, scope: !59, file: !1, line: 182, type: !20)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newmaxsize", scope: !68, file: !1, line: 195, type: !5)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 194, column: 27)
!69 = distinct !DILexicalBlock(scope: !59, file: !1, line: 194, column: 6)
!70 = !{i32 2, !"Dwarf Version", i32 2}
!71 = !{i32 2, !"Debug Info Version", i32 700000003}
!72 = !{i32 1, !"PIC Level", i32 2}
!73 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!74 = !DIExpression()
!75 = !DILocation(line: 16, column: 10, scope: !7)
!76 = !DILocation(line: 18, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 6)
!78 = !DILocation(line: 18, column: 6, scope: !7)
!79 = !DILocation(line: 19, column: 12, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 18, column: 19)
!81 = !{!82, !82, i64 0}
!82 = !{!"any pointer", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = !DILocation(line: 19, column: 4, scope: !80)
!86 = !DILocation(line: 21, column: 4, scope: !80)
!87 = !DILocation(line: 23, column: 12, scope: !7)
!88 = !{!89, !90, i64 8}
!89 = !{!"_ZV", !90, i64 0, !90, i64 4, !90, i64 8, !82, i64 16}
!90 = !{!"int", !83, i64 0}
!91 = !DILocation(line: 23, column: 1, scope: !7)
!92 = !DILocation(line: 35, column: 10, scope: !23)
!93 = !DILocation(line: 37, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !23, file: !1, line: 37, column: 6)
!95 = !DILocation(line: 37, column: 6, scope: !23)
!96 = !DILocation(line: 38, column: 12, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 37, column: 19)
!98 = !DILocation(line: 38, column: 4, scope: !97)
!99 = !DILocation(line: 40, column: 4, scope: !97)
!100 = !DILocation(line: 42, column: 12, scope: !23)
!101 = !{!89, !90, i64 4}
!102 = !DILocation(line: 42, column: 1, scope: !23)
!103 = !DILocation(line: 54, column: 10, scope: !26)
!104 = !DILocation(line: 56, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !26, file: !1, line: 56, column: 6)
!106 = !DILocation(line: 56, column: 6, scope: !26)
!107 = !DILocation(line: 57, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 56, column: 19)
!109 = !DILocation(line: 57, column: 4, scope: !108)
!110 = !DILocation(line: 59, column: 4, scope: !108)
!111 = !DILocation(line: 61, column: 12, scope: !26)
!112 = !{!89, !90, i64 0}
!113 = !DILocation(line: 61, column: 1, scope: !26)
!114 = !DILocation(line: 73, column: 14, scope: !29)
!115 = !DILocation(line: 74, column: 13, scope: !29)
!116 = !DILocation(line: 75, column: 14, scope: !29)
!117 = !DILocation(line: 76, column: 14, scope: !29)
!118 = !DILocation(line: 78, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !29, file: !1, line: 78, column: 6)
!120 = !DILocation(line: 78, column: 26, scope: !119)
!121 = !DILocation(line: 78, column: 17, scope: !119)
!122 = !DILocation(line: 78, column: 43, scope: !119)
!123 = !DILocation(line: 79, column: 12, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 78, column: 53)
!125 = !DILocation(line: 79, column: 4, scope: !124)
!126 = !DILocation(line: 81, column: 4, scope: !124)
!127 = !DILocation(line: 83, column: 10, scope: !128)
!128 = distinct !DILexicalBlock(scope: !29, file: !1, line: 83, column: 6)
!129 = !DILocation(line: 86, column: 39, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !1, line: 83, column: 54)
!131 = !DILocation(line: 83, column: 21, scope: !128)
!132 = !DILocation(line: 83, column: 14, scope: !128)
!133 = !DILocation(line: 83, column: 40, scope: !128)
!134 = !{!89, !82, i64 16}
!135 = !DILocation(line: 83, column: 44, scope: !128)
!136 = !DILocation(line: 83, column: 6, scope: !29)
!137 = !DILocation(line: 84, column: 12, scope: !130)
!138 = !DILocation(line: 86, column: 49, scope: !130)
!139 = !DILocation(line: 84, column: 4, scope: !130)
!140 = !DILocation(line: 87, column: 4, scope: !130)
!141 = !DILocation(line: 89, column: 19, scope: !29)
!142 = !DILocation(line: 89, column: 10, scope: !29)
!143 = !{!144, !144, i64 0}
!144 = !{!"double", !83, i64 0}
!145 = !DILocation(line: 89, column: 8, scope: !29)
!146 = !DILocation(line: 90, column: 23, scope: !29)
!147 = !DILocation(line: 90, column: 10, scope: !29)
!148 = !DILocation(line: 90, column: 8, scope: !29)
!149 = !DILocation(line: 92, column: 1, scope: !29)
!150 = !DILocation(line: 104, column: 14, scope: !37)
!151 = !DILocation(line: 105, column: 13, scope: !37)
!152 = !DILocation(line: 106, column: 15, scope: !37)
!153 = !DILocation(line: 107, column: 15, scope: !37)
!154 = !DILocation(line: 109, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !37, file: !1, line: 109, column: 6)
!156 = !DILocation(line: 109, column: 27, scope: !155)
!157 = !DILocation(line: 109, column: 17, scope: !155)
!158 = !DILocation(line: 109, column: 45, scope: !155)
!159 = !DILocation(line: 110, column: 12, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 109, column: 55)
!161 = !DILocation(line: 110, column: 4, scope: !160)
!162 = !DILocation(line: 112, column: 4, scope: !160)
!163 = !DILocation(line: 114, column: 10, scope: !164)
!164 = distinct !DILexicalBlock(scope: !37, file: !1, line: 114, column: 6)
!165 = !DILocation(line: 117, column: 41, scope: !166)
!166 = distinct !DILexicalBlock(scope: !164, file: !1, line: 114, column: 54)
!167 = !DILocation(line: 114, column: 21, scope: !164)
!168 = !DILocation(line: 114, column: 14, scope: !164)
!169 = !DILocation(line: 114, column: 40, scope: !164)
!170 = !DILocation(line: 114, column: 44, scope: !164)
!171 = !DILocation(line: 114, column: 6, scope: !37)
!172 = !DILocation(line: 115, column: 12, scope: !166)
!173 = !DILocation(line: 117, column: 51, scope: !166)
!174 = !DILocation(line: 115, column: 4, scope: !166)
!175 = !DILocation(line: 118, column: 4, scope: !166)
!176 = !DILocation(line: 120, column: 21, scope: !37)
!177 = !DILocation(line: 120, column: 12, scope: !37)
!178 = !DILocation(line: 120, column: 9, scope: !37)
!179 = !DILocation(line: 121, column: 25, scope: !37)
!180 = !DILocation(line: 121, column: 12, scope: !37)
!181 = !DILocation(line: 121, column: 16, scope: !37)
!182 = !DILocation(line: 121, column: 9, scope: !37)
!183 = !DILocation(line: 123, column: 1, scope: !37)
!184 = !DILocation(line: 135, column: 10, scope: !46)
!185 = !DILocation(line: 137, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !46, file: !1, line: 137, column: 6)
!187 = !DILocation(line: 137, column: 6, scope: !46)
!188 = !DILocation(line: 138, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 137, column: 19)
!190 = !DILocation(line: 138, column: 4, scope: !189)
!191 = !DILocation(line: 140, column: 4, scope: !189)
!192 = !DILocation(line: 142, column: 12, scope: !46)
!193 = !DILocation(line: 142, column: 1, scope: !46)
!194 = !DILocation(line: 155, column: 14, scope: !51)
!195 = !DILocation(line: 156, column: 14, scope: !51)
!196 = !DILocation(line: 157, column: 15, scope: !51)
!197 = !DILocation(line: 159, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !51, file: !1, line: 159, column: 6)
!199 = !DILocation(line: 159, column: 26, scope: !198)
!200 = !DILocation(line: 159, column: 17, scope: !198)
!201 = !DILocation(line: 159, column: 46, scope: !198)
!202 = !DILocation(line: 160, column: 12, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !1, line: 159, column: 56)
!204 = !DILocation(line: 160, column: 4, scope: !203)
!205 = !DILocation(line: 162, column: 4, scope: !203)
!206 = !DILocation(line: 164, column: 17, scope: !51)
!207 = !DILocation(line: 164, column: 11, scope: !51)
!208 = !{!90, !90, i64 0}
!209 = !DILocation(line: 165, column: 17, scope: !51)
!210 = !DILocation(line: 165, column: 11, scope: !51)
!211 = !DILocation(line: 167, column: 1, scope: !51)
!212 = !DILocation(line: 179, column: 14, scope: !59)
!213 = !DILocation(line: 180, column: 13, scope: !59)
!214 = !DILocation(line: 181, column: 13, scope: !59)
!215 = !DILocation(line: 182, column: 13, scope: !59)
!216 = !DILocation(line: 189, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !59, file: !1, line: 189, column: 6)
!218 = !DILocation(line: 189, column: 24, scope: !217)
!219 = !DILocation(line: 189, column: 17, scope: !217)
!220 = !DILocation(line: 190, column: 12, scope: !221)
!221 = distinct !DILexicalBlock(scope: !217, file: !1, line: 189, column: 30)
!222 = !DILocation(line: 190, column: 4, scope: !221)
!223 = !DILocation(line: 192, column: 4, scope: !221)
!224 = !DILocation(line: 194, column: 17, scope: !69)
!225 = !DILocation(line: 194, column: 10, scope: !69)
!226 = !DILocation(line: 194, column: 6, scope: !59)
!227 = !DILocation(line: 195, column: 8, scope: !68)
!228 = !DILocation(line: 196, column: 20, scope: !229)
!229 = distinct !DILexicalBlock(scope: !68, file: !1, line: 196, column: 9)
!230 = !DILocation(line: 196, column: 9, scope: !68)
!231 = !DILocation(line: 199, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !68, file: !1, line: 199, column: 9)
!233 = !DILocation(line: 200, column: 24, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !1, line: 199, column: 29)
!235 = !DILocation(line: 199, column: 9, scope: !68)
!236 = !DILocation(line: 202, column: 4, scope: !68)
!237 = !DILocation(line: 203, column: 1, scope: !68)
!238 = !DILocation(line: 204, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !59, file: !1, line: 204, column: 6)
!240 = !DILocation(line: 204, column: 10, scope: !239)
!241 = !DILocation(line: 204, column: 6, scope: !59)
!242 = !DILocation(line: 205, column: 19, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !1, line: 204, column: 24)
!244 = !DILocation(line: 205, column: 13, scope: !243)
!245 = !DILocation(line: 206, column: 1, scope: !243)
!246 = !DILocation(line: 207, column: 10, scope: !59)
!247 = !DILocation(line: 207, column: 1, scope: !59)
!248 = !DILocation(line: 207, column: 5, scope: !59)
!249 = !DILocation(line: 207, column: 18, scope: !59)
!250 = !DILocation(line: 208, column: 14, scope: !59)
!251 = !DILocation(line: 208, column: 1, scope: !59)
!252 = !DILocation(line: 208, column: 18, scope: !59)
!253 = !DILocation(line: 210, column: 1, scope: !59)

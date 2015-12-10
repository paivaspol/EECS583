; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A fatal error in Drand_value(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillZvector(%p,%d,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillDvector(%p,%d,%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in Drand_fillIvector(%p,%d,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define double @Drand_value(%struct._Drand* %drand) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !26, metadata !57), !dbg !58
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !59
  br i1 %1, label %2, label %5, !dbg !61

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !62, !tbaa !64
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._Drand* null) #5, !dbg !68
  tail call void @exit(i32 -1) #6, !dbg !69
  unreachable, !dbg !69

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 8, !dbg !70
  %7 = load i32* %6, align 4, !dbg !70, !tbaa !72
  %8 = icmp eq i32 %7, 1, !dbg !76
  %9 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 0, !dbg !77
  %10 = load double* %9, align 8, !dbg !77, !tbaa !79
  %11 = fmul double %10, 4.001400e+04, !dbg !80
  %12 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 2, !dbg !81
  %13 = load double* %12, align 8, !dbg !81, !tbaa !82
  %14 = tail call double @fmod(double %11, double %13) #7, !dbg !83
  store double %14, double* %9, align 8, !dbg !84, !tbaa !79
  %15 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 1, !dbg !85
  %16 = load double* %15, align 8, !dbg !85, !tbaa !86
  %17 = fmul double %16, 4.069200e+04, !dbg !87
  %18 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 3, !dbg !88
  %19 = load double* %18, align 8, !dbg !88, !tbaa !89
  %20 = tail call double @fmod(double %17, double %19) #7, !dbg !90
  store double %20, double* %15, align 8, !dbg !91, !tbaa !86
  %21 = fsub double %14, %20, !dbg !92
  tail call void @llvm.dbg.value(metadata double %21, i64 0, metadata !28, metadata !57), !dbg !93
  %22 = fcmp ole double %21, 0.000000e+00, !dbg !94
  br i1 %8, label %23, label %36, !dbg !96

; <label>:23                                      ; preds = %5
  br i1 %22, label %24, label %27, !dbg !97

; <label>:24                                      ; preds = %23
  %25 = fadd double %13, -1.000000e+00, !dbg !98
  %26 = fadd double %21, %25, !dbg !100
  tail call void @llvm.dbg.value(metadata double %26, i64 0, metadata !28, metadata !57), !dbg !93
  br label %27, !dbg !101

; <label>:27                                      ; preds = %24, %23
  %t.0 = phi double [ %26, %24 ], [ %21, %23 ]
  %28 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 4, !dbg !102
  %29 = load double* %28, align 8, !dbg !102, !tbaa !103
  %30 = fdiv double %t.0, %13, !dbg !104
  %31 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 5, !dbg !105
  %32 = load double* %31, align 8, !dbg !105, !tbaa !106
  %33 = fsub double %32, %29, !dbg !107
  %34 = fmul double %30, %33, !dbg !108
  %35 = fadd double %29, %34, !dbg !109
  tail call void @llvm.dbg.value(metadata double %35, i64 0, metadata !28, metadata !57), !dbg !93
  br label %74, !dbg !110

; <label>:36                                      ; preds = %5
  br i1 %22, label %37, label %40, !dbg !111

; <label>:37                                      ; preds = %36
  %38 = fadd double %13, -1.000000e+00, !dbg !113
  %39 = fadd double %21, %38, !dbg !116
  tail call void @llvm.dbg.value(metadata double %39, i64 0, metadata !28, metadata !57), !dbg !93
  br label %40, !dbg !117

; <label>:40                                      ; preds = %37, %36
  %t.1 = phi double [ %39, %37 ], [ %21, %36 ]
  %41 = fdiv double %t.1, %13, !dbg !118
  tail call void @llvm.dbg.value(metadata double %41, i64 0, metadata !28, metadata !57), !dbg !93
  tail call void @llvm.dbg.value(metadata double %41, i64 0, metadata !27, metadata !57), !dbg !119
  %42 = fmul double %14, 4.001400e+04, !dbg !120
  %43 = tail call double @fmod(double %42, double %13) #7, !dbg !121
  store double %43, double* %9, align 8, !dbg !122, !tbaa !79
  %44 = fmul double %20, 4.069200e+04, !dbg !123
  %45 = tail call double @fmod(double %44, double %19) #7, !dbg !124
  store double %45, double* %15, align 8, !dbg !125, !tbaa !86
  %46 = fsub double %43, %45, !dbg !126
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !28, metadata !57), !dbg !93
  %47 = fcmp ugt double %46, 0.000000e+00, !dbg !127
  br i1 %47, label %51, label %48, !dbg !129

; <label>:48                                      ; preds = %40
  %49 = fadd double %13, -1.000000e+00, !dbg !130
  %50 = fadd double %46, %49, !dbg !132
  tail call void @llvm.dbg.value(metadata double %50, i64 0, metadata !28, metadata !57), !dbg !93
  br label %51, !dbg !133

; <label>:51                                      ; preds = %40, %48
  %t.2 = phi double [ %50, %48 ], [ %46, %40 ]
  %52 = fdiv double %t.2, %13, !dbg !134
  tail call void @llvm.dbg.value(metadata double %52, i64 0, metadata !28, metadata !57), !dbg !93
  %53 = fadd double %41, %52, !dbg !135
  tail call void @llvm.dbg.value(metadata double %53, i64 0, metadata !27, metadata !57), !dbg !119
  %54 = fmul double %43, 4.001400e+04, !dbg !136
  %55 = tail call double @fmod(double %54, double %13) #7, !dbg !137
  store double %55, double* %9, align 8, !dbg !138, !tbaa !79
  %56 = fmul double %45, 4.069200e+04, !dbg !139
  %57 = tail call double @fmod(double %56, double %19) #7, !dbg !140
  store double %57, double* %15, align 8, !dbg !141, !tbaa !86
  %58 = fsub double %55, %57, !dbg !142
  tail call void @llvm.dbg.value(metadata double %58, i64 0, metadata !28, metadata !57), !dbg !93
  %59 = fcmp ugt double %58, 0.000000e+00, !dbg !143
  br i1 %59, label %63, label %60, !dbg !145

; <label>:60                                      ; preds = %51
  %61 = fadd double %13, -1.000000e+00, !dbg !146
  %62 = fadd double %58, %61, !dbg !148
  tail call void @llvm.dbg.value(metadata double %62, i64 0, metadata !28, metadata !57), !dbg !93
  br label %63, !dbg !149

; <label>:63                                      ; preds = %51, %60
  %t.3 = phi double [ %62, %60 ], [ %58, %51 ]
  %64 = fdiv double %t.3, %13, !dbg !150
  tail call void @llvm.dbg.value(metadata double %64, i64 0, metadata !28, metadata !57), !dbg !93
  %65 = fadd double %53, %64, !dbg !151
  tail call void @llvm.dbg.value(metadata double %65, i64 0, metadata !27, metadata !57), !dbg !119
  %66 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 6, !dbg !152
  %67 = load double* %66, align 8, !dbg !152, !tbaa !153
  %68 = getelementptr inbounds %struct._Drand* %drand, i64 0, i32 7, !dbg !154
  %69 = load double* %68, align 8, !dbg !154, !tbaa !155
  %70 = fmul double %65, 2.000000e+00, !dbg !156
  %71 = fadd double %70, -3.000000e+00, !dbg !157
  %72 = fmul double %69, %71, !dbg !158
  %73 = fadd double %67, %72, !dbg !159
  tail call void @llvm.dbg.value(metadata double %73, i64 0, metadata !28, metadata !57), !dbg !93
  br label %74

; <label>:74                                      ; preds = %63, %27
  %t.4 = phi double [ %35, %27 ], [ %73, %63 ]
  ret double %t.4, !dbg !160
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize readnone
declare double @fmod(double, double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_fillZvector(%struct._Drand* %drand, i32 %size, double* %dvec) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !34, metadata !57), !dbg !161
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !35, metadata !57), !dbg !162
  tail call void @llvm.dbg.value(metadata double* %dvec, i64 0, metadata !36, metadata !57), !dbg !163
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !164
  %2 = icmp slt i32 %size, 0, !dbg !166
  %or.cond = or i1 %1, %2, !dbg !167
  %3 = icmp eq double* %dvec, null, !dbg !168
  %or.cond3 = or i1 %or.cond, %3, !dbg !167
  br i1 %or.cond3, label %7, label %.preheader, !dbg !167

.preheader:                                       ; preds = %0
  %4 = icmp sgt i32 %size, 0, !dbg !169
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !172

.lr.ph:                                           ; preds = %.preheader
  %5 = shl nsw i32 %size, 1, !dbg !173
  %6 = sext i32 %5 to i64, !dbg !172
  br label %10, !dbg !172

; <label>:7                                       ; preds = %0
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !174, !tbaa !64
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._Drand* %drand, i32 %size, double* %dvec) #5, !dbg !176
  tail call void @exit(i32 -1) #6, !dbg !177
  unreachable, !dbg !177

; <label>:10                                      ; preds = %.lr.ph, %10
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %10 ]
  %11 = tail call double @Drand_value(%struct._Drand* %drand) #8, !dbg !178
  %12 = getelementptr inbounds double* %dvec, i64 %indvars.iv, !dbg !180
  store double %11, double* %12, align 8, !dbg !181, !tbaa !182
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !172
  %13 = icmp slt i64 %indvars.iv.next, %6, !dbg !169
  br i1 %13, label %10, label %._crit_edge, !dbg !172

._crit_edge:                                      ; preds = %10, %.preheader
  ret void, !dbg !183
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_fillDvector(%struct._Drand* %drand, i32 %size, double* %dvec) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !40, metadata !57), !dbg !184
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !41, metadata !57), !dbg !185
  tail call void @llvm.dbg.value(metadata double* %dvec, i64 0, metadata !42, metadata !57), !dbg !186
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !187
  %2 = icmp slt i32 %size, 0, !dbg !189
  %or.cond = or i1 %1, %2, !dbg !190
  %3 = icmp eq double* %dvec, null, !dbg !191
  %or.cond3 = or i1 %or.cond, %3, !dbg !190
  br i1 %or.cond3, label %6, label %.preheader, !dbg !190

.preheader:                                       ; preds = %0
  %4 = icmp sgt i32 %size, 0, !dbg !192
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !195

.lr.ph:                                           ; preds = %.preheader
  %5 = add i32 %size, -1, !dbg !195
  br label %9, !dbg !195

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !196, !tbaa !64
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), %struct._Drand* %drand, i32 %size, double* %dvec) #5, !dbg !198
  tail call void @exit(i32 -1) #6, !dbg !199
  unreachable, !dbg !199

; <label>:9                                       ; preds = %9, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %10 = tail call double @Drand_value(%struct._Drand* %drand) #8, !dbg !200
  %11 = getelementptr inbounds double* %dvec, i64 %indvars.iv, !dbg !202
  store double %10, double* %11, align 8, !dbg !203, !tbaa !182
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !195
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !195
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !195
  br i1 %exitcond, label %._crit_edge, label %9, !dbg !195

._crit_edge:                                      ; preds = %9, %.preheader
  ret void, !dbg !204
}

; Function Attrs: nounwind optsize ssp uwtable
define void @Drand_fillIvector(%struct._Drand* %drand, i32 %size, i32* %ivec) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Drand* %drand, i64 0, metadata !49, metadata !57), !dbg !205
  tail call void @llvm.dbg.value(metadata i32 %size, i64 0, metadata !50, metadata !57), !dbg !206
  tail call void @llvm.dbg.value(metadata i32* %ivec, i64 0, metadata !51, metadata !57), !dbg !207
  %1 = icmp eq %struct._Drand* %drand, null, !dbg !208
  %2 = icmp slt i32 %size, 0, !dbg !210
  %or.cond = or i1 %1, %2, !dbg !211
  %3 = icmp eq i32* %ivec, null, !dbg !212
  %or.cond3 = or i1 %or.cond, %3, !dbg !211
  br i1 %or.cond3, label %6, label %.preheader, !dbg !211

.preheader:                                       ; preds = %0
  %4 = icmp sgt i32 %size, 0, !dbg !213
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !216

.lr.ph:                                           ; preds = %.preheader
  %5 = add i32 %size, -1, !dbg !216
  br label %9, !dbg !216

; <label>:6                                       ; preds = %0
  %7 = load %struct.__sFILE** @__stderrp, align 8, !dbg !217, !tbaa !64
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._Drand* %drand, i32 %size, i32* %ivec) #5, !dbg !219
  tail call void @exit(i32 -1) #6, !dbg !220
  unreachable, !dbg !220

; <label>:9                                       ; preds = %9, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %10 = tail call double @Drand_value(%struct._Drand* %drand) #8, !dbg !221
  %11 = fptosi double %10 to i32, !dbg !223
  %12 = getelementptr inbounds i32* %ivec, i64 %indvars.iv, !dbg !224
  store i32 %11, i32* %12, align 4, !dbg !225, !tbaa !226
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !216
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !216
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !216
  br i1 %exitcond, label %._crit_edge, label %9, !dbg !216

._crit_edge:                                      ; preds = %9, %.preheader
  ret void, !dbg !227
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!53, !54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/Drand_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !29, !38, !44}
!7 = !DISubprogram(name: "Drand_value", scope: !1, file: !1, line: 14, type: !8, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._Drand*)* @Drand_value, variables: !25)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "Drand", file: !13, line: 27, baseType: !14)
!13 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Drand/src/../Drand.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Drand", file: !13, line: 17, size: 576, align: 64, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "seed1", scope: !14, file: !13, line: 18, baseType: !10, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "seed2", scope: !14, file: !13, line: 19, baseType: !10, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !14, file: !13, line: 20, baseType: !10, size: 64, align: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !14, file: !13, line: 21, baseType: !10, size: 64, align: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !14, file: !13, line: 22, baseType: !10, size: 64, align: 64, offset: 256)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !14, file: !13, line: 23, baseType: !10, size: 64, align: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !14, file: !13, line: 24, baseType: !10, size: 64, align: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !14, file: !13, line: 25, baseType: !10, size: 64, align: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !14, file: !13, line: 26, baseType: !5, size: 32, align: 32, offset: 512)
!25 = !{!26, !27, !28}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !7, file: !1, line: 15, type: !11)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !7, file: !1, line: 17, type: !10)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !7, file: !1, line: 17, type: !10)
!29 = !DISubprogram(name: "Drand_fillZvector", scope: !1, file: !1, line: 90, type: !30, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*, i32, double*)* @Drand_fillZvector, variables: !33)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !11, !5, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!33 = !{!34, !35, !36, !37}
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !29, file: !1, line: 91, type: !11)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !29, file: !1, line: 92, type: !5)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dvec", arg: 3, scope: !29, file: !1, line: 93, type: !32)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !29, file: !1, line: 95, type: !5)
!38 = !DISubprogram(name: "Drand_fillDvector", scope: !1, file: !1, line: 125, type: !30, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*, i32, double*)* @Drand_fillDvector, variables: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !38, file: !1, line: 126, type: !11)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !38, file: !1, line: 127, type: !5)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dvec", arg: 3, scope: !38, file: !1, line: 128, type: !32)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !38, file: !1, line: 130, type: !5)
!44 = !DISubprogram(name: "Drand_fillIvector", scope: !1, file: !1, line: 161, type: !45, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Drand*, i32, i32*)* @Drand_fillIvector, variables: !48)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !11, !5, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!48 = !{!49, !50, !51, !52}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "drand", arg: 1, scope: !44, file: !1, line: 162, type: !11)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !44, file: !1, line: 163, type: !5)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ivec", arg: 3, scope: !44, file: !1, line: 164, type: !47)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !44, file: !1, line: 166, type: !5)
!53 = !{i32 2, !"Dwarf Version", i32 2}
!54 = !{i32 2, !"Debug Info Version", i32 700000003}
!55 = !{i32 1, !"PIC Level", i32 2}
!56 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!57 = !DIExpression()
!58 = !DILocation(line: 15, column: 13, scope: !7)
!59 = !DILocation(line: 23, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 6)
!61 = !DILocation(line: 23, column: 6, scope: !7)
!62 = !DILocation(line: 24, column: 12, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 23, column: 22)
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !DILocation(line: 24, column: 4, scope: !63)
!69 = !DILocation(line: 26, column: 4, scope: !63)
!70 = !DILocation(line: 33, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 6)
!72 = !{!73, !75, i64 64}
!73 = !{!"_Drand", !74, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !74, i64 48, !74, i64 56, !75, i64 64}
!74 = !{!"double", !66, i64 0}
!75 = !{!"int", !66, i64 0}
!76 = !DILocation(line: 33, column: 18, scope: !71)
!77 = !DILocation(line: 39, column: 37, scope: !78)
!78 = distinct !DILexicalBlock(scope: !71, file: !1, line: 33, column: 25)
!79 = !{!73, !74, i64 0}
!80 = !DILocation(line: 39, column: 29, scope: !78)
!81 = !DILocation(line: 39, column: 51, scope: !78)
!82 = !{!73, !74, i64 16}
!83 = !DILocation(line: 39, column: 19, scope: !78)
!84 = !DILocation(line: 39, column: 17, scope: !78)
!85 = !DILocation(line: 40, column: 37, scope: !78)
!86 = !{!73, !74, i64 8}
!87 = !DILocation(line: 40, column: 29, scope: !78)
!88 = !DILocation(line: 40, column: 51, scope: !78)
!89 = !{!73, !74, i64 24}
!90 = !DILocation(line: 40, column: 19, scope: !78)
!91 = !DILocation(line: 40, column: 17, scope: !78)
!92 = !DILocation(line: 41, column: 21, scope: !78)
!93 = !DILocation(line: 17, column: 15, scope: !7)
!94 = !DILocation(line: 42, column: 11, scope: !95)
!95 = distinct !DILexicalBlock(scope: !78, file: !1, line: 42, column: 9)
!96 = !DILocation(line: 33, column: 6, scope: !7)
!97 = !DILocation(line: 42, column: 9, scope: !78)
!98 = !DILocation(line: 43, column: 29, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !1, line: 42, column: 18)
!100 = !DILocation(line: 43, column: 13, scope: !99)
!101 = !DILocation(line: 44, column: 4, scope: !99)
!102 = !DILocation(line: 45, column: 15, scope: !78)
!103 = !{!73, !74, i64 32}
!104 = !DILocation(line: 45, column: 25, scope: !78)
!105 = !DILocation(line: 45, column: 48, scope: !78)
!106 = !{!73, !74, i64 40}
!107 = !DILocation(line: 45, column: 54, scope: !78)
!108 = !DILocation(line: 45, column: 39, scope: !78)
!109 = !DILocation(line: 45, column: 21, scope: !78)
!110 = !DILocation(line: 46, column: 1, scope: !78)
!111 = !DILocation(line: 55, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !71, file: !1, line: 46, column: 8)
!113 = !DILocation(line: 56, column: 29, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 55, column: 18)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 55, column: 9)
!116 = !DILocation(line: 56, column: 13, scope: !114)
!117 = !DILocation(line: 57, column: 4, scope: !114)
!118 = !DILocation(line: 58, column: 10, scope: !112)
!119 = !DILocation(line: 17, column: 10, scope: !7)
!120 = !DILocation(line: 60, column: 29, scope: !112)
!121 = !DILocation(line: 60, column: 19, scope: !112)
!122 = !DILocation(line: 60, column: 17, scope: !112)
!123 = !DILocation(line: 61, column: 29, scope: !112)
!124 = !DILocation(line: 61, column: 19, scope: !112)
!125 = !DILocation(line: 61, column: 17, scope: !112)
!126 = !DILocation(line: 62, column: 21, scope: !112)
!127 = !DILocation(line: 63, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !112, file: !1, line: 63, column: 9)
!129 = !DILocation(line: 63, column: 9, scope: !112)
!130 = !DILocation(line: 64, column: 29, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 63, column: 18)
!132 = !DILocation(line: 64, column: 13, scope: !131)
!133 = !DILocation(line: 65, column: 4, scope: !131)
!134 = !DILocation(line: 66, column: 10, scope: !112)
!135 = !DILocation(line: 67, column: 8, scope: !112)
!136 = !DILocation(line: 68, column: 29, scope: !112)
!137 = !DILocation(line: 68, column: 19, scope: !112)
!138 = !DILocation(line: 68, column: 17, scope: !112)
!139 = !DILocation(line: 69, column: 29, scope: !112)
!140 = !DILocation(line: 69, column: 19, scope: !112)
!141 = !DILocation(line: 69, column: 17, scope: !112)
!142 = !DILocation(line: 70, column: 21, scope: !112)
!143 = !DILocation(line: 71, column: 11, scope: !144)
!144 = distinct !DILexicalBlock(scope: !112, file: !1, line: 71, column: 9)
!145 = !DILocation(line: 71, column: 9, scope: !112)
!146 = !DILocation(line: 72, column: 29, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 71, column: 18)
!148 = !DILocation(line: 72, column: 13, scope: !147)
!149 = !DILocation(line: 73, column: 4, scope: !147)
!150 = !DILocation(line: 74, column: 10, scope: !112)
!151 = !DILocation(line: 75, column: 8, scope: !112)
!152 = !DILocation(line: 76, column: 15, scope: !112)
!153 = !{!73, !74, i64 48}
!154 = !DILocation(line: 76, column: 29, scope: !112)
!155 = !{!73, !74, i64 56}
!156 = !DILocation(line: 76, column: 38, scope: !112)
!157 = !DILocation(line: 76, column: 43, scope: !112)
!158 = !DILocation(line: 76, column: 34, scope: !112)
!159 = !DILocation(line: 76, column: 20, scope: !112)
!160 = !DILocation(line: 79, column: 1, scope: !7)
!161 = !DILocation(line: 91, column: 14, scope: !29)
!162 = !DILocation(line: 92, column: 13, scope: !29)
!163 = !DILocation(line: 93, column: 13, scope: !29)
!164 = !DILocation(line: 101, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !29, file: !1, line: 101, column: 6)
!166 = !DILocation(line: 101, column: 28, scope: !165)
!167 = !DILocation(line: 101, column: 20, scope: !165)
!168 = !DILocation(line: 101, column: 40, scope: !165)
!169 = !DILocation(line: 111, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 111, column: 1)
!171 = distinct !DILexicalBlock(scope: !29, file: !1, line: 111, column: 1)
!172 = !DILocation(line: 111, column: 1, scope: !171)
!173 = !DILocation(line: 111, column: 20, scope: !170)
!174 = !DILocation(line: 102, column: 12, scope: !175)
!175 = distinct !DILexicalBlock(scope: !165, file: !1, line: 101, column: 50)
!176 = !DILocation(line: 102, column: 4, scope: !175)
!177 = !DILocation(line: 104, column: 4, scope: !175)
!178 = !DILocation(line: 112, column: 14, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !1, line: 111, column: 34)
!180 = !DILocation(line: 112, column: 4, scope: !179)
!181 = !DILocation(line: 112, column: 12, scope: !179)
!182 = !{!74, !74, i64 0}
!183 = !DILocation(line: 114, column: 1, scope: !29)
!184 = !DILocation(line: 126, column: 14, scope: !38)
!185 = !DILocation(line: 127, column: 13, scope: !38)
!186 = !DILocation(line: 128, column: 13, scope: !38)
!187 = !DILocation(line: 136, column: 12, scope: !188)
!188 = distinct !DILexicalBlock(scope: !38, file: !1, line: 136, column: 6)
!189 = !DILocation(line: 136, column: 28, scope: !188)
!190 = !DILocation(line: 136, column: 20, scope: !188)
!191 = !DILocation(line: 136, column: 40, scope: !188)
!192 = !DILocation(line: 146, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !1, line: 146, column: 1)
!194 = distinct !DILexicalBlock(scope: !38, file: !1, line: 146, column: 1)
!195 = !DILocation(line: 146, column: 1, scope: !194)
!196 = !DILocation(line: 137, column: 12, scope: !197)
!197 = distinct !DILexicalBlock(scope: !188, file: !1, line: 136, column: 50)
!198 = !DILocation(line: 137, column: 4, scope: !197)
!199 = !DILocation(line: 139, column: 4, scope: !197)
!200 = !DILocation(line: 147, column: 14, scope: !201)
!201 = distinct !DILexicalBlock(scope: !193, file: !1, line: 146, column: 32)
!202 = !DILocation(line: 147, column: 4, scope: !201)
!203 = !DILocation(line: 147, column: 12, scope: !201)
!204 = !DILocation(line: 150, column: 1, scope: !38)
!205 = !DILocation(line: 162, column: 14, scope: !44)
!206 = !DILocation(line: 163, column: 13, scope: !44)
!207 = !DILocation(line: 164, column: 13, scope: !44)
!208 = !DILocation(line: 172, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !44, file: !1, line: 172, column: 6)
!210 = !DILocation(line: 172, column: 28, scope: !209)
!211 = !DILocation(line: 172, column: 20, scope: !209)
!212 = !DILocation(line: 172, column: 40, scope: !209)
!213 = !DILocation(line: 182, column: 17, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 182, column: 1)
!215 = distinct !DILexicalBlock(scope: !44, file: !1, line: 182, column: 1)
!216 = !DILocation(line: 182, column: 1, scope: !215)
!217 = !DILocation(line: 173, column: 12, scope: !218)
!218 = distinct !DILexicalBlock(scope: !209, file: !1, line: 172, column: 50)
!219 = !DILocation(line: 173, column: 4, scope: !218)
!220 = !DILocation(line: 175, column: 4, scope: !218)
!221 = !DILocation(line: 183, column: 20, scope: !222)
!222 = distinct !DILexicalBlock(scope: !214, file: !1, line: 182, column: 32)
!223 = !DILocation(line: 183, column: 14, scope: !222)
!224 = !DILocation(line: 183, column: 4, scope: !222)
!225 = !DILocation(line: 183, column: 12, scope: !222)
!226 = !{!75, !75, i64 0}
!227 = !DILocation(line: 186, column: 1, scope: !44)

; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [67 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A graph is NULL\0A\00", align 1
@.str1 = private unnamed_addr constant [89 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid type = %d, must be in [0,3]\0A\00", align 1
@.str2 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nvtx = %d, must be positive\0A\00", align 1
@.str3 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nvbnd = %d, must be nonnegative\0A\00", align 1
@.str4 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nedges = %d, must be nonnegative\0A\00", align 1
@.str5 = private unnamed_addr constant [74 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid adjType = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid ewghtType = %d\0A\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str7 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A graph is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [98 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A invalid type = %d, must be in [0,3]\0A\00", align 1
@.str9 = private unnamed_addr constant [90 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nvtx = %d, must be positive\0A\00", align 1
@.str10 = private unnamed_addr constant [94 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nvbnd = %d, must be nonnegative\0A\00", align 1
@.str11 = private unnamed_addr constant [95 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nedges = %d, must be nonnegative\0A\00", align 1
@.str12 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A adjIVL is NULL\0A\00", align 1
@.str13 = private unnamed_addr constant [87 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A type = %d, vwghts is NULL\00", align 1
@.str14 = private unnamed_addr constant [89 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A type = %d, ewghtIVL is NULL\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @Graph_init1(%struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !48, metadata !74), !dbg !75
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !49, metadata !74), !dbg !76
  tail call void @llvm.dbg.value(metadata i32 %nvtx, i64 0, metadata !50, metadata !74), !dbg !77
  tail call void @llvm.dbg.value(metadata i32 %nvbnd, i64 0, metadata !51, metadata !74), !dbg !78
  tail call void @llvm.dbg.value(metadata i32 %nedges, i64 0, metadata !52, metadata !74), !dbg !79
  tail call void @llvm.dbg.value(metadata i32 %adjType, i64 0, metadata !53, metadata !74), !dbg !80
  tail call void @llvm.dbg.value(metadata i32 %ewghtType, i64 0, metadata !54, metadata !74), !dbg !81
  %1 = icmp eq %struct._Graph* %g, null, !dbg !82
  br i1 %1, label %2, label %5, !dbg !84

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !85, !tbaa !87
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), %struct._Graph* null, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType) #5, !dbg !91
  tail call void @exit(i32 -1) #6, !dbg !92
  unreachable, !dbg !92

; <label>:5                                       ; preds = %0
  %6 = icmp ugt i32 %type, 3, !dbg !93
  br i1 %6, label %7, label %10, !dbg !93

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stderrp, align 8, !dbg !95, !tbaa !87
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([89 x i8]* @.str1, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %type) #5, !dbg !97
  tail call void @exit(i32 -1) #6, !dbg !98
  unreachable, !dbg !98

; <label>:10                                      ; preds = %5
  %11 = icmp slt i32 %nvtx, 1, !dbg !99
  br i1 %11, label %12, label %15, !dbg !101

; <label>:12                                      ; preds = %10
  %13 = load %struct.__sFILE** @__stderrp, align 8, !dbg !102, !tbaa !87
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nvtx) #5, !dbg !104
  tail call void @exit(i32 -1) #6, !dbg !105
  unreachable, !dbg !105

; <label>:15                                      ; preds = %10
  %16 = icmp slt i32 %nvbnd, 0, !dbg !106
  br i1 %16, label %17, label %20, !dbg !108

; <label>:17                                      ; preds = %15
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !109, !tbaa !87
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([85 x i8]* @.str3, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nvbnd) #5, !dbg !111
  tail call void @exit(i32 -1) #6, !dbg !112
  unreachable, !dbg !112

; <label>:20                                      ; preds = %15
  %21 = icmp slt i32 %nedges, 0, !dbg !113
  br i1 %21, label %22, label %25, !dbg !115

; <label>:22                                      ; preds = %20
  %23 = load %struct.__sFILE** @__stderrp, align 8, !dbg !116, !tbaa !87
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([86 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nedges) #5, !dbg !118
  tail call void @exit(i32 -1) #6, !dbg !119
  unreachable, !dbg !119

; <label>:25                                      ; preds = %20
  %.off = add i32 %adjType, -1, !dbg !120
  %switch = icmp ult i32 %.off, 3, !dbg !120
  br i1 %switch, label %29, label %26, !dbg !120

; <label>:26                                      ; preds = %25
  %27 = load %struct.__sFILE** @__stderrp, align 8, !dbg !121, !tbaa !87
  %28 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %27, i8* getelementptr inbounds ([74 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %adjType) #5, !dbg !123
  tail call void @exit(i32 -1) #6, !dbg !124
  unreachable, !dbg !124

; <label>:29                                      ; preds = %25
  %.off2 = add i32 %ewghtType, -1, !dbg !125
  %switch3 = icmp ult i32 %.off2, 3, !dbg !125
  br i1 %switch3, label %33, label %30, !dbg !125

; <label>:30                                      ; preds = %29
  %31 = load %struct.__sFILE** @__stderrp, align 8, !dbg !126, !tbaa !87
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([76 x i8]* @.str6, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %ewghtType) #5, !dbg !128
  tail call void @exit(i32 -1) #6, !dbg !129
  unreachable, !dbg !129

; <label>:33                                      ; preds = %29
  tail call void @Graph_clearData(%struct._Graph* %g) #5, !dbg !130
  %34 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !131
  store i32 %type, i32* %34, align 4, !dbg !132, !tbaa !133
  %35 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !136
  store i32 %nvtx, i32* %35, align 4, !dbg !137, !tbaa !138
  %36 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !139
  store i32 %nvbnd, i32* %36, align 4, !dbg !140, !tbaa !141
  %37 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 3, !dbg !142
  store i32 %nedges, i32* %37, align 4, !dbg !143, !tbaa !144
  %38 = add nsw i32 %nvbnd, %nvtx, !dbg !145
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !55, metadata !74), !dbg !146
  %39 = tail call %struct._IVL* @IVL_new() #5, !dbg !147
  %40 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !148
  store %struct._IVL* %39, %struct._IVL** %40, align 8, !dbg !149, !tbaa !150
  %41 = icmp eq i32 %nedges, 0, !dbg !151
  %42 = icmp eq i32 %adjType, 3, !dbg !153
  %or.cond5 = or i1 %41, %42, !dbg !154
  br i1 %or.cond5, label %43, label %44, !dbg !154

; <label>:43                                      ; preds = %33
  tail call void @IVL_init1(%struct._IVL* %39, i32 %adjType, i32 %38) #5, !dbg !155
  br label %45, !dbg !157

; <label>:44                                      ; preds = %33
  tail call void @IVL_init2(%struct._IVL* %39, i32 %adjType, i32 %38, i32 %nedges) #5, !dbg !158
  br label %45

; <label>:45                                      ; preds = %44, %43
  %46 = srem i32 %type, 2, !dbg !160
  %47 = icmp eq i32 %46, 1, !dbg !162
  br i1 %47, label %48, label %51, !dbg !163

; <label>:48                                      ; preds = %45
  %49 = tail call i32* @IVinit(i32 %38, i32 0) #5, !dbg !164
  %50 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !166
  store i32* %49, i32** %50, align 8, !dbg !167, !tbaa !168
  br label %51, !dbg !169

; <label>:51                                      ; preds = %48, %45
  %52 = icmp sgt i32 %type, 1, !dbg !170
  br i1 %52, label %53, label %59, !dbg !172

; <label>:53                                      ; preds = %51
  %54 = tail call %struct._IVL* @IVL_new() #5, !dbg !173
  %55 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !175
  store %struct._IVL* %54, %struct._IVL** %55, align 8, !dbg !176, !tbaa !177
  %56 = icmp eq i32 %ewghtType, 3, !dbg !178
  %or.cond7 = or i1 %41, %56, !dbg !180
  br i1 %or.cond7, label %57, label %58, !dbg !180

; <label>:57                                      ; preds = %53
  tail call void @IVL_init1(%struct._IVL* %54, i32 %ewghtType, i32 %38) #5, !dbg !181
  br label %59, !dbg !183

; <label>:58                                      ; preds = %53
  tail call void @IVL_init2(%struct._IVL* %54, i32 %ewghtType, i32 %38, i32 %nedges) #5, !dbg !184
  br label %59

; <label>:59                                      ; preds = %57, %58, %51
  ret void, !dbg !186
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: noreturn optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Graph_clearData(%struct._Graph*) #3

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #3

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #3

; Function Attrs: optsize
declare void @IVL_init2(%struct._IVL*, i32, i32, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @Graph_init2(%struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL) #0 {
  tail call void @llvm.dbg.value(metadata %struct._Graph* %g, i64 0, metadata !60, metadata !74), !dbg !187
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !61, metadata !74), !dbg !188
  tail call void @llvm.dbg.value(metadata i32 %nvtx, i64 0, metadata !62, metadata !74), !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %nvbnd, i64 0, metadata !63, metadata !74), !dbg !190
  tail call void @llvm.dbg.value(metadata i32 %nedges, i64 0, metadata !64, metadata !74), !dbg !191
  tail call void @llvm.dbg.value(metadata i32 %totvwght, i64 0, metadata !65, metadata !74), !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %totewght, i64 0, metadata !66, metadata !74), !dbg !193
  tail call void @llvm.dbg.value(metadata %struct._IVL* %adjIVL, i64 0, metadata !67, metadata !74), !dbg !194
  tail call void @llvm.dbg.value(metadata i32* %vwghts, i64 0, metadata !68, metadata !74), !dbg !195
  tail call void @llvm.dbg.value(metadata %struct._IVL* %ewghtIVL, i64 0, metadata !69, metadata !74), !dbg !196
  %1 = icmp eq %struct._Graph* %g, null, !dbg !197
  br i1 %1, label %2, label %5, !dbg !199

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !200, !tbaa !87
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), %struct._Graph* null, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL) #5, !dbg !202
  tail call void @exit(i32 -1) #6, !dbg !203
  unreachable, !dbg !203

; <label>:5                                       ; preds = %0
  %6 = icmp ugt i32 %type, 3, !dbg !204
  br i1 %6, label %7, label %10, !dbg !204

; <label>:7                                       ; preds = %5
  %8 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !206, !tbaa !87
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %8, i8* getelementptr inbounds ([98 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %type) #5, !dbg !208
  tail call void @exit(i32 -1) #6, !dbg !209
  unreachable, !dbg !209

; <label>:10                                      ; preds = %5
  %11 = icmp slt i32 %nvtx, 1, !dbg !210
  br i1 %11, label %12, label %15, !dbg !212

; <label>:12                                      ; preds = %10
  %13 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !213, !tbaa !87
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %13, i8* getelementptr inbounds ([90 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nvtx) #5, !dbg !215
  tail call void @exit(i32 -1) #6, !dbg !216
  unreachable, !dbg !216

; <label>:15                                      ; preds = %10
  %16 = icmp slt i32 %nvbnd, 0, !dbg !217
  br i1 %16, label %17, label %20, !dbg !219

; <label>:17                                      ; preds = %15
  %18 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !220, !tbaa !87
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([94 x i8]* @.str10, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nvbnd) #5, !dbg !222
  tail call void @exit(i32 -1) #6, !dbg !223
  unreachable, !dbg !223

; <label>:20                                      ; preds = %15
  %21 = icmp slt i32 %nedges, 0, !dbg !224
  br i1 %21, label %22, label %25, !dbg !226

; <label>:22                                      ; preds = %20
  %23 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !227, !tbaa !87
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([95 x i8]* @.str11, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nedges) #5, !dbg !229
  tail call void @exit(i32 -1) #6, !dbg !230
  unreachable, !dbg !230

; <label>:25                                      ; preds = %20
  %26 = icmp eq %struct._IVL* %adjIVL, null, !dbg !231
  br i1 %26, label %27, label %30, !dbg !233

; <label>:27                                      ; preds = %25
  %28 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !234, !tbaa !87
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %28, i8* getelementptr inbounds ([77 x i8]* @.str12, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* null, i32* %vwghts, %struct._IVL* %ewghtIVL) #5, !dbg !236
  tail call void @exit(i32 -1) #6, !dbg !237
  unreachable, !dbg !237

; <label>:30                                      ; preds = %25
  %31 = srem i32 %type, 2, !dbg !238
  %32 = icmp eq i32 %31, 1, !dbg !240
  %33 = icmp eq i32* %vwghts, null, !dbg !241
  %or.cond3 = and i1 %33, %32, !dbg !242
  br i1 %or.cond3, label %34, label %37, !dbg !242

; <label>:34                                      ; preds = %30
  %35 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !243, !tbaa !87
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([87 x i8]* @.str13, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* null, %struct._IVL* %ewghtIVL, i32 %type) #5, !dbg !245
  tail call void @exit(i32 -1) #6, !dbg !246
  unreachable, !dbg !246

; <label>:37                                      ; preds = %30
  %38 = icmp sgt i32 %type, 1, !dbg !247
  %39 = icmp eq %struct._IVL* %ewghtIVL, null, !dbg !249
  %or.cond5 = and i1 %38, %39, !dbg !250
  br i1 %or.cond5, label %40, label %43, !dbg !250

; <label>:40                                      ; preds = %37
  %41 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !251, !tbaa !87
  %42 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %41, i8* getelementptr inbounds ([89 x i8]* @.str14, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* null, i32 %type) #5, !dbg !253
  tail call void @exit(i32 -1) #6, !dbg !254
  unreachable, !dbg !254

; <label>:43                                      ; preds = %37
  tail call void @Graph_clearData(%struct._Graph* %g) #5, !dbg !255
  %44 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !256
  store i32 %type, i32* %44, align 4, !dbg !257, !tbaa !133
  %45 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !258
  store i32 %nvtx, i32* %45, align 4, !dbg !259, !tbaa !138
  %46 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !260
  store i32 %nvbnd, i32* %46, align 4, !dbg !261, !tbaa !141
  %47 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 3, !dbg !262
  store i32 %nedges, i32* %47, align 4, !dbg !263, !tbaa !144
  %48 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 4, !dbg !264
  store i32 %totvwght, i32* %48, align 4, !dbg !265, !tbaa !266
  %49 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 5, !dbg !267
  store i32 %totewght, i32* %49, align 4, !dbg !268, !tbaa !269
  %50 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !270
  store %struct._IVL* %adjIVL, %struct._IVL** %50, align 8, !dbg !271, !tbaa !150
  br i1 %32, label %51, label %53, !dbg !272

; <label>:51                                      ; preds = %43
  %52 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !273
  store i32* %vwghts, i32** %52, align 8, !dbg !276, !tbaa !168
  br label %53, !dbg !277

; <label>:53                                      ; preds = %51, %43
  br i1 %38, label %54, label %56, !dbg !278

; <label>:54                                      ; preds = %53
  %55 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !279
  store %struct._IVL* %ewghtIVL, %struct._IVL** %55, align 8, !dbg !282, !tbaa !177
  br label %56, !dbg !283

; <label>:56                                      ; preds = %54, %53
  ret void, !dbg !284
}

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

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !56}
!6 = !DISubprogram(name: "Graph_init1", scope: !1, file: !1, line: 23, type: !7, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Graph*, i32, i32, i32, i32, i32, i32)* @Graph_init1, variables: !47)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9, !15, !15, !15, !15, !15, !15}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Graph", file: !11, line: 49, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../Graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Graph", file: !11, line: 50, size: 384, align: 64, elements: !13)
!13 = !{!14, !16, !17, !18, !19, !20, !21, !45, !46}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 51, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nvtx", scope: !12, file: !11, line: 52, baseType: !15, size: 32, align: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "nvbnd", scope: !12, file: !11, line: 53, baseType: !15, size: 32, align: 32, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "nedges", scope: !12, file: !11, line: 54, baseType: !15, size: 32, align: 32, offset: 96)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "totvwght", scope: !12, file: !11, line: 55, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "totewght", scope: !12, file: !11, line: 56, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "adjIVL", scope: !12, file: !11, line: 57, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "IVL", file: !24, line: 55, baseType: !25)
!24 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IVL/IVL.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IVL", file: !24, line: 79, size: 384, align: 64, elements: !26)
!26 = !{!27, !28, !29, !30, !31, !33, !35, !36}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !25, file: !24, line: 80, baseType: !15, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "maxnlist", scope: !25, file: !24, line: 81, baseType: !15, size: 32, align: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nlist", scope: !25, file: !24, line: 82, baseType: !15, size: 32, align: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tsize", scope: !25, file: !24, line: 83, baseType: !15, size: 32, align: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "sizes", scope: !25, file: !24, line: 84, baseType: !32, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "p_vec", scope: !25, file: !24, line: 85, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !25, file: !24, line: 86, baseType: !15, size: 32, align: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !25, file: !24, line: 87, baseType: !37, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ichunk", file: !24, line: 56, baseType: !39)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ichunk", file: !24, line: 102, size: 192, align: 64, elements: !40)
!40 = !{!41, !42, !43, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !39, file: !24, line: 103, baseType: !15, size: 32, align: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !39, file: !24, line: 104, baseType: !15, size: 32, align: 32, offset: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !39, file: !24, line: 105, baseType: !32, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !24, line: 106, baseType: !37, size: 64, align: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "vwghts", scope: !12, file: !11, line: 58, baseType: !32, size: 64, align: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ewghtIVL", scope: !12, file: !11, line: 59, baseType: !22, size: 64, align: 64, offset: 320)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !6, file: !1, line: 24, type: !9)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !6, file: !1, line: 25, type: !15)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nvtx", arg: 3, scope: !6, file: !1, line: 26, type: !15)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nvbnd", arg: 4, scope: !6, file: !1, line: 27, type: !15)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nedges", arg: 5, scope: !6, file: !1, line: 28, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "adjType", arg: 6, scope: !6, file: !1, line: 29, type: !15)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ewghtType", arg: 7, scope: !6, file: !1, line: 30, type: !15)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nvtot", scope: !6, file: !1, line: 32, type: !15)
!56 = !DISubprogram(name: "Graph_init2", scope: !1, file: !1, line: 180, type: !57, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._Graph*, i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL*)* @Graph_init2, variables: !59)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !9, !15, !15, !15, !15, !15, !15, !22, !32, !22}
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !56, file: !1, line: 181, type: !9)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !56, file: !1, line: 182, type: !15)
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nvtx", arg: 3, scope: !56, file: !1, line: 183, type: !15)
!63 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nvbnd", arg: 4, scope: !56, file: !1, line: 184, type: !15)
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nedges", arg: 5, scope: !56, file: !1, line: 185, type: !15)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "totvwght", arg: 6, scope: !56, file: !1, line: 186, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "totewght", arg: 7, scope: !56, file: !1, line: 187, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "adjIVL", arg: 8, scope: !56, file: !1, line: 188, type: !22)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vwghts", arg: 9, scope: !56, file: !1, line: 189, type: !32)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ewghtIVL", arg: 10, scope: !56, file: !1, line: 190, type: !22)
!70 = !{i32 2, !"Dwarf Version", i32 2}
!71 = !{i32 2, !"Debug Info Version", i32 700000003}
!72 = !{i32 1, !"PIC Level", i32 2}
!73 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!74 = !DIExpression()
!75 = !DILocation(line: 24, column: 13, scope: !6)
!76 = !DILocation(line: 25, column: 12, scope: !6)
!77 = !DILocation(line: 26, column: 12, scope: !6)
!78 = !DILocation(line: 27, column: 12, scope: !6)
!79 = !DILocation(line: 28, column: 12, scope: !6)
!80 = !DILocation(line: 29, column: 12, scope: !6)
!81 = !DILocation(line: 30, column: 12, scope: !6)
!82 = !DILocation(line: 43, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !6, file: !1, line: 43, column: 6)
!84 = !DILocation(line: 43, column: 6, scope: !6)
!85 = !DILocation(line: 44, column: 12, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 43, column: 18)
!87 = !{!88, !88, i64 0}
!88 = !{!"any pointer", !89, i64 0}
!89 = !{!"omnipotent char", !90, i64 0}
!90 = !{!"Simple C/C++ TBAA"}
!91 = !DILocation(line: 44, column: 4, scope: !86)
!92 = !DILocation(line: 47, column: 4, scope: !86)
!93 = !DILocation(line: 49, column: 15, scope: !94)
!94 = distinct !DILexicalBlock(scope: !6, file: !1, line: 49, column: 6)
!95 = !DILocation(line: 50, column: 12, scope: !96)
!96 = distinct !DILexicalBlock(scope: !94, file: !1, line: 49, column: 30)
!97 = !DILocation(line: 50, column: 4, scope: !96)
!98 = !DILocation(line: 53, column: 4, scope: !96)
!99 = !DILocation(line: 55, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !6, file: !1, line: 55, column: 6)
!101 = !DILocation(line: 55, column: 6, scope: !6)
!102 = !DILocation(line: 56, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 55, column: 18)
!104 = !DILocation(line: 56, column: 4, scope: !103)
!105 = !DILocation(line: 59, column: 4, scope: !103)
!106 = !DILocation(line: 61, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !6, file: !1, line: 61, column: 6)
!108 = !DILocation(line: 61, column: 6, scope: !6)
!109 = !DILocation(line: 62, column: 12, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 61, column: 18)
!111 = !DILocation(line: 62, column: 4, scope: !110)
!112 = !DILocation(line: 65, column: 4, scope: !110)
!113 = !DILocation(line: 67, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !6, file: !1, line: 67, column: 6)
!115 = !DILocation(line: 67, column: 6, scope: !6)
!116 = !DILocation(line: 68, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 67, column: 19)
!118 = !DILocation(line: 68, column: 4, scope: !117)
!119 = !DILocation(line: 71, column: 4, scope: !117)
!120 = !DILocation(line: 77, column: 1, scope: !6)
!121 = !DILocation(line: 83, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !6, file: !1, line: 77, column: 20)
!123 = !DILocation(line: 83, column: 4, scope: !122)
!124 = !DILocation(line: 86, column: 4, scope: !122)
!125 = !DILocation(line: 88, column: 1, scope: !6)
!126 = !DILocation(line: 94, column: 12, scope: !127)
!127 = distinct !DILexicalBlock(scope: !6, file: !1, line: 88, column: 22)
!128 = !DILocation(line: 94, column: 4, scope: !127)
!129 = !DILocation(line: 97, column: 4, scope: !127)
!130 = !DILocation(line: 104, column: 1, scope: !6)
!131 = !DILocation(line: 110, column: 4, scope: !6)
!132 = !DILocation(line: 110, column: 11, scope: !6)
!133 = !{!134, !135, i64 0}
!134 = !{!"_Graph", !135, i64 0, !135, i64 4, !135, i64 8, !135, i64 12, !135, i64 16, !135, i64 20, !88, i64 24, !88, i64 32, !88, i64 40}
!135 = !{!"int", !89, i64 0}
!136 = !DILocation(line: 111, column: 4, scope: !6)
!137 = !DILocation(line: 111, column: 11, scope: !6)
!138 = !{!134, !135, i64 4}
!139 = !DILocation(line: 112, column: 4, scope: !6)
!140 = !DILocation(line: 112, column: 11, scope: !6)
!141 = !{!134, !135, i64 8}
!142 = !DILocation(line: 113, column: 4, scope: !6)
!143 = !DILocation(line: 113, column: 11, scope: !6)
!144 = !{!134, !135, i64 12}
!145 = !DILocation(line: 114, column: 18, scope: !6)
!146 = !DILocation(line: 32, column: 7, scope: !6)
!147 = !DILocation(line: 120, column: 13, scope: !6)
!148 = !DILocation(line: 120, column: 4, scope: !6)
!149 = !DILocation(line: 120, column: 11, scope: !6)
!150 = !{!134, !88, i64 24}
!151 = !DILocation(line: 121, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !6, file: !1, line: 121, column: 6)
!153 = !DILocation(line: 121, column: 29, scope: !152)
!154 = !DILocation(line: 121, column: 18, scope: !152)
!155 = !DILocation(line: 122, column: 4, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !1, line: 121, column: 46)
!157 = !DILocation(line: 123, column: 1, scope: !156)
!158 = !DILocation(line: 124, column: 4, scope: !159)
!159 = distinct !DILexicalBlock(scope: !152, file: !1, line: 123, column: 8)
!160 = !DILocation(line: 126, column: 11, scope: !161)
!161 = distinct !DILexicalBlock(scope: !6, file: !1, line: 126, column: 6)
!162 = !DILocation(line: 126, column: 15, scope: !161)
!163 = !DILocation(line: 126, column: 6, scope: !6)
!164 = !DILocation(line: 132, column: 16, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !1, line: 126, column: 22)
!166 = !DILocation(line: 132, column: 7, scope: !165)
!167 = !DILocation(line: 132, column: 14, scope: !165)
!168 = !{!134, !88, i64 32}
!169 = !DILocation(line: 133, column: 1, scope: !165)
!170 = !DILocation(line: 134, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !6, file: !1, line: 134, column: 6)
!172 = !DILocation(line: 134, column: 6, scope: !6)
!173 = !DILocation(line: 140, column: 18, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 134, column: 18)
!175 = !DILocation(line: 140, column: 7, scope: !174)
!176 = !DILocation(line: 140, column: 16, scope: !174)
!177 = !{!134, !88, i64 40}
!178 = !DILocation(line: 141, column: 34, scope: !179)
!179 = distinct !DILexicalBlock(scope: !174, file: !1, line: 141, column: 9)
!180 = !DILocation(line: 141, column: 21, scope: !179)
!181 = !DILocation(line: 142, column: 7, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !1, line: 141, column: 51)
!183 = !DILocation(line: 143, column: 4, scope: !182)
!184 = !DILocation(line: 144, column: 7, scope: !185)
!185 = distinct !DILexicalBlock(scope: !179, file: !1, line: 143, column: 11)
!186 = !DILocation(line: 154, column: 1, scope: !6)
!187 = !DILocation(line: 181, column: 13, scope: !56)
!188 = !DILocation(line: 182, column: 12, scope: !56)
!189 = !DILocation(line: 183, column: 12, scope: !56)
!190 = !DILocation(line: 184, column: 12, scope: !56)
!191 = !DILocation(line: 185, column: 12, scope: !56)
!192 = !DILocation(line: 186, column: 12, scope: !56)
!193 = !DILocation(line: 187, column: 12, scope: !56)
!194 = !DILocation(line: 188, column: 13, scope: !56)
!195 = !DILocation(line: 189, column: 13, scope: !56)
!196 = !DILocation(line: 190, column: 13, scope: !56)
!197 = !DILocation(line: 204, column: 8, scope: !198)
!198 = distinct !DILexicalBlock(scope: !56, file: !1, line: 204, column: 6)
!199 = !DILocation(line: 204, column: 6, scope: !56)
!200 = !DILocation(line: 205, column: 12, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 204, column: 18)
!202 = !DILocation(line: 205, column: 4, scope: !201)
!203 = !DILocation(line: 210, column: 4, scope: !201)
!204 = !DILocation(line: 212, column: 15, scope: !205)
!205 = distinct !DILexicalBlock(scope: !56, file: !1, line: 212, column: 6)
!206 = !DILocation(line: 213, column: 12, scope: !207)
!207 = distinct !DILexicalBlock(scope: !205, file: !1, line: 212, column: 30)
!208 = !DILocation(line: 213, column: 4, scope: !207)
!209 = !DILocation(line: 218, column: 4, scope: !207)
!210 = !DILocation(line: 220, column: 11, scope: !211)
!211 = distinct !DILexicalBlock(scope: !56, file: !1, line: 220, column: 6)
!212 = !DILocation(line: 220, column: 6, scope: !56)
!213 = !DILocation(line: 221, column: 12, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !1, line: 220, column: 18)
!215 = !DILocation(line: 221, column: 4, scope: !214)
!216 = !DILocation(line: 226, column: 4, scope: !214)
!217 = !DILocation(line: 228, column: 12, scope: !218)
!218 = distinct !DILexicalBlock(scope: !56, file: !1, line: 228, column: 6)
!219 = !DILocation(line: 228, column: 6, scope: !56)
!220 = !DILocation(line: 229, column: 12, scope: !221)
!221 = distinct !DILexicalBlock(scope: !218, file: !1, line: 228, column: 18)
!222 = !DILocation(line: 229, column: 4, scope: !221)
!223 = !DILocation(line: 234, column: 4, scope: !221)
!224 = !DILocation(line: 236, column: 13, scope: !225)
!225 = distinct !DILexicalBlock(scope: !56, file: !1, line: 236, column: 6)
!226 = !DILocation(line: 236, column: 6, scope: !56)
!227 = !DILocation(line: 237, column: 12, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !1, line: 236, column: 19)
!229 = !DILocation(line: 237, column: 4, scope: !228)
!230 = !DILocation(line: 242, column: 4, scope: !228)
!231 = !DILocation(line: 244, column: 13, scope: !232)
!232 = distinct !DILexicalBlock(scope: !56, file: !1, line: 244, column: 6)
!233 = !DILocation(line: 244, column: 6, scope: !56)
!234 = !DILocation(line: 245, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 244, column: 23)
!236 = !DILocation(line: 245, column: 4, scope: !235)
!237 = !DILocation(line: 250, column: 4, scope: !235)
!238 = !DILocation(line: 252, column: 12, scope: !239)
!239 = distinct !DILexicalBlock(scope: !56, file: !1, line: 252, column: 6)
!240 = !DILocation(line: 252, column: 16, scope: !239)
!241 = !DILocation(line: 252, column: 33, scope: !239)
!242 = !DILocation(line: 252, column: 22, scope: !239)
!243 = !DILocation(line: 253, column: 12, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !1, line: 252, column: 44)
!245 = !DILocation(line: 253, column: 4, scope: !244)
!246 = !DILocation(line: 258, column: 4, scope: !244)
!247 = !DILocation(line: 260, column: 12, scope: !248)
!248 = distinct !DILexicalBlock(scope: !56, file: !1, line: 260, column: 6)
!249 = !DILocation(line: 260, column: 31, scope: !248)
!250 = !DILocation(line: 260, column: 18, scope: !248)
!251 = !DILocation(line: 261, column: 12, scope: !252)
!252 = distinct !DILexicalBlock(scope: !248, file: !1, line: 260, column: 42)
!253 = !DILocation(line: 261, column: 4, scope: !252)
!254 = !DILocation(line: 266, column: 4, scope: !252)
!255 = !DILocation(line: 273, column: 1, scope: !56)
!256 = !DILocation(line: 279, column: 4, scope: !56)
!257 = !DILocation(line: 279, column: 13, scope: !56)
!258 = !DILocation(line: 280, column: 4, scope: !56)
!259 = !DILocation(line: 280, column: 13, scope: !56)
!260 = !DILocation(line: 281, column: 4, scope: !56)
!261 = !DILocation(line: 281, column: 13, scope: !56)
!262 = !DILocation(line: 282, column: 4, scope: !56)
!263 = !DILocation(line: 282, column: 13, scope: !56)
!264 = !DILocation(line: 283, column: 4, scope: !56)
!265 = !DILocation(line: 283, column: 13, scope: !56)
!266 = !{!134, !135, i64 16}
!267 = !DILocation(line: 284, column: 4, scope: !56)
!268 = !DILocation(line: 284, column: 13, scope: !56)
!269 = !{!134, !135, i64 20}
!270 = !DILocation(line: 290, column: 4, scope: !56)
!271 = !DILocation(line: 290, column: 11, scope: !56)
!272 = !DILocation(line: 291, column: 6, scope: !56)
!273 = !DILocation(line: 292, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 291, column: 22)
!275 = distinct !DILexicalBlock(scope: !56, file: !1, line: 291, column: 6)
!276 = !DILocation(line: 292, column: 14, scope: !274)
!277 = !DILocation(line: 293, column: 1, scope: !274)
!278 = !DILocation(line: 294, column: 6, scope: !56)
!279 = !DILocation(line: 295, column: 7, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !1, line: 294, column: 18)
!281 = distinct !DILexicalBlock(scope: !56, file: !1, line: 294, column: 6)
!282 = !DILocation(line: 295, column: 16, scope: !280)
!283 = !DILocation(line: 296, column: 1, scope: !280)
!284 = !DILocation(line: 307, column: 1, scope: !56)

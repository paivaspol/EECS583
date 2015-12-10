; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/remastruct.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

@str = private unnamed_addr constant [23 x i8] c"Decascading the MPC's\0A\00"
@str3 = private unnamed_addr constant [47 x i8] c"Renumbering the nodes to decrease the profile:\00"
@str4 = private unnamed_addr constant [41 x i8] c"Determining the structure of the matrix:\00"

; Function Attrs: nounwind optsize ssp uwtable
define void @remastruct(i32* %ipompc, double** nocapture %coefmpcp, i32** nocapture %nodempcp, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, i32* %nnn, i32* %nactdof, i32* %icol, i32* %jq, i32** nocapture %irowp, i32* %isolver, i32* %neq, i32* %nzs, i32* %nmethod, double** nocapture %fp, double** nocapture %fincp, double** nocapture %fextp, double** nocapture %bp, double** nocapture %aux2p, double** nocapture %finip, double** nocapture %fextinip, double** nocapture %adbp, double** nocapture %aubp, i32* %ithermal) #0 {
  %nodempc = alloca i32*, align 8
  %mast1 = alloca i32*, align 8
  %mpcend = alloca i32, align 4
  %mpcmult = alloca i32, align 4
  %nsky = alloca i32, align 4
  %callfrommain = alloca i32, align 4
  %irow = alloca i32*, align 8
  %coefmpc = alloca double*, align 8
  tail call void @llvm.dbg.value(metadata i32* %ipompc, i64 0, metadata !17, metadata !89), !dbg !90
  tail call void @llvm.dbg.value(metadata double** %coefmpcp, i64 0, metadata !18, metadata !89), !dbg !91
  tail call void @llvm.dbg.value(metadata i32** %nodempcp, i64 0, metadata !19, metadata !89), !dbg !92
  tail call void @llvm.dbg.value(metadata i32* %nmpc, i64 0, metadata !20, metadata !89), !dbg !93
  tail call void @llvm.dbg.value(metadata i32* %mpcfree, i64 0, metadata !21, metadata !89), !dbg !94
  tail call void @llvm.dbg.value(metadata i32* %nodeboun, i64 0, metadata !22, metadata !89), !dbg !95
  tail call void @llvm.dbg.value(metadata i32* %ndirboun, i64 0, metadata !23, metadata !89), !dbg !96
  tail call void @llvm.dbg.value(metadata i32* %nboun, i64 0, metadata !24, metadata !89), !dbg !97
  tail call void @llvm.dbg.value(metadata i32* %ikmpc, i64 0, metadata !25, metadata !89), !dbg !98
  tail call void @llvm.dbg.value(metadata i32* %ilmpc, i64 0, metadata !26, metadata !89), !dbg !99
  tail call void @llvm.dbg.value(metadata i32* %ikboun, i64 0, metadata !27, metadata !89), !dbg !100
  tail call void @llvm.dbg.value(metadata i32* %ilboun, i64 0, metadata !28, metadata !89), !dbg !101
  tail call void @llvm.dbg.value(metadata i8* %labmpc, i64 0, metadata !29, metadata !89), !dbg !102
  tail call void @llvm.dbg.value(metadata i32 %labmpcLen, i64 0, metadata !30, metadata !89), !dbg !103
  tail call void @llvm.dbg.value(metadata i32* %nk, i64 0, metadata !31, metadata !89), !dbg !104
  tail call void @llvm.dbg.value(metadata i32* %memmpc_, i64 0, metadata !32, metadata !89), !dbg !105
  tail call void @llvm.dbg.value(metadata i32* %icascade, i64 0, metadata !33, metadata !89), !dbg !106
  tail call void @llvm.dbg.value(metadata i32* %maxlenmpc, i64 0, metadata !34, metadata !89), !dbg !107
  tail call void @llvm.dbg.value(metadata i32* %kon, i64 0, metadata !35, metadata !89), !dbg !108
  tail call void @llvm.dbg.value(metadata i32* %ipkon, i64 0, metadata !36, metadata !89), !dbg !109
  tail call void @llvm.dbg.value(metadata i8* %lakon, i64 0, metadata !37, metadata !89), !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %lakonLen, i64 0, metadata !38, metadata !89), !dbg !111
  tail call void @llvm.dbg.value(metadata i32* %ne, i64 0, metadata !39, metadata !89), !dbg !112
  tail call void @llvm.dbg.value(metadata i32* %nnn, i64 0, metadata !40, metadata !89), !dbg !113
  tail call void @llvm.dbg.value(metadata i32* %nactdof, i64 0, metadata !41, metadata !89), !dbg !114
  tail call void @llvm.dbg.value(metadata i32* %icol, i64 0, metadata !42, metadata !89), !dbg !115
  tail call void @llvm.dbg.value(metadata i32* %jq, i64 0, metadata !43, metadata !89), !dbg !116
  tail call void @llvm.dbg.value(metadata i32** %irowp, i64 0, metadata !44, metadata !89), !dbg !117
  tail call void @llvm.dbg.value(metadata i32* %isolver, i64 0, metadata !45, metadata !89), !dbg !118
  tail call void @llvm.dbg.value(metadata i32* %neq, i64 0, metadata !46, metadata !89), !dbg !119
  tail call void @llvm.dbg.value(metadata i32* %nzs, i64 0, metadata !47, metadata !89), !dbg !120
  tail call void @llvm.dbg.value(metadata i32* %nmethod, i64 0, metadata !48, metadata !89), !dbg !121
  tail call void @llvm.dbg.value(metadata double** %fp, i64 0, metadata !49, metadata !89), !dbg !122
  tail call void @llvm.dbg.value(metadata double** %fincp, i64 0, metadata !50, metadata !89), !dbg !123
  tail call void @llvm.dbg.value(metadata double** %fextp, i64 0, metadata !51, metadata !89), !dbg !124
  tail call void @llvm.dbg.value(metadata double** %bp, i64 0, metadata !52, metadata !89), !dbg !125
  tail call void @llvm.dbg.value(metadata double** %aux2p, i64 0, metadata !53, metadata !89), !dbg !126
  tail call void @llvm.dbg.value(metadata double** %finip, i64 0, metadata !54, metadata !89), !dbg !127
  tail call void @llvm.dbg.value(metadata double** %fextinip, i64 0, metadata !55, metadata !89), !dbg !128
  tail call void @llvm.dbg.value(metadata double** %adbp, i64 0, metadata !56, metadata !89), !dbg !129
  tail call void @llvm.dbg.value(metadata double** %aubp, i64 0, metadata !57, metadata !89), !dbg !130
  tail call void @llvm.dbg.value(metadata i32* %ithermal, i64 0, metadata !58, metadata !89), !dbg !131
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !59, metadata !89), !dbg !132
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !60, metadata !89), !dbg !133
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !61, metadata !89), !dbg !134
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !62, metadata !89), !dbg !135
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !63, metadata !89), !dbg !136
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !64, metadata !89), !dbg !137
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !65, metadata !89), !dbg !138
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !66, metadata !89), !dbg !139
  store i32* null, i32** %mast1, align 8, !dbg !139, !tbaa !140
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !67, metadata !89), !dbg !144
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !68, metadata !89), !dbg !145
  tail call void @llvm.dbg.value(metadata i32* null, i64 0, metadata !74, metadata !89), !dbg !146
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !75, metadata !89), !dbg !147
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !76, metadata !89), !dbg !148
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !77, metadata !89), !dbg !149
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !78, metadata !89), !dbg !150
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !79, metadata !89), !dbg !151
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !80, metadata !89), !dbg !152
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !81, metadata !89), !dbg !153
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !82, metadata !89), !dbg !154
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !83, metadata !89), !dbg !155
  tail call void @llvm.dbg.value(metadata double* null, i64 0, metadata !84, metadata !89), !dbg !156
  %1 = bitcast i32** %nodempcp to i64*, !dbg !157
  %2 = load i64* %1, align 8, !dbg !157, !tbaa !140
  %3 = bitcast i32** %nodempc to i64*, !dbg !158
  store i64 %2, i64* %3, align 8, !dbg !158, !tbaa !140
  %4 = bitcast double** %coefmpcp to i64*, !dbg !159
  %5 = load i64* %4, align 8, !dbg !159, !tbaa !140
  %6 = bitcast double** %coefmpc to i64*, !dbg !160
  store i64 %5, i64* %6, align 8, !dbg !160, !tbaa !140
  %7 = bitcast i32** %irowp to i64*, !dbg !161
  %8 = load i64* %7, align 8, !dbg !161, !tbaa !140
  %9 = bitcast i32** %irow to i64*, !dbg !162
  store i64 %8, i64* %9, align 8, !dbg !162, !tbaa !140
  %10 = bitcast double** %fp to i8**, !dbg !163
  %11 = load i8** %10, align 8, !dbg !163, !tbaa !140
  %12 = bitcast double** %fincp to i8**, !dbg !164
  %13 = load i8** %12, align 8, !dbg !164, !tbaa !140
  %14 = bitcast double** %fextp to i8**, !dbg !165
  %15 = load i8** %14, align 8, !dbg !165, !tbaa !140
  %16 = bitcast double** %bp to i8**, !dbg !166
  %17 = load i8** %16, align 8, !dbg !166, !tbaa !140
  %18 = load double** %aux2p, align 8, !dbg !167, !tbaa !140
  tail call void @llvm.dbg.value(metadata double* %18, i64 0, metadata !80, metadata !89), !dbg !152
  %19 = bitcast double** %finip to i8**, !dbg !168
  %20 = load i8** %19, align 8, !dbg !168, !tbaa !140
  %21 = load double** %fextinip, align 8, !dbg !169, !tbaa !140
  tail call void @llvm.dbg.value(metadata double* %21, i64 0, metadata !82, metadata !89), !dbg !154
  %22 = load double** %adbp, align 8, !dbg !170, !tbaa !140
  tail call void @llvm.dbg.value(metadata double* %22, i64 0, metadata !83, metadata !89), !dbg !155
  %23 = load double** %aubp, align 8, !dbg !171, !tbaa !140
  tail call void @llvm.dbg.value(metadata double* %23, i64 0, metadata !84, metadata !89), !dbg !156
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str, i64 0, i64 0)), !dbg !172
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !72, metadata !89), !dbg !173
  store i32 0, i32* %callfrommain, align 4, !dbg !174, !tbaa !175
  tail call void @llvm.dbg.value(metadata i32** %nodempc, i64 0, metadata !59, metadata !89), !dbg !132
  tail call void @llvm.dbg.value(metadata i32* %mpcend, i64 0, metadata !69, metadata !89), !dbg !177
  tail call void @llvm.dbg.value(metadata i32* %mpcmult, i64 0, metadata !70, metadata !89), !dbg !178
  tail call void @llvm.dbg.value(metadata i32* %callfrommain, i64 0, metadata !72, metadata !89), !dbg !173
  tail call void @llvm.dbg.value(metadata double** %coefmpc, i64 0, metadata !75, metadata !89), !dbg !147
  call void @cascade(i32* %ipompc, double** %coefmpc, i32** %nodempc, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i32* %mpcend, i32* %mpcmult, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %callfrommain) #5, !dbg !179
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !73, metadata !89), !dbg !180
  %24 = load i32* %nk, align 4, !dbg !181, !tbaa !175
  %25 = icmp slt i32 %24, 1, !dbg !184
  br i1 %25, label %._crit_edge49, label %.lr.ph48, !dbg !185

.lr.ph48:                                         ; preds = %0, %.lr.ph48
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph48 ], [ 1, %0 ]
  %26 = add nsw i64 %indvars.iv, -1, !dbg !186
  %27 = getelementptr inbounds i32* %nnn, i64 %26, !dbg !187
  %28 = trunc i64 %indvars.iv to i32, !dbg !188
  store i32 %28, i32* %27, align 4, !dbg !188, !tbaa !175
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !185
  %29 = load i32* %nk, align 4, !dbg !181, !tbaa !175
  %30 = sext i32 %29 to i64, !dbg !184
  %31 = icmp slt i64 %indvars.iv, %30, !dbg !184
  br i1 %31, label %.lr.ph48, label %._crit_edge49, !dbg !185

._crit_edge49:                                    ; preds = %.lr.ph48, %0
  %puts1 = call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str3, i64 0, i64 0)), !dbg !189
  %32 = load i32* %ne, align 4, !dbg !190, !tbaa !175
  %33 = mul nsw i32 %32, 20, !dbg !190
  call void @llvm.dbg.value(metadata i32* %mpcend, i64 0, metadata !69, metadata !89), !dbg !177
  %34 = load i32* %mpcend, align 4, !dbg !190, !tbaa !175
  %35 = add nsw i32 %33, %34, !dbg !190
  %36 = sext i32 %35 to i64, !dbg !190
  %37 = call i8* @u_calloc(i64 %36, i64 4) #5, !dbg !190
  %38 = bitcast i8* %37 to i32*, !dbg !190
  call void @llvm.dbg.value(metadata i32* %38, i64 0, metadata !60, metadata !89), !dbg !133
  %39 = load i32* %ne, align 4, !dbg !191, !tbaa !175
  %40 = mul nsw i32 %39, 380, !dbg !191
  call void @llvm.dbg.value(metadata i32* %mpcmult, i64 0, metadata !70, metadata !89), !dbg !178
  %41 = load i32* %mpcmult, align 4, !dbg !191, !tbaa !175
  %42 = add nsw i32 %40, %41, !dbg !191
  %43 = sext i32 %42 to i64, !dbg !191
  %44 = call i8* @u_calloc(i64 %43, i64 4) #5, !dbg !191
  %45 = bitcast i8* %44 to i32*, !dbg !191
  call void @llvm.dbg.value(metadata i32* %45, i64 0, metadata !61, metadata !89), !dbg !134
  %46 = load i32* %nk, align 4, !dbg !192, !tbaa !175
  %47 = add nsw i32 %46, 1, !dbg !192
  %48 = sext i32 %47 to i64, !dbg !192
  %49 = call i8* @u_calloc(i64 %48, i64 4) #5, !dbg !192
  %50 = bitcast i8* %49 to i32*, !dbg !192
  call void @llvm.dbg.value(metadata i32* %50, i64 0, metadata !62, metadata !89), !dbg !135
  %51 = load i32* %nk, align 4, !dbg !193, !tbaa !175
  %52 = shl nsw i32 %51, 2, !dbg !193
  %53 = or i32 %52, 1, !dbg !193
  %54 = sext i32 %53 to i64, !dbg !193
  %55 = call i8* @u_calloc(i64 %54, i64 4) #5, !dbg !193
  %56 = bitcast i8* %55 to i32*, !dbg !193
  call void @llvm.dbg.value(metadata i32* %56, i64 0, metadata !63, metadata !89), !dbg !136
  %57 = load i32* %nk, align 4, !dbg !194, !tbaa !175
  %58 = sext i32 %57 to i64, !dbg !194
  %59 = call i8* @u_calloc(i64 %58, i64 4) #5, !dbg !194
  %60 = bitcast i8* %59 to i32*, !dbg !194
  call void @llvm.dbg.value(metadata i32* %60, i64 0, metadata !64, metadata !89), !dbg !137
  %61 = load i32* %ne, align 4, !dbg !195, !tbaa !175
  %62 = load i32* %nmpc, align 4, !dbg !195, !tbaa !175
  %63 = add i32 %61, 1, !dbg !195
  %64 = add i32 %63, %62, !dbg !195
  %65 = sext i32 %64 to i64, !dbg !195
  %66 = call i8* @u_calloc(i64 %65, i64 4) #5, !dbg !195
  %67 = bitcast i8* %66 to i32*, !dbg !195
  call void @llvm.dbg.value(metadata i32* %67, i64 0, metadata !65, metadata !89), !dbg !138
  call void @llvm.dbg.value(metadata i32** %nodempc, i64 0, metadata !59, metadata !89), !dbg !132
  %68 = load i32** %nodempc, align 8, !dbg !196, !tbaa !140
  call void @renumber_(i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %ipompc, i32* %68, i32* %nmpc, i32* %nnn, i32* %38, i32* %45, i32* %50, i32* %56, i32* %60, i32* %67) #5, !dbg !196
  call void @free(i8* %37) #6, !dbg !197
  call void @free(i8* %44) #6, !dbg !198
  call void @free(i8* %49) #6, !dbg !199
  call void @free(i8* %55) #6, !dbg !200
  call void @free(i8* %59) #6, !dbg !201
  call void @free(i8* %66) #6, !dbg !202
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str4, i64 0, i64 0)), !dbg !203
  %69 = load i32* %nzs, align 4, !dbg !204, !tbaa !175
  %70 = sext i32 %69 to i64, !dbg !204
  %71 = call i8* @u_calloc(i64 %70, i64 4) #5, !dbg !204
  %72 = bitcast i32** %mast1 to i8**, !dbg !205
  store i8* %71, i8** %72, align 8, !dbg !205, !tbaa !140
  %73 = load i32* %nk, align 4, !dbg !206, !tbaa !175
  %74 = shl nsw i32 %73, 2, !dbg !206
  %75 = sext i32 %74 to i64, !dbg !206
  %76 = call i8* @u_calloc(i64 %75, i64 4) #5, !dbg !206
  %77 = bitcast i8* %76 to i32*, !dbg !206
  call void @llvm.dbg.value(metadata i32* %77, i64 0, metadata !67, metadata !89), !dbg !144
  %78 = load i32* %nk, align 4, !dbg !207, !tbaa !175
  %79 = shl nsw i32 %78, 2, !dbg !207
  %80 = sext i32 %79 to i64, !dbg !207
  %81 = call i8* @u_calloc(i64 %80, i64 4) #5, !dbg !207
  %82 = bitcast i8* %81 to i32*, !dbg !207
  call void @llvm.dbg.value(metadata i32* %82, i64 0, metadata !68, metadata !89), !dbg !145
  call void @llvm.dbg.value(metadata i32** %nodempc, i64 0, metadata !59, metadata !89), !dbg !132
  %83 = load i32** %nodempc, align 8, !dbg !208, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %mast1, i64 0, metadata !66, metadata !89), !dbg !139
  call void @llvm.dbg.value(metadata i32* %nsky, i64 0, metadata !71, metadata !89), !dbg !209
  call void @llvm.dbg.value(metadata i32** %irow, i64 0, metadata !74, metadata !89), !dbg !146
  call void @mastruct(i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ipompc, i32* %83, i32* %nmpc, i32* %nactdof, i32* %icol, i32* %jq, i32** %mast1, i32** %irow, i32* %isolver, i32* %neq, i32* %nnn, i32* %ikmpc, i32* %ilmpc, i32* %77, i32* %82, i32* %nsky, i32* %nzs, i32* %nmethod, i32* %ithermal) #5, !dbg !210
  call void @free(i8* %76) #6, !dbg !211
  call void @free(i8* %81) #6, !dbg !212
  call void @llvm.dbg.value(metadata i32** %mast1, i64 0, metadata !66, metadata !89), !dbg !139
  %84 = load i8** %72, align 8, !dbg !213, !tbaa !140
  call void @free(i8* %84) #6, !dbg !214
  call void @llvm.dbg.value(metadata i32** %irow, i64 0, metadata !74, metadata !89), !dbg !146
  %85 = bitcast i32** %irow to i8**, !dbg !215
  %86 = load i8** %85, align 8, !dbg !215, !tbaa !140
  %87 = load i32* %nzs, align 4, !dbg !215, !tbaa !175
  %88 = sext i32 %87 to i64, !dbg !215
  %89 = shl nsw i64 %88, 2, !dbg !215
  %90 = call i8* @realloc(i8* %86, i64 %89) #5, !dbg !215
  store i8* %90, i8** %85, align 8, !dbg !215, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %nodempc, i64 0, metadata !59, metadata !89), !dbg !132
  %91 = load i64* %3, align 8, !dbg !216, !tbaa !140
  store i64 %91, i64* %1, align 8, !dbg !217, !tbaa !140
  call void @llvm.dbg.value(metadata double** %coefmpc, i64 0, metadata !75, metadata !89), !dbg !147
  %92 = load i64* %6, align 8, !dbg !218, !tbaa !140
  store i64 %92, i64* %4, align 8, !dbg !219, !tbaa !140
  call void @llvm.dbg.value(metadata i32** %irow, i64 0, metadata !74, metadata !89), !dbg !146
  %93 = ptrtoint i8* %90 to i64
  store i64 %93, i64* %7, align 8, !dbg !220, !tbaa !140
  %94 = load i32* %neq, align 4, !dbg !221, !tbaa !175
  %95 = sext i32 %94 to i64, !dbg !221
  %96 = shl nsw i64 %95, 3, !dbg !221
  %97 = call i8* @realloc(i8* %11, i64 %96) #5, !dbg !221
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %98 = load i32* %neq, align 4, !dbg !222, !tbaa !175
  %99 = icmp sgt i32 %98, 0, !dbg !225
  br i1 %99, label %.lr.ph43, label %._crit_edge62, !dbg !226

.lr.ph43:                                         ; preds = %._crit_edge49
  %100 = icmp sgt i32 %98, 1
  %.op88 = add i32 %98, -1, !dbg !226
  %101 = zext i32 %.op88 to i64
  %.op89 = shl nuw nsw i64 %101, 3, !dbg !226
  %.op89.op = add nuw nsw i64 %.op89, 8, !dbg !226
  %102 = select i1 %100, i64 %.op89.op, i64 8, !dbg !226
  call void @llvm.memset.p0i8.i64(i8* %97, i8 0, i64 %102, i32 8, i1 false), !dbg !227
  br label %._crit_edge62, !dbg !226

._crit_edge62:                                    ; preds = %._crit_edge49, %.lr.ph43
  %.pre-phi = sext i32 %98 to i64, !dbg !228
  %103 = shl nsw i64 %.pre-phi, 3, !dbg !228
  %104 = call i8* @realloc(i8* %13, i64 %103) #5, !dbg !228
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %105 = load i32* %neq, align 4, !dbg !229, !tbaa !175
  %106 = icmp sgt i32 %105, 0, !dbg !232
  br i1 %106, label %.lr.ph38, label %._crit_edge61, !dbg !233

.lr.ph38:                                         ; preds = %._crit_edge62
  %107 = icmp sgt i32 %105, 1
  %.op86 = add i32 %105, -1, !dbg !233
  %108 = zext i32 %.op86 to i64
  %.op87 = shl nuw nsw i64 %108, 3, !dbg !233
  %.op87.op = add nuw nsw i64 %.op87, 8, !dbg !233
  %109 = select i1 %107, i64 %.op87.op, i64 8, !dbg !233
  call void @llvm.memset.p0i8.i64(i8* %104, i8 0, i64 %109, i32 8, i1 false), !dbg !234
  br label %._crit_edge61, !dbg !233

._crit_edge61:                                    ; preds = %._crit_edge62, %.lr.ph38
  %.pre-phi64 = sext i32 %105 to i64, !dbg !235
  %110 = shl nsw i64 %.pre-phi64, 3, !dbg !235
  %111 = call i8* @realloc(i8* %15, i64 %110) #5, !dbg !235
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %112 = load i32* %neq, align 4, !dbg !236, !tbaa !175
  %113 = icmp sgt i32 %112, 0, !dbg !239
  br i1 %113, label %.lr.ph33, label %._crit_edge60, !dbg !240

.lr.ph33:                                         ; preds = %._crit_edge61
  %114 = icmp sgt i32 %112, 1
  %.op84 = add i32 %112, -1, !dbg !240
  %115 = zext i32 %.op84 to i64
  %.op85 = shl nuw nsw i64 %115, 3, !dbg !240
  %.op85.op = add nuw nsw i64 %.op85, 8, !dbg !240
  %116 = select i1 %114, i64 %.op85.op, i64 8, !dbg !240
  call void @llvm.memset.p0i8.i64(i8* %111, i8 0, i64 %116, i32 8, i1 false), !dbg !241
  br label %._crit_edge60, !dbg !240

._crit_edge60:                                    ; preds = %._crit_edge61, %.lr.ph33
  %.pre-phi66 = sext i32 %112 to i64, !dbg !242
  %117 = shl nsw i64 %.pre-phi66, 3, !dbg !242
  %118 = call i8* @realloc(i8* %17, i64 %117) #5, !dbg !242
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %119 = load i32* %neq, align 4, !dbg !243, !tbaa !175
  %120 = icmp sgt i32 %119, 0, !dbg !246
  br i1 %120, label %.lr.ph28, label %._crit_edge59, !dbg !247

.lr.ph28:                                         ; preds = %._crit_edge60
  %121 = icmp sgt i32 %119, 1
  %.op82 = add i32 %119, -1, !dbg !247
  %122 = zext i32 %.op82 to i64
  %.op83 = shl nuw nsw i64 %122, 3, !dbg !247
  %.op83.op = add nuw nsw i64 %.op83, 8, !dbg !247
  %123 = select i1 %121, i64 %.op83.op, i64 8, !dbg !247
  call void @llvm.memset.p0i8.i64(i8* %118, i8 0, i64 %123, i32 8, i1 false), !dbg !248
  br label %._crit_edge59, !dbg !247

._crit_edge59:                                    ; preds = %._crit_edge60, %.lr.ph28
  %.pre-phi68 = sext i32 %119 to i64, !dbg !249
  %124 = shl nsw i64 %.pre-phi68, 3, !dbg !249
  %125 = call i8* @realloc(i8* %20, i64 %124) #5, !dbg !249
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %126 = load i32* %neq, align 4, !dbg !250, !tbaa !175
  %127 = icmp sgt i32 %126, 0, !dbg !253
  br i1 %127, label %.lr.ph23, label %131, !dbg !254

.lr.ph23:                                         ; preds = %._crit_edge59
  %128 = icmp sgt i32 %126, 1
  %.op80 = add i32 %126, -1, !dbg !254
  %129 = zext i32 %.op80 to i64
  %.op81 = shl nuw nsw i64 %129, 3, !dbg !254
  %.op81.op = add nuw nsw i64 %.op81, 8, !dbg !254
  %130 = select i1 %128, i64 %.op81.op, i64 8, !dbg !254
  call void @llvm.memset.p0i8.i64(i8* %125, i8 0, i64 %130, i32 8, i1 false), !dbg !255
  br label %131, !dbg !254

; <label>:131                                     ; preds = %.lr.ph23, %._crit_edge59
  %132 = load i32* %nmethod, align 4, !dbg !256, !tbaa !175
  %133 = icmp eq i32 %132, 4, !dbg !258
  br i1 %133, label %134, label %.loopexit, !dbg !259

; <label>:134                                     ; preds = %131
  %135 = bitcast double* %18 to i8*, !dbg !260
  %136 = sext i32 %126 to i64, !dbg !260
  %137 = shl nsw i64 %136, 3, !dbg !260
  %138 = call i8* @realloc(i8* %135, i64 %137) #5, !dbg !260
  %139 = bitcast i8* %138 to double*, !dbg !260
  call void @llvm.dbg.value(metadata double* %139, i64 0, metadata !80, metadata !89), !dbg !152
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %140 = load i32* %neq, align 4, !dbg !262, !tbaa !175
  %141 = icmp sgt i32 %140, 0, !dbg !265
  br i1 %141, label %.lr.ph18, label %._crit_edge58, !dbg !266

.lr.ph18:                                         ; preds = %134
  %142 = icmp sgt i32 %140, 1
  %.op78 = add i32 %140, -1, !dbg !266
  %143 = zext i32 %.op78 to i64
  %.op79 = shl nuw nsw i64 %143, 3, !dbg !266
  %.op79.op = add nuw nsw i64 %.op79, 8, !dbg !266
  %144 = select i1 %142, i64 %.op79.op, i64 8, !dbg !266
  call void @llvm.memset.p0i8.i64(i8* %138, i8 0, i64 %144, i32 8, i1 false), !dbg !267
  br label %._crit_edge58, !dbg !266

._crit_edge58:                                    ; preds = %134, %.lr.ph18
  %.pre-phi70 = sext i32 %140 to i64, !dbg !268
  %145 = bitcast double* %21 to i8*, !dbg !268
  %146 = shl nsw i64 %.pre-phi70, 3, !dbg !268
  %147 = call i8* @realloc(i8* %145, i64 %146) #5, !dbg !268
  %148 = bitcast i8* %147 to double*, !dbg !268
  call void @llvm.dbg.value(metadata double* %148, i64 0, metadata !82, metadata !89), !dbg !154
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %149 = load i32* %neq, align 4, !dbg !269, !tbaa !175
  %150 = icmp sgt i32 %149, 0, !dbg !272
  br i1 %150, label %.lr.ph14, label %._crit_edge, !dbg !273

.lr.ph14:                                         ; preds = %._crit_edge58
  %151 = icmp sgt i32 %149, 1
  %.op76 = add i32 %149, -1, !dbg !273
  %152 = zext i32 %.op76 to i64
  %.op77 = shl nuw nsw i64 %152, 3, !dbg !273
  %.op77.op = add nuw nsw i64 %.op77, 8, !dbg !273
  %153 = select i1 %151, i64 %.op77.op, i64 8, !dbg !273
  call void @llvm.memset.p0i8.i64(i8* %147, i8 0, i64 %153, i32 8, i1 false), !dbg !274
  br label %._crit_edge, !dbg !273

._crit_edge:                                      ; preds = %._crit_edge58, %.lr.ph14
  %.pre-phi72 = sext i32 %149 to i64, !dbg !275
  %154 = bitcast double* %22 to i8*, !dbg !275
  %155 = shl nsw i64 %.pre-phi72, 3, !dbg !275
  %156 = call i8* @realloc(i8* %154, i64 %155) #5, !dbg !275
  %157 = bitcast i8* %156 to double*, !dbg !275
  call void @llvm.dbg.value(metadata double* %157, i64 0, metadata !83, metadata !89), !dbg !155
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %158 = load i32* %neq, align 4, !dbg !276, !tbaa !175
  %159 = icmp sgt i32 %158, 0, !dbg !279
  br i1 %159, label %.lr.ph11, label %163, !dbg !280

.lr.ph11:                                         ; preds = %._crit_edge
  %160 = icmp sgt i32 %158, 1
  %.op74 = add i32 %158, -1, !dbg !280
  %161 = zext i32 %.op74 to i64
  %.op75 = shl nuw nsw i64 %161, 3, !dbg !280
  %.op75.op = add nuw nsw i64 %.op75, 8, !dbg !280
  %162 = select i1 %160, i64 %.op75.op, i64 8, !dbg !280
  call void @llvm.memset.p0i8.i64(i8* %156, i8 0, i64 %162, i32 8, i1 false), !dbg !281
  br label %163, !dbg !280

; <label>:163                                     ; preds = %.lr.ph11, %._crit_edge
  %164 = bitcast double* %23 to i8*, !dbg !282
  %165 = load i32* %nzs, align 4, !dbg !282, !tbaa !175
  %166 = sext i32 %165 to i64, !dbg !282
  %167 = shl nsw i64 %166, 3, !dbg !282
  %168 = call i8* @realloc(i8* %164, i64 %167) #5, !dbg !282
  %169 = bitcast i8* %168 to double*, !dbg !282
  call void @llvm.dbg.value(metadata double* %169, i64 0, metadata !84, metadata !89), !dbg !156
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !73, metadata !89), !dbg !180
  %170 = load i32* %nzs, align 4, !dbg !283, !tbaa !175
  %171 = icmp sgt i32 %170, 0, !dbg !286
  br i1 %171, label %.lr.ph, label %.loopexit, !dbg !287

.lr.ph:                                           ; preds = %163
  %172 = icmp sgt i32 %170, 1
  %.op = add i32 %170, -1, !dbg !287
  %173 = zext i32 %.op to i64
  %.op73 = shl nuw nsw i64 %173, 3, !dbg !287
  %.op73.op = add nuw nsw i64 %.op73, 8, !dbg !287
  %174 = select i1 %172, i64 %.op73.op, i64 8, !dbg !287
  call void @llvm.memset.p0i8.i64(i8* %168, i8 0, i64 %174, i32 8, i1 false), !dbg !288
  br label %.loopexit, !dbg !287

.loopexit:                                        ; preds = %163, %.lr.ph, %131
  %aux2.0 = phi double* [ %18, %131 ], [ %139, %.lr.ph ], [ %139, %163 ]
  %fextini.0 = phi double* [ %21, %131 ], [ %148, %.lr.ph ], [ %148, %163 ]
  %adb.0 = phi double* [ %22, %131 ], [ %157, %.lr.ph ], [ %157, %163 ]
  %aub.0 = phi double* [ %23, %131 ], [ %169, %.lr.ph ], [ %169, %163 ]
  store i8* %97, i8** %10, align 8, !dbg !289, !tbaa !140
  store i8* %104, i8** %12, align 8, !dbg !290, !tbaa !140
  store i8* %111, i8** %14, align 8, !dbg !291, !tbaa !140
  store i8* %118, i8** %16, align 8, !dbg !292, !tbaa !140
  store double* %aux2.0, double** %aux2p, align 8, !dbg !293, !tbaa !140
  store i8* %125, i8** %19, align 8, !dbg !294, !tbaa !140
  store double* %fextini.0, double** %fextinip, align 8, !dbg !295, !tbaa !140
  store double* %adb.0, double** %adbp, align 8, !dbg !296, !tbaa !140
  store double* %aub.0, double** %aubp, align 8, !dbg !297, !tbaa !140
  ret void, !dbg !298
}

; Function Attrs: optsize
declare void @cascade(i32*, double**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #1

; Function Attrs: optsize
declare void @renumber_(i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare void @mastruct(i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!85, !86, !87}
!llvm.ident = !{!88}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/454.calculix/src/remastruct.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!8 = !{!9}
!9 = !DISubprogram(name: "remastruct", scope: !1, file: !1, line: 25, type: !10, isLocal: false, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, double**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, double**, double**, double**, double**, double**, double**, double**, double**, double**, i32*)* @remastruct, variables: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !4, !12, !13, !4, !4, !4, !4, !4, !4, !4, !4, !4, !14, !5, !4, !4, !4, !4, !4, !4, !14, !5, !4, !4, !4, !4, !4, !13, !4, !4, !4, !4, !12, !12, !12, !12, !12, !12, !12, !12, !12, !4}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ipompc", arg: 1, scope: !9, file: !1, line: 25, type: !4)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "coefmpcp", arg: 2, scope: !9, file: !1, line: 25, type: !12)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodempcp", arg: 3, scope: !9, file: !1, line: 25, type: !13)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nmpc", arg: 4, scope: !9, file: !1, line: 25, type: !4)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mpcfree", arg: 5, scope: !9, file: !1, line: 26, type: !4)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nodeboun", arg: 6, scope: !9, file: !1, line: 26, type: !4)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ndirboun", arg: 7, scope: !9, file: !1, line: 26, type: !4)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nboun", arg: 8, scope: !9, file: !1, line: 26, type: !4)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ikmpc", arg: 9, scope: !9, file: !1, line: 27, type: !4)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilmpc", arg: 10, scope: !9, file: !1, line: 27, type: !4)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ikboun", arg: 11, scope: !9, file: !1, line: 27, type: !4)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ilboun", arg: 12, scope: !9, file: !1, line: 27, type: !4)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "labmpc", arg: 13, scope: !9, file: !1, line: 28, type: !14)
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "labmpcLen", arg: 14, scope: !9, file: !1, line: 28, type: !5)
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nk", arg: 15, scope: !9, file: !1, line: 28, type: !4)
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "memmpc_", arg: 16, scope: !9, file: !1, line: 29, type: !4)
!33 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "icascade", arg: 17, scope: !9, file: !1, line: 29, type: !4)
!34 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxlenmpc", arg: 18, scope: !9, file: !1, line: 29, type: !4)
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kon", arg: 19, scope: !9, file: !1, line: 30, type: !4)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ipkon", arg: 20, scope: !9, file: !1, line: 30, type: !4)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lakon", arg: 21, scope: !9, file: !1, line: 30, type: !14)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lakonLen", arg: 22, scope: !9, file: !1, line: 30, type: !5)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ne", arg: 23, scope: !9, file: !1, line: 30, type: !4)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnn", arg: 24, scope: !9, file: !1, line: 30, type: !4)
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nactdof", arg: 25, scope: !9, file: !1, line: 31, type: !4)
!42 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "icol", arg: 26, scope: !9, file: !1, line: 31, type: !4)
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "jq", arg: 27, scope: !9, file: !1, line: 31, type: !4)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "irowp", arg: 28, scope: !9, file: !1, line: 31, type: !13)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isolver", arg: 29, scope: !9, file: !1, line: 31, type: !4)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "neq", arg: 30, scope: !9, file: !1, line: 32, type: !4)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nzs", arg: 31, scope: !9, file: !1, line: 32, type: !4)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nmethod", arg: 32, scope: !9, file: !1, line: 32, type: !4)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 33, scope: !9, file: !1, line: 32, type: !12)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fincp", arg: 34, scope: !9, file: !1, line: 32, type: !12)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fextp", arg: 35, scope: !9, file: !1, line: 33, type: !12)
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bp", arg: 36, scope: !9, file: !1, line: 33, type: !12)
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aux2p", arg: 37, scope: !9, file: !1, line: 33, type: !12)
!54 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "finip", arg: 38, scope: !9, file: !1, line: 33, type: !12)
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fextinip", arg: 39, scope: !9, file: !1, line: 34, type: !12)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "adbp", arg: 40, scope: !9, file: !1, line: 34, type: !12)
!57 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aubp", arg: 41, scope: !9, file: !1, line: 34, type: !12)
!58 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ithermal", arg: 42, scope: !9, file: !1, line: 34, type: !4)
!59 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nodempc", scope: !9, file: !1, line: 39, type: !4)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "npn", scope: !9, file: !1, line: 39, type: !4)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adj", scope: !9, file: !1, line: 39, type: !4)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xadj", scope: !9, file: !1, line: 39, type: !4)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iw", scope: !9, file: !1, line: 39, type: !4)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mmm", scope: !9, file: !1, line: 39, type: !4)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xnpn", scope: !9, file: !1, line: 40, type: !4)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mast1", scope: !9, file: !1, line: 40, type: !4)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ikcol", scope: !9, file: !1, line: 40, type: !4)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ipointer", scope: !9, file: !1, line: 40, type: !4)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mpcend", scope: !9, file: !1, line: 40, type: !5)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mpcmult", scope: !9, file: !1, line: 40, type: !5)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsky", scope: !9, file: !1, line: 41, type: !5)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "callfrommain", scope: !9, file: !1, line: 41, type: !5)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !9, file: !1, line: 41, type: !5)
!74 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irow", scope: !9, file: !1, line: 41, type: !4)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coefmpc", scope: !9, file: !1, line: 43, type: !6)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !9, file: !1, line: 43, type: !6)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "finc", scope: !9, file: !1, line: 43, type: !6)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fext", scope: !9, file: !1, line: 43, type: !6)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !9, file: !1, line: 43, type: !6)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aux2", scope: !9, file: !1, line: 43, type: !6)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fini", scope: !9, file: !1, line: 44, type: !6)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fextini", scope: !9, file: !1, line: 44, type: !6)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "adb", scope: !9, file: !1, line: 44, type: !6)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aub", scope: !9, file: !1, line: 44, type: !6)
!85 = !{i32 2, !"Dwarf Version", i32 2}
!86 = !{i32 2, !"Debug Info Version", i32 700000003}
!87 = !{i32 1, !"PIC Level", i32 2}
!88 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!89 = !DIExpression()
!90 = !DILocation(line: 25, column: 22, scope: !9)
!91 = !DILocation(line: 25, column: 39, scope: !9)
!92 = !DILocation(line: 25, column: 55, scope: !9)
!93 = !DILocation(line: 25, column: 70, scope: !9)
!94 = !DILocation(line: 26, column: 20, scope: !9)
!95 = !DILocation(line: 26, column: 34, scope: !9)
!96 = !DILocation(line: 26, column: 49, scope: !9)
!97 = !DILocation(line: 26, column: 64, scope: !9)
!98 = !DILocation(line: 27, column: 20, scope: !9)
!99 = !DILocation(line: 27, column: 32, scope: !9)
!100 = !DILocation(line: 27, column: 44, scope: !9)
!101 = !DILocation(line: 27, column: 57, scope: !9)
!102 = !DILocation(line: 28, column: 21, scope: !9)
!103 = !DILocation(line: 28, column: 33, scope: !9)
!104 = !DILocation(line: 28, column: 49, scope: !9)
!105 = !DILocation(line: 29, column: 20, scope: !9)
!106 = !DILocation(line: 29, column: 34, scope: !9)
!107 = !DILocation(line: 29, column: 49, scope: !9)
!108 = !DILocation(line: 30, column: 20, scope: !9)
!109 = !DILocation(line: 30, column: 30, scope: !9)
!110 = !DILocation(line: 30, column: 43, scope: !9)
!111 = !DILocation(line: 30, column: 54, scope: !9)
!112 = !DILocation(line: 30, column: 69, scope: !9)
!113 = !DILocation(line: 30, column: 78, scope: !9)
!114 = !DILocation(line: 31, column: 20, scope: !9)
!115 = !DILocation(line: 31, column: 34, scope: !9)
!116 = !DILocation(line: 31, column: 45, scope: !9)
!117 = !DILocation(line: 31, column: 55, scope: !9)
!118 = !DILocation(line: 31, column: 67, scope: !9)
!119 = !DILocation(line: 32, column: 20, scope: !9)
!120 = !DILocation(line: 32, column: 30, scope: !9)
!121 = !DILocation(line: 32, column: 39, scope: !9)
!122 = !DILocation(line: 32, column: 57, scope: !9)
!123 = !DILocation(line: 32, column: 70, scope: !9)
!124 = !DILocation(line: 33, column: 24, scope: !9)
!125 = !DILocation(line: 33, column: 40, scope: !9)
!126 = !DILocation(line: 33, column: 53, scope: !9)
!127 = !DILocation(line: 33, column: 69, scope: !9)
!128 = !DILocation(line: 34, column: 24, scope: !9)
!129 = !DILocation(line: 34, column: 42, scope: !9)
!130 = !DILocation(line: 34, column: 57, scope: !9)
!131 = !DILocation(line: 34, column: 68, scope: !9)
!132 = !DILocation(line: 39, column: 10, scope: !9)
!133 = !DILocation(line: 39, column: 24, scope: !9)
!134 = !DILocation(line: 39, column: 34, scope: !9)
!135 = !DILocation(line: 39, column: 44, scope: !9)
!136 = !DILocation(line: 39, column: 55, scope: !9)
!137 = !DILocation(line: 39, column: 64, scope: !9)
!138 = !DILocation(line: 40, column: 3, scope: !9)
!139 = !DILocation(line: 40, column: 14, scope: !9)
!140 = !{!141, !141, i64 0}
!141 = !{!"any pointer", !142, i64 0}
!142 = !{!"omnipotent char", !143, i64 0}
!143 = !{!"Simple C/C++ TBAA"}
!144 = !DILocation(line: 40, column: 26, scope: !9)
!145 = !DILocation(line: 40, column: 38, scope: !9)
!146 = !DILocation(line: 41, column: 30, scope: !9)
!147 = !DILocation(line: 43, column: 13, scope: !9)
!148 = !DILocation(line: 43, column: 27, scope: !9)
!149 = !DILocation(line: 43, column: 35, scope: !9)
!150 = !DILocation(line: 43, column: 46, scope: !9)
!151 = !DILocation(line: 43, column: 57, scope: !9)
!152 = !DILocation(line: 43, column: 65, scope: !9)
!153 = !DILocation(line: 44, column: 10, scope: !9)
!154 = !DILocation(line: 44, column: 21, scope: !9)
!155 = !DILocation(line: 44, column: 35, scope: !9)
!156 = !DILocation(line: 44, column: 45, scope: !9)
!157 = !DILocation(line: 46, column: 13, scope: !9)
!158 = !DILocation(line: 46, column: 12, scope: !9)
!159 = !DILocation(line: 46, column: 31, scope: !9)
!160 = !DILocation(line: 46, column: 30, scope: !9)
!161 = !DILocation(line: 46, column: 46, scope: !9)
!162 = !DILocation(line: 46, column: 45, scope: !9)
!163 = !DILocation(line: 47, column: 7, scope: !9)
!164 = !DILocation(line: 47, column: 16, scope: !9)
!165 = !DILocation(line: 47, column: 28, scope: !9)
!166 = !DILocation(line: 47, column: 37, scope: !9)
!167 = !DILocation(line: 47, column: 46, scope: !9)
!168 = !DILocation(line: 47, column: 58, scope: !9)
!169 = !DILocation(line: 48, column: 13, scope: !9)
!170 = !DILocation(line: 48, column: 27, scope: !9)
!171 = !DILocation(line: 48, column: 37, scope: !9)
!172 = !DILocation(line: 52, column: 5, scope: !9)
!173 = !DILocation(line: 41, column: 14, scope: !9)
!174 = !DILocation(line: 54, column: 17, scope: !9)
!175 = !{!176, !176, i64 0}
!176 = !{!"int", !142, i64 0}
!177 = !DILocation(line: 40, column: 52, scope: !9)
!178 = !DILocation(line: 40, column: 59, scope: !9)
!179 = !DILocation(line: 55, column: 5, scope: !9)
!180 = !DILocation(line: 41, column: 27, scope: !9)
!181 = !DILocation(line: 65, column: 16, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 65, column: 5)
!183 = distinct !DILexicalBlock(scope: !9, file: !1, line: 65, column: 5)
!184 = !DILocation(line: 65, column: 14, scope: !182)
!185 = !DILocation(line: 65, column: 5, scope: !183)
!186 = !DILocation(line: 65, column: 30, scope: !182)
!187 = !DILocation(line: 65, column: 25, scope: !182)
!188 = !DILocation(line: 65, column: 33, scope: !182)
!189 = !DILocation(line: 69, column: 5, scope: !9)
!190 = !DILocation(line: 71, column: 9, scope: !9)
!191 = !DILocation(line: 72, column: 9, scope: !9)
!192 = !DILocation(line: 73, column: 10, scope: !9)
!193 = !DILocation(line: 74, column: 8, scope: !9)
!194 = !DILocation(line: 75, column: 9, scope: !9)
!195 = !DILocation(line: 76, column: 10, scope: !9)
!196 = !DILocation(line: 82, column: 5, scope: !9)
!197 = !DILocation(line: 86, column: 5, scope: !9)
!198 = !DILocation(line: 86, column: 15, scope: !9)
!199 = !DILocation(line: 86, column: 25, scope: !9)
!200 = !DILocation(line: 86, column: 36, scope: !9)
!201 = !DILocation(line: 86, column: 45, scope: !9)
!202 = !DILocation(line: 86, column: 55, scope: !9)
!203 = !DILocation(line: 90, column: 5, scope: !9)
!204 = !DILocation(line: 92, column: 11, scope: !9)
!205 = !DILocation(line: 92, column: 10, scope: !9)
!206 = !DILocation(line: 93, column: 11, scope: !9)
!207 = !DILocation(line: 94, column: 14, scope: !9)
!208 = !DILocation(line: 97, column: 7, scope: !9)
!209 = !DILocation(line: 41, column: 9, scope: !9)
!210 = !DILocation(line: 96, column: 5, scope: !9)
!211 = !DILocation(line: 100, column: 5, scope: !9)
!212 = !DILocation(line: 100, column: 17, scope: !9)
!213 = !DILocation(line: 100, column: 37, scope: !9)
!214 = !DILocation(line: 100, column: 32, scope: !9)
!215 = !DILocation(line: 101, column: 5, scope: !9)
!216 = !DILocation(line: 103, column: 15, scope: !9)
!217 = !DILocation(line: 103, column: 14, scope: !9)
!218 = !DILocation(line: 103, column: 33, scope: !9)
!219 = !DILocation(line: 103, column: 32, scope: !9)
!220 = !DILocation(line: 103, column: 47, scope: !9)
!221 = !DILocation(line: 107, column: 5, scope: !9)
!222 = !DILocation(line: 107, column: 36, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !1, line: 107, column: 26)
!224 = distinct !DILexicalBlock(scope: !9, file: !1, line: 107, column: 26)
!225 = !DILocation(line: 107, column: 35, scope: !223)
!226 = !DILocation(line: 107, column: 26, scope: !224)
!227 = !DILocation(line: 107, column: 50, scope: !223)
!228 = !DILocation(line: 108, column: 5, scope: !9)
!229 = !DILocation(line: 108, column: 39, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 108, column: 29)
!231 = distinct !DILexicalBlock(scope: !9, file: !1, line: 108, column: 29)
!232 = !DILocation(line: 108, column: 38, scope: !230)
!233 = !DILocation(line: 108, column: 29, scope: !231)
!234 = !DILocation(line: 108, column: 56, scope: !230)
!235 = !DILocation(line: 109, column: 5, scope: !9)
!236 = !DILocation(line: 109, column: 39, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !1, line: 109, column: 29)
!238 = distinct !DILexicalBlock(scope: !9, file: !1, line: 109, column: 29)
!239 = !DILocation(line: 109, column: 38, scope: !237)
!240 = !DILocation(line: 109, column: 29, scope: !238)
!241 = !DILocation(line: 109, column: 56, scope: !237)
!242 = !DILocation(line: 110, column: 5, scope: !9)
!243 = !DILocation(line: 110, column: 36, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 110, column: 26)
!245 = distinct !DILexicalBlock(scope: !9, file: !1, line: 110, column: 26)
!246 = !DILocation(line: 110, column: 35, scope: !244)
!247 = !DILocation(line: 110, column: 26, scope: !245)
!248 = !DILocation(line: 110, column: 50, scope: !244)
!249 = !DILocation(line: 111, column: 2, scope: !9)
!250 = !DILocation(line: 111, column: 36, scope: !251)
!251 = distinct !DILexicalBlock(scope: !252, file: !1, line: 111, column: 26)
!252 = distinct !DILexicalBlock(scope: !9, file: !1, line: 111, column: 26)
!253 = !DILocation(line: 111, column: 35, scope: !251)
!254 = !DILocation(line: 111, column: 26, scope: !252)
!255 = !DILocation(line: 111, column: 53, scope: !251)
!256 = !DILocation(line: 113, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !9, file: !1, line: 113, column: 8)
!258 = !DILocation(line: 113, column: 16, scope: !257)
!259 = !DILocation(line: 113, column: 8, scope: !9)
!260 = !DILocation(line: 114, column: 2, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !1, line: 113, column: 20)
!262 = !DILocation(line: 114, column: 36, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !1, line: 114, column: 26)
!264 = distinct !DILexicalBlock(scope: !261, file: !1, line: 114, column: 26)
!265 = !DILocation(line: 114, column: 35, scope: !263)
!266 = !DILocation(line: 114, column: 26, scope: !264)
!267 = !DILocation(line: 114, column: 53, scope: !263)
!268 = !DILocation(line: 116, column: 2, scope: !261)
!269 = !DILocation(line: 116, column: 39, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 116, column: 29)
!271 = distinct !DILexicalBlock(scope: !261, file: !1, line: 116, column: 29)
!272 = !DILocation(line: 116, column: 38, scope: !270)
!273 = !DILocation(line: 116, column: 29, scope: !271)
!274 = !DILocation(line: 116, column: 59, scope: !270)
!275 = !DILocation(line: 117, column: 2, scope: !261)
!276 = !DILocation(line: 117, column: 35, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !1, line: 117, column: 25)
!278 = distinct !DILexicalBlock(scope: !261, file: !1, line: 117, column: 25)
!279 = !DILocation(line: 117, column: 34, scope: !277)
!280 = !DILocation(line: 117, column: 25, scope: !278)
!281 = !DILocation(line: 117, column: 51, scope: !277)
!282 = !DILocation(line: 118, column: 2, scope: !261)
!283 = !DILocation(line: 118, column: 35, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 118, column: 25)
!285 = distinct !DILexicalBlock(scope: !261, file: !1, line: 118, column: 25)
!286 = !DILocation(line: 118, column: 34, scope: !284)
!287 = !DILocation(line: 118, column: 25, scope: !285)
!288 = !DILocation(line: 118, column: 51, scope: !284)
!289 = !DILocation(line: 121, column: 8, scope: !9)
!290 = !DILocation(line: 121, column: 17, scope: !9)
!291 = !DILocation(line: 121, column: 29, scope: !9)
!292 = !DILocation(line: 121, column: 38, scope: !9)
!293 = !DILocation(line: 121, column: 47, scope: !9)
!294 = !DILocation(line: 121, column: 59, scope: !9)
!295 = !DILocation(line: 122, column: 14, scope: !9)
!296 = !DILocation(line: 122, column: 28, scope: !9)
!297 = !DILocation(line: 122, column: 38, scope: !9)
!298 = !DILocation(line: 124, column: 5, scope: !9)

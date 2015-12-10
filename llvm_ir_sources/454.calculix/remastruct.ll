; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str = private unnamed_addr constant [23 x i8] c"Decascading the MPC's\0A\00"
@str3 = private unnamed_addr constant [47 x i8] c"Renumbering the nodes to decrease the profile:\00"
@str4 = private unnamed_addr constant [41 x i8] c"Determining the structure of the matrix:\00"

; Function Attrs: nounwind optsize uwtable
define void @remastruct(i32* %ipompc, double** nocapture %coefmpcp, i32** nocapture %nodempcp, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %kon, i32* %ipkon, i8* %lakon, i32 %lakonLen, i32* %ne, i32* %nnn, i32* %nactdof, i32* %icol, i32* %jq, i32** nocapture %irowp, i32* %isolver, i32* %neq, i32* %nzs, i32* %nmethod, double** nocapture %fp, double** nocapture %fincp, double** nocapture %fextp, double** nocapture %bp, double** nocapture %aux2p, double** nocapture %finip, double** nocapture %fextinip, double** nocapture %adbp, double** nocapture %aubp, i32* %ithermal) #0 {
entry:
  %nodempc = alloca i32*, align 8
  %mast1 = alloca i32*, align 8
  %mpcend = alloca i32, align 4
  %mpcmult = alloca i32, align 4
  %nsky = alloca i32, align 4
  %callfrommain = alloca i32, align 4
  %irow = alloca i32*, align 8
  %coefmpc = alloca double*, align 8
  call void @llvm.dbg.value(metadata !{i32* %ipompc}, i64 0, metadata !17), !dbg !85
  call void @llvm.dbg.value(metadata !{double** %coefmpcp}, i64 0, metadata !18), !dbg !85
  call void @llvm.dbg.value(metadata !{i32** %nodempcp}, i64 0, metadata !19), !dbg !85
  call void @llvm.dbg.value(metadata !{i32* %nmpc}, i64 0, metadata !20), !dbg !85
  call void @llvm.dbg.value(metadata !{i32* %mpcfree}, i64 0, metadata !21), !dbg !86
  call void @llvm.dbg.value(metadata !{i32* %nodeboun}, i64 0, metadata !22), !dbg !86
  call void @llvm.dbg.value(metadata !{i32* %ndirboun}, i64 0, metadata !23), !dbg !86
  call void @llvm.dbg.value(metadata !{i32* %nboun}, i64 0, metadata !24), !dbg !86
  call void @llvm.dbg.value(metadata !{i32* %ikmpc}, i64 0, metadata !25), !dbg !87
  call void @llvm.dbg.value(metadata !{i32* %ilmpc}, i64 0, metadata !26), !dbg !87
  call void @llvm.dbg.value(metadata !{i32* %ikboun}, i64 0, metadata !27), !dbg !87
  call void @llvm.dbg.value(metadata !{i32* %ilboun}, i64 0, metadata !28), !dbg !87
  call void @llvm.dbg.value(metadata !{i8* %labmpc}, i64 0, metadata !29), !dbg !88
  call void @llvm.dbg.value(metadata !{i32 %labmpcLen}, i64 0, metadata !30), !dbg !88
  call void @llvm.dbg.value(metadata !{i32* %nk}, i64 0, metadata !31), !dbg !88
  call void @llvm.dbg.value(metadata !{i32* %memmpc_}, i64 0, metadata !32), !dbg !89
  call void @llvm.dbg.value(metadata !{i32* %icascade}, i64 0, metadata !33), !dbg !89
  call void @llvm.dbg.value(metadata !{i32* %maxlenmpc}, i64 0, metadata !34), !dbg !89
  call void @llvm.dbg.value(metadata !{i32* %kon}, i64 0, metadata !35), !dbg !90
  call void @llvm.dbg.value(metadata !{i32* %ipkon}, i64 0, metadata !36), !dbg !90
  call void @llvm.dbg.value(metadata !{i8* %lakon}, i64 0, metadata !37), !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %lakonLen}, i64 0, metadata !38), !dbg !90
  call void @llvm.dbg.value(metadata !{i32* %ne}, i64 0, metadata !39), !dbg !90
  call void @llvm.dbg.value(metadata !{i32* %nnn}, i64 0, metadata !40), !dbg !90
  call void @llvm.dbg.value(metadata !{i32* %nactdof}, i64 0, metadata !41), !dbg !91
  call void @llvm.dbg.value(metadata !{i32* %icol}, i64 0, metadata !42), !dbg !91
  call void @llvm.dbg.value(metadata !{i32* %jq}, i64 0, metadata !43), !dbg !91
  call void @llvm.dbg.value(metadata !{i32** %irowp}, i64 0, metadata !44), !dbg !91
  call void @llvm.dbg.value(metadata !{i32* %isolver}, i64 0, metadata !45), !dbg !91
  call void @llvm.dbg.value(metadata !{i32* %neq}, i64 0, metadata !46), !dbg !92
  call void @llvm.dbg.value(metadata !{i32* %nzs}, i64 0, metadata !47), !dbg !92
  call void @llvm.dbg.value(metadata !{i32* %nmethod}, i64 0, metadata !48), !dbg !92
  call void @llvm.dbg.value(metadata !{double** %fp}, i64 0, metadata !49), !dbg !92
  call void @llvm.dbg.value(metadata !{double** %fincp}, i64 0, metadata !50), !dbg !92
  call void @llvm.dbg.value(metadata !{double** %fextp}, i64 0, metadata !51), !dbg !93
  call void @llvm.dbg.value(metadata !{double** %bp}, i64 0, metadata !52), !dbg !93
  call void @llvm.dbg.value(metadata !{double** %aux2p}, i64 0, metadata !53), !dbg !93
  call void @llvm.dbg.value(metadata !{double** %finip}, i64 0, metadata !54), !dbg !93
  call void @llvm.dbg.value(metadata !{double** %fextinip}, i64 0, metadata !55), !dbg !94
  call void @llvm.dbg.value(metadata !{double** %adbp}, i64 0, metadata !56), !dbg !94
  call void @llvm.dbg.value(metadata !{double** %aubp}, i64 0, metadata !57), !dbg !94
  call void @llvm.dbg.value(metadata !{i32* %ithermal}, i64 0, metadata !58), !dbg !94
  call void @llvm.dbg.declare(metadata !{i32** %nodempc}, metadata !59), !dbg !95
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !59), !dbg !97
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !60), !dbg !97
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !61), !dbg !97
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !62), !dbg !97
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !63), !dbg !97
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !64), !dbg !97
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !65), !dbg !97
  call void @llvm.dbg.declare(metadata !{i32** %mast1}, metadata !66), !dbg !98
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !66), !dbg !97
  store i32* null, i32** %mast1, align 8, !dbg !97, !tbaa !99
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !67), !dbg !97
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !68), !dbg !97
  call void @llvm.dbg.declare(metadata !{i32* %mpcend}, metadata !69), !dbg !98
  call void @llvm.dbg.declare(metadata !{i32* %mpcmult}, metadata !70), !dbg !98
  call void @llvm.dbg.declare(metadata !{i32* %nsky}, metadata !71), !dbg !97
  call void @llvm.dbg.declare(metadata !{i32* %callfrommain}, metadata !72), !dbg !97
  call void @llvm.dbg.declare(metadata !{i32** %irow}, metadata !74), !dbg !97
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !74), !dbg !97
  call void @llvm.dbg.declare(metadata !{double** %coefmpc}, metadata !75), !dbg !102
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !75), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !76), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !77), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !78), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !79), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !80), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !81), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !82), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !83), !dbg !104
  call void @llvm.dbg.value(metadata !103, i64 0, metadata !84), !dbg !104
  %0 = load i32** %nodempcp, align 8, !dbg !105, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !59), !dbg !105
  store i32* %0, i32** %nodempc, align 8, !dbg !105, !tbaa !99
  %1 = load double** %coefmpcp, align 8, !dbg !105, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %1}, i64 0, metadata !75), !dbg !105
  store double* %1, double** %coefmpc, align 8, !dbg !105, !tbaa !99
  %2 = load i32** %irowp, align 8, !dbg !105, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32* %2}, i64 0, metadata !74), !dbg !105
  store i32* %2, i32** %irow, align 8, !dbg !105, !tbaa !99
  %3 = load double** %fp, align 8, !dbg !106, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %3}, i64 0, metadata !76), !dbg !106
  %4 = load double** %fincp, align 8, !dbg !106, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %4}, i64 0, metadata !77), !dbg !106
  %5 = load double** %fextp, align 8, !dbg !106, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %5}, i64 0, metadata !78), !dbg !106
  %6 = load double** %bp, align 8, !dbg !106, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %6}, i64 0, metadata !79), !dbg !106
  %7 = load double** %aux2p, align 8, !dbg !106, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %7}, i64 0, metadata !80), !dbg !106
  %8 = load double** %finip, align 8, !dbg !106, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %8}, i64 0, metadata !81), !dbg !106
  %9 = load double** %fextinip, align 8, !dbg !107, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %9}, i64 0, metadata !82), !dbg !107
  %10 = load double** %adbp, align 8, !dbg !107, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %10}, i64 0, metadata !83), !dbg !107
  %11 = load double** %aubp, align 8, !dbg !107, !tbaa !99
  call void @llvm.dbg.value(metadata !{double* %11}, i64 0, metadata !84), !dbg !107
  %puts = call i32 @puts(i8* getelementptr inbounds ([23 x i8]* @str, i64 0, i64 0)), !dbg !108
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !72), !dbg !109
  store i32 0, i32* %callfrommain, align 4, !dbg !109, !tbaa !110
  call void @cascade(i32* %ipompc, double** %coefmpc, i32** %nodempc, i32* %nmpc, i32* %mpcfree, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ikmpc, i32* %ilmpc, i32* %ikboun, i32* %ilboun, i32* %mpcend, i32* %mpcmult, i8* %labmpc, i32 %labmpcLen, i32* %nk, i32* %memmpc_, i32* %icascade, i32* %maxlenmpc, i32* %callfrommain) #5, !dbg !111
  call void @llvm.dbg.value(metadata !112, i64 0, metadata !73), !dbg !113
  %12 = load i32* %nk, align 4, !dbg !113, !tbaa !110
  %cmp291 = icmp slt i32 %12, 1, !dbg !113
  br i1 %cmp291, label %for.end, label %for.body, !dbg !113

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %13 = add nsw i64 %indvars.iv, -1, !dbg !113
  %arrayidx = getelementptr inbounds i32* %nnn, i64 %13, !dbg !113
  %14 = trunc i64 %indvars.iv to i32, !dbg !113
  store i32 %14, i32* %arrayidx, align 4, !dbg !113, !tbaa !110
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !113
  %15 = load i32* %nk, align 4, !dbg !113, !tbaa !110
  %cmp = icmp slt i32 %14, %15, !dbg !113
  br i1 %cmp, label %for.body, label %for.end, !dbg !113

for.end:                                          ; preds = %for.body, %entry
  %puts258 = call i32 @puts(i8* getelementptr inbounds ([47 x i8]* @str3, i64 0, i64 0)), !dbg !115
  %16 = load i32* %ne, align 4, !dbg !116, !tbaa !110
  %mul = mul nsw i32 %16, 20, !dbg !116
  call void @llvm.dbg.value(metadata !{i32* %mpcend}, i64 0, metadata !69), !dbg !116
  %17 = load i32* %mpcend, align 4, !dbg !116, !tbaa !110
  %add = add nsw i32 %mul, %17, !dbg !116
  %conv = sext i32 %add to i64, !dbg !116
  %call2 = call i8* @u_calloc(i64 %conv, i64 4) #5, !dbg !116
  %18 = bitcast i8* %call2 to i32*, !dbg !116
  call void @llvm.dbg.value(metadata !{i32* %18}, i64 0, metadata !60), !dbg !116
  %19 = load i32* %ne, align 4, !dbg !117, !tbaa !110
  %mul3 = mul nsw i32 %19, 380, !dbg !117
  call void @llvm.dbg.value(metadata !{i32* %mpcmult}, i64 0, metadata !70), !dbg !117
  %20 = load i32* %mpcmult, align 4, !dbg !117, !tbaa !110
  %add4 = add nsw i32 %mul3, %20, !dbg !117
  %conv5 = sext i32 %add4 to i64, !dbg !117
  %call6 = call i8* @u_calloc(i64 %conv5, i64 4) #5, !dbg !117
  %21 = bitcast i8* %call6 to i32*, !dbg !117
  call void @llvm.dbg.value(metadata !{i32* %21}, i64 0, metadata !61), !dbg !117
  %22 = load i32* %nk, align 4, !dbg !118, !tbaa !110
  %add7 = add nsw i32 %22, 1, !dbg !118
  %conv8 = sext i32 %add7 to i64, !dbg !118
  %call9 = call i8* @u_calloc(i64 %conv8, i64 4) #5, !dbg !118
  %23 = bitcast i8* %call9 to i32*, !dbg !118
  call void @llvm.dbg.value(metadata !{i32* %23}, i64 0, metadata !62), !dbg !118
  %24 = load i32* %nk, align 4, !dbg !119, !tbaa !110
  %mul10 = shl nsw i32 %24, 2, !dbg !119
  %add11259 = or i32 %mul10, 1, !dbg !119
  %conv12 = sext i32 %add11259 to i64, !dbg !119
  %call13 = call i8* @u_calloc(i64 %conv12, i64 4) #5, !dbg !119
  %25 = bitcast i8* %call13 to i32*, !dbg !119
  call void @llvm.dbg.value(metadata !{i32* %25}, i64 0, metadata !63), !dbg !119
  %26 = load i32* %nk, align 4, !dbg !120, !tbaa !110
  %conv14 = sext i32 %26 to i64, !dbg !120
  %call15 = call i8* @u_calloc(i64 %conv14, i64 4) #5, !dbg !120
  %27 = bitcast i8* %call15 to i32*, !dbg !120
  call void @llvm.dbg.value(metadata !{i32* %27}, i64 0, metadata !64), !dbg !120
  %28 = load i32* %ne, align 4, !dbg !121, !tbaa !110
  %29 = load i32* %nmpc, align 4, !dbg !121, !tbaa !110
  %add16 = add i32 %28, 1, !dbg !121
  %add17 = add i32 %add16, %29, !dbg !121
  %conv18 = sext i32 %add17 to i64, !dbg !121
  %call19 = call i8* @u_calloc(i64 %conv18, i64 4) #5, !dbg !121
  %30 = bitcast i8* %call19 to i32*, !dbg !121
  call void @llvm.dbg.value(metadata !{i32* %30}, i64 0, metadata !65), !dbg !121
  call void @llvm.dbg.value(metadata !{i32** %nodempc}, i64 0, metadata !59), !dbg !122
  %31 = load i32** %nodempc, align 8, !dbg !122, !tbaa !99
  call void @renumber_(i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %ipompc, i32* %31, i32* %nmpc, i32* %nnn, i32* %18, i32* %21, i32* %23, i32* %25, i32* %27, i32* %30) #5, !dbg !122
  call void @free(i8* %call2) #5, !dbg !123
  call void @free(i8* %call6) #5, !dbg !123
  call void @free(i8* %call9) #5, !dbg !123
  call void @free(i8* %call13) #5, !dbg !123
  call void @free(i8* %call15) #5, !dbg !123
  call void @free(i8* %call19) #5, !dbg !123
  %puts260 = call i32 @puts(i8* getelementptr inbounds ([41 x i8]* @str4, i64 0, i64 0)), !dbg !124
  %32 = load i32* %nzs, align 4, !dbg !125, !tbaa !110
  %conv21 = sext i32 %32 to i64, !dbg !125
  %call22 = call i8* @u_calloc(i64 %conv21, i64 4) #5, !dbg !125
  %33 = bitcast i8* %call22 to i32*, !dbg !125
  call void @llvm.dbg.value(metadata !{i32* %33}, i64 0, metadata !66), !dbg !125
  store i32* %33, i32** %mast1, align 8, !dbg !125, !tbaa !99
  %34 = load i32* %nk, align 4, !dbg !126, !tbaa !110
  %mul23 = shl nsw i32 %34, 2, !dbg !126
  %conv24 = sext i32 %mul23 to i64, !dbg !126
  %call25 = call i8* @u_calloc(i64 %conv24, i64 4) #5, !dbg !126
  %35 = bitcast i8* %call25 to i32*, !dbg !126
  call void @llvm.dbg.value(metadata !{i32* %35}, i64 0, metadata !67), !dbg !126
  %36 = load i32* %nk, align 4, !dbg !127, !tbaa !110
  %mul26 = shl nsw i32 %36, 2, !dbg !127
  %conv27 = sext i32 %mul26 to i64, !dbg !127
  %call28 = call i8* @u_calloc(i64 %conv27, i64 4) #5, !dbg !127
  %37 = bitcast i8* %call28 to i32*, !dbg !127
  call void @llvm.dbg.value(metadata !{i32* %37}, i64 0, metadata !68), !dbg !127
  call void @llvm.dbg.value(metadata !{i32** %nodempc}, i64 0, metadata !59), !dbg !128
  %38 = load i32** %nodempc, align 8, !dbg !128, !tbaa !99
  call void @mastruct(i32* %nk, i32* %kon, i32* %ipkon, i8* %lakon, i32* %ne, i32* %nodeboun, i32* %ndirboun, i32* %nboun, i32* %ipompc, i32* %38, i32* %nmpc, i32* %nactdof, i32* %icol, i32* %jq, i32** %mast1, i32** %irow, i32* %isolver, i32* %neq, i32* %nnn, i32* %ikmpc, i32* %ilmpc, i32* %35, i32* %37, i32* %nsky, i32* %nzs, i32* %nmethod, i32* %ithermal) #5, !dbg !128
  call void @free(i8* %call25) #5, !dbg !129
  call void @free(i8* %call28) #5, !dbg !129
  call void @llvm.dbg.value(metadata !{i32** %mast1}, i64 0, metadata !66), !dbg !129
  %39 = load i32** %mast1, align 8, !dbg !129, !tbaa !99
  %40 = bitcast i32* %39 to i8*, !dbg !129
  call void @free(i8* %40) #5, !dbg !129
  call void @llvm.dbg.value(metadata !{i32** %irow}, i64 0, metadata !74), !dbg !130
  %41 = load i32** %irow, align 8, !dbg !130, !tbaa !99
  %42 = bitcast i32* %41 to i8*, !dbg !130
  %43 = load i32* %nzs, align 4, !dbg !130, !tbaa !110
  %conv29 = sext i32 %43 to i64, !dbg !130
  %mul30 = shl nsw i64 %conv29, 2, !dbg !130
  %call31 = call i8* @realloc(i8* %42, i64 %mul30) #5, !dbg !130
  %44 = bitcast i8* %call31 to i32*, !dbg !130
  call void @llvm.dbg.value(metadata !{i32* %44}, i64 0, metadata !74), !dbg !130
  store i32* %44, i32** %irow, align 8, !dbg !130, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32** %nodempc}, i64 0, metadata !59), !dbg !131
  %45 = load i32** %nodempc, align 8, !dbg !131, !tbaa !99
  store i32* %45, i32** %nodempcp, align 8, !dbg !131, !tbaa !99
  call void @llvm.dbg.value(metadata !{double** %coefmpc}, i64 0, metadata !75), !dbg !131
  %46 = load double** %coefmpc, align 8, !dbg !131, !tbaa !99
  store double* %46, double** %coefmpcp, align 8, !dbg !131, !tbaa !99
  call void @llvm.dbg.value(metadata !{i32** %irow}, i64 0, metadata !74), !dbg !131
  store i32* %44, i32** %irowp, align 8, !dbg !131, !tbaa !99
  %47 = bitcast double* %3 to i8*, !dbg !132
  %48 = load i32* %neq, align 4, !dbg !132, !tbaa !110
  %conv32 = sext i32 %48 to i64, !dbg !132
  %mul33 = shl nsw i64 %conv32, 3, !dbg !132
  %call34 = call i8* @realloc(i8* %47, i64 %mul33) #5, !dbg !132
  %49 = bitcast i8* %call34 to double*, !dbg !132
  call void @llvm.dbg.value(metadata !{double* %49}, i64 0, metadata !76), !dbg !132
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !133
  %50 = load i32* %neq, align 4, !dbg !133, !tbaa !110
  %cmp36288 = icmp sgt i32 %50, 0, !dbg !133
  br i1 %cmp36288, label %for.body38.lr.ph, label %for.end43, !dbg !133

for.body38.lr.ph:                                 ; preds = %for.end
  %51 = icmp sgt i32 %50, 1
  %.op317 = add i32 %50, -1, !dbg !133
  %52 = zext i32 %.op317 to i64
  %.op318 = shl nuw nsw i64 %52, 3, !dbg !133
  %.op318.op = add i64 %.op318, 8, !dbg !133
  %53 = select i1 %51, i64 %.op318.op, i64 8, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* %call34, i8 0, i64 %53, i32 8, i1 false), !dbg !133
  br label %for.end43, !dbg !133

for.end43:                                        ; preds = %for.body38.lr.ph, %for.end
  %54 = bitcast double* %4 to i8*, !dbg !135
  %conv44 = sext i32 %50 to i64, !dbg !135
  %mul45 = shl nsw i64 %conv44, 3, !dbg !135
  %call46 = call i8* @realloc(i8* %54, i64 %mul45) #5, !dbg !135
  %55 = bitcast i8* %call46 to double*, !dbg !135
  call void @llvm.dbg.value(metadata !{double* %55}, i64 0, metadata !77), !dbg !135
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !136
  %56 = load i32* %neq, align 4, !dbg !136, !tbaa !110
  %cmp48284 = icmp sgt i32 %56, 0, !dbg !136
  br i1 %cmp48284, label %for.body50.lr.ph, label %for.end55, !dbg !136

for.body50.lr.ph:                                 ; preds = %for.end43
  %57 = icmp sgt i32 %56, 1
  %.op315 = add i32 %56, -1, !dbg !136
  %58 = zext i32 %.op315 to i64
  %.op316 = shl nuw nsw i64 %58, 3, !dbg !136
  %.op316.op = add i64 %.op316, 8, !dbg !136
  %59 = select i1 %57, i64 %.op316.op, i64 8, !dbg !136
  call void @llvm.memset.p0i8.i64(i8* %call46, i8 0, i64 %59, i32 8, i1 false), !dbg !136
  br label %for.end55, !dbg !136

for.end55:                                        ; preds = %for.body50.lr.ph, %for.end43
  %60 = bitcast double* %5 to i8*, !dbg !138
  %conv56 = sext i32 %56 to i64, !dbg !138
  %mul57 = shl nsw i64 %conv56, 3, !dbg !138
  %call58 = call i8* @realloc(i8* %60, i64 %mul57) #5, !dbg !138
  %61 = bitcast i8* %call58 to double*, !dbg !138
  call void @llvm.dbg.value(metadata !{double* %61}, i64 0, metadata !78), !dbg !138
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !139
  %62 = load i32* %neq, align 4, !dbg !139, !tbaa !110
  %cmp60280 = icmp sgt i32 %62, 0, !dbg !139
  br i1 %cmp60280, label %for.body62.lr.ph, label %for.end67, !dbg !139

for.body62.lr.ph:                                 ; preds = %for.end55
  %63 = icmp sgt i32 %62, 1
  %.op313 = add i32 %62, -1, !dbg !139
  %64 = zext i32 %.op313 to i64
  %.op314 = shl nuw nsw i64 %64, 3, !dbg !139
  %.op314.op = add i64 %.op314, 8, !dbg !139
  %65 = select i1 %63, i64 %.op314.op, i64 8, !dbg !139
  call void @llvm.memset.p0i8.i64(i8* %call58, i8 0, i64 %65, i32 8, i1 false), !dbg !139
  br label %for.end67, !dbg !139

for.end67:                                        ; preds = %for.body62.lr.ph, %for.end55
  %66 = bitcast double* %6 to i8*, !dbg !141
  %conv68 = sext i32 %62 to i64, !dbg !141
  %mul69 = shl nsw i64 %conv68, 3, !dbg !141
  %call70 = call i8* @realloc(i8* %66, i64 %mul69) #5, !dbg !141
  %67 = bitcast i8* %call70 to double*, !dbg !141
  call void @llvm.dbg.value(metadata !{double* %67}, i64 0, metadata !79), !dbg !141
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !142
  %68 = load i32* %neq, align 4, !dbg !142, !tbaa !110
  %cmp72276 = icmp sgt i32 %68, 0, !dbg !142
  br i1 %cmp72276, label %for.body74.lr.ph, label %for.end79, !dbg !142

for.body74.lr.ph:                                 ; preds = %for.end67
  %69 = icmp sgt i32 %68, 1
  %.op311 = add i32 %68, -1, !dbg !142
  %70 = zext i32 %.op311 to i64
  %.op312 = shl nuw nsw i64 %70, 3, !dbg !142
  %.op312.op = add i64 %.op312, 8, !dbg !142
  %71 = select i1 %69, i64 %.op312.op, i64 8, !dbg !142
  call void @llvm.memset.p0i8.i64(i8* %call70, i8 0, i64 %71, i32 8, i1 false), !dbg !142
  br label %for.end79, !dbg !142

for.end79:                                        ; preds = %for.body74.lr.ph, %for.end67
  %72 = bitcast double* %8 to i8*, !dbg !144
  %conv80 = sext i32 %68 to i64, !dbg !144
  %mul81 = shl nsw i64 %conv80, 3, !dbg !144
  %call82 = call i8* @realloc(i8* %72, i64 %mul81) #5, !dbg !144
  %73 = bitcast i8* %call82 to double*, !dbg !144
  call void @llvm.dbg.value(metadata !{double* %73}, i64 0, metadata !81), !dbg !144
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !145
  %74 = load i32* %neq, align 4, !dbg !145, !tbaa !110
  %cmp84272 = icmp sgt i32 %74, 0, !dbg !145
  br i1 %cmp84272, label %for.body86.lr.ph, label %for.end91, !dbg !145

for.body86.lr.ph:                                 ; preds = %for.end79
  %75 = icmp sgt i32 %74, 1
  %.op309 = add i32 %74, -1, !dbg !145
  %76 = zext i32 %.op309 to i64
  %.op310 = shl nuw nsw i64 %76, 3, !dbg !145
  %.op310.op = add i64 %.op310, 8, !dbg !145
  %77 = select i1 %75, i64 %.op310.op, i64 8, !dbg !145
  call void @llvm.memset.p0i8.i64(i8* %call82, i8 0, i64 %77, i32 8, i1 false), !dbg !145
  br label %for.end91, !dbg !145

for.end91:                                        ; preds = %for.body86.lr.ph, %for.end79
  %78 = load i32* %nmethod, align 4, !dbg !147, !tbaa !110
  %cmp92 = icmp eq i32 %78, 4, !dbg !147
  br i1 %cmp92, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %for.end91
  %79 = bitcast double* %7 to i8*, !dbg !148
  %conv94 = sext i32 %74 to i64, !dbg !148
  %mul95 = shl nsw i64 %conv94, 3, !dbg !148
  %call96 = call i8* @realloc(i8* %79, i64 %mul95) #5, !dbg !148
  %80 = bitcast i8* %call96 to double*, !dbg !148
  call void @llvm.dbg.value(metadata !{double* %80}, i64 0, metadata !80), !dbg !148
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !150
  %81 = load i32* %neq, align 4, !dbg !150, !tbaa !110
  %cmp98268 = icmp sgt i32 %81, 0, !dbg !150
  br i1 %cmp98268, label %for.body100.lr.ph, label %for.end105, !dbg !150

for.body100.lr.ph:                                ; preds = %if.then
  %82 = icmp sgt i32 %81, 1
  %.op307 = add i32 %81, -1, !dbg !150
  %83 = zext i32 %.op307 to i64
  %.op308 = shl nuw nsw i64 %83, 3, !dbg !150
  %.op308.op = add i64 %.op308, 8, !dbg !150
  %84 = select i1 %82, i64 %.op308.op, i64 8, !dbg !150
  call void @llvm.memset.p0i8.i64(i8* %call96, i8 0, i64 %84, i32 8, i1 false), !dbg !150
  br label %for.end105, !dbg !150

for.end105:                                       ; preds = %for.body100.lr.ph, %if.then
  %85 = bitcast double* %9 to i8*, !dbg !152
  %conv106 = sext i32 %81 to i64, !dbg !152
  %mul107 = shl nsw i64 %conv106, 3, !dbg !152
  %call108 = call i8* @realloc(i8* %85, i64 %mul107) #5, !dbg !152
  %86 = bitcast i8* %call108 to double*, !dbg !152
  call void @llvm.dbg.value(metadata !{double* %86}, i64 0, metadata !82), !dbg !152
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !153
  %87 = load i32* %neq, align 4, !dbg !153, !tbaa !110
  %cmp110265 = icmp sgt i32 %87, 0, !dbg !153
  br i1 %cmp110265, label %for.body112.lr.ph, label %for.end117, !dbg !153

for.body112.lr.ph:                                ; preds = %for.end105
  %88 = icmp sgt i32 %87, 1
  %.op305 = add i32 %87, -1, !dbg !153
  %89 = zext i32 %.op305 to i64
  %.op306 = shl nuw nsw i64 %89, 3, !dbg !153
  %.op306.op = add i64 %.op306, 8, !dbg !153
  %90 = select i1 %88, i64 %.op306.op, i64 8, !dbg !153
  call void @llvm.memset.p0i8.i64(i8* %call108, i8 0, i64 %90, i32 8, i1 false), !dbg !153
  br label %for.end117, !dbg !153

for.end117:                                       ; preds = %for.body112.lr.ph, %for.end105
  %91 = bitcast double* %10 to i8*, !dbg !155
  %conv118 = sext i32 %87 to i64, !dbg !155
  %mul119 = shl nsw i64 %conv118, 3, !dbg !155
  %call120 = call i8* @realloc(i8* %91, i64 %mul119) #5, !dbg !155
  %92 = bitcast i8* %call120 to double*, !dbg !155
  call void @llvm.dbg.value(metadata !{double* %92}, i64 0, metadata !83), !dbg !155
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !156
  %93 = load i32* %neq, align 4, !dbg !156, !tbaa !110
  %cmp122263 = icmp sgt i32 %93, 0, !dbg !156
  br i1 %cmp122263, label %for.body124.lr.ph, label %for.end129, !dbg !156

for.body124.lr.ph:                                ; preds = %for.end117
  %94 = icmp sgt i32 %93, 1
  %.op303 = add i32 %93, -1, !dbg !156
  %95 = zext i32 %.op303 to i64
  %.op304 = shl nuw nsw i64 %95, 3, !dbg !156
  %.op304.op = add i64 %.op304, 8, !dbg !156
  %96 = select i1 %94, i64 %.op304.op, i64 8, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* %call120, i8 0, i64 %96, i32 8, i1 false), !dbg !156
  br label %for.end129, !dbg !156

for.end129:                                       ; preds = %for.body124.lr.ph, %for.end117
  %97 = bitcast double* %11 to i8*, !dbg !158
  %98 = load i32* %nzs, align 4, !dbg !158, !tbaa !110
  %conv130 = sext i32 %98 to i64, !dbg !158
  %mul131 = shl nsw i64 %conv130, 3, !dbg !158
  %call132 = call i8* @realloc(i8* %97, i64 %mul131) #5, !dbg !158
  %99 = bitcast i8* %call132 to double*, !dbg !158
  call void @llvm.dbg.value(metadata !{double* %99}, i64 0, metadata !84), !dbg !158
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !73), !dbg !159
  %100 = load i32* %nzs, align 4, !dbg !159, !tbaa !110
  %cmp134261 = icmp sgt i32 %100, 0, !dbg !159
  br i1 %cmp134261, label %for.body136.lr.ph, label %if.end, !dbg !159

for.body136.lr.ph:                                ; preds = %for.end129
  %101 = icmp sgt i32 %100, 1
  %.op = add i32 %100, -1, !dbg !159
  %102 = zext i32 %.op to i64
  %.op302 = shl nuw nsw i64 %102, 3, !dbg !159
  %.op302.op = add i64 %.op302, 8, !dbg !159
  %103 = select i1 %101, i64 %.op302.op, i64 8, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* %call132, i8 0, i64 %103, i32 8, i1 false), !dbg !159
  br label %if.end, !dbg !159

if.end:                                           ; preds = %for.end129, %for.body136.lr.ph, %for.end91
  %aux2.0 = phi double* [ %7, %for.end91 ], [ %80, %for.body136.lr.ph ], [ %80, %for.end129 ]
  %fextini.0 = phi double* [ %9, %for.end91 ], [ %86, %for.body136.lr.ph ], [ %86, %for.end129 ]
  %adb.0 = phi double* [ %10, %for.end91 ], [ %92, %for.body136.lr.ph ], [ %92, %for.end129 ]
  %aub.0 = phi double* [ %11, %for.end91 ], [ %99, %for.body136.lr.ph ], [ %99, %for.end129 ]
  store double* %49, double** %fp, align 8, !dbg !161, !tbaa !99
  store double* %55, double** %fincp, align 8, !dbg !161, !tbaa !99
  store double* %61, double** %fextp, align 8, !dbg !161, !tbaa !99
  store double* %67, double** %bp, align 8, !dbg !161, !tbaa !99
  store double* %aux2.0, double** %aux2p, align 8, !dbg !161, !tbaa !99
  store double* %73, double** %finip, align 8, !dbg !161, !tbaa !99
  store double* %fextini.0, double** %fextinip, align 8, !dbg !162, !tbaa !99
  store double* %adb.0, double** %adbp, align 8, !dbg !162, !tbaa !99
  store double* %aub.0, double** %aubp, align 8, !dbg !162, !tbaa !99
  ret void, !dbg !163
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @cascade(i32*, double**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #2

; Function Attrs: optsize
declare void @renumber_(i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @mastruct(i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"remastruct", metadata !"remastruct", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, double**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, double**, double**, double**, double**, double**, double**, double**, double**, double**, i32*)* @remastruct, null, null, metadata !16, i32 34} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 34] [remastruct]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !13, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !14, metadata !9, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !14, metadata !9, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !13, metadata !8, metadata !8, metadata !8, metadata !8, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!9 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!12 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!15 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!17 = metadata !{i32 786689, metadata !4, metadata !"ipompc", metadata !5, i32 16777241, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ipompc] [line 25]
!18 = metadata !{i32 786689, metadata !4, metadata !"coefmpcp", metadata !5, i32 33554457, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [coefmpcp] [line 25]
!19 = metadata !{i32 786689, metadata !4, metadata !"nodempcp", metadata !5, i32 50331673, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodempcp] [line 25]
!20 = metadata !{i32 786689, metadata !4, metadata !"nmpc", metadata !5, i32 67108889, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmpc] [line 25]
!21 = metadata !{i32 786689, metadata !4, metadata !"mpcfree", metadata !5, i32 83886106, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mpcfree] [line 26]
!22 = metadata !{i32 786689, metadata !4, metadata !"nodeboun", metadata !5, i32 100663322, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodeboun] [line 26]
!23 = metadata !{i32 786689, metadata !4, metadata !"ndirboun", metadata !5, i32 117440538, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndirboun] [line 26]
!24 = metadata !{i32 786689, metadata !4, metadata !"nboun", metadata !5, i32 134217754, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nboun] [line 26]
!25 = metadata !{i32 786689, metadata !4, metadata !"ikmpc", metadata !5, i32 150994971, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ikmpc] [line 27]
!26 = metadata !{i32 786689, metadata !4, metadata !"ilmpc", metadata !5, i32 167772187, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ilmpc] [line 27]
!27 = metadata !{i32 786689, metadata !4, metadata !"ikboun", metadata !5, i32 184549403, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ikboun] [line 27]
!28 = metadata !{i32 786689, metadata !4, metadata !"ilboun", metadata !5, i32 201326619, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ilboun] [line 27]
!29 = metadata !{i32 786689, metadata !4, metadata !"labmpc", metadata !5, i32 218103836, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [labmpc] [line 28]
!30 = metadata !{i32 786689, metadata !4, metadata !"labmpcLen", metadata !5, i32 234881052, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [labmpcLen] [line 28]
!31 = metadata !{i32 786689, metadata !4, metadata !"nk", metadata !5, i32 251658268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nk] [line 28]
!32 = metadata !{i32 786689, metadata !4, metadata !"memmpc_", metadata !5, i32 268435485, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [memmpc_] [line 29]
!33 = metadata !{i32 786689, metadata !4, metadata !"icascade", metadata !5, i32 285212701, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [icascade] [line 29]
!34 = metadata !{i32 786689, metadata !4, metadata !"maxlenmpc", metadata !5, i32 301989917, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlenmpc] [line 29]
!35 = metadata !{i32 786689, metadata !4, metadata !"kon", metadata !5, i32 318767134, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [kon] [line 30]
!36 = metadata !{i32 786689, metadata !4, metadata !"ipkon", metadata !5, i32 335544350, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ipkon] [line 30]
!37 = metadata !{i32 786689, metadata !4, metadata !"lakon", metadata !5, i32 352321566, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lakon] [line 30]
!38 = metadata !{i32 786689, metadata !4, metadata !"lakonLen", metadata !5, i32 369098782, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lakonLen] [line 30]
!39 = metadata !{i32 786689, metadata !4, metadata !"ne", metadata !5, i32 385875998, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ne] [line 30]
!40 = metadata !{i32 786689, metadata !4, metadata !"nnn", metadata !5, i32 402653214, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nnn] [line 30]
!41 = metadata !{i32 786689, metadata !4, metadata !"nactdof", metadata !5, i32 419430431, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nactdof] [line 31]
!42 = metadata !{i32 786689, metadata !4, metadata !"icol", metadata !5, i32 436207647, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [icol] [line 31]
!43 = metadata !{i32 786689, metadata !4, metadata !"jq", metadata !5, i32 452984863, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jq] [line 31]
!44 = metadata !{i32 786689, metadata !4, metadata !"irowp", metadata !5, i32 469762079, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irowp] [line 31]
!45 = metadata !{i32 786689, metadata !4, metadata !"isolver", metadata !5, i32 486539295, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [isolver] [line 31]
!46 = metadata !{i32 786689, metadata !4, metadata !"neq", metadata !5, i32 503316512, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [neq] [line 32]
!47 = metadata !{i32 786689, metadata !4, metadata !"nzs", metadata !5, i32 520093728, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nzs] [line 32]
!48 = metadata !{i32 786689, metadata !4, metadata !"nmethod", metadata !5, i32 536870944, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmethod] [line 32]
!49 = metadata !{i32 786689, metadata !4, metadata !"fp", metadata !5, i32 553648160, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 32]
!50 = metadata !{i32 786689, metadata !4, metadata !"fincp", metadata !5, i32 570425376, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fincp] [line 32]
!51 = metadata !{i32 786689, metadata !4, metadata !"fextp", metadata !5, i32 587202593, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fextp] [line 33]
!52 = metadata !{i32 786689, metadata !4, metadata !"bp", metadata !5, i32 603979809, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bp] [line 33]
!53 = metadata !{i32 786689, metadata !4, metadata !"aux2p", metadata !5, i32 620757025, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aux2p] [line 33]
!54 = metadata !{i32 786689, metadata !4, metadata !"finip", metadata !5, i32 637534241, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [finip] [line 33]
!55 = metadata !{i32 786689, metadata !4, metadata !"fextinip", metadata !5, i32 654311458, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fextinip] [line 34]
!56 = metadata !{i32 786689, metadata !4, metadata !"adbp", metadata !5, i32 671088674, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [adbp] [line 34]
!57 = metadata !{i32 786689, metadata !4, metadata !"aubp", metadata !5, i32 687865890, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aubp] [line 34]
!58 = metadata !{i32 786689, metadata !4, metadata !"ithermal", metadata !5, i32 704643106, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ithermal] [line 34]
!59 = metadata !{i32 786688, metadata !4, metadata !"nodempc", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodempc] [line 39]
!60 = metadata !{i32 786688, metadata !4, metadata !"npn", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [npn] [line 39]
!61 = metadata !{i32 786688, metadata !4, metadata !"adj", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adj] [line 39]
!62 = metadata !{i32 786688, metadata !4, metadata !"xadj", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xadj] [line 39]
!63 = metadata !{i32 786688, metadata !4, metadata !"iw", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iw] [line 39]
!64 = metadata !{i32 786688, metadata !4, metadata !"mmm", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mmm] [line 39]
!65 = metadata !{i32 786688, metadata !4, metadata !"xnpn", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xnpn] [line 40]
!66 = metadata !{i32 786688, metadata !4, metadata !"mast1", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mast1] [line 40]
!67 = metadata !{i32 786688, metadata !4, metadata !"ikcol", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ikcol] [line 40]
!68 = metadata !{i32 786688, metadata !4, metadata !"ipointer", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipointer] [line 40]
!69 = metadata !{i32 786688, metadata !4, metadata !"mpcend", metadata !5, i32 40, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mpcend] [line 40]
!70 = metadata !{i32 786688, metadata !4, metadata !"mpcmult", metadata !5, i32 40, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mpcmult] [line 40]
!71 = metadata !{i32 786688, metadata !4, metadata !"nsky", metadata !5, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsky] [line 41]
!72 = metadata !{i32 786688, metadata !4, metadata !"callfrommain", metadata !5, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [callfrommain] [line 41]
!73 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 41, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!74 = metadata !{i32 786688, metadata !4, metadata !"irow", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 41]
!75 = metadata !{i32 786688, metadata !4, metadata !"coefmpc", metadata !5, i32 43, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [coefmpc] [line 43]
!76 = metadata !{i32 786688, metadata !4, metadata !"f", metadata !5, i32 43, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [f] [line 43]
!77 = metadata !{i32 786688, metadata !4, metadata !"finc", metadata !5, i32 43, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [finc] [line 43]
!78 = metadata !{i32 786688, metadata !4, metadata !"fext", metadata !5, i32 43, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fext] [line 43]
!79 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 43, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 43]
!80 = metadata !{i32 786688, metadata !4, metadata !"aux2", metadata !5, i32 43, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aux2] [line 43]
!81 = metadata !{i32 786688, metadata !4, metadata !"fini", metadata !5, i32 44, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fini] [line 44]
!82 = metadata !{i32 786688, metadata !4, metadata !"fextini", metadata !5, i32 44, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fextini] [line 44]
!83 = metadata !{i32 786688, metadata !4, metadata !"adb", metadata !5, i32 44, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [adb] [line 44]
!84 = metadata !{i32 786688, metadata !4, metadata !"aub", metadata !5, i32 44, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aub] [line 44]
!85 = metadata !{i32 25, i32 0, metadata !4, null}
!86 = metadata !{i32 26, i32 0, metadata !4, null}
!87 = metadata !{i32 27, i32 0, metadata !4, null}
!88 = metadata !{i32 28, i32 0, metadata !4, null}
!89 = metadata !{i32 29, i32 0, metadata !4, null}
!90 = metadata !{i32 30, i32 0, metadata !4, null}
!91 = metadata !{i32 31, i32 0, metadata !4, null}
!92 = metadata !{i32 32, i32 0, metadata !4, null}
!93 = metadata !{i32 33, i32 0, metadata !4, null}
!94 = metadata !{i32 34, i32 0, metadata !4, null}
!95 = metadata !{i32 39, i32 0, metadata !4, null}
!96 = metadata !{i32* null}
!97 = metadata !{i32 41, i32 0, metadata !4, null}
!98 = metadata !{i32 40, i32 0, metadata !4, null}
!99 = metadata !{metadata !"any pointer", metadata !100}
!100 = metadata !{metadata !"omnipotent char", metadata !101}
!101 = metadata !{metadata !"Simple C/C++ TBAA"}
!102 = metadata !{i32 43, i32 0, metadata !4, null}
!103 = metadata !{double* null}
!104 = metadata !{i32 44, i32 0, metadata !4, null}
!105 = metadata !{i32 46, i32 0, metadata !4, null}
!106 = metadata !{i32 47, i32 0, metadata !4, null}
!107 = metadata !{i32 48, i32 0, metadata !4, null}
!108 = metadata !{i32 52, i32 0, metadata !4, null}
!109 = metadata !{i32 54, i32 0, metadata !4, null}
!110 = metadata !{metadata !"int", metadata !100}
!111 = metadata !{i32 55, i32 0, metadata !4, null}
!112 = metadata !{i32 1}
!113 = metadata !{i32 65, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !4, i32 65, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!115 = metadata !{i32 69, i32 0, metadata !4, null}
!116 = metadata !{i32 71, i32 0, metadata !4, null}
!117 = metadata !{i32 72, i32 0, metadata !4, null}
!118 = metadata !{i32 73, i32 0, metadata !4, null}
!119 = metadata !{i32 74, i32 0, metadata !4, null}
!120 = metadata !{i32 75, i32 0, metadata !4, null}
!121 = metadata !{i32 76, i32 0, metadata !4, null}
!122 = metadata !{i32 82, i32 0, metadata !4, null}
!123 = metadata !{i32 86, i32 0, metadata !4, null}
!124 = metadata !{i32 90, i32 0, metadata !4, null}
!125 = metadata !{i32 92, i32 0, metadata !4, null}
!126 = metadata !{i32 93, i32 0, metadata !4, null}
!127 = metadata !{i32 94, i32 0, metadata !4, null}
!128 = metadata !{i32 96, i32 0, metadata !4, null}
!129 = metadata !{i32 100, i32 0, metadata !4, null}
!130 = metadata !{i32 101, i32 0, metadata !4, null}
!131 = metadata !{i32 103, i32 0, metadata !4, null}
!132 = metadata !{i32 107, i32 0, metadata !4, null}
!133 = metadata !{i32 107, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !4, i32 107, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!135 = metadata !{i32 108, i32 0, metadata !4, null}
!136 = metadata !{i32 108, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !4, i32 108, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!138 = metadata !{i32 109, i32 0, metadata !4, null}
!139 = metadata !{i32 109, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !4, i32 109, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!141 = metadata !{i32 110, i32 0, metadata !4, null}
!142 = metadata !{i32 110, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !4, i32 110, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!144 = metadata !{i32 111, i32 0, metadata !4, null}
!145 = metadata !{i32 111, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !4, i32 111, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!147 = metadata !{i32 113, i32 0, metadata !4, null}
!148 = metadata !{i32 114, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !4, i32 113, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!150 = metadata !{i32 114, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !149, i32 114, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!152 = metadata !{i32 116, i32 0, metadata !149, null}
!153 = metadata !{i32 116, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !149, i32 116, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!155 = metadata !{i32 117, i32 0, metadata !149, null}
!156 = metadata !{i32 117, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !149, i32 117, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!158 = metadata !{i32 118, i32 0, metadata !149, null}
!159 = metadata !{i32 118, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !149, i32 118, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/remastruct.c]
!161 = metadata !{i32 121, i32 0, metadata !4, null}
!162 = metadata !{i32 122, i32 0, metadata !4, null}
!163 = metadata !{i32 124, i32 0, metadata !4, null}

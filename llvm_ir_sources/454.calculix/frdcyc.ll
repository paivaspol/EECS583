; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"U   \00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"NT  \00", align 1
@.str2 = private unnamed_addr constant [5 x i8] c"S   \00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"E   \00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"RF  \00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"PE  \00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"ENER\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"SDV \00", align 1

; Function Attrs: nounwind optsize uwtable
define void @frdcyc(double* %co, i32* %nk, i32* nocapture %kon, i32* nocapture %ipkon, i8* nocapture %lakon, i32 %lakonLen, i32* nocapture %ne, double* %v, double* %stn, i32* nocapture %inum, i32* %nmethod, i32* %kode, i8* %nodeflab, i32 %nodeflabLen, double* %een, double* nocapture %t1, double* %fn, double* %time, double* nocapture %epn, i32* nocapture %ielmat, i8* %matname, i32 %matnameLen, i32* nocapture %ns, double* %csab, i32* nocapture %nkon, double* nocapture %enern, double* nocapture %xstaten, i32* %nstate_, i32* %istep, i32* %iinc, i32* %iperturb, double* %ener, i32* %mint_, i8* %output, i32 %outputLen) #0 {
entry:
  %nkt = alloca i32, align 4
  %icntrl = alloca i32, align 4
  %net = alloca i32, align 4
  %imag = alloca i32, align 4
  %t = alloca [3 x double], align 16
  call void @llvm.dbg.value(metadata !{double* %co}, i64 0, metadata !15), !dbg !76
  call void @llvm.dbg.value(metadata !{i32* %nk}, i64 0, metadata !16), !dbg !76
  call void @llvm.dbg.value(metadata !{i32* %kon}, i64 0, metadata !17), !dbg !76
  call void @llvm.dbg.value(metadata !{i32* %ipkon}, i64 0, metadata !18), !dbg !76
  call void @llvm.dbg.value(metadata !{i8* %lakon}, i64 0, metadata !19), !dbg !76
  call void @llvm.dbg.value(metadata !{i32 %lakonLen}, i64 0, metadata !20), !dbg !76
  call void @llvm.dbg.value(metadata !{i32* %ne}, i64 0, metadata !21), !dbg !76
  call void @llvm.dbg.value(metadata !{double* %v}, i64 0, metadata !22), !dbg !76
  call void @llvm.dbg.value(metadata !{double* %stn}, i64 0, metadata !23), !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %inum}, i64 0, metadata !24), !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %nmethod}, i64 0, metadata !25), !dbg !77
  call void @llvm.dbg.value(metadata !{i32* %kode}, i64 0, metadata !26), !dbg !77
  call void @llvm.dbg.value(metadata !{i8* %nodeflab}, i64 0, metadata !27), !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %nodeflabLen}, i64 0, metadata !28), !dbg !78
  call void @llvm.dbg.value(metadata !{double* %een}, i64 0, metadata !29), !dbg !78
  call void @llvm.dbg.value(metadata !{double* %t1}, i64 0, metadata !30), !dbg !78
  call void @llvm.dbg.value(metadata !{double* %fn}, i64 0, metadata !31), !dbg !78
  call void @llvm.dbg.value(metadata !{double* %time}, i64 0, metadata !32), !dbg !78
  call void @llvm.dbg.value(metadata !{double* %epn}, i64 0, metadata !33), !dbg !78
  call void @llvm.dbg.value(metadata !{i32* %ielmat}, i64 0, metadata !34), !dbg !79
  call void @llvm.dbg.value(metadata !{i8* %matname}, i64 0, metadata !35), !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %matnameLen}, i64 0, metadata !36), !dbg !79
  call void @llvm.dbg.value(metadata !{i32* %ns}, i64 0, metadata !37), !dbg !79
  call void @llvm.dbg.value(metadata !{double* %csab}, i64 0, metadata !38), !dbg !79
  call void @llvm.dbg.value(metadata !{i32* %nkon}, i64 0, metadata !39), !dbg !79
  call void @llvm.dbg.value(metadata !{double* %enern}, i64 0, metadata !40), !dbg !80
  call void @llvm.dbg.value(metadata !{double* %xstaten}, i64 0, metadata !41), !dbg !80
  call void @llvm.dbg.value(metadata !{i32* %nstate_}, i64 0, metadata !42), !dbg !80
  call void @llvm.dbg.value(metadata !{i32* %istep}, i64 0, metadata !43), !dbg !80
  call void @llvm.dbg.value(metadata !{i32* %iinc}, i64 0, metadata !44), !dbg !81
  call void @llvm.dbg.value(metadata !{i32* %iperturb}, i64 0, metadata !45), !dbg !81
  call void @llvm.dbg.value(metadata !{double* %ener}, i64 0, metadata !46), !dbg !81
  call void @llvm.dbg.value(metadata !{i32* %mint_}, i64 0, metadata !47), !dbg !81
  call void @llvm.dbg.value(metadata !{i8* %output}, i64 0, metadata !48), !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %outputLen}, i64 0, metadata !49), !dbg !81
  call void @llvm.dbg.value(metadata !82, i64 0, metadata !50), !dbg !83
  call void @llvm.dbg.declare(metadata !{i32* %nkt}, metadata !51), !dbg !84
  call void @llvm.dbg.declare(metadata !{i32* %icntrl}, metadata !52), !dbg !84
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !53), !dbg !86
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !54), !dbg !86
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !55), !dbg !86
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !56), !dbg !86
  call void @llvm.dbg.declare(metadata !{i32* %net}, metadata !57), !dbg !84
  call void @llvm.dbg.declare(metadata !{i32* %imag}, metadata !60), !dbg !86
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !86
  store i32 0, i32* %imag, align 4, !dbg !86, !tbaa !87
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !61), !dbg !91
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !62), !dbg !91
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !63), !dbg !91
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !64), !dbg !91
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !65), !dbg !91
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !66), !dbg !91
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !67), !dbg !91
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !68), !dbg !91
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !69), !dbg !91
  call void @llvm.dbg.declare(metadata !{[3 x double]* %t}, metadata !72), !dbg !91
  call void @llvm.dbg.value(metadata !92, i64 0, metadata !71), !dbg !93
  %0 = load i32* %nk, align 4, !dbg !94, !tbaa !87
  %mul1 = mul nsw i32 %0, 3, !dbg !94
  %arrayidx = getelementptr inbounds i32* %ns, i64 4, !dbg !94
  %1 = load i32* %arrayidx, align 4, !dbg !94, !tbaa !87
  %mul2 = mul nsw i32 %mul1, %1, !dbg !94
  %conv = sext i32 %mul2 to i64, !dbg !94
  %call3 = call i8* @u_calloc(i64 %conv, i64 8) #4, !dbg !94
  %2 = bitcast i8* %call3 to double*, !dbg !94
  call void @llvm.dbg.value(metadata !{double* %2}, i64 0, metadata !65), !dbg !94
  %call5 = call i32 @strcmp1(i8* %nodeflab, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #4, !dbg !95
  %cmp = icmp eq i32 %call5, 0, !dbg !95
  br i1 %cmp, label %if.then, label %if.end, !dbg !95

if.then:                                          ; preds = %entry
  %3 = load i32* %nk, align 4, !dbg !96, !tbaa !87
  %mul7 = shl i32 %3, 2, !dbg !96
  %4 = load i32* %arrayidx, align 4, !dbg !96, !tbaa !87
  %mul9 = mul nsw i32 %mul7, %4, !dbg !96
  %conv10 = sext i32 %mul9 to i64, !dbg !96
  %call11 = call i8* @u_calloc(i64 %conv10, i64 8) #4, !dbg !96
  %5 = bitcast i8* %call11 to double*, !dbg !96
  call void @llvm.dbg.value(metadata !{double* %5}, i64 0, metadata !61), !dbg !96
  br label %if.end, !dbg !96

if.end:                                           ; preds = %if.then, %entry
  %vt.0 = phi double* [ %5, %if.then ], [ null, %entry ]
  %6 = bitcast double* %vt.0 to i8*
  %arrayidx12 = getelementptr inbounds i8* %nodeflab, i64 4, !dbg !97
  %call13 = call i32 @strcmp1(i8* %arrayidx12, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !97
  %cmp14 = icmp eq i32 %call13, 0, !dbg !97
  br i1 %cmp14, label %if.then16, label %if.end21, !dbg !97

if.then16:                                        ; preds = %if.end
  %7 = load i32* %nk, align 4, !dbg !98, !tbaa !87
  %8 = load i32* %arrayidx, align 4, !dbg !98, !tbaa !87
  %mul18 = mul nsw i32 %8, %7, !dbg !98
  %conv19 = sext i32 %mul18 to i64, !dbg !98
  %call20 = call i8* @u_calloc(i64 %conv19, i64 8) #4, !dbg !98
  %9 = bitcast i8* %call20 to double*, !dbg !98
  call void @llvm.dbg.value(metadata !{double* %9}, i64 0, metadata !66), !dbg !98
  br label %if.end21, !dbg !98

if.end21:                                         ; preds = %if.then16, %if.end
  %t1t.0 = phi double* [ %9, %if.then16 ], [ null, %if.end ]
  %10 = bitcast double* %t1t.0 to i8*
  %arrayidx22 = getelementptr inbounds i8* %nodeflab, i64 8, !dbg !99
  %call23 = call i32 @strcmp1(i8* %arrayidx22, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !99
  %cmp24 = icmp eq i32 %call23, 0, !dbg !99
  br i1 %cmp24, label %if.then26, label %if.end32, !dbg !99

if.then26:                                        ; preds = %if.end21
  %11 = load i32* %nk, align 4, !dbg !100, !tbaa !87
  %mul27 = mul nsw i32 %11, 6, !dbg !100
  %12 = load i32* %arrayidx, align 4, !dbg !100, !tbaa !87
  %mul29 = mul nsw i32 %mul27, %12, !dbg !100
  %conv30 = sext i32 %mul29 to i64, !dbg !100
  %call31 = call i8* @u_calloc(i64 %conv30, i64 8) #4, !dbg !100
  %13 = bitcast i8* %call31 to double*, !dbg !100
  call void @llvm.dbg.value(metadata !{double* %13}, i64 0, metadata !63), !dbg !100
  br label %if.end32, !dbg !100

if.end32:                                         ; preds = %if.then26, %if.end21
  %stnt.0 = phi double* [ %13, %if.then26 ], [ null, %if.end21 ]
  %14 = bitcast double* %stnt.0 to i8*
  %arrayidx33 = getelementptr inbounds i8* %nodeflab, i64 12, !dbg !101
  %call34 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !101
  %cmp35 = icmp eq i32 %call34, 0, !dbg !101
  br i1 %cmp35, label %if.then37, label %if.end43, !dbg !101

if.then37:                                        ; preds = %if.end32
  %15 = load i32* %nk, align 4, !dbg !102, !tbaa !87
  %mul38 = mul nsw i32 %15, 6, !dbg !102
  %16 = load i32* %arrayidx, align 4, !dbg !102, !tbaa !87
  %mul40 = mul nsw i32 %mul38, %16, !dbg !102
  %conv41 = sext i32 %mul40 to i64, !dbg !102
  %call42 = call i8* @u_calloc(i64 %conv41, i64 8) #4, !dbg !102
  %17 = bitcast i8* %call42 to double*, !dbg !102
  call void @llvm.dbg.value(metadata !{double* %17}, i64 0, metadata !64), !dbg !102
  br label %if.end43, !dbg !102

if.end43:                                         ; preds = %if.then37, %if.end32
  %eent.0 = phi double* [ %17, %if.then37 ], [ null, %if.end32 ]
  %18 = bitcast double* %eent.0 to i8*
  %arrayidx44 = getelementptr inbounds i8* %nodeflab, i64 16, !dbg !103
  %call45 = call i32 @strcmp1(i8* %arrayidx44, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !103
  %cmp46 = icmp eq i32 %call45, 0, !dbg !103
  br i1 %cmp46, label %if.then48, label %if.end54, !dbg !103

if.then48:                                        ; preds = %if.end43
  %19 = load i32* %nk, align 4, !dbg !104, !tbaa !87
  %mul49 = shl i32 %19, 2, !dbg !104
  %20 = load i32* %arrayidx, align 4, !dbg !104, !tbaa !87
  %mul51 = mul nsw i32 %mul49, %20, !dbg !104
  %conv52 = sext i32 %mul51 to i64, !dbg !104
  %call53 = call i8* @u_calloc(i64 %conv52, i64 8) #4, !dbg !104
  %21 = bitcast i8* %call53 to double*, !dbg !104
  call void @llvm.dbg.value(metadata !{double* %21}, i64 0, metadata !62), !dbg !104
  br label %if.end54, !dbg !104

if.end54:                                         ; preds = %if.then48, %if.end43
  %fnt.0 = phi double* [ %21, %if.then48 ], [ null, %if.end43 ]
  %22 = bitcast double* %fnt.0 to i8*
  %arrayidx55 = getelementptr inbounds i8* %nodeflab, i64 20, !dbg !105
  %call56 = call i32 @strcmp1(i8* %arrayidx55, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !105
  %cmp57 = icmp eq i32 %call56, 0, !dbg !105
  br i1 %cmp57, label %if.then59, label %if.end64, !dbg !105

if.then59:                                        ; preds = %if.end54
  %23 = load i32* %nk, align 4, !dbg !106, !tbaa !87
  %24 = load i32* %arrayidx, align 4, !dbg !106, !tbaa !87
  %mul61 = mul nsw i32 %24, %23, !dbg !106
  %conv62 = sext i32 %mul61 to i64, !dbg !106
  %call63 = call i8* @u_calloc(i64 %conv62, i64 8) #4, !dbg !106
  %25 = bitcast i8* %call63 to double*, !dbg !106
  call void @llvm.dbg.value(metadata !{double* %25}, i64 0, metadata !67), !dbg !106
  br label %if.end64, !dbg !106

if.end64:                                         ; preds = %if.then59, %if.end54
  %epnt.0 = phi double* [ %25, %if.then59 ], [ null, %if.end54 ]
  %26 = bitcast double* %epnt.0 to i8*
  %arrayidx65 = getelementptr inbounds i8* %nodeflab, i64 24, !dbg !107
  %call66 = call i32 @strcmp1(i8* %arrayidx65, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !107
  %cmp67 = icmp eq i32 %call66, 0, !dbg !107
  br i1 %cmp67, label %if.then69, label %if.end74, !dbg !107

if.then69:                                        ; preds = %if.end64
  %27 = load i32* %nk, align 4, !dbg !108, !tbaa !87
  %28 = load i32* %arrayidx, align 4, !dbg !108, !tbaa !87
  %mul71 = mul nsw i32 %28, %27, !dbg !108
  %conv72 = sext i32 %mul71 to i64, !dbg !108
  %call73 = call i8* @u_calloc(i64 %conv72, i64 8) #4, !dbg !108
  %29 = bitcast i8* %call73 to double*, !dbg !108
  call void @llvm.dbg.value(metadata !{double* %29}, i64 0, metadata !68), !dbg !108
  br label %if.end74, !dbg !108

if.end74:                                         ; preds = %if.then69, %if.end64
  %enernt.0 = phi double* [ %29, %if.then69 ], [ null, %if.end64 ]
  %30 = bitcast double* %enernt.0 to i8*
  %arrayidx75 = getelementptr inbounds i8* %nodeflab, i64 28, !dbg !109
  %call76 = call i32 @strcmp1(i8* %arrayidx75, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !109
  %cmp77 = icmp eq i32 %call76, 0, !dbg !109
  br i1 %cmp77, label %if.then79, label %if.end85, !dbg !109

if.then79:                                        ; preds = %if.end74
  %31 = load i32* %nstate_, align 4, !dbg !110, !tbaa !87
  %32 = load i32* %nk, align 4, !dbg !110, !tbaa !87
  %mul80 = mul nsw i32 %32, %31, !dbg !110
  %33 = load i32* %arrayidx, align 4, !dbg !110, !tbaa !87
  %mul82 = mul nsw i32 %mul80, %33, !dbg !110
  %conv83 = sext i32 %mul82 to i64, !dbg !110
  %call84 = call i8* @u_calloc(i64 %conv83, i64 8) #4, !dbg !110
  %34 = bitcast i8* %call84 to double*, !dbg !110
  call void @llvm.dbg.value(metadata !{double* %34}, i64 0, metadata !69), !dbg !110
  br label %if.end85, !dbg !110

if.end85:                                         ; preds = %if.then79, %if.end74
  %xstatent.0 = phi double* [ %34, %if.then79 ], [ null, %if.end74 ]
  %35 = bitcast double* %xstatent.0 to i8*
  %36 = load i32* %kode, align 4, !dbg !111, !tbaa !87
  %cmp86 = icmp eq i32 %36, 1, !dbg !111
  br i1 %cmp86, label %if.then88, label %if.end106, !dbg !111

if.then88:                                        ; preds = %if.end85
  %37 = load i32* %nkon, align 4, !dbg !112, !tbaa !87
  %38 = load i32* %arrayidx, align 4, !dbg !112, !tbaa !87
  %mul90 = mul nsw i32 %38, %37, !dbg !112
  %conv91 = sext i32 %mul90 to i64, !dbg !112
  %call92 = call i8* @u_calloc(i64 %conv91, i64 4) #4, !dbg !112
  %39 = bitcast i8* %call92 to i32*, !dbg !112
  call void @llvm.dbg.value(metadata !{i32* %39}, i64 0, metadata !53), !dbg !112
  %40 = load i32* %ne, align 4, !dbg !114, !tbaa !87
  %41 = load i32* %arrayidx, align 4, !dbg !114, !tbaa !87
  %mul94 = mul nsw i32 %41, %40, !dbg !114
  %conv95 = sext i32 %mul94 to i64, !dbg !114
  %call96 = call i8* @u_calloc(i64 %conv95, i64 4) #4, !dbg !114
  %42 = bitcast i8* %call96 to i32*, !dbg !114
  call void @llvm.dbg.value(metadata !{i32* %42}, i64 0, metadata !54), !dbg !114
  %43 = load i32* %ne, align 4, !dbg !115, !tbaa !87
  %mul97 = shl i32 %43, 3, !dbg !115
  %44 = load i32* %arrayidx, align 4, !dbg !115, !tbaa !87
  %mul99 = mul nsw i32 %mul97, %44, !dbg !115
  %conv100 = sext i32 %mul99 to i64, !dbg !115
  %call101 = call i8* @u_calloc(i64 %conv100, i64 1) #4, !dbg !115
  call void @llvm.dbg.value(metadata !{i8* %call101}, i64 0, metadata !50), !dbg !115
  %45 = load i32* %ne, align 4, !dbg !116, !tbaa !87
  %46 = load i32* %arrayidx, align 4, !dbg !116, !tbaa !87
  %mul103 = mul nsw i32 %46, %45, !dbg !116
  %conv104 = sext i32 %mul103 to i64, !dbg !116
  %call105 = call i8* @u_calloc(i64 %conv104, i64 4) #4, !dbg !116
  %47 = bitcast i8* %call105 to i32*, !dbg !116
  call void @llvm.dbg.value(metadata !{i32* %47}, i64 0, metadata !56), !dbg !116
  br label %if.end106, !dbg !117

if.end106:                                        ; preds = %if.then88, %if.end85
  %ipkont.0 = phi i32* [ %42, %if.then88 ], [ null, %if.end85 ]
  %ielmatt.0 = phi i32* [ %47, %if.then88 ], [ null, %if.end85 ]
  %kont.0 = phi i32* [ %39, %if.then88 ], [ null, %if.end85 ]
  %lakont.0 = phi i8* [ %call101, %if.then88 ], [ null, %if.end85 ]
  %48 = load i32* %nk, align 4, !dbg !118, !tbaa !87
  %49 = load i32* %arrayidx, align 4, !dbg !118, !tbaa !87
  %mul108 = mul nsw i32 %49, %48, !dbg !118
  %conv109 = sext i32 %mul108 to i64, !dbg !118
  %call110 = call i8* @u_calloc(i64 %conv109, i64 4) #4, !dbg !118
  %50 = bitcast i8* %call110 to i32*, !dbg !118
  call void @llvm.dbg.value(metadata !{i32* %50}, i64 0, metadata !55), !dbg !118
  %51 = load i32* %arrayidx, align 4, !dbg !119, !tbaa !87
  %52 = load i32* %nk, align 4, !dbg !119, !tbaa !87
  %mul112 = mul nsw i32 %52, %51, !dbg !119
  call void @llvm.dbg.value(metadata !{i32 %mul112}, i64 0, metadata !51), !dbg !119
  store i32 %mul112, i32* %nkt, align 4, !dbg !119, !tbaa !87
  %53 = load i32* %ne, align 4, !dbg !120, !tbaa !87
  %mul114 = mul nsw i32 %53, %51, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %mul114}, i64 0, metadata !57), !dbg !120
  store i32 %mul114, i32* %net, align 4, !dbg !120, !tbaa !87
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !59), !dbg !121
  %cmp1161109 = icmp sgt i32 %52, 0, !dbg !121
  br i1 %cmp1161109, label %for.body.lr.ph, label %for.end, !dbg !121

for.body.lr.ph:                                   ; preds = %if.end106
  %mul115 = mul nsw i32 %52, 3, !dbg !121
  br label %for.body, !dbg !121

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv1163 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1164, %for.body ]
  %arrayidx118 = getelementptr inbounds double* %co, i64 %indvars.iv1163, !dbg !123
  %54 = load double* %arrayidx118, align 8, !dbg !123, !tbaa !125
  %arrayidx120 = getelementptr inbounds double* %2, i64 %indvars.iv1163, !dbg !123
  store double %54, double* %arrayidx120, align 8, !dbg !123, !tbaa !125
  %indvars.iv.next1164 = add i64 %indvars.iv1163, 1, !dbg !121
  %55 = trunc i64 %indvars.iv.next1164 to i32, !dbg !121
  %cmp116 = icmp slt i32 %55, %mul115, !dbg !121
  br i1 %cmp116, label %for.body, label %for.end, !dbg !121

for.end:                                          ; preds = %for.body, %if.end106
  %56 = load i32* %kode, align 4, !dbg !126, !tbaa !87
  %cmp121 = icmp eq i32 %56, 1, !dbg !126
  br i1 %cmp121, label %for.cond124.preheader, label %if.end169, !dbg !126

for.cond124.preheader:                            ; preds = %for.end
  %57 = load i32* %nkon, align 4, !dbg !127, !tbaa !87
  %cmp1251106 = icmp sgt i32 %57, 0, !dbg !127
  br i1 %cmp1251106, label %for.body127, label %for.cond135.preheader, !dbg !127

for.cond124.for.cond135.preheader_crit_edge:      ; preds = %for.body127
  %.pre1165 = load i32* %ne, align 4, !dbg !130, !tbaa !87
  br label %for.cond135.preheader, !dbg !127

for.cond135.preheader:                            ; preds = %for.cond124.for.cond135.preheader_crit_edge, %for.cond124.preheader
  %58 = phi i32 [ %.pre1165, %for.cond124.for.cond135.preheader_crit_edge ], [ %53, %for.cond124.preheader ]
  %cmp1361104 = icmp sgt i32 %58, 0, !dbg !130
  br i1 %cmp1361104, label %for.body138, label %if.end169, !dbg !130

for.body127:                                      ; preds = %for.cond124.preheader, %for.body127
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %for.body127 ], [ 0, %for.cond124.preheader ]
  %arrayidx129 = getelementptr inbounds i32* %kon, i64 %indvars.iv1161, !dbg !132
  %59 = load i32* %arrayidx129, align 4, !dbg !132, !tbaa !87
  %arrayidx131 = getelementptr inbounds i32* %kont.0, i64 %indvars.iv1161, !dbg !132
  store i32 %59, i32* %arrayidx131, align 4, !dbg !132, !tbaa !87
  %indvars.iv.next1162 = add i64 %indvars.iv1161, 1, !dbg !127
  %60 = load i32* %nkon, align 4, !dbg !127, !tbaa !87
  %61 = trunc i64 %indvars.iv.next1162 to i32, !dbg !127
  %cmp125 = icmp slt i32 %61, %60, !dbg !127
  br i1 %cmp125, label %for.body127, label %for.cond124.for.cond135.preheader_crit_edge, !dbg !127

for.cond146.preheader:                            ; preds = %for.body138
  %cmp1481102 = icmp sgt i32 %63, 0, !dbg !134
  br i1 %cmp1481102, label %for.body150, label %if.end169, !dbg !134

for.body138:                                      ; preds = %for.cond135.preheader, %for.body138
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %for.body138 ], [ 0, %for.cond135.preheader ]
  %arrayidx140 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv1159, !dbg !136
  %62 = load i32* %arrayidx140, align 4, !dbg !136, !tbaa !87
  %arrayidx142 = getelementptr inbounds i32* %ipkont.0, i64 %indvars.iv1159, !dbg !136
  store i32 %62, i32* %arrayidx142, align 4, !dbg !136, !tbaa !87
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 1, !dbg !130
  %63 = load i32* %ne, align 4, !dbg !130, !tbaa !87
  %64 = trunc i64 %indvars.iv.next1160 to i32, !dbg !130
  %cmp136 = icmp slt i32 %64, %63, !dbg !130
  br i1 %cmp136, label %for.body138, label %for.cond146.preheader, !dbg !130

for.cond158.preheader:                            ; preds = %for.body150
  %cmp1591099 = icmp sgt i32 %66, 0, !dbg !138
  br i1 %cmp1591099, label %for.body161, label %if.end169, !dbg !138

for.body150:                                      ; preds = %for.cond146.preheader, %for.body150
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %for.body150 ], [ 0, %for.cond146.preheader ]
  %arrayidx152 = getelementptr inbounds i8* %lakon, i64 %indvars.iv1157, !dbg !140
  %65 = load i8* %arrayidx152, align 1, !dbg !140, !tbaa !88
  %arrayidx154 = getelementptr inbounds i8* %lakont.0, i64 %indvars.iv1157, !dbg !140
  store i8 %65, i8* %arrayidx154, align 1, !dbg !140, !tbaa !88
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 1, !dbg !134
  %66 = load i32* %ne, align 4, !dbg !134, !tbaa !87
  %mul147 = shl nsw i32 %66, 3, !dbg !134
  %67 = trunc i64 %indvars.iv.next1158 to i32, !dbg !134
  %cmp148 = icmp slt i32 %67, %mul147, !dbg !134
  br i1 %cmp148, label %for.body150, label %for.cond158.preheader, !dbg !134

for.body161:                                      ; preds = %for.cond158.preheader, %for.body161
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %for.body161 ], [ 0, %for.cond158.preheader ]
  %arrayidx163 = getelementptr inbounds i32* %ielmat, i64 %indvars.iv1155, !dbg !142
  %68 = load i32* %arrayidx163, align 4, !dbg !142, !tbaa !87
  %arrayidx165 = getelementptr inbounds i32* %ielmatt.0, i64 %indvars.iv1155, !dbg !142
  store i32 %68, i32* %arrayidx165, align 4, !dbg !142, !tbaa !87
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 1, !dbg !138
  %69 = load i32* %ne, align 4, !dbg !138, !tbaa !87
  %70 = trunc i64 %indvars.iv.next1156 to i32, !dbg !138
  %cmp159 = icmp slt i32 %70, %69, !dbg !138
  br i1 %cmp159, label %for.body161, label %if.end169, !dbg !138

if.end169:                                        ; preds = %for.cond135.preheader, %for.cond146.preheader, %for.cond158.preheader, %for.body161, %for.end
  call void @llvm.dbg.value(metadata !144, i64 0, metadata !52), !dbg !145
  store i32 1, i32* %icntrl, align 4, !dbg !145, !tbaa !87
  %arraydecay = getelementptr inbounds [3 x double]* %t, i64 0, i64 0, !dbg !146
  call void @rectcyl_(double* %2, double* %v, double* %fn, double* %stn, double* %een, double* %csab, i32* %nk, i32* %icntrl, double* %arraydecay, i8* %nodeflab, i32* %imag) #4, !dbg !146
  call void @llvm.dbg.value(metadata !144, i64 0, metadata !58), !dbg !147
  %71 = load i32* %arrayidx, align 4, !dbg !147, !tbaa !87
  %cmp1721095 = icmp sgt i32 %71, 1, !dbg !147
  br i1 %cmp1721095, label %for.body174, label %for.end291, !dbg !147

for.body174:                                      ; preds = %for.inc289, %if.end169
  %72 = phi i32 [ %71, %if.end169 ], [ %106, %for.inc289 ]
  %i.01096 = phi i32 [ 1, %if.end169 ], [ %inc290, %for.inc289 ]
  %conv175 = sitofp i32 %i.01096 to double, !dbg !149
  %mul176 = fmul double %conv175, 2.000000e+00, !dbg !149
  %mul177 = fmul double %mul176, 0x400921FB54442D18, !dbg !149
  %73 = load i32* %ns, align 4, !dbg !149, !tbaa !87
  %conv179 = sitofp i32 %73 to double, !dbg !149
  %div = fdiv double %mul177, %conv179, !dbg !149
  call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !70), !dbg !149
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !59), !dbg !151
  %74 = load i32* %nk, align 4, !dbg !151, !tbaa !87
  %cmp1811084 = icmp sgt i32 %74, 0, !dbg !151
  br i1 %cmp1811084, label %for.body183.lr.ph, label %for.end216, !dbg !151

for.body183.lr.ph:                                ; preds = %for.body174
  %mul188 = mul nsw i32 %i.01096, 3, !dbg !153
  %mul199 = mul nsw i32 %74, %mul188, !dbg !155
  br label %for.body183, !dbg !151

for.body183:                                      ; preds = %for.body183.lr.ph, %for.body183
  %indvars.iv1145 = phi i64 [ 0, %for.body183.lr.ph ], [ %indvars.iv.next1146, %for.body183 ]
  %75 = trunc i64 %indvars.iv1145 to i32, !dbg !153
  %mul184 = mul nsw i32 %75, 3, !dbg !153
  %idxprom185 = sext i32 %mul184 to i64, !dbg !153
  %arrayidx186 = getelementptr inbounds double* %2, i64 %idxprom185, !dbg !153
  %76 = load double* %arrayidx186, align 8, !dbg !153, !tbaa !125
  %add = add nsw i32 %mul199, %mul184, !dbg !153
  %idxprom190 = sext i32 %add to i64, !dbg !153
  %arrayidx191 = getelementptr inbounds double* %2, i64 %idxprom190, !dbg !153
  store double %76, double* %arrayidx191, align 8, !dbg !153, !tbaa !125
  %add193 = add nsw i32 %mul184, 1, !dbg !155
  %idxprom194 = sext i32 %add193 to i64, !dbg !155
  %arrayidx195 = getelementptr inbounds double* %2, i64 %idxprom194, !dbg !155
  %77 = load double* %arrayidx195, align 8, !dbg !155, !tbaa !125
  %sub = fsub double %77, %div, !dbg !155
  %add200 = add nsw i32 %mul199, %add193, !dbg !155
  %idxprom201 = sext i32 %add200 to i64, !dbg !155
  %arrayidx202 = getelementptr inbounds double* %2, i64 %idxprom201, !dbg !155
  store double %sub, double* %arrayidx202, align 8, !dbg !155, !tbaa !125
  %add204 = add nsw i32 %mul184, 2, !dbg !156
  %idxprom205 = sext i32 %add204 to i64, !dbg !156
  %arrayidx206 = getelementptr inbounds double* %2, i64 %idxprom205, !dbg !156
  %78 = load double* %arrayidx206, align 8, !dbg !156, !tbaa !125
  %add211 = add nsw i32 %mul199, %add204, !dbg !156
  %idxprom212 = sext i32 %add211 to i64, !dbg !156
  %arrayidx213 = getelementptr inbounds double* %2, i64 %idxprom212, !dbg !156
  store double %78, double* %arrayidx213, align 8, !dbg !156, !tbaa !125
  %indvars.iv.next1146 = add i64 %indvars.iv1145, 1, !dbg !151
  %79 = trunc i64 %indvars.iv.next1146 to i32, !dbg !151
  %cmp181 = icmp slt i32 %79, %74, !dbg !151
  br i1 %cmp181, label %for.body183, label %for.end216, !dbg !151

for.end216:                                       ; preds = %for.body183, %for.body174
  %80 = load i32* %kode, align 4, !dbg !157, !tbaa !87
  %cmp217 = icmp eq i32 %80, 1, !dbg !157
  br i1 %cmp217, label %for.cond220.preheader, label %for.inc289, !dbg !157

for.cond220.preheader:                            ; preds = %for.end216
  %81 = load i32* %nkon, align 4, !dbg !158, !tbaa !87
  %cmp2211086 = icmp sgt i32 %81, 0, !dbg !158
  br i1 %cmp2211086, label %for.body223, label %for.cond235.loopexit, !dbg !158

for.body223:                                      ; preds = %for.cond220.preheader, %for.body223.for.body223_crit_edge
  %82 = phi i32 [ %.pre1166, %for.body223.for.body223_crit_edge ], [ %74, %for.cond220.preheader ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %for.body223.for.body223_crit_edge ], [ 0, %for.cond220.preheader ]
  %83 = phi i32 [ %86, %for.body223.for.body223_crit_edge ], [ %81, %for.cond220.preheader ]
  %arrayidx225 = getelementptr inbounds i32* %kon, i64 %indvars.iv1147, !dbg !161
  %84 = load i32* %arrayidx225, align 4, !dbg !161, !tbaa !87
  %mul226 = mul nsw i32 %82, %i.01096, !dbg !161
  %add227 = add nsw i32 %mul226, %84, !dbg !161
  %mul228 = mul nsw i32 %83, %i.01096, !dbg !161
  %85 = trunc i64 %indvars.iv1147 to i32, !dbg !161
  %add229 = add nsw i32 %mul228, %85, !dbg !161
  %idxprom230 = sext i32 %add229 to i64, !dbg !161
  %arrayidx231 = getelementptr inbounds i32* %kont.0, i64 %idxprom230, !dbg !161
  store i32 %add227, i32* %arrayidx231, align 4, !dbg !161, !tbaa !87
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 1, !dbg !158
  %86 = load i32* %nkon, align 4, !dbg !158, !tbaa !87
  %87 = trunc i64 %indvars.iv.next1148 to i32, !dbg !158
  %cmp221 = icmp slt i32 %87, %86, !dbg !158
  br i1 %cmp221, label %for.body223.for.body223_crit_edge, label %for.cond235.loopexit, !dbg !158

for.body223.for.body223_crit_edge:                ; preds = %for.body223
  %.pre1166 = load i32* %nk, align 4, !dbg !161, !tbaa !87
  br label %for.body223, !dbg !158

for.cond235.loopexit:                             ; preds = %for.body223, %for.cond220.preheader
  %88 = load i32* %ne, align 4, !dbg !163, !tbaa !87
  %cmp2361088 = icmp sgt i32 %88, 0, !dbg !163
  br i1 %cmp2361088, label %for.body238, label %for.inc289.loopexit, !dbg !163

for.body238:                                      ; preds = %for.cond235.loopexit, %for.inc257
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %for.inc257 ], [ 0, %for.cond235.loopexit ]
  %89 = phi i32 [ %94, %for.inc257 ], [ %88, %for.cond235.loopexit ]
  %arrayidx240 = getelementptr inbounds i32* %ipkon, i64 %indvars.iv1149, !dbg !165
  %90 = load i32* %arrayidx240, align 4, !dbg !165, !tbaa !87
  %cmp241 = icmp sgt i32 %90, -1, !dbg !165
  br i1 %cmp241, label %if.then243, label %if.else, !dbg !165

if.then243:                                       ; preds = %for.body238
  %91 = load i32* %nkon, align 4, !dbg !165, !tbaa !87
  %mul246 = mul nsw i32 %91, %i.01096, !dbg !165
  %add247 = add nsw i32 %mul246, %90, !dbg !165
  %mul248 = mul nsw i32 %89, %i.01096, !dbg !165
  %92 = trunc i64 %indvars.iv1149 to i32, !dbg !165
  %add249 = add nsw i32 %mul248, %92, !dbg !165
  %idxprom250 = sext i32 %add249 to i64, !dbg !165
  %arrayidx251 = getelementptr inbounds i32* %ipkont.0, i64 %idxprom250, !dbg !165
  store i32 %add247, i32* %arrayidx251, align 4, !dbg !165, !tbaa !87
  br label %for.inc257, !dbg !165

if.else:                                          ; preds = %for.body238
  %mul252 = mul nsw i32 %89, %i.01096, !dbg !167
  %93 = trunc i64 %indvars.iv1149 to i32, !dbg !167
  %add253 = add nsw i32 %mul252, %93, !dbg !167
  %idxprom254 = sext i32 %add253 to i64, !dbg !167
  %arrayidx255 = getelementptr inbounds i32* %ipkont.0, i64 %idxprom254, !dbg !167
  store i32 -1, i32* %arrayidx255, align 4, !dbg !167, !tbaa !87
  br label %for.inc257

for.inc257:                                       ; preds = %if.then243, %if.else
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1, !dbg !163
  %94 = load i32* %ne, align 4, !dbg !163, !tbaa !87
  %95 = trunc i64 %indvars.iv.next1150 to i32, !dbg !163
  %cmp236 = icmp slt i32 %95, %94, !dbg !163
  br i1 %cmp236, label %for.body238, label %for.cond260.loopexit, !dbg !163

for.cond260.loopexit:                             ; preds = %for.inc257
  %cmp2621091 = icmp sgt i32 %94, 0, !dbg !168
  br i1 %cmp2621091, label %for.body264.lr.ph, label %for.inc289.loopexit, !dbg !168

for.body264.lr.ph:                                ; preds = %for.cond260.loopexit
  %mul267 = shl i32 %i.01096, 3, !dbg !170
  br label %for.body264, !dbg !168

for.body264:                                      ; preds = %for.body264.lr.ph, %for.body264
  %indvars.iv1151 = phi i64 [ 0, %for.body264.lr.ph ], [ %indvars.iv.next1152, %for.body264 ]
  %96 = phi i32 [ %94, %for.body264.lr.ph ], [ %99, %for.body264 ]
  %arrayidx266 = getelementptr inbounds i8* %lakon, i64 %indvars.iv1151, !dbg !170
  %97 = load i8* %arrayidx266, align 1, !dbg !170, !tbaa !88
  %mul268 = mul nsw i32 %mul267, %96, !dbg !170
  %98 = trunc i64 %indvars.iv1151 to i32, !dbg !170
  %add269 = add nsw i32 %mul268, %98, !dbg !170
  %idxprom270 = sext i32 %add269 to i64, !dbg !170
  %arrayidx271 = getelementptr inbounds i8* %lakont.0, i64 %idxprom270, !dbg !170
  store i8 %97, i8* %arrayidx271, align 1, !dbg !170, !tbaa !88
  %indvars.iv.next1152 = add i64 %indvars.iv1151, 1, !dbg !168
  %99 = load i32* %ne, align 4, !dbg !168, !tbaa !87
  %mul261 = shl nsw i32 %99, 3, !dbg !168
  %100 = trunc i64 %indvars.iv.next1152 to i32, !dbg !168
  %cmp262 = icmp slt i32 %100, %mul261, !dbg !168
  br i1 %cmp262, label %for.body264, label %for.cond275.loopexit, !dbg !168

for.cond275.loopexit:                             ; preds = %for.body264
  %cmp2761093 = icmp sgt i32 %99, 0, !dbg !172
  br i1 %cmp2761093, label %for.body278, label %for.inc289.loopexit, !dbg !172

for.body278:                                      ; preds = %for.cond275.loopexit, %for.body278
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %for.body278 ], [ 0, %for.cond275.loopexit ]
  %101 = phi i32 [ %104, %for.body278 ], [ %99, %for.cond275.loopexit ]
  %arrayidx280 = getelementptr inbounds i32* %ielmat, i64 %indvars.iv1153, !dbg !174
  %102 = load i32* %arrayidx280, align 4, !dbg !174, !tbaa !87
  %mul281 = mul nsw i32 %101, %i.01096, !dbg !174
  %103 = trunc i64 %indvars.iv1153 to i32, !dbg !174
  %add282 = add nsw i32 %mul281, %103, !dbg !174
  %idxprom283 = sext i32 %add282 to i64, !dbg !174
  %arrayidx284 = getelementptr inbounds i32* %ielmatt.0, i64 %idxprom283, !dbg !174
  store i32 %102, i32* %arrayidx284, align 4, !dbg !174, !tbaa !87
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 1, !dbg !172
  %104 = load i32* %ne, align 4, !dbg !172, !tbaa !87
  %105 = trunc i64 %indvars.iv.next1154 to i32, !dbg !172
  %cmp276 = icmp slt i32 %105, %104, !dbg !172
  br i1 %cmp276, label %for.body278, label %for.inc289.loopexit, !dbg !172

for.inc289.loopexit:                              ; preds = %for.cond235.loopexit, %for.cond260.loopexit, %for.body278, %for.cond275.loopexit
  %.pre = load i32* %arrayidx, align 4, !dbg !147, !tbaa !87
  br label %for.inc289

for.inc289:                                       ; preds = %for.inc289.loopexit, %for.end216
  %106 = phi i32 [ %.pre, %for.inc289.loopexit ], [ %72, %for.end216 ], !dbg !147
  %inc290 = add nsw i32 %i.01096, 1, !dbg !147
  call void @llvm.dbg.value(metadata !{i32 %inc290}, i64 0, metadata !58), !dbg !147
  %cmp172 = icmp slt i32 %inc290, %106, !dbg !147
  br i1 %cmp172, label %for.body174, label %for.end291, !dbg !147

for.end291:                                       ; preds = %for.inc289, %if.end169
  call void @llvm.dbg.value(metadata !176, i64 0, metadata !52), !dbg !177
  store i32 -1, i32* %icntrl, align 4, !dbg !177, !tbaa !87
  call void @rectcyl_(double* %2, double* %vt.0, double* %fnt.0, double* %stnt.0, double* %eent.0, double* %csab, i32* %nkt, i32* %icntrl, double* %arraydecay, i8* %nodeflab, i32* %imag) #4, !dbg !178
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !59), !dbg !179
  %107 = load i32* %nk, align 4, !dbg !179, !tbaa !87
  %cmp2941082 = icmp sgt i32 %107, 0, !dbg !179
  br i1 %cmp2941082, label %for.body296, label %for.end303, !dbg !179

for.body296:                                      ; preds = %for.end291, %for.body296
  %indvars.iv1143 = phi i64 [ %indvars.iv.next1144, %for.body296 ], [ 0, %for.end291 ]
  %arrayidx298 = getelementptr inbounds i32* %inum, i64 %indvars.iv1143, !dbg !181
  %108 = load i32* %arrayidx298, align 4, !dbg !181, !tbaa !87
  %arrayidx300 = getelementptr inbounds i32* %50, i64 %indvars.iv1143, !dbg !181
  store i32 %108, i32* %arrayidx300, align 4, !dbg !181, !tbaa !87
  %indvars.iv.next1144 = add i64 %indvars.iv1143, 1, !dbg !179
  %109 = load i32* %nk, align 4, !dbg !179, !tbaa !87
  %110 = trunc i64 %indvars.iv.next1144 to i32, !dbg !179
  %cmp294 = icmp slt i32 %110, %109, !dbg !179
  br i1 %cmp294, label %for.body296, label %for.end303, !dbg !179

for.end303:                                       ; preds = %for.body296, %for.end291
  call void @llvm.dbg.value(metadata !183, i64 0, metadata !52), !dbg !184
  store i32 2, i32* %icntrl, align 4, !dbg !184, !tbaa !87
  call void @rectcyl_(double* %co, double* %v, double* %fn, double* %stn, double* %een, double* %csab, i32* %nk, i32* %icntrl, double* %arraydecay, i8* %nodeflab, i32* %imag) #4, !dbg !185
  %call306 = call i32 @strcmp1(i8* %nodeflab, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #4, !dbg !186
  %cmp307 = icmp eq i32 %call306, 0, !dbg !186
  br i1 %cmp307, label %for.cond310.preheader, label %if.end322, !dbg !186

for.cond310.preheader:                            ; preds = %for.end303
  %111 = load i32* %nk, align 4, !dbg !187, !tbaa !87
  %cmp3121080 = icmp sgt i32 %111, 0, !dbg !187
  br i1 %cmp3121080, label %for.body314.lr.ph, label %if.end322, !dbg !187

for.body314.lr.ph:                                ; preds = %for.cond310.preheader
  %mul311 = shl nsw i32 %111, 2, !dbg !187
  br label %for.body314, !dbg !187

for.body314:                                      ; preds = %for.body314.lr.ph, %for.body314
  %indvars.iv1141 = phi i64 [ 0, %for.body314.lr.ph ], [ %indvars.iv.next1142, %for.body314 ]
  %arrayidx316 = getelementptr inbounds double* %v, i64 %indvars.iv1141, !dbg !189
  %112 = load double* %arrayidx316, align 8, !dbg !189, !tbaa !125
  %arrayidx318 = getelementptr inbounds double* %vt.0, i64 %indvars.iv1141, !dbg !189
  store double %112, double* %arrayidx318, align 8, !dbg !189, !tbaa !125
  %indvars.iv.next1142 = add i64 %indvars.iv1141, 1, !dbg !187
  %113 = trunc i64 %indvars.iv.next1142 to i32, !dbg !187
  %cmp312 = icmp slt i32 %113, %mul311, !dbg !187
  br i1 %cmp312, label %for.body314, label %if.end322, !dbg !187

if.end322:                                        ; preds = %for.cond310.preheader, %for.body314, %for.end303
  %call324 = call i32 @strcmp1(i8* %arrayidx12, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !191
  %cmp325 = icmp eq i32 %call324, 0, !dbg !191
  br i1 %cmp325, label %for.cond328.preheader, label %if.end339, !dbg !191

for.cond328.preheader:                            ; preds = %if.end322
  %114 = load i32* %nk, align 4, !dbg !192, !tbaa !87
  %cmp3291077 = icmp sgt i32 %114, 0, !dbg !192
  br i1 %cmp3291077, label %for.body331, label %if.end339, !dbg !192

for.body331:                                      ; preds = %for.cond328.preheader, %for.body331
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %for.body331 ], [ 0, %for.cond328.preheader ]
  %arrayidx333 = getelementptr inbounds double* %t1, i64 %indvars.iv1139, !dbg !194
  %115 = load double* %arrayidx333, align 8, !dbg !194, !tbaa !125
  %arrayidx335 = getelementptr inbounds double* %t1t.0, i64 %indvars.iv1139, !dbg !194
  store double %115, double* %arrayidx335, align 8, !dbg !194, !tbaa !125
  %indvars.iv.next1140 = add i64 %indvars.iv1139, 1, !dbg !192
  %116 = trunc i64 %indvars.iv.next1140 to i32, !dbg !192
  %cmp329 = icmp slt i32 %116, %114, !dbg !192
  br i1 %cmp329, label %for.body331, label %if.end339, !dbg !192

if.end339:                                        ; preds = %for.cond328.preheader, %for.body331, %if.end322
  %call341 = call i32 @strcmp1(i8* %arrayidx22, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !196
  %cmp342 = icmp eq i32 %call341, 0, !dbg !196
  br i1 %cmp342, label %for.cond345.preheader, label %if.end357, !dbg !196

for.cond345.preheader:                            ; preds = %if.end339
  %117 = load i32* %nk, align 4, !dbg !197, !tbaa !87
  %cmp3471075 = icmp sgt i32 %117, 0, !dbg !197
  br i1 %cmp3471075, label %for.body349.lr.ph, label %if.end357, !dbg !197

for.body349.lr.ph:                                ; preds = %for.cond345.preheader
  %mul346 = mul nsw i32 %117, 6, !dbg !197
  br label %for.body349, !dbg !197

for.body349:                                      ; preds = %for.body349.lr.ph, %for.body349
  %indvars.iv1137 = phi i64 [ 0, %for.body349.lr.ph ], [ %indvars.iv.next1138, %for.body349 ]
  %arrayidx351 = getelementptr inbounds double* %stn, i64 %indvars.iv1137, !dbg !199
  %118 = load double* %arrayidx351, align 8, !dbg !199, !tbaa !125
  %arrayidx353 = getelementptr inbounds double* %stnt.0, i64 %indvars.iv1137, !dbg !199
  store double %118, double* %arrayidx353, align 8, !dbg !199, !tbaa !125
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 1, !dbg !197
  %119 = trunc i64 %indvars.iv.next1138 to i32, !dbg !197
  %cmp347 = icmp slt i32 %119, %mul346, !dbg !197
  br i1 %cmp347, label %for.body349, label %if.end357, !dbg !197

if.end357:                                        ; preds = %for.cond345.preheader, %for.body349, %if.end339
  %call359 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !201
  %cmp360 = icmp eq i32 %call359, 0, !dbg !201
  br i1 %cmp360, label %for.cond363.preheader, label %if.end375, !dbg !201

for.cond363.preheader:                            ; preds = %if.end357
  %120 = load i32* %nk, align 4, !dbg !202, !tbaa !87
  %cmp3651072 = icmp sgt i32 %120, 0, !dbg !202
  br i1 %cmp3651072, label %for.body367.lr.ph, label %if.end375, !dbg !202

for.body367.lr.ph:                                ; preds = %for.cond363.preheader
  %mul364 = mul nsw i32 %120, 6, !dbg !202
  br label %for.body367, !dbg !202

for.body367:                                      ; preds = %for.body367.lr.ph, %for.body367
  %indvars.iv1135 = phi i64 [ 0, %for.body367.lr.ph ], [ %indvars.iv.next1136, %for.body367 ]
  %arrayidx369 = getelementptr inbounds double* %een, i64 %indvars.iv1135, !dbg !204
  %121 = load double* %arrayidx369, align 8, !dbg !204, !tbaa !125
  %arrayidx371 = getelementptr inbounds double* %eent.0, i64 %indvars.iv1135, !dbg !204
  store double %121, double* %arrayidx371, align 8, !dbg !204, !tbaa !125
  %indvars.iv.next1136 = add i64 %indvars.iv1135, 1, !dbg !202
  %122 = trunc i64 %indvars.iv.next1136 to i32, !dbg !202
  %cmp365 = icmp slt i32 %122, %mul364, !dbg !202
  br i1 %cmp365, label %for.body367, label %if.end375, !dbg !202

if.end375:                                        ; preds = %for.cond363.preheader, %for.body367, %if.end357
  %call377 = call i32 @strcmp1(i8* %arrayidx44, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !206
  %cmp378 = icmp eq i32 %call377, 0, !dbg !206
  br i1 %cmp378, label %for.cond381.preheader, label %if.end393, !dbg !206

for.cond381.preheader:                            ; preds = %if.end375
  %123 = load i32* %nk, align 4, !dbg !207, !tbaa !87
  %cmp3831069 = icmp sgt i32 %123, 0, !dbg !207
  br i1 %cmp3831069, label %for.body385.lr.ph, label %if.end393, !dbg !207

for.body385.lr.ph:                                ; preds = %for.cond381.preheader
  %mul382 = shl nsw i32 %123, 2, !dbg !207
  br label %for.body385, !dbg !207

for.body385:                                      ; preds = %for.body385.lr.ph, %for.body385
  %indvars.iv1133 = phi i64 [ 0, %for.body385.lr.ph ], [ %indvars.iv.next1134, %for.body385 ]
  %arrayidx387 = getelementptr inbounds double* %fn, i64 %indvars.iv1133, !dbg !209
  %124 = load double* %arrayidx387, align 8, !dbg !209, !tbaa !125
  %arrayidx389 = getelementptr inbounds double* %fnt.0, i64 %indvars.iv1133, !dbg !209
  store double %124, double* %arrayidx389, align 8, !dbg !209, !tbaa !125
  %indvars.iv.next1134 = add i64 %indvars.iv1133, 1, !dbg !207
  %125 = trunc i64 %indvars.iv.next1134 to i32, !dbg !207
  %cmp383 = icmp slt i32 %125, %mul382, !dbg !207
  br i1 %cmp383, label %for.body385, label %if.end393, !dbg !207

if.end393:                                        ; preds = %for.cond381.preheader, %for.body385, %if.end375
  %call395 = call i32 @strcmp1(i8* %arrayidx55, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !211
  %cmp396 = icmp eq i32 %call395, 0, !dbg !211
  br i1 %cmp396, label %for.cond399.preheader, label %if.end410, !dbg !211

for.cond399.preheader:                            ; preds = %if.end393
  %126 = load i32* %nk, align 4, !dbg !212, !tbaa !87
  %cmp4001066 = icmp sgt i32 %126, 0, !dbg !212
  br i1 %cmp4001066, label %for.body402, label %if.end410, !dbg !212

for.body402:                                      ; preds = %for.cond399.preheader, %for.body402
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %for.body402 ], [ 0, %for.cond399.preheader ]
  %arrayidx404 = getelementptr inbounds double* %epn, i64 %indvars.iv1131, !dbg !214
  %127 = load double* %arrayidx404, align 8, !dbg !214, !tbaa !125
  %arrayidx406 = getelementptr inbounds double* %epnt.0, i64 %indvars.iv1131, !dbg !214
  store double %127, double* %arrayidx406, align 8, !dbg !214, !tbaa !125
  %indvars.iv.next1132 = add i64 %indvars.iv1131, 1, !dbg !212
  %128 = trunc i64 %indvars.iv.next1132 to i32, !dbg !212
  %cmp400 = icmp slt i32 %128, %126, !dbg !212
  br i1 %cmp400, label %for.body402, label %if.end410, !dbg !212

if.end410:                                        ; preds = %for.cond399.preheader, %for.body402, %if.end393
  %call412 = call i32 @strcmp1(i8* %arrayidx65, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !216
  %cmp413 = icmp eq i32 %call412, 0, !dbg !216
  br i1 %cmp413, label %for.cond416.preheader, label %if.end427, !dbg !216

for.cond416.preheader:                            ; preds = %if.end410
  %129 = load i32* %nk, align 4, !dbg !217, !tbaa !87
  %cmp4171064 = icmp sgt i32 %129, 0, !dbg !217
  br i1 %cmp4171064, label %for.body419, label %if.end427, !dbg !217

for.body419:                                      ; preds = %for.cond416.preheader, %for.body419
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %for.body419 ], [ 0, %for.cond416.preheader ]
  %arrayidx421 = getelementptr inbounds double* %enern, i64 %indvars.iv1129, !dbg !219
  %130 = load double* %arrayidx421, align 8, !dbg !219, !tbaa !125
  %arrayidx423 = getelementptr inbounds double* %enernt.0, i64 %indvars.iv1129, !dbg !219
  store double %130, double* %arrayidx423, align 8, !dbg !219, !tbaa !125
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 1, !dbg !217
  %131 = trunc i64 %indvars.iv.next1130 to i32, !dbg !217
  %cmp417 = icmp slt i32 %131, %129, !dbg !217
  br i1 %cmp417, label %for.body419, label %if.end427, !dbg !217

if.end427:                                        ; preds = %for.cond416.preheader, %for.body419, %if.end410
  %call429 = call i32 @strcmp1(i8* %arrayidx75, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !221
  %cmp430 = icmp eq i32 %call429, 0, !dbg !221
  br i1 %cmp430, label %for.cond433.preheader, label %for.cond446.preheader, !dbg !221

for.cond433.preheader:                            ; preds = %if.end427
  %132 = load i32* %nstate_, align 4, !dbg !222, !tbaa !87
  %133 = load i32* %nk, align 4, !dbg !222, !tbaa !87
  %mul4341061 = mul nsw i32 %133, %132, !dbg !222
  %cmp4351062 = icmp sgt i32 %mul4341061, 0, !dbg !222
  br i1 %cmp4351062, label %for.body437, label %for.cond446.preheader, !dbg !222

for.cond446.preheader:                            ; preds = %for.cond433.preheader, %for.body437, %if.end427
  %134 = load i32* %arrayidx, align 4, !dbg !224, !tbaa !87
  %cmp4481058 = icmp sgt i32 %134, 1, !dbg !224
  br i1 %cmp4481058, label %for.cond451.preheader, label %for.end628, !dbg !224

for.body437:                                      ; preds = %for.cond433.preheader, %for.body437
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %for.body437 ], [ 0, %for.cond433.preheader ]
  %arrayidx439 = getelementptr inbounds double* %xstaten, i64 %indvars.iv1127, !dbg !226
  %135 = load double* %arrayidx439, align 8, !dbg !226, !tbaa !125
  %arrayidx441 = getelementptr inbounds double* %xstatent.0, i64 %indvars.iv1127, !dbg !226
  store double %135, double* %arrayidx441, align 8, !dbg !226, !tbaa !125
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 1, !dbg !222
  %136 = trunc i64 %indvars.iv.next1128 to i32, !dbg !222
  %cmp435 = icmp slt i32 %136, %mul4341061, !dbg !222
  br i1 %cmp435, label %for.body437, label %for.cond446.preheader, !dbg !222

for.cond451.preheader:                            ; preds = %for.inc626, %for.cond446.preheader
  %i.11059 = phi i32 [ 1, %for.cond446.preheader ], [ %inc627, %for.inc626 ]
  %137 = load i32* %nk, align 4, !dbg !228, !tbaa !87
  %cmp4521030 = icmp sgt i32 %137, 0, !dbg !228
  br i1 %cmp4521030, label %for.body454, label %for.end463, !dbg !228

for.body454:                                      ; preds = %for.cond451.preheader, %for.body454
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body454 ], [ 0, %for.cond451.preheader ]
  %138 = phi i32 [ %141, %for.body454 ], [ %137, %for.cond451.preheader ]
  %arrayidx456 = getelementptr inbounds i32* %inum, i64 %indvars.iv, !dbg !231
  %139 = load i32* %arrayidx456, align 4, !dbg !231, !tbaa !87
  %mul457 = mul nsw i32 %138, %i.11059, !dbg !231
  %140 = trunc i64 %indvars.iv to i32, !dbg !231
  %add458 = add nsw i32 %mul457, %140, !dbg !231
  %idxprom459 = sext i32 %add458 to i64, !dbg !231
  %arrayidx460 = getelementptr inbounds i32* %50, i64 %idxprom459, !dbg !231
  store i32 %139, i32* %arrayidx460, align 4, !dbg !231, !tbaa !87
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !228
  %141 = load i32* %nk, align 4, !dbg !228, !tbaa !87
  %142 = trunc i64 %indvars.iv.next to i32, !dbg !228
  %cmp452 = icmp slt i32 %142, %141, !dbg !228
  br i1 %cmp452, label %for.body454, label %for.end463, !dbg !228

for.end463:                                       ; preds = %for.body454, %for.cond451.preheader
  %call465 = call i32 @strcmp1(i8* %nodeflab, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #4, !dbg !233
  %cmp466 = icmp eq i32 %call465, 0, !dbg !233
  br i1 %cmp466, label %for.cond469.preheader, label %if.end484, !dbg !233

for.cond469.preheader:                            ; preds = %for.end463
  %143 = load i32* %nk, align 4, !dbg !234, !tbaa !87
  %cmp4711033 = icmp sgt i32 %143, 0, !dbg !234
  br i1 %cmp4711033, label %for.body473.lr.ph, label %if.end484, !dbg !234

for.body473.lr.ph:                                ; preds = %for.cond469.preheader
  %mul4701032 = shl nsw i32 %143, 2, !dbg !234
  br label %for.body473, !dbg !234

for.body473:                                      ; preds = %for.body473.lr.ph, %for.body473
  %indvars.iv1111 = phi i64 [ 0, %for.body473.lr.ph ], [ %indvars.iv.next1112, %for.body473 ]
  %arrayidx475 = getelementptr inbounds double* %v, i64 %indvars.iv1111, !dbg !237
  %144 = load double* %arrayidx475, align 8, !dbg !237, !tbaa !125
  %mul477 = mul nsw i32 %mul4701032, %i.11059, !dbg !237
  %145 = trunc i64 %indvars.iv1111 to i32, !dbg !237
  %add478 = add nsw i32 %mul477, %145, !dbg !237
  %idxprom479 = sext i32 %add478 to i64, !dbg !237
  %arrayidx480 = getelementptr inbounds double* %vt.0, i64 %idxprom479, !dbg !237
  store double %144, double* %arrayidx480, align 8, !dbg !237, !tbaa !125
  %indvars.iv.next1112 = add i64 %indvars.iv1111, 1, !dbg !234
  %146 = trunc i64 %indvars.iv.next1112 to i32, !dbg !234
  %cmp471 = icmp slt i32 %146, %mul4701032, !dbg !234
  br i1 %cmp471, label %for.body473, label %if.end484, !dbg !234

if.end484:                                        ; preds = %for.cond469.preheader, %for.body473, %for.end463
  %call486 = call i32 @strcmp1(i8* %arrayidx12, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !239
  %cmp487 = icmp eq i32 %call486, 0, !dbg !239
  br i1 %cmp487, label %for.cond490.preheader, label %if.end503, !dbg !239

for.cond490.preheader:                            ; preds = %if.end484
  %147 = load i32* %nk, align 4, !dbg !240, !tbaa !87
  %cmp4911036 = icmp sgt i32 %147, 0, !dbg !240
  br i1 %cmp4911036, label %for.body493, label %if.end503, !dbg !240

for.body493:                                      ; preds = %for.cond490.preheader, %for.body493
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %for.body493 ], [ 0, %for.cond490.preheader ]
  %arrayidx495 = getelementptr inbounds double* %t1, i64 %indvars.iv1113, !dbg !243
  %148 = load double* %arrayidx495, align 8, !dbg !243, !tbaa !125
  %mul496 = mul nsw i32 %147, %i.11059, !dbg !243
  %149 = trunc i64 %indvars.iv1113 to i32, !dbg !243
  %add497 = add nsw i32 %mul496, %149, !dbg !243
  %idxprom498 = sext i32 %add497 to i64, !dbg !243
  %arrayidx499 = getelementptr inbounds double* %t1t.0, i64 %idxprom498, !dbg !243
  store double %148, double* %arrayidx499, align 8, !dbg !243, !tbaa !125
  %indvars.iv.next1114 = add i64 %indvars.iv1113, 1, !dbg !240
  %150 = trunc i64 %indvars.iv.next1114 to i32, !dbg !240
  %cmp491 = icmp slt i32 %150, %147, !dbg !240
  br i1 %cmp491, label %for.body493, label %if.end503, !dbg !240

if.end503:                                        ; preds = %for.cond490.preheader, %for.body493, %if.end484
  %call505 = call i32 @strcmp1(i8* %arrayidx22, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !245
  %cmp506 = icmp eq i32 %call505, 0, !dbg !245
  br i1 %cmp506, label %for.cond509.preheader, label %if.end524, !dbg !245

for.cond509.preheader:                            ; preds = %if.end503
  %151 = load i32* %nk, align 4, !dbg !246, !tbaa !87
  %cmp5111039 = icmp sgt i32 %151, 0, !dbg !246
  br i1 %cmp5111039, label %for.body513.lr.ph, label %if.end524, !dbg !246

for.body513.lr.ph:                                ; preds = %for.cond509.preheader
  %mul5101038 = mul nsw i32 %151, 6, !dbg !246
  br label %for.body513, !dbg !246

for.body513:                                      ; preds = %for.body513.lr.ph, %for.body513
  %indvars.iv1115 = phi i64 [ 0, %for.body513.lr.ph ], [ %indvars.iv.next1116, %for.body513 ]
  %arrayidx515 = getelementptr inbounds double* %stn, i64 %indvars.iv1115, !dbg !249
  %152 = load double* %arrayidx515, align 8, !dbg !249, !tbaa !125
  %mul517 = mul nsw i32 %mul5101038, %i.11059, !dbg !249
  %153 = trunc i64 %indvars.iv1115 to i32, !dbg !249
  %add518 = add nsw i32 %mul517, %153, !dbg !249
  %idxprom519 = sext i32 %add518 to i64, !dbg !249
  %arrayidx520 = getelementptr inbounds double* %stnt.0, i64 %idxprom519, !dbg !249
  store double %152, double* %arrayidx520, align 8, !dbg !249, !tbaa !125
  %indvars.iv.next1116 = add i64 %indvars.iv1115, 1, !dbg !246
  %154 = trunc i64 %indvars.iv.next1116 to i32, !dbg !246
  %cmp511 = icmp slt i32 %154, %mul5101038, !dbg !246
  br i1 %cmp511, label %for.body513, label %if.end524, !dbg !246

if.end524:                                        ; preds = %for.cond509.preheader, %for.body513, %if.end503
  %call526 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !251
  %cmp527 = icmp eq i32 %call526, 0, !dbg !251
  br i1 %cmp527, label %for.cond530.preheader, label %if.end545, !dbg !251

for.cond530.preheader:                            ; preds = %if.end524
  %155 = load i32* %nk, align 4, !dbg !252, !tbaa !87
  %cmp5321043 = icmp sgt i32 %155, 0, !dbg !252
  br i1 %cmp5321043, label %for.body534.lr.ph, label %if.end545, !dbg !252

for.body534.lr.ph:                                ; preds = %for.cond530.preheader
  %mul5311042 = mul nsw i32 %155, 6, !dbg !252
  br label %for.body534, !dbg !252

for.body534:                                      ; preds = %for.body534.lr.ph, %for.body534
  %indvars.iv1117 = phi i64 [ 0, %for.body534.lr.ph ], [ %indvars.iv.next1118, %for.body534 ]
  %arrayidx536 = getelementptr inbounds double* %een, i64 %indvars.iv1117, !dbg !255
  %156 = load double* %arrayidx536, align 8, !dbg !255, !tbaa !125
  %mul538 = mul nsw i32 %mul5311042, %i.11059, !dbg !255
  %157 = trunc i64 %indvars.iv1117 to i32, !dbg !255
  %add539 = add nsw i32 %mul538, %157, !dbg !255
  %idxprom540 = sext i32 %add539 to i64, !dbg !255
  %arrayidx541 = getelementptr inbounds double* %eent.0, i64 %idxprom540, !dbg !255
  store double %156, double* %arrayidx541, align 8, !dbg !255, !tbaa !125
  %indvars.iv.next1118 = add i64 %indvars.iv1117, 1, !dbg !252
  %158 = trunc i64 %indvars.iv.next1118 to i32, !dbg !252
  %cmp532 = icmp slt i32 %158, %mul5311042, !dbg !252
  br i1 %cmp532, label %for.body534, label %if.end545, !dbg !252

if.end545:                                        ; preds = %for.cond530.preheader, %for.body534, %if.end524
  %call547 = call i32 @strcmp1(i8* %arrayidx44, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !257
  %cmp548 = icmp eq i32 %call547, 0, !dbg !257
  br i1 %cmp548, label %for.cond551.preheader, label %if.end566, !dbg !257

for.cond551.preheader:                            ; preds = %if.end545
  %159 = load i32* %nk, align 4, !dbg !258, !tbaa !87
  %cmp5531047 = icmp sgt i32 %159, 0, !dbg !258
  br i1 %cmp5531047, label %for.body555.lr.ph, label %if.end566, !dbg !258

for.body555.lr.ph:                                ; preds = %for.cond551.preheader
  %mul5521046 = shl nsw i32 %159, 2, !dbg !258
  br label %for.body555, !dbg !258

for.body555:                                      ; preds = %for.body555.lr.ph, %for.body555
  %indvars.iv1119 = phi i64 [ 0, %for.body555.lr.ph ], [ %indvars.iv.next1120, %for.body555 ]
  %arrayidx557 = getelementptr inbounds double* %fn, i64 %indvars.iv1119, !dbg !261
  %160 = load double* %arrayidx557, align 8, !dbg !261, !tbaa !125
  %mul559 = mul nsw i32 %mul5521046, %i.11059, !dbg !261
  %161 = trunc i64 %indvars.iv1119 to i32, !dbg !261
  %add560 = add nsw i32 %mul559, %161, !dbg !261
  %idxprom561 = sext i32 %add560 to i64, !dbg !261
  %arrayidx562 = getelementptr inbounds double* %fnt.0, i64 %idxprom561, !dbg !261
  store double %160, double* %arrayidx562, align 8, !dbg !261, !tbaa !125
  %indvars.iv.next1120 = add i64 %indvars.iv1119, 1, !dbg !258
  %162 = trunc i64 %indvars.iv.next1120 to i32, !dbg !258
  %cmp553 = icmp slt i32 %162, %mul5521046, !dbg !258
  br i1 %cmp553, label %for.body555, label %if.end566, !dbg !258

if.end566:                                        ; preds = %for.cond551.preheader, %for.body555, %if.end545
  %call568 = call i32 @strcmp1(i8* %arrayidx55, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !263
  %cmp569 = icmp eq i32 %call568, 0, !dbg !263
  br i1 %cmp569, label %for.cond572.preheader, label %if.end585, !dbg !263

for.cond572.preheader:                            ; preds = %if.end566
  %163 = load i32* %nk, align 4, !dbg !264, !tbaa !87
  %cmp5731050 = icmp sgt i32 %163, 0, !dbg !264
  br i1 %cmp5731050, label %for.body575, label %if.end585, !dbg !264

for.body575:                                      ; preds = %for.cond572.preheader, %for.body575
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %for.body575 ], [ 0, %for.cond572.preheader ]
  %arrayidx577 = getelementptr inbounds double* %epn, i64 %indvars.iv1121, !dbg !267
  %164 = load double* %arrayidx577, align 8, !dbg !267, !tbaa !125
  %mul578 = mul nsw i32 %163, %i.11059, !dbg !267
  %165 = trunc i64 %indvars.iv1121 to i32, !dbg !267
  %add579 = add nsw i32 %mul578, %165, !dbg !267
  %idxprom580 = sext i32 %add579 to i64, !dbg !267
  %arrayidx581 = getelementptr inbounds double* %epnt.0, i64 %idxprom580, !dbg !267
  store double %164, double* %arrayidx581, align 8, !dbg !267, !tbaa !125
  %indvars.iv.next1122 = add i64 %indvars.iv1121, 1, !dbg !264
  %166 = trunc i64 %indvars.iv.next1122 to i32, !dbg !264
  %cmp573 = icmp slt i32 %166, %163, !dbg !264
  br i1 %cmp573, label %for.body575, label %if.end585, !dbg !264

if.end585:                                        ; preds = %for.cond572.preheader, %for.body575, %if.end566
  %call587 = call i32 @strcmp1(i8* %arrayidx65, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !269
  %cmp588 = icmp eq i32 %call587, 0, !dbg !269
  br i1 %cmp588, label %for.cond591.preheader, label %if.end604, !dbg !269

for.cond591.preheader:                            ; preds = %if.end585
  %167 = load i32* %nk, align 4, !dbg !270, !tbaa !87
  %cmp5921052 = icmp sgt i32 %167, 0, !dbg !270
  br i1 %cmp5921052, label %for.body594, label %if.end604, !dbg !270

for.body594:                                      ; preds = %for.cond591.preheader, %for.body594
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %for.body594 ], [ 0, %for.cond591.preheader ]
  %arrayidx596 = getelementptr inbounds double* %enern, i64 %indvars.iv1123, !dbg !273
  %168 = load double* %arrayidx596, align 8, !dbg !273, !tbaa !125
  %mul597 = mul nsw i32 %167, %i.11059, !dbg !273
  %169 = trunc i64 %indvars.iv1123 to i32, !dbg !273
  %add598 = add nsw i32 %mul597, %169, !dbg !273
  %idxprom599 = sext i32 %add598 to i64, !dbg !273
  %arrayidx600 = getelementptr inbounds double* %enernt.0, i64 %idxprom599, !dbg !273
  store double %168, double* %arrayidx600, align 8, !dbg !273, !tbaa !125
  %indvars.iv.next1124 = add i64 %indvars.iv1123, 1, !dbg !270
  %170 = trunc i64 %indvars.iv.next1124 to i32, !dbg !270
  %cmp592 = icmp slt i32 %170, %167, !dbg !270
  br i1 %cmp592, label %for.body594, label %if.end604, !dbg !270

if.end604:                                        ; preds = %for.cond591.preheader, %for.body594, %if.end585
  %call606 = call i32 @strcmp1(i8* %arrayidx75, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !275
  %cmp607 = icmp eq i32 %call606, 0, !dbg !275
  br i1 %cmp607, label %for.cond610.preheader, label %for.inc626, !dbg !275

for.cond610.preheader:                            ; preds = %if.end604
  %171 = load i32* %nstate_, align 4, !dbg !276, !tbaa !87
  %172 = load i32* %nk, align 4, !dbg !276, !tbaa !87
  %mul6111054 = mul nsw i32 %172, %171, !dbg !276
  %cmp6121055 = icmp sgt i32 %mul6111054, 0, !dbg !276
  br i1 %cmp6121055, label %for.body614, label %for.inc626, !dbg !276

for.body614:                                      ; preds = %for.cond610.preheader, %for.body614
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %for.body614 ], [ 0, %for.cond610.preheader ]
  %arrayidx616 = getelementptr inbounds double* %xstaten, i64 %indvars.iv1125, !dbg !279
  %173 = load double* %arrayidx616, align 8, !dbg !279, !tbaa !125
  %mul618 = mul nsw i32 %mul6111054, %i.11059, !dbg !279
  %174 = trunc i64 %indvars.iv1125 to i32, !dbg !279
  %add619 = add nsw i32 %mul618, %174, !dbg !279
  %idxprom620 = sext i32 %add619 to i64, !dbg !279
  %arrayidx621 = getelementptr inbounds double* %xstatent.0, i64 %idxprom620, !dbg !279
  store double %173, double* %arrayidx621, align 8, !dbg !279, !tbaa !125
  %indvars.iv.next1126 = add i64 %indvars.iv1125, 1, !dbg !276
  %175 = trunc i64 %indvars.iv.next1126 to i32, !dbg !276
  %cmp612 = icmp slt i32 %175, %mul6111054, !dbg !276
  br i1 %cmp612, label %for.body614, label %for.inc626, !dbg !276

for.inc626:                                       ; preds = %for.cond610.preheader, %for.body614, %if.end604
  %inc627 = add nsw i32 %i.11059, 1, !dbg !224
  call void @llvm.dbg.value(metadata !{i32 %inc627}, i64 0, metadata !58), !dbg !224
  %176 = load i32* %arrayidx, align 4, !dbg !224, !tbaa !87
  %cmp448 = icmp slt i32 %inc627, %176, !dbg !224
  br i1 %cmp448, label %for.cond451.preheader, label %for.end628, !dbg !224

for.end628:                                       ; preds = %for.inc626, %for.cond446.preheader
  call void @llvm.dbg.value(metadata !281, i64 0, metadata !52), !dbg !282
  store i32 -2, i32* %icntrl, align 4, !dbg !282, !tbaa !87
  call void @rectcyl_(double* %2, double* %vt.0, double* %fnt.0, double* %stnt.0, double* %eent.0, double* %csab, i32* %nkt, i32* %icntrl, double* %arraydecay, i8* %nodeflab, i32* %imag) #4, !dbg !283
  call void @out_(double* %2, i32* %nkt, i32* %kont.0, i32* %ipkont.0, i8* %lakont.0, i32* %net, double* %vt.0, double* %stnt.0, i32* %50, i32* %nmethod, i32* %kode, i8* %nodeflab, double* %eent.0, double* %t1t.0, double* %fnt.0, double* %time, double* %epnt.0, i32* %ielmatt.0, i8* %matname, double* %enernt.0, double* %xstatent.0, i32* %nstate_, i32* %istep, i32* %iinc, i32* %iperturb, double* %ener, i32* %mint_, i8* %output) #4, !dbg !284
  %call631 = call i32 @strcmp1(i8* %nodeflab, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #4, !dbg !285
  %cmp632 = icmp eq i32 %call631, 0, !dbg !285
  br i1 %cmp632, label %if.then634, label %if.end635, !dbg !285

if.then634:                                       ; preds = %for.end628
  call void @free(i8* %6) #4, !dbg !285
  br label %if.end635, !dbg !285

if.end635:                                        ; preds = %if.then634, %for.end628
  %call637 = call i32 @strcmp1(i8* %arrayidx12, i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !286
  %cmp638 = icmp eq i32 %call637, 0, !dbg !286
  br i1 %cmp638, label %if.then640, label %if.end641, !dbg !286

if.then640:                                       ; preds = %if.end635
  call void @free(i8* %10) #4, !dbg !286
  br label %if.end641, !dbg !286

if.end641:                                        ; preds = %if.then640, %if.end635
  %call643 = call i32 @strcmp1(i8* %arrayidx22, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !287
  %cmp644 = icmp eq i32 %call643, 0, !dbg !287
  br i1 %cmp644, label %if.then646, label %if.end647, !dbg !287

if.then646:                                       ; preds = %if.end641
  call void @free(i8* %14) #4, !dbg !287
  br label %if.end647, !dbg !287

if.end647:                                        ; preds = %if.then646, %if.end641
  %call649 = call i32 @strcmp1(i8* %arrayidx33, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !288
  %cmp650 = icmp eq i32 %call649, 0, !dbg !288
  br i1 %cmp650, label %if.then652, label %if.end653, !dbg !288

if.then652:                                       ; preds = %if.end647
  call void @free(i8* %18) #4, !dbg !288
  br label %if.end653, !dbg !288

if.end653:                                        ; preds = %if.then652, %if.end647
  %call655 = call i32 @strcmp1(i8* %arrayidx44, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !289
  %cmp656 = icmp eq i32 %call655, 0, !dbg !289
  br i1 %cmp656, label %if.then658, label %if.end659, !dbg !289

if.then658:                                       ; preds = %if.end653
  call void @free(i8* %22) #4, !dbg !289
  br label %if.end659, !dbg !289

if.end659:                                        ; preds = %if.then658, %if.end653
  %call661 = call i32 @strcmp1(i8* %arrayidx55, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !290
  %cmp662 = icmp eq i32 %call661, 0, !dbg !290
  br i1 %cmp662, label %if.then664, label %if.end665, !dbg !290

if.then664:                                       ; preds = %if.end659
  call void @free(i8* %26) #4, !dbg !290
  br label %if.end665, !dbg !290

if.end665:                                        ; preds = %if.then664, %if.end659
  %call667 = call i32 @strcmp1(i8* %arrayidx65, i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !291
  %cmp668 = icmp eq i32 %call667, 0, !dbg !291
  br i1 %cmp668, label %if.then670, label %if.end671, !dbg !291

if.then670:                                       ; preds = %if.end665
  call void @free(i8* %30) #4, !dbg !291
  br label %if.end671, !dbg !291

if.end671:                                        ; preds = %if.then670, %if.end665
  %call673 = call i32 @strcmp1(i8* %arrayidx75, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !292
  %cmp674 = icmp eq i32 %call673, 0, !dbg !292
  br i1 %cmp674, label %if.then676, label %if.end677, !dbg !292

if.then676:                                       ; preds = %if.end671
  call void @free(i8* %35) #4, !dbg !292
  br label %if.end677, !dbg !292

if.end677:                                        ; preds = %if.then676, %if.end671
  %177 = load i32* %kode, align 4, !dbg !293, !tbaa !87
  %cmp678 = icmp eq i32 %177, 1, !dbg !293
  br i1 %cmp678, label %if.then680, label %if.end681, !dbg !293

if.then680:                                       ; preds = %if.end677
  %178 = bitcast i32* %kont.0 to i8*, !dbg !294
  call void @free(i8* %178) #4, !dbg !294
  %179 = bitcast i32* %ipkont.0 to i8*, !dbg !294
  call void @free(i8* %179) #4, !dbg !294
  call void @free(i8* %lakont.0) #4, !dbg !294
  %180 = bitcast i32* %ielmatt.0 to i8*, !dbg !294
  call void @free(i8* %180) #4, !dbg !294
  br label %if.end681, !dbg !296

if.end681:                                        ; preds = %if.then680, %if.end677
  call void @free(i8* %call110) #4, !dbg !297
  call void @free(i8* %call3) #4, !dbg !297
  ret void, !dbg !298
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @u_calloc(i64, i64) #2

; Function Attrs: optsize
declare i32 @strcmp1(i8*, i8*) #2

; Function Attrs: optsize
declare void @rectcyl_(double*, double*, double*, double*, double*, double*, i32*, i32*, double*, i8*, i32*) #2

; Function Attrs: optsize
declare void @out_(double*, i32*, i32*, i32*, i8*, i32*, double*, double*, i32*, i32*, i32*, i8*, double*, double*, double*, double*, double*, i32*, i8*, double*, double*, i32*, i32*, i32*, i32*, double*, i32*, i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"frdcyc", metadata !"frdcyc", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (double*, i32*, i32*, i32*, i8*, i32, i32*, double*, double*, i32*, i32*, i32*, i8*, i32, double*, double*, double*, double*, double*, i32*, i8*, i32, i32*, double*, i32*, double*, double*, i32*, i32*, i32*, i32*, double*, i32*, i8*, i32)* @frdcyc, null, null, metadata !14, i32 29} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 29] [frdcyc]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !10, metadata !10, metadata !10, metadata !12, metadata !11, metadata !10, metadata !8, metadata !8, metadata !10, metadata !10, metadata !10, metadata !12, metadata !11, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !10, metadata !12, metadata !11, metadata !10, metadata !8, metadata !10, metadata !8, metadata !8, metadata !10, metadata !10, metadata !10, metadata !10, metadata !8, metadata !10, metadata !12, metadata !11}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!9 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!13 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72}
!15 = metadata !{i32 786689, metadata !4, metadata !"co", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [co] [line 24]
!16 = metadata !{i32 786689, metadata !4, metadata !"nk", metadata !5, i32 33554456, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nk] [line 24]
!17 = metadata !{i32 786689, metadata !4, metadata !"kon", metadata !5, i32 50331672, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [kon] [line 24]
!18 = metadata !{i32 786689, metadata !4, metadata !"ipkon", metadata !5, i32 67108888, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ipkon] [line 24]
!19 = metadata !{i32 786689, metadata !4, metadata !"lakon", metadata !5, i32 83886104, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lakon] [line 24]
!20 = metadata !{i32 786689, metadata !4, metadata !"lakonLen", metadata !5, i32 100663320, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lakonLen] [line 24]
!21 = metadata !{i32 786689, metadata !4, metadata !"ne", metadata !5, i32 117440536, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ne] [line 24]
!22 = metadata !{i32 786689, metadata !4, metadata !"v", metadata !5, i32 134217752, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 24]
!23 = metadata !{i32 786689, metadata !4, metadata !"stn", metadata !5, i32 150994969, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [stn] [line 25]
!24 = metadata !{i32 786689, metadata !4, metadata !"inum", metadata !5, i32 167772185, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inum] [line 25]
!25 = metadata !{i32 786689, metadata !4, metadata !"nmethod", metadata !5, i32 184549401, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmethod] [line 25]
!26 = metadata !{i32 786689, metadata !4, metadata !"kode", metadata !5, i32 201326617, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [kode] [line 25]
!27 = metadata !{i32 786689, metadata !4, metadata !"nodeflab", metadata !5, i32 218103833, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodeflab] [line 25]
!28 = metadata !{i32 786689, metadata !4, metadata !"nodeflabLen", metadata !5, i32 234881050, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nodeflabLen] [line 26]
!29 = metadata !{i32 786689, metadata !4, metadata !"een", metadata !5, i32 251658266, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [een] [line 26]
!30 = metadata !{i32 786689, metadata !4, metadata !"t1", metadata !5, i32 268435482, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t1] [line 26]
!31 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 285212698, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 26]
!32 = metadata !{i32 786689, metadata !4, metadata !"time", metadata !5, i32 301989914, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 26]
!33 = metadata !{i32 786689, metadata !4, metadata !"epn", metadata !5, i32 318767130, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [epn] [line 26]
!34 = metadata !{i32 786689, metadata !4, metadata !"ielmat", metadata !5, i32 335544347, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ielmat] [line 27]
!35 = metadata !{i32 786689, metadata !4, metadata !"matname", metadata !5, i32 352321563, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matname] [line 27]
!36 = metadata !{i32 786689, metadata !4, metadata !"matnameLen", metadata !5, i32 369098779, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [matnameLen] [line 27]
!37 = metadata !{i32 786689, metadata !4, metadata !"ns", metadata !5, i32 385875995, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ns] [line 27]
!38 = metadata !{i32 786689, metadata !4, metadata !"csab", metadata !5, i32 402653211, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [csab] [line 27]
!39 = metadata !{i32 786689, metadata !4, metadata !"nkon", metadata !5, i32 419430427, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nkon] [line 27]
!40 = metadata !{i32 786689, metadata !4, metadata !"enern", metadata !5, i32 436207644, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [enern] [line 28]
!41 = metadata !{i32 786689, metadata !4, metadata !"xstaten", metadata !5, i32 452984860, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xstaten] [line 28]
!42 = metadata !{i32 786689, metadata !4, metadata !"nstate_", metadata !5, i32 469762076, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nstate_] [line 28]
!43 = metadata !{i32 786689, metadata !4, metadata !"istep", metadata !5, i32 486539292, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [istep] [line 28]
!44 = metadata !{i32 786689, metadata !4, metadata !"iinc", metadata !5, i32 503316509, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iinc] [line 29]
!45 = metadata !{i32 786689, metadata !4, metadata !"iperturb", metadata !5, i32 520093725, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iperturb] [line 29]
!46 = metadata !{i32 786689, metadata !4, metadata !"ener", metadata !5, i32 536870941, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ener] [line 29]
!47 = metadata !{i32 786689, metadata !4, metadata !"mint_", metadata !5, i32 553648157, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mint_] [line 29]
!48 = metadata !{i32 786689, metadata !4, metadata !"output", metadata !5, i32 570425373, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [output] [line 29]
!49 = metadata !{i32 786689, metadata !4, metadata !"outputLen", metadata !5, i32 587202589, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [outputLen] [line 29]
!50 = metadata !{i32 786688, metadata !4, metadata !"lakont", metadata !5, i32 33, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lakont] [line 33]
!51 = metadata !{i32 786688, metadata !4, metadata !"nkt", metadata !5, i32 34, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nkt] [line 34]
!52 = metadata !{i32 786688, metadata !4, metadata !"icntrl", metadata !5, i32 34, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icntrl] [line 34]
!53 = metadata !{i32 786688, metadata !4, metadata !"kont", metadata !5, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kont] [line 34]
!54 = metadata !{i32 786688, metadata !4, metadata !"ipkont", metadata !5, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipkont] [line 34]
!55 = metadata !{i32 786688, metadata !4, metadata !"inumt", metadata !5, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inumt] [line 34]
!56 = metadata !{i32 786688, metadata !4, metadata !"ielmatt", metadata !5, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ielmatt] [line 34]
!57 = metadata !{i32 786688, metadata !4, metadata !"net", metadata !5, i32 34, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [net] [line 34]
!58 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 34, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 34]
!59 = metadata !{i32 786688, metadata !4, metadata !"l", metadata !5, i32 34, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 34]
!60 = metadata !{i32 786688, metadata !4, metadata !"imag", metadata !5, i32 35, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 35]
!61 = metadata !{i32 786688, metadata !4, metadata !"vt", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vt] [line 36]
!62 = metadata !{i32 786688, metadata !4, metadata !"fnt", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnt] [line 36]
!63 = metadata !{i32 786688, metadata !4, metadata !"stnt", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stnt] [line 36]
!64 = metadata !{i32 786688, metadata !4, metadata !"eent", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [eent] [line 36]
!65 = metadata !{i32 786688, metadata !4, metadata !"cot", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cot] [line 36]
!66 = metadata !{i32 786688, metadata !4, metadata !"t1t", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t1t] [line 36]
!67 = metadata !{i32 786688, metadata !4, metadata !"epnt", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [epnt] [line 37]
!68 = metadata !{i32 786688, metadata !4, metadata !"enernt", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enernt] [line 37]
!69 = metadata !{i32 786688, metadata !4, metadata !"xstatent", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xstatent] [line 37]
!70 = metadata !{i32 786688, metadata !4, metadata !"theta", metadata !5, i32 37, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [theta] [line 37]
!71 = metadata !{i32 786688, metadata !4, metadata !"pi", metadata !5, i32 37, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pi] [line 37]
!72 = metadata !{i32 786688, metadata !4, metadata !"t", metadata !5, i32 37, metadata !73, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 37]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !9, metadata !74, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from double]
!74 = metadata !{metadata !75}
!75 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!76 = metadata !{i32 24, i32 0, metadata !4, null}
!77 = metadata !{i32 25, i32 0, metadata !4, null}
!78 = metadata !{i32 26, i32 0, metadata !4, null}
!79 = metadata !{i32 27, i32 0, metadata !4, null}
!80 = metadata !{i32 28, i32 0, metadata !4, null}
!81 = metadata !{i32 29, i32 0, metadata !4, null}
!82 = metadata !{i8* null}
!83 = metadata !{i32 33, i32 0, metadata !4, null}
!84 = metadata !{i32 34, i32 0, metadata !4, null}
!85 = metadata !{i32* null}
!86 = metadata !{i32 35, i32 0, metadata !4, null}
!87 = metadata !{metadata !"int", metadata !88}
!88 = metadata !{metadata !"omnipotent char", metadata !89}
!89 = metadata !{metadata !"Simple C/C++ TBAA"}
!90 = metadata !{double* null}
!91 = metadata !{i32 37, i32 0, metadata !4, null}
!92 = metadata !{double 0x400921FB54442D18}
!93 = metadata !{i32 39, i32 0, metadata !4, null}
!94 = metadata !{i32 41, i32 0, metadata !4, null}
!95 = metadata !{i32 43, i32 0, metadata !4, null}
!96 = metadata !{i32 44, i32 0, metadata !4, null}
!97 = metadata !{i32 45, i32 0, metadata !4, null}
!98 = metadata !{i32 46, i32 0, metadata !4, null}
!99 = metadata !{i32 47, i32 0, metadata !4, null}
!100 = metadata !{i32 48, i32 0, metadata !4, null}
!101 = metadata !{i32 49, i32 0, metadata !4, null}
!102 = metadata !{i32 50, i32 0, metadata !4, null}
!103 = metadata !{i32 51, i32 0, metadata !4, null}
!104 = metadata !{i32 52, i32 0, metadata !4, null}
!105 = metadata !{i32 53, i32 0, metadata !4, null}
!106 = metadata !{i32 54, i32 0, metadata !4, null}
!107 = metadata !{i32 55, i32 0, metadata !4, null}
!108 = metadata !{i32 56, i32 0, metadata !4, null}
!109 = metadata !{i32 57, i32 0, metadata !4, null}
!110 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!111 = metadata !{i32 63, i32 0, metadata !4, null}
!112 = metadata !{i32 64, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !4, i32 63, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!114 = metadata !{i32 65, i32 0, metadata !113, null}
!115 = metadata !{i32 66, i32 0, metadata !113, null}
!116 = metadata !{i32 67, i32 0, metadata !113, null}
!117 = metadata !{i32 68, i32 0, metadata !113, null}
!118 = metadata !{i32 69, i32 0, metadata !4, null}
!119 = metadata !{i32 71, i32 0, metadata !4, null}
!120 = metadata !{i32 72, i32 0, metadata !4, null}
!121 = metadata !{i32 76, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !4, i32 76, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!123 = metadata !{i32 76, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !122, i32 76, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!125 = metadata !{metadata !"double", metadata !88}
!126 = metadata !{i32 80, i32 0, metadata !4, null}
!127 = metadata !{i32 81, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !129, i32 81, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!129 = metadata !{i32 786443, metadata !1, metadata !4, i32 80, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!130 = metadata !{i32 82, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !129, i32 82, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!132 = metadata !{i32 81, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !128, i32 81, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!134 = metadata !{i32 83, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !129, i32 83, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!136 = metadata !{i32 82, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !131, i32 82, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!138 = metadata !{i32 84, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !129, i32 84, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!140 = metadata !{i32 83, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !135, i32 83, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!142 = metadata !{i32 84, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !139, i32 84, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!144 = metadata !{i32 1}
!145 = metadata !{i32 89, i32 0, metadata !4, null}
!146 = metadata !{i32 94, i32 0, metadata !4, null}
!147 = metadata !{i32 97, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !4, i32 97, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!149 = metadata !{i32 99, i32 0, metadata !150, null}
!150 = metadata !{i32 786443, metadata !1, metadata !148, i32 97, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!151 = metadata !{i32 101, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !150, i32 101, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!153 = metadata !{i32 102, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !152, i32 101, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!155 = metadata !{i32 103, i32 0, metadata !154, null}
!156 = metadata !{i32 104, i32 0, metadata !154, null}
!157 = metadata !{i32 107, i32 0, metadata !150, null}
!158 = metadata !{i32 109, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !160, i32 109, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!160 = metadata !{i32 786443, metadata !1, metadata !150, i32 107, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!161 = metadata !{i32 109, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !159, i32 109, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!163 = metadata !{i32 110, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !160, i32 110, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!165 = metadata !{i32 111, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !164, i32 110, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!167 = metadata !{i32 112, i32 0, metadata !166, null}
!168 = metadata !{i32 114, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !160, i32 114, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!170 = metadata !{i32 114, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !169, i32 114, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!172 = metadata !{i32 115, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !160, i32 115, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!174 = metadata !{i32 115, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !173, i32 115, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!176 = metadata !{i32 -1}
!177 = metadata !{i32 119, i32 0, metadata !4, null}
!178 = metadata !{i32 124, i32 0, metadata !4, null}
!179 = metadata !{i32 129, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !4, i32 129, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!181 = metadata !{i32 129, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !180, i32 129, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!183 = metadata !{i32 2}
!184 = metadata !{i32 131, i32 0, metadata !4, null}
!185 = metadata !{i32 136, i32 0, metadata !4, null}
!186 = metadata !{i32 139, i32 0, metadata !4, null}
!187 = metadata !{i32 140, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !4, i32 140, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!189 = metadata !{i32 140, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !188, i32 140, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!191 = metadata !{i32 141, i32 0, metadata !4, null}
!192 = metadata !{i32 142, i32 0, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !4, i32 142, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!194 = metadata !{i32 142, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !193, i32 142, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!196 = metadata !{i32 143, i32 0, metadata !4, null}
!197 = metadata !{i32 144, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !4, i32 144, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!199 = metadata !{i32 144, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !198, i32 144, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!201 = metadata !{i32 145, i32 0, metadata !4, null}
!202 = metadata !{i32 146, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !4, i32 146, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!204 = metadata !{i32 146, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !203, i32 146, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!206 = metadata !{i32 147, i32 0, metadata !4, null}
!207 = metadata !{i32 148, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !4, i32 148, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!209 = metadata !{i32 148, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !208, i32 148, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!211 = metadata !{i32 149, i32 0, metadata !4, null}
!212 = metadata !{i32 150, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !4, i32 150, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!214 = metadata !{i32 150, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !213, i32 150, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!216 = metadata !{i32 151, i32 0, metadata !4, null}
!217 = metadata !{i32 152, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !4, i32 152, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!219 = metadata !{i32 152, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !218, i32 152, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!221 = metadata !{i32 153, i32 0, metadata !4, null}
!222 = metadata !{i32 154, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !4, i32 154, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!224 = metadata !{i32 156, i32 0, metadata !225, null}
!225 = metadata !{i32 786443, metadata !1, metadata !4, i32 156, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!226 = metadata !{i32 154, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !223, i32 154, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!228 = metadata !{i32 158, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !230, i32 158, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!230 = metadata !{i32 786443, metadata !1, metadata !225, i32 156, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!231 = metadata !{i32 158, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !229, i32 158, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!233 = metadata !{i32 160, i32 0, metadata !230, null}
!234 = metadata !{i32 161, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !236, i32 161, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!236 = metadata !{i32 786443, metadata !1, metadata !230, i32 160, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!237 = metadata !{i32 162, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !235, i32 161, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!239 = metadata !{i32 166, i32 0, metadata !230, null}
!240 = metadata !{i32 167, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !242, i32 167, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!242 = metadata !{i32 786443, metadata !1, metadata !230, i32 166, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!243 = metadata !{i32 168, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !241, i32 167, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!245 = metadata !{i32 172, i32 0, metadata !230, null}
!246 = metadata !{i32 173, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !248, i32 173, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!248 = metadata !{i32 786443, metadata !1, metadata !230, i32 172, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!249 = metadata !{i32 174, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !247, i32 173, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!251 = metadata !{i32 178, i32 0, metadata !230, null}
!252 = metadata !{i32 179, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !254, i32 179, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!254 = metadata !{i32 786443, metadata !1, metadata !230, i32 178, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!255 = metadata !{i32 180, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !253, i32 179, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!257 = metadata !{i32 184, i32 0, metadata !230, null}
!258 = metadata !{i32 185, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !260, i32 185, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!260 = metadata !{i32 786443, metadata !1, metadata !230, i32 184, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!261 = metadata !{i32 186, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !259, i32 185, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!263 = metadata !{i32 190, i32 0, metadata !230, null}
!264 = metadata !{i32 191, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !266, i32 191, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!266 = metadata !{i32 786443, metadata !1, metadata !230, i32 190, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!267 = metadata !{i32 192, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !265, i32 191, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!269 = metadata !{i32 196, i32 0, metadata !230, null}
!270 = metadata !{i32 197, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !272, i32 197, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!272 = metadata !{i32 786443, metadata !1, metadata !230, i32 196, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!273 = metadata !{i32 198, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !271, i32 197, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!275 = metadata !{i32 202, i32 0, metadata !230, null}
!276 = metadata !{i32 203, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !278, i32 203, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!278 = metadata !{i32 786443, metadata !1, metadata !230, i32 202, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!279 = metadata !{i32 204, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !277, i32 203, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!281 = metadata !{i32 -2}
!282 = metadata !{i32 210, i32 0, metadata !4, null}
!283 = metadata !{i32 215, i32 0, metadata !4, null}
!284 = metadata !{i32 224, i32 0, metadata !4, null}
!285 = metadata !{i32 229, i32 0, metadata !4, null}
!286 = metadata !{i32 230, i32 0, metadata !4, null}
!287 = metadata !{i32 231, i32 0, metadata !4, null}
!288 = metadata !{i32 232, i32 0, metadata !4, null}
!289 = metadata !{i32 233, i32 0, metadata !4, null}
!290 = metadata !{i32 234, i32 0, metadata !4, null}
!291 = metadata !{i32 235, i32 0, metadata !4, null}
!292 = metadata !{i32 236, i32 0, metadata !4, null}
!293 = metadata !{i32 238, i32 0, metadata !4, null}
!294 = metadata !{i32 239, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !4, i32 238, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/frdcyc.c]
!296 = metadata !{i32 240, i32 0, metadata !295, null}
!297 = metadata !{i32 241, i32 0, metadata !4, null}
!298 = metadata !{i32 242, i32 0, metadata !4, null}

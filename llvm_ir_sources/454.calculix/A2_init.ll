; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [137 x i8] c"\0A fatal error in A2_init(%p,%d,%d,%d,%d,%p)\0A entries is not NULL and we have bad increments\0A inc1 = %d, inc2 = %d, nrow = %d, ncol = %d\0A\00", align 1
@.str3 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_subA2(%p,%p,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [11 x i8] c"\0A first A2\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"\0A second A2\00", align 1
@.str6 = private unnamed_addr constant [59 x i8] c"\0A fatal error in A2_subA2(%p,%p,%d,%d,%d,%d)\0A bad type %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @A2_init(%struct._A2* %mtx, i32 %type, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !24), !dbg !44
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !25), !dbg !45
  tail call void @llvm.dbg.value(metadata !{i32 %n1}, i64 0, metadata !26), !dbg !46
  tail call void @llvm.dbg.value(metadata !{i32 %n2}, i64 0, metadata !27), !dbg !47
  tail call void @llvm.dbg.value(metadata !{i32 %inc1}, i64 0, metadata !28), !dbg !48
  tail call void @llvm.dbg.value(metadata !{i32 %inc2}, i64 0, metadata !29), !dbg !49
  tail call void @llvm.dbg.value(metadata !{double* %entries}, i64 0, metadata !30), !dbg !50
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !51
  %cmp1 = icmp slt i32 %n1, 1, !dbg !51
  %or.cond = or i1 %cmp, %cmp1, !dbg !51
  %cmp3 = icmp slt i32 %n2, 1, !dbg !51
  %or.cond164 = or i1 %or.cond, %cmp3, !dbg !51
  %cmp5 = icmp slt i32 %inc1, 1, !dbg !51
  %or.cond165 = or i1 %or.cond164, %cmp5, !dbg !51
  %cmp7 = icmp slt i32 %inc2, 1, !dbg !51
  %or.cond166 = or i1 %or.cond165, %cmp7, !dbg !51
  br i1 %or.cond166, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !52, !tbaa !54
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries) #6, !dbg !52
  tail call void @exit(i32 -1) #7, !dbg !57
  unreachable, !dbg !57

if.end:                                           ; preds = %entry
  %type.off = add i32 %type, -1, !dbg !58
  %1 = icmp ugt i32 %type.off, 1, !dbg !58
  br i1 %1, label %if.then10, label %if.end12, !dbg !58

if.then10:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !59, !tbaa !54
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* %entries, i32 %type) #6, !dbg !59
  tail call void @exit(i32 -1) #7, !dbg !61
  unreachable, !dbg !61

if.end12:                                         ; preds = %if.end
  %cond = icmp eq double* %entries, null, !dbg !62
  br i1 %cond, label %land.lhs.true14, label %if.then26, !dbg !62

land.lhs.true14:                                  ; preds = %if.end12
  %cmp15 = icmp eq i32 %inc1, 1, !dbg !62
  %cmp17 = icmp eq i32 %inc2, %n1, !dbg !62
  %or.cond167 = and i1 %cmp15, %cmp17, !dbg !62
  br i1 %or.cond167, label %if.else, label %lor.lhs.false18, !dbg !62

lor.lhs.false18:                                  ; preds = %land.lhs.true14
  %cmp19 = icmp eq i32 %inc1, %n2, !dbg !62
  %cmp21 = icmp eq i32 %inc2, 1, !dbg !62
  %or.cond168 = and i1 %cmp19, %cmp21, !dbg !62
  br i1 %or.cond168, label %if.else, label %if.then22, !dbg !62

if.then22:                                        ; preds = %lor.lhs.false18
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !63, !tbaa !54
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([137 x i8]* @.str2, i64 0, i64 0), %struct._A2* %mtx, i32 %n1, i32 %n2, i32 %inc1, i32 %inc2, double* null, i32 %inc1, i32 %inc2, i32 %n1, i32 %n2) #6, !dbg !63
  tail call void @exit(i32 -1) #7, !dbg !65
  unreachable, !dbg !65

if.then26:                                        ; preds = %if.end12
  %entries27 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !66
  %4 = load double** %entries27, align 8, !dbg !66, !tbaa !54
  %cmp28 = icmp eq double* %4, null, !dbg !66
  br i1 %cmp28, label %if.end31, label %if.then29, !dbg !66

if.then29:                                        ; preds = %if.then26
  tail call void @DVfree(double* %4) #6, !dbg !68
  br label %if.end31, !dbg !70

if.end31:                                         ; preds = %if.then26, %if.then29
  %nowned = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !71
  store i32 0, i32* %nowned, align 4, !dbg !71, !tbaa !72
  store double* %entries, double** %entries27, align 8, !dbg !73, !tbaa !54
  %type93.pre = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !74
  br label %if.end92, !dbg !75

if.else:                                          ; preds = %land.lhs.true14, %lor.lhs.false18
  %type33 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !76
  %5 = load i32* %type33, align 4, !dbg !76, !tbaa !72
  switch i32 %5, label %if.end50 [
    i32 1, label %if.then35
    i32 2, label %if.then42
  ], !dbg !76

if.then35:                                        ; preds = %if.else
  %nowned36 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !77
  %6 = load i32* %nowned36, align 4, !dbg !77, !tbaa !72
  %mul = shl i32 %6, 3, !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !33), !dbg !77
  br label %if.end50, !dbg !79

if.then42:                                        ; preds = %if.else
  %nowned43 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !80
  %7 = load i32* %nowned43, align 4, !dbg !80, !tbaa !72
  %mul44 = shl i32 %7, 4, !dbg !80
  tail call void @llvm.dbg.value(metadata !{i32 %mul44}, i64 0, metadata !33), !dbg !80
  br label %if.end50, !dbg !82

if.end50:                                         ; preds = %if.else, %if.then42, %if.then35
  %nbytesPresent.0 = phi i32 [ %mul, %if.then35 ], [ %mul44, %if.then42 ], [ 0, %if.else ]
  %cmp51 = icmp eq i32 %type, 1, !dbg !83
  br i1 %cmp51, label %if.end68, label %if.else58, !dbg !83

if.else58:                                        ; preds = %if.end50
  %cmp59 = icmp eq i32 %type, 2, !dbg !84
  br i1 %cmp59, label %if.then61, label %if.end92, !dbg !84

if.then61:                                        ; preds = %if.else58
  %mul62 = shl nsw i32 %n1, 1, !dbg !85
  br label %if.end68, !dbg !87

if.end68:                                         ; preds = %if.end50, %if.then61
  %n1.sink = phi i32 [ %mul62, %if.then61 ], [ %n1, %if.end50 ]
  %mul54 = shl i32 %n2, 3, !dbg !88
  %mul56 = mul i32 %mul54, %n1.sink, !dbg !88
  %cmp69 = icmp sgt i32 %mul56, %nbytesPresent.0, !dbg !90
  br i1 %cmp69, label %if.then71, label %if.end92, !dbg !90

if.then71:                                        ; preds = %if.end68
  %entries72 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !91
  %8 = load double** %entries72, align 8, !dbg !91, !tbaa !54
  tail call void @DVfree(double* %8) #6, !dbg !91
  %mul73 = mul nsw i32 %n2, %n1, !dbg !93
  %nowned74 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5, !dbg !93
  store i32 %mul73, i32* %nowned74, align 4, !dbg !93, !tbaa !72
  br i1 %cmp51, label %if.then77, label %if.else81, !dbg !94

if.then77:                                        ; preds = %if.then71
  %call79 = tail call double* @DVinit(i32 %mul73, double 0.000000e+00) #6, !dbg !95
  store double* %call79, double** %entries72, align 8, !dbg !95, !tbaa !54
  br label %if.end92, !dbg !97

if.else81:                                        ; preds = %if.then71
  %cmp82 = icmp eq i32 %type, 2, !dbg !98
  br i1 %cmp82, label %if.then84, label %if.end92, !dbg !98

if.then84:                                        ; preds = %if.else81
  %mul85 = shl i32 %n1, 1, !dbg !99
  %mul86 = mul nsw i32 %mul85, %n2, !dbg !99
  %call87 = tail call double* @DVinit(i32 %mul86, double 0.000000e+00) #6, !dbg !99
  store double* %call87, double** %entries72, align 8, !dbg !99, !tbaa !54
  br label %if.end92, !dbg !101

if.end92:                                         ; preds = %if.else58, %if.end68, %if.else81, %if.then84, %if.then77, %if.end31
  %type93.pre-phi = phi i32* [ %type33, %if.else58 ], [ %type33, %if.end68 ], [ %type33, %if.else81 ], [ %type33, %if.then84 ], [ %type33, %if.then77 ], [ %type93.pre, %if.end31 ], !dbg !74
  store i32 %type, i32* %type93.pre-phi, align 4, !dbg !74, !tbaa !72
  %n194 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !102
  store i32 %n1, i32* %n194, align 4, !dbg !102, !tbaa !72
  %n295 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !103
  store i32 %n2, i32* %n295, align 4, !dbg !103, !tbaa !72
  %inc196 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !104
  store i32 %inc1, i32* %inc196, align 4, !dbg !104, !tbaa !72
  %inc297 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !105
  store i32 %inc2, i32* %inc297, align 4, !dbg !105, !tbaa !72
  ret void, !dbg !106
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_subA2(%struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtxA}, i64 0, metadata !38), !dbg !107
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtxB}, i64 0, metadata !39), !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32 %firstrow}, i64 0, metadata !40), !dbg !109
  tail call void @llvm.dbg.value(metadata !{i32 %lastrow}, i64 0, metadata !41), !dbg !110
  tail call void @llvm.dbg.value(metadata !{i32 %firstcol}, i64 0, metadata !42), !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32 %lastcol}, i64 0, metadata !43), !dbg !112
  %cmp = icmp eq %struct._A2* %mtxA, null, !dbg !113
  %cmp1 = icmp eq %struct._A2* %mtxB, null, !dbg !113
  %or.cond = or i1 %cmp, %cmp1, !dbg !113
  %cmp3 = icmp slt i32 %firstrow, 0, !dbg !113
  %or.cond105 = or i1 %or.cond, %cmp3, !dbg !113
  br i1 %or.cond105, label %if.then, label %lor.lhs.false4, !dbg !113

lor.lhs.false4:                                   ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 1, !dbg !113
  %0 = load i32* %n1, align 4, !dbg !113, !tbaa !72
  %cmp5 = icmp sle i32 %0, %lastrow, !dbg !113
  %cmp7 = icmp slt i32 %firstcol, 0, !dbg !113
  %or.cond106 = or i1 %cmp5, %cmp7, !dbg !113
  br i1 %or.cond106, label %if.then, label %lor.lhs.false8, !dbg !113

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %n2 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 2, !dbg !113
  %1 = load i32* %n2, align 4, !dbg !113, !tbaa !72
  %cmp9 = icmp sgt i32 %1, %lastcol, !dbg !113
  br i1 %cmp9, label %if.end17, label %if.then, !dbg !113

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false8, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !114, !tbaa !54
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str3, i64 0, i64 0), %struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol) #6, !dbg !114
  br i1 %cmp, label %if.end, label %if.then11, !dbg !116

if.then11:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !117, !tbaa !54
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str4, i64 0, i64 0), i64 10, i64 1, %struct._IO_FILE* %3), !dbg !117
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !119, !tbaa !54
  tail call void @A2_writeForHumanEye(%struct._A2* %mtxA, %struct._IO_FILE* %5) #6, !dbg !119
  br label %if.end, !dbg !120

if.end:                                           ; preds = %if.then, %if.then11
  br i1 %cmp1, label %if.end16, label %if.then14, !dbg !121

if.then14:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !122, !tbaa !54
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str5, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %6), !dbg !122
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !124, !tbaa !54
  tail call void @A2_writeForHumanEye(%struct._A2* %mtxB, %struct._IO_FILE* %8) #6, !dbg !124
  br label %if.end16, !dbg !125

if.end16:                                         ; preds = %if.end, %if.then14
  tail call void @exit(i32 -1) #7, !dbg !126
  unreachable, !dbg !126

if.end17:                                         ; preds = %lor.lhs.false8
  %type = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 0, !dbg !127
  %9 = load i32* %type, align 4, !dbg !127, !tbaa !72
  %.off = add i32 %9, -1, !dbg !127
  %switch = icmp ult i32 %.off, 2, !dbg !127
  br i1 %switch, label %if.end25, label %if.then22, !dbg !127

if.then22:                                        ; preds = %if.end17
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !128, !tbaa !54
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([59 x i8]* @.str6, i64 0, i64 0), %struct._A2* %mtxA, %struct._A2* %mtxB, i32 %firstrow, i32 %lastrow, i32 %firstcol, i32 %lastcol, i32 %9) #6, !dbg !128
  tail call void @exit(i32 -1) #7, !dbg !130
  unreachable, !dbg !130

if.end25:                                         ; preds = %if.end17
  %type27 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 0, !dbg !131
  store i32 %9, i32* %type27, align 4, !dbg !131, !tbaa !72
  %inc1 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 3, !dbg !132
  %11 = load i32* %inc1, align 4, !dbg !132, !tbaa !72
  %inc128 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 3, !dbg !132
  store i32 %11, i32* %inc128, align 4, !dbg !132, !tbaa !72
  %inc2 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 4, !dbg !133
  %12 = load i32* %inc2, align 4, !dbg !133, !tbaa !72
  %inc229 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 4, !dbg !133
  store i32 %12, i32* %inc229, align 4, !dbg !133, !tbaa !72
  %sub = sub i32 1, %firstrow, !dbg !134
  %add = add i32 %sub, %lastrow, !dbg !134
  %n130 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 1, !dbg !134
  store i32 %add, i32* %n130, align 4, !dbg !134, !tbaa !72
  %sub31 = sub i32 1, %firstcol, !dbg !135
  %add32 = add i32 %sub31, %lastcol, !dbg !135
  %n233 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 2, !dbg !135
  store i32 %add32, i32* %n233, align 4, !dbg !135, !tbaa !72
  %13 = load i32* %type, align 4, !dbg !136, !tbaa !72
  switch i32 %13, label %if.end57 [
    i32 1, label %if.then36
    i32 2, label %if.then45
  ], !dbg !136

if.then36:                                        ; preds = %if.end25
  %entries = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 6, !dbg !137
  %14 = load double** %entries, align 8, !dbg !137, !tbaa !54
  %15 = load i32* %inc1, align 4, !dbg !137, !tbaa !72
  %mul = mul nsw i32 %15, %firstrow, !dbg !137
  %idx.ext = sext i32 %mul to i64, !dbg !137
  %16 = load i32* %inc2, align 4, !dbg !137, !tbaa !72
  %mul39 = mul nsw i32 %16, %firstcol, !dbg !137
  %idx.ext40 = sext i32 %mul39 to i64, !dbg !137
  %add.ptr.sum = add i64 %idx.ext40, %idx.ext, !dbg !137
  %add.ptr41 = getelementptr inbounds double* %14, i64 %add.ptr.sum, !dbg !137
  %entries42 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 6, !dbg !137
  store double* %add.ptr41, double** %entries42, align 8, !dbg !137, !tbaa !54
  br label %if.end57, !dbg !139

if.then45:                                        ; preds = %if.end25
  %entries46 = getelementptr inbounds %struct._A2* %mtxB, i64 0, i32 6, !dbg !140
  %17 = load double** %entries46, align 8, !dbg !140, !tbaa !54
  %18 = load i32* %inc1, align 4, !dbg !140, !tbaa !72
  %mul48 = mul nsw i32 %18, %firstrow, !dbg !140
  %19 = load i32* %inc2, align 4, !dbg !140, !tbaa !72
  %mul50 = mul nsw i32 %19, %firstcol, !dbg !140
  %add51 = add nsw i32 %mul50, %mul48, !dbg !140
  %mul52 = shl nsw i32 %add51, 1, !dbg !140
  %idx.ext53 = sext i32 %mul52 to i64, !dbg !140
  %add.ptr54 = getelementptr inbounds double* %17, i64 %idx.ext53, !dbg !140
  %entries55 = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 6, !dbg !140
  store double* %add.ptr54, double** %entries55, align 8, !dbg !140, !tbaa !54
  br label %if.end57, !dbg !142

if.end57:                                         ; preds = %if.end25, %if.then45, %if.then36
  %nowned = getelementptr inbounds %struct._A2* %mtxA, i64 0, i32 5, !dbg !143
  store i32 0, i32* %nowned, align 4, !dbg !143, !tbaa !72
  ret void, !dbg !144
}

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct._IO_FILE*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !34}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_init", metadata !"A2_init", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32, i32, i32, i32, double*)* @A2_init, null, null, metadata !23, i32 35} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 35] [A2_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !21}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!22 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33}
!24 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777244, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 28]
!25 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 33554461, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 29]
!26 = metadata !{i32 786689, metadata !4, metadata !"n1", metadata !5, i32 50331678, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n1] [line 30]
!27 = metadata !{i32 786689, metadata !4, metadata !"n2", metadata !5, i32 67108895, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n2] [line 31]
!28 = metadata !{i32 786689, metadata !4, metadata !"inc1", metadata !5, i32 83886112, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc1] [line 32]
!29 = metadata !{i32 786689, metadata !4, metadata !"inc2", metadata !5, i32 100663329, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc2] [line 33]
!30 = metadata !{i32 786689, metadata !4, metadata !"entries", metadata !5, i32 117440546, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entries] [line 34]
!31 = metadata !{i32 786688, metadata !32, metadata !"nbytesNeeded", metadata !5, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytesNeeded] [line 78]
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 77, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!33 = metadata !{i32 786688, metadata !32, metadata !"nbytesPresent", metadata !5, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytesPresent] [line 78]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_subA2", metadata !"A2_subA2", metadata !"", i32 126, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, %struct._A2*, i32, i32, i32, i32)* @A2_subA2, null, null, metadata !37, i32 133} ; [ DW_TAG_subprogram ] [line 126] [def] [scope 133] [A2_subA2]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !8, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14}
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!38 = metadata !{i32 786689, metadata !34, metadata !"mtxA", metadata !5, i32 16777343, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxA] [line 127]
!39 = metadata !{i32 786689, metadata !34, metadata !"mtxB", metadata !5, i32 33554560, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxB] [line 128]
!40 = metadata !{i32 786689, metadata !34, metadata !"firstrow", metadata !5, i32 50331777, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstrow] [line 129]
!41 = metadata !{i32 786689, metadata !34, metadata !"lastrow", metadata !5, i32 67108994, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lastrow] [line 130]
!42 = metadata !{i32 786689, metadata !34, metadata !"firstcol", metadata !5, i32 83886211, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [firstcol] [line 131]
!43 = metadata !{i32 786689, metadata !34, metadata !"lastcol", metadata !5, i32 100663428, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lastcol] [line 132]
!44 = metadata !{i32 28, i32 0, metadata !4, null}
!45 = metadata !{i32 29, i32 0, metadata !4, null}
!46 = metadata !{i32 30, i32 0, metadata !4, null}
!47 = metadata !{i32 31, i32 0, metadata !4, null}
!48 = metadata !{i32 32, i32 0, metadata !4, null}
!49 = metadata !{i32 33, i32 0, metadata !4, null}
!50 = metadata !{i32 34, i32 0, metadata !4, null}
!51 = metadata !{i32 41, i32 0, metadata !4, null}
!52 = metadata !{i32 42, i32 0, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !4, i32 41, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!54 = metadata !{metadata !"any pointer", metadata !55}
!55 = metadata !{metadata !"omnipotent char", metadata !56}
!56 = metadata !{metadata !"Simple C/C++ TBAA"}
!57 = metadata !{i32 44, i32 0, metadata !53, null}
!58 = metadata !{i32 46, i32 0, metadata !4, null}
!59 = metadata !{i32 47, i32 0, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!61 = metadata !{i32 50, i32 0, metadata !60, null}
!62 = metadata !{i32 52, i32 0, metadata !4, null}
!63 = metadata !{i32 59, i32 0, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !4, i32 53, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!65 = metadata !{i32 64, i32 0, metadata !64, null}
!66 = metadata !{i32 72, i32 0, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !4, i32 66, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!68 = metadata !{i32 73, i32 0, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !67, i32 72, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!70 = metadata !{i32 74, i32 0, metadata !69, null}
!71 = metadata !{i32 75, i32 0, metadata !67, null}
!72 = metadata !{metadata !"int", metadata !55}
!73 = metadata !{i32 76, i32 0, metadata !67, null}
!74 = metadata !{i32 106, i32 0, metadata !4, null}
!75 = metadata !{i32 77, i32 0, metadata !67, null}
!76 = metadata !{i32 84, i32 0, metadata !32, null}
!77 = metadata !{i32 85, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !32, i32 84, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!79 = metadata !{i32 86, i32 0, metadata !78, null}
!80 = metadata !{i32 87, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !32, i32 86, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!82 = metadata !{i32 88, i32 0, metadata !81, null}
!83 = metadata !{i32 91, i32 0, metadata !32, null}
!84 = metadata !{i32 93, i32 0, metadata !32, null}
!85 = metadata !{i32 94, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !32, i32 93, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!87 = metadata !{i32 95, i32 0, metadata !86, null}
!88 = metadata !{i32 92, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !32, i32 91, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!90 = metadata !{i32 96, i32 0, metadata !32, null}
!91 = metadata !{i32 97, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !32, i32 96, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!93 = metadata !{i32 98, i32 0, metadata !92, null}
!94 = metadata !{i32 99, i32 0, metadata !92, null}
!95 = metadata !{i32 100, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !92, i32 99, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!97 = metadata !{i32 101, i32 0, metadata !96, null}
!98 = metadata !{i32 101, i32 0, metadata !92, null}
!99 = metadata !{i32 102, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !92, i32 101, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!101 = metadata !{i32 103, i32 0, metadata !100, null}
!102 = metadata !{i32 107, i32 0, metadata !4, null}
!103 = metadata !{i32 108, i32 0, metadata !4, null}
!104 = metadata !{i32 109, i32 0, metadata !4, null}
!105 = metadata !{i32 110, i32 0, metadata !4, null}
!106 = metadata !{i32 112, i32 0, metadata !4, null}
!107 = metadata !{i32 127, i32 0, metadata !34, null}
!108 = metadata !{i32 128, i32 0, metadata !34, null}
!109 = metadata !{i32 129, i32 0, metadata !34, null}
!110 = metadata !{i32 130, i32 0, metadata !34, null}
!111 = metadata !{i32 131, i32 0, metadata !34, null}
!112 = metadata !{i32 132, i32 0, metadata !34, null}
!113 = metadata !{i32 139, i32 0, metadata !34, null}
!114 = metadata !{i32 142, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !34, i32 141, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!116 = metadata !{i32 145, i32 0, metadata !115, null}
!117 = metadata !{i32 146, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !115, i32 145, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!119 = metadata !{i32 147, i32 0, metadata !118, null}
!120 = metadata !{i32 148, i32 0, metadata !118, null}
!121 = metadata !{i32 149, i32 0, metadata !115, null}
!122 = metadata !{i32 150, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !115, i32 149, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!124 = metadata !{i32 151, i32 0, metadata !123, null}
!125 = metadata !{i32 152, i32 0, metadata !123, null}
!126 = metadata !{i32 153, i32 0, metadata !115, null}
!127 = metadata !{i32 155, i32 0, metadata !34, null}
!128 = metadata !{i32 156, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !34, i32 155, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!130 = metadata !{i32 159, i32 0, metadata !129, null}
!131 = metadata !{i32 161, i32 0, metadata !34, null}
!132 = metadata !{i32 162, i32 0, metadata !34, null}
!133 = metadata !{i32 163, i32 0, metadata !34, null}
!134 = metadata !{i32 164, i32 0, metadata !34, null}
!135 = metadata !{i32 165, i32 0, metadata !34, null}
!136 = metadata !{i32 166, i32 0, metadata !34, null}
!137 = metadata !{i32 167, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !34, i32 166, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!139 = metadata !{i32 169, i32 0, metadata !138, null}
!140 = metadata !{i32 170, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !34, i32 169, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_init.c]
!142 = metadata !{i32 172, i32 0, metadata !141, null}
!143 = metadata !{i32 173, i32 0, metadata !34, null}
!144 = metadata !{i32 175, i32 0, metadata !34, null}

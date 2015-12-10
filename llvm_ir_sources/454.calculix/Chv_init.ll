; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [75 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A bad input, nD = %d, nL = %d, nU = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [131 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A type = SPOOLES_REAL, invalid symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str2 = private unnamed_addr constant [154 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A type = SPOOLES_COMPLEX, invalid symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [97 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A invalid type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Chv_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Chv_setNbytesInWorkspace(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [74 x i8] c"\0A fatal error in Chv_setFields()\0A bad input, chv %p, nD %d, nL %d, nU %d\0A\00", align 1
@.str7 = private unnamed_addr constant [120 x i8] c"\0A fatal error in Chv_setFields()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str8 = private unnamed_addr constant [143 x i8] c"\0A fatal error in Chv_setFields()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str9 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_setFields()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [69 x i8] c"\0A fatal error in Chv_init()\0A bad input, chv %p, nD %d, nL %d, nU %d\0A\00", align 1
@.str11 = private unnamed_addr constant [115 x i8] c"\0A fatal error in Chv_init()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str12 = private unnamed_addr constant [138 x i8] c"\0A fatal error in Chv_init()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str13 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Chv_init()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str14 = private unnamed_addr constant [79 x i8] c"\0A fatal error in Chv_initWithPointers() \0A chv = %p, nD = %d, nL = %d, nU = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Chv_init()\0A entries = %p, colind = %p, rowind = %p, symflag = %d\0A\00", align 1
@.str16 = private unnamed_addr constant [127 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str17 = private unnamed_addr constant [150 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str18 = private unnamed_addr constant [93 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str19 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Chv_initFromBuffer(%p) \0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_nbytesNeeded(i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %nD}, i64 0, metadata !10), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i32 %nL}, i64 0, metadata !11), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %nU}, i64 0, metadata !12), !dbg !104
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !13), !dbg !105
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !14), !dbg !106
  %0 = or i32 %nL, %nD, !dbg !107
  %1 = or i32 %0, %nU, !dbg !107
  %2 = icmp slt i32 %1, 0, !dbg !107
  br i1 %2, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !108, !tbaa !110
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i32 %nD, i32 %nL, i32 %nU) #5, !dbg !108
  tail call void @exit(i32 -1) #6, !dbg !113
  unreachable, !dbg !113

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !15), !dbg !114
  switch i32 %type, label %sw.default50 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
  ], !dbg !115

sw.bb:                                            ; preds = %if.end
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.bb4
    i32 2, label %sw.bb9
  ], !dbg !116

sw.bb4:                                           ; preds = %sw.bb
  %add = add nsw i32 %nD, 6, !dbg !118
  %add6 = add nsw i32 %nD, 1, !dbg !120
  %mul = mul nsw i32 %add6, %nD, !dbg !120
  %div = sdiv i32 %mul, 2, !dbg !120
  %mul7 = mul nsw i32 %nU, %nD, !dbg !120
  %add8 = add nsw i32 %div, %mul7, !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32 %add8}, i64 0, metadata !16), !dbg !120
  br label %sw.epilog, !dbg !121

sw.bb9:                                           ; preds = %sw.bb
  %mul10 = shl i32 %nD, 1, !dbg !122
  %add11 = add nsw i32 %mul10, 6, !dbg !122
  %add12 = add nsw i32 %add11, %nL, !dbg !122
  %add14 = add nsw i32 %nL, %nD, !dbg !123
  %add15 = add nsw i32 %add14, %nU, !dbg !123
  %mul16 = mul nsw i32 %add15, %nD, !dbg !123
  tail call void @llvm.dbg.value(metadata !{i32 %mul16}, i64 0, metadata !16), !dbg !123
  br label %sw.epilog, !dbg !124

sw.default:                                       ; preds = %sw.bb
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !125, !tbaa !110
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([131 x i8]* @.str1, i64 0, i64 0), i32 %symflag) #5, !dbg !125
  tail call void @exit(i32 -1) #6, !dbg !126
  unreachable, !dbg !126

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb4
  %nent.0 = phi i32 [ %mul16, %sw.bb9 ], [ %add8, %sw.bb4 ]
  %add12.pn = phi i32 [ %add12, %sw.bb9 ], [ %add, %sw.bb4 ]
  %nint.0 = add i32 %nU, 1, !dbg !122
  %add18 = add i32 %nint.0, %add12.pn, !dbg !127
  %div19 = sdiv i32 %add18, 2, !dbg !127
  %add20 = add nsw i32 %div19, %nent.0, !dbg !127
  %mul21 = shl i32 %add20, 3, !dbg !127
  tail call void @llvm.dbg.value(metadata !{i32 %mul21}, i64 0, metadata !15), !dbg !127
  br label %sw.epilog52, !dbg !129

sw.bb23:                                          ; preds = %if.end
  switch i32 %symflag, label %sw.default40 [
    i32 0, label %sw.bb24
    i32 1, label %sw.bb24
    i32 2, label %sw.bb32
  ], !dbg !130

sw.bb24:                                          ; preds = %sw.bb23, %sw.bb23
  %add25 = add nsw i32 %nD, 6, !dbg !131
  %add27 = add nsw i32 %nD, 1, !dbg !133
  %mul28 = mul nsw i32 %add27, %nD, !dbg !133
  %div29 = sdiv i32 %mul28, 2, !dbg !133
  %mul30 = mul nsw i32 %nU, %nD, !dbg !133
  %add31 = add nsw i32 %div29, %mul30, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32 %add31}, i64 0, metadata !16), !dbg !133
  br label %sw.epilog42, !dbg !134

sw.bb32:                                          ; preds = %sw.bb23
  %mul33 = shl i32 %nD, 1, !dbg !135
  %add34 = add nsw i32 %mul33, 6, !dbg !135
  %add35 = add nsw i32 %add34, %nL, !dbg !135
  %add37 = add nsw i32 %nL, %nD, !dbg !136
  %add38 = add nsw i32 %add37, %nU, !dbg !136
  %mul39 = mul nsw i32 %add38, %nD, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %mul39}, i64 0, metadata !16), !dbg !136
  br label %sw.epilog42, !dbg !137

sw.default40:                                     ; preds = %sw.bb23
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !138, !tbaa !110
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([154 x i8]* @.str2, i64 0, i64 0), i32 %symflag) #5, !dbg !138
  tail call void @exit(i32 -1) #6, !dbg !139
  unreachable, !dbg !139

sw.epilog42:                                      ; preds = %sw.bb32, %sw.bb24
  %nent.1 = phi i32 [ %mul39, %sw.bb32 ], [ %add31, %sw.bb24 ]
  %add35.pn = phi i32 [ %add35, %sw.bb32 ], [ %add25, %sw.bb24 ]
  %nint.1 = add i32 %nU, 1, !dbg !135
  %add43 = add i32 %nint.1, %add35.pn, !dbg !140
  %div44 = sdiv i32 %add43, 2, !dbg !140
  %mul45 = shl i32 %nent.1, 1, !dbg !140
  %add46 = add nsw i32 %div44, %mul45, !dbg !140
  %mul48 = shl i32 %add46, 3, !dbg !140
  tail call void @llvm.dbg.value(metadata !{i32 %mul48}, i64 0, metadata !15), !dbg !140
  br label %sw.epilog52, !dbg !142

sw.default50:                                     ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !143, !tbaa !110
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([97 x i8]* @.str3, i64 0, i64 0), i32 %type) #5, !dbg !143
  br label %sw.epilog52, !dbg !144

sw.epilog52:                                      ; preds = %sw.default50, %sw.epilog42, %sw.epilog
  %nbytes.0 = phi i32 [ 0, %sw.default50 ], [ %mul48, %sw.epilog42 ], [ %mul21, %sw.epilog ]
  ret i32 %nbytes.0, !dbg !145
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !51), !dbg !146
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !147
  br i1 %cmp, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !148, !tbaa !110
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._Chv* null) #5, !dbg !148
  tail call void @exit(i32 -1) #6, !dbg !150
  unreachable, !dbg !150

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !151
  %call1 = tail call i32 @DV_maxsize(%struct._DV* %wrkDV) #5, !dbg !151
  %mul = shl i32 %call1, 3, !dbg !151
  ret i32 %mul, !dbg !151
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_setNbytesInWorkspace(%struct._Chv* %chv, i32 %nbytes) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !56), !dbg !152
  tail call void @llvm.dbg.value(metadata !{i32 %nbytes}, i64 0, metadata !57), !dbg !153
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !154
  br i1 %cmp, label %if.then, label %if.end, !dbg !154

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !155, !tbaa !110
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._Chv* null, i32 %nbytes) #5, !dbg !155
  tail call void @exit(i32 -1) #6, !dbg !157
  unreachable, !dbg !157

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !158
  %conv = sext i32 %nbytes to i64, !dbg !158
  %div = lshr i64 %conv, 3, !dbg !158
  %conv1 = trunc i64 %div to i32, !dbg !158
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv1) #5, !dbg !158
  ret void, !dbg !159
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_setFields(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !62), !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !63), !dbg !161
  tail call void @llvm.dbg.value(metadata !{i32 %nD}, i64 0, metadata !64), !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %nL}, i64 0, metadata !65), !dbg !163
  tail call void @llvm.dbg.value(metadata !{i32 %nU}, i64 0, metadata !66), !dbg !164
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !67), !dbg !165
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !68), !dbg !166
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !167
  %cmp1 = icmp slt i32 %nD, 1, !dbg !167
  %or.cond = or i1 %cmp, %cmp1, !dbg !167
  %cmp3 = icmp slt i32 %nL, 0, !dbg !167
  %or.cond84 = or i1 %or.cond, %cmp3, !dbg !167
  %cmp5 = icmp slt i32 %nU, 0, !dbg !167
  %or.cond85 = or i1 %or.cond84, %cmp5, !dbg !167
  br i1 %or.cond85, label %if.then, label %if.end, !dbg !167

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !168, !tbaa !110
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([74 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #5, !dbg !168
  tail call void @exit(i32 -1) #6, !dbg !170
  unreachable, !dbg !170

if.end:                                           ; preds = %entry
  switch i32 %type, label %sw.default13 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ], !dbg !171

sw.bb:                                            ; preds = %if.end
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.epilog15
    i32 2, label %sw.epilog15
  ], !dbg !172

sw.default:                                       ; preds = %sw.bb
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !174, !tbaa !110
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([120 x i8]* @.str7, i64 0, i64 0), i32 %symflag) #5, !dbg !174
  tail call void @exit(i32 -1) #6, !dbg !176
  unreachable, !dbg !176

sw.bb8:                                           ; preds = %if.end
  %switch = icmp ult i32 %symflag, 3, !dbg !177
  br i1 %switch, label %sw.epilog15, label %sw.default10, !dbg !177

sw.default10:                                     ; preds = %sw.bb8
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !110
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([143 x i8]* @.str8, i64 0, i64 0), i32 %symflag) #5, !dbg !178
  tail call void @exit(i32 -1) #6, !dbg !180
  unreachable, !dbg !180

sw.default13:                                     ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !181, !tbaa !110
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([86 x i8]* @.str9, i64 0, i64 0), i32 %type) #5, !dbg !181
  tail call void @exit(i32 -1) #6, !dbg !182
  unreachable, !dbg !182

sw.epilog15:                                      ; preds = %sw.bb8, %sw.bb, %sw.bb
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !183
  %call16 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !183
  tail call void @llvm.dbg.value(metadata !{double* %call16}, i64 0, metadata !69), !dbg !183
  %4 = bitcast double* %call16 to i32*, !dbg !184
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !71), !dbg !184
  store i32 %id, i32* %4, align 4, !dbg !185, !tbaa !186
  %id17 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !185
  store i32 %id, i32* %id17, align 4, !dbg !185, !tbaa !186
  %arrayidx18 = getelementptr inbounds i32* %4, i64 1, !dbg !187
  store i32 %nD, i32* %arrayidx18, align 4, !dbg !187, !tbaa !186
  %nD19 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !187
  store i32 %nD, i32* %nD19, align 4, !dbg !187, !tbaa !186
  %arrayidx2081 = getelementptr inbounds double* %call16, i64 1, !dbg !188
  %arrayidx20 = bitcast double* %arrayidx2081 to i32*, !dbg !188
  store i32 %nL, i32* %arrayidx20, align 4, !dbg !188, !tbaa !186
  %nL21 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !188
  store i32 %nL, i32* %nL21, align 4, !dbg !188, !tbaa !186
  %arrayidx22 = getelementptr inbounds i32* %4, i64 3, !dbg !189
  store i32 %nU, i32* %arrayidx22, align 4, !dbg !189, !tbaa !186
  %nU23 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !189
  store i32 %nU, i32* %nU23, align 4, !dbg !189, !tbaa !186
  %arrayidx2482 = getelementptr inbounds double* %call16, i64 2, !dbg !190
  %arrayidx24 = bitcast double* %arrayidx2482 to i32*, !dbg !190
  store i32 %type, i32* %arrayidx24, align 4, !dbg !190, !tbaa !186
  %type25 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !190
  store i32 %type, i32* %type25, align 4, !dbg !190, !tbaa !186
  %arrayidx26 = getelementptr inbounds i32* %4, i64 5, !dbg !191
  store i32 %symflag, i32* %arrayidx26, align 4, !dbg !191, !tbaa !186
  %symflag27 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !191
  store i32 %symflag, i32* %symflag27, align 4, !dbg !191, !tbaa !186
  %add.ptr83 = getelementptr inbounds double* %call16, i64 3, !dbg !192
  %add.ptr = bitcast double* %add.ptr83 to i32*, !dbg !192
  %colind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !192
  store i32* %add.ptr, i32** %colind, align 8, !dbg !192, !tbaa !110
  %add = add nsw i32 %nD, 6, !dbg !193
  %add28 = add nsw i32 %add, %nU, !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32 %add28}, i64 0, metadata !70), !dbg !193
  %cmp29 = icmp eq i32 %symflag, 2, !dbg !194
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !194

if.then30:                                        ; preds = %sw.epilog15
  %idx.ext = sext i32 %nD to i64, !dbg !195
  %idx.ext33 = sext i32 %nU to i64, !dbg !195
  %add.ptr32.sum = add i64 %idx.ext33, %idx.ext, !dbg !195
  %add.ptr34 = getelementptr inbounds i32* %add.ptr, i64 %add.ptr32.sum, !dbg !195
  %rowind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !195
  store i32* %add.ptr34, i32** %rowind, align 8, !dbg !195, !tbaa !110
  %add35 = add nsw i32 %nL, %nD, !dbg !197
  %add36 = add nsw i32 %add35, %add28, !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %add36}, i64 0, metadata !70), !dbg !197
  br label %if.end38, !dbg !198

if.else:                                          ; preds = %sw.epilog15
  %rowind37 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !199
  store i32* null, i32** %rowind37, align 8, !dbg !199, !tbaa !110
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then30
  %nint.0 = phi i32 [ %add36, %if.then30 ], [ %add28, %if.else ]
  %add39 = add nsw i32 %nint.0, 1, !dbg !201
  %div = sdiv i32 %add39, 2, !dbg !201
  %idx.ext40 = sext i32 %div to i64, !dbg !201
  %add.ptr41 = getelementptr inbounds double* %call16, i64 %idx.ext40, !dbg !201
  %entries = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !201
  store double* %add.ptr41, double** %entries, align 8, !dbg !201, !tbaa !110
  ret void, !dbg !203
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_init(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !74), !dbg !204
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !75), !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %nD}, i64 0, metadata !76), !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32 %nL}, i64 0, metadata !77), !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %nU}, i64 0, metadata !78), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !79), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !80), !dbg !210
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !211
  %cmp1 = icmp slt i32 %nD, 1, !dbg !211
  %or.cond = or i1 %cmp, %cmp1, !dbg !211
  %cmp3 = icmp slt i32 %nL, 0, !dbg !211
  %or.cond37 = or i1 %or.cond, %cmp3, !dbg !211
  %cmp5 = icmp slt i32 %nU, 0, !dbg !211
  %or.cond38 = or i1 %or.cond37, %cmp5, !dbg !211
  br i1 %or.cond38, label %if.then, label %if.end, !dbg !211

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !212, !tbaa !110
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #5, !dbg !212
  tail call void @exit(i32 -1) #6, !dbg !214
  unreachable, !dbg !214

if.end:                                           ; preds = %entry
  switch i32 %type, label %sw.default13 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ], !dbg !215

sw.bb:                                            ; preds = %if.end
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.epilog15
    i32 2, label %sw.epilog15
  ], !dbg !216

sw.default:                                       ; preds = %sw.bb
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !218, !tbaa !110
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([115 x i8]* @.str11, i64 0, i64 0), i32 %symflag) #5, !dbg !218
  tail call void @exit(i32 -1) #6, !dbg !220
  unreachable, !dbg !220

sw.bb8:                                           ; preds = %if.end
  %switch = icmp ult i32 %symflag, 3, !dbg !221
  br i1 %switch, label %sw.epilog15, label %sw.default10, !dbg !221

sw.default10:                                     ; preds = %sw.bb8
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !222, !tbaa !110
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([138 x i8]* @.str12, i64 0, i64 0), i32 %symflag) #5, !dbg !222
  tail call void @exit(i32 -1) #6, !dbg !224
  unreachable, !dbg !224

sw.default13:                                     ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !225, !tbaa !110
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([81 x i8]* @.str13, i64 0, i64 0), i32 %type) #5, !dbg !225
  tail call void @exit(i32 -1) #6, !dbg !226
  unreachable, !dbg !226

sw.epilog15:                                      ; preds = %sw.bb8, %sw.bb, %sw.bb
  %call16 = tail call i32 @Chv_nbytesNeeded(i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #7, !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %call16}, i64 0, metadata !81), !dbg !227
  tail call void @Chv_setNbytesInWorkspace(%struct._Chv* %chv, i32 %call16) #7, !dbg !228
  tail call void @Chv_setFields(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #7, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_initWithPointers(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag, i32* %rowind, i32* %colind, double* %entries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !86), !dbg !231
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !87), !dbg !232
  tail call void @llvm.dbg.value(metadata !{i32 %nD}, i64 0, metadata !88), !dbg !233
  tail call void @llvm.dbg.value(metadata !{i32 %nL}, i64 0, metadata !89), !dbg !234
  tail call void @llvm.dbg.value(metadata !{i32 %nU}, i64 0, metadata !90), !dbg !235
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !91), !dbg !236
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !92), !dbg !237
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !93), !dbg !238
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !94), !dbg !239
  tail call void @llvm.dbg.value(metadata !{double* %entries}, i64 0, metadata !95), !dbg !240
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !241
  %cmp1 = icmp slt i32 %nD, 1, !dbg !241
  %or.cond = or i1 %cmp, %cmp1, !dbg !241
  %cmp3 = icmp slt i32 %nL, 0, !dbg !241
  %or.cond70 = or i1 %or.cond, %cmp3, !dbg !241
  %cmp5 = icmp slt i32 %nU, 0, !dbg !241
  %or.cond71 = or i1 %or.cond70, %cmp5, !dbg !241
  br i1 %or.cond71, label %if.then, label %if.end, !dbg !241

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !242, !tbaa !110
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #5, !dbg !242
  tail call void @exit(i32 -1) #6, !dbg !244
  unreachable, !dbg !244

if.end:                                           ; preds = %entry
  %cmp6 = icmp eq double* %entries, null, !dbg !245
  %cmp8 = icmp eq i32* %colind, null, !dbg !245
  %or.cond72 = or i1 %cmp6, %cmp8, !dbg !245
  br i1 %or.cond72, label %if.then12, label %lor.lhs.false9, !dbg !245

lor.lhs.false9:                                   ; preds = %if.end
  %cmp10 = icmp eq i32 %symflag, 2, !dbg !245
  %cmp11 = icmp eq i32* %rowind, null, !dbg !245
  %or.cond73 = and i1 %cmp10, %cmp11, !dbg !245
  br i1 %or.cond73, label %if.then12, label %if.end14, !dbg !245

if.then12:                                        ; preds = %lor.lhs.false9, %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !246, !tbaa !110
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([83 x i8]* @.str15, i64 0, i64 0), double* %entries, i32* %colind, i32* %rowind, i32 %symflag) #5, !dbg !246
  tail call void @exit(i32 -1) #6, !dbg !248
  unreachable, !dbg !248

if.end14:                                         ; preds = %lor.lhs.false9
  switch i32 %type, label %sw.default22 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
  ], !dbg !249

sw.bb:                                            ; preds = %if.end14
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.epilog24
    i32 2, label %sw.epilog24
  ], !dbg !250

sw.default:                                       ; preds = %sw.bb
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !252, !tbaa !110
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([127 x i8]* @.str16, i64 0, i64 0), i32 %symflag) #5, !dbg !252
  tail call void @exit(i32 -1) #6, !dbg !254
  unreachable, !dbg !254

sw.bb17:                                          ; preds = %if.end14
  %switch = icmp ult i32 %symflag, 3, !dbg !255
  br i1 %switch, label %sw.epilog24, label %sw.default19, !dbg !255

sw.default19:                                     ; preds = %sw.bb17
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !256, !tbaa !110
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([150 x i8]* @.str17, i64 0, i64 0), i32 %symflag) #5, !dbg !256
  tail call void @exit(i32 -1) #6, !dbg !258
  unreachable, !dbg !258

sw.default22:                                     ; preds = %if.end14
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !259, !tbaa !110
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([93 x i8]* @.str18, i64 0, i64 0), i32 %type) #5, !dbg !259
  tail call void @exit(i32 -1) #6, !dbg !260
  unreachable, !dbg !260

sw.epilog24:                                      ; preds = %sw.bb17, %sw.bb, %sw.bb
  %id25 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0, !dbg !261
  store i32 %id, i32* %id25, align 4, !dbg !261, !tbaa !186
  %nD26 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !262
  store i32 %nD, i32* %nD26, align 4, !dbg !262, !tbaa !186
  %nL27 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2, !dbg !263
  store i32 %nL, i32* %nL27, align 4, !dbg !263, !tbaa !186
  %nU28 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3, !dbg !264
  store i32 %nU, i32* %nU28, align 4, !dbg !264, !tbaa !186
  %type29 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !265
  store i32 %type, i32* %type29, align 4, !dbg !265, !tbaa !186
  %symflag30 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !266
  store i32 %symflag, i32* %symflag30, align 4, !dbg !266, !tbaa !186
  %entries31 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8, !dbg !267
  store double* %entries, double** %entries31, align 8, !dbg !267, !tbaa !110
  %colind32 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7, !dbg !268
  store i32* %colind, i32** %colind32, align 8, !dbg !268, !tbaa !110
  %rowind35 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6, !dbg !269
  %rowind. = select i1 %cmp10, i32* %rowind, i32* null, !dbg !271
  store i32* %rowind., i32** %rowind35, align 8, !dbg !269, !tbaa !110
  ret void, !dbg !272
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_initFromBuffer(%struct._Chv* %chv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !100), !dbg !273
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !274
  br i1 %cmp, label %if.then, label %if.end, !dbg !274

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !275, !tbaa !110
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str19, i64 0, i64 0), %struct._Chv* null) #5, !dbg !275
  tail call void @exit(i32 -1) #6, !dbg !277
  unreachable, !dbg !277

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9, !dbg !278
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !278
  %1 = bitcast double* %call1 to i32*, !dbg !278
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !101), !dbg !278
  %2 = load i32* %1, align 4, !dbg !279, !tbaa !186
  %arrayidx2 = getelementptr inbounds i32* %1, i64 1, !dbg !279
  %3 = load i32* %arrayidx2, align 4, !dbg !279, !tbaa !186
  %arrayidx315 = getelementptr inbounds double* %call1, i64 1, !dbg !279
  %arrayidx3 = bitcast double* %arrayidx315 to i32*, !dbg !279
  %4 = load i32* %arrayidx3, align 4, !dbg !279, !tbaa !186
  %arrayidx4 = getelementptr inbounds i32* %1, i64 3, !dbg !279
  %5 = load i32* %arrayidx4, align 4, !dbg !279, !tbaa !186
  %arrayidx516 = getelementptr inbounds double* %call1, i64 2, !dbg !279
  %arrayidx5 = bitcast double* %arrayidx516 to i32*, !dbg !279
  %6 = load i32* %arrayidx5, align 4, !dbg !279, !tbaa !186
  %arrayidx6 = getelementptr inbounds i32* %1, i64 5, !dbg !279
  %7 = load i32* %arrayidx6, align 4, !dbg !279, !tbaa !186
  tail call void @Chv_setFields(%struct._Chv* %chv, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #7, !dbg !279
  ret void, !dbg !280
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !18, metadata !52, metadata !58, metadata !72, metadata !82, metadata !96}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_nbytesNeeded", metadata !"Chv_nbytesNeeded", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i32, i32)* @Chv_nbytesNeeded, null, null, metadata !9, i32 22} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 22] [Chv_nbytesNeeded]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!10 = metadata !{i32 786689, metadata !4, metadata !"nD", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nD] [line 17]
!11 = metadata !{i32 786689, metadata !4, metadata !"nL", metadata !5, i32 33554450, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nL] [line 18]
!12 = metadata !{i32 786689, metadata !4, metadata !"nU", metadata !5, i32 50331667, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nU] [line 19]
!13 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 67108884, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 20]
!14 = metadata !{i32 786689, metadata !4, metadata !"symflag", metadata !5, i32 83886101, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 21]
!15 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 23]
!16 = metadata !{i32 786688, metadata !4, metadata !"nent", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 23]
!17 = metadata !{i32 786688, metadata !4, metadata !"nint", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 23]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_nbytesInWorkspace", metadata !"Chv_nbytesInWorkspace", metadata !"", i32 125, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*)* @Chv_nbytesInWorkspace, null, null, metadata !50, i32 127} ; [ DW_TAG_subprogram ] [line 125] [def] [scope 127] [Chv_nbytesInWorkspace]
!19 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !8, metadata !21}
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!22 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !34, metadata !35, metadata !38, metadata !47}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!31 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !33} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!37 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!38 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !39} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!39 = metadata !{i32 786454, metadata !24, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!40 = metadata !{i32 786451, metadata !41, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!41 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!42 = metadata !{metadata !43, metadata !44, metadata !45, metadata !46}
!43 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!44 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!45 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!46 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!47 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !48} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!49 = metadata !{i32 786454, metadata !24, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786689, metadata !18, metadata !"chv", metadata !5, i32 16777342, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 126]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_setNbytesInWorkspace", metadata !"Chv_setNbytesInWorkspace", metadata !"", i32 144, metadata !53, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32)* @Chv_setNbytesInWorkspace, null, null, metadata !55, i32 147} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 147] [Chv_setNbytesInWorkspace]
!53 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!54 = metadata !{null, metadata !21, metadata !8}
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786689, metadata !52, metadata !"chv", metadata !5, i32 16777361, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 145]
!57 = metadata !{i32 786689, metadata !52, metadata !"nbytes", metadata !5, i32 33554578, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes] [line 146]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_setFields", metadata !"Chv_setFields", metadata !"", i32 166, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, i32, i32, i32, i32)* @Chv_setFields, null, null, metadata !61, i32 174} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 174] [Chv_setFields]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !21, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71}
!62 = metadata !{i32 786689, metadata !58, metadata !"chv", metadata !5, i32 16777383, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 167]
!63 = metadata !{i32 786689, metadata !58, metadata !"id", metadata !5, i32 33554600, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 168]
!64 = metadata !{i32 786689, metadata !58, metadata !"nD", metadata !5, i32 50331817, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nD] [line 169]
!65 = metadata !{i32 786689, metadata !58, metadata !"nL", metadata !5, i32 67109034, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nL] [line 170]
!66 = metadata !{i32 786689, metadata !58, metadata !"nU", metadata !5, i32 83886251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nU] [line 171]
!67 = metadata !{i32 786689, metadata !58, metadata !"type", metadata !5, i32 100663468, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 172]
!68 = metadata !{i32 786689, metadata !58, metadata !"symflag", metadata !5, i32 117440685, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 173]
!69 = metadata !{i32 786688, metadata !58, metadata !"dbuffer", metadata !5, i32 175, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 175]
!70 = metadata !{i32 786688, metadata !58, metadata !"nint", metadata !5, i32 176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 176]
!71 = metadata !{i32 786688, metadata !58, metadata !"ibuffer", metadata !5, i32 177, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 177]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_init", metadata !"Chv_init", metadata !"", i32 270, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, i32, i32, i32, i32)* @Chv_init, null, null, metadata !73, i32 278} ; [ DW_TAG_subprogram ] [line 270] [def] [scope 278] [Chv_init]
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!74 = metadata !{i32 786689, metadata !72, metadata !"chv", metadata !5, i32 16777487, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 271]
!75 = metadata !{i32 786689, metadata !72, metadata !"id", metadata !5, i32 33554704, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 272]
!76 = metadata !{i32 786689, metadata !72, metadata !"nD", metadata !5, i32 50331921, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nD] [line 273]
!77 = metadata !{i32 786689, metadata !72, metadata !"nL", metadata !5, i32 67109138, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nL] [line 274]
!78 = metadata !{i32 786689, metadata !72, metadata !"nU", metadata !5, i32 83886355, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nU] [line 275]
!79 = metadata !{i32 786689, metadata !72, metadata !"type", metadata !5, i32 100663572, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 276]
!80 = metadata !{i32 786689, metadata !72, metadata !"symflag", metadata !5, i32 117440789, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 277]
!81 = metadata !{i32 786688, metadata !72, metadata !"nbytes", metadata !5, i32 279, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 279]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_initWithPointers", metadata !"Chv_initWithPointers", metadata !"", i32 356, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*, i32, i32, i32, i32, i32, i32, i32*, i32*, double*)* @Chv_initWithPointers, null, null, metadata !85, i32 367} ; [ DW_TAG_subprogram ] [line 356] [def] [scope 367] [Chv_initWithPointers]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{null, metadata !21, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !33, metadata !33, metadata !36}
!85 = metadata !{metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95}
!86 = metadata !{i32 786689, metadata !82, metadata !"chv", metadata !5, i32 16777573, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 357]
!87 = metadata !{i32 786689, metadata !82, metadata !"id", metadata !5, i32 33554790, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 358]
!88 = metadata !{i32 786689, metadata !82, metadata !"nD", metadata !5, i32 50332007, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nD] [line 359]
!89 = metadata !{i32 786689, metadata !82, metadata !"nL", metadata !5, i32 67109224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nL] [line 360]
!90 = metadata !{i32 786689, metadata !82, metadata !"nU", metadata !5, i32 83886441, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nU] [line 361]
!91 = metadata !{i32 786689, metadata !82, metadata !"type", metadata !5, i32 100663658, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 362]
!92 = metadata !{i32 786689, metadata !82, metadata !"symflag", metadata !5, i32 117440875, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 363]
!93 = metadata !{i32 786689, metadata !82, metadata !"rowind", metadata !5, i32 134218092, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 364]
!94 = metadata !{i32 786689, metadata !82, metadata !"colind", metadata !5, i32 150995309, metadata !33, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 365]
!95 = metadata !{i32 786689, metadata !82, metadata !"entries", metadata !5, i32 167772526, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entries] [line 366]
!96 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_initFromBuffer", metadata !"Chv_initFromBuffer", metadata !"", i32 462, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Chv*)* @Chv_initFromBuffer, null, null, metadata !99, i32 464} ; [ DW_TAG_subprogram ] [line 462] [def] [scope 464] [Chv_initFromBuffer]
!97 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!98 = metadata !{null, metadata !21}
!99 = metadata !{metadata !100, metadata !101}
!100 = metadata !{i32 786689, metadata !96, metadata !"chv", metadata !5, i32 16777679, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 463]
!101 = metadata !{i32 786688, metadata !96, metadata !"ibuffer", metadata !5, i32 465, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 465]
!102 = metadata !{i32 17, i32 0, metadata !4, null}
!103 = metadata !{i32 18, i32 0, metadata !4, null}
!104 = metadata !{i32 19, i32 0, metadata !4, null}
!105 = metadata !{i32 20, i32 0, metadata !4, null}
!106 = metadata !{i32 21, i32 0, metadata !4, null}
!107 = metadata !{i32 29, i32 0, metadata !4, null}
!108 = metadata !{i32 30, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!110 = metadata !{metadata !"any pointer", metadata !111}
!111 = metadata !{metadata !"omnipotent char", metadata !112}
!112 = metadata !{metadata !"Simple C/C++ TBAA"}
!113 = metadata !{i32 32, i32 0, metadata !109, null}
!114 = metadata !{i32 34, i32 0, metadata !4, null}
!115 = metadata !{i32 35, i32 0, metadata !4, null}
!116 = metadata !{i32 37, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!118 = metadata !{i32 39, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !117, i32 37, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!120 = metadata !{i32 40, i32 0, metadata !119, null}
!121 = metadata !{i32 41, i32 0, metadata !119, null}
!122 = metadata !{i32 43, i32 0, metadata !119, null}
!123 = metadata !{i32 44, i32 0, metadata !119, null}
!124 = metadata !{i32 45, i32 0, metadata !119, null}
!125 = metadata !{i32 47, i32 0, metadata !119, null}
!126 = metadata !{i32 52, i32 0, metadata !119, null}
!127 = metadata !{i32 55, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !117, i32 54, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!129 = metadata !{i32 69, i32 0, metadata !117, null}
!130 = metadata !{i32 71, i32 0, metadata !117, null}
!131 = metadata !{i32 74, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !117, i32 71, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!133 = metadata !{i32 75, i32 0, metadata !132, null}
!134 = metadata !{i32 76, i32 0, metadata !132, null}
!135 = metadata !{i32 78, i32 0, metadata !132, null}
!136 = metadata !{i32 79, i32 0, metadata !132, null}
!137 = metadata !{i32 80, i32 0, metadata !132, null}
!138 = metadata !{i32 82, i32 0, metadata !132, null}
!139 = metadata !{i32 88, i32 0, metadata !132, null}
!140 = metadata !{i32 91, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !117, i32 90, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!142 = metadata !{i32 105, i32 0, metadata !117, null}
!143 = metadata !{i32 107, i32 0, metadata !117, null}
!144 = metadata !{i32 112, i32 0, metadata !117, null}
!145 = metadata !{i32 114, i32 0, metadata !4, null}
!146 = metadata !{i32 126, i32 0, metadata !18, null}
!147 = metadata !{i32 128, i32 0, metadata !18, null}
!148 = metadata !{i32 129, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !18, i32 128, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!150 = metadata !{i32 131, i32 0, metadata !149, null}
!151 = metadata !{i32 133, i32 0, metadata !18, null}
!152 = metadata !{i32 145, i32 0, metadata !52, null}
!153 = metadata !{i32 146, i32 0, metadata !52, null}
!154 = metadata !{i32 148, i32 0, metadata !52, null}
!155 = metadata !{i32 149, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !52, i32 148, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!157 = metadata !{i32 151, i32 0, metadata !156, null}
!158 = metadata !{i32 153, i32 0, metadata !52, null}
!159 = metadata !{i32 155, i32 0, metadata !52, null}
!160 = metadata !{i32 167, i32 0, metadata !58, null}
!161 = metadata !{i32 168, i32 0, metadata !58, null}
!162 = metadata !{i32 169, i32 0, metadata !58, null}
!163 = metadata !{i32 170, i32 0, metadata !58, null}
!164 = metadata !{i32 171, i32 0, metadata !58, null}
!165 = metadata !{i32 172, i32 0, metadata !58, null}
!166 = metadata !{i32 173, i32 0, metadata !58, null}
!167 = metadata !{i32 183, i32 0, metadata !58, null}
!168 = metadata !{i32 184, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !58, i32 183, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!170 = metadata !{i32 187, i32 0, metadata !169, null}
!171 = metadata !{i32 189, i32 0, metadata !58, null}
!172 = metadata !{i32 191, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !58, i32 189, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!174 = metadata !{i32 196, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !173, i32 191, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!176 = metadata !{i32 201, i32 0, metadata !175, null}
!177 = metadata !{i32 205, i32 0, metadata !173, null}
!178 = metadata !{i32 211, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !173, i32 205, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!180 = metadata !{i32 217, i32 0, metadata !179, null}
!181 = metadata !{i32 221, i32 0, metadata !173, null}
!182 = metadata !{i32 226, i32 0, metadata !173, null}
!183 = metadata !{i32 228, i32 0, metadata !58, null}
!184 = metadata !{i32 229, i32 0, metadata !58, null}
!185 = metadata !{i32 235, i32 0, metadata !58, null}
!186 = metadata !{metadata !"int", metadata !111}
!187 = metadata !{i32 236, i32 0, metadata !58, null}
!188 = metadata !{i32 237, i32 0, metadata !58, null}
!189 = metadata !{i32 238, i32 0, metadata !58, null}
!190 = metadata !{i32 239, i32 0, metadata !58, null}
!191 = metadata !{i32 240, i32 0, metadata !58, null}
!192 = metadata !{i32 246, i32 0, metadata !58, null}
!193 = metadata !{i32 247, i32 0, metadata !58, null}
!194 = metadata !{i32 248, i32 0, metadata !58, null}
!195 = metadata !{i32 249, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !58, i32 248, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!197 = metadata !{i32 250, i32 0, metadata !196, null}
!198 = metadata !{i32 251, i32 0, metadata !196, null}
!199 = metadata !{i32 252, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !58, i32 251, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!201 = metadata !{i32 257, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !58, i32 256, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!203 = metadata !{i32 259, i32 0, metadata !58, null}
!204 = metadata !{i32 271, i32 0, metadata !72, null}
!205 = metadata !{i32 272, i32 0, metadata !72, null}
!206 = metadata !{i32 273, i32 0, metadata !72, null}
!207 = metadata !{i32 274, i32 0, metadata !72, null}
!208 = metadata !{i32 275, i32 0, metadata !72, null}
!209 = metadata !{i32 276, i32 0, metadata !72, null}
!210 = metadata !{i32 277, i32 0, metadata !72, null}
!211 = metadata !{i32 285, i32 0, metadata !72, null}
!212 = metadata !{i32 286, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !72, i32 285, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!214 = metadata !{i32 290, i32 0, metadata !213, null}
!215 = metadata !{i32 292, i32 0, metadata !72, null}
!216 = metadata !{i32 294, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !72, i32 292, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!218 = metadata !{i32 299, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !217, i32 294, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!220 = metadata !{i32 304, i32 0, metadata !219, null}
!221 = metadata !{i32 308, i32 0, metadata !217, null}
!222 = metadata !{i32 314, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !217, i32 308, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!224 = metadata !{i32 320, i32 0, metadata !223, null}
!225 = metadata !{i32 324, i32 0, metadata !217, null}
!226 = metadata !{i32 329, i32 0, metadata !217, null}
!227 = metadata !{i32 336, i32 0, metadata !72, null}
!228 = metadata !{i32 337, i32 0, metadata !72, null}
!229 = metadata !{i32 343, i32 0, metadata !72, null}
!230 = metadata !{i32 345, i32 0, metadata !72, null}
!231 = metadata !{i32 357, i32 0, metadata !82, null}
!232 = metadata !{i32 358, i32 0, metadata !82, null}
!233 = metadata !{i32 359, i32 0, metadata !82, null}
!234 = metadata !{i32 360, i32 0, metadata !82, null}
!235 = metadata !{i32 361, i32 0, metadata !82, null}
!236 = metadata !{i32 362, i32 0, metadata !82, null}
!237 = metadata !{i32 363, i32 0, metadata !82, null}
!238 = metadata !{i32 364, i32 0, metadata !82, null}
!239 = metadata !{i32 365, i32 0, metadata !82, null}
!240 = metadata !{i32 366, i32 0, metadata !82, null}
!241 = metadata !{i32 373, i32 0, metadata !82, null}
!242 = metadata !{i32 374, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !82, i32 373, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!244 = metadata !{i32 378, i32 0, metadata !243, null}
!245 = metadata !{i32 380, i32 0, metadata !82, null}
!246 = metadata !{i32 382, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !82, i32 381, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!248 = metadata !{i32 386, i32 0, metadata !247, null}
!249 = metadata !{i32 388, i32 0, metadata !82, null}
!250 = metadata !{i32 390, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !82, i32 388, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!252 = metadata !{i32 395, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !251, i32 390, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!254 = metadata !{i32 400, i32 0, metadata !253, null}
!255 = metadata !{i32 404, i32 0, metadata !251, null}
!256 = metadata !{i32 410, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !251, i32 404, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!258 = metadata !{i32 416, i32 0, metadata !257, null}
!259 = metadata !{i32 420, i32 0, metadata !251, null}
!260 = metadata !{i32 425, i32 0, metadata !251, null}
!261 = metadata !{i32 432, i32 0, metadata !82, null}
!262 = metadata !{i32 433, i32 0, metadata !82, null}
!263 = metadata !{i32 434, i32 0, metadata !82, null}
!264 = metadata !{i32 435, i32 0, metadata !82, null}
!265 = metadata !{i32 436, i32 0, metadata !82, null}
!266 = metadata !{i32 437, i32 0, metadata !82, null}
!267 = metadata !{i32 443, i32 0, metadata !82, null}
!268 = metadata !{i32 444, i32 0, metadata !82, null}
!269 = metadata !{i32 446, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !82, i32 445, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!271 = metadata !{i32 447, i32 0, metadata !270, null}
!272 = metadata !{i32 450, i32 0, metadata !82, null}
!273 = metadata !{i32 463, i32 0, metadata !96, null}
!274 = metadata !{i32 471, i32 0, metadata !96, null}
!275 = metadata !{i32 472, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !96, i32 471, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c]
!277 = metadata !{i32 474, i32 0, metadata !276, null}
!278 = metadata !{i32 476, i32 0, metadata !96, null}
!279 = metadata !{i32 477, i32 0, metadata !96, null}
!280 = metadata !{i32 480, i32 0, metadata !96, null}

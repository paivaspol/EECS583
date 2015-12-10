; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [65 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad type\0A\00", align 1
@.str2 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtx_nbytesNeeded(%d,%d,%d,%d,%d)\0A bad mode\0A\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"\0A fatal error in SubMtx_nbytesInUse(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_workspace(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [58 x i8] c"\0A fatal error in SubMtx_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_setNbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in SubMtx_setFields()\0A mtx is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A nrow = %d <= 0\0A\00", align 1
@.str9 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A ncol = %d <= 0\0A\00", align 1
@.str11 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A invalid type %d\00", align 1
@.str12 = private unnamed_addr constant [53 x i8] c"\0A fatal error in SubMtx_setFields()\0A invalid mode %d\00", align 1
@.str13 = private unnamed_addr constant [45 x i8] c"\0A fatal error in SubMtx_init()\0A mtx is NULL\0A\00", align 1
@.str14 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A nrow = %d <= 0\0A\00", align 1
@.str15 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A ncol = %d <= 0\0A\00", align 1
@.str17 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A invalid type %d\00", align 1
@.str18 = private unnamed_addr constant [48 x i8] c"\0A fatal error in SubMtx_init()\0A invalid mode %d\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"\0A fatal error in SubMtx_initFromBuffer(%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_nbytesNeeded(i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !10), !dbg !100
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !11), !dbg !101
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !12), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !13), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %nent}, i64 0, metadata !14), !dbg !104
  %cmp = icmp slt i32 %nrow, 1, !dbg !105
  %cmp1 = icmp slt i32 %ncol, 1, !dbg !105
  %or.cond = or i1 %cmp, %cmp1, !dbg !105
  %cmp3 = icmp slt i32 %nent, 0, !dbg !105
  %or.cond76 = or i1 %or.cond, %cmp3, !dbg !105
  br i1 %or.cond76, label %if.then, label %if.end, !dbg !105

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !106, !tbaa !108
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #6, !dbg !106
  tail call void @exit(i32 -1) #7, !dbg !111
  unreachable, !dbg !111

if.end:                                           ; preds = %entry
  %.off = add i32 %type, -1, !dbg !112
  %switch = icmp ult i32 %.off, 2, !dbg !112
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !112

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !113, !tbaa !108
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #6, !dbg !113
  tail call void @exit(i32 -1) #7, !dbg !115
  unreachable, !dbg !115

sw.epilog:                                        ; preds = %if.end
  %switch39 = icmp ult i32 %mode, 10, !dbg !116
  br i1 %switch39, label %sw.epilog8, label %sw.default6, !dbg !116

sw.default6:                                      ; preds = %sw.epilog
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !117, !tbaa !108
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8]* @.str2, i64 0, i64 0), i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #6, !dbg !117
  tail call void @exit(i32 -1) #7, !dbg !119
  unreachable, !dbg !119

sw.epilog8:                                       ; preds = %sw.epilog
  %add = add nsw i32 %nrow, 7, !dbg !120
  %add9 = add nsw i32 %add, %ncol, !dbg !120
  tail call void @llvm.dbg.value(metadata !{i32 %add9}, i64 0, metadata !17), !dbg !120
  %not.cmp10 = icmp ne i32 %type, 1, !dbg !121
  %mul = zext i1 %not.cmp10 to i32, !dbg !121
  %nent.mul = shl nsw i32 %nent, %mul, !dbg !121
  switch i32 %mode, label %sw.epilog34 [
    i32 2, label %sw.bb16
    i32 3, label %sw.bb19
    i32 4, label %sw.bb22
    i32 5, label %sw.bb25
    i32 6, label %sw.bb28
    i32 9, label %sw.bb31
    i32 8, label %sw.bb31
  ], !dbg !122

sw.bb16:                                          ; preds = %sw.epilog8
  %add17 = add nsw i32 %nent, %nrow, !dbg !123
  %add18 = add nsw i32 %add17, %add9, !dbg !123
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !17), !dbg !123
  br label %sw.epilog34, !dbg !125

sw.bb19:                                          ; preds = %sw.epilog8
  %add20 = add nsw i32 %nent, %ncol, !dbg !126
  %add21 = add nsw i32 %add20, %add9, !dbg !126
  tail call void @llvm.dbg.value(metadata !{i32 %add21}, i64 0, metadata !17), !dbg !126
  br label %sw.epilog34, !dbg !127

sw.bb22:                                          ; preds = %sw.epilog8
  %mul23 = shl i32 %nent, 1, !dbg !128
  %add24 = add nsw i32 %mul23, %add9, !dbg !128
  tail call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !17), !dbg !128
  br label %sw.epilog34, !dbg !129

sw.bb25:                                          ; preds = %sw.epilog8
  %mul26 = shl i32 %nrow, 1, !dbg !130
  %add27 = add nsw i32 %add9, %mul26, !dbg !130
  tail call void @llvm.dbg.value(metadata !{i32 %add27}, i64 0, metadata !17), !dbg !130
  br label %sw.epilog34, !dbg !131

sw.bb28:                                          ; preds = %sw.epilog8
  %mul29 = shl i32 %ncol, 1, !dbg !132
  %add30 = add nsw i32 %add9, %mul29, !dbg !132
  tail call void @llvm.dbg.value(metadata !{i32 %add30}, i64 0, metadata !17), !dbg !132
  br label %sw.epilog34, !dbg !133

sw.bb31:                                          ; preds = %sw.epilog8, %sw.epilog8
  %add32 = add nsw i32 %add9, %ncol, !dbg !134
  tail call void @llvm.dbg.value(metadata !{i32 %add32}, i64 0, metadata !17), !dbg !134
  br label %sw.epilog34, !dbg !135

sw.epilog34:                                      ; preds = %sw.epilog8, %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb19, %sw.bb16
  %nint.0 = phi i32 [ %add9, %sw.epilog8 ], [ %add32, %sw.bb31 ], [ %add30, %sw.bb28 ], [ %add27, %sw.bb25 ], [ %add24, %sw.bb22 ], [ %add21, %sw.bb19 ], [ %add18, %sw.bb16 ]
  %add35 = add nsw i32 %nint.0, 1, !dbg !136
  %div = sdiv i32 %add35, 2, !dbg !136
  %add36 = add nsw i32 %div, %nent.mul, !dbg !136
  %mul37 = shl i32 %add36, 3, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %mul37}, i64 0, metadata !15), !dbg !136
  ret i32 %mul37, !dbg !138
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_nbytesInUse(%struct._SubMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !49), !dbg !139
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !140
  br i1 %cmp, label %if.then, label %if.end, !dbg !140

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !141, !tbaa !108
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !141
  tail call void @exit(i32 -1) #7, !dbg !143
  unreachable, !dbg !143

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !144
  %call1 = tail call i32 @DV_size(%struct._DV* %wrkDV) #6, !dbg !144
  %mul = shl i32 %call1, 3, !dbg !144
  ret i32 %mul, !dbg !144
}

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #4

; Function Attrs: nounwind optsize uwtable
define i8* @SubMtx_workspace(%struct._SubMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !55), !dbg !145
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !146
  br i1 %cmp, label %if.then, label %if.end, !dbg !146

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !147, !tbaa !108
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !147
  tail call void @exit(i32 -1) #7, !dbg !149
  unreachable, !dbg !149

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !150
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #6, !dbg !150
  %1 = bitcast double* %call1 to i8*, !dbg !150
  ret i8* %1, !dbg !150
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !58), !dbg !151
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !153, !tbaa !108
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !153
  tail call void @exit(i32 -1) #7, !dbg !155
  unreachable, !dbg !155

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !156
  %call1 = tail call i32 @DV_maxsize(%struct._DV* %wrkDV) #6, !dbg !156
  %mul = shl i32 %call1, 3, !dbg !156
  ret i32 %mul, !dbg !156
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #4

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_setNbytesInWorkspace(%struct._SubMtx* %mtx, i32 %nbytes) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !63), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %nbytes}, i64 0, metadata !64), !dbg !158
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !160, !tbaa !108
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !160
  tail call void @exit(i32 -1) #7, !dbg !162
  unreachable, !dbg !162

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !163
  %conv = sext i32 %nbytes to i64, !dbg !163
  %div = lshr i64 %conv, 3, !dbg !163
  %conv1 = trunc i64 %div to i32, !dbg !163
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv1) #6, !dbg !163
  ret void, !dbg !164
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #4

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !69), !dbg !165
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !70), !dbg !166
  tail call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !71), !dbg !167
  tail call void @llvm.dbg.value(metadata !{i32 %rowid}, i64 0, metadata !72), !dbg !168
  tail call void @llvm.dbg.value(metadata !{i32 %colid}, i64 0, metadata !73), !dbg !169
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !74), !dbg !170
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !75), !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32 %nent}, i64 0, metadata !76), !dbg !172
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !173
  br i1 %cmp, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !174, !tbaa !108
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %0), !dbg !174
  tail call void @exit(i32 -1) #7, !dbg !176
  unreachable, !dbg !176

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %nrow, 1, !dbg !177
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !177

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !108
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([53 x i8]* @.str8, i64 0, i64 0), i32 %nrow) #6, !dbg !178
  tail call void @exit(i32 -1) #7, !dbg !180
  unreachable, !dbg !180

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %ncol, 1, !dbg !181
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !181

if.then6:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !182, !tbaa !108
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([53 x i8]* @.str9, i64 0, i64 0), i32 %ncol) #6, !dbg !182
  tail call void @exit(i32 -1) #7, !dbg !184
  unreachable, !dbg !184

if.end12:                                         ; preds = %if.end4
  %.off = add i32 %type, -1, !dbg !185
  %switch = icmp ult i32 %.off, 2, !dbg !185
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !185

sw.default:                                       ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !186, !tbaa !108
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([53 x i8]* @.str11, i64 0, i64 0), i32 %type) #6, !dbg !186
  tail call void @exit(i32 -1) #7, !dbg !188
  unreachable, !dbg !188

sw.epilog:                                        ; preds = %if.end12
  %switch90 = icmp ult i32 %mode, 10, !dbg !189
  br i1 %switch90, label %sw.epilog17, label %sw.default15, !dbg !189

sw.default15:                                     ; preds = %sw.epilog
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !190, !tbaa !108
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([53 x i8]* @.str12, i64 0, i64 0), i32 %mode) #6, !dbg !190
  tail call void @exit(i32 -1) #7, !dbg !192
  unreachable, !dbg !192

sw.epilog17:                                      ; preds = %sw.epilog
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !193
  %call18 = tail call double* @DV_entries(%struct._DV* %wrkDV) #6, !dbg !193
  tail call void @llvm.dbg.value(metadata !{double* %call18}, i64 0, metadata !77), !dbg !193
  %6 = bitcast double* %call18 to i32*, !dbg !194
  tail call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !79), !dbg !194
  store i32 %type, i32* %6, align 4, !dbg !195, !tbaa !196
  %type19 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !195
  store i32 %type, i32* %type19, align 4, !dbg !195, !tbaa !196
  %arrayidx20 = getelementptr inbounds i32* %6, i64 1, !dbg !197
  store i32 %mode, i32* %arrayidx20, align 4, !dbg !197, !tbaa !196
  %mode21 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !197
  store i32 %mode, i32* %mode21, align 4, !dbg !197, !tbaa !196
  %arrayidx22143 = getelementptr inbounds double* %call18, i64 1, !dbg !198
  %arrayidx22 = bitcast double* %arrayidx22143 to i32*, !dbg !198
  store i32 %rowid, i32* %arrayidx22, align 4, !dbg !198, !tbaa !196
  %rowid23 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !198
  store i32 %rowid, i32* %rowid23, align 4, !dbg !198, !tbaa !196
  %arrayidx24 = getelementptr inbounds i32* %6, i64 3, !dbg !199
  store i32 %colid, i32* %arrayidx24, align 4, !dbg !199, !tbaa !196
  %colid25 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !199
  store i32 %colid, i32* %colid25, align 4, !dbg !199, !tbaa !196
  %arrayidx26144 = getelementptr inbounds double* %call18, i64 2, !dbg !200
  %arrayidx26 = bitcast double* %arrayidx26144 to i32*, !dbg !200
  store i32 %nrow, i32* %arrayidx26, align 4, !dbg !200, !tbaa !196
  %nrow27 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !200
  store i32 %nrow, i32* %nrow27, align 4, !dbg !200, !tbaa !196
  %arrayidx28 = getelementptr inbounds i32* %6, i64 5, !dbg !201
  store i32 %ncol, i32* %arrayidx28, align 4, !dbg !201, !tbaa !196
  %ncol29 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !201
  store i32 %ncol, i32* %ncol29, align 4, !dbg !201, !tbaa !196
  %arrayidx30145 = getelementptr inbounds double* %call18, i64 3, !dbg !202
  %arrayidx30 = bitcast double* %arrayidx30145 to i32*, !dbg !202
  store i32 %nent, i32* %arrayidx30, align 4, !dbg !202, !tbaa !196
  %nent31 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !202
  store i32 %nent, i32* %nent31, align 4, !dbg !202, !tbaa !196
  switch i32 %mode, label %sw.epilog88 [
    i32 0, label %sw.bb32
    i32 1, label %sw.bb32
    i32 7, label %sw.bb32
    i32 2, label %sw.bb36
    i32 3, label %sw.bb45
    i32 4, label %sw.bb54
    i32 5, label %sw.bb63
    i32 6, label %sw.bb72
    i32 8, label %sw.bb81
    i32 9, label %sw.bb81
  ], !dbg !203

sw.bb32:                                          ; preds = %sw.epilog17, %sw.epilog17, %sw.epilog17
  %7 = load i32* %nrow27, align 4, !dbg !204, !tbaa !196
  %add = add nsw i32 %7, 7, !dbg !204
  %8 = load i32* %ncol29, align 4, !dbg !204, !tbaa !196
  %add35 = add nsw i32 %add, %8, !dbg !204
  tail call void @llvm.dbg.value(metadata !{i32 %add35}, i64 0, metadata !78), !dbg !204
  br label %sw.epilog88, !dbg !206

sw.bb36:                                          ; preds = %sw.epilog17
  %9 = load i32* %nrow27, align 4, !dbg !207, !tbaa !196
  %10 = load i32* %ncol29, align 4, !dbg !207, !tbaa !196
  %factor = shl i32 %9, 1
  %add40 = add i32 %nent, 7, !dbg !207
  %add42 = add i32 %add40, %10, !dbg !207
  %add44 = add i32 %add42, %factor, !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %add44}, i64 0, metadata !78), !dbg !207
  br label %sw.epilog88, !dbg !208

sw.bb45:                                          ; preds = %sw.epilog17
  %11 = load i32* %nrow27, align 4, !dbg !209, !tbaa !196
  %12 = load i32* %ncol29, align 4, !dbg !209, !tbaa !196
  %factor146 = shl i32 %12, 1
  %add49 = add i32 %nent, 7, !dbg !209
  %add51 = add i32 %add49, %11, !dbg !209
  %add53 = add i32 %add51, %factor146, !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %add53}, i64 0, metadata !78), !dbg !209
  br label %sw.epilog88, !dbg !210

sw.bb54:                                          ; preds = %sw.epilog17
  %13 = load i32* %nrow27, align 4, !dbg !211, !tbaa !196
  %14 = load i32* %ncol29, align 4, !dbg !211, !tbaa !196
  %factor147 = shl i32 %nent, 1
  %add58 = add i32 %13, 7, !dbg !211
  %add60 = add i32 %add58, %14, !dbg !211
  %add62 = add i32 %add60, %factor147, !dbg !211
  tail call void @llvm.dbg.value(metadata !{i32 %add62}, i64 0, metadata !78), !dbg !211
  br label %sw.epilog88, !dbg !212

sw.bb63:                                          ; preds = %sw.epilog17
  %15 = load i32* %nrow27, align 4, !dbg !213, !tbaa !196
  %16 = load i32* %ncol29, align 4, !dbg !213, !tbaa !196
  %factor148 = mul i32 %15, 3
  %add69 = add i32 %16, 7, !dbg !213
  %add71 = add i32 %add69, %factor148, !dbg !213
  tail call void @llvm.dbg.value(metadata !{i32 %add71}, i64 0, metadata !78), !dbg !213
  br label %sw.epilog88, !dbg !214

sw.bb72:                                          ; preds = %sw.epilog17
  %17 = load i32* %nrow27, align 4, !dbg !215, !tbaa !196
  %18 = load i32* %ncol29, align 4, !dbg !215, !tbaa !196
  %factor149 = mul i32 %18, 3
  %add78 = add i32 %17, 7, !dbg !215
  %add80 = add i32 %add78, %factor149, !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %add80}, i64 0, metadata !78), !dbg !215
  br label %sw.epilog88, !dbg !216

sw.bb81:                                          ; preds = %sw.epilog17, %sw.epilog17
  %19 = load i32* %nrow27, align 4, !dbg !217, !tbaa !196
  %20 = load i32* %ncol29, align 4, !dbg !217, !tbaa !196
  %factor150 = shl i32 %19, 1
  %add85 = add i32 %20, 7, !dbg !217
  %add87 = add i32 %add85, %factor150, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32 %add87}, i64 0, metadata !78), !dbg !217
  br label %sw.epilog88, !dbg !218

sw.epilog88:                                      ; preds = %sw.epilog17, %sw.bb81, %sw.bb72, %sw.bb63, %sw.bb54, %sw.bb45, %sw.bb36, %sw.bb32
  %nint.0 = phi i32 [ undef, %sw.epilog17 ], [ %add87, %sw.bb81 ], [ %add80, %sw.bb72 ], [ %add71, %sw.bb63 ], [ %add62, %sw.bb54 ], [ %add53, %sw.bb45 ], [ %add44, %sw.bb36 ], [ %add35, %sw.bb32 ]
  %add89 = add nsw i32 %nint.0, 1, !dbg !219
  %div = sdiv i32 %add89, 2, !dbg !219
  %idx.ext = sext i32 %div to i64, !dbg !219
  %add.ptr = getelementptr inbounds double* %call18, i64 %idx.ext, !dbg !219
  %entries = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 7, !dbg !219
  store double* %add.ptr, double** %entries, align 8, !dbg !219, !tbaa !108
  ret void, !dbg !221
}

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_init(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #0 {
entry:
  %nrow.addr = alloca i32, align 4
  %ncol.addr = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !83), !dbg !222
  call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !84), !dbg !223
  call void @llvm.dbg.value(metadata !{i32 %mode}, i64 0, metadata !85), !dbg !224
  call void @llvm.dbg.value(metadata !{i32 %rowid}, i64 0, metadata !86), !dbg !225
  call void @llvm.dbg.value(metadata !{i32 %colid}, i64 0, metadata !87), !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !88), !dbg !227
  store i32 %nrow, i32* %nrow.addr, align 4, !tbaa !196
  call void @llvm.dbg.declare(metadata !{i32* %nrow.addr}, metadata !88), !dbg !227
  call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !89), !dbg !228
  store i32 %ncol, i32* %ncol.addr, align 4, !tbaa !196
  call void @llvm.dbg.declare(metadata !{i32* %ncol.addr}, metadata !89), !dbg !228
  call void @llvm.dbg.value(metadata !{i32 %nent}, i64 0, metadata !90), !dbg !229
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !92), !dbg !230
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !93), !dbg !230
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !231
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !232, !tbaa !108
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str13, i64 0, i64 0), i64 44, i64 1, %struct._IO_FILE* %0), !dbg !232
  call void @exit(i32 -1) #7, !dbg !234
  unreachable, !dbg !234

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %nrow.addr}, i64 0, metadata !88), !dbg !235
  %cmp1 = icmp slt i32 %nrow, 1, !dbg !235
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !235

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !236, !tbaa !108
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([48 x i8]* @.str14, i64 0, i64 0), i32 %nrow) #6, !dbg !236
  call void @exit(i32 -1) #7, !dbg !238
  unreachable, !dbg !238

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %ncol, 1, !dbg !239
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !239

if.then6:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !240, !tbaa !108
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([48 x i8]* @.str15, i64 0, i64 0), i32 %ncol) #6, !dbg !240
  call void @exit(i32 -1) #7, !dbg !242
  unreachable, !dbg !242

if.end12:                                         ; preds = %if.end4
  %.off = add i32 %type, -1, !dbg !243
  %switch = icmp ult i32 %.off, 2, !dbg !243
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !243

sw.default:                                       ; preds = %if.end12
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !244, !tbaa !108
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str17, i64 0, i64 0), i32 %type) #6, !dbg !244
  call void @exit(i32 -1) #7, !dbg !246
  unreachable, !dbg !246

sw.epilog:                                        ; preds = %if.end12
  %switch21 = icmp ult i32 %mode, 10, !dbg !247
  br i1 %switch21, label %sw.epilog17, label %sw.default15, !dbg !247

sw.default15:                                     ; preds = %sw.epilog
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !248, !tbaa !108
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([48 x i8]* @.str18, i64 0, i64 0), i32 %mode) #6, !dbg !248
  call void @exit(i32 -1) #7, !dbg !250
  unreachable, !dbg !250

sw.epilog17:                                      ; preds = %sw.epilog
  %call18 = call i32 @SubMtx_nbytesNeeded(i32 %type, i32 %mode, i32 %nrow, i32 %ncol, i32 %nent) #8, !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !91), !dbg !251
  call void @SubMtx_setNbytesInWorkspace(%struct._SubMtx* %mtx, i32 %call18) #8, !dbg !252
  %conv = sext i32 %call18 to i64, !dbg !253
  %div = lshr i64 %conv, 3, !dbg !253
  %conv19 = trunc i64 %div to i32, !dbg !253
  %call20 = call i8* @SubMtx_workspace(%struct._SubMtx* %mtx) #8, !dbg !253
  %6 = bitcast i8* %call20 to double*, !dbg !253
  call void @DVzero(i32 %conv19, double* %6) #6, !dbg !253
  call void @llvm.dbg.value(metadata !{i32* %nrow.addr}, i64 0, metadata !88), !dbg !254
  call void @llvm.dbg.value(metadata !{i32* %ncol.addr}, i64 0, metadata !89), !dbg !254
  call void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %type, i32 %mode, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %nent) #8, !dbg !254
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow.addr, i32** %rowind) #6, !dbg !255
  call void @llvm.dbg.value(metadata !{i32* %nrow.addr}, i64 0, metadata !88), !dbg !256
  %7 = load i32* %nrow.addr, align 4, !dbg !256, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !93), !dbg !256
  %8 = load i32** %rowind, align 8, !dbg !256, !tbaa !108
  call void @IVramp(i32 %7, i32* %8, i32 0, i32 1) #6, !dbg !256
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol.addr, i32** %colind) #6, !dbg !257
  call void @llvm.dbg.value(metadata !{i32* %ncol.addr}, i64 0, metadata !89), !dbg !258
  %9 = load i32* %ncol.addr, align 4, !dbg !258, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !92), !dbg !258
  %10 = load i32** %colind, align 8, !dbg !258, !tbaa !108
  call void @IVramp(i32 %9, i32* %10, i32 0, i32 1) #6, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #4

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #4

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_initFromBuffer(%struct._SubMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !98), !dbg !260
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !261
  br i1 %cmp, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !262, !tbaa !108
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), %struct._SubMtx* null) #6, !dbg !262
  tail call void @exit(i32 -1) #7, !dbg !264
  unreachable, !dbg !264

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 8, !dbg !265
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #6, !dbg !265
  %1 = bitcast double* %call1 to i32*, !dbg !265
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !99), !dbg !265
  %2 = load i32* %1, align 4, !dbg !266, !tbaa !196
  %arrayidx2 = getelementptr inbounds i32* %1, i64 1, !dbg !266
  %3 = load i32* %arrayidx2, align 4, !dbg !266, !tbaa !196
  %arrayidx317 = getelementptr inbounds double* %call1, i64 1, !dbg !266
  %arrayidx3 = bitcast double* %arrayidx317 to i32*, !dbg !266
  %4 = load i32* %arrayidx3, align 4, !dbg !266, !tbaa !196
  %arrayidx4 = getelementptr inbounds i32* %1, i64 3, !dbg !266
  %5 = load i32* %arrayidx4, align 4, !dbg !266, !tbaa !196
  %arrayidx518 = getelementptr inbounds double* %call1, i64 2, !dbg !266
  %arrayidx5 = bitcast double* %arrayidx518 to i32*, !dbg !266
  %6 = load i32* %arrayidx5, align 4, !dbg !266, !tbaa !196
  %arrayidx6 = getelementptr inbounds i32* %1, i64 5, !dbg !266
  %7 = load i32* %arrayidx6, align 4, !dbg !266, !tbaa !196
  %arrayidx719 = getelementptr inbounds double* %call1, i64 3, !dbg !266
  %arrayidx7 = bitcast double* %arrayidx719 to i32*, !dbg !266
  %8 = load i32* %arrayidx7, align 4, !dbg !266, !tbaa !196
  tail call void @SubMtx_setFields(%struct._SubMtx* %mtx, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #8, !dbg !266
  ret void, !dbg !267
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !18, metadata !50, metadata !56, metadata !59, metadata !65, metadata !81, metadata !94}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_nbytesNeeded", metadata !"SubMtx_nbytesNeeded", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, i32, i32)* @SubMtx_nbytesNeeded, null, null, metadata !9, i32 22} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 22] [SubMtx_nbytesNeeded]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!10 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 17]
!11 = metadata !{i32 786689, metadata !4, metadata !"mode", metadata !5, i32 33554450, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 18]
!12 = metadata !{i32 786689, metadata !4, metadata !"nrow", metadata !5, i32 50331667, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 19]
!13 = metadata !{i32 786689, metadata !4, metadata !"ncol", metadata !5, i32 67108884, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 20]
!14 = metadata !{i32 786689, metadata !4, metadata !"nent", metadata !5, i32 83886101, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nent] [line 21]
!15 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 23]
!16 = metadata !{i32 786688, metadata !4, metadata !"ndouble", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndouble] [line 23]
!17 = metadata !{i32 786688, metadata !4, metadata !"nint", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 23]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_nbytesInUse", metadata !"SubMtx_nbytesInUse", metadata !"", i32 130, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*)* @SubMtx_nbytesInUse, null, null, metadata !48, i32 132} ; [ DW_TAG_subprogram ] [line 130] [def] [scope 132] [SubMtx_nbytesInUse]
!19 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !8, metadata !21}
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!22 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !36, metadata !45}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!31 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!33 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!35 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!36 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !37} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!37 = metadata !{i32 786454, metadata !24, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!38 = metadata !{i32 786451, metadata !39, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !40, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!39 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44}
!41 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!42 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!43 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!44 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!45 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!47 = metadata !{i32 786454, metadata !24, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786689, metadata !18, metadata !"mtx", metadata !5, i32 16777347, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 131]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_workspace", metadata !"SubMtx_workspace", metadata !"", i32 149, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct._SubMtx*)* @SubMtx_workspace, null, null, metadata !54, i32 151} ; [ DW_TAG_subprogram ] [line 149] [def] [scope 151] [SubMtx_workspace]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !53, metadata !21}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{metadata !55}
!55 = metadata !{i32 786689, metadata !50, metadata !"mtx", metadata !5, i32 16777366, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 150]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_nbytesInWorkspace", metadata !"SubMtx_nbytesInWorkspace", metadata !"", i32 168, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*)* @SubMtx_nbytesInWorkspace, null, null, metadata !57, i32 170} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 170] [SubMtx_nbytesInWorkspace]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786689, metadata !56, metadata !"mtx", metadata !5, i32 16777385, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 169]
!59 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_setNbytesInWorkspace", metadata !"SubMtx_setNbytesInWorkspace", metadata !"", i32 187, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32)* @SubMtx_setNbytesInWorkspace, null, null, metadata !62, i32 190} ; [ DW_TAG_subprogram ] [line 187] [def] [scope 190] [SubMtx_setNbytesInWorkspace]
!60 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!61 = metadata !{null, metadata !21, metadata !8}
!62 = metadata !{metadata !63, metadata !64}
!63 = metadata !{i32 786689, metadata !59, metadata !"mtx", metadata !5, i32 16777404, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 188]
!64 = metadata !{i32 786689, metadata !59, metadata !"nbytes", metadata !5, i32 33554621, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes] [line 189]
!65 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_setFields", metadata !"SubMtx_setFields", metadata !"", i32 210, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32)* @SubMtx_setFields, null, null, metadata !68, i32 219} ; [ DW_TAG_subprogram ] [line 210] [def] [scope 219] [SubMtx_setFields]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{null, metadata !21, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!69 = metadata !{i32 786689, metadata !65, metadata !"mtx", metadata !5, i32 16777427, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 211]
!70 = metadata !{i32 786689, metadata !65, metadata !"type", metadata !5, i32 33554644, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 212]
!71 = metadata !{i32 786689, metadata !65, metadata !"mode", metadata !5, i32 50331861, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 213]
!72 = metadata !{i32 786689, metadata !65, metadata !"rowid", metadata !5, i32 67109078, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowid] [line 214]
!73 = metadata !{i32 786689, metadata !65, metadata !"colid", metadata !5, i32 83886295, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colid] [line 215]
!74 = metadata !{i32 786689, metadata !65, metadata !"nrow", metadata !5, i32 100663512, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 216]
!75 = metadata !{i32 786689, metadata !65, metadata !"ncol", metadata !5, i32 117440729, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 217]
!76 = metadata !{i32 786689, metadata !65, metadata !"nent", metadata !5, i32 134217946, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nent] [line 218]
!77 = metadata !{i32 786688, metadata !65, metadata !"dbuffer", metadata !5, i32 220, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 220]
!78 = metadata !{i32 786688, metadata !65, metadata !"nint", metadata !5, i32 221, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 221]
!79 = metadata !{i32 786688, metadata !65, metadata !"ibuffer", metadata !5, i32 222, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 222]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_init", metadata !"SubMtx_init", metadata !"", i32 330, metadata !66, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32)* @SubMtx_init, null, null, metadata !82, i32 339} ; [ DW_TAG_subprogram ] [line 330] [def] [scope 339] [SubMtx_init]
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93}
!83 = metadata !{i32 786689, metadata !81, metadata !"mtx", metadata !5, i32 16777547, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 331]
!84 = metadata !{i32 786689, metadata !81, metadata !"type", metadata !5, i32 33554764, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 332]
!85 = metadata !{i32 786689, metadata !81, metadata !"mode", metadata !5, i32 50331981, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 333]
!86 = metadata !{i32 786689, metadata !81, metadata !"rowid", metadata !5, i32 67109198, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowid] [line 334]
!87 = metadata !{i32 786689, metadata !81, metadata !"colid", metadata !5, i32 83886415, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colid] [line 335]
!88 = metadata !{i32 786689, metadata !81, metadata !"nrow", metadata !5, i32 100663632, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 336]
!89 = metadata !{i32 786689, metadata !81, metadata !"ncol", metadata !5, i32 117440849, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 337]
!90 = metadata !{i32 786689, metadata !81, metadata !"nent", metadata !5, i32 134218066, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nent] [line 338]
!91 = metadata !{i32 786688, metadata !81, metadata !"nbytes", metadata !5, i32 340, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 340]
!92 = metadata !{i32 786688, metadata !81, metadata !"colind", metadata !5, i32 341, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 341]
!93 = metadata !{i32 786688, metadata !81, metadata !"rowind", metadata !5, i32 341, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 341]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_initFromBuffer", metadata !"SubMtx_initFromBuffer", metadata !"", i32 424, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*)* @SubMtx_initFromBuffer, null, null, metadata !97, i32 426} ; [ DW_TAG_subprogram ] [line 424] [def] [scope 426] [SubMtx_initFromBuffer]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !21}
!97 = metadata !{metadata !98, metadata !99}
!98 = metadata !{i32 786689, metadata !94, metadata !"mtx", metadata !5, i32 16777641, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 425]
!99 = metadata !{i32 786688, metadata !94, metadata !"ibuffer", metadata !5, i32 427, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 427]
!100 = metadata !{i32 17, i32 0, metadata !4, null}
!101 = metadata !{i32 18, i32 0, metadata !4, null}
!102 = metadata !{i32 19, i32 0, metadata !4, null}
!103 = metadata !{i32 20, i32 0, metadata !4, null}
!104 = metadata !{i32 21, i32 0, metadata !4, null}
!105 = metadata !{i32 29, i32 0, metadata !4, null}
!106 = metadata !{i32 30, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!108 = metadata !{metadata !"any pointer", metadata !109}
!109 = metadata !{metadata !"omnipotent char", metadata !110}
!110 = metadata !{metadata !"Simple C/C++ TBAA"}
!111 = metadata !{i32 33, i32 0, metadata !107, null}
!112 = metadata !{i32 35, i32 0, metadata !4, null}
!113 = metadata !{i32 40, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!115 = metadata !{i32 43, i32 0, metadata !114, null}
!116 = metadata !{i32 45, i32 0, metadata !4, null}
!117 = metadata !{i32 58, i32 0, metadata !118, null} ; [ DW_TAG_imported_module ]
!118 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!119 = metadata !{i32 61, i32 0, metadata !118, null}
!120 = metadata !{i32 68, i32 0, metadata !4, null}
!121 = metadata !{i32 69, i32 0, metadata !4, null}
!122 = metadata !{i32 74, i32 0, metadata !4, null}
!123 = metadata !{i32 76, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!125 = metadata !{i32 77, i32 0, metadata !124, null}
!126 = metadata !{i32 79, i32 0, metadata !124, null}
!127 = metadata !{i32 80, i32 0, metadata !124, null}
!128 = metadata !{i32 82, i32 0, metadata !124, null}
!129 = metadata !{i32 83, i32 0, metadata !124, null}
!130 = metadata !{i32 85, i32 0, metadata !124, null}
!131 = metadata !{i32 86, i32 0, metadata !124, null}
!132 = metadata !{i32 88, i32 0, metadata !124, null}
!133 = metadata !{i32 89, i32 0, metadata !124, null}
!134 = metadata !{i32 94, i32 0, metadata !124, null}
!135 = metadata !{i32 95, i32 0, metadata !124, null}
!136 = metadata !{i32 107, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !4, i32 106, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!138 = metadata !{i32 118, i32 0, metadata !4, null}
!139 = metadata !{i32 131, i32 0, metadata !18, null}
!140 = metadata !{i32 133, i32 0, metadata !18, null}
!141 = metadata !{i32 134, i32 0, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !18, i32 133, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!143 = metadata !{i32 136, i32 0, metadata !142, null}
!144 = metadata !{i32 138, i32 0, metadata !18, null}
!145 = metadata !{i32 150, i32 0, metadata !50, null}
!146 = metadata !{i32 152, i32 0, metadata !50, null}
!147 = metadata !{i32 153, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !50, i32 152, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!149 = metadata !{i32 155, i32 0, metadata !148, null}
!150 = metadata !{i32 157, i32 0, metadata !50, null}
!151 = metadata !{i32 169, i32 0, metadata !56, null}
!152 = metadata !{i32 171, i32 0, metadata !56, null}
!153 = metadata !{i32 172, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !56, i32 171, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!155 = metadata !{i32 174, i32 0, metadata !154, null}
!156 = metadata !{i32 176, i32 0, metadata !56, null}
!157 = metadata !{i32 188, i32 0, metadata !59, null}
!158 = metadata !{i32 189, i32 0, metadata !59, null}
!159 = metadata !{i32 191, i32 0, metadata !59, null}
!160 = metadata !{i32 192, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !59, i32 191, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!162 = metadata !{i32 195, i32 0, metadata !161, null}
!163 = metadata !{i32 197, i32 0, metadata !59, null}
!164 = metadata !{i32 199, i32 0, metadata !59, null}
!165 = metadata !{i32 211, i32 0, metadata !65, null}
!166 = metadata !{i32 212, i32 0, metadata !65, null}
!167 = metadata !{i32 213, i32 0, metadata !65, null}
!168 = metadata !{i32 214, i32 0, metadata !65, null}
!169 = metadata !{i32 215, i32 0, metadata !65, null}
!170 = metadata !{i32 216, i32 0, metadata !65, null}
!171 = metadata !{i32 217, i32 0, metadata !65, null}
!172 = metadata !{i32 218, i32 0, metadata !65, null}
!173 = metadata !{i32 228, i32 0, metadata !65, null}
!174 = metadata !{i32 229, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !65, i32 228, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!176 = metadata !{i32 231, i32 0, metadata !175, null}
!177 = metadata !{i32 233, i32 0, metadata !65, null}
!178 = metadata !{i32 234, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !65, i32 233, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!180 = metadata !{i32 236, i32 0, metadata !179, null}
!181 = metadata !{i32 238, i32 0, metadata !65, null}
!182 = metadata !{i32 239, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !65, i32 238, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!184 = metadata !{i32 241, i32 0, metadata !183, null}
!185 = metadata !{i32 248, i32 0, metadata !65, null}
!186 = metadata !{i32 253, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !65, i32 248, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!188 = metadata !{i32 255, i32 0, metadata !187, null}
!189 = metadata !{i32 257, i32 0, metadata !65, null}
!190 = metadata !{i32 270, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !65, i32 257, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!192 = metadata !{i32 272, i32 0, metadata !191, null}
!193 = metadata !{i32 274, i32 0, metadata !65, null}
!194 = metadata !{i32 275, i32 0, metadata !65, null}
!195 = metadata !{i32 281, i32 0, metadata !65, null}
!196 = metadata !{metadata !"int", metadata !109}
!197 = metadata !{i32 282, i32 0, metadata !65, null}
!198 = metadata !{i32 283, i32 0, metadata !65, null}
!199 = metadata !{i32 284, i32 0, metadata !65, null}
!200 = metadata !{i32 285, i32 0, metadata !65, null}
!201 = metadata !{i32 286, i32 0, metadata !65, null}
!202 = metadata !{i32 287, i32 0, metadata !65, null}
!203 = metadata !{i32 288, i32 0, metadata !65, null}
!204 = metadata !{i32 292, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !65, i32 288, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!206 = metadata !{i32 293, i32 0, metadata !205, null}
!207 = metadata !{i32 295, i32 0, metadata !205, null}
!208 = metadata !{i32 296, i32 0, metadata !205, null}
!209 = metadata !{i32 298, i32 0, metadata !205, null}
!210 = metadata !{i32 299, i32 0, metadata !205, null}
!211 = metadata !{i32 301, i32 0, metadata !205, null}
!212 = metadata !{i32 302, i32 0, metadata !205, null}
!213 = metadata !{i32 304, i32 0, metadata !205, null}
!214 = metadata !{i32 305, i32 0, metadata !205, null}
!215 = metadata !{i32 307, i32 0, metadata !205, null}
!216 = metadata !{i32 308, i32 0, metadata !205, null}
!217 = metadata !{i32 311, i32 0, metadata !205, null}
!218 = metadata !{i32 312, i32 0, metadata !205, null}
!219 = metadata !{i32 317, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !65, i32 316, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!221 = metadata !{i32 319, i32 0, metadata !65, null}
!222 = metadata !{i32 331, i32 0, metadata !81, null}
!223 = metadata !{i32 332, i32 0, metadata !81, null}
!224 = metadata !{i32 333, i32 0, metadata !81, null}
!225 = metadata !{i32 334, i32 0, metadata !81, null}
!226 = metadata !{i32 335, i32 0, metadata !81, null}
!227 = metadata !{i32 336, i32 0, metadata !81, null}
!228 = metadata !{i32 337, i32 0, metadata !81, null}
!229 = metadata !{i32 338, i32 0, metadata !81, null}
!230 = metadata !{i32 341, i32 0, metadata !81, null}
!231 = metadata !{i32 347, i32 0, metadata !81, null}
!232 = metadata !{i32 348, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !81, i32 347, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!234 = metadata !{i32 350, i32 0, metadata !233, null}
!235 = metadata !{i32 352, i32 0, metadata !81, null}
!236 = metadata !{i32 353, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !81, i32 352, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!238 = metadata !{i32 355, i32 0, metadata !237, null}
!239 = metadata !{i32 357, i32 0, metadata !81, null}
!240 = metadata !{i32 358, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !81, i32 357, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!242 = metadata !{i32 360, i32 0, metadata !241, null}
!243 = metadata !{i32 367, i32 0, metadata !81, null}
!244 = metadata !{i32 372, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !81, i32 367, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!246 = metadata !{i32 374, i32 0, metadata !245, null}
!247 = metadata !{i32 376, i32 0, metadata !81, null}
!248 = metadata !{i32 389, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !81, i32 376, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!250 = metadata !{i32 391, i32 0, metadata !249, null}
!251 = metadata !{i32 398, i32 0, metadata !81, null}
!252 = metadata !{i32 399, i32 0, metadata !81, null}
!253 = metadata !{i32 400, i32 0, metadata !81, null}
!254 = metadata !{i32 406, i32 0, metadata !81, null}
!255 = metadata !{i32 407, i32 0, metadata !81, null}
!256 = metadata !{i32 408, i32 0, metadata !81, null}
!257 = metadata !{i32 409, i32 0, metadata !81, null}
!258 = metadata !{i32 410, i32 0, metadata !81, null}
!259 = metadata !{i32 412, i32 0, metadata !81, null}
!260 = metadata !{i32 425, i32 0, metadata !94, null}
!261 = metadata !{i32 433, i32 0, metadata !94, null}
!262 = metadata !{i32 434, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !94, i32 433, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_init.c]
!264 = metadata !{i32 436, i32 0, metadata !263, null}
!265 = metadata !{i32 438, i32 0, metadata !94, null}
!266 = metadata !{i32 439, i32 0, metadata !94, null}
!267 = metadata !{i32 442, i32 0, metadata !94, null}

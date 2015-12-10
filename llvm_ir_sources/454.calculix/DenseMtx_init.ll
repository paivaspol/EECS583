; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [61 x i8] c"\0A fatal error in DenseMtx_nbytesNeeded(%d,%d,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_nbytesNeeded(%d,%d,%d)\0A bad type %d\0A\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DenseMtx_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_setNbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_setFields(%p,%d,%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [65 x i8] c"\0A fatal error in DenseMtx_init(%p,%d,%d,%d,%d,%d,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [70 x i8] c"\0A fatal error in DenseMtx_init(%p,%d,%d,%d,%d,%d,%d,%d)\0A bad type %d\0A\00", align 1
@.str7 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_initFromBuffer(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [176 x i8] c"\0A fatal error in DenseMtx_initWithPointers()\0A mtx = %p, rowid = %d, colid = %d\0A nrow = %d, ncol = %d, inc1 = %d, inc2 = %d\0A rowind = %p, colind = %p, entries = %p \0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_initWithPointers()\0A bad type %d\0A\00", align 1
@.str10 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_setZA2(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_nbytesNeeded(i32 %type, i32 %nrow, i32 %ncol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !10), !dbg !121
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !11), !dbg !122
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !12), !dbg !123
  %0 = or i32 %ncol, %nrow, !dbg !124
  %1 = icmp slt i32 %0, 0, !dbg !124
  br i1 %1, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !125, !tbaa !127
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 %type, i32 %nrow, i32 %ncol) #5, !dbg !125
  tail call void @exit(i32 -1) #6, !dbg !130
  unreachable, !dbg !130

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %add2}, i64 0, metadata !15), !dbg !131
  switch i32 %type, label %if.else9 [
    i32 1, label %if.end12
    i32 2, label %if.then6
  ], !dbg !132

if.then6:                                         ; preds = %if.end
  %mul7 = shl nsw i32 %nrow, 1, !dbg !133
  br label %if.end12

if.else9:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !135, !tbaa !127
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str1, i64 0, i64 0), i32 %type, i32 %nrow, i32 %ncol, i32 %type) #5, !dbg !135
  tail call void @exit(i32 -1) #6, !dbg !137
  unreachable, !dbg !137

if.end12:                                         ; preds = %if.end, %if.then6
  %nrow.pn = phi i32 [ %mul7, %if.then6 ], [ %nrow, %if.end ]
  %ndouble.0 = mul nsw i32 %nrow.pn, %ncol, !dbg !138
  %add2 = add i32 %nrow, 8, !dbg !131
  %add13 = add i32 %add2, %ncol, !dbg !140
  %div = sdiv i32 %add13, 2, !dbg !140
  %add14 = add nsw i32 %div, %ndouble.0, !dbg !140
  %mul15 = shl i32 %add14, 3, !dbg !140
  tail call void @llvm.dbg.value(metadata !{i32 %mul15}, i64 0, metadata !13), !dbg !140
  ret i32 %mul15, !dbg !142
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_nbytesInWorkspace(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !50), !dbg !143
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !144
  br i1 %cmp, label %if.then, label %if.end, !dbg !144

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !145, !tbaa !127
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._DenseMtx* null) #5, !dbg !145
  tail call void @exit(i32 -1) #6, !dbg !147
  unreachable, !dbg !147

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !148
  %call1 = tail call i32 @DV_maxsize(%struct._DV* %wrkDV) #5, !dbg !148
  %mul = shl i32 %call1, 3, !dbg !148
  ret i32 %mul, !dbg !148
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setNbytesInWorkspace(%struct._DenseMtx* %mtx, i32 %nbytes) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !55), !dbg !149
  tail call void @llvm.dbg.value(metadata !{i32 %nbytes}, i64 0, metadata !56), !dbg !150
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !151
  br i1 %cmp, label %if.then, label %if.end, !dbg !151

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !152, !tbaa !127
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str3, i64 0, i64 0), %struct._DenseMtx* null) #5, !dbg !152
  tail call void @exit(i32 -1) #6, !dbg !154
  unreachable, !dbg !154

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !155
  %conv = sext i32 %nbytes to i64, !dbg !155
  %div = lshr i64 %conv, 3, !dbg !155
  %conv1 = trunc i64 %div to i32, !dbg !155
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv1) #5, !dbg !155
  ret void, !dbg !156
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !61), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !62), !dbg !158
  tail call void @llvm.dbg.value(metadata !{i32 %rowid}, i64 0, metadata !63), !dbg !159
  tail call void @llvm.dbg.value(metadata !{i32 %colid}, i64 0, metadata !64), !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !65), !dbg !161
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !66), !dbg !162
  tail call void @llvm.dbg.value(metadata !{i32 %inc1}, i64 0, metadata !67), !dbg !163
  tail call void @llvm.dbg.value(metadata !{i32 %inc2}, i64 0, metadata !68), !dbg !164
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !165
  %cmp1 = icmp slt i32 %nrow, 0, !dbg !165
  %or.cond = or i1 %cmp, %cmp1, !dbg !165
  %cmp3 = icmp slt i32 %ncol, 0, !dbg !165
  %or.cond71 = or i1 %or.cond, %cmp3, !dbg !165
  br i1 %or.cond71, label %if.then, label %lor.lhs.false4, !dbg !165

lor.lhs.false4:                                   ; preds = %entry
  %cmp5 = icmp eq i32 %inc1, %ncol, !dbg !165
  %cmp6 = icmp eq i32 %inc2, 1, !dbg !165
  %or.cond72 = and i1 %cmp5, %cmp6, !dbg !165
  br i1 %or.cond72, label %if.end, label %lor.lhs.false7, !dbg !165

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %cmp8 = icmp eq i32 %inc1, 1, !dbg !165
  %cmp10 = icmp eq i32 %inc2, %nrow, !dbg !165
  %or.cond73 = and i1 %cmp8, %cmp10, !dbg !165
  br i1 %or.cond73, label %if.end, label %if.then, !dbg !165

if.then:                                          ; preds = %lor.lhs.false7, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !166, !tbaa !127
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str4, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #5, !dbg !166
  tail call void @exit(i32 -1) #6, !dbg !168
  unreachable, !dbg !168

if.end:                                           ; preds = %lor.lhs.false7, %lor.lhs.false4
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !169
  %call11 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !169
  tail call void @llvm.dbg.value(metadata !{double* %call11}, i64 0, metadata !69), !dbg !169
  %1 = bitcast double* %call11 to i32*, !dbg !170
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !70), !dbg !170
  store i32 %type, i32* %1, align 4, !dbg !171, !tbaa !172
  %type12 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !171
  store i32 %type, i32* %type12, align 4, !dbg !171, !tbaa !172
  %arrayidx13 = getelementptr inbounds i32* %1, i64 1, !dbg !173
  store i32 %rowid, i32* %arrayidx13, align 4, !dbg !173, !tbaa !172
  %rowid14 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !173
  store i32 %rowid, i32* %rowid14, align 4, !dbg !173, !tbaa !172
  %arrayidx1568 = getelementptr inbounds double* %call11, i64 1, !dbg !174
  %arrayidx15 = bitcast double* %arrayidx1568 to i32*, !dbg !174
  store i32 %colid, i32* %arrayidx15, align 4, !dbg !174, !tbaa !172
  %colid16 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !174
  store i32 %colid, i32* %colid16, align 4, !dbg !174, !tbaa !172
  %arrayidx17 = getelementptr inbounds i32* %1, i64 3, !dbg !175
  store i32 %nrow, i32* %arrayidx17, align 4, !dbg !175, !tbaa !172
  %nrow18 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !175
  store i32 %nrow, i32* %nrow18, align 4, !dbg !175, !tbaa !172
  %arrayidx1969 = getelementptr inbounds double* %call11, i64 2, !dbg !176
  %arrayidx19 = bitcast double* %arrayidx1969 to i32*, !dbg !176
  store i32 %ncol, i32* %arrayidx19, align 4, !dbg !176, !tbaa !172
  %ncol20 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !176
  store i32 %ncol, i32* %ncol20, align 4, !dbg !176, !tbaa !172
  %arrayidx21 = getelementptr inbounds i32* %1, i64 5, !dbg !177
  store i32 %inc1, i32* %arrayidx21, align 4, !dbg !177, !tbaa !172
  %inc122 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !177
  store i32 %inc1, i32* %inc122, align 4, !dbg !177, !tbaa !172
  %arrayidx2370 = getelementptr inbounds double* %call11, i64 3, !dbg !178
  %arrayidx23 = bitcast double* %arrayidx2370 to i32*, !dbg !178
  store i32 %inc2, i32* %arrayidx23, align 4, !dbg !178, !tbaa !172
  %inc224 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !178
  store i32 %inc2, i32* %inc224, align 4, !dbg !178, !tbaa !172
  %add.ptr = getelementptr inbounds i32* %1, i64 7, !dbg !179
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !179
  store i32* %add.ptr, i32** %rowind, align 8, !dbg !179, !tbaa !127
  %idx.ext = sext i32 %nrow to i64, !dbg !180
  %add.ptr.sum = add i64 %idx.ext, 7, !dbg !180
  %add.ptr26 = getelementptr inbounds i32* %1, i64 %add.ptr.sum, !dbg !180
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !180
  store i32* %add.ptr26, i32** %colind, align 8, !dbg !180, !tbaa !127
  %add = add nsw i32 %nrow, 8, !dbg !181
  %add27 = add nsw i32 %add, %ncol, !dbg !181
  %div = sdiv i32 %add27, 2, !dbg !181
  %idx.ext28 = sext i32 %div to i64, !dbg !181
  %add.ptr29 = getelementptr inbounds double* %call11, i64 %idx.ext28, !dbg !181
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !181
  store double* %add.ptr29, double** %entries, align 8, !dbg !181, !tbaa !127
  ret void, !dbg !183
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !73), !dbg !184
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !74), !dbg !185
  tail call void @llvm.dbg.value(metadata !{i32 %rowid}, i64 0, metadata !75), !dbg !186
  tail call void @llvm.dbg.value(metadata !{i32 %colid}, i64 0, metadata !76), !dbg !187
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !77), !dbg !188
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !78), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %inc1}, i64 0, metadata !79), !dbg !190
  tail call void @llvm.dbg.value(metadata !{i32 %inc2}, i64 0, metadata !80), !dbg !191
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !192
  %cmp1 = icmp slt i32 %nrow, 0, !dbg !192
  %or.cond = or i1 %cmp, %cmp1, !dbg !192
  %cmp3 = icmp slt i32 %ncol, 0, !dbg !192
  %or.cond55 = or i1 %or.cond, %cmp3, !dbg !192
  br i1 %or.cond55, label %if.then, label %lor.lhs.false4, !dbg !192

lor.lhs.false4:                                   ; preds = %entry
  %cmp5 = icmp eq i32 %inc1, %ncol, !dbg !192
  %cmp6 = icmp eq i32 %inc2, 1, !dbg !192
  %or.cond56 = and i1 %cmp5, %cmp6, !dbg !192
  br i1 %or.cond56, label %if.end, label %lor.lhs.false7, !dbg !192

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %cmp8 = icmp eq i32 %inc1, 1, !dbg !192
  %cmp10 = icmp eq i32 %inc2, %nrow, !dbg !192
  %or.cond57 = and i1 %cmp8, %cmp10, !dbg !192
  br i1 %or.cond57, label %if.end, label %if.then, !dbg !192

if.then:                                          ; preds = %lor.lhs.false7, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !193, !tbaa !127
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #5, !dbg !193
  tail call void @exit(i32 -1) #6, !dbg !195
  unreachable, !dbg !195

if.end:                                           ; preds = %lor.lhs.false7, %lor.lhs.false4
  %.off = add i32 %type, -1, !dbg !196
  %switch = icmp ult i32 %.off, 2, !dbg !196
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !196

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !197, !tbaa !127
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([70 x i8]* @.str6, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32 %type) #5, !dbg !197
  tail call void @exit(i32 -1) #6, !dbg !199
  unreachable, !dbg !199

sw.epilog:                                        ; preds = %if.end
  %call12 = tail call i32 @DenseMtx_nbytesNeeded(i32 %type, i32 %nrow, i32 %ncol) #7, !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !81), !dbg !200
  tail call void @DenseMtx_setNbytesInWorkspace(%struct._DenseMtx* %mtx, i32 %call12) #7, !dbg !201
  tail call void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2) #7, !dbg !202
  %cmp13 = icmp sgt i32 %nrow, 0, !dbg !203
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !203

if.then14:                                        ; preds = %sw.epilog
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !204
  %2 = load i32** %rowind, align 8, !dbg !204, !tbaa !127
  tail call void @IVramp(i32 %nrow, i32* %2, i32 0, i32 1) #5, !dbg !204
  br label %if.end15, !dbg !206

if.end15:                                         ; preds = %if.then14, %sw.epilog
  %cmp16 = icmp sgt i32 %ncol, 0, !dbg !207
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !207

if.then17:                                        ; preds = %if.end15
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !208
  %3 = load i32** %colind, align 8, !dbg !208, !tbaa !127
  tail call void @IVramp(i32 %ncol, i32* %3, i32 0, i32 1) #5, !dbg !208
  br label %if.end18, !dbg !210

if.end18:                                         ; preds = %if.then17, %if.end15
  ret void, !dbg !211
}

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_initFromBuffer(%struct._DenseMtx* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !86), !dbg !212
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !213
  br i1 %cmp, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !214, !tbaa !127
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str7, i64 0, i64 0), %struct._DenseMtx* null) #5, !dbg !214
  tail call void @exit(i32 -1) #6, !dbg !216
  unreachable, !dbg !216

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !217
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !217
  %1 = bitcast double* %call1 to i32*, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !87), !dbg !217
  %2 = load i32* %1, align 4, !dbg !218, !tbaa !172
  %arrayidx2 = getelementptr inbounds i32* %1, i64 1, !dbg !218
  %3 = load i32* %arrayidx2, align 4, !dbg !218, !tbaa !172
  %arrayidx317 = getelementptr inbounds double* %call1, i64 1, !dbg !218
  %arrayidx3 = bitcast double* %arrayidx317 to i32*, !dbg !218
  %4 = load i32* %arrayidx3, align 4, !dbg !218, !tbaa !172
  %arrayidx4 = getelementptr inbounds i32* %1, i64 3, !dbg !218
  %5 = load i32* %arrayidx4, align 4, !dbg !218, !tbaa !172
  %arrayidx518 = getelementptr inbounds double* %call1, i64 2, !dbg !218
  %arrayidx5 = bitcast double* %arrayidx518 to i32*, !dbg !218
  %6 = load i32* %arrayidx5, align 4, !dbg !218, !tbaa !172
  %arrayidx6 = getelementptr inbounds i32* %1, i64 5, !dbg !218
  %7 = load i32* %arrayidx6, align 4, !dbg !218, !tbaa !172
  %arrayidx719 = getelementptr inbounds double* %call1, i64 3, !dbg !218
  %arrayidx7 = bitcast double* %arrayidx719 to i32*, !dbg !218
  %8 = load i32* %arrayidx7, align 4, !dbg !218, !tbaa !172
  tail call void @DenseMtx_setFields(%struct._DenseMtx* %mtx, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #7, !dbg !218
  ret void, !dbg !219
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_initWithPointers(%struct._DenseMtx* %mtx, i32 %type, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32* %rowind, i32* %colind, double* %entries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !92), !dbg !220
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !93), !dbg !221
  tail call void @llvm.dbg.value(metadata !{i32 %rowid}, i64 0, metadata !94), !dbg !222
  tail call void @llvm.dbg.value(metadata !{i32 %colid}, i64 0, metadata !95), !dbg !223
  tail call void @llvm.dbg.value(metadata !{i32 %nrow}, i64 0, metadata !96), !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32 %ncol}, i64 0, metadata !97), !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32 %inc1}, i64 0, metadata !98), !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %inc2}, i64 0, metadata !99), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32* %rowind}, i64 0, metadata !100), !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32* %colind}, i64 0, metadata !101), !dbg !229
  tail call void @llvm.dbg.value(metadata !{double* %entries}, i64 0, metadata !102), !dbg !230
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !231
  %cmp1 = icmp slt i32 %nrow, 1, !dbg !231
  %or.cond = or i1 %cmp, %cmp1, !dbg !231
  %cmp3 = icmp slt i32 %ncol, 1, !dbg !231
  %or.cond59 = or i1 %or.cond, %cmp3, !dbg !231
  %cmp5 = icmp slt i32 %inc1, 0, !dbg !231
  %or.cond60 = or i1 %or.cond59, %cmp5, !dbg !231
  %cmp7 = icmp slt i32 %inc2, 0, !dbg !231
  %or.cond61 = or i1 %or.cond60, %cmp7, !dbg !231
  br i1 %or.cond61, label %if.then, label %lor.lhs.false8, !dbg !231

lor.lhs.false8:                                   ; preds = %entry
  %notlhs = icmp ne i32 %inc1, 1, !dbg !231
  %notrhs = icmp ne i32 %inc2, 1, !dbg !231
  %or.cond62.not = and i1 %notrhs, %notlhs, !dbg !231
  %cmp12 = icmp eq double* %entries, null, !dbg !231
  %or.cond63 = or i1 %or.cond62.not, %cmp12, !dbg !231
  %cmp14 = icmp eq i32* %colind, null, !dbg !231
  %or.cond64 = or i1 %or.cond63, %cmp14, !dbg !231
  %cmp16 = icmp eq i32* %rowind, null, !dbg !231
  %or.cond65 = or i1 %or.cond64, %cmp16, !dbg !231
  br i1 %or.cond65, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %lor.lhs.false8, %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !232, !tbaa !127
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([176 x i8]* @.str8, i64 0, i64 0), %struct._DenseMtx* %mtx, i32 %rowid, i32 %colid, i32 %nrow, i32 %ncol, i32 %inc1, i32 %inc2, i32* %rowind, i32* %colind, double* %entries) #5, !dbg !232
  tail call void @exit(i32 -1) #6, !dbg !234
  unreachable, !dbg !234

if.end:                                           ; preds = %lor.lhs.false8
  %.off = add i32 %type, -1, !dbg !235
  %switch = icmp ult i32 %.off, 2, !dbg !235
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !235

sw.default:                                       ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !236, !tbaa !127
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str9, i64 0, i64 0), i32 %type) #5, !dbg !236
  br label %sw.epilog, !dbg !238

sw.epilog:                                        ; preds = %if.end, %sw.default
  %type18 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !239
  store i32 %type, i32* %type18, align 4, !dbg !239, !tbaa !172
  %rowid19 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !240
  store i32 %rowid, i32* %rowid19, align 4, !dbg !240, !tbaa !172
  %colid20 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !241
  store i32 %colid, i32* %colid20, align 4, !dbg !241, !tbaa !172
  %nrow21 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !242
  store i32 %nrow, i32* %nrow21, align 4, !dbg !242, !tbaa !172
  %ncol22 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !243
  store i32 %ncol, i32* %ncol22, align 4, !dbg !243, !tbaa !172
  %inc123 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !244
  store i32 %inc1, i32* %inc123, align 4, !dbg !244, !tbaa !172
  %inc224 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !245
  store i32 %inc2, i32* %inc224, align 4, !dbg !245, !tbaa !172
  %rowind25 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !246
  store i32* %rowind, i32** %rowind25, align 8, !dbg !246, !tbaa !127
  %colind26 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !247
  store i32* %colind, i32** %colind26, align 8, !dbg !247, !tbaa !127
  %entries27 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !248
  store double* %entries, double** %entries27, align 8, !dbg !248, !tbaa !127
  ret void, !dbg !249
}

; Function Attrs: nounwind optsize uwtable
define void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !119), !dbg !250
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %a2}, i64 0, metadata !120), !dbg !251
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !252
  %cmp1 = icmp eq %struct._A2* %a2, null, !dbg !252
  %or.cond = or i1 %cmp, %cmp1, !dbg !252
  br i1 %or.cond, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !253, !tbaa !127
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._A2* %a2) #5, !dbg !253
  tail call void @exit(i32 -1) #6, !dbg !255
  unreachable, !dbg !255

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !256
  %1 = load i32* %type, align 4, !dbg !256, !tbaa !172
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !256
  %2 = load i32* %nrow, align 4, !dbg !256, !tbaa !172
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !256
  %3 = load i32* %ncol, align 4, !dbg !256, !tbaa !172
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !256
  %4 = load i32* %inc1, align 4, !dbg !256, !tbaa !172
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !256
  %5 = load i32* %inc2, align 4, !dbg !256, !tbaa !172
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !256
  %6 = load double** %entries, align 8, !dbg !256, !tbaa !127
  tail call void @A2_init(%struct._A2* %a2, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, double* %6) #5, !dbg !256
  ret void, !dbg !257
}

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16, metadata !51, metadata !57, metadata !71, metadata !82, metadata !88, metadata !103}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_nbytesNeeded", metadata !"DenseMtx_nbytesNeeded", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32)* @DenseMtx_nbytesNeeded, null, null, metadata !9, i32 20} ; [ DW_TAG_subprogram ] [line 16] [def] [scope 20] [DenseMtx_nbytesNeeded]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15}
!10 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 17]
!11 = metadata !{i32 786689, metadata !4, metadata !"nrow", metadata !5, i32 33554450, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 18]
!12 = metadata !{i32 786689, metadata !4, metadata !"ncol", metadata !5, i32 50331667, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 19]
!13 = metadata !{i32 786688, metadata !4, metadata !"nbytes", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 21]
!14 = metadata !{i32 786688, metadata !4, metadata !"ndouble", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndouble] [line 21]
!15 = metadata !{i32 786688, metadata !4, metadata !"nint", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nint] [line 21]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_nbytesInWorkspace", metadata !"DenseMtx_nbytesInWorkspace", metadata !"", i32 69, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*)* @DenseMtx_nbytesInWorkspace, null, null, metadata !49, i32 71} ; [ DW_TAG_subprogram ] [line 69] [def] [scope 71] [DenseMtx_nbytesInWorkspace]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8, metadata !19}
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"_DenseMtx", i32 29, i64 704, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DenseMtx] [line 29, size 704, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !33, metadata !34, metadata !37, metadata !46}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"type", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 30, size 32, align 32, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"rowid", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [rowid] [line 31, size 32, align 32, offset 32] [from int]
!26 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"colid", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [colid] [line 32, size 32, align 32, offset 64] [from int]
!27 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nrow", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nrow] [line 33, size 32, align 32, offset 96] [from int]
!28 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"ncol", i32 34, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [ncol] [line 34, size 32, align 32, offset 128] [from int]
!29 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"inc1", i32 35, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 35, size 32, align 32, offset 160] [from int]
!30 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"inc2", i32 36, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 36, size 32, align 32, offset 192] [from int]
!31 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"rowind", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [rowind] [line 37, size 64, align 64, offset 256] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"colind", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [colind] [line 38, size 64, align 64, offset 320] [from ]
!34 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"entries", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !35} ; [ DW_TAG_member ] [entries] [line 39, size 64, align 64, offset 384] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!36 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!37 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"wrkDV", i32 40, i64 192, i64 64, i64 448, i32 0, metadata !38} ; [ DW_TAG_member ] [wrkDV] [line 40, size 192, align 64, offset 448] [from DV]
!38 = metadata !{i32 786454, metadata !22, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!39 = metadata !{i32 786451, metadata !40, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !41, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!40 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45}
!42 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!43 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!44 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!45 = metadata !{i32 786445, metadata !40, metadata !39, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !35} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"next", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !47} ; [ DW_TAG_member ] [next] [line 41, size 64, align 64, offset 640] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!48 = metadata !{i32 786454, metadata !22, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786689, metadata !16, metadata !"mtx", metadata !5, i32 16777286, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 70]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_setNbytesInWorkspace", metadata !"DenseMtx_setNbytesInWorkspace", metadata !"", i32 88, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32)* @DenseMtx_setNbytesInWorkspace, null, null, metadata !54, i32 91} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 91] [DenseMtx_setNbytesInWorkspace]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !19, metadata !8}
!54 = metadata !{metadata !55, metadata !56}
!55 = metadata !{i32 786689, metadata !51, metadata !"mtx", metadata !5, i32 16777305, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 89]
!56 = metadata !{i32 786689, metadata !51, metadata !"nbytes", metadata !5, i32 33554522, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes] [line 90]
!57 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_setFields", metadata !"DenseMtx_setFields", metadata !"", i32 111, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32)* @DenseMtx_setFields, null, null, metadata !60, i32 120} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 120] [DenseMtx_setFields]
!58 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{null, metadata !19, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!60 = metadata !{metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70}
!61 = metadata !{i32 786689, metadata !57, metadata !"mtx", metadata !5, i32 16777328, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 112]
!62 = metadata !{i32 786689, metadata !57, metadata !"type", metadata !5, i32 33554545, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 113]
!63 = metadata !{i32 786689, metadata !57, metadata !"rowid", metadata !5, i32 50331762, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowid] [line 114]
!64 = metadata !{i32 786689, metadata !57, metadata !"colid", metadata !5, i32 67108979, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colid] [line 115]
!65 = metadata !{i32 786689, metadata !57, metadata !"nrow", metadata !5, i32 83886196, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 116]
!66 = metadata !{i32 786689, metadata !57, metadata !"ncol", metadata !5, i32 100663413, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 117]
!67 = metadata !{i32 786689, metadata !57, metadata !"inc1", metadata !5, i32 117440630, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc1] [line 118]
!68 = metadata !{i32 786689, metadata !57, metadata !"inc2", metadata !5, i32 134217847, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc2] [line 119]
!69 = metadata !{i32 786688, metadata !57, metadata !"dbuffer", metadata !5, i32 121, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dbuffer] [line 121]
!70 = metadata !{i32 786688, metadata !57, metadata !"ibuffer", metadata !5, i32 122, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 122]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_init", metadata !"DenseMtx_init", metadata !"", i32 183, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32)* @DenseMtx_init, null, null, metadata !72, i32 192} ; [ DW_TAG_subprogram ] [line 183] [def] [scope 192] [DenseMtx_init]
!72 = metadata !{metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81}
!73 = metadata !{i32 786689, metadata !71, metadata !"mtx", metadata !5, i32 16777400, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 184]
!74 = metadata !{i32 786689, metadata !71, metadata !"type", metadata !5, i32 33554617, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 185]
!75 = metadata !{i32 786689, metadata !71, metadata !"rowid", metadata !5, i32 50331834, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowid] [line 186]
!76 = metadata !{i32 786689, metadata !71, metadata !"colid", metadata !5, i32 67109051, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colid] [line 187]
!77 = metadata !{i32 786689, metadata !71, metadata !"nrow", metadata !5, i32 83886268, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 188]
!78 = metadata !{i32 786689, metadata !71, metadata !"ncol", metadata !5, i32 100663485, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 189]
!79 = metadata !{i32 786689, metadata !71, metadata !"inc1", metadata !5, i32 117440702, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc1] [line 190]
!80 = metadata !{i32 786689, metadata !71, metadata !"inc2", metadata !5, i32 134217919, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc2] [line 191]
!81 = metadata !{i32 786688, metadata !71, metadata !"nbytes", metadata !5, i32 193, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 193]
!82 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_initFromBuffer", metadata !"DenseMtx_initFromBuffer", metadata !"", i32 250, metadata !83, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*)* @DenseMtx_initFromBuffer, null, null, metadata !85, i32 252} ; [ DW_TAG_subprogram ] [line 250] [def] [scope 252] [DenseMtx_initFromBuffer]
!83 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !84, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!84 = metadata !{null, metadata !19}
!85 = metadata !{metadata !86, metadata !87}
!86 = metadata !{i32 786689, metadata !82, metadata !"mtx", metadata !5, i32 16777467, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 251]
!87 = metadata !{i32 786688, metadata !82, metadata !"ibuffer", metadata !5, i32 253, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ibuffer] [line 253]
!88 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_initWithPointers", metadata !"DenseMtx_initWithPointers", metadata !"", i32 279, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*)* @DenseMtx_initWithPointers, null, null, metadata !91, i32 291} ; [ DW_TAG_subprogram ] [line 279] [def] [scope 291] [DenseMtx_initWithPointers]
!89 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!90 = metadata !{null, metadata !19, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !32, metadata !32, metadata !35}
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!92 = metadata !{i32 786689, metadata !88, metadata !"mtx", metadata !5, i32 16777496, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 280]
!93 = metadata !{i32 786689, metadata !88, metadata !"type", metadata !5, i32 33554713, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 281]
!94 = metadata !{i32 786689, metadata !88, metadata !"rowid", metadata !5, i32 50331930, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowid] [line 282]
!95 = metadata !{i32 786689, metadata !88, metadata !"colid", metadata !5, i32 67109147, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colid] [line 283]
!96 = metadata !{i32 786689, metadata !88, metadata !"nrow", metadata !5, i32 83886364, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nrow] [line 284]
!97 = metadata !{i32 786689, metadata !88, metadata !"ncol", metadata !5, i32 100663581, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ncol] [line 285]
!98 = metadata !{i32 786689, metadata !88, metadata !"inc1", metadata !5, i32 117440798, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc1] [line 286]
!99 = metadata !{i32 786689, metadata !88, metadata !"inc2", metadata !5, i32 134218015, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inc2] [line 287]
!100 = metadata !{i32 786689, metadata !88, metadata !"rowind", metadata !5, i32 150995232, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowind] [line 288]
!101 = metadata !{i32 786689, metadata !88, metadata !"colind", metadata !5, i32 167772449, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colind] [line 289]
!102 = metadata !{i32 786689, metadata !88, metadata !"entries", metadata !5, i32 184549666, metadata !35, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [entries] [line 290]
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_setA2", metadata !"DenseMtx_setA2", metadata !"", i32 353, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DenseMtx*, %struct._A2*)* @DenseMtx_setA2, null, null, metadata !118, i32 356} ; [ DW_TAG_subprogram ] [line 353] [def] [scope 356] [DenseMtx_setA2]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !19, metadata !106}
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!107 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!108 = metadata !{i32 786451, metadata !109, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !110, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!109 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../A2/A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!111 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!112 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!113 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!114 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!115 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!116 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!117 = metadata !{i32 786445, metadata !109, metadata !108, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!118 = metadata !{metadata !119, metadata !120}
!119 = metadata !{i32 786689, metadata !103, metadata !"mtx", metadata !5, i32 16777570, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 354]
!120 = metadata !{i32 786689, metadata !103, metadata !"a2", metadata !5, i32 33554787, metadata !106, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a2] [line 355]
!121 = metadata !{i32 17, i32 0, metadata !4, null}
!122 = metadata !{i32 18, i32 0, metadata !4, null}
!123 = metadata !{i32 19, i32 0, metadata !4, null}
!124 = metadata !{i32 27, i32 0, metadata !4, null}
!125 = metadata !{i32 28, i32 0, metadata !126, null}
!126 = metadata !{i32 786443, metadata !1, metadata !4, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!127 = metadata !{metadata !"any pointer", metadata !128}
!128 = metadata !{metadata !"omnipotent char", metadata !129}
!129 = metadata !{metadata !"Simple C/C++ TBAA"}
!130 = metadata !{i32 31, i32 0, metadata !126, null}
!131 = metadata !{i32 33, i32 0, metadata !4, null}
!132 = metadata !{i32 34, i32 0, metadata !4, null}
!133 = metadata !{i32 37, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!135 = metadata !{i32 39, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !4, i32 38, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!137 = metadata !{i32 42, i32 0, metadata !136, null}
!138 = metadata !{i32 35, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!140 = metadata !{i32 47, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!142 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!143 = metadata !{i32 70, i32 0, metadata !16, null}
!144 = metadata !{i32 72, i32 0, metadata !16, null}
!145 = metadata !{i32 73, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !16, i32 72, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!147 = metadata !{i32 75, i32 0, metadata !146, null}
!148 = metadata !{i32 77, i32 0, metadata !16, null}
!149 = metadata !{i32 89, i32 0, metadata !51, null}
!150 = metadata !{i32 90, i32 0, metadata !51, null}
!151 = metadata !{i32 92, i32 0, metadata !51, null}
!152 = metadata !{i32 93, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !51, i32 92, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!154 = metadata !{i32 96, i32 0, metadata !153, null}
!155 = metadata !{i32 98, i32 0, metadata !51, null}
!156 = metadata !{i32 100, i32 0, metadata !51, null}
!157 = metadata !{i32 112, i32 0, metadata !57, null}
!158 = metadata !{i32 113, i32 0, metadata !57, null}
!159 = metadata !{i32 114, i32 0, metadata !57, null}
!160 = metadata !{i32 115, i32 0, metadata !57, null}
!161 = metadata !{i32 116, i32 0, metadata !57, null}
!162 = metadata !{i32 117, i32 0, metadata !57, null}
!163 = metadata !{i32 118, i32 0, metadata !57, null}
!164 = metadata !{i32 119, i32 0, metadata !57, null}
!165 = metadata !{i32 128, i32 0, metadata !57, null}
!166 = metadata !{i32 130, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !57, i32 129, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!168 = metadata !{i32 134, i32 0, metadata !167, null}
!169 = metadata !{i32 136, i32 0, metadata !57, null}
!170 = metadata !{i32 137, i32 0, metadata !57, null}
!171 = metadata !{i32 143, i32 0, metadata !57, null}
!172 = metadata !{metadata !"int", metadata !128}
!173 = metadata !{i32 144, i32 0, metadata !57, null}
!174 = metadata !{i32 145, i32 0, metadata !57, null}
!175 = metadata !{i32 146, i32 0, metadata !57, null}
!176 = metadata !{i32 147, i32 0, metadata !57, null}
!177 = metadata !{i32 148, i32 0, metadata !57, null}
!178 = metadata !{i32 149, i32 0, metadata !57, null}
!179 = metadata !{i32 155, i32 0, metadata !57, null}
!180 = metadata !{i32 156, i32 0, metadata !57, null}
!181 = metadata !{i32 160, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !57, i32 159, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!183 = metadata !{i32 172, i32 0, metadata !57, null}
!184 = metadata !{i32 184, i32 0, metadata !71, null}
!185 = metadata !{i32 185, i32 0, metadata !71, null}
!186 = metadata !{i32 186, i32 0, metadata !71, null}
!187 = metadata !{i32 187, i32 0, metadata !71, null}
!188 = metadata !{i32 188, i32 0, metadata !71, null}
!189 = metadata !{i32 189, i32 0, metadata !71, null}
!190 = metadata !{i32 190, i32 0, metadata !71, null}
!191 = metadata !{i32 191, i32 0, metadata !71, null}
!192 = metadata !{i32 199, i32 0, metadata !71, null}
!193 = metadata !{i32 201, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !71, i32 200, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!195 = metadata !{i32 205, i32 0, metadata !194, null}
!196 = metadata !{i32 207, i32 0, metadata !71, null}
!197 = metadata !{i32 212, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !71, i32 207, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!199 = metadata !{i32 216, i32 0, metadata !198, null}
!200 = metadata !{i32 224, i32 0, metadata !71, null}
!201 = metadata !{i32 225, i32 0, metadata !71, null}
!202 = metadata !{i32 231, i32 0, metadata !71, null}
!203 = metadata !{i32 232, i32 0, metadata !71, null}
!204 = metadata !{i32 233, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !71, i32 232, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!206 = metadata !{i32 234, i32 0, metadata !205, null}
!207 = metadata !{i32 235, i32 0, metadata !71, null}
!208 = metadata !{i32 236, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !71, i32 235, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!210 = metadata !{i32 237, i32 0, metadata !209, null}
!211 = metadata !{i32 238, i32 0, metadata !71, null}
!212 = metadata !{i32 251, i32 0, metadata !82, null}
!213 = metadata !{i32 259, i32 0, metadata !82, null}
!214 = metadata !{i32 260, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !82, i32 259, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!216 = metadata !{i32 262, i32 0, metadata !215, null}
!217 = metadata !{i32 264, i32 0, metadata !82, null}
!218 = metadata !{i32 265, i32 0, metadata !82, null}
!219 = metadata !{i32 268, i32 0, metadata !82, null}
!220 = metadata !{i32 280, i32 0, metadata !88, null}
!221 = metadata !{i32 281, i32 0, metadata !88, null}
!222 = metadata !{i32 282, i32 0, metadata !88, null}
!223 = metadata !{i32 283, i32 0, metadata !88, null}
!224 = metadata !{i32 284, i32 0, metadata !88, null}
!225 = metadata !{i32 285, i32 0, metadata !88, null}
!226 = metadata !{i32 286, i32 0, metadata !88, null}
!227 = metadata !{i32 287, i32 0, metadata !88, null}
!228 = metadata !{i32 288, i32 0, metadata !88, null}
!229 = metadata !{i32 289, i32 0, metadata !88, null}
!230 = metadata !{i32 290, i32 0, metadata !88, null}
!231 = metadata !{i32 297, i32 0, metadata !88, null}
!232 = metadata !{i32 300, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !88, i32 299, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!234 = metadata !{i32 308, i32 0, metadata !233, null}
!235 = metadata !{i32 310, i32 0, metadata !88, null}
!236 = metadata !{i32 315, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !88, i32 310, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!238 = metadata !{i32 317, i32 0, metadata !237, null}
!239 = metadata !{i32 325, i32 0, metadata !88, null}
!240 = metadata !{i32 326, i32 0, metadata !88, null}
!241 = metadata !{i32 327, i32 0, metadata !88, null}
!242 = metadata !{i32 328, i32 0, metadata !88, null}
!243 = metadata !{i32 329, i32 0, metadata !88, null}
!244 = metadata !{i32 330, i32 0, metadata !88, null}
!245 = metadata !{i32 331, i32 0, metadata !88, null}
!246 = metadata !{i32 337, i32 0, metadata !88, null}
!247 = metadata !{i32 338, i32 0, metadata !88, null}
!248 = metadata !{i32 339, i32 0, metadata !88, null}
!249 = metadata !{i32 341, i32 0, metadata !88, null}
!250 = metadata !{i32 354, i32 0, metadata !103, null}
!251 = metadata !{i32 355, i32 0, metadata !103, null}
!252 = metadata !{i32 362, i32 0, metadata !103, null}
!253 = metadata !{i32 363, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !103, i32 362, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_init.c]
!255 = metadata !{i32 365, i32 0, metadata !254, null}
!256 = metadata !{i32 376, i32 0, metadata !103, null}
!257 = metadata !{i32 378, i32 0, metadata !103, null}

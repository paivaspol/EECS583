; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_shiftBase(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_push(%p,%f)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_min(%p), size = %d, vec = %p\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_max(%p), size = %d, vec = %p\00", align 1
@.str4 = private unnamed_addr constant [49 x i8] c"\0A fatal error in DV_sum(%p), size = %d, vec = %p\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DV_sortUp(%p), size = %d, vec = %p\00", align 1
@.str6 = private unnamed_addr constant [54 x i8] c"\0A fatal error in DV_sortDown(%p), size = %d, vec = %p\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DV_ramp(%p,%f,%f), size = %d, vec = %p\00", align 1
@.str8 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DV_shuffle(%p,%d), size = %d, vec = %p\00", align 1
@.str9 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_sizeOf(%p)\0A bad input \0A\00", align 1
@.str10 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_first(%p)\0A bad input\00", align 1
@.str11 = private unnamed_addr constant [43 x i8] c"\0A fatal error in DV_next(%p,%p)\0A bad input\00", align 1
@.str12 = private unnamed_addr constant [64 x i8] c"\0A fatal error in DV_next(%p,%p)\0A offset = %d, must be in [0,%d)\00", align 1
@.str13 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_fill(%p,%f)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [41 x i8] c"\0A fatal error in DV_zero(%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [44 x i8] c"\0A fatal error in DV_copy(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @DV_shiftBase(%struct._DV* %dv, i32 %offset) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !21), !dbg !97
  tail call void @llvm.dbg.value(metadata !{i32 %offset}, i64 0, metadata !22), !dbg !98
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !99
  br i1 %cmp, label %if.then, label %if.end, !dbg !99

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !100, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), %struct._DV* null, i32 %offset) #5, !dbg !100
  tail call void @exit(i32 -1) #6, !dbg !105
  unreachable, !dbg !105

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !106
  %1 = load double** %vec, align 8, !dbg !106, !tbaa !102
  %idx.ext = sext i32 %offset to i64, !dbg !106
  %add.ptr = getelementptr inbounds double* %1, i64 %idx.ext, !dbg !106
  store double* %add.ptr, double** %vec, align 8, !dbg !106, !tbaa !102
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !107
  %2 = load i32* %maxsize, align 4, !dbg !107, !tbaa !108
  %sub = sub nsw i32 %2, %offset, !dbg !107
  store i32 %sub, i32* %maxsize, align 4, !dbg !107, !tbaa !108
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !109
  %3 = load i32* %size, align 4, !dbg !109, !tbaa !108
  %sub1 = sub nsw i32 %3, %offset, !dbg !109
  store i32 %sub1, i32* %size, align 4, !dbg !109, !tbaa !108
  ret void, !dbg !110
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @DV_push(%struct._DV* %dv, double %val) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !27), !dbg !111
  tail call void @llvm.dbg.value(metadata !{double %val}, i64 0, metadata !28), !dbg !112
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !114, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._DV* null, double %val) #5, !dbg !114
  tail call void @exit(i32 -1) #6, !dbg !116
  unreachable, !dbg !116

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !117
  %1 = load i32* %size, align 4, !dbg !117, !tbaa !108
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !117
  %2 = load i32* %maxsize, align 4, !dbg !117, !tbaa !108
  %cmp1 = icmp eq i32 %1, %2, !dbg !117
  br i1 %cmp1, label %if.then2, label %if.end8, !dbg !117

if.then2:                                         ; preds = %if.end
  %cmp4 = icmp sgt i32 %1, 0, !dbg !118
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !118

if.then5:                                         ; preds = %if.then2
  %mul = shl nsw i32 %1, 1, !dbg !120
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 %mul) #5, !dbg !120
  br label %if.end8, !dbg !122

if.else:                                          ; preds = %if.then2
  tail call void @DV_setMaxsize(%struct._DV* %dv, i32 10) #5, !dbg !123
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.else, %if.end
  %3 = load i32* %size, align 4, !dbg !125, !tbaa !108
  %inc = add nsw i32 %3, 1, !dbg !125
  store i32 %inc, i32* %size, align 4, !dbg !125, !tbaa !108
  %idxprom = sext i32 %3 to i64, !dbg !125
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !125
  %4 = load double** %vec, align 8, !dbg !125, !tbaa !102
  %arrayidx = getelementptr inbounds double* %4, i64 %idxprom, !dbg !125
  store double %val, double* %arrayidx, align 8, !dbg !125, !tbaa !126
  ret void, !dbg !127
}

; Function Attrs: optsize
declare void @DV_setMaxsize(%struct._DV*, i32) #4

; Function Attrs: nounwind optsize uwtable
define double @DV_min(%struct._DV* %dv) #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !33), !dbg !128
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !34), !dbg !129
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !130
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !130

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !130
  %0 = load i32* %size, align 4, !dbg !130, !tbaa !108
  %cmp1 = icmp slt i32 %0, 1, !dbg !130
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !130

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !130
  %1 = load double** %vec, align 8, !dbg !130, !tbaa !102
  %cmp3 = icmp eq double* %1, null, !dbg !130
  br i1 %cmp3, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !131, !tbaa !102
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !131
  %4 = load double** %vec5, align 8, !dbg !131, !tbaa !102
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #5, !dbg !131
  call void @exit(i32 -1) #6, !dbg !133
  unreachable, !dbg !133

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = call double @DVmin(i32 %0, double* %1, i32* %i) #5, !dbg !134
  ret double %call8, !dbg !134
}

; Function Attrs: optsize
declare double @DVmin(i32, double*, i32*) #4

; Function Attrs: nounwind optsize uwtable
define double @DV_max(%struct._DV* %dv) #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !37), !dbg !135
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !38), !dbg !136
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !137
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !137

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !137
  %0 = load i32* %size, align 4, !dbg !137, !tbaa !108
  %cmp1 = icmp slt i32 %0, 1, !dbg !137
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !137

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !137
  %1 = load double** %vec, align 8, !dbg !137, !tbaa !102
  %cmp3 = icmp eq double* %1, null, !dbg !137
  br i1 %cmp3, label %if.then, label %if.end, !dbg !137

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !138, !tbaa !102
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !138
  %4 = load double** %vec5, align 8, !dbg !138, !tbaa !102
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #5, !dbg !138
  call void @exit(i32 -1) #6, !dbg !140
  unreachable, !dbg !140

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = call double @DVmax(i32 %0, double* %1, i32* %i) #5, !dbg !141
  ret double %call8, !dbg !141
}

; Function Attrs: optsize
declare double @DVmax(i32, double*, i32*) #4

; Function Attrs: nounwind optsize uwtable
define double @DV_sum(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !41), !dbg !142
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !143
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !143

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !143
  %0 = load i32* %size, align 4, !dbg !143, !tbaa !108
  %cmp1 = icmp slt i32 %0, 1, !dbg !143
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !143

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !143
  %1 = load double** %vec, align 8, !dbg !143, !tbaa !102
  %cmp3 = icmp eq double* %1, null, !dbg !143
  br i1 %cmp3, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !144, !tbaa !102
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !144
  %4 = load double** %vec5, align 8, !dbg !144, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8]* @.str4, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #5, !dbg !144
  tail call void @exit(i32 -1) #6, !dbg !146
  unreachable, !dbg !146

if.end:                                           ; preds = %lor.lhs.false2
  %call8 = tail call double @DVsum(i32 %0, double* %1) #5, !dbg !147
  ret double %call8, !dbg !147
}

; Function Attrs: optsize
declare double @DVsum(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @DV_sortUp(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !46), !dbg !148
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !149
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !149

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !149
  %0 = load i32* %size, align 4, !dbg !149, !tbaa !108
  %cmp1 = icmp slt i32 %0, 1, !dbg !149
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !149

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !149
  %1 = load double** %vec, align 8, !dbg !149, !tbaa !102
  %cmp3 = icmp eq double* %1, null, !dbg !149
  br i1 %cmp3, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !150, !tbaa !102
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !150
  %4 = load double** %vec5, align 8, !dbg !150, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #5, !dbg !150
  tail call void @exit(i32 -1) #6, !dbg !152
  unreachable, !dbg !152

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @DVqsortUp(i32 %0, double* %1) #5, !dbg !153
  ret void, !dbg !154
}

; Function Attrs: optsize
declare void @DVqsortUp(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @DV_sortDown(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !49), !dbg !155
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !156
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !156

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !156
  %0 = load i32* %size, align 4, !dbg !156, !tbaa !108
  %cmp1 = icmp slt i32 %0, 1, !dbg !156
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !156

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !156
  %1 = load double** %vec, align 8, !dbg !156, !tbaa !102
  %cmp3 = icmp eq double* %1, null, !dbg !156
  br i1 %cmp3, label %if.then, label %if.end, !dbg !156

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !157, !tbaa !102
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !157
  %4 = load double** %vec5, align 8, !dbg !157, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([54 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, i32 %2, double* %4) #5, !dbg !157
  tail call void @exit(i32 -1) #6, !dbg !159
  unreachable, !dbg !159

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @DVqsortDown(i32 %0, double* %1) #5, !dbg !160
  ret void, !dbg !161
}

; Function Attrs: optsize
declare void @DVqsortDown(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @DV_ramp(%struct._DV* %dv, double %base, double %incr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !54), !dbg !162
  tail call void @llvm.dbg.value(metadata !{double %base}, i64 0, metadata !55), !dbg !163
  tail call void @llvm.dbg.value(metadata !{double %incr}, i64 0, metadata !56), !dbg !164
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !165
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !165

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !165
  %0 = load i32* %size, align 4, !dbg !165, !tbaa !108
  %cmp1 = icmp slt i32 %0, 1, !dbg !165
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !165

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !165
  %1 = load double** %vec, align 8, !dbg !165, !tbaa !102
  %cmp3 = icmp eq double* %1, null, !dbg !165
  br i1 %cmp3, label %if.then, label %if.end, !dbg !165

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !166, !tbaa !102
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !166
  %4 = load double** %vec5, align 8, !dbg !166, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._DV* %dv, double %base, double %incr, i32 %2, double* %4) #5, !dbg !166
  tail call void @exit(i32 -1) #6, !dbg !168
  unreachable, !dbg !168

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @DVramp(i32 %0, double* %1, double %base, double %incr) #5, !dbg !169
  ret void, !dbg !170
}

; Function Attrs: optsize
declare void @DVramp(i32, double*, double, double) #4

; Function Attrs: nounwind optsize uwtable
define void @DV_shuffle(%struct._DV* %dv, i32 %seed) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !59), !dbg !171
  tail call void @llvm.dbg.value(metadata !{i32 %seed}, i64 0, metadata !60), !dbg !172
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !173
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !173

lor.lhs.false:                                    ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !173
  %0 = load i32* %size, align 4, !dbg !173, !tbaa !108
  %cmp1 = icmp slt i32 %0, 1, !dbg !173
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !173

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !173
  %1 = load double** %vec, align 8, !dbg !173, !tbaa !102
  %cmp3 = icmp eq double* %1, null, !dbg !173
  br i1 %cmp3, label %if.then, label %if.end, !dbg !173

if.then:                                          ; preds = %lor.lhs.false, %entry, %lor.lhs.false2
  %2 = phi i32 [ %0, %lor.lhs.false2 ], [ 0, %entry ], [ %0, %lor.lhs.false ]
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !174, !tbaa !102
  %vec5 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !174
  %4 = load double** %vec5, align 8, !dbg !174, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, i32 %seed, i32 %2, double* %4) #5, !dbg !174
  tail call void @exit(i32 -1) #6, !dbg !176
  unreachable, !dbg !176

if.end:                                           ; preds = %lor.lhs.false2
  tail call void @DVshuffle(i32 %0, double* %1, i32 %seed) #5, !dbg !177
  ret void, !dbg !178
}

; Function Attrs: optsize
declare void @DVshuffle(i32, double*, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @DV_sizeOf(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !65), !dbg !179
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !180
  br i1 %cmp, label %if.then, label %if.end, !dbg !180

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !181, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str9, i64 0, i64 0), %struct._DV* null) #5, !dbg !181
  tail call void @exit(i32 -1) #6, !dbg !183
  unreachable, !dbg !183

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !184, i64 0, metadata !66), !dbg !185
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !186
  %1 = load i32* %owned, align 4, !dbg !186, !tbaa !108
  %cmp1 = icmp eq i32 %1, 1, !dbg !186
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !186

if.then2:                                         ; preds = %if.end
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !187
  %2 = load i32* %maxsize, align 4, !dbg !187, !tbaa !108
  %mul = shl i32 %2, 3, !dbg !187
  %add = add i32 %mul, 24, !dbg !187
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !66), !dbg !187
  br label %if.end5, !dbg !189

if.end5:                                          ; preds = %if.then2, %if.end
  %nbytes.0 = phi i32 [ %add, %if.then2 ], [ 24, %if.end ]
  ret i32 %nbytes.0, !dbg !190
}

; Function Attrs: nounwind optsize uwtable
define double* @DV_first(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !71), !dbg !191
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !192
  br i1 %cmp, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !193, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str10, i64 0, i64 0), %struct._DV* null) #5, !dbg !193
  tail call void @exit(i32 -1) #6, !dbg !195
  unreachable, !dbg !195

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !196
  %1 = load i32* %size, align 4, !dbg !196, !tbaa !108
  %cmp1 = icmp eq i32 %1, 0, !dbg !196
  br i1 %cmp1, label %if.end3, label %if.else, !dbg !196

if.else:                                          ; preds = %if.end
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !197
  %2 = load double** %vec, align 8, !dbg !197, !tbaa !102
  tail call void @llvm.dbg.value(metadata !{double* %2}, i64 0, metadata !72), !dbg !197
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.else
  %pd.0 = phi double* [ %2, %if.else ], [ null, %if.end ]
  ret double* %pd.0, !dbg !199
}

; Function Attrs: nounwind optsize uwtable
define double* @DV_next(%struct._DV* %dv, double* %pd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !77), !dbg !200
  tail call void @llvm.dbg.value(metadata !{double* %pd}, i64 0, metadata !78), !dbg !201
  %cmp = icmp eq double* %pd, null, !dbg !202
  br i1 %cmp, label %if.then, label %if.end, !dbg !202

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !203, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str11, i64 0, i64 0), %struct._DV* %dv, double* null) #5, !dbg !203
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !205, !tbaa !102
  %call1 = tail call i32 @fflush(%struct._IO_FILE* %1) #5, !dbg !205
  tail call void @exit(i32 -1) #6, !dbg !206
  unreachable, !dbg !206

if.end:                                           ; preds = %entry
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !207
  %2 = load double** %vec, align 8, !dbg !207, !tbaa !102
  %sub.ptr.lhs.cast = ptrtoint double* %pd to i64, !dbg !207
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64, !dbg !207
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !207
  %sub.ptr.div29 = lshr exact i64 %sub.ptr.sub, 3, !dbg !207
  %conv = trunc i64 %sub.ptr.div29 to i32, !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !79), !dbg !207
  %cmp2 = icmp sgt i32 %conv, -1, !dbg !207
  %size7.phi.trans.insert = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0
  %.pre = load i32* %size7.phi.trans.insert, align 4, !dbg !208, !tbaa !108
  %cmp4 = icmp slt i32 %conv, %.pre, !dbg !207
  %or.cond = and i1 %cmp2, %cmp4, !dbg !207
  br i1 %or.cond, label %if.else, label %if.then6, !dbg !207

if.then6:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !208, !tbaa !102
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([64 x i8]* @.str12, i64 0, i64 0), %struct._DV* %dv, double* %pd, i32 %conv, i32 %.pre) #5, !dbg !208
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !210, !tbaa !102
  %call9 = tail call i32 @fflush(%struct._IO_FILE* %4) #5, !dbg !210
  tail call void @exit(i32 -1) #6, !dbg !211
  unreachable, !dbg !211

if.else:                                          ; preds = %if.end
  %sub = add nsw i32 %.pre, -1, !dbg !212
  %cmp11 = icmp eq i32 %conv, %sub, !dbg !212
  %incdec.ptr = getelementptr inbounds double* %pd, i64 1, !dbg !213
  tail call void @llvm.dbg.value(metadata !{double* %incdec.ptr}, i64 0, metadata !78), !dbg !213
  %pd.addr.0 = select i1 %cmp11, double* null, double* %incdec.ptr, !dbg !212
  ret double* %pd.addr.0, !dbg !215
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @DV_fill(%struct._DV* %dv, double %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !82), !dbg !216
  tail call void @llvm.dbg.value(metadata !{double %value}, i64 0, metadata !83), !dbg !217
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !218
  br i1 %cmp, label %if.then, label %if.end, !dbg !218

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !219, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str13, i64 0, i64 0), %struct._DV* null, double %value) #5, !dbg !219
  tail call void @exit(i32 -1) #6, !dbg !221
  unreachable, !dbg !221

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !222
  %1 = load i32* %size, align 4, !dbg !222, !tbaa !108
  %cmp1 = icmp sgt i32 %1, 0, !dbg !222
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !222

if.then2:                                         ; preds = %if.end
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !223
  %2 = load double** %vec, align 8, !dbg !223, !tbaa !102
  tail call void @DVfill(i32 %1, double* %2, double %value) #5, !dbg !223
  br label %if.end4, !dbg !225

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !226
}

; Function Attrs: optsize
declare void @DVfill(i32, double*, double) #4

; Function Attrs: nounwind optsize uwtable
define void @DV_zero(%struct._DV* %dv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !86), !dbg !227
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !228
  br i1 %cmp, label %if.then, label %if.end, !dbg !228

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !229, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str14, i64 0, i64 0), %struct._DV* null) #5, !dbg !229
  tail call void @exit(i32 -1) #6, !dbg !231
  unreachable, !dbg !231

if.end:                                           ; preds = %entry
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !232
  %1 = load i32* %size, align 4, !dbg !232, !tbaa !108
  %cmp1 = icmp sgt i32 %1, 0, !dbg !232
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !232

if.then2:                                         ; preds = %if.end
  %vec = getelementptr inbounds %struct._DV* %dv, i64 0, i32 3, !dbg !233
  %2 = load double** %vec, align 8, !dbg !233, !tbaa !102
  tail call void @DVzero(i32 %1, double* %2) #5, !dbg !233
  br label %if.end4, !dbg !235

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !236
}

; Function Attrs: optsize
declare void @DVzero(i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define void @DV_copy(%struct._DV* %dv1, %struct._DV* %dv2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv1}, i64 0, metadata !91), !dbg !237
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv2}, i64 0, metadata !92), !dbg !238
  %cmp = icmp eq %struct._DV* %dv1, null, !dbg !239
  %cmp1 = icmp eq %struct._DV* %dv2, null, !dbg !239
  %or.cond = or i1 %cmp, %cmp1, !dbg !239
  br i1 %or.cond, label %if.then, label %if.end, !dbg !239

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !240, !tbaa !102
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str15, i64 0, i64 0), %struct._DV* %dv1, %struct._DV* %dv2) #5, !dbg !240
  tail call void @exit(i32 -1) #6, !dbg !242
  unreachable, !dbg !242

if.end:                                           ; preds = %entry
  %size2 = getelementptr inbounds %struct._DV* %dv1, i64 0, i32 0, !dbg !243
  %1 = load i32* %size2, align 4, !dbg !243, !tbaa !108
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !94), !dbg !243
  %size3 = getelementptr inbounds %struct._DV* %dv2, i64 0, i32 0, !dbg !244
  %2 = load i32* %size3, align 4, !dbg !244, !tbaa !108
  %cmp4 = icmp sgt i32 %1, %2, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !94), !dbg !245
  %. = select i1 %cmp4, i32 %2, i32 %1, !dbg !244
  %vec = getelementptr inbounds %struct._DV* %dv1, i64 0, i32 3, !dbg !247
  %3 = load double** %vec, align 8, !dbg !247, !tbaa !102
  tail call void @llvm.dbg.value(metadata !{double* %3}, i64 0, metadata !95), !dbg !247
  %vec8 = getelementptr inbounds %struct._DV* %dv2, i64 0, i32 3, !dbg !248
  %4 = load double** %vec8, align 8, !dbg !248, !tbaa !102
  tail call void @llvm.dbg.value(metadata !{double* %4}, i64 0, metadata !96), !dbg !248
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !93), !dbg !249
  %cmp923 = icmp sgt i32 %., 0, !dbg !249
  br i1 %cmp923, label %for.body.lr.ph, label %for.end, !dbg !249

for.body.lr.ph:                                   ; preds = %if.end
  %5 = xor i32 %2, -1, !dbg !249
  %6 = xor i32 %1, -1, !dbg !249
  %7 = icmp sgt i32 %5, %6, !dbg !249
  %smax = select i1 %7, i32 %5, i32 %6, !dbg !249
  %8 = xor i32 %smax, -1, !dbg !249
  br label %for.body, !dbg !249

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double* %4, i64 %indvars.iv, !dbg !251
  %9 = load double* %arrayidx, align 8, !dbg !251, !tbaa !126
  %arrayidx11 = getelementptr inbounds double* %3, i64 %indvars.iv, !dbg !251
  store double %9, double* %arrayidx11, align 8, !dbg !251, !tbaa !126
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !249
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !249
  %exitcond = icmp eq i32 %lftr.wideiv, %8, !dbg !249
  br i1 %exitcond, label %for.end, label %for.body, !dbg !249

for.end:                                          ; preds = %for.body, %if.end
  ret void, !dbg !253
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !23, metadata !29, metadata !35, metadata !39, metadata !42, metadata !47, metadata !50, metadata !57, metadata !61, metadata !67, metadata !73, metadata !80, metadata !84, metadata !87}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_shiftBase", metadata !"DV_shiftBase", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*, i32)* @DV_shiftBase, null, null, metadata !20, i32 25} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 25] [DV_shiftBase]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/../DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!19 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786689, metadata !4, metadata !"dv", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 23]
!22 = metadata !{i32 786689, metadata !4, metadata !"offset", metadata !5, i32 33554456, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [offset] [line 24]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_push", metadata !"DV_push", metadata !"", i32 46, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*, double)* @DV_push, null, null, metadata !26, i32 49} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 49] [DV_push]
!24 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{null, metadata !8, metadata !19}
!26 = metadata !{metadata !27, metadata !28}
!27 = metadata !{i32 786689, metadata !23, metadata !"dv", metadata !5, i32 16777263, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 47]
!28 = metadata !{i32 786689, metadata !23, metadata !"val", metadata !5, i32 33554480, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 48]
!29 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_min", metadata !"DV_min", metadata !"", i32 75, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._DV*)* @DV_min, null, null, metadata !32, i32 77} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 77] [DV_min]
!30 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !19, metadata !8}
!32 = metadata !{metadata !33, metadata !34}
!33 = metadata !{i32 786689, metadata !29, metadata !"dv", metadata !5, i32 16777292, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 76]
!34 = metadata !{i32 786688, metadata !29, metadata !"i", metadata !5, i32 78, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 78]
!35 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_max", metadata !"DV_max", metadata !"", i32 88, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._DV*)* @DV_max, null, null, metadata !36, i32 90} ; [ DW_TAG_subprogram ] [line 88] [def] [scope 90] [DV_max]
!36 = metadata !{metadata !37, metadata !38}
!37 = metadata !{i32 786689, metadata !35, metadata !"dv", metadata !5, i32 16777305, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 89]
!38 = metadata !{i32 786688, metadata !35, metadata !"i", metadata !5, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 91]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_sum", metadata !"DV_sum", metadata !"", i32 101, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._DV*)* @DV_sum, null, null, metadata !40, i32 103} ; [ DW_TAG_subprogram ] [line 101] [def] [scope 103] [DV_sum]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786689, metadata !39, metadata !"dv", metadata !5, i32 16777318, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 102]
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_sortUp", metadata !"DV_sortUp", metadata !"", i32 120, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*)* @DV_sortUp, null, null, metadata !45, i32 122} ; [ DW_TAG_subprogram ] [line 120] [def] [scope 122] [DV_sortUp]
!43 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{null, metadata !8}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786689, metadata !42, metadata !"dv", metadata !5, i32 16777337, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 121]
!47 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_sortDown", metadata !"DV_sortDown", metadata !"", i32 134, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*)* @DV_sortDown, null, null, metadata !48, i32 136} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 136] [DV_sortDown]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786689, metadata !47, metadata !"dv", metadata !5, i32 16777351, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 135]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_ramp", metadata !"DV_ramp", metadata !"", i32 156, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*, double, double)* @DV_ramp, null, null, metadata !53, i32 160} ; [ DW_TAG_subprogram ] [line 156] [def] [scope 160] [DV_ramp]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{null, metadata !8, metadata !19, metadata !19}
!53 = metadata !{metadata !54, metadata !55, metadata !56}
!54 = metadata !{i32 786689, metadata !50, metadata !"dv", metadata !5, i32 16777373, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 157]
!55 = metadata !{i32 786689, metadata !50, metadata !"base", metadata !5, i32 33554590, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [base] [line 158]
!56 = metadata !{i32 786689, metadata !50, metadata !"incr", metadata !5, i32 50331807, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [incr] [line 159]
!57 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_shuffle", metadata !"DV_shuffle", metadata !"", i32 180, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*, i32)* @DV_shuffle, null, null, metadata !58, i32 183} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 183] [DV_shuffle]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786689, metadata !57, metadata !"dv", metadata !5, i32 16777397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 181]
!60 = metadata !{i32 786689, metadata !57, metadata !"seed", metadata !5, i32 33554614, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [seed] [line 182]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_sizeOf", metadata !"DV_sizeOf", metadata !"", i32 203, metadata !62, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*)* @DV_sizeOf, null, null, metadata !64, i32 205} ; [ DW_TAG_subprogram ] [line 203] [def] [scope 205] [DV_sizeOf]
!62 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!63 = metadata !{metadata !14, metadata !8}
!64 = metadata !{metadata !65, metadata !66}
!65 = metadata !{i32 786689, metadata !61, metadata !"dv", metadata !5, i32 16777420, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 204]
!66 = metadata !{i32 786688, metadata !61, metadata !"nbytes", metadata !5, i32 206, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes] [line 206]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_first", metadata !"DV_first", metadata !"", i32 229, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._DV*)* @DV_first, null, null, metadata !70, i32 231} ; [ DW_TAG_subprogram ] [line 229] [def] [scope 231] [DV_first]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !18, metadata !8}
!70 = metadata !{metadata !71, metadata !72}
!71 = metadata !{i32 786689, metadata !67, metadata !"dv", metadata !5, i32 16777446, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 230]
!72 = metadata !{i32 786688, metadata !67, metadata !"pd", metadata !5, i32 232, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pd] [line 232]
!73 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_next", metadata !"DV_next", metadata !"", i32 260, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._DV*, double*)* @DV_next, null, null, metadata !76, i32 263} ; [ DW_TAG_subprogram ] [line 260] [def] [scope 263] [DV_next]
!74 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !18, metadata !8, metadata !18}
!76 = metadata !{metadata !77, metadata !78, metadata !79}
!77 = metadata !{i32 786689, metadata !73, metadata !"dv", metadata !5, i32 16777477, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 261]
!78 = metadata !{i32 786689, metadata !73, metadata !"pd", metadata !5, i32 33554694, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pd] [line 262]
!79 = metadata !{i32 786688, metadata !73, metadata !"offset", metadata !5, i32 264, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 264]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_fill", metadata !"DV_fill", metadata !"", i32 318, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*, double)* @DV_fill, null, null, metadata !81, i32 321} ; [ DW_TAG_subprogram ] [line 318] [def] [scope 321] [DV_fill]
!81 = metadata !{metadata !82, metadata !83}
!82 = metadata !{i32 786689, metadata !80, metadata !"dv", metadata !5, i32 16777535, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 319]
!83 = metadata !{i32 786689, metadata !80, metadata !"value", metadata !5, i32 33554752, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 320]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_zero", metadata !"DV_zero", metadata !"", i32 347, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*)* @DV_zero, null, null, metadata !85, i32 349} ; [ DW_TAG_subprogram ] [line 347] [def] [scope 349] [DV_zero]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786689, metadata !84, metadata !"dv", metadata !5, i32 16777564, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 348]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_copy", metadata !"DV_copy", metadata !"", i32 376, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._DV*, %struct._DV*)* @DV_copy, null, null, metadata !90, i32 379} ; [ DW_TAG_subprogram ] [line 376] [def] [scope 379] [DV_copy]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{null, metadata !8, metadata !8}
!90 = metadata !{metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96}
!91 = metadata !{i32 786689, metadata !87, metadata !"dv1", metadata !5, i32 16777593, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv1] [line 377]
!92 = metadata !{i32 786689, metadata !87, metadata !"dv2", metadata !5, i32 33554810, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv2] [line 378]
!93 = metadata !{i32 786688, metadata !87, metadata !"ii", metadata !5, i32 380, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 380]
!94 = metadata !{i32 786688, metadata !87, metadata !"size", metadata !5, i32 380, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 380]
!95 = metadata !{i32 786688, metadata !87, metadata !"vec1", metadata !5, i32 381, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec1] [line 381]
!96 = metadata !{i32 786688, metadata !87, metadata !"vec2", metadata !5, i32 381, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vec2] [line 381]
!97 = metadata !{i32 23, i32 0, metadata !4, null}
!98 = metadata !{i32 24, i32 0, metadata !4, null}
!99 = metadata !{i32 26, i32 0, metadata !4, null}
!100 = metadata !{i32 27, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !4, i32 26, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!102 = metadata !{metadata !"any pointer", metadata !103}
!103 = metadata !{metadata !"omnipotent char", metadata !104}
!104 = metadata !{metadata !"Simple C/C++ TBAA"}
!105 = metadata !{i32 29, i32 0, metadata !101, null}
!106 = metadata !{i32 31, i32 0, metadata !4, null}
!107 = metadata !{i32 32, i32 0, metadata !4, null}
!108 = metadata !{metadata !"int", metadata !103}
!109 = metadata !{i32 33, i32 0, metadata !4, null}
!110 = metadata !{i32 35, i32 0, metadata !4, null}
!111 = metadata !{i32 47, i32 0, metadata !23, null}
!112 = metadata !{i32 48, i32 0, metadata !23, null}
!113 = metadata !{i32 50, i32 0, metadata !23, null}
!114 = metadata !{i32 51, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !23, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!116 = metadata !{i32 53, i32 0, metadata !115, null}
!117 = metadata !{i32 55, i32 0, metadata !23, null}
!118 = metadata !{i32 56, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !23, i32 55, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!120 = metadata !{i32 57, i32 0, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !119, i32 56, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!122 = metadata !{i32 58, i32 0, metadata !121, null} ; [ DW_TAG_imported_module ]
!123 = metadata !{i32 59, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !119, i32 58, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!125 = metadata !{i32 62, i32 0, metadata !23, null}
!126 = metadata !{metadata !"double", metadata !103}
!127 = metadata !{i32 64, i32 0, metadata !23, null}
!128 = metadata !{i32 76, i32 0, metadata !29, null}
!129 = metadata !{i32 78, i32 0, metadata !29, null}
!130 = metadata !{i32 80, i32 0, metadata !29, null}
!131 = metadata !{i32 81, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !29, i32 80, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!133 = metadata !{i32 83, i32 0, metadata !132, null}
!134 = metadata !{i32 85, i32 0, metadata !29, null}
!135 = metadata !{i32 89, i32 0, metadata !35, null}
!136 = metadata !{i32 91, i32 0, metadata !35, null}
!137 = metadata !{i32 93, i32 0, metadata !35, null}
!138 = metadata !{i32 94, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !35, i32 93, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!140 = metadata !{i32 96, i32 0, metadata !139, null}
!141 = metadata !{i32 98, i32 0, metadata !35, null}
!142 = metadata !{i32 102, i32 0, metadata !39, null}
!143 = metadata !{i32 104, i32 0, metadata !39, null}
!144 = metadata !{i32 105, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !39, i32 104, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!146 = metadata !{i32 107, i32 0, metadata !145, null}
!147 = metadata !{i32 109, i32 0, metadata !39, null}
!148 = metadata !{i32 121, i32 0, metadata !42, null}
!149 = metadata !{i32 123, i32 0, metadata !42, null}
!150 = metadata !{i32 124, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !42, i32 123, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!152 = metadata !{i32 127, i32 0, metadata !151, null}
!153 = metadata !{i32 129, i32 0, metadata !42, null}
!154 = metadata !{i32 131, i32 0, metadata !42, null}
!155 = metadata !{i32 135, i32 0, metadata !47, null}
!156 = metadata !{i32 137, i32 0, metadata !47, null}
!157 = metadata !{i32 138, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !47, i32 137, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!159 = metadata !{i32 141, i32 0, metadata !158, null}
!160 = metadata !{i32 143, i32 0, metadata !47, null}
!161 = metadata !{i32 145, i32 0, metadata !47, null}
!162 = metadata !{i32 157, i32 0, metadata !50, null}
!163 = metadata !{i32 158, i32 0, metadata !50, null}
!164 = metadata !{i32 159, i32 0, metadata !50, null}
!165 = metadata !{i32 161, i32 0, metadata !50, null}
!166 = metadata !{i32 162, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !50, i32 161, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!168 = metadata !{i32 165, i32 0, metadata !167, null}
!169 = metadata !{i32 167, i32 0, metadata !50, null}
!170 = metadata !{i32 169, i32 0, metadata !50, null}
!171 = metadata !{i32 181, i32 0, metadata !57, null}
!172 = metadata !{i32 182, i32 0, metadata !57, null}
!173 = metadata !{i32 184, i32 0, metadata !57, null}
!174 = metadata !{i32 185, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !57, i32 184, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!176 = metadata !{i32 188, i32 0, metadata !175, null}
!177 = metadata !{i32 190, i32 0, metadata !57, null}
!178 = metadata !{i32 192, i32 0, metadata !57, null}
!179 = metadata !{i32 204, i32 0, metadata !61, null}
!180 = metadata !{i32 208, i32 0, metadata !61, null}
!181 = metadata !{i32 209, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !61, i32 208, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!183 = metadata !{i32 211, i32 0, metadata !182, null}
!184 = metadata !{i32 24}
!185 = metadata !{i32 213, i32 0, metadata !61, null}
!186 = metadata !{i32 214, i32 0, metadata !61, null}
!187 = metadata !{i32 215, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !61, i32 214, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!189 = metadata !{i32 216, i32 0, metadata !188, null}
!190 = metadata !{i32 217, i32 0, metadata !61, null}
!191 = metadata !{i32 230, i32 0, metadata !67, null}
!192 = metadata !{i32 238, i32 0, metadata !67, null}
!193 = metadata !{i32 239, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !67, i32 238, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!195 = metadata !{i32 241, i32 0, metadata !194, null}
!196 = metadata !{i32 243, i32 0, metadata !67, null}
!197 = metadata !{i32 246, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !67, i32 245, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!199 = metadata !{i32 248, i32 0, metadata !67, null}
!200 = metadata !{i32 261, i32 0, metadata !73, null}
!201 = metadata !{i32 262, i32 0, metadata !73, null}
!202 = metadata !{i32 270, i32 0, metadata !73, null}
!203 = metadata !{i32 271, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !73, i32 270, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!205 = metadata !{i32 273, i32 0, metadata !204, null}
!206 = metadata !{i32 274, i32 0, metadata !204, null}
!207 = metadata !{i32 281, i32 0, metadata !73, null}
!208 = metadata !{i32 287, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !73, i32 281, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!210 = metadata !{i32 290, i32 0, metadata !209, null}
!211 = metadata !{i32 291, i32 0, metadata !209, null}
!212 = metadata !{i32 292, i32 0, metadata !73, null}
!213 = metadata !{i32 305, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !73, i32 299, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!215 = metadata !{i32 307, i32 0, metadata !73, null}
!216 = metadata !{i32 319, i32 0, metadata !80, null}
!217 = metadata !{i32 320, i32 0, metadata !80, null}
!218 = metadata !{i32 327, i32 0, metadata !80, null}
!219 = metadata !{i32 328, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !80, i32 327, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!221 = metadata !{i32 330, i32 0, metadata !220, null}
!222 = metadata !{i32 332, i32 0, metadata !80, null}
!223 = metadata !{i32 333, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !80, i32 332, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!225 = metadata !{i32 334, i32 0, metadata !224, null}
!226 = metadata !{i32 336, i32 0, metadata !80, null}
!227 = metadata !{i32 348, i32 0, metadata !84, null}
!228 = metadata !{i32 355, i32 0, metadata !84, null}
!229 = metadata !{i32 356, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !84, i32 355, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!231 = metadata !{i32 358, i32 0, metadata !230, null}
!232 = metadata !{i32 360, i32 0, metadata !84, null}
!233 = metadata !{i32 361, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !84, i32 360, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!235 = metadata !{i32 362, i32 0, metadata !234, null}
!236 = metadata !{i32 363, i32 0, metadata !84, null}
!237 = metadata !{i32 377, i32 0, metadata !87, null}
!238 = metadata !{i32 378, i32 0, metadata !87, null}
!239 = metadata !{i32 387, i32 0, metadata !87, null}
!240 = metadata !{i32 388, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !87, i32 387, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!242 = metadata !{i32 390, i32 0, metadata !241, null}
!243 = metadata !{i32 392, i32 0, metadata !87, null}
!244 = metadata !{i32 393, i32 0, metadata !87, null}
!245 = metadata !{i32 394, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !87, i32 393, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!247 = metadata !{i32 396, i32 0, metadata !87, null}
!248 = metadata !{i32 397, i32 0, metadata !87, null}
!249 = metadata !{i32 398, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !87, i32 398, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!251 = metadata !{i32 399, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !250, i32 398, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_util.c]
!253 = metadata !{i32 401, i32 0, metadata !87, null}

; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_nrow(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_ncol(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_inc1(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [41 x i8] c"\0A fatal error in A2_inc2(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [44 x i8] c"\0A fatal error in A2_entries(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad structure, entries is NULL\0A\00", align 1
@.str7 = private unnamed_addr constant [63 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str8 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_row(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\00", align 1
@.str9 = private unnamed_addr constant [46 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [67 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad structure, entries is NULL\0A\00", align 1
@.str11 = private unnamed_addr constant [66 x i8] c"\0A fatal error in A2_column(%p,%d)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str12 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_col(%p,%d)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\00", align 1
@.str13 = private unnamed_addr constant [55 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [79 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str15 = private unnamed_addr constant [76 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str16 = private unnamed_addr constant [75 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [75 x i8] c"\0A fatal error in A2_realEntry(%p,%d,%d,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str18 = private unnamed_addr constant [61 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [88 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str20 = private unnamed_addr constant [82 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str21 = private unnamed_addr constant [81 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str22 = private unnamed_addr constant [81 x i8] c"\0A fatal error in A2_complexEntry(%p,%d,%d,%p,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str23 = private unnamed_addr constant [58 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [82 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad type %d, must be SPOOLES_REAL\0A\00", align 1
@.str25 = private unnamed_addr constant [79 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad structure, entries is NULL\0A\00", align 1
@.str26 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str27 = private unnamed_addr constant [78 x i8] c"\0A fatal error in A2_setRealEntry(%p,%d,%d,%f)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str28 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input\0A\00", align 1
@.str29 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str30 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad structure, entries is NULL\0A\00", align 1
@.str31 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str32 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_setComplexEntry(%p,%d,%d,%f,%f)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str33 = private unnamed_addr constant [64 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input\0A\00", align 1
@.str34 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str35 = private unnamed_addr constant [85 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str36 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str37 = private unnamed_addr constant [84 x i8] c"\0A fatal error in A2_pointerToRealEntry(%p,%d,%d,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1
@.str38 = private unnamed_addr constant [70 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input\0A\00", align 1
@.str39 = private unnamed_addr constant [97 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad type %d, must be SPOOLES_COMPLEX\0A\00", align 1
@.str40 = private unnamed_addr constant [91 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad structure, entries is NULL\0A\00", align 1
@.str41 = private unnamed_addr constant [90 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input, irow = %d, n1 = %d\0A\00", align 1
@.str42 = private unnamed_addr constant [90 x i8] c"\0A fatal error in A2_pointerToComplexEntry(%p,%d,%d,%p,%p)\0A bad input, jcol = %d, n2 = %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @A2_nrow(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !24), !dbg !109
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !111, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), %struct._A2* null) #4, !dbg !111
  tail call void @exit(i32 -1) #5, !dbg !116
  unreachable, !dbg !116

if.end:                                           ; preds = %entry
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1, !dbg !117
  %1 = load i32* %n1, align 4, !dbg !117, !tbaa !118
  ret i32 %1, !dbg !117
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @A2_ncol(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !27), !dbg !119
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !120
  br i1 %cmp, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !121, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), %struct._A2* null) #4, !dbg !121
  tail call void @exit(i32 -1) #5, !dbg !123
  unreachable, !dbg !123

if.end:                                           ; preds = %entry
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2, !dbg !124
  %1 = load i32* %n2, align 4, !dbg !124, !tbaa !118
  ret i32 %1, !dbg !124
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_inc1(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !30), !dbg !125
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !126
  br i1 %cmp, label %if.then, label %if.end, !dbg !126

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !127, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str2, i64 0, i64 0), %struct._A2* null) #4, !dbg !127
  tail call void @exit(i32 -1) #5, !dbg !129
  unreachable, !dbg !129

if.end:                                           ; preds = %entry
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !130
  %1 = load i32* %inc1, align 4, !dbg !130, !tbaa !118
  ret i32 %1, !dbg !130
}

; Function Attrs: nounwind optsize uwtable
define i32 @A2_inc2(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !33), !dbg !131
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !132
  br i1 %cmp, label %if.then, label %if.end, !dbg !132

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !133, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([41 x i8]* @.str3, i64 0, i64 0), %struct._A2* null) #4, !dbg !133
  tail call void @exit(i32 -1) #5, !dbg !135
  unreachable, !dbg !135

if.end:                                           ; preds = %entry
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !136
  %1 = load i32* %inc2, align 4, !dbg !136, !tbaa !118
  ret i32 %1, !dbg !136
}

; Function Attrs: nounwind optsize uwtable
define double* @A2_entries(%struct._A2* %mtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !38), !dbg !137
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !138
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !139, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str4, i64 0, i64 0), %struct._A2* null) #4, !dbg !139
  tail call void @exit(i32 -1) #5, !dbg !141
  unreachable, !dbg !141

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !142
  %1 = load double** %entries, align 8, !dbg !142, !tbaa !113
  ret double* %1, !dbg !142
}

; Function Attrs: nounwind optsize uwtable
define double* @A2_row(%struct._A2* %mtx, i32 %irow) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !43), !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !44), !dbg !144
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !145
  br i1 %cmp, label %if.then, label %if.end, !dbg !145

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !146, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), %struct._A2* null, i32 %irow) #4, !dbg !146
  tail call void @exit(i32 -1) #5, !dbg !148
  unreachable, !dbg !148

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !149
  %1 = load double** %entries, align 8, !dbg !149, !tbaa !113
  %cmp1 = icmp eq double* %1, null, !dbg !149
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !149

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !150, !tbaa !113
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8]* @.str6, i64 0, i64 0), %struct._A2* %mtx, i32 %irow) #4, !dbg !150
  tail call void @exit(i32 -1) #5, !dbg !152
  unreachable, !dbg !152

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %irow, -1, !dbg !153
  %n18.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n18.phi.trans.insert, align 4, !dbg !154, !tbaa !118
  %cmp6 = icmp sgt i32 %.pre, %irow, !dbg !153
  %or.cond = and i1 %cmp5, %cmp6, !dbg !153
  br i1 %or.cond, label %if.end10, label %if.then7, !dbg !153

if.then7:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !154, !tbaa !113
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([63 x i8]* @.str7, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %irow, i32 %.pre) #4, !dbg !154
  tail call void @exit(i32 -1) #5, !dbg !156
  unreachable, !dbg !156

if.end10:                                         ; preds = %if.end4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !157
  %4 = load i32* %type, align 4, !dbg !157, !tbaa !118
  switch i32 %4, label %if.else23 [
    i32 1, label %if.then12
    i32 2, label %if.then16
  ], !dbg !157

if.then12:                                        ; preds = %if.end10
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !158
  %5 = load i32* %inc1, align 4, !dbg !158, !tbaa !118
  %mul = mul nsw i32 %5, %irow, !dbg !158
  br label %if.end27, !dbg !160

if.then16:                                        ; preds = %if.end10
  %mul18 = shl i32 %irow, 1, !dbg !161
  %inc119 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !161
  %6 = load i32* %inc119, align 4, !dbg !161, !tbaa !118
  %mul20 = mul nsw i32 %mul18, %6, !dbg !161
  br label %if.end27

if.else23:                                        ; preds = %if.end10
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !163, !tbaa !113
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([85 x i8]* @.str8, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %4) #4, !dbg !163
  tail call void @exit(i32 -1) #5, !dbg !165
  unreachable, !dbg !165

if.end27:                                         ; preds = %if.then16, %if.then12
  %idx.ext.pn.in = phi i32 [ %mul, %if.then12 ], [ %mul20, %if.then16 ]
  %idx.ext.pn = sext i32 %idx.ext.pn.in to i64, !dbg !158
  %row.0 = getelementptr inbounds double* %1, i64 %idx.ext.pn, !dbg !158
  ret double* %row.0, !dbg !166
}

; Function Attrs: nounwind optsize uwtable
define double* @A2_column(%struct._A2* %mtx, i32 %jcol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !48), !dbg !167
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !49), !dbg !168
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !169
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !170, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str9, i64 0, i64 0), %struct._A2* null, i32 %jcol) #4, !dbg !170
  tail call void @exit(i32 -1) #5, !dbg !172
  unreachable, !dbg !172

if.end:                                           ; preds = %entry
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !173
  %1 = load double** %entries, align 8, !dbg !173, !tbaa !113
  %cmp1 = icmp eq double* %1, null, !dbg !173
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !173

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !174, !tbaa !113
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([67 x i8]* @.str10, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol) #4, !dbg !174
  tail call void @exit(i32 -1) #5, !dbg !176
  unreachable, !dbg !176

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp sgt i32 %jcol, -1, !dbg !177
  %n28.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre = load i32* %n28.phi.trans.insert, align 4, !dbg !178, !tbaa !118
  %cmp6 = icmp sgt i32 %.pre, %jcol, !dbg !177
  %or.cond = and i1 %cmp5, %cmp6, !dbg !177
  br i1 %or.cond, label %if.end10, label %if.then7, !dbg !177

if.then7:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !113
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([66 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %jcol, i32 %.pre) #4, !dbg !178
  tail call void @exit(i32 -1) #5, !dbg !180
  unreachable, !dbg !180

if.end10:                                         ; preds = %if.end4
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !181
  %4 = load i32* %type, align 4, !dbg !181, !tbaa !118
  switch i32 %4, label %if.else23 [
    i32 1, label %if.then12
    i32 2, label %if.then16
  ], !dbg !181

if.then12:                                        ; preds = %if.end10
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !182
  %5 = load i32* %inc2, align 4, !dbg !182, !tbaa !118
  %mul = mul nsw i32 %5, %jcol, !dbg !182
  br label %if.end27, !dbg !184

if.then16:                                        ; preds = %if.end10
  %mul18 = shl i32 %jcol, 1, !dbg !185
  %inc219 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !185
  %6 = load i32* %inc219, align 4, !dbg !185, !tbaa !118
  %mul20 = mul nsw i32 %mul18, %6, !dbg !185
  br label %if.end27

if.else23:                                        ; preds = %if.end10
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !187, !tbaa !113
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([85 x i8]* @.str12, i64 0, i64 0), %struct._A2* %mtx, i32 %jcol, i32 %4) #4, !dbg !187
  tail call void @exit(i32 -1) #5, !dbg !189
  unreachable, !dbg !189

if.end27:                                         ; preds = %if.then16, %if.then12
  %idx.ext.pn.in = phi i32 [ %mul, %if.then12 ], [ %mul20, %if.then16 ]
  %idx.ext.pn = sext i32 %idx.ext.pn.in to i64, !dbg !182
  %col.0 = getelementptr inbounds double* %1, i64 %idx.ext.pn, !dbg !182
  ret double* %col.0, !dbg !190
}

; Function Attrs: nounwind optsize uwtable
define void @A2_realEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !55), !dbg !191
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !56), !dbg !192
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !57), !dbg !193
  tail call void @llvm.dbg.value(metadata !{double* %pValue}, i64 0, metadata !58), !dbg !194
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !195
  %cmp1 = icmp eq double* %pValue, null, !dbg !195
  %or.cond = or i1 %cmp, %cmp1, !dbg !195
  br i1 %or.cond, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #4, !dbg !196
  tail call void @exit(i32 -1) #5, !dbg !198
  unreachable, !dbg !198

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !199
  %1 = load i32* %type, align 4, !dbg !199, !tbaa !118
  %cmp2 = icmp eq i32 %1, 1, !dbg !199
  br i1 %cmp2, label %if.end6, label %if.then3, !dbg !199

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !200, !tbaa !113
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %1) #4, !dbg !200
  tail call void @exit(i32 -1) #5, !dbg !202
  unreachable, !dbg !202

if.end6:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !203
  %3 = load double** %entries, align 8, !dbg !203, !tbaa !113
  %cmp7 = icmp eq double* %3, null, !dbg !203
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !203

if.then8:                                         ; preds = %if.end6
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !204, !tbaa !113
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([76 x i8]* @.str15, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue) #4, !dbg !204
  tail call void @exit(i32 -1) #5, !dbg !206
  unreachable, !dbg !206

if.end10:                                         ; preds = %if.end6
  %cmp11 = icmp sgt i32 %irow, -1, !dbg !207
  %n115.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n115.phi.trans.insert, align 4, !dbg !208, !tbaa !118
  %cmp13 = icmp sgt i32 %.pre, %irow, !dbg !207
  %or.cond65 = and i1 %cmp11, %cmp13, !dbg !207
  br i1 %or.cond65, label %if.end17, label %if.then14, !dbg !207

if.then14:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !208, !tbaa !113
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([75 x i8]* @.str16, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %irow, i32 %.pre) #4, !dbg !208
  tail call void @exit(i32 -1) #5, !dbg !210
  unreachable, !dbg !210

if.end17:                                         ; preds = %if.end10
  %cmp18 = icmp sgt i32 %jcol, -1, !dbg !211
  %n222.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre64 = load i32* %n222.phi.trans.insert, align 4, !dbg !212, !tbaa !118
  %cmp20 = icmp sgt i32 %.pre64, %jcol, !dbg !211
  %or.cond66 = and i1 %cmp18, %cmp20, !dbg !211
  br i1 %or.cond66, label %if.end24, label %if.then21, !dbg !211

if.then21:                                        ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !212, !tbaa !113
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([75 x i8]* @.str17, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pValue, i32 %jcol, i32 %.pre64) #4, !dbg !212
  tail call void @exit(i32 -1) #5, !dbg !214
  unreachable, !dbg !214

if.end24:                                         ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !215
  %7 = load i32* %inc1, align 4, !dbg !215, !tbaa !118
  %mul = mul nsw i32 %7, %irow, !dbg !215
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !215
  %8 = load i32* %inc2, align 4, !dbg !215, !tbaa !118
  %mul25 = mul nsw i32 %8, %jcol, !dbg !215
  %add = add nsw i32 %mul25, %mul, !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !59), !dbg !215
  %idxprom = sext i32 %add to i64, !dbg !216
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom, !dbg !216
  %9 = load double* %arrayidx, align 8, !dbg !216, !tbaa !217
  store double %9, double* %pValue, align 8, !dbg !216, !tbaa !217
  ret void, !dbg !218
}

; Function Attrs: nounwind optsize uwtable
define void @A2_complexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !64), !dbg !219
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !65), !dbg !220
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !66), !dbg !221
  tail call void @llvm.dbg.value(metadata !{double* %pReal}, i64 0, metadata !67), !dbg !222
  tail call void @llvm.dbg.value(metadata !{double* %pImag}, i64 0, metadata !68), !dbg !223
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !224
  %cmp1 = icmp eq double* %pReal, null, !dbg !224
  %or.cond = or i1 %cmp, %cmp1, !dbg !224
  %cmp3 = icmp eq double* %pImag, null, !dbg !224
  %or.cond80 = or i1 %or.cond, %cmp3, !dbg !224
  br i1 %or.cond80, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !225, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #4, !dbg !225
  tail call void @exit(i32 -1) #5, !dbg !227
  unreachable, !dbg !227

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !228
  %1 = load i32* %type, align 4, !dbg !228, !tbaa !118
  %cmp4 = icmp eq i32 %1, 2, !dbg !228
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !228

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !229, !tbaa !113
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str19, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %1) #4, !dbg !229
  tail call void @exit(i32 -1) #5, !dbg !231
  unreachable, !dbg !231

if.end8:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !232
  %3 = load double** %entries, align 8, !dbg !232, !tbaa !113
  %cmp9 = icmp eq double* %3, null, !dbg !232
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !232

if.then10:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !233, !tbaa !113
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([82 x i8]* @.str20, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag) #4, !dbg !233
  tail call void @exit(i32 -1) #5, !dbg !235
  unreachable, !dbg !235

if.end12:                                         ; preds = %if.end8
  %cmp13 = icmp sgt i32 %irow, -1, !dbg !236
  %n117.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n117.phi.trans.insert, align 4, !dbg !237, !tbaa !118
  %cmp15 = icmp sgt i32 %.pre, %irow, !dbg !236
  %or.cond82 = and i1 %cmp13, %cmp15, !dbg !236
  br i1 %or.cond82, label %if.end19, label %if.then16, !dbg !236

if.then16:                                        ; preds = %if.end12
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !237, !tbaa !113
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([81 x i8]* @.str21, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %irow, i32 %.pre) #4, !dbg !237
  tail call void @exit(i32 -1) #5, !dbg !239
  unreachable, !dbg !239

if.end19:                                         ; preds = %if.end12
  %cmp20 = icmp sgt i32 %jcol, -1, !dbg !240
  %n224.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre81 = load i32* %n224.phi.trans.insert, align 4, !dbg !241, !tbaa !118
  %cmp22 = icmp sgt i32 %.pre81, %jcol, !dbg !240
  %or.cond83 = and i1 %cmp20, %cmp22, !dbg !240
  br i1 %or.cond83, label %if.end26, label %if.then23, !dbg !240

if.then23:                                        ; preds = %if.end19
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !241, !tbaa !113
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([81 x i8]* @.str22, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double* %pReal, double* %pImag, i32 %jcol, i32 %.pre81) #4, !dbg !241
  tail call void @exit(i32 -1) #5, !dbg !243
  unreachable, !dbg !243

if.end26:                                         ; preds = %if.end19
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !244
  %7 = load i32* %inc1, align 4, !dbg !244, !tbaa !118
  %mul = mul nsw i32 %7, %irow, !dbg !244
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !244
  %8 = load i32* %inc2, align 4, !dbg !244, !tbaa !118
  %mul27 = mul nsw i32 %8, %jcol, !dbg !244
  %add = add nsw i32 %mul27, %mul, !dbg !244
  %mul28 = shl nsw i32 %add, 1, !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32 %mul28}, i64 0, metadata !69), !dbg !244
  %idxprom = sext i32 %mul28 to i64, !dbg !245
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom, !dbg !245
  %9 = load double* %arrayidx, align 8, !dbg !245, !tbaa !217
  store double %9, double* %pReal, align 8, !dbg !245, !tbaa !217
  %add3079 = or i32 %mul28, 1, !dbg !246
  %idxprom31 = sext i32 %add3079 to i64, !dbg !246
  %arrayidx33 = getelementptr inbounds double* %3, i64 %idxprom31, !dbg !246
  %10 = load double* %arrayidx33, align 8, !dbg !246, !tbaa !217
  store double %10, double* %pImag, align 8, !dbg !246, !tbaa !217
  ret void, !dbg !247
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setRealEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double %value) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !74), !dbg !248
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !75), !dbg !249
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !76), !dbg !250
  tail call void @llvm.dbg.value(metadata !{double %value}, i64 0, metadata !77), !dbg !251
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !252
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !253, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str23, i64 0, i64 0), %struct._A2* null, i32 %irow, i32 %jcol, double %value) #4, !dbg !253
  tail call void @exit(i32 -1) #5, !dbg !255
  unreachable, !dbg !255

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !256
  %1 = load i32* %type, align 4, !dbg !256, !tbaa !118
  %cmp1 = icmp eq i32 %1, 1, !dbg !256
  br i1 %cmp1, label %if.end5, label %if.then2, !dbg !256

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !257, !tbaa !113
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([82 x i8]* @.str24, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %1) #4, !dbg !257
  tail call void @exit(i32 -1) #5, !dbg !259
  unreachable, !dbg !259

if.end5:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !260
  %3 = load double** %entries, align 8, !dbg !260, !tbaa !113
  %cmp6 = icmp eq double* %3, null, !dbg !260
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !260

if.then7:                                         ; preds = %if.end5
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !261, !tbaa !113
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([79 x i8]* @.str25, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value) #4, !dbg !261
  tail call void @exit(i32 -1) #5, !dbg !263
  unreachable, !dbg !263

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp sgt i32 %irow, -1, !dbg !264
  %n113.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n113.phi.trans.insert, align 4, !dbg !265, !tbaa !118
  %cmp11 = icmp sgt i32 %.pre, %irow, !dbg !264
  %or.cond = and i1 %cmp10, %cmp11, !dbg !264
  br i1 %or.cond, label %if.end15, label %if.then12, !dbg !264

if.then12:                                        ; preds = %if.end9
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !265, !tbaa !113
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([78 x i8]* @.str26, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %irow, i32 %.pre) #4, !dbg !265
  tail call void @exit(i32 -1) #5, !dbg !267
  unreachable, !dbg !267

if.end15:                                         ; preds = %if.end9
  %cmp16 = icmp sgt i32 %jcol, -1, !dbg !268
  %n220.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre61 = load i32* %n220.phi.trans.insert, align 4, !dbg !269, !tbaa !118
  %cmp18 = icmp sgt i32 %.pre61, %jcol, !dbg !268
  %or.cond62 = and i1 %cmp16, %cmp18, !dbg !268
  br i1 %or.cond62, label %if.end22, label %if.then19, !dbg !268

if.then19:                                        ; preds = %if.end15
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !269, !tbaa !113
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([78 x i8]* @.str27, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %value, i32 %jcol, i32 %.pre61) #4, !dbg !269
  tail call void @exit(i32 -1) #5, !dbg !271
  unreachable, !dbg !271

if.end22:                                         ; preds = %if.end15
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !272
  %7 = load i32* %inc1, align 4, !dbg !272, !tbaa !118
  %mul = mul nsw i32 %7, %irow, !dbg !272
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !272
  %8 = load i32* %inc2, align 4, !dbg !272, !tbaa !118
  %mul23 = mul nsw i32 %8, %jcol, !dbg !272
  %add = add nsw i32 %mul23, %mul, !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !78), !dbg !272
  %idxprom = sext i32 %add to i64, !dbg !273
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom, !dbg !273
  store double %value, double* %arrayidx, align 8, !dbg !273, !tbaa !217
  ret void, !dbg !274
}

; Function Attrs: nounwind optsize uwtable
define void @A2_setComplexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !83), !dbg !275
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !84), !dbg !276
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !85), !dbg !277
  tail call void @llvm.dbg.value(metadata !{double %real}, i64 0, metadata !86), !dbg !278
  tail call void @llvm.dbg.value(metadata !{double %imag}, i64 0, metadata !87), !dbg !279
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !280
  br i1 %cmp, label %if.then, label %if.end, !dbg !280

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !281, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str28, i64 0, i64 0), %struct._A2* null, i32 %irow, i32 %jcol, double %real, double %imag) #4, !dbg !281
  tail call void @exit(i32 -1) #5, !dbg !283
  unreachable, !dbg !283

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !284
  %1 = load i32* %type, align 4, !dbg !284, !tbaa !118
  %cmp1 = icmp eq i32 %1, 2, !dbg !284
  br i1 %cmp1, label %if.end5, label %if.then2, !dbg !284

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !285, !tbaa !113
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str29, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %1) #4, !dbg !285
  tail call void @exit(i32 -1) #5, !dbg !287
  unreachable, !dbg !287

if.end5:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !288
  %3 = load double** %entries, align 8, !dbg !288, !tbaa !113
  %cmp6 = icmp eq double* %3, null, !dbg !288
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !288

if.then7:                                         ; preds = %if.end5
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !289, !tbaa !113
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str30, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag) #4, !dbg !289
  tail call void @exit(i32 -1) #5, !dbg !291
  unreachable, !dbg !291

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp sgt i32 %irow, -1, !dbg !292
  %n113.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n113.phi.trans.insert, align 4, !dbg !293, !tbaa !118
  %cmp11 = icmp sgt i32 %.pre, %irow, !dbg !292
  %or.cond = and i1 %cmp10, %cmp11, !dbg !292
  br i1 %or.cond, label %if.end15, label %if.then12, !dbg !292

if.then12:                                        ; preds = %if.end9
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !293, !tbaa !113
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([84 x i8]* @.str31, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %irow, i32 %.pre) #4, !dbg !293
  tail call void @exit(i32 -1) #5, !dbg !295
  unreachable, !dbg !295

if.end15:                                         ; preds = %if.end9
  %cmp16 = icmp sgt i32 %jcol, -1, !dbg !296
  %n220.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre74 = load i32* %n220.phi.trans.insert, align 4, !dbg !297, !tbaa !118
  %cmp18 = icmp sgt i32 %.pre74, %jcol, !dbg !296
  %or.cond75 = and i1 %cmp16, %cmp18, !dbg !296
  br i1 %or.cond75, label %if.end22, label %if.then19, !dbg !296

if.then19:                                        ; preds = %if.end15
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !297, !tbaa !113
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([84 x i8]* @.str32, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double %real, double %imag, i32 %jcol, i32 %.pre74) #4, !dbg !297
  tail call void @exit(i32 -1) #5, !dbg !299
  unreachable, !dbg !299

if.end22:                                         ; preds = %if.end15
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !300
  %7 = load i32* %inc1, align 4, !dbg !300, !tbaa !118
  %mul = mul nsw i32 %7, %irow, !dbg !300
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !300
  %8 = load i32* %inc2, align 4, !dbg !300, !tbaa !118
  %mul23 = mul nsw i32 %8, %jcol, !dbg !300
  %add = add nsw i32 %mul23, %mul, !dbg !300
  %mul24 = shl nsw i32 %add, 1, !dbg !300
  tail call void @llvm.dbg.value(metadata !{i32 %mul24}, i64 0, metadata !88), !dbg !300
  %idxprom = sext i32 %mul24 to i64, !dbg !301
  %arrayidx = getelementptr inbounds double* %3, i64 %idxprom, !dbg !301
  store double %real, double* %arrayidx, align 8, !dbg !301, !tbaa !217
  %add2673 = or i32 %mul24, 1, !dbg !302
  %idxprom27 = sext i32 %add2673 to i64, !dbg !302
  %arrayidx29 = getelementptr inbounds double* %3, i64 %idxprom27, !dbg !302
  store double %imag, double* %arrayidx29, align 8, !dbg !302, !tbaa !217
  ret void, !dbg !303
}

; Function Attrs: nounwind optsize uwtable
define void @A2_pointerToRealEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !94), !dbg !304
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !95), !dbg !305
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !96), !dbg !306
  tail call void @llvm.dbg.value(metadata !{double** %ppValue}, i64 0, metadata !97), !dbg !307
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !308
  %cmp1 = icmp eq double** %ppValue, null, !dbg !308
  %or.cond = or i1 %cmp, %cmp1, !dbg !308
  br i1 %or.cond, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !309, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str33, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #4, !dbg !309
  tail call void @exit(i32 -1) #5, !dbg !311
  unreachable, !dbg !311

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !312
  %1 = load i32* %type, align 4, !dbg !312, !tbaa !118
  %cmp2 = icmp eq i32 %1, 2, !dbg !312
  br i1 %cmp2, label %if.end6, label %if.then3, !dbg !312

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !313, !tbaa !113
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str34, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %1) #4, !dbg !313
  tail call void @exit(i32 -1) #5, !dbg !315
  unreachable, !dbg !315

if.end6:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !316
  %3 = load double** %entries, align 8, !dbg !316, !tbaa !113
  %cmp7 = icmp eq double* %3, null, !dbg !316
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !316

if.then8:                                         ; preds = %if.end6
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !317, !tbaa !113
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str35, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue) #4, !dbg !317
  tail call void @exit(i32 -1) #5, !dbg !319
  unreachable, !dbg !319

if.end10:                                         ; preds = %if.end6
  %cmp11 = icmp sgt i32 %irow, -1, !dbg !320
  %n115.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n115.phi.trans.insert, align 4, !dbg !321, !tbaa !118
  %cmp13 = icmp sgt i32 %.pre, %irow, !dbg !320
  %or.cond65 = and i1 %cmp11, %cmp13, !dbg !320
  br i1 %or.cond65, label %if.end17, label %if.then14, !dbg !320

if.then14:                                        ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !321, !tbaa !113
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([84 x i8]* @.str36, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %irow, i32 %.pre) #4, !dbg !321
  tail call void @exit(i32 -1) #5, !dbg !323
  unreachable, !dbg !323

if.end17:                                         ; preds = %if.end10
  %cmp18 = icmp sgt i32 %jcol, -1, !dbg !324
  %n222.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre64 = load i32* %n222.phi.trans.insert, align 4, !dbg !325, !tbaa !118
  %cmp20 = icmp sgt i32 %.pre64, %jcol, !dbg !324
  %or.cond66 = and i1 %cmp18, %cmp20, !dbg !324
  br i1 %or.cond66, label %if.end24, label %if.then21, !dbg !324

if.then21:                                        ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !325, !tbaa !113
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([84 x i8]* @.str37, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppValue, i32 %jcol, i32 %.pre64) #4, !dbg !325
  tail call void @exit(i32 -1) #5, !dbg !327
  unreachable, !dbg !327

if.end24:                                         ; preds = %if.end17
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !328
  %7 = load i32* %inc1, align 4, !dbg !328, !tbaa !118
  %mul = mul nsw i32 %7, %irow, !dbg !328
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !328
  %8 = load i32* %inc2, align 4, !dbg !328, !tbaa !118
  %mul25 = mul nsw i32 %8, %jcol, !dbg !328
  %add = add nsw i32 %mul25, %mul, !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !98), !dbg !328
  %idx.ext = sext i32 %add to i64, !dbg !329
  %add.ptr = getelementptr inbounds double* %3, i64 %idx.ext, !dbg !329
  store double* %add.ptr, double** %ppValue, align 8, !dbg !329, !tbaa !113
  ret void, !dbg !330
}

; Function Attrs: nounwind optsize uwtable
define void @A2_pointerToComplexEntry(%struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._A2* %mtx}, i64 0, metadata !103), !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !104), !dbg !332
  tail call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !105), !dbg !333
  tail call void @llvm.dbg.value(metadata !{double** %ppReal}, i64 0, metadata !106), !dbg !334
  tail call void @llvm.dbg.value(metadata !{double** %ppImag}, i64 0, metadata !107), !dbg !335
  %cmp = icmp eq %struct._A2* %mtx, null, !dbg !336
  %cmp1 = icmp eq double** %ppReal, null, !dbg !336
  %or.cond = or i1 %cmp, %cmp1, !dbg !336
  %cmp3 = icmp eq double** %ppImag, null, !dbg !336
  %or.cond80 = or i1 %or.cond, %cmp3, !dbg !336
  br i1 %or.cond80, label %if.then, label %if.end, !dbg !336

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !337, !tbaa !113
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str38, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #4, !dbg !337
  tail call void @exit(i32 -1) #5, !dbg !339
  unreachable, !dbg !339

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0, !dbg !340
  %1 = load i32* %type, align 4, !dbg !340, !tbaa !118
  %cmp4 = icmp eq i32 %1, 2, !dbg !340
  br i1 %cmp4, label %if.end8, label %if.then5, !dbg !340

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !341, !tbaa !113
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([97 x i8]* @.str39, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %1) #4, !dbg !341
  tail call void @exit(i32 -1) #5, !dbg !343
  unreachable, !dbg !343

if.end8:                                          ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6, !dbg !344
  %3 = load double** %entries, align 8, !dbg !344, !tbaa !113
  %cmp9 = icmp eq double* %3, null, !dbg !344
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !344

if.then10:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !345, !tbaa !113
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([91 x i8]* @.str40, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag) #4, !dbg !345
  tail call void @exit(i32 -1) #5, !dbg !347
  unreachable, !dbg !347

if.end12:                                         ; preds = %if.end8
  %cmp13 = icmp sgt i32 %irow, -1, !dbg !348
  %n117.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %.pre = load i32* %n117.phi.trans.insert, align 4, !dbg !349, !tbaa !118
  %cmp15 = icmp sgt i32 %.pre, %irow, !dbg !348
  %or.cond82 = and i1 %cmp13, %cmp15, !dbg !348
  br i1 %or.cond82, label %if.end19, label %if.then16, !dbg !348

if.then16:                                        ; preds = %if.end12
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !349, !tbaa !113
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([90 x i8]* @.str41, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %irow, i32 %.pre) #4, !dbg !349
  tail call void @exit(i32 -1) #5, !dbg !351
  unreachable, !dbg !351

if.end19:                                         ; preds = %if.end12
  %cmp20 = icmp sgt i32 %jcol, -1, !dbg !352
  %n224.phi.trans.insert = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %.pre81 = load i32* %n224.phi.trans.insert, align 4, !dbg !353, !tbaa !118
  %cmp22 = icmp sgt i32 %.pre81, %jcol, !dbg !352
  %or.cond83 = and i1 %cmp20, %cmp22, !dbg !352
  br i1 %or.cond83, label %if.end26, label %if.then23, !dbg !352

if.then23:                                        ; preds = %if.end19
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !353, !tbaa !113
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([90 x i8]* @.str42, i64 0, i64 0), %struct._A2* %mtx, i32 %irow, i32 %jcol, double** %ppReal, double** %ppImag, i32 %jcol, i32 %.pre81) #4, !dbg !353
  tail call void @exit(i32 -1) #5, !dbg !355
  unreachable, !dbg !355

if.end26:                                         ; preds = %if.end19
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3, !dbg !356
  %7 = load i32* %inc1, align 4, !dbg !356, !tbaa !118
  %mul = mul nsw i32 %7, %irow, !dbg !356
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4, !dbg !356
  %8 = load i32* %inc2, align 4, !dbg !356, !tbaa !118
  %mul27 = mul nsw i32 %8, %jcol, !dbg !356
  %add = add nsw i32 %mul27, %mul, !dbg !356
  %mul28 = shl nsw i32 %add, 1, !dbg !356
  tail call void @llvm.dbg.value(metadata !{i32 %mul28}, i64 0, metadata !108), !dbg !356
  %idx.ext = sext i32 %mul28 to i64, !dbg !357
  %add.ptr = getelementptr inbounds double* %3, i64 %idx.ext, !dbg !357
  store double* %add.ptr, double** %ppReal, align 8, !dbg !357, !tbaa !113
  %9 = load double** %entries, align 8, !dbg !358, !tbaa !113
  %add.ptr32.sum79 = or i64 %idx.ext, 1, !dbg !358
  %add.ptr33 = getelementptr inbounds double* %9, i64 %add.ptr32.sum79, !dbg !358
  store double* %add.ptr33, double** %ppImag, align 8, !dbg !358, !tbaa !113
  ret void, !dbg !359
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !25, metadata !28, metadata !31, metadata !34, metadata !39, metadata !46, metadata !51, metadata !60, metadata !70, metadata !79, metadata !89, metadata !99}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_nrow", metadata !"A2_nrow", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*)* @A2_nrow, null, null, metadata !23, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [A2_nrow]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from A2]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/../A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!22 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 15]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_ncol", metadata !"A2_ncol", metadata !"", i32 38, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*)* @A2_ncol, null, null, metadata !26, i32 40} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 40] [A2_ncol]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786689, metadata !25, metadata !"mtx", metadata !5, i32 16777255, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 39]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_inc1", metadata !"A2_inc1", metadata !"", i32 62, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*)* @A2_inc1, null, null, metadata !29, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [A2_inc1]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786689, metadata !28, metadata !"mtx", metadata !5, i32 16777279, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 63]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_inc2", metadata !"A2_inc2", metadata !"", i32 86, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._A2*)* @A2_inc2, null, null, metadata !32, i32 88} ; [ DW_TAG_subprogram ] [line 86] [def] [scope 88] [A2_inc2]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786689, metadata !31, metadata !"mtx", metadata !5, i32 16777303, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 87]
!34 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_entries", metadata !"A2_entries", metadata !"", i32 110, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._A2*)* @A2_entries, null, null, metadata !37, i32 112} ; [ DW_TAG_subprogram ] [line 110] [def] [scope 112] [A2_entries]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{metadata !21, metadata !9}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 786689, metadata !34, metadata !"mtx", metadata !5, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 111]
!39 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_row", metadata !"A2_row", metadata !"", i32 134, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._A2*, i32)* @A2_row, null, null, metadata !42, i32 137} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 137] [A2_row]
!40 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !21, metadata !9, metadata !8}
!42 = metadata !{metadata !43, metadata !44, metadata !45}
!43 = metadata !{i32 786689, metadata !39, metadata !"mtx", metadata !5, i32 16777351, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 135]
!44 = metadata !{i32 786689, metadata !39, metadata !"irow", metadata !5, i32 33554568, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 136]
!45 = metadata !{i32 786688, metadata !39, metadata !"row", metadata !5, i32 138, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 138]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_column", metadata !"A2_column", metadata !"", i32 181, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._A2*, i32)* @A2_column, null, null, metadata !47, i32 184} ; [ DW_TAG_subprogram ] [line 181] [def] [scope 184] [A2_column]
!47 = metadata !{metadata !48, metadata !49, metadata !50}
!48 = metadata !{i32 786689, metadata !46, metadata !"mtx", metadata !5, i32 16777398, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 182]
!49 = metadata !{i32 786689, metadata !46, metadata !"jcol", metadata !5, i32 33554615, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 183]
!50 = metadata !{i32 786688, metadata !46, metadata !"col", metadata !5, i32 185, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 185]
!51 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_realEntry", metadata !"A2_realEntry", metadata !"", i32 228, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32, double*)* @A2_realEntry, null, null, metadata !54, i32 233} ; [ DW_TAG_subprogram ] [line 228] [def] [scope 233] [A2_realEntry]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !21}
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!55 = metadata !{i32 786689, metadata !51, metadata !"mtx", metadata !5, i32 16777445, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 229]
!56 = metadata !{i32 786689, metadata !51, metadata !"irow", metadata !5, i32 33554662, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 230]
!57 = metadata !{i32 786689, metadata !51, metadata !"jcol", metadata !5, i32 50331879, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 231]
!58 = metadata !{i32 786689, metadata !51, metadata !"pValue", metadata !5, i32 67109096, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pValue] [line 232]
!59 = metadata !{i32 786688, metadata !51, metadata !"loc", metadata !5, i32 234, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 234]
!60 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_complexEntry", metadata !"A2_complexEntry", metadata !"", i32 283, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32, double*, double*)* @A2_complexEntry, null, null, metadata !63, i32 289} ; [ DW_TAG_subprogram ] [line 283] [def] [scope 289] [A2_complexEntry]
!61 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !21, metadata !21}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69}
!64 = metadata !{i32 786689, metadata !60, metadata !"mtx", metadata !5, i32 16777500, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 284]
!65 = metadata !{i32 786689, metadata !60, metadata !"irow", metadata !5, i32 33554717, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 285]
!66 = metadata !{i32 786689, metadata !60, metadata !"jcol", metadata !5, i32 50331934, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 286]
!67 = metadata !{i32 786689, metadata !60, metadata !"pReal", metadata !5, i32 67109151, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pReal] [line 287]
!68 = metadata !{i32 786689, metadata !60, metadata !"pImag", metadata !5, i32 83886368, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pImag] [line 288]
!69 = metadata !{i32 786688, metadata !60, metadata !"loc", metadata !5, i32 290, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 290]
!70 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setRealEntry", metadata !"A2_setRealEntry", metadata !"", i32 340, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32, double)* @A2_setRealEntry, null, null, metadata !73, i32 345} ; [ DW_TAG_subprogram ] [line 340] [def] [scope 345] [A2_setRealEntry]
!71 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !22}
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78}
!74 = metadata !{i32 786689, metadata !70, metadata !"mtx", metadata !5, i32 16777557, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 341]
!75 = metadata !{i32 786689, metadata !70, metadata !"irow", metadata !5, i32 33554774, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 342]
!76 = metadata !{i32 786689, metadata !70, metadata !"jcol", metadata !5, i32 50331991, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 343]
!77 = metadata !{i32 786689, metadata !70, metadata !"value", metadata !5, i32 67109208, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 344]
!78 = metadata !{i32 786688, metadata !70, metadata !"loc", metadata !5, i32 346, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 346]
!79 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_setComplexEntry", metadata !"A2_setComplexEntry", metadata !"", i32 400, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32, double, double)* @A2_setComplexEntry, null, null, metadata !82, i32 406} ; [ DW_TAG_subprogram ] [line 400] [def] [scope 406] [A2_setComplexEntry]
!80 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!81 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !22, metadata !22}
!82 = metadata !{metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88}
!83 = metadata !{i32 786689, metadata !79, metadata !"mtx", metadata !5, i32 16777617, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 401]
!84 = metadata !{i32 786689, metadata !79, metadata !"irow", metadata !5, i32 33554834, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 402]
!85 = metadata !{i32 786689, metadata !79, metadata !"jcol", metadata !5, i32 50332051, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 403]
!86 = metadata !{i32 786689, metadata !79, metadata !"real", metadata !5, i32 67109268, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [real] [line 404]
!87 = metadata !{i32 786689, metadata !79, metadata !"imag", metadata !5, i32 83886485, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [imag] [line 405]
!88 = metadata !{i32 786688, metadata !79, metadata !"loc", metadata !5, i32 407, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 407]
!89 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_pointerToRealEntry", metadata !"A2_pointerToRealEntry", metadata !"", i32 463, metadata !90, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32, double**)* @A2_pointerToRealEntry, null, null, metadata !93, i32 468} ; [ DW_TAG_subprogram ] [line 463] [def] [scope 468] [A2_pointerToRealEntry]
!90 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !92}
!92 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!94 = metadata !{i32 786689, metadata !89, metadata !"mtx", metadata !5, i32 16777680, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 464]
!95 = metadata !{i32 786689, metadata !89, metadata !"irow", metadata !5, i32 33554897, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 465]
!96 = metadata !{i32 786689, metadata !89, metadata !"jcol", metadata !5, i32 50332114, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 466]
!97 = metadata !{i32 786689, metadata !89, metadata !"ppValue", metadata !5, i32 67109331, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppValue] [line 467]
!98 = metadata !{i32 786688, metadata !89, metadata !"loc", metadata !5, i32 469, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 469]
!99 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"A2_pointerToComplexEntry", metadata !"A2_pointerToComplexEntry", metadata !"", i32 524, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._A2*, i32, i32, double**, double**)* @A2_pointerToComplexEntry, null, null, metadata !102, i32 530} ; [ DW_TAG_subprogram ] [line 524] [def] [scope 530] [A2_pointerToComplexEntry]
!100 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{null, metadata !9, metadata !8, metadata !8, metadata !92, metadata !92}
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!103 = metadata !{i32 786689, metadata !99, metadata !"mtx", metadata !5, i32 16777741, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 525]
!104 = metadata !{i32 786689, metadata !99, metadata !"irow", metadata !5, i32 33554958, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 526]
!105 = metadata !{i32 786689, metadata !99, metadata !"jcol", metadata !5, i32 50332175, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 527]
!106 = metadata !{i32 786689, metadata !99, metadata !"ppReal", metadata !5, i32 67109392, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppReal] [line 528]
!107 = metadata !{i32 786689, metadata !99, metadata !"ppImag", metadata !5, i32 83886609, metadata !92, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ppImag] [line 529]
!108 = metadata !{i32 786688, metadata !99, metadata !"loc", metadata !5, i32 531, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 531]
!109 = metadata !{i32 15, i32 0, metadata !4, null}
!110 = metadata !{i32 22, i32 0, metadata !4, null}
!111 = metadata !{i32 23, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!113 = metadata !{metadata !"any pointer", metadata !114}
!114 = metadata !{metadata !"omnipotent char", metadata !115}
!115 = metadata !{metadata !"Simple C/C++ TBAA"}
!116 = metadata !{i32 25, i32 0, metadata !112, null}
!117 = metadata !{i32 27, i32 0, metadata !4, null}
!118 = metadata !{metadata !"int", metadata !114}
!119 = metadata !{i32 39, i32 0, metadata !25, null}
!120 = metadata !{i32 46, i32 0, metadata !25, null}
!121 = metadata !{i32 47, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !25, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!123 = metadata !{i32 49, i32 0, metadata !122, null}
!124 = metadata !{i32 51, i32 0, metadata !25, null}
!125 = metadata !{i32 63, i32 0, metadata !28, null}
!126 = metadata !{i32 70, i32 0, metadata !28, null}
!127 = metadata !{i32 71, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !28, i32 70, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!129 = metadata !{i32 73, i32 0, metadata !128, null}
!130 = metadata !{i32 75, i32 0, metadata !28, null}
!131 = metadata !{i32 87, i32 0, metadata !31, null}
!132 = metadata !{i32 94, i32 0, metadata !31, null}
!133 = metadata !{i32 95, i32 0, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !31, i32 94, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!135 = metadata !{i32 97, i32 0, metadata !134, null}
!136 = metadata !{i32 99, i32 0, metadata !31, null}
!137 = metadata !{i32 111, i32 0, metadata !34, null}
!138 = metadata !{i32 118, i32 0, metadata !34, null}
!139 = metadata !{i32 119, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !34, i32 118, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!141 = metadata !{i32 121, i32 0, metadata !140, null}
!142 = metadata !{i32 123, i32 0, metadata !34, null}
!143 = metadata !{i32 135, i32 0, metadata !39, null}
!144 = metadata !{i32 136, i32 0, metadata !39, null}
!145 = metadata !{i32 144, i32 0, metadata !39, null}
!146 = metadata !{i32 145, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !39, i32 144, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!148 = metadata !{i32 147, i32 0, metadata !147, null}
!149 = metadata !{i32 149, i32 0, metadata !39, null}
!150 = metadata !{i32 150, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !39, i32 149, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!152 = metadata !{i32 152, i32 0, metadata !151, null}
!153 = metadata !{i32 154, i32 0, metadata !39, null}
!154 = metadata !{i32 155, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !39, i32 154, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!156 = metadata !{i32 158, i32 0, metadata !155, null}
!157 = metadata !{i32 160, i32 0, metadata !39, null}
!158 = metadata !{i32 161, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !39, i32 160, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!160 = metadata !{i32 162, i32 0, metadata !159, null}
!161 = metadata !{i32 163, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !39, i32 162, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!163 = metadata !{i32 165, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !39, i32 164, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!165 = metadata !{i32 168, i32 0, metadata !164, null}
!166 = metadata !{i32 170, i32 0, metadata !39, null}
!167 = metadata !{i32 182, i32 0, metadata !46, null}
!168 = metadata !{i32 183, i32 0, metadata !46, null}
!169 = metadata !{i32 191, i32 0, metadata !46, null}
!170 = metadata !{i32 192, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !46, i32 191, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!172 = metadata !{i32 194, i32 0, metadata !171, null}
!173 = metadata !{i32 196, i32 0, metadata !46, null}
!174 = metadata !{i32 197, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !46, i32 196, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!176 = metadata !{i32 199, i32 0, metadata !175, null}
!177 = metadata !{i32 201, i32 0, metadata !46, null}
!178 = metadata !{i32 202, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !46, i32 201, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!180 = metadata !{i32 205, i32 0, metadata !179, null}
!181 = metadata !{i32 207, i32 0, metadata !46, null}
!182 = metadata !{i32 208, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !46, i32 207, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!184 = metadata !{i32 209, i32 0, metadata !183, null}
!185 = metadata !{i32 210, i32 0, metadata !186, null}
!186 = metadata !{i32 786443, metadata !1, metadata !46, i32 209, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!187 = metadata !{i32 212, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !46, i32 211, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!189 = metadata !{i32 215, i32 0, metadata !188, null}
!190 = metadata !{i32 217, i32 0, metadata !46, null}
!191 = metadata !{i32 229, i32 0, metadata !51, null}
!192 = metadata !{i32 230, i32 0, metadata !51, null}
!193 = metadata !{i32 231, i32 0, metadata !51, null}
!194 = metadata !{i32 232, i32 0, metadata !51, null}
!195 = metadata !{i32 240, i32 0, metadata !51, null}
!196 = metadata !{i32 241, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !51, i32 240, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!198 = metadata !{i32 243, i32 0, metadata !197, null}
!199 = metadata !{i32 245, i32 0, metadata !51, null}
!200 = metadata !{i32 246, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !51, i32 245, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!202 = metadata !{i32 249, i32 0, metadata !201, null}
!203 = metadata !{i32 251, i32 0, metadata !51, null}
!204 = metadata !{i32 252, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !51, i32 251, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!206 = metadata !{i32 255, i32 0, metadata !205, null}
!207 = metadata !{i32 257, i32 0, metadata !51, null}
!208 = metadata !{i32 258, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !51, i32 257, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!210 = metadata !{i32 261, i32 0, metadata !209, null}
!211 = metadata !{i32 263, i32 0, metadata !51, null}
!212 = metadata !{i32 264, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !51, i32 263, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!214 = metadata !{i32 267, i32 0, metadata !213, null}
!215 = metadata !{i32 269, i32 0, metadata !51, null}
!216 = metadata !{i32 270, i32 0, metadata !51, null}
!217 = metadata !{metadata !"double", metadata !114}
!218 = metadata !{i32 272, i32 0, metadata !51, null}
!219 = metadata !{i32 284, i32 0, metadata !60, null}
!220 = metadata !{i32 285, i32 0, metadata !60, null}
!221 = metadata !{i32 286, i32 0, metadata !60, null}
!222 = metadata !{i32 287, i32 0, metadata !60, null}
!223 = metadata !{i32 288, i32 0, metadata !60, null}
!224 = metadata !{i32 296, i32 0, metadata !60, null}
!225 = metadata !{i32 297, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !60, i32 296, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!227 = metadata !{i32 299, i32 0, metadata !226, null}
!228 = metadata !{i32 301, i32 0, metadata !60, null}
!229 = metadata !{i32 302, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !60, i32 301, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!231 = metadata !{i32 305, i32 0, metadata !230, null}
!232 = metadata !{i32 307, i32 0, metadata !60, null}
!233 = metadata !{i32 308, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !60, i32 307, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!235 = metadata !{i32 311, i32 0, metadata !234, null}
!236 = metadata !{i32 313, i32 0, metadata !60, null}
!237 = metadata !{i32 314, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !60, i32 313, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!239 = metadata !{i32 317, i32 0, metadata !238, null}
!240 = metadata !{i32 319, i32 0, metadata !60, null}
!241 = metadata !{i32 320, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !60, i32 319, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!243 = metadata !{i32 323, i32 0, metadata !242, null}
!244 = metadata !{i32 325, i32 0, metadata !60, null}
!245 = metadata !{i32 326, i32 0, metadata !60, null}
!246 = metadata !{i32 327, i32 0, metadata !60, null}
!247 = metadata !{i32 329, i32 0, metadata !60, null}
!248 = metadata !{i32 341, i32 0, metadata !70, null}
!249 = metadata !{i32 342, i32 0, metadata !70, null}
!250 = metadata !{i32 343, i32 0, metadata !70, null}
!251 = metadata !{i32 344, i32 0, metadata !70, null}
!252 = metadata !{i32 352, i32 0, metadata !70, null}
!253 = metadata !{i32 353, i32 0, metadata !254, null}
!254 = metadata !{i32 786443, metadata !1, metadata !70, i32 352, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!255 = metadata !{i32 356, i32 0, metadata !254, null}
!256 = metadata !{i32 358, i32 0, metadata !70, null}
!257 = metadata !{i32 359, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !70, i32 358, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!259 = metadata !{i32 363, i32 0, metadata !258, null}
!260 = metadata !{i32 365, i32 0, metadata !70, null}
!261 = metadata !{i32 366, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !70, i32 365, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!263 = metadata !{i32 370, i32 0, metadata !262, null}
!264 = metadata !{i32 372, i32 0, metadata !70, null}
!265 = metadata !{i32 373, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !70, i32 372, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!267 = metadata !{i32 377, i32 0, metadata !266, null}
!268 = metadata !{i32 379, i32 0, metadata !70, null}
!269 = metadata !{i32 380, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !70, i32 379, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!271 = metadata !{i32 384, i32 0, metadata !270, null}
!272 = metadata !{i32 386, i32 0, metadata !70, null}
!273 = metadata !{i32 387, i32 0, metadata !70, null}
!274 = metadata !{i32 389, i32 0, metadata !70, null}
!275 = metadata !{i32 401, i32 0, metadata !79, null}
!276 = metadata !{i32 402, i32 0, metadata !79, null}
!277 = metadata !{i32 403, i32 0, metadata !79, null}
!278 = metadata !{i32 404, i32 0, metadata !79, null}
!279 = metadata !{i32 405, i32 0, metadata !79, null}
!280 = metadata !{i32 413, i32 0, metadata !79, null}
!281 = metadata !{i32 414, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !79, i32 413, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!283 = metadata !{i32 417, i32 0, metadata !282, null}
!284 = metadata !{i32 419, i32 0, metadata !79, null}
!285 = metadata !{i32 420, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !79, i32 419, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!287 = metadata !{i32 424, i32 0, metadata !286, null}
!288 = metadata !{i32 426, i32 0, metadata !79, null}
!289 = metadata !{i32 427, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !79, i32 426, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!291 = metadata !{i32 431, i32 0, metadata !290, null}
!292 = metadata !{i32 433, i32 0, metadata !79, null}
!293 = metadata !{i32 434, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !79, i32 433, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!295 = metadata !{i32 438, i32 0, metadata !294, null}
!296 = metadata !{i32 440, i32 0, metadata !79, null}
!297 = metadata !{i32 441, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !79, i32 440, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!299 = metadata !{i32 445, i32 0, metadata !298, null}
!300 = metadata !{i32 447, i32 0, metadata !79, null}
!301 = metadata !{i32 448, i32 0, metadata !79, null}
!302 = metadata !{i32 449, i32 0, metadata !79, null}
!303 = metadata !{i32 451, i32 0, metadata !79, null}
!304 = metadata !{i32 464, i32 0, metadata !89, null}
!305 = metadata !{i32 465, i32 0, metadata !89, null}
!306 = metadata !{i32 466, i32 0, metadata !89, null}
!307 = metadata !{i32 467, i32 0, metadata !89, null}
!308 = metadata !{i32 475, i32 0, metadata !89, null}
!309 = metadata !{i32 476, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !89, i32 475, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!311 = metadata !{i32 479, i32 0, metadata !310, null}
!312 = metadata !{i32 481, i32 0, metadata !89, null}
!313 = metadata !{i32 482, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !89, i32 481, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!315 = metadata !{i32 486, i32 0, metadata !314, null}
!316 = metadata !{i32 488, i32 0, metadata !89, null}
!317 = metadata !{i32 489, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !89, i32 488, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!319 = metadata !{i32 493, i32 0, metadata !318, null}
!320 = metadata !{i32 495, i32 0, metadata !89, null}
!321 = metadata !{i32 496, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !89, i32 495, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!323 = metadata !{i32 500, i32 0, metadata !322, null}
!324 = metadata !{i32 502, i32 0, metadata !89, null}
!325 = metadata !{i32 503, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !89, i32 502, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!327 = metadata !{i32 507, i32 0, metadata !326, null}
!328 = metadata !{i32 509, i32 0, metadata !89, null}
!329 = metadata !{i32 510, i32 0, metadata !89, null}
!330 = metadata !{i32 512, i32 0, metadata !89, null}
!331 = metadata !{i32 525, i32 0, metadata !99, null}
!332 = metadata !{i32 526, i32 0, metadata !99, null}
!333 = metadata !{i32 527, i32 0, metadata !99, null}
!334 = metadata !{i32 528, i32 0, metadata !99, null}
!335 = metadata !{i32 529, i32 0, metadata !99, null}
!336 = metadata !{i32 537, i32 0, metadata !99, null}
!337 = metadata !{i32 538, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !99, i32 537, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!339 = metadata !{i32 541, i32 0, metadata !338, null}
!340 = metadata !{i32 543, i32 0, metadata !99, null}
!341 = metadata !{i32 544, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !99, i32 543, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!343 = metadata !{i32 548, i32 0, metadata !342, null}
!344 = metadata !{i32 550, i32 0, metadata !99, null}
!345 = metadata !{i32 551, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !99, i32 550, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!347 = metadata !{i32 555, i32 0, metadata !346, null}
!348 = metadata !{i32 557, i32 0, metadata !99, null}
!349 = metadata !{i32 558, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !99, i32 557, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!351 = metadata !{i32 562, i32 0, metadata !350, null}
!352 = metadata !{i32 564, i32 0, metadata !99, null}
!353 = metadata !{i32 565, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !99, i32 564, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_instance.c]
!355 = metadata !{i32 569, i32 0, metadata !354, null}
!356 = metadata !{i32 571, i32 0, metadata !99, null}
!357 = metadata !{i32 572, i32 0, metadata !99, null}
!358 = metadata !{i32 573, i32 0, metadata !99, null}
!359 = metadata !{i32 575, i32 0, metadata !99, null}

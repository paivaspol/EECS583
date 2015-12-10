; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [67 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A graph is NULL\0A\00", align 1
@.str1 = private unnamed_addr constant [89 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid type = %d, must be in [0,3]\0A\00", align 1
@.str2 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nvtx = %d, must be positive\0A\00", align 1
@.str3 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nvbnd = %d, must be nonnegative\0A\00", align 1
@.str4 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nedges = %d, must be nonnegative\0A\00", align 1
@.str5 = private unnamed_addr constant [74 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid adjType = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid ewghtType = %d\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A graph is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [98 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A invalid type = %d, must be in [0,3]\0A\00", align 1
@.str9 = private unnamed_addr constant [90 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nvtx = %d, must be positive\0A\00", align 1
@.str10 = private unnamed_addr constant [94 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nvbnd = %d, must be nonnegative\0A\00", align 1
@.str11 = private unnamed_addr constant [95 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nedges = %d, must be nonnegative\0A\00", align 1
@.str12 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A adjIVL is NULL\0A\00", align 1
@.str13 = private unnamed_addr constant [87 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A type = %d, vwghts is NULL\00", align 1
@.str14 = private unnamed_addr constant [89 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A type = %d, ewghtIVL is NULL\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Graph_init1(%struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !47), !dbg !69
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !48), !dbg !70
  tail call void @llvm.dbg.value(metadata !{i32 %nvtx}, i64 0, metadata !49), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i32 %nvbnd}, i64 0, metadata !50), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i32 %nedges}, i64 0, metadata !51), !dbg !73
  tail call void @llvm.dbg.value(metadata !{i32 %adjType}, i64 0, metadata !52), !dbg !74
  tail call void @llvm.dbg.value(metadata !{i32 %ewghtType}, i64 0, metadata !53), !dbg !75
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !76
  br i1 %cmp, label %if.then, label %if.end, !dbg !76

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !77, !tbaa !79
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), %struct._Graph* null, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType) #5, !dbg !77
  tail call void @exit(i32 -1) #6, !dbg !82
  unreachable, !dbg !82

if.end:                                           ; preds = %entry
  %1 = icmp ugt i32 %type, 3, !dbg !83
  br i1 %1, label %if.then3, label %if.end5, !dbg !83

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !84, !tbaa !79
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([89 x i8]* @.str1, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %type) #5, !dbg !84
  tail call void @exit(i32 -1) #6, !dbg !86
  unreachable, !dbg !86

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp slt i32 %nvtx, 1, !dbg !87
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !87

if.then7:                                         ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !88, !tbaa !79
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nvtx) #5, !dbg !88
  tail call void @exit(i32 -1) #6, !dbg !90
  unreachable, !dbg !90

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp slt i32 %nvbnd, 0, !dbg !91
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !91

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !92, !tbaa !79
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str3, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nvbnd) #5, !dbg !92
  tail call void @exit(i32 -1) #6, !dbg !94
  unreachable, !dbg !94

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp slt i32 %nedges, 0, !dbg !95
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !95

if.then15:                                        ; preds = %if.end13
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !79
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([86 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nedges) #5, !dbg !96
  tail call void @exit(i32 -1) #6, !dbg !98
  unreachable, !dbg !98

if.end17:                                         ; preds = %if.end13
  %.off = add i32 %adjType, -1, !dbg !99
  %switch = icmp ult i32 %.off, 3, !dbg !99
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !99

sw.default:                                       ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !100, !tbaa !79
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([74 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %adjType) #5, !dbg !100
  tail call void @exit(i32 -1) #6, !dbg !102
  unreachable, !dbg !102

sw.epilog:                                        ; preds = %if.end17
  %.off51 = add i32 %ewghtType, -1, !dbg !103
  %switch52 = icmp ult i32 %.off51, 3, !dbg !103
  br i1 %switch52, label %sw.epilog22, label %sw.default20, !dbg !103

sw.default20:                                     ; preds = %sw.epilog
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !104, !tbaa !79
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([76 x i8]* @.str6, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %ewghtType) #5, !dbg !104
  tail call void @exit(i32 -1) #6, !dbg !106
  unreachable, !dbg !106

sw.epilog22:                                      ; preds = %sw.epilog
  tail call void @Graph_clearData(%struct._Graph* %g) #5, !dbg !107
  %type23 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !108
  store i32 %type, i32* %type23, align 4, !dbg !108, !tbaa !109
  %nvtx24 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !110
  store i32 %nvtx, i32* %nvtx24, align 4, !dbg !110, !tbaa !109
  %nvbnd25 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !111
  store i32 %nvbnd, i32* %nvbnd25, align 4, !dbg !111, !tbaa !109
  %nedges26 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 3, !dbg !112
  store i32 %nedges, i32* %nedges26, align 4, !dbg !112, !tbaa !109
  %add = add nsw i32 %nvbnd, %nvtx, !dbg !113
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !54), !dbg !113
  %call27 = tail call %struct._IVL* @IVL_new() #5, !dbg !114
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !114
  store %struct._IVL* %call27, %struct._IVL** %adjIVL, align 8, !dbg !114, !tbaa !79
  %cmp28 = icmp eq i32 %nedges, 0, !dbg !115
  %cmp30 = icmp eq i32 %adjType, 3, !dbg !115
  %or.cond = or i1 %cmp28, %cmp30, !dbg !115
  br i1 %or.cond, label %if.then31, label %if.else, !dbg !115

if.then31:                                        ; preds = %sw.epilog22
  tail call void @IVL_init1(%struct._IVL* %call27, i32 %adjType, i32 %add) #5, !dbg !116
  br label %if.end34, !dbg !118

if.else:                                          ; preds = %sw.epilog22
  tail call void @IVL_init2(%struct._IVL* %call27, i32 %adjType, i32 %add, i32 %nedges) #5, !dbg !119
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31
  %rem = srem i32 %type, 2, !dbg !121
  %cmp35 = icmp eq i32 %rem, 1, !dbg !121
  br i1 %cmp35, label %if.then36, label %if.end38, !dbg !121

if.then36:                                        ; preds = %if.end34
  %call37 = tail call i32* @IVinit(i32 %add, i32 0) #5, !dbg !122
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !122
  store i32* %call37, i32** %vwghts, align 8, !dbg !122, !tbaa !79
  br label %if.end38, !dbg !124

if.end38:                                         ; preds = %if.then36, %if.end34
  %cmp39 = icmp sgt i32 %type, 1, !dbg !125
  br i1 %cmp39, label %if.then40, label %if.end50, !dbg !125

if.then40:                                        ; preds = %if.end38
  %call41 = tail call %struct._IVL* @IVL_new() #5, !dbg !126
  %ewghtIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !126
  store %struct._IVL* %call41, %struct._IVL** %ewghtIVL, align 8, !dbg !126, !tbaa !79
  %cmp44 = icmp eq i32 %ewghtType, 3, !dbg !128
  %or.cond143 = or i1 %cmp28, %cmp44, !dbg !128
  br i1 %or.cond143, label %if.then45, label %if.else47, !dbg !128

if.then45:                                        ; preds = %if.then40
  tail call void @IVL_init1(%struct._IVL* %call41, i32 %ewghtType, i32 %add) #5, !dbg !129
  br label %if.end50, !dbg !131

if.else47:                                        ; preds = %if.then40
  tail call void @IVL_init2(%struct._IVL* %call41, i32 %ewghtType, i32 %add, i32 %nedges) #5, !dbg !132
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.else47, %if.end38
  ret void, !dbg !134
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
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

; Function Attrs: nounwind optsize uwtable
define void @Graph_init2(%struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Graph* %g}, i64 0, metadata !59), !dbg !135
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !60), !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %nvtx}, i64 0, metadata !61), !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32 %nvbnd}, i64 0, metadata !62), !dbg !138
  tail call void @llvm.dbg.value(metadata !{i32 %nedges}, i64 0, metadata !63), !dbg !139
  tail call void @llvm.dbg.value(metadata !{i32 %totvwght}, i64 0, metadata !64), !dbg !140
  tail call void @llvm.dbg.value(metadata !{i32 %totewght}, i64 0, metadata !65), !dbg !141
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %adjIVL}, i64 0, metadata !66), !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32* %vwghts}, i64 0, metadata !67), !dbg !143
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ewghtIVL}, i64 0, metadata !68), !dbg !144
  %cmp = icmp eq %struct._Graph* %g, null, !dbg !145
  br i1 %cmp, label %if.then, label %if.end, !dbg !145

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdout, align 8, !dbg !146, !tbaa !79
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), %struct._Graph* null, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL) #5, !dbg !146
  tail call void @exit(i32 -1) #6, !dbg !148
  unreachable, !dbg !148

if.end:                                           ; preds = %entry
  %1 = icmp ugt i32 %type, 3, !dbg !149
  br i1 %1, label %if.then3, label %if.end5, !dbg !149

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stdout, align 8, !dbg !150, !tbaa !79
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([98 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %type) #5, !dbg !150
  tail call void @exit(i32 -1) #6, !dbg !152
  unreachable, !dbg !152

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp slt i32 %nvtx, 1, !dbg !153
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !153

if.then7:                                         ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stdout, align 8, !dbg !154, !tbaa !79
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([90 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nvtx) #5, !dbg !154
  tail call void @exit(i32 -1) #6, !dbg !156
  unreachable, !dbg !156

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp slt i32 %nvbnd, 0, !dbg !157
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !157

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE** @stdout, align 8, !dbg !158, !tbaa !79
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([94 x i8]* @.str10, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nvbnd) #5, !dbg !158
  tail call void @exit(i32 -1) #6, !dbg !160
  unreachable, !dbg !160

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp slt i32 %nedges, 0, !dbg !161
  br i1 %cmp14, label %if.then15, label %if.end17, !dbg !161

if.then15:                                        ; preds = %if.end13
  %5 = load %struct._IO_FILE** @stdout, align 8, !dbg !162, !tbaa !79
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([95 x i8]* @.str11, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nedges) #5, !dbg !162
  tail call void @exit(i32 -1) #6, !dbg !164
  unreachable, !dbg !164

if.end17:                                         ; preds = %if.end13
  %cmp18 = icmp eq %struct._IVL* %adjIVL, null, !dbg !165
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !165

if.then19:                                        ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stdout, align 8, !dbg !166, !tbaa !79
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([77 x i8]* @.str12, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* null, i32* %vwghts, %struct._IVL* %ewghtIVL) #5, !dbg !166
  tail call void @exit(i32 -1) #6, !dbg !168
  unreachable, !dbg !168

if.end21:                                         ; preds = %if.end17
  %rem = srem i32 %type, 2, !dbg !169
  %cmp22 = icmp eq i32 %rem, 1, !dbg !169
  %cmp23 = icmp eq i32* %vwghts, null, !dbg !169
  %or.cond = and i1 %cmp22, %cmp23, !dbg !169
  br i1 %or.cond, label %if.then24, label %if.end26, !dbg !169

if.then24:                                        ; preds = %if.end21
  %7 = load %struct._IO_FILE** @stdout, align 8, !dbg !170, !tbaa !79
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([87 x i8]* @.str13, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* null, %struct._IVL* %ewghtIVL, i32 %type) #5, !dbg !170
  tail call void @exit(i32 -1) #6, !dbg !172
  unreachable, !dbg !172

if.end26:                                         ; preds = %if.end21
  %cmp27 = icmp sgt i32 %type, 1, !dbg !173
  %cmp29 = icmp eq %struct._IVL* %ewghtIVL, null, !dbg !173
  %or.cond157 = and i1 %cmp27, %cmp29, !dbg !173
  br i1 %or.cond157, label %if.then30, label %if.end32, !dbg !173

if.then30:                                        ; preds = %if.end26
  %8 = load %struct._IO_FILE** @stdout, align 8, !dbg !174, !tbaa !79
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([89 x i8]* @.str14, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* null, i32 %type) #5, !dbg !174
  tail call void @exit(i32 -1) #6, !dbg !176
  unreachable, !dbg !176

if.end32:                                         ; preds = %if.end26
  tail call void @Graph_clearData(%struct._Graph* %g) #5, !dbg !177
  %type33 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0, !dbg !178
  store i32 %type, i32* %type33, align 4, !dbg !178, !tbaa !109
  %nvtx34 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1, !dbg !179
  store i32 %nvtx, i32* %nvtx34, align 4, !dbg !179, !tbaa !109
  %nvbnd35 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2, !dbg !180
  store i32 %nvbnd, i32* %nvbnd35, align 4, !dbg !180, !tbaa !109
  %nedges36 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 3, !dbg !181
  store i32 %nedges, i32* %nedges36, align 4, !dbg !181, !tbaa !109
  %totvwght37 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 4, !dbg !182
  store i32 %totvwght, i32* %totvwght37, align 4, !dbg !182, !tbaa !109
  %totewght38 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 5, !dbg !183
  store i32 %totewght, i32* %totewght38, align 4, !dbg !183, !tbaa !109
  %adjIVL39 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6, !dbg !184
  store %struct._IVL* %adjIVL, %struct._IVL** %adjIVL39, align 8, !dbg !184, !tbaa !79
  br i1 %cmp22, label %if.then42, label %if.end44, !dbg !185

if.then42:                                        ; preds = %if.end32
  %vwghts43 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7, !dbg !186
  store i32* %vwghts, i32** %vwghts43, align 8, !dbg !186, !tbaa !79
  br label %if.end44, !dbg !188

if.end44:                                         ; preds = %if.then42, %if.end32
  br i1 %cmp27, label %if.then46, label %if.end48, !dbg !189

if.then46:                                        ; preds = %if.end44
  %ewghtIVL47 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8, !dbg !190
  store %struct._IVL* %ewghtIVL, %struct._IVL** %ewghtIVL47, align 8, !dbg !190, !tbaa !79
  br label %if.end48, !dbg !192

if.end48:                                         ; preds = %if.then46, %if.end44
  ret void, !dbg !193
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

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !55}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_init1", metadata !"Graph_init1", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Graph*, i32, i32, i32, i32, i32, i32)* @Graph_init1, null, null, metadata !46, i32 31} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 31] [Graph_init1]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !44, metadata !45}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !31} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !33} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!37 = metadata !{i32 786454, metadata !24, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!38 = metadata !{i32 786451, metadata !24, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !39, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!42 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!43 = metadata !{i32 786445, metadata !24, metadata !38, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !31} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54}
!47 = metadata !{i32 786689, metadata !4, metadata !"g", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 24]
!48 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 33554457, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 25]
!49 = metadata !{i32 786689, metadata !4, metadata !"nvtx", metadata !5, i32 50331674, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvtx] [line 26]
!50 = metadata !{i32 786689, metadata !4, metadata !"nvbnd", metadata !5, i32 67108891, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvbnd] [line 27]
!51 = metadata !{i32 786689, metadata !4, metadata !"nedges", metadata !5, i32 83886108, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nedges] [line 28]
!52 = metadata !{i32 786689, metadata !4, metadata !"adjType", metadata !5, i32 100663325, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [adjType] [line 29]
!53 = metadata !{i32 786689, metadata !4, metadata !"ewghtType", metadata !5, i32 117440542, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ewghtType] [line 30]
!54 = metadata !{i32 786688, metadata !4, metadata !"nvtot", metadata !5, i32 32, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtot] [line 32]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Graph_init2", metadata !"Graph_init2", metadata !"", i32 180, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._Graph*, i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL*)* @Graph_init2, null, null, metadata !58, i32 191} ; [ DW_TAG_subprogram ] [line 180] [def] [scope 191] [Graph_init2]
!56 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!57 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !21, metadata !31, metadata !21}
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!59 = metadata !{i32 786689, metadata !55, metadata !"g", metadata !5, i32 16777397, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [g] [line 181]
!60 = metadata !{i32 786689, metadata !55, metadata !"type", metadata !5, i32 33554614, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 182]
!61 = metadata !{i32 786689, metadata !55, metadata !"nvtx", metadata !5, i32 50331831, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvtx] [line 183]
!62 = metadata !{i32 786689, metadata !55, metadata !"nvbnd", metadata !5, i32 67109048, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nvbnd] [line 184]
!63 = metadata !{i32 786689, metadata !55, metadata !"nedges", metadata !5, i32 83886265, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nedges] [line 185]
!64 = metadata !{i32 786689, metadata !55, metadata !"totvwght", metadata !5, i32 100663482, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [totvwght] [line 186]
!65 = metadata !{i32 786689, metadata !55, metadata !"totewght", metadata !5, i32 117440699, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [totewght] [line 187]
!66 = metadata !{i32 786689, metadata !55, metadata !"adjIVL", metadata !5, i32 134217916, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [adjIVL] [line 188]
!67 = metadata !{i32 786689, metadata !55, metadata !"vwghts", metadata !5, i32 150995133, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vwghts] [line 189]
!68 = metadata !{i32 786689, metadata !55, metadata !"ewghtIVL", metadata !5, i32 167772350, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ewghtIVL] [line 190]
!69 = metadata !{i32 24, i32 0, metadata !4, null}
!70 = metadata !{i32 25, i32 0, metadata !4, null}
!71 = metadata !{i32 26, i32 0, metadata !4, null}
!72 = metadata !{i32 27, i32 0, metadata !4, null}
!73 = metadata !{i32 28, i32 0, metadata !4, null}
!74 = metadata !{i32 29, i32 0, metadata !4, null}
!75 = metadata !{i32 30, i32 0, metadata !4, null}
!76 = metadata !{i32 43, i32 0, metadata !4, null}
!77 = metadata !{i32 44, i32 0, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!79 = metadata !{metadata !"any pointer", metadata !80}
!80 = metadata !{metadata !"omnipotent char", metadata !81}
!81 = metadata !{metadata !"Simple C/C++ TBAA"}
!82 = metadata !{i32 47, i32 0, metadata !78, null}
!83 = metadata !{i32 49, i32 0, metadata !4, null}
!84 = metadata !{i32 50, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!86 = metadata !{i32 53, i32 0, metadata !85, null}
!87 = metadata !{i32 55, i32 0, metadata !4, null}
!88 = metadata !{i32 56, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!90 = metadata !{i32 59, i32 0, metadata !89, null}
!91 = metadata !{i32 61, i32 0, metadata !4, null}
!92 = metadata !{i32 62, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!94 = metadata !{i32 65, i32 0, metadata !93, null}
!95 = metadata !{i32 67, i32 0, metadata !4, null}
!96 = metadata !{i32 68, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 67, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!98 = metadata !{i32 71, i32 0, metadata !97, null}
!99 = metadata !{i32 77, i32 0, metadata !4, null}
!100 = metadata !{i32 83, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !4, i32 77, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!102 = metadata !{i32 86, i32 0, metadata !101, null}
!103 = metadata !{i32 88, i32 0, metadata !4, null}
!104 = metadata !{i32 94, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !4, i32 88, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!106 = metadata !{i32 97, i32 0, metadata !105, null}
!107 = metadata !{i32 104, i32 0, metadata !4, null}
!108 = metadata !{i32 110, i32 0, metadata !4, null}
!109 = metadata !{metadata !"int", metadata !80}
!110 = metadata !{i32 111, i32 0, metadata !4, null}
!111 = metadata !{i32 112, i32 0, metadata !4, null}
!112 = metadata !{i32 113, i32 0, metadata !4, null}
!113 = metadata !{i32 114, i32 0, metadata !4, null}
!114 = metadata !{i32 120, i32 0, metadata !4, null}
!115 = metadata !{i32 121, i32 0, metadata !4, null}
!116 = metadata !{i32 122, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !4, i32 121, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!118 = metadata !{i32 123, i32 0, metadata !117, null}
!119 = metadata !{i32 124, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !4, i32 123, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!121 = metadata !{i32 126, i32 0, metadata !4, null}
!122 = metadata !{i32 132, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !4, i32 126, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!124 = metadata !{i32 133, i32 0, metadata !123, null}
!125 = metadata !{i32 134, i32 0, metadata !4, null}
!126 = metadata !{i32 140, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !4, i32 134, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!128 = metadata !{i32 141, i32 0, metadata !127, null}
!129 = metadata !{i32 142, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !127, i32 141, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!131 = metadata !{i32 143, i32 0, metadata !130, null}
!132 = metadata !{i32 144, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !127, i32 143, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!134 = metadata !{i32 154, i32 0, metadata !4, null}
!135 = metadata !{i32 181, i32 0, metadata !55, null}
!136 = metadata !{i32 182, i32 0, metadata !55, null}
!137 = metadata !{i32 183, i32 0, metadata !55, null}
!138 = metadata !{i32 184, i32 0, metadata !55, null}
!139 = metadata !{i32 185, i32 0, metadata !55, null}
!140 = metadata !{i32 186, i32 0, metadata !55, null}
!141 = metadata !{i32 187, i32 0, metadata !55, null}
!142 = metadata !{i32 188, i32 0, metadata !55, null}
!143 = metadata !{i32 189, i32 0, metadata !55, null}
!144 = metadata !{i32 190, i32 0, metadata !55, null}
!145 = metadata !{i32 204, i32 0, metadata !55, null}
!146 = metadata !{i32 205, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !55, i32 204, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!148 = metadata !{i32 210, i32 0, metadata !147, null}
!149 = metadata !{i32 212, i32 0, metadata !55, null}
!150 = metadata !{i32 213, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !55, i32 212, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!152 = metadata !{i32 218, i32 0, metadata !151, null}
!153 = metadata !{i32 220, i32 0, metadata !55, null}
!154 = metadata !{i32 221, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !55, i32 220, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!156 = metadata !{i32 226, i32 0, metadata !155, null}
!157 = metadata !{i32 228, i32 0, metadata !55, null}
!158 = metadata !{i32 229, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !55, i32 228, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!160 = metadata !{i32 234, i32 0, metadata !159, null}
!161 = metadata !{i32 236, i32 0, metadata !55, null}
!162 = metadata !{i32 237, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !55, i32 236, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!164 = metadata !{i32 242, i32 0, metadata !163, null}
!165 = metadata !{i32 244, i32 0, metadata !55, null}
!166 = metadata !{i32 245, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !55, i32 244, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!168 = metadata !{i32 250, i32 0, metadata !167, null}
!169 = metadata !{i32 252, i32 0, metadata !55, null}
!170 = metadata !{i32 253, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !55, i32 252, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!172 = metadata !{i32 258, i32 0, metadata !171, null}
!173 = metadata !{i32 260, i32 0, metadata !55, null}
!174 = metadata !{i32 261, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !55, i32 260, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!176 = metadata !{i32 266, i32 0, metadata !175, null}
!177 = metadata !{i32 273, i32 0, metadata !55, null}
!178 = metadata !{i32 279, i32 0, metadata !55, null}
!179 = metadata !{i32 280, i32 0, metadata !55, null}
!180 = metadata !{i32 281, i32 0, metadata !55, null}
!181 = metadata !{i32 282, i32 0, metadata !55, null}
!182 = metadata !{i32 283, i32 0, metadata !55, null}
!183 = metadata !{i32 284, i32 0, metadata !55, null}
!184 = metadata !{i32 290, i32 0, metadata !55, null}
!185 = metadata !{i32 291, i32 0, metadata !55, null}
!186 = metadata !{i32 292, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !55, i32 291, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!188 = metadata !{i32 293, i32 0, metadata !187, null}
!189 = metadata !{i32 294, i32 0, metadata !55, null}
!190 = metadata !{i32 295, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !55, i32 294, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c]
!192 = metadata !{i32 296, i32 0, metadata !191, null}
!193 = metadata !{i32 307, i32 0, metadata !55, null}

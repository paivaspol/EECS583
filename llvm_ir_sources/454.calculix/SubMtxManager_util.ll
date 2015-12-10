; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [73 x i8] c"\0A fatal error in SubMtxMananger_newObjectOfSizeNbytes(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtxManager_releaseObject(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [71 x i8] c"\0A fatal error in SubMtxManager_releaseListOfObjects(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._SubMtx* @SubMtxManager_newObjectOfSizeNbytes(%struct._SubMtxManager* %manager, i32 %nbytesNeeded) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !62), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %nbytesNeeded}, i64 0, metadata !63), !dbg !88
  %cmp = icmp eq %struct._SubMtxManager* %manager, null, !dbg !89
  %cmp1 = icmp slt i32 %nbytesNeeded, 1, !dbg !89
  %or.cond = or i1 %cmp, %cmp1, !dbg !89
  br i1 %or.cond, label %if.then, label %if.end, !dbg !89

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !90, !tbaa !92
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), %struct._SubMtxManager* %manager, i32 %nbytesNeeded) #5, !dbg !90
  tail call void @exit(i32 -1) #6, !dbg !95
  unreachable, !dbg !95

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !96
  %1 = load %struct._Lock** %lock, align 8, !dbg !96, !tbaa !92
  %cmp2 = icmp eq %struct._Lock* %1, null, !dbg !96
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !96

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #5, !dbg !97
  %nlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9, !dbg !99
  %2 = load i32* %nlocks, align 4, !dbg !99, !tbaa !100
  %inc = add nsw i32 %2, 1, !dbg !99
  store i32 %inc, i32* %nlocks, align 4, !dbg !99, !tbaa !100
  br label %if.end5, !dbg !101

if.end5:                                          ; preds = %if.end, %if.then3
  %head = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0, !dbg !102
  tail call void @llvm.dbg.value(metadata !104, i64 0, metadata !65), !dbg !102
  %mtx.072 = load %struct._SubMtx** %head, align 8, !dbg !102
  %cmp673 = icmp eq %struct._SubMtx* %mtx.072, null, !dbg !102
  br i1 %cmp673, label %if.then26, label %for.body, !dbg !102

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct._SubMtx* %mtx.075, i64 0, i32 9, !dbg !105
  %mtx.0 = load %struct._SubMtx** %next, align 8, !dbg !102
  %cmp6 = icmp eq %struct._SubMtx* %mtx.0, null, !dbg !102
  br i1 %cmp6, label %if.then26, label %for.body, !dbg !102

for.body:                                         ; preds = %if.end5, %for.cond
  %mtx.075 = phi %struct._SubMtx* [ %mtx.0, %for.cond ], [ %mtx.072, %if.end5 ]
  %prev.074 = phi %struct._SubMtx* [ %mtx.075, %for.cond ], [ null, %if.end5 ]
  %call7 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx.075) #5, !dbg !106
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !66), !dbg !106
  %cmp8 = icmp slt i32 %call7, %nbytesNeeded, !dbg !108
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx.075}, i64 0, metadata !65), !dbg !109
  br i1 %cmp8, label %for.cond, label %if.then12, !dbg !108

if.then12:                                        ; preds = %for.body
  %cmp13 = icmp eq %struct._SubMtx* %prev.074, null, !dbg !110
  %next15 = getelementptr inbounds %struct._SubMtx* %mtx.075, i64 0, i32 9, !dbg !112
  %3 = load %struct._SubMtx** %next15, align 8, !dbg !112, !tbaa !92
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !110

if.then14:                                        ; preds = %if.then12
  store %struct._SubMtx* %3, %struct._SubMtx** %head, align 8, !dbg !112, !tbaa !92
  br label %if.end28, !dbg !114

if.else:                                          ; preds = %if.then12
  %next18 = getelementptr inbounds %struct._SubMtx* %prev.074, i64 0, i32 9, !dbg !115
  store %struct._SubMtx* %3, %struct._SubMtx** %next18, align 8, !dbg !115, !tbaa !92
  br label %if.end28

if.then26:                                        ; preds = %for.cond, %if.end5
  %call21 = tail call %struct._SubMtx* @SubMtx_new() #5, !dbg !117
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %call21}, i64 0, metadata !64), !dbg !117
  tail call void @llvm.dbg.value(metadata !119, i64 0, metadata !67), !dbg !120
  %wrkDV = getelementptr inbounds %struct._SubMtx* %call21, i64 0, i32 8, !dbg !121
  %conv = sext i32 %nbytesNeeded to i64, !dbg !121
  %div = lshr i64 %conv, 3, !dbg !121
  %conv22 = trunc i64 %div to i32, !dbg !121
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv22) #5, !dbg !121
  %call27 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %call21) #5, !dbg !122
  %nbytesalloc = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 6, !dbg !122
  %4 = load i32* %nbytesalloc, align 4, !dbg !122, !tbaa !100
  %add = add nsw i32 %4, %call27, !dbg !122
  store i32 %add, i32* %nbytesalloc, align 4, !dbg !122, !tbaa !100
  br label %if.end28, !dbg !124

if.end28:                                         ; preds = %if.then14, %if.else, %if.then26
  %mtx.169 = phi %struct._SubMtx* [ %call21, %if.then26 ], [ %mtx.075, %if.else ], [ %mtx.075, %if.then14 ]
  %nactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3, !dbg !125
  %5 = load i32* %nactive, align 4, !dbg !125, !tbaa !100
  %inc29 = add nsw i32 %5, 1, !dbg !125
  store i32 %inc29, i32* %nactive, align 4, !dbg !125, !tbaa !100
  %call30 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx.169) #5, !dbg !126
  %nbytesactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4, !dbg !126
  %6 = load i32* %nbytesactive, align 4, !dbg !126, !tbaa !100
  %add31 = add nsw i32 %6, %call30, !dbg !126
  store i32 %add31, i32* %nbytesactive, align 4, !dbg !126, !tbaa !100
  %nbytesrequested = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 5, !dbg !127
  %7 = load i32* %nbytesrequested, align 4, !dbg !127, !tbaa !100
  %add32 = add nsw i32 %7, %nbytesNeeded, !dbg !127
  store i32 %add32, i32* %nbytesrequested, align 4, !dbg !127, !tbaa !100
  %nrequests = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 7, !dbg !128
  %8 = load i32* %nrequests, align 4, !dbg !128, !tbaa !100
  %inc33 = add nsw i32 %8, 1, !dbg !128
  store i32 %inc33, i32* %nrequests, align 4, !dbg !128, !tbaa !100
  %9 = load %struct._Lock** %lock, align 8, !dbg !129, !tbaa !92
  %cmp35 = icmp eq %struct._Lock* %9, null, !dbg !129
  br i1 %cmp35, label %if.end40, label %if.then37, !dbg !129

if.then37:                                        ; preds = %if.end28
  %nunlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10, !dbg !130
  %10 = load i32* %nunlocks, align 4, !dbg !130, !tbaa !100
  %inc38 = add nsw i32 %10, 1, !dbg !130
  store i32 %inc38, i32* %nunlocks, align 4, !dbg !130, !tbaa !100
  tail call void @Lock_unlock(%struct._Lock* %9) #5, !dbg !132
  br label %if.end40, !dbg !133

if.end40:                                         ; preds = %if.end28, %if.then37
  ret %struct._SubMtx* %mtx.169, !dbg !134
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #3

; Function Attrs: optsize
declare i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx*) #3

; Function Attrs: optsize
declare %struct._SubMtx* @SubMtx_new() #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtxManager_releaseObject(%struct._SubMtxManager* %manager, %struct._SubMtx* %mtx1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !72), !dbg !135
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx1}, i64 0, metadata !73), !dbg !136
  %cmp = icmp eq %struct._SubMtxManager* %manager, null, !dbg !137
  %cmp1 = icmp eq %struct._SubMtx* %mtx1, null, !dbg !137
  %or.cond = or i1 %cmp, %cmp1, !dbg !137
  br i1 %or.cond, label %if.then, label %if.end, !dbg !137

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !138, !tbaa !92
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), %struct._SubMtxManager* %manager, %struct._SubMtx* %mtx1) #5, !dbg !138
  tail call void @exit(i32 -1) #6, !dbg !140
  unreachable, !dbg !140

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !141
  %1 = load %struct._Lock** %lock, align 8, !dbg !141, !tbaa !92
  %cmp2 = icmp eq %struct._Lock* %1, null, !dbg !141
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !141

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #5, !dbg !142
  %nlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9, !dbg !144
  %2 = load i32* %nlocks, align 4, !dbg !144, !tbaa !100
  %inc = add nsw i32 %2, 1, !dbg !144
  store i32 %inc, i32* %nlocks, align 4, !dbg !144, !tbaa !100
  br label %if.end5, !dbg !145

if.end5:                                          ; preds = %if.end, %if.then3
  %nreleases = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8, !dbg !146
  %3 = load i32* %nreleases, align 4, !dbg !146, !tbaa !100
  %inc6 = add nsw i32 %3, 1, !dbg !146
  store i32 %inc6, i32* %nreleases, align 4, !dbg !146, !tbaa !100
  %call7 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx1) #5, !dbg !147
  %nbytesactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4, !dbg !147
  %4 = load i32* %nbytesactive, align 4, !dbg !147, !tbaa !100
  %sub = sub nsw i32 %4, %call7, !dbg !147
  store i32 %sub, i32* %nbytesactive, align 4, !dbg !147, !tbaa !100
  %nactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3, !dbg !148
  %5 = load i32* %nactive, align 4, !dbg !148, !tbaa !100
  %dec = add nsw i32 %5, -1, !dbg !148
  store i32 %dec, i32* %nactive, align 4, !dbg !148, !tbaa !100
  %mode = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 2, !dbg !149
  %6 = load i32* %mode, align 4, !dbg !149, !tbaa !100
  %cmp8 = icmp eq i32 %6, 0, !dbg !149
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !149

if.then9:                                         ; preds = %if.end5
  tail call void @SubMtx_free(%struct._SubMtx* %mtx1) #5, !dbg !150
  br label %if.end23, !dbg !152

if.else:                                          ; preds = %if.end5
  %call10 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx1) #5, !dbg !153
  tail call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !76), !dbg !153
  %head = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0, !dbg !155
  tail call void @llvm.dbg.value(metadata !104, i64 0, metadata !75), !dbg !155
  %mtx2.053 = load %struct._SubMtx** %head, align 8, !dbg !155
  %cmp1154 = icmp eq %struct._SubMtx* %mtx2.053, null, !dbg !155
  br i1 %cmp1154, label %if.then17, label %for.body, !dbg !155

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct._SubMtx* %mtx2.056, i64 0, i32 9, !dbg !157
  %mtx2.0 = load %struct._SubMtx** %next, align 8, !dbg !155
  %cmp11 = icmp eq %struct._SubMtx* %mtx2.0, null, !dbg !155
  br i1 %cmp11, label %for.end, label %for.body, !dbg !155

for.body:                                         ; preds = %if.else, %for.cond
  %mtx2.056 = phi %struct._SubMtx* [ %mtx2.0, %for.cond ], [ %mtx2.053, %if.else ]
  %prev.055 = phi %struct._SubMtx* [ %mtx2.056, %for.cond ], [ null, %if.else ]
  %call12 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx2.056) #5, !dbg !158
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !77), !dbg !158
  %cmp13 = icmp slt i32 %call12, %call10, !dbg !160
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx2.0.lcssa62}, i64 0, metadata !75), !dbg !161
  br i1 %cmp13, label %for.cond, label %for.end, !dbg !160

for.end:                                          ; preds = %for.cond, %for.body
  %mtx2.0.lcssa = phi %struct._SubMtx* [ %mtx2.056, %for.body ], [ null, %for.cond ]
  %prev.0.lcssa = phi %struct._SubMtx* [ %prev.055, %for.body ], [ %mtx2.056, %for.cond ]
  %cmp16 = icmp eq %struct._SubMtx* %prev.0.lcssa, null, !dbg !162
  br i1 %cmp16, label %if.then17, label %if.else19, !dbg !162

if.then17:                                        ; preds = %if.else, %for.end
  %mtx2.0.lcssa63 = phi %struct._SubMtx* [ %mtx2.0.lcssa, %for.end ], [ null, %if.else ]
  store %struct._SubMtx* %mtx1, %struct._SubMtx** %head, align 8, !dbg !163, !tbaa !92
  br label %if.end21, !dbg !165

if.else19:                                        ; preds = %for.end
  %next20 = getelementptr inbounds %struct._SubMtx* %prev.0.lcssa, i64 0, i32 9, !dbg !166
  store %struct._SubMtx* %mtx1, %struct._SubMtx** %next20, align 8, !dbg !166, !tbaa !92
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %mtx2.0.lcssa62 = phi %struct._SubMtx* [ %mtx2.0.lcssa, %if.else19 ], [ %mtx2.0.lcssa63, %if.then17 ]
  %next22 = getelementptr inbounds %struct._SubMtx* %mtx1, i64 0, i32 9, !dbg !168
  store %struct._SubMtx* %mtx2.0.lcssa62, %struct._SubMtx** %next22, align 8, !dbg !168, !tbaa !92
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.then9
  %7 = load %struct._Lock** %lock, align 8, !dbg !169, !tbaa !92
  %cmp25 = icmp eq %struct._Lock* %7, null, !dbg !169
  br i1 %cmp25, label %if.end29, label %if.then26, !dbg !169

if.then26:                                        ; preds = %if.end23
  %nunlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10, !dbg !170
  %8 = load i32* %nunlocks, align 4, !dbg !170, !tbaa !100
  %inc27 = add nsw i32 %8, 1, !dbg !170
  store i32 %inc27, i32* %nunlocks, align 4, !dbg !170, !tbaa !100
  tail call void @Lock_unlock(%struct._Lock* %7) #5, !dbg !172
  br label %if.end29, !dbg !173

if.end29:                                         ; preds = %if.end23, %if.then26
  ret void, !dbg !174
}

; Function Attrs: optsize
declare void @SubMtx_free(%struct._SubMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtxManager_releaseListOfObjects(%struct._SubMtxManager* %manager, %struct._SubMtx* %head) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtxManager* %manager}, i64 0, metadata !80), !dbg !175
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %head}, i64 0, metadata !81), !dbg !176
  %cmp = icmp eq %struct._SubMtxManager* %manager, null, !dbg !177
  %cmp1 = icmp eq %struct._SubMtx* %head, null, !dbg !177
  %or.cond = or i1 %cmp, %cmp1, !dbg !177
  br i1 %or.cond, label %if.then, label %if.end, !dbg !177

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !92
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([71 x i8]* @.str2, i64 0, i64 0), %struct._SubMtxManager* %manager, %struct._SubMtx* %head) #5, !dbg !178
  tail call void @exit(i32 -1) #6, !dbg !180
  unreachable, !dbg !180

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 1, !dbg !181
  %1 = load %struct._Lock** %lock, align 8, !dbg !181, !tbaa !92
  %cmp2 = icmp eq %struct._Lock* %1, null, !dbg !181
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !181

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #5, !dbg !182
  %nlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 9, !dbg !184
  %2 = load i32* %nlocks, align 4, !dbg !184, !tbaa !100
  %inc = add nsw i32 %2, 1, !dbg !184
  store i32 %inc, i32* %nlocks, align 4, !dbg !184, !tbaa !100
  br label %if.end5, !dbg !185

if.end5:                                          ; preds = %if.end, %if.then3
  %mode = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 2, !dbg !186
  %3 = load i32* %mode, align 4, !dbg !186, !tbaa !100
  %cmp6 = icmp eq i32 %3, 0, !dbg !186
  br i1 %cmp6, label %while.body.lr.ph, label %while.body13.lr.ph, !dbg !186

while.body13.lr.ph:                               ; preds = %if.end5
  %head16 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 0, !dbg !187
  %nbytesactive31 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4, !dbg !191
  %nactive33 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3, !dbg !192
  %nreleases35 = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8, !dbg !193
  br label %while.body13, !dbg !194

while.body.lr.ph:                                 ; preds = %if.end5
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %head}, i64 0, metadata !82), !dbg !195
  %nbytesactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 4, !dbg !197
  %nactive = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 3, !dbg !199
  %nreleases = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 8, !dbg !200
  br label %while.body, !dbg !195

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %head.addr.078 = phi %struct._SubMtx* [ %head, %while.body.lr.ph ], [ %4, %while.body ]
  %next = getelementptr inbounds %struct._SubMtx* %head.addr.078, i64 0, i32 9, !dbg !201
  %4 = load %struct._SubMtx** %next, align 8, !dbg !201, !tbaa !92
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %4}, i64 0, metadata !81), !dbg !201
  %call9 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %head.addr.078) #5, !dbg !197
  %5 = load i32* %nbytesactive, align 4, !dbg !197, !tbaa !100
  %sub = sub nsw i32 %5, %call9, !dbg !197
  store i32 %sub, i32* %nbytesactive, align 4, !dbg !197, !tbaa !100
  %6 = load i32* %nactive, align 4, !dbg !199, !tbaa !100
  %dec = add nsw i32 %6, -1, !dbg !199
  store i32 %dec, i32* %nactive, align 4, !dbg !199, !tbaa !100
  %7 = load i32* %nreleases, align 4, !dbg !200, !tbaa !100
  %inc10 = add nsw i32 %7, 1, !dbg !200
  store i32 %inc10, i32* %nreleases, align 4, !dbg !200, !tbaa !100
  tail call void @SubMtx_free(%struct._SubMtx* %head.addr.078) #5, !dbg !202
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %head.addr.078}, i64 0, metadata !82), !dbg !195
  %cmp8 = icmp eq %struct._SubMtx* %4, null, !dbg !195
  br i1 %cmp8, label %if.end38, label %while.body, !dbg !195

while.body13:                                     ; preds = %while.body13.lr.ph, %if.end28
  %head.addr.186 = phi %struct._SubMtx* [ %head, %while.body13.lr.ph ], [ %8, %if.end28 ]
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %head.addr.186}, i64 0, metadata !82), !dbg !203
  %next14 = getelementptr inbounds %struct._SubMtx* %head.addr.186, i64 0, i32 9, !dbg !204
  %8 = load %struct._SubMtx** %next14, align 8, !dbg !204, !tbaa !92
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %8}, i64 0, metadata !81), !dbg !204
  %call15 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %head.addr.186) #5, !dbg !205
  tail call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !85), !dbg !205
  tail call void @llvm.dbg.value(metadata !104, i64 0, metadata !84), !dbg !187
  %mtx2.079 = load %struct._SubMtx** %head16, align 8, !dbg !187
  %cmp1780 = icmp eq %struct._SubMtx* %mtx2.079, null, !dbg !187
  br i1 %cmp1780, label %if.then24, label %for.body, !dbg !187

for.cond:                                         ; preds = %for.body
  %next22 = getelementptr inbounds %struct._SubMtx* %mtx2.082, i64 0, i32 9, !dbg !206
  %mtx2.0 = load %struct._SubMtx** %next22, align 8, !dbg !187
  %cmp17 = icmp eq %struct._SubMtx* %mtx2.0, null, !dbg !187
  br i1 %cmp17, label %for.end, label %for.body, !dbg !187

for.body:                                         ; preds = %while.body13, %for.cond
  %mtx2.082 = phi %struct._SubMtx* [ %mtx2.0, %for.cond ], [ %mtx2.079, %while.body13 ]
  %prev.081 = phi %struct._SubMtx* [ %mtx2.082, %for.cond ], [ null, %while.body13 ]
  %call18 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx2.082) #5, !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !86), !dbg !207
  %cmp19 = icmp slt i32 %call18, %call15, !dbg !209
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx2.0.lcssa91}, i64 0, metadata !84), !dbg !210
  br i1 %cmp19, label %for.cond, label %for.end, !dbg !209

for.end:                                          ; preds = %for.cond, %for.body
  %mtx2.0.lcssa = phi %struct._SubMtx* [ %mtx2.082, %for.body ], [ null, %for.cond ]
  %prev.0.lcssa = phi %struct._SubMtx* [ %prev.081, %for.body ], [ %mtx2.082, %for.cond ]
  %cmp23 = icmp eq %struct._SubMtx* %prev.0.lcssa, null, !dbg !211
  br i1 %cmp23, label %if.then24, label %if.else26, !dbg !211

if.then24:                                        ; preds = %while.body13, %for.end
  %mtx2.0.lcssa92 = phi %struct._SubMtx* [ %mtx2.0.lcssa, %for.end ], [ null, %while.body13 ]
  store %struct._SubMtx* %head.addr.186, %struct._SubMtx** %head16, align 8, !dbg !212, !tbaa !92
  br label %if.end28, !dbg !214

if.else26:                                        ; preds = %for.end
  %next27 = getelementptr inbounds %struct._SubMtx* %prev.0.lcssa, i64 0, i32 9, !dbg !215
  store %struct._SubMtx* %head.addr.186, %struct._SubMtx** %next27, align 8, !dbg !215, !tbaa !92
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  %mtx2.0.lcssa91 = phi %struct._SubMtx* [ %mtx2.0.lcssa, %if.else26 ], [ %mtx2.0.lcssa92, %if.then24 ]
  store %struct._SubMtx* %mtx2.0.lcssa91, %struct._SubMtx** %next14, align 8, !dbg !217, !tbaa !92
  %call30 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %head.addr.186) #5, !dbg !191
  %9 = load i32* %nbytesactive31, align 4, !dbg !191, !tbaa !100
  %sub32 = sub nsw i32 %9, %call30, !dbg !191
  store i32 %sub32, i32* %nbytesactive31, align 4, !dbg !191, !tbaa !100
  %10 = load i32* %nactive33, align 4, !dbg !192, !tbaa !100
  %dec34 = add nsw i32 %10, -1, !dbg !192
  store i32 %dec34, i32* %nactive33, align 4, !dbg !192, !tbaa !100
  %11 = load i32* %nreleases35, align 4, !dbg !193, !tbaa !100
  %inc36 = add nsw i32 %11, 1, !dbg !193
  store i32 %inc36, i32* %nreleases35, align 4, !dbg !193, !tbaa !100
  %cmp12 = icmp eq %struct._SubMtx* %8, null, !dbg !194
  br i1 %cmp12, label %if.end38, label %while.body13, !dbg !194

if.end38:                                         ; preds = %if.end28, %while.body
  %12 = load %struct._Lock** %lock, align 8, !dbg !218, !tbaa !92
  %cmp40 = icmp eq %struct._Lock* %12, null, !dbg !218
  br i1 %cmp40, label %if.end44, label %if.then41, !dbg !218

if.then41:                                        ; preds = %if.end38
  %nunlocks = getelementptr inbounds %struct._SubMtxManager* %manager, i64 0, i32 10, !dbg !219
  %13 = load i32* %nunlocks, align 4, !dbg !219, !tbaa !100
  %inc42 = add nsw i32 %13, 1, !dbg !219
  store i32 %inc42, i32* %nunlocks, align 4, !dbg !219, !tbaa !100
  tail call void @Lock_unlock(%struct._Lock* %12) #5, !dbg !221
  br label %if.end44, !dbg !222

if.end44:                                         ; preds = %if.end38, %if.then41
  ret void, !dbg !223
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !68, metadata !78}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtxManager_newObjectOfSizeNbytes", metadata !"SubMtxManager_newObjectOfSizeNbytes", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._SubMtx* (%struct._SubMtxManager*, i32)* @SubMtxManager_newObjectOfSizeNbytes, null, null, metadata !61, i32 20} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 20] [SubMtxManager_newObjectOfSizeNbytes]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !36, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../SubMtx/SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !33}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!35 = metadata !{i32 786454, metadata !11, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtxManager]
!37 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtxManager", i32 9, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [SubMtxManager] [line 9, size 0, align 0, offset 0] [from _SubMtxManager]
!38 = metadata !{i32 786451, metadata !39, null, metadata !"_SubMtxManager", i32 10, i64 448, i64 64, i32 0, i32 0, null, metadata !40, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtxManager] [line 10, size 448, align 64, offset 0] [from ]
!39 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../SubMtxManager.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!40 = metadata !{metadata !41, metadata !42, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60}
!41 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"head", i32 11, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [head] [line 11, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"lock", i32 12, i64 64, i64 64, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [lock] [line 12, size 64, align 64, offset 64] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!44 = metadata !{i32 786454, metadata !39, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!45 = metadata !{i32 786451, metadata !46, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!46 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!47 = metadata !{metadata !48, metadata !50, metadata !51}
!48 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!50 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!51 = metadata !{i32 786445, metadata !46, metadata !45, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!52 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"mode", i32 13, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 13, size 32, align 32, offset 128] [from int]
!53 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nactive", i32 14, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nactive] [line 14, size 32, align 32, offset 160] [from int]
!54 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nbytesactive", i32 15, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesactive] [line 15, size 32, align 32, offset 192] [from int]
!55 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nbytesrequested", i32 16, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesrequested] [line 16, size 32, align 32, offset 224] [from int]
!56 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nbytesalloc", i32 17, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesalloc] [line 17, size 32, align 32, offset 256] [from int]
!57 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nrequests", i32 18, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nrequests] [line 18, size 32, align 32, offset 288] [from int]
!58 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nreleases", i32 19, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [nreleases] [line 19, size 32, align 32, offset 320] [from int]
!59 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nlocks", i32 20, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 20, size 32, align 32, offset 352] [from int]
!60 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nunlocks", i32 21, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 21, size 32, align 32, offset 384] [from int]
!61 = metadata !{metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67}
!62 = metadata !{i32 786689, metadata !4, metadata !"manager", metadata !5, i32 16777234, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 18]
!63 = metadata !{i32 786689, metadata !4, metadata !"nbytesNeeded", metadata !5, i32 33554451, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytesNeeded] [line 19]
!64 = metadata !{i32 786688, metadata !4, metadata !"mtx", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx] [line 21]
!65 = metadata !{i32 786688, metadata !4, metadata !"prev", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 21]
!66 = metadata !{i32 786688, metadata !4, metadata !"nbytesAvailable", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytesAvailable] [line 22]
!67 = metadata !{i32 786688, metadata !4, metadata !"newinstance", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newinstance] [line 22]
!68 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtxManager_releaseObject", metadata !"SubMtxManager_releaseObject", metadata !"", i32 144, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtxManager*, %struct._SubMtx*)* @SubMtxManager_releaseObject, null, null, metadata !71, i32 147} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 147] [SubMtxManager_releaseObject]
!69 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!70 = metadata !{null, metadata !36, metadata !8}
!71 = metadata !{metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77}
!72 = metadata !{i32 786689, metadata !68, metadata !"manager", metadata !5, i32 16777361, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 145]
!73 = metadata !{i32 786689, metadata !68, metadata !"mtx1", metadata !5, i32 33554578, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx1] [line 146]
!74 = metadata !{i32 786688, metadata !68, metadata !"mtx2", metadata !5, i32 148, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx2] [line 148]
!75 = metadata !{i32 786688, metadata !68, metadata !"prev", metadata !5, i32 148, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 148]
!76 = metadata !{i32 786688, metadata !68, metadata !"nbytes1", metadata !5, i32 149, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes1] [line 149]
!77 = metadata !{i32 786688, metadata !68, metadata !"nbytes2", metadata !5, i32 149, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes2] [line 149]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtxManager_releaseListOfObjects", metadata !"SubMtxManager_releaseListOfObjects", metadata !"", i32 251, metadata !69, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtxManager*, %struct._SubMtx*)* @SubMtxManager_releaseListOfObjects, null, null, metadata !79, i32 254} ; [ DW_TAG_subprogram ] [line 251] [def] [scope 254] [SubMtxManager_releaseListOfObjects]
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!80 = metadata !{i32 786689, metadata !78, metadata !"manager", metadata !5, i32 16777468, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 252]
!81 = metadata !{i32 786689, metadata !78, metadata !"head", metadata !5, i32 33554685, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [head] [line 253]
!82 = metadata !{i32 786688, metadata !78, metadata !"mtx1", metadata !5, i32 255, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx1] [line 255]
!83 = metadata !{i32 786688, metadata !78, metadata !"mtx2", metadata !5, i32 255, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mtx2] [line 255]
!84 = metadata !{i32 786688, metadata !78, metadata !"prev", metadata !5, i32 255, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 255]
!85 = metadata !{i32 786688, metadata !78, metadata !"nbytes1", metadata !5, i32 256, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes1] [line 256]
!86 = metadata !{i32 786688, metadata !78, metadata !"nbytes2", metadata !5, i32 256, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes2] [line 256]
!87 = metadata !{i32 18, i32 0, metadata !4, null}
!88 = metadata !{i32 19, i32 0, metadata !4, null}
!89 = metadata !{i32 28, i32 0, metadata !4, null}
!90 = metadata !{i32 29, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!92 = metadata !{metadata !"any pointer", metadata !93}
!93 = metadata !{metadata !"omnipotent char", metadata !94}
!94 = metadata !{metadata !"Simple C/C++ TBAA"}
!95 = metadata !{i32 32, i32 0, metadata !91, null}
!96 = metadata !{i32 39, i32 0, metadata !4, null}
!97 = metadata !{i32 45, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !4, i32 39, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!99 = metadata !{i32 50, i32 0, metadata !98, null}
!100 = metadata !{metadata !"int", metadata !93}
!101 = metadata !{i32 55, i32 0, metadata !98, null}
!102 = metadata !{i32 61, i32 0, metadata !103, null}
!103 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!104 = metadata !{%struct._SubMtx* null}
!105 = metadata !{i32 63, i32 0, metadata !103, null}
!106 = metadata !{i32 64, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !103, i32 63, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!108 = metadata !{i32 70, i32 0, metadata !107, null}
!109 = metadata !{i32 73, i32 0, metadata !107, null}
!110 = metadata !{i32 86, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !4, i32 75, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!112 = metadata !{i32 87, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !111, i32 86, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!114 = metadata !{i32 88, i32 0, metadata !113, null}
!115 = metadata !{i32 89, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !111, i32 88, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!117 = metadata !{i32 98, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !4, i32 92, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!119 = metadata !{i32 1}
!120 = metadata !{i32 105, i32 0, metadata !118, null}
!121 = metadata !{i32 106, i32 0, metadata !118, null}
!122 = metadata !{i32 109, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !4, i32 108, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!124 = metadata !{i32 110, i32 0, metadata !123, null}
!125 = metadata !{i32 111, i32 0, metadata !4, null}
!126 = metadata !{i32 112, i32 0, metadata !4, null}
!127 = metadata !{i32 113, i32 0, metadata !4, null}
!128 = metadata !{i32 118, i32 0, metadata !4, null}
!129 = metadata !{i32 119, i32 0, metadata !4, null}
!130 = metadata !{i32 125, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !4, i32 119, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!132 = metadata !{i32 131, i32 0, metadata !131, null}
!133 = metadata !{i32 132, i32 0, metadata !131, null}
!134 = metadata !{i32 133, i32 0, metadata !4, null}
!135 = metadata !{i32 145, i32 0, metadata !68, null}
!136 = metadata !{i32 146, i32 0, metadata !68, null}
!137 = metadata !{i32 155, i32 0, metadata !68, null}
!138 = metadata !{i32 156, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !68, i32 155, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!140 = metadata !{i32 159, i32 0, metadata !139, null}
!141 = metadata !{i32 161, i32 0, metadata !68, null}
!142 = metadata !{i32 167, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !68, i32 161, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!144 = metadata !{i32 168, i32 0, metadata !143, null}
!145 = metadata !{i32 174, i32 0, metadata !143, null}
!146 = metadata !{i32 175, i32 0, metadata !68, null}
!147 = metadata !{i32 176, i32 0, metadata !68, null}
!148 = metadata !{i32 177, i32 0, metadata !68, null}
!149 = metadata !{i32 178, i32 0, metadata !68, null}
!150 = metadata !{i32 184, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !68, i32 178, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!152 = metadata !{i32 185, i32 0, metadata !151, null}
!153 = metadata !{i32 192, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !68, i32 185, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!155 = metadata !{i32 197, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !154, i32 197, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!157 = metadata !{i32 199, i32 0, metadata !156, null}
!158 = metadata !{i32 200, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !156, i32 199, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!160 = metadata !{i32 204, i32 0, metadata !159, null}
!161 = metadata !{i32 207, i32 0, metadata !159, null}
!162 = metadata !{i32 209, i32 0, metadata !154, null}
!163 = metadata !{i32 210, i32 0, metadata !164, null}
!164 = metadata !{i32 786443, metadata !1, metadata !154, i32 209, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!165 = metadata !{i32 214, i32 0, metadata !164, null}
!166 = metadata !{i32 215, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !154, i32 214, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!168 = metadata !{i32 220, i32 0, metadata !154, null}
!169 = metadata !{i32 225, i32 0, metadata !68, null}
!170 = metadata !{i32 231, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !68, i32 225, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!172 = metadata !{i32 238, i32 0, metadata !171, null}
!173 = metadata !{i32 239, i32 0, metadata !171, null}
!174 = metadata !{i32 240, i32 0, metadata !68, null}
!175 = metadata !{i32 252, i32 0, metadata !78, null}
!176 = metadata !{i32 253, i32 0, metadata !78, null}
!177 = metadata !{i32 262, i32 0, metadata !78, null}
!178 = metadata !{i32 263, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !78, i32 262, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!180 = metadata !{i32 266, i32 0, metadata !179, null}
!181 = metadata !{i32 268, i32 0, metadata !78, null}
!182 = metadata !{i32 274, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !78, i32 268, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!184 = metadata !{i32 275, i32 0, metadata !183, null}
!185 = metadata !{i32 282, i32 0, metadata !183, null}
!186 = metadata !{i32 283, i32 0, metadata !78, null}
!187 = metadata !{i32 316, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !189, i32 316, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!189 = metadata !{i32 786443, metadata !1, metadata !190, i32 302, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!190 = metadata !{i32 786443, metadata !1, metadata !78, i32 296, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!191 = metadata !{i32 344, i32 0, metadata !189, null}
!192 = metadata !{i32 345, i32 0, metadata !189, null}
!193 = metadata !{i32 346, i32 0, metadata !189, null}
!194 = metadata !{i32 302, i32 0, metadata !190, null}
!195 = metadata !{i32 289, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !78, i32 283, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!197 = metadata !{i32 291, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !196, i32 289, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!199 = metadata !{i32 292, i32 0, metadata !198, null}
!200 = metadata !{i32 293, i32 0, metadata !198, null}
!201 = metadata !{i32 290, i32 0, metadata !198, null}
!202 = metadata !{i32 294, i32 0, metadata !198, null}
!203 = metadata !{i32 303, i32 0, metadata !189, null}
!204 = metadata !{i32 304, i32 0, metadata !189, null}
!205 = metadata !{i32 311, i32 0, metadata !189, null}
!206 = metadata !{i32 318, i32 0, metadata !188, null}
!207 = metadata !{i32 319, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !188, i32 318, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!209 = metadata !{i32 324, i32 0, metadata !208, null}
!210 = metadata !{i32 327, i32 0, metadata !208, null}
!211 = metadata !{i32 329, i32 0, metadata !189, null}
!212 = metadata !{i32 330, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !189, i32 329, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!214 = metadata !{i32 334, i32 0, metadata !213, null}
!215 = metadata !{i32 335, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !189, i32 334, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!217 = metadata !{i32 340, i32 0, metadata !189, null}
!218 = metadata !{i32 357, i32 0, metadata !78, null}
!219 = metadata !{i32 363, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !78, i32 357, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtxManager/src/SubMtxManager_util.c]
!221 = metadata !{i32 370, i32 0, metadata !220, null}
!222 = metadata !{i32 371, i32 0, metadata !220, null}
!223 = metadata !{i32 372, i32 0, metadata !78, null}

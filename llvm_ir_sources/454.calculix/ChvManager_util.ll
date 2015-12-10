; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._ChvManager = type { %struct._Chv*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [70 x i8] c"\0A fatal error in ChvMananger_newObjectOfSizeNbytes(%p,%d)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [62 x i8] c"\0A fatal error in ChvMananger_releaseObject(%p,%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [68 x i8] c"\0A fatal error in ChvManager_releaseListOfObjects(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._Chv* @ChvManager_newObjectOfSizeNbytes(%struct._ChvManager* %manager, i32 %nbytesNeeded) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ChvManager* %manager}, i64 0, metadata !64), !dbg !89
  tail call void @llvm.dbg.value(metadata !{i32 %nbytesNeeded}, i64 0, metadata !65), !dbg !90
  %cmp = icmp eq %struct._ChvManager* %manager, null, !dbg !91
  %cmp1 = icmp slt i32 %nbytesNeeded, 1, !dbg !91
  %or.cond = or i1 %cmp, %cmp1, !dbg !91
  br i1 %or.cond, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !92, !tbaa !94
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([70 x i8]* @.str, i64 0, i64 0), %struct._ChvManager* %manager, i32 %nbytesNeeded) #5, !dbg !92
  tail call void @exit(i32 -1) #6, !dbg !97
  unreachable, !dbg !97

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !98
  %1 = load %struct._Lock** %lock, align 8, !dbg !98, !tbaa !94
  %cmp2 = icmp eq %struct._Lock* %1, null, !dbg !98
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !98

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #5, !dbg !99
  %nlocks = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 9, !dbg !101
  %2 = load i32* %nlocks, align 4, !dbg !101, !tbaa !102
  %inc = add nsw i32 %2, 1, !dbg !101
  store i32 %inc, i32* %nlocks, align 4, !dbg !101, !tbaa !102
  br label %if.end5, !dbg !103

if.end5:                                          ; preds = %if.end, %if.then3
  %head = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 0, !dbg !104
  tail call void @llvm.dbg.value(metadata !106, i64 0, metadata !67), !dbg !104
  %chv.072 = load %struct._Chv** %head, align 8, !dbg !104
  %cmp673 = icmp eq %struct._Chv* %chv.072, null, !dbg !104
  br i1 %cmp673, label %if.then26, label %for.body, !dbg !104

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct._Chv* %chv.075, i64 0, i32 10, !dbg !107
  %chv.0 = load %struct._Chv** %next, align 8, !dbg !104
  %cmp6 = icmp eq %struct._Chv* %chv.0, null, !dbg !104
  br i1 %cmp6, label %if.then26, label %for.body, !dbg !104

for.body:                                         ; preds = %if.end5, %for.cond
  %chv.075 = phi %struct._Chv* [ %chv.0, %for.cond ], [ %chv.072, %if.end5 ]
  %prev.074 = phi %struct._Chv* [ %chv.075, %for.cond ], [ null, %if.end5 ]
  %call7 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv.075) #5, !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !68), !dbg !108
  %cmp8 = icmp slt i32 %call7, %nbytesNeeded, !dbg !110
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv.075}, i64 0, metadata !67), !dbg !111
  br i1 %cmp8, label %for.cond, label %if.then12, !dbg !110

if.then12:                                        ; preds = %for.body
  %cmp13 = icmp eq %struct._Chv* %prev.074, null, !dbg !112
  %next15 = getelementptr inbounds %struct._Chv* %chv.075, i64 0, i32 10, !dbg !114
  %3 = load %struct._Chv** %next15, align 8, !dbg !114, !tbaa !94
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !112

if.then14:                                        ; preds = %if.then12
  store %struct._Chv* %3, %struct._Chv** %head, align 8, !dbg !114, !tbaa !94
  br label %if.end28, !dbg !116

if.else:                                          ; preds = %if.then12
  %next18 = getelementptr inbounds %struct._Chv* %prev.074, i64 0, i32 10, !dbg !117
  store %struct._Chv* %3, %struct._Chv** %next18, align 8, !dbg !117, !tbaa !94
  br label %if.end28

if.then26:                                        ; preds = %for.cond, %if.end5
  %call21 = tail call %struct._Chv* @Chv_new() #5, !dbg !119
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %call21}, i64 0, metadata !66), !dbg !119
  tail call void @llvm.dbg.value(metadata !121, i64 0, metadata !69), !dbg !122
  %wrkDV = getelementptr inbounds %struct._Chv* %call21, i64 0, i32 9, !dbg !123
  %conv = sext i32 %nbytesNeeded to i64, !dbg !123
  %div = lshr i64 %conv, 3, !dbg !123
  %conv22 = trunc i64 %div to i32, !dbg !123
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv22) #5, !dbg !123
  %call27 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %call21) #5, !dbg !124
  %nbytesalloc = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 6, !dbg !124
  %4 = load i32* %nbytesalloc, align 4, !dbg !124, !tbaa !102
  %add = add nsw i32 %4, %call27, !dbg !124
  store i32 %add, i32* %nbytesalloc, align 4, !dbg !124, !tbaa !102
  br label %if.end28, !dbg !126

if.end28:                                         ; preds = %if.then14, %if.else, %if.then26
  %chv.169 = phi %struct._Chv* [ %call21, %if.then26 ], [ %chv.075, %if.else ], [ %chv.075, %if.then14 ]
  %nactive = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 3, !dbg !127
  %5 = load i32* %nactive, align 4, !dbg !127, !tbaa !102
  %inc29 = add nsw i32 %5, 1, !dbg !127
  store i32 %inc29, i32* %nactive, align 4, !dbg !127, !tbaa !102
  %call30 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv.169) #5, !dbg !128
  %nbytesactive = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 4, !dbg !128
  %6 = load i32* %nbytesactive, align 4, !dbg !128, !tbaa !102
  %add31 = add nsw i32 %6, %call30, !dbg !128
  store i32 %add31, i32* %nbytesactive, align 4, !dbg !128, !tbaa !102
  %nbytesrequested = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 5, !dbg !129
  %7 = load i32* %nbytesrequested, align 4, !dbg !129, !tbaa !102
  %add32 = add nsw i32 %7, %nbytesNeeded, !dbg !129
  store i32 %add32, i32* %nbytesrequested, align 4, !dbg !129, !tbaa !102
  %nrequests = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 7, !dbg !130
  %8 = load i32* %nrequests, align 4, !dbg !130, !tbaa !102
  %inc33 = add nsw i32 %8, 1, !dbg !130
  store i32 %inc33, i32* %nrequests, align 4, !dbg !130, !tbaa !102
  %9 = load %struct._Lock** %lock, align 8, !dbg !131, !tbaa !94
  %cmp35 = icmp eq %struct._Lock* %9, null, !dbg !131
  br i1 %cmp35, label %if.end40, label %if.then37, !dbg !131

if.then37:                                        ; preds = %if.end28
  %nunlocks = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 10, !dbg !132
  %10 = load i32* %nunlocks, align 4, !dbg !132, !tbaa !102
  %inc38 = add nsw i32 %10, 1, !dbg !132
  store i32 %inc38, i32* %nunlocks, align 4, !dbg !132, !tbaa !102
  tail call void @Lock_unlock(%struct._Lock* %9) #5, !dbg !134
  br label %if.end40, !dbg !135

if.end40:                                         ; preds = %if.end28, %if.then37
  ret %struct._Chv* %chv.169, !dbg !136
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Lock_lock(%struct._Lock*) #3

; Function Attrs: optsize
declare i32 @Chv_nbytesInWorkspace(%struct._Chv*) #3

; Function Attrs: optsize
declare %struct._Chv* @Chv_new() #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare void @Lock_unlock(%struct._Lock*) #3

; Function Attrs: nounwind optsize uwtable
define void @ChvManager_releaseObject(%struct._ChvManager* %manager, %struct._Chv* %chv1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ChvManager* %manager}, i64 0, metadata !74), !dbg !137
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv1}, i64 0, metadata !75), !dbg !138
  %cmp = icmp eq %struct._ChvManager* %manager, null, !dbg !139
  %cmp1 = icmp eq %struct._Chv* %chv1, null, !dbg !139
  %or.cond = or i1 %cmp, %cmp1, !dbg !139
  br i1 %or.cond, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !140, !tbaa !94
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str1, i64 0, i64 0), %struct._ChvManager* %manager, %struct._Chv* %chv1) #5, !dbg !140
  tail call void @exit(i32 -1) #6, !dbg !142
  unreachable, !dbg !142

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !143
  %1 = load %struct._Lock** %lock, align 8, !dbg !143, !tbaa !94
  %cmp2 = icmp eq %struct._Lock* %1, null, !dbg !143
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !143

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #5, !dbg !144
  %nlocks = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 9, !dbg !146
  %2 = load i32* %nlocks, align 4, !dbg !146, !tbaa !102
  %inc = add nsw i32 %2, 1, !dbg !146
  store i32 %inc, i32* %nlocks, align 4, !dbg !146, !tbaa !102
  br label %if.end5, !dbg !147

if.end5:                                          ; preds = %if.end, %if.then3
  %nreleases = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 8, !dbg !148
  %3 = load i32* %nreleases, align 4, !dbg !148, !tbaa !102
  %inc6 = add nsw i32 %3, 1, !dbg !148
  store i32 %inc6, i32* %nreleases, align 4, !dbg !148, !tbaa !102
  %call7 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv1) #5, !dbg !149
  %nbytesactive = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 4, !dbg !149
  %4 = load i32* %nbytesactive, align 4, !dbg !149, !tbaa !102
  %sub = sub nsw i32 %4, %call7, !dbg !149
  store i32 %sub, i32* %nbytesactive, align 4, !dbg !149, !tbaa !102
  %nactive = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 3, !dbg !150
  %5 = load i32* %nactive, align 4, !dbg !150, !tbaa !102
  %dec = add nsw i32 %5, -1, !dbg !150
  store i32 %dec, i32* %nactive, align 4, !dbg !150, !tbaa !102
  %mode = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 2, !dbg !151
  %6 = load i32* %mode, align 4, !dbg !151, !tbaa !102
  %cmp8 = icmp eq i32 %6, 0, !dbg !151
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !151

if.then9:                                         ; preds = %if.end5
  tail call void @Chv_free(%struct._Chv* %chv1) #5, !dbg !152
  br label %if.end23, !dbg !154

if.else:                                          ; preds = %if.end5
  %call10 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv1) #5, !dbg !155
  tail call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !78), !dbg !155
  %head = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 0, !dbg !157
  tail call void @llvm.dbg.value(metadata !106, i64 0, metadata !77), !dbg !157
  %chv2.053 = load %struct._Chv** %head, align 8, !dbg !157
  %cmp1154 = icmp eq %struct._Chv* %chv2.053, null, !dbg !157
  br i1 %cmp1154, label %if.then17, label %for.body, !dbg !157

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct._Chv* %chv2.056, i64 0, i32 10, !dbg !159
  %chv2.0 = load %struct._Chv** %next, align 8, !dbg !157
  %cmp11 = icmp eq %struct._Chv* %chv2.0, null, !dbg !157
  br i1 %cmp11, label %for.end, label %for.body, !dbg !157

for.body:                                         ; preds = %if.else, %for.cond
  %chv2.056 = phi %struct._Chv* [ %chv2.0, %for.cond ], [ %chv2.053, %if.else ]
  %prev.055 = phi %struct._Chv* [ %chv2.056, %for.cond ], [ null, %if.else ]
  %call12 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv2.056) #5, !dbg !160
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !79), !dbg !160
  %cmp13 = icmp sgt i32 %call12, %call10, !dbg !162
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv2.0.lcssa62}, i64 0, metadata !77), !dbg !163
  br i1 %cmp13, label %for.end, label %for.cond, !dbg !162

for.end:                                          ; preds = %for.cond, %for.body
  %chv2.0.lcssa = phi %struct._Chv* [ %chv2.056, %for.body ], [ null, %for.cond ]
  %prev.0.lcssa = phi %struct._Chv* [ %prev.055, %for.body ], [ %chv2.056, %for.cond ]
  %cmp16 = icmp eq %struct._Chv* %prev.0.lcssa, null, !dbg !164
  br i1 %cmp16, label %if.then17, label %if.else19, !dbg !164

if.then17:                                        ; preds = %if.else, %for.end
  %chv2.0.lcssa63 = phi %struct._Chv* [ %chv2.0.lcssa, %for.end ], [ null, %if.else ]
  store %struct._Chv* %chv1, %struct._Chv** %head, align 8, !dbg !165, !tbaa !94
  br label %if.end21, !dbg !167

if.else19:                                        ; preds = %for.end
  %next20 = getelementptr inbounds %struct._Chv* %prev.0.lcssa, i64 0, i32 10, !dbg !168
  store %struct._Chv* %chv1, %struct._Chv** %next20, align 8, !dbg !168, !tbaa !94
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %chv2.0.lcssa62 = phi %struct._Chv* [ %chv2.0.lcssa, %if.else19 ], [ %chv2.0.lcssa63, %if.then17 ]
  %next22 = getelementptr inbounds %struct._Chv* %chv1, i64 0, i32 10, !dbg !170
  store %struct._Chv* %chv2.0.lcssa62, %struct._Chv** %next22, align 8, !dbg !170, !tbaa !94
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.then9
  %7 = load %struct._Lock** %lock, align 8, !dbg !171, !tbaa !94
  %cmp25 = icmp eq %struct._Lock* %7, null, !dbg !171
  br i1 %cmp25, label %if.end29, label %if.then26, !dbg !171

if.then26:                                        ; preds = %if.end23
  %nunlocks = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 10, !dbg !172
  %8 = load i32* %nunlocks, align 4, !dbg !172, !tbaa !102
  %inc27 = add nsw i32 %8, 1, !dbg !172
  store i32 %inc27, i32* %nunlocks, align 4, !dbg !172, !tbaa !102
  tail call void @Lock_unlock(%struct._Lock* %7) #5, !dbg !174
  br label %if.end29, !dbg !175

if.end29:                                         ; preds = %if.end23, %if.then26
  ret void, !dbg !176
}

; Function Attrs: optsize
declare void @Chv_free(%struct._Chv*) #3

; Function Attrs: nounwind optsize uwtable
define void @ChvManager_releaseListOfObjects(%struct._ChvManager* %manager, %struct._Chv* %head) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ChvManager* %manager}, i64 0, metadata !82), !dbg !177
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %head}, i64 0, metadata !83), !dbg !178
  %cmp = icmp eq %struct._ChvManager* %manager, null, !dbg !179
  %cmp1 = icmp eq %struct._Chv* %head, null, !dbg !179
  %or.cond = or i1 %cmp, %cmp1, !dbg !179
  br i1 %or.cond, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !180, !tbaa !94
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([68 x i8]* @.str2, i64 0, i64 0), %struct._ChvManager* %manager, %struct._Chv* %head) #5, !dbg !180
  tail call void @exit(i32 -1) #6, !dbg !182
  unreachable, !dbg !182

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 1, !dbg !183
  %1 = load %struct._Lock** %lock, align 8, !dbg !183, !tbaa !94
  %cmp2 = icmp eq %struct._Lock* %1, null, !dbg !183
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !183

if.then3:                                         ; preds = %if.end
  tail call void @Lock_lock(%struct._Lock* %1) #5, !dbg !184
  %nlocks = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 9, !dbg !186
  %2 = load i32* %nlocks, align 4, !dbg !186, !tbaa !102
  %inc = add nsw i32 %2, 1, !dbg !186
  store i32 %inc, i32* %nlocks, align 4, !dbg !186, !tbaa !102
  br label %if.end5, !dbg !187

if.end5:                                          ; preds = %if.end, %if.then3
  %mode = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 2, !dbg !188
  %3 = load i32* %mode, align 4, !dbg !188, !tbaa !102
  %cmp6 = icmp eq i32 %3, 0, !dbg !188
  br i1 %cmp6, label %while.body.lr.ph, label %while.body13.lr.ph, !dbg !188

while.body13.lr.ph:                               ; preds = %if.end5
  %head16 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 0, !dbg !189
  %nbytesactive31 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 4, !dbg !193
  %nactive33 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 3, !dbg !194
  %nreleases35 = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 8, !dbg !195
  br label %while.body13, !dbg !196

while.body.lr.ph:                                 ; preds = %if.end5
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %head}, i64 0, metadata !84), !dbg !197
  %nbytesactive = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 4, !dbg !199
  %nactive = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 3, !dbg !201
  %nreleases = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 8, !dbg !202
  br label %while.body, !dbg !197

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %head.addr.078 = phi %struct._Chv* [ %head, %while.body.lr.ph ], [ %4, %while.body ]
  %next = getelementptr inbounds %struct._Chv* %head.addr.078, i64 0, i32 10, !dbg !203
  %4 = load %struct._Chv** %next, align 8, !dbg !203, !tbaa !94
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %4}, i64 0, metadata !83), !dbg !203
  %call9 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %head.addr.078) #5, !dbg !199
  %5 = load i32* %nbytesactive, align 4, !dbg !199, !tbaa !102
  %sub = sub nsw i32 %5, %call9, !dbg !199
  store i32 %sub, i32* %nbytesactive, align 4, !dbg !199, !tbaa !102
  %6 = load i32* %nactive, align 4, !dbg !201, !tbaa !102
  %dec = add nsw i32 %6, -1, !dbg !201
  store i32 %dec, i32* %nactive, align 4, !dbg !201, !tbaa !102
  %7 = load i32* %nreleases, align 4, !dbg !202, !tbaa !102
  %inc10 = add nsw i32 %7, 1, !dbg !202
  store i32 %inc10, i32* %nreleases, align 4, !dbg !202, !tbaa !102
  tail call void @Chv_free(%struct._Chv* %head.addr.078) #5, !dbg !204
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %head.addr.078}, i64 0, metadata !84), !dbg !197
  %cmp8 = icmp eq %struct._Chv* %4, null, !dbg !197
  br i1 %cmp8, label %if.end38, label %while.body, !dbg !197

while.body13:                                     ; preds = %while.body13.lr.ph, %if.end28
  %head.addr.186 = phi %struct._Chv* [ %head, %while.body13.lr.ph ], [ %8, %if.end28 ]
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %head.addr.186}, i64 0, metadata !84), !dbg !205
  %next14 = getelementptr inbounds %struct._Chv* %head.addr.186, i64 0, i32 10, !dbg !206
  %8 = load %struct._Chv** %next14, align 8, !dbg !206, !tbaa !94
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %8}, i64 0, metadata !83), !dbg !206
  %call15 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %head.addr.186) #5, !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !87), !dbg !207
  tail call void @llvm.dbg.value(metadata !106, i64 0, metadata !86), !dbg !189
  %chv2.079 = load %struct._Chv** %head16, align 8, !dbg !189
  %cmp1780 = icmp eq %struct._Chv* %chv2.079, null, !dbg !189
  br i1 %cmp1780, label %if.then24, label %for.body, !dbg !189

for.cond:                                         ; preds = %for.body
  %next22 = getelementptr inbounds %struct._Chv* %chv2.082, i64 0, i32 10, !dbg !208
  %chv2.0 = load %struct._Chv** %next22, align 8, !dbg !189
  %cmp17 = icmp eq %struct._Chv* %chv2.0, null, !dbg !189
  br i1 %cmp17, label %for.end, label %for.body, !dbg !189

for.body:                                         ; preds = %while.body13, %for.cond
  %chv2.082 = phi %struct._Chv* [ %chv2.0, %for.cond ], [ %chv2.079, %while.body13 ]
  %prev.081 = phi %struct._Chv* [ %chv2.082, %for.cond ], [ null, %while.body13 ]
  %call18 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv2.082) #5, !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !88), !dbg !209
  %cmp19 = icmp sgt i32 %call18, %call15, !dbg !211
  tail call void @llvm.dbg.value(metadata !{%struct._Chv* %chv2.0.lcssa91}, i64 0, metadata !86), !dbg !212
  br i1 %cmp19, label %for.end, label %for.cond, !dbg !211

for.end:                                          ; preds = %for.cond, %for.body
  %chv2.0.lcssa = phi %struct._Chv* [ %chv2.082, %for.body ], [ null, %for.cond ]
  %prev.0.lcssa = phi %struct._Chv* [ %prev.081, %for.body ], [ %chv2.082, %for.cond ]
  %cmp23 = icmp eq %struct._Chv* %prev.0.lcssa, null, !dbg !213
  br i1 %cmp23, label %if.then24, label %if.else26, !dbg !213

if.then24:                                        ; preds = %while.body13, %for.end
  %chv2.0.lcssa92 = phi %struct._Chv* [ %chv2.0.lcssa, %for.end ], [ null, %while.body13 ]
  store %struct._Chv* %head.addr.186, %struct._Chv** %head16, align 8, !dbg !214, !tbaa !94
  br label %if.end28, !dbg !216

if.else26:                                        ; preds = %for.end
  %next27 = getelementptr inbounds %struct._Chv* %prev.0.lcssa, i64 0, i32 10, !dbg !217
  store %struct._Chv* %head.addr.186, %struct._Chv** %next27, align 8, !dbg !217, !tbaa !94
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.then24
  %chv2.0.lcssa91 = phi %struct._Chv* [ %chv2.0.lcssa, %if.else26 ], [ %chv2.0.lcssa92, %if.then24 ]
  store %struct._Chv* %chv2.0.lcssa91, %struct._Chv** %next14, align 8, !dbg !219, !tbaa !94
  %call30 = tail call i32 @Chv_nbytesInWorkspace(%struct._Chv* %head.addr.186) #5, !dbg !193
  %9 = load i32* %nbytesactive31, align 4, !dbg !193, !tbaa !102
  %sub32 = sub nsw i32 %9, %call30, !dbg !193
  store i32 %sub32, i32* %nbytesactive31, align 4, !dbg !193, !tbaa !102
  %10 = load i32* %nactive33, align 4, !dbg !194, !tbaa !102
  %dec34 = add nsw i32 %10, -1, !dbg !194
  store i32 %dec34, i32* %nactive33, align 4, !dbg !194, !tbaa !102
  %11 = load i32* %nreleases35, align 4, !dbg !195, !tbaa !102
  %inc36 = add nsw i32 %11, 1, !dbg !195
  store i32 %inc36, i32* %nreleases35, align 4, !dbg !195, !tbaa !102
  %cmp12 = icmp eq %struct._Chv* %8, null, !dbg !196
  br i1 %cmp12, label %if.end38, label %while.body13, !dbg !196

if.end38:                                         ; preds = %if.end28, %while.body
  %12 = load %struct._Lock** %lock, align 8, !dbg !220, !tbaa !94
  %cmp40 = icmp eq %struct._Lock* %12, null, !dbg !220
  br i1 %cmp40, label %if.end44, label %if.then41, !dbg !220

if.then41:                                        ; preds = %if.end38
  %nunlocks = getelementptr inbounds %struct._ChvManager* %manager, i64 0, i32 10, !dbg !221
  %13 = load i32* %nunlocks, align 4, !dbg !221, !tbaa !102
  %inc42 = add nsw i32 %13, 1, !dbg !221
  store i32 %inc42, i32* %nunlocks, align 4, !dbg !221, !tbaa !102
  tail call void @Lock_unlock(%struct._Lock* %12) #5, !dbg !223
  br label %if.end44, !dbg !224

if.end44:                                         ; preds = %if.end38, %if.then41
  ret void, !dbg !225
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !70, metadata !80}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvManager_newObjectOfSizeNbytes", metadata !"ChvManager_newObjectOfSizeNbytes", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Chv* (%struct._ChvManager*, i32)* @ChvManager_newObjectOfSizeNbytes, null, null, metadata !63, i32 20} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 20] [ChvManager_newObjectOfSizeNbytes]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !38, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Chv/Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !11, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ChvManager]
!39 = metadata !{i32 786454, metadata !1, null, metadata !"ChvManager", i32 9, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [ChvManager] [line 9, size 0, align 0, offset 0] [from _ChvManager]
!40 = metadata !{i32 786451, metadata !41, null, metadata !"_ChvManager", i32 10, i64 448, i64 64, i32 0, i32 0, null, metadata !42, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ChvManager] [line 10, size 448, align 64, offset 0] [from ]
!41 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../ChvManager.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!42 = metadata !{metadata !43, metadata !44, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62}
!43 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"head", i32 11, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [head] [line 11, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"lock", i32 12, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [lock] [line 12, size 64, align 64, offset 64] [from ]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Lock]
!46 = metadata !{i32 786454, metadata !41, null, metadata !"Lock", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [Lock] [line 36, size 0, align 0, offset 0] [from _Lock]
!47 = metadata !{i32 786451, metadata !48, null, metadata !"_Lock", i32 37, i64 128, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Lock] [line 37, size 128, align 64, offset 0] [from ]
!48 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/../../Lock/Lock.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!49 = metadata !{metadata !50, metadata !52, metadata !53}
!50 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"mutex", i32 45, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ] [mutex] [line 45, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"nlocks", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 47, size 32, align 32, offset 64] [from int]
!53 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"nunlocks", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 48, size 32, align 32, offset 96] [from int]
!54 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"mode", i32 13, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [mode] [line 13, size 32, align 32, offset 128] [from int]
!55 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nactive", i32 14, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [nactive] [line 14, size 32, align 32, offset 160] [from int]
!56 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nbytesactive", i32 15, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesactive] [line 15, size 32, align 32, offset 192] [from int]
!57 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nbytesrequested", i32 16, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesrequested] [line 16, size 32, align 32, offset 224] [from int]
!58 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nbytesalloc", i32 17, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [nbytesalloc] [line 17, size 32, align 32, offset 256] [from int]
!59 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nrequests", i32 18, i64 32, i64 32, i64 288, i32 0, metadata !14} ; [ DW_TAG_member ] [nrequests] [line 18, size 32, align 32, offset 288] [from int]
!60 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nreleases", i32 19, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [nreleases] [line 19, size 32, align 32, offset 320] [from int]
!61 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nlocks", i32 20, i64 32, i64 32, i64 352, i32 0, metadata !14} ; [ DW_TAG_member ] [nlocks] [line 20, size 32, align 32, offset 352] [from int]
!62 = metadata !{i32 786445, metadata !41, metadata !40, metadata !"nunlocks", i32 21, i64 32, i64 32, i64 384, i32 0, metadata !14} ; [ DW_TAG_member ] [nunlocks] [line 21, size 32, align 32, offset 384] [from int]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69}
!64 = metadata !{i32 786689, metadata !4, metadata !"manager", metadata !5, i32 16777234, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 18]
!65 = metadata !{i32 786689, metadata !4, metadata !"nbytesNeeded", metadata !5, i32 33554451, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytesNeeded] [line 19]
!66 = metadata !{i32 786688, metadata !4, metadata !"chv", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chv] [line 21]
!67 = metadata !{i32 786688, metadata !4, metadata !"prev", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 21]
!68 = metadata !{i32 786688, metadata !4, metadata !"nbytesAvailable", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytesAvailable] [line 22]
!69 = metadata !{i32 786688, metadata !4, metadata !"newinstance", metadata !5, i32 22, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newinstance] [line 22]
!70 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvManager_releaseObject", metadata !"ChvManager_releaseObject", metadata !"", i32 146, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ChvManager*, %struct._Chv*)* @ChvManager_releaseObject, null, null, metadata !73, i32 149} ; [ DW_TAG_subprogram ] [line 146] [def] [scope 149] [ChvManager_releaseObject]
!71 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !72, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!72 = metadata !{null, metadata !38, metadata !8}
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!74 = metadata !{i32 786689, metadata !70, metadata !"manager", metadata !5, i32 16777363, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 147]
!75 = metadata !{i32 786689, metadata !70, metadata !"chv1", metadata !5, i32 33554580, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv1] [line 148]
!76 = metadata !{i32 786688, metadata !70, metadata !"chv2", metadata !5, i32 150, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chv2] [line 150]
!77 = metadata !{i32 786688, metadata !70, metadata !"prev", metadata !5, i32 150, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 150]
!78 = metadata !{i32 786688, metadata !70, metadata !"nbytes1", metadata !5, i32 151, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes1] [line 151]
!79 = metadata !{i32 786688, metadata !70, metadata !"nbytes2", metadata !5, i32 151, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes2] [line 151]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ChvManager_releaseListOfObjects", metadata !"ChvManager_releaseListOfObjects", metadata !"", i32 242, metadata !71, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ChvManager*, %struct._Chv*)* @ChvManager_releaseListOfObjects, null, null, metadata !81, i32 245} ; [ DW_TAG_subprogram ] [line 242] [def] [scope 245] [ChvManager_releaseListOfObjects]
!81 = metadata !{metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88}
!82 = metadata !{i32 786689, metadata !80, metadata !"manager", metadata !5, i32 16777459, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [manager] [line 243]
!83 = metadata !{i32 786689, metadata !80, metadata !"head", metadata !5, i32 33554676, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [head] [line 244]
!84 = metadata !{i32 786688, metadata !80, metadata !"chv1", metadata !5, i32 246, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chv1] [line 246]
!85 = metadata !{i32 786688, metadata !80, metadata !"chv2", metadata !5, i32 246, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chv2] [line 246]
!86 = metadata !{i32 786688, metadata !80, metadata !"prev", metadata !5, i32 246, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 246]
!87 = metadata !{i32 786688, metadata !80, metadata !"nbytes1", metadata !5, i32 247, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes1] [line 247]
!88 = metadata !{i32 786688, metadata !80, metadata !"nbytes2", metadata !5, i32 247, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbytes2] [line 247]
!89 = metadata !{i32 18, i32 0, metadata !4, null}
!90 = metadata !{i32 19, i32 0, metadata !4, null}
!91 = metadata !{i32 28, i32 0, metadata !4, null}
!92 = metadata !{i32 29, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!94 = metadata !{metadata !"any pointer", metadata !95}
!95 = metadata !{metadata !"omnipotent char", metadata !96}
!96 = metadata !{metadata !"Simple C/C++ TBAA"}
!97 = metadata !{i32 32, i32 0, metadata !93, null}
!98 = metadata !{i32 38, i32 0, metadata !4, null}
!99 = metadata !{i32 48, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !4, i32 38, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!101 = metadata !{i32 49, i32 0, metadata !100, null}
!102 = metadata !{metadata !"int", metadata !95}
!103 = metadata !{i32 54, i32 0, metadata !100, null}
!104 = metadata !{i32 60, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!106 = metadata !{%struct._Chv* null}
!107 = metadata !{i32 62, i32 0, metadata !105, null}
!108 = metadata !{i32 63, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !105, i32 62, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!110 = metadata !{i32 69, i32 0, metadata !109, null}
!111 = metadata !{i32 72, i32 0, metadata !109, null}
!112 = metadata !{i32 85, i32 0, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!114 = metadata !{i32 86, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !113, i32 85, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!116 = metadata !{i32 87, i32 0, metadata !115, null}
!117 = metadata !{i32 88, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !113, i32 87, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!119 = metadata !{i32 97, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !4, i32 91, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!121 = metadata !{i32 1}
!122 = metadata !{i32 102, i32 0, metadata !120, null}
!123 = metadata !{i32 103, i32 0, metadata !120, null}
!124 = metadata !{i32 111, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !4, i32 110, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!126 = metadata !{i32 112, i32 0, metadata !125, null}
!127 = metadata !{i32 113, i32 0, metadata !4, null}
!128 = metadata !{i32 114, i32 0, metadata !4, null}
!129 = metadata !{i32 115, i32 0, metadata !4, null}
!130 = metadata !{i32 120, i32 0, metadata !4, null}
!131 = metadata !{i32 121, i32 0, metadata !4, null}
!132 = metadata !{i32 127, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !4, i32 121, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!134 = metadata !{i32 128, i32 0, metadata !133, null}
!135 = metadata !{i32 134, i32 0, metadata !133, null}
!136 = metadata !{i32 135, i32 0, metadata !4, null}
!137 = metadata !{i32 147, i32 0, metadata !70, null}
!138 = metadata !{i32 148, i32 0, metadata !70, null}
!139 = metadata !{i32 157, i32 0, metadata !70, null}
!140 = metadata !{i32 158, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !70, i32 157, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!142 = metadata !{i32 161, i32 0, metadata !141, null}
!143 = metadata !{i32 163, i32 0, metadata !70, null}
!144 = metadata !{i32 169, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !70, i32 163, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!146 = metadata !{i32 170, i32 0, metadata !145, null}
!147 = metadata !{i32 171, i32 0, metadata !145, null}
!148 = metadata !{i32 172, i32 0, metadata !70, null}
!149 = metadata !{i32 173, i32 0, metadata !70, null}
!150 = metadata !{i32 174, i32 0, metadata !70, null}
!151 = metadata !{i32 175, i32 0, metadata !70, null}
!152 = metadata !{i32 181, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !70, i32 175, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!154 = metadata !{i32 182, i32 0, metadata !153, null}
!155 = metadata !{i32 189, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !70, i32 182, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!157 = metadata !{i32 194, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !156, i32 194, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!159 = metadata !{i32 196, i32 0, metadata !158, null}
!160 = metadata !{i32 197, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !158, i32 196, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!162 = metadata !{i32 201, i32 0, metadata !161, null}
!163 = metadata !{i32 204, i32 0, metadata !161, null}
!164 = metadata !{i32 206, i32 0, metadata !156, null}
!165 = metadata !{i32 207, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !156, i32 206, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!167 = metadata !{i32 211, i32 0, metadata !166, null}
!168 = metadata !{i32 212, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !156, i32 211, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!170 = metadata !{i32 217, i32 0, metadata !156, null}
!171 = metadata !{i32 222, i32 0, metadata !70, null}
!172 = metadata !{i32 228, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !70, i32 222, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!174 = metadata !{i32 229, i32 0, metadata !173, null}
!175 = metadata !{i32 230, i32 0, metadata !173, null}
!176 = metadata !{i32 231, i32 0, metadata !70, null}
!177 = metadata !{i32 243, i32 0, metadata !80, null}
!178 = metadata !{i32 244, i32 0, metadata !80, null}
!179 = metadata !{i32 253, i32 0, metadata !80, null}
!180 = metadata !{i32 254, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !80, i32 253, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!182 = metadata !{i32 257, i32 0, metadata !181, null}
!183 = metadata !{i32 259, i32 0, metadata !80, null}
!184 = metadata !{i32 265, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !80, i32 259, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!186 = metadata !{i32 266, i32 0, metadata !185, null}
!187 = metadata !{i32 267, i32 0, metadata !185, null}
!188 = metadata !{i32 268, i32 0, metadata !80, null}
!189 = metadata !{i32 301, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !191, i32 301, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!191 = metadata !{i32 786443, metadata !1, metadata !192, i32 287, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!192 = metadata !{i32 786443, metadata !1, metadata !80, i32 281, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!193 = metadata !{i32 329, i32 0, metadata !191, null}
!194 = metadata !{i32 330, i32 0, metadata !191, null}
!195 = metadata !{i32 331, i32 0, metadata !191, null}
!196 = metadata !{i32 287, i32 0, metadata !192, null}
!197 = metadata !{i32 274, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !80, i32 268, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!199 = metadata !{i32 276, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !198, i32 274, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!201 = metadata !{i32 277, i32 0, metadata !200, null}
!202 = metadata !{i32 278, i32 0, metadata !200, null}
!203 = metadata !{i32 275, i32 0, metadata !200, null}
!204 = metadata !{i32 279, i32 0, metadata !200, null}
!205 = metadata !{i32 288, i32 0, metadata !191, null}
!206 = metadata !{i32 289, i32 0, metadata !191, null}
!207 = metadata !{i32 296, i32 0, metadata !191, null}
!208 = metadata !{i32 303, i32 0, metadata !190, null}
!209 = metadata !{i32 304, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !190, i32 303, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!211 = metadata !{i32 309, i32 0, metadata !210, null}
!212 = metadata !{i32 312, i32 0, metadata !210, null}
!213 = metadata !{i32 314, i32 0, metadata !191, null}
!214 = metadata !{i32 315, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !191, i32 314, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!216 = metadata !{i32 319, i32 0, metadata !215, null}
!217 = metadata !{i32 320, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !191, i32 319, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!219 = metadata !{i32 325, i32 0, metadata !191, null}
!220 = metadata !{i32 334, i32 0, metadata !80, null}
!221 = metadata !{i32 340, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !80, i32 334, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ChvManager/src/ChvManager_util.c]
!223 = metadata !{i32 341, i32 0, metadata !222, null}
!224 = metadata !{i32 342, i32 0, metadata !222, null}
!225 = metadata !{i32 343, i32 0, metadata !80, null}

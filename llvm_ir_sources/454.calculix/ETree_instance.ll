; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [46 x i8] c"\0A fatal error in ETree_nfront(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_nvtx(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_tree(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"\0A fatal error in ETree_root(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_par(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_fch(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [43 x i8] c"\0A fatal error in ETree_sib(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_nodwghtsIV(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [48 x i8] c"\0A fatal error in ETree_nodwghts(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_bndwghtsIV(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [48 x i8] c"\0A fatal error in ETree_bndwghts(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ETree_vtxToFrontIV(%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [50 x i8] c"\0A fatal error in ETree_vtxToFront(%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"\0A fatal error in ETree_frontSize(%p,%d)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [60 x i8] c"\0A fatal error in ETree_frontBoundarySize(%p,%d)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [57 x i8] c"\0A fatal error in ETree_maxNindAndNent(%p,%d)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [59 x i8] c"\0A fatal error in ETree_maxNindAndNent(%p,%d)\0A bad symflag\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_nfront(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !41), !dbg !112
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !114, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0), %struct._ETree* null) #5, !dbg !114
  tail call void @exit(i32 -1) #6, !dbg !119
  unreachable, !dbg !119

if.end:                                           ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !120
  %1 = load i32* %nfront, align 4, !dbg !120, !tbaa !121
  ret i32 %1, !dbg !120
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_nvtx(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !44), !dbg !122
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !123

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !124, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str1, i64 0, i64 0), %struct._ETree* null) #5, !dbg !124
  tail call void @exit(i32 -1) #6, !dbg !126
  unreachable, !dbg !126

if.end:                                           ; preds = %entry
  %nvtx = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !127
  %1 = load i32* %nvtx, align 4, !dbg !127, !tbaa !121
  ret i32 %1, !dbg !127
}

; Function Attrs: nounwind optsize uwtable
define %struct._Tree* @ETree_tree(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !49), !dbg !128
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !129
  br i1 %cmp, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !130, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0), %struct._ETree* null) #5, !dbg !130
  tail call void @exit(i32 -1) #6, !dbg !132
  unreachable, !dbg !132

if.end:                                           ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !133
  %1 = load %struct._Tree** %tree, align 8, !dbg !133, !tbaa !116
  ret %struct._Tree* %1, !dbg !133
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_root(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !52), !dbg !134
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !135
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !135

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !135
  %0 = load %struct._Tree** %tree, align 8, !dbg !135, !tbaa !116
  %cmp1 = icmp eq %struct._Tree* %0, null, !dbg !135
  br i1 %cmp1, label %if.then, label %if.end, !dbg !135

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !136, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !136
  tail call void @exit(i32 -1) #6, !dbg !138
  unreachable, !dbg !138

if.end:                                           ; preds = %lor.lhs.false
  %root = getelementptr inbounds %struct._Tree* %0, i64 0, i32 1, !dbg !139
  %2 = load i32* %root, align 4, !dbg !139, !tbaa !121
  ret i32 %2, !dbg !139
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_par(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !57), !dbg !140
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !141
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !141

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !141
  %0 = load %struct._Tree** %tree, align 8, !dbg !141, !tbaa !116
  %cmp1 = icmp eq %struct._Tree* %0, null, !dbg !141
  br i1 %cmp1, label %if.then, label %if.end, !dbg !141

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !142, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8]* @.str4, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !142
  tail call void @exit(i32 -1) #6, !dbg !144
  unreachable, !dbg !144

if.end:                                           ; preds = %lor.lhs.false
  %par = getelementptr inbounds %struct._Tree* %0, i64 0, i32 2, !dbg !145
  %2 = load i32** %par, align 8, !dbg !145, !tbaa !116
  ret i32* %2, !dbg !145
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_fch(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !60), !dbg !146
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !147
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !147

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !147
  %0 = load %struct._Tree** %tree, align 8, !dbg !147, !tbaa !116
  %cmp1 = icmp eq %struct._Tree* %0, null, !dbg !147
  br i1 %cmp1, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !148, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !148
  tail call void @exit(i32 -1) #6, !dbg !150
  unreachable, !dbg !150

if.end:                                           ; preds = %lor.lhs.false
  %fch = getelementptr inbounds %struct._Tree* %0, i64 0, i32 3, !dbg !151
  %2 = load i32** %fch, align 8, !dbg !151, !tbaa !116
  ret i32* %2, !dbg !151
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_sib(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !63), !dbg !152
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !153
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !153

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !153
  %0 = load %struct._Tree** %tree, align 8, !dbg !153, !tbaa !116
  %cmp1 = icmp eq %struct._Tree* %0, null, !dbg !153
  br i1 %cmp1, label %if.then, label %if.end, !dbg !153

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !154, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([43 x i8]* @.str6, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !154
  tail call void @exit(i32 -1) #6, !dbg !156
  unreachable, !dbg !156

if.end:                                           ; preds = %lor.lhs.false
  %sib = getelementptr inbounds %struct._Tree* %0, i64 0, i32 4, !dbg !157
  %2 = load i32** %sib, align 8, !dbg !157, !tbaa !116
  ret i32* %2, !dbg !157
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_nodwghtsIV(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !68), !dbg !158
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !159

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !160, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str7, i64 0, i64 0), %struct._ETree* null) #5, !dbg !160
  tail call void @exit(i32 -1) #6, !dbg !162
  unreachable, !dbg !162

if.end:                                           ; preds = %entry
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !163
  %1 = load %struct._IV** %nodwghtsIV, align 8, !dbg !163, !tbaa !116
  ret %struct._IV* %1, !dbg !163
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_nodwghts(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !71), !dbg !164
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !165
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !165

lor.lhs.false:                                    ; preds = %entry
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !165
  %0 = load %struct._IV** %nodwghtsIV, align 8, !dbg !165, !tbaa !116
  %cmp1 = icmp eq %struct._IV* %0, null, !dbg !165
  br i1 %cmp1, label %if.then, label %if.end, !dbg !165

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !166, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str8, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !166
  tail call void @exit(i32 -1) #6, !dbg !168
  unreachable, !dbg !168

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32* @IV_entries(%struct._IV* %0) #5, !dbg !169
  ret i32* %call3, !dbg !169
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_bndwghtsIV(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !74), !dbg !170
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !172, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str9, i64 0, i64 0), %struct._ETree* null) #5, !dbg !172
  tail call void @exit(i32 -1) #6, !dbg !174
  unreachable, !dbg !174

if.end:                                           ; preds = %entry
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !175
  %1 = load %struct._IV** %bndwghtsIV, align 8, !dbg !175, !tbaa !116
  ret %struct._IV* %1, !dbg !175
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_bndwghts(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !77), !dbg !176
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !177
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !177

lor.lhs.false:                                    ; preds = %entry
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !177
  %0 = load %struct._IV** %bndwghtsIV, align 8, !dbg !177, !tbaa !116
  %cmp1 = icmp eq %struct._IV* %0, null, !dbg !177
  br i1 %cmp1, label %if.then, label %if.end, !dbg !177

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str10, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !178
  tail call void @exit(i32 -1) #6, !dbg !180
  unreachable, !dbg !180

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32* @IV_entries(%struct._IV* %0) #5, !dbg !181
  ret i32* %call3, !dbg !181
}

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_vtxToFrontIV(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !80), !dbg !182
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !183
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !184, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str11, i64 0, i64 0), %struct._ETree* null) #5, !dbg !184
  tail call void @exit(i32 -1) #6, !dbg !186
  unreachable, !dbg !186

if.end:                                           ; preds = %entry
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !187
  %1 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !187, !tbaa !116
  ret %struct._IV* %1, !dbg !187
}

; Function Attrs: nounwind optsize uwtable
define i32* @ETree_vtxToFront(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !83), !dbg !188
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !189
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !189

lor.lhs.false:                                    ; preds = %entry
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !189
  %0 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !189, !tbaa !116
  %cmp1 = icmp eq %struct._IV* %0, null, !dbg !189
  br i1 %cmp1, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !190, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([50 x i8]* @.str12, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !190
  tail call void @exit(i32 -1) #6, !dbg !192
  unreachable, !dbg !192

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i32* @IV_entries(%struct._IV* %0) #5, !dbg !193
  ret i32* %call3, !dbg !193
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_frontSize(%struct._ETree* %etree, i32 %J) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !88), !dbg !194
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !89), !dbg !195
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !196
  %cmp1 = icmp slt i32 %J, 0, !dbg !196
  %or.cond = or i1 %cmp, %cmp1, !dbg !196
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !196

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !196
  %0 = load i32* %nfront, align 4, !dbg !196, !tbaa !121
  %cmp3 = icmp sgt i32 %0, %J, !dbg !196
  br i1 %cmp3, label %if.end, label %if.then, !dbg !196

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !197, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), %struct._ETree* %etree, i32 %J) #5, !dbg !197
  tail call void @exit(i32 -1) #6, !dbg !199
  unreachable, !dbg !199

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %J to i64, !dbg !200
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !200
  %2 = load %struct._IV** %nodwghtsIV, align 8, !dbg !200, !tbaa !116
  %vec = getelementptr inbounds %struct._IV* %2, i64 0, i32 3, !dbg !200
  %3 = load i32** %vec, align 8, !dbg !200, !tbaa !116
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !200
  %4 = load i32* %arrayidx, align 4, !dbg !200, !tbaa !121
  ret i32 %4, !dbg !200
}

; Function Attrs: nounwind optsize uwtable
define i32 @ETree_frontBoundarySize(%struct._ETree* %etree, i32 %J) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !92), !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %J}, i64 0, metadata !93), !dbg !202
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !203
  %cmp1 = icmp slt i32 %J, 0, !dbg !203
  %or.cond = or i1 %cmp, %cmp1, !dbg !203
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !203

lor.lhs.false2:                                   ; preds = %entry
  %nfront = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !203
  %0 = load i32* %nfront, align 4, !dbg !203, !tbaa !121
  %cmp3 = icmp sgt i32 %0, %J, !dbg !203
  br i1 %cmp3, label %if.end, label %if.then, !dbg !203

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !204, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str14, i64 0, i64 0), %struct._ETree* %etree, i32 %J) #5, !dbg !204
  tail call void @exit(i32 -1) #6, !dbg !206
  unreachable, !dbg !206

if.end:                                           ; preds = %lor.lhs.false2
  %idxprom = sext i32 %J to i64, !dbg !207
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !207
  %2 = load %struct._IV** %bndwghtsIV, align 8, !dbg !207, !tbaa !116
  %vec = getelementptr inbounds %struct._IV* %2, i64 0, i32 3, !dbg !207
  %3 = load i32** %vec, align 8, !dbg !207, !tbaa !116
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !207
  %4 = load i32* %arrayidx, align 4, !dbg !207, !tbaa !121
  ret i32 %4, !dbg !207
}

; Function Attrs: nounwind optsize uwtable
define void @ETree_maxNindAndNent(%struct._ETree* %etree, i32 %symflag, i32* nocapture %pmaxnind, i32* nocapture %pmaxnent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !98), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %symflag}, i64 0, metadata !99), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32* %pmaxnind}, i64 0, metadata !100), !dbg !210
  tail call void @llvm.dbg.value(metadata !{i32* %pmaxnent}, i64 0, metadata !101), !dbg !211
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !212
  br i1 %cmp, label %if.then, label %if.end, !dbg !212

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !213, !tbaa !116
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str15, i64 0, i64 0), %struct._ETree* null, i32 %symflag) #5, !dbg !213
  tail call void @exit(i32 -1) #6, !dbg !215
  unreachable, !dbg !215

if.end:                                           ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !216
  %1 = load i32* %nfront1, align 4, !dbg !216, !tbaa !121
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !107), !dbg !216
  %call2 = tail call i32* @ETree_nodwghts(%struct._ETree* %etree) #7, !dbg !217
  tail call void @llvm.dbg.value(metadata !{i32* %call2}, i64 0, metadata !110), !dbg !217
  %call3 = tail call i32* @ETree_bndwghts(%struct._ETree* %etree) #7, !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32* %call3}, i64 0, metadata !111), !dbg !218
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !219
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !104), !dbg !219
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !103), !dbg !219
  %cmp448 = icmp sgt i32 %1, 0, !dbg !219
  br i1 %cmp448, label %for.body, label %for.end, !dbg !219

for.body:                                         ; preds = %if.end, %sw.epilog
  %indvars.iv = phi i64 [ %indvars.iv.next, %sw.epilog ], [ 0, %if.end ]
  %maxnent.050 = phi i32 [ %maxnent.1, %sw.epilog ], [ 0, %if.end ]
  %maxnind.049 = phi i32 [ %nind.0.maxnind.0, %sw.epilog ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %call2, i64 %indvars.iv, !dbg !221
  %2 = load i32* %arrayidx, align 4, !dbg !221, !tbaa !121
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !105), !dbg !221
  %arrayidx6 = getelementptr inbounds i32* %call3, i64 %indvars.iv, !dbg !223
  %3 = load i32* %arrayidx6, align 4, !dbg !223, !tbaa !121
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !109), !dbg !223
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
  ], !dbg !224

sw.bb:                                            ; preds = %for.body, %for.body
  %add = add nsw i32 %3, %2, !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !108), !dbg !225
  %add7 = add nsw i32 %2, 1, !dbg !227
  %mul = mul nsw i32 %add7, %2, !dbg !227
  %div = sdiv i32 %mul, 2, !dbg !227
  %mul8 = mul nsw i32 %3, %2, !dbg !227
  %add9 = add nsw i32 %div, %mul8, !dbg !227
  tail call void @llvm.dbg.value(metadata !{i32 %add9}, i64 0, metadata !106), !dbg !227
  br label %sw.epilog, !dbg !228

sw.bb10:                                          ; preds = %for.body
  %add11 = add nsw i32 %3, %2, !dbg !229
  %mul12 = shl nsw i32 %add11, 1, !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32 %mul12}, i64 0, metadata !108), !dbg !229
  %mul13 = shl i32 %3, 1, !dbg !230
  %add14 = add nsw i32 %mul13, %2, !dbg !230
  %mul15 = mul nsw i32 %add14, %2, !dbg !230
  tail call void @llvm.dbg.value(metadata !{i32 %mul15}, i64 0, metadata !106), !dbg !230
  br label %sw.epilog, !dbg !231

sw.default:                                       ; preds = %for.body
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !232, !tbaa !116
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str16, i64 0, i64 0), %struct._ETree* %etree, i32 %symflag) #5, !dbg !232
  tail call void @exit(i32 -1) #6, !dbg !233
  unreachable, !dbg !233

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb
  %nent.0 = phi i32 [ %mul15, %sw.bb10 ], [ %add9, %sw.bb ]
  %nind.0 = phi i32 [ %mul12, %sw.bb10 ], [ %add, %sw.bb ]
  %cmp17 = icmp slt i32 %maxnind.049, %nind.0, !dbg !234
  tail call void @llvm.dbg.value(metadata !{i32 %nind.0}, i64 0, metadata !104), !dbg !235
  %nind.0.maxnind.0 = select i1 %cmp17, i32 %nind.0, i32 %maxnind.049, !dbg !234
  %cmp20 = icmp slt i32 %maxnent.050, %nent.0, !dbg !237
  tail call void @llvm.dbg.value(metadata !{i32 %nent.0}, i64 0, metadata !103), !dbg !238
  %maxnent.1 = select i1 %cmp20, i32 %nent.0, i32 %maxnent.050, !dbg !237
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !219
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !219
  %cmp4 = icmp slt i32 %5, %1, !dbg !219
  br i1 %cmp4, label %for.body, label %for.end, !dbg !219

for.end:                                          ; preds = %sw.epilog, %if.end
  %maxnent.0.lcssa = phi i32 [ 0, %if.end ], [ %maxnent.1, %sw.epilog ]
  %maxnind.0.lcssa = phi i32 [ 0, %if.end ], [ %nind.0.maxnind.0, %sw.epilog ]
  store i32 %maxnind.0.lcssa, i32* %pmaxnind, align 4, !dbg !240, !tbaa !121
  store i32 %maxnent.0.lcssa, i32* %pmaxnent, align 4, !dbg !241, !tbaa !121
  ret void, !dbg !242
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !42, metadata !45, metadata !50, metadata !53, metadata !58, metadata !61, metadata !64, metadata !69, metadata !72, metadata !75, metadata !78, metadata !81, metadata !84, metadata !90, metadata !94}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nfront", metadata !"ETree_nfront", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*)* @ETree_nfront, null, null, metadata !40, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [ETree_nfront]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !28, metadata !38, metadata !39}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!18 = metadata !{i32 786454, metadata !12, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!19 = metadata !{i32 786451, metadata !20, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !21, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!20 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !26, metadata !27}
!22 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!24 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!26 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!27 = metadata !{i32 786445, metadata !20, metadata !19, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!30 = metadata !{i32 786454, metadata !12, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!31 = metadata !{i32 786451, metadata !32, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !33, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!32 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37}
!34 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!35 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!36 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!37 = metadata !{i32 786445, metadata !32, metadata !31, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786689, metadata !4, metadata !"etree", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 15]
!42 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nvtx", metadata !"ETree_nvtx", metadata !"", i32 38, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*)* @ETree_nvtx, null, null, metadata !43, i32 40} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 40] [ETree_nvtx]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786689, metadata !42, metadata !"etree", metadata !5, i32 16777255, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 39]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_tree", metadata !"ETree_tree", metadata !"", i32 62, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._Tree* (%struct._ETree*)* @ETree_tree, null, null, metadata !48, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [ETree_tree]
!46 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{metadata !17, metadata !9}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786689, metadata !45, metadata !"etree", metadata !5, i32 16777279, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 63]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_root", metadata !"ETree_root", metadata !"", i32 86, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*)* @ETree_root, null, null, metadata !51, i32 88} ; [ DW_TAG_subprogram ] [line 86] [def] [scope 88] [ETree_root]
!51 = metadata !{metadata !52}
!52 = metadata !{i32 786689, metadata !50, metadata !"etree", metadata !5, i32 16777303, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 87]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_par", metadata !"ETree_par", metadata !"", i32 110, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._ETree*)* @ETree_par, null, null, metadata !56, i32 112} ; [ DW_TAG_subprogram ] [line 110] [def] [scope 112] [ETree_par]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{metadata !25, metadata !9}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786689, metadata !53, metadata !"etree", metadata !5, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 111]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_fch", metadata !"ETree_fch", metadata !"", i32 134, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._ETree*)* @ETree_fch, null, null, metadata !59, i32 136} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 136] [ETree_fch]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786689, metadata !58, metadata !"etree", metadata !5, i32 16777351, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 135]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_sib", metadata !"ETree_sib", metadata !"", i32 158, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._ETree*)* @ETree_sib, null, null, metadata !62, i32 160} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 160] [ETree_sib]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786689, metadata !61, metadata !"etree", metadata !5, i32 16777375, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 159]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nodwghtsIV", metadata !"ETree_nodwghtsIV", metadata !"", i32 182, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_nodwghtsIV, null, null, metadata !67, i32 184} ; [ DW_TAG_subprogram ] [line 182] [def] [scope 184] [ETree_nodwghtsIV]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !29, metadata !9}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 786689, metadata !64, metadata !"etree", metadata !5, i32 16777399, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 183]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_nodwghts", metadata !"ETree_nodwghts", metadata !"", i32 206, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._ETree*)* @ETree_nodwghts, null, null, metadata !70, i32 208} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 208] [ETree_nodwghts]
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786689, metadata !69, metadata !"etree", metadata !5, i32 16777423, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 207]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_bndwghtsIV", metadata !"ETree_bndwghtsIV", metadata !"", i32 230, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_bndwghtsIV, null, null, metadata !73, i32 232} ; [ DW_TAG_subprogram ] [line 230] [def] [scope 232] [ETree_bndwghtsIV]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786689, metadata !72, metadata !"etree", metadata !5, i32 16777447, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 231]
!75 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_bndwghts", metadata !"ETree_bndwghts", metadata !"", i32 254, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._ETree*)* @ETree_bndwghts, null, null, metadata !76, i32 256} ; [ DW_TAG_subprogram ] [line 254] [def] [scope 256] [ETree_bndwghts]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786689, metadata !75, metadata !"etree", metadata !5, i32 16777471, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 255]
!78 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_vtxToFrontIV", metadata !"ETree_vtxToFrontIV", metadata !"", i32 278, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_vtxToFrontIV, null, null, metadata !79, i32 280} ; [ DW_TAG_subprogram ] [line 278] [def] [scope 280] [ETree_vtxToFrontIV]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786689, metadata !78, metadata !"etree", metadata !5, i32 16777495, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 279]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_vtxToFront", metadata !"ETree_vtxToFront", metadata !"", i32 302, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._ETree*)* @ETree_vtxToFront, null, null, metadata !82, i32 304} ; [ DW_TAG_subprogram ] [line 302] [def] [scope 304] [ETree_vtxToFront]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786689, metadata !81, metadata !"etree", metadata !5, i32 16777519, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 303]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_frontSize", metadata !"ETree_frontSize", metadata !"", i32 327, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, i32)* @ETree_frontSize, null, null, metadata !87, i32 330} ; [ DW_TAG_subprogram ] [line 327] [def] [scope 330] [ETree_frontSize]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !8, metadata !9, metadata !8}
!87 = metadata !{metadata !88, metadata !89}
!88 = metadata !{i32 786689, metadata !84, metadata !"etree", metadata !5, i32 16777544, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 328]
!89 = metadata !{i32 786689, metadata !84, metadata !"J", metadata !5, i32 33554761, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 329]
!90 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_frontBoundarySize", metadata !"ETree_frontBoundarySize", metadata !"", i32 353, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._ETree*, i32)* @ETree_frontBoundarySize, null, null, metadata !91, i32 356} ; [ DW_TAG_subprogram ] [line 353] [def] [scope 356] [ETree_frontBoundarySize]
!91 = metadata !{metadata !92, metadata !93}
!92 = metadata !{i32 786689, metadata !90, metadata !"etree", metadata !5, i32 16777570, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 354]
!93 = metadata !{i32 786689, metadata !90, metadata !"J", metadata !5, i32 33554787, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [J] [line 355]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_maxNindAndNent", metadata !"ETree_maxNindAndNent", metadata !"", i32 386, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._ETree*, i32, i32*, i32*)* @ETree_maxNindAndNent, null, null, metadata !97, i32 391} ; [ DW_TAG_subprogram ] [line 386] [def] [scope 391] [ETree_maxNindAndNent]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !9, metadata !8, metadata !25, metadata !25}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!98 = metadata !{i32 786689, metadata !94, metadata !"etree", metadata !5, i32 16777603, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 387]
!99 = metadata !{i32 786689, metadata !94, metadata !"symflag", metadata !5, i32 33554820, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [symflag] [line 388]
!100 = metadata !{i32 786689, metadata !94, metadata !"pmaxnind", metadata !5, i32 50332037, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxnind] [line 389]
!101 = metadata !{i32 786689, metadata !94, metadata !"pmaxnent", metadata !5, i32 67109254, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmaxnent] [line 390]
!102 = metadata !{i32 786688, metadata !94, metadata !"J", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [J] [line 392]
!103 = metadata !{i32 786688, metadata !94, metadata !"maxnent", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxnent] [line 392]
!104 = metadata !{i32 786688, metadata !94, metadata !"maxnind", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxnind] [line 392]
!105 = metadata !{i32 786688, metadata !94, metadata !"nDJ", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nDJ] [line 392]
!106 = metadata !{i32 786688, metadata !94, metadata !"nent", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 392]
!107 = metadata !{i32 786688, metadata !94, metadata !"nfront", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 392]
!108 = metadata !{i32 786688, metadata !94, metadata !"nind", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nind] [line 392]
!109 = metadata !{i32 786688, metadata !94, metadata !"nUJ", metadata !5, i32 392, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nUJ] [line 392]
!110 = metadata !{i32 786688, metadata !94, metadata !"nodwghts", metadata !5, i32 393, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 393]
!111 = metadata !{i32 786688, metadata !94, metadata !"bndwghts", metadata !5, i32 393, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 393]
!112 = metadata !{i32 15, i32 0, metadata !4, null}
!113 = metadata !{i32 22, i32 0, metadata !4, null}
!114 = metadata !{i32 23, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!116 = metadata !{metadata !"any pointer", metadata !117}
!117 = metadata !{metadata !"omnipotent char", metadata !118}
!118 = metadata !{metadata !"Simple C/C++ TBAA"}
!119 = metadata !{i32 25, i32 0, metadata !115, null}
!120 = metadata !{i32 27, i32 0, metadata !4, null}
!121 = metadata !{metadata !"int", metadata !117}
!122 = metadata !{i32 39, i32 0, metadata !42, null}
!123 = metadata !{i32 46, i32 0, metadata !42, null}
!124 = metadata !{i32 47, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !42, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!126 = metadata !{i32 49, i32 0, metadata !125, null}
!127 = metadata !{i32 51, i32 0, metadata !42, null}
!128 = metadata !{i32 63, i32 0, metadata !45, null}
!129 = metadata !{i32 70, i32 0, metadata !45, null}
!130 = metadata !{i32 71, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !45, i32 70, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!132 = metadata !{i32 73, i32 0, metadata !131, null}
!133 = metadata !{i32 75, i32 0, metadata !45, null}
!134 = metadata !{i32 87, i32 0, metadata !50, null}
!135 = metadata !{i32 94, i32 0, metadata !50, null}
!136 = metadata !{i32 95, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !50, i32 94, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!138 = metadata !{i32 97, i32 0, metadata !137, null}
!139 = metadata !{i32 99, i32 0, metadata !50, null}
!140 = metadata !{i32 111, i32 0, metadata !53, null}
!141 = metadata !{i32 118, i32 0, metadata !53, null}
!142 = metadata !{i32 119, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !53, i32 118, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!144 = metadata !{i32 121, i32 0, metadata !143, null}
!145 = metadata !{i32 123, i32 0, metadata !53, null}
!146 = metadata !{i32 135, i32 0, metadata !58, null}
!147 = metadata !{i32 142, i32 0, metadata !58, null}
!148 = metadata !{i32 143, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !58, i32 142, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!150 = metadata !{i32 145, i32 0, metadata !149, null}
!151 = metadata !{i32 147, i32 0, metadata !58, null}
!152 = metadata !{i32 159, i32 0, metadata !61, null}
!153 = metadata !{i32 166, i32 0, metadata !61, null}
!154 = metadata !{i32 167, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !61, i32 166, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!156 = metadata !{i32 169, i32 0, metadata !155, null}
!157 = metadata !{i32 171, i32 0, metadata !61, null}
!158 = metadata !{i32 183, i32 0, metadata !64, null}
!159 = metadata !{i32 190, i32 0, metadata !64, null}
!160 = metadata !{i32 191, i32 0, metadata !161, null}
!161 = metadata !{i32 786443, metadata !1, metadata !64, i32 190, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!162 = metadata !{i32 193, i32 0, metadata !161, null}
!163 = metadata !{i32 195, i32 0, metadata !64, null}
!164 = metadata !{i32 207, i32 0, metadata !69, null}
!165 = metadata !{i32 214, i32 0, metadata !69, null}
!166 = metadata !{i32 215, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !69, i32 214, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!168 = metadata !{i32 217, i32 0, metadata !167, null}
!169 = metadata !{i32 219, i32 0, metadata !69, null}
!170 = metadata !{i32 231, i32 0, metadata !72, null}
!171 = metadata !{i32 238, i32 0, metadata !72, null}
!172 = metadata !{i32 239, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !72, i32 238, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!174 = metadata !{i32 241, i32 0, metadata !173, null}
!175 = metadata !{i32 243, i32 0, metadata !72, null}
!176 = metadata !{i32 255, i32 0, metadata !75, null}
!177 = metadata !{i32 262, i32 0, metadata !75, null}
!178 = metadata !{i32 263, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !75, i32 262, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!180 = metadata !{i32 265, i32 0, metadata !179, null}
!181 = metadata !{i32 267, i32 0, metadata !75, null}
!182 = metadata !{i32 279, i32 0, metadata !78, null}
!183 = metadata !{i32 286, i32 0, metadata !78, null}
!184 = metadata !{i32 287, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !78, i32 286, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!186 = metadata !{i32 289, i32 0, metadata !185, null}
!187 = metadata !{i32 291, i32 0, metadata !78, null}
!188 = metadata !{i32 303, i32 0, metadata !81, null}
!189 = metadata !{i32 310, i32 0, metadata !81, null}
!190 = metadata !{i32 311, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !81, i32 310, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!192 = metadata !{i32 313, i32 0, metadata !191, null}
!193 = metadata !{i32 315, i32 0, metadata !81, null}
!194 = metadata !{i32 328, i32 0, metadata !84, null}
!195 = metadata !{i32 329, i32 0, metadata !84, null}
!196 = metadata !{i32 336, i32 0, metadata !84, null}
!197 = metadata !{i32 337, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !84, i32 336, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!199 = metadata !{i32 339, i32 0, metadata !198, null}
!200 = metadata !{i32 341, i32 0, metadata !84, null}
!201 = metadata !{i32 354, i32 0, metadata !90, null}
!202 = metadata !{i32 355, i32 0, metadata !90, null}
!203 = metadata !{i32 362, i32 0, metadata !90, null}
!204 = metadata !{i32 363, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !90, i32 362, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!206 = metadata !{i32 365, i32 0, metadata !205, null}
!207 = metadata !{i32 367, i32 0, metadata !90, null}
!208 = metadata !{i32 387, i32 0, metadata !94, null}
!209 = metadata !{i32 388, i32 0, metadata !94, null}
!210 = metadata !{i32 389, i32 0, metadata !94, null}
!211 = metadata !{i32 390, i32 0, metadata !94, null}
!212 = metadata !{i32 399, i32 0, metadata !94, null}
!213 = metadata !{i32 400, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !94, i32 399, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!215 = metadata !{i32 402, i32 0, metadata !214, null}
!216 = metadata !{i32 404, i32 0, metadata !94, null}
!217 = metadata !{i32 405, i32 0, metadata !94, null}
!218 = metadata !{i32 406, i32 0, metadata !94, null}
!219 = metadata !{i32 407, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !94, i32 407, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!221 = metadata !{i32 408, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !220, i32 407, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!223 = metadata !{i32 409, i32 0, metadata !222, null}
!224 = metadata !{i32 410, i32 0, metadata !222, null}
!225 = metadata !{i32 413, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !222, i32 410, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!227 = metadata !{i32 414, i32 0, metadata !226, null}
!228 = metadata !{i32 415, i32 0, metadata !226, null}
!229 = metadata !{i32 417, i32 0, metadata !226, null}
!230 = metadata !{i32 418, i32 0, metadata !226, null}
!231 = metadata !{i32 419, i32 0, metadata !226, null}
!232 = metadata !{i32 421, i32 0, metadata !226, null}
!233 = metadata !{i32 423, i32 0, metadata !226, null}
!234 = metadata !{i32 426, i32 0, metadata !222, null}
!235 = metadata !{i32 427, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !222, i32 426, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!237 = metadata !{i32 429, i32 0, metadata !222, null}
!238 = metadata !{i32 430, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !222, i32 429, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_instance.c]
!240 = metadata !{i32 433, i32 0, metadata !94, null}
!241 = metadata !{i32 434, i32 0, metadata !94, null}
!242 = metadata !{i32 436, i32 0, metadata !94, null}

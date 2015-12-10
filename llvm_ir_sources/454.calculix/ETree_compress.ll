; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IV = type { i32, i32, i32, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [52 x i8] c"\0A fatal error in ETree_fundChainMap(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"\0A fatal error in ETree_fundSupernodeMap(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [51 x i8] c"\0A fatal error in ETree_compress(%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_fundChainMap(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !41), !dbg !84
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !85
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !85

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !85
  %0 = load %struct._Tree** %tree, align 8, !dbg !85, !tbaa !86
  %cmp1 = icmp eq %struct._Tree* %0, null, !dbg !85
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !85

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !85
  %1 = load i32* %nfront3, align 4, !dbg !85, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !42), !dbg !85
  %cmp4 = icmp slt i32 %1, 1, !dbg !85
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !85

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !85
  %2 = load i32* %nvtx6, align 4, !dbg !85, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !43), !dbg !85
  %cmp7 = icmp slt i32 %2, 1, !dbg !85
  br i1 %cmp7, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !90, !tbaa !86
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !90
  tail call void @exit(i32 -1) #6, !dbg !92
  unreachable, !dbg !92

if.end:                                           ; preds = %lor.lhs.false5
  %call9 = tail call %struct._IV* @Tree_fundChainMap(%struct._Tree* %0) #5, !dbg !93
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call9}, i64 0, metadata !44), !dbg !93
  ret %struct._IV* %call9, !dbg !94
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @Tree_fundChainMap(%struct._Tree*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._IV* @ETree_fundSupernodeMap(%struct._ETree* %etree) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !47), !dbg !95
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !96
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !96

lor.lhs.false:                                    ; preds = %entry
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !96
  %0 = load %struct._Tree** %tree, align 8, !dbg !96, !tbaa !86
  %cmp1 = icmp eq %struct._Tree* %0, null, !dbg !96
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !96

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %nfront3 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !96
  %1 = load i32* %nfront3, align 4, !dbg !96, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !50), !dbg !96
  %cmp4 = icmp slt i32 %1, 1, !dbg !96
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !96

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %nvtx6 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !96
  %2 = load i32* %nvtx6, align 4, !dbg !96, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !52), !dbg !96
  %cmp7 = icmp slt i32 %2, 1, !dbg !96
  br i1 %cmp7, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false2, %lor.lhs.false, %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !97, !tbaa !86
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), %struct._ETree* %etree) #5, !dbg !97
  tail call void @exit(i32 -1) #6, !dbg !99
  unreachable, !dbg !99

if.end:                                           ; preds = %lor.lhs.false5
  %par9 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 2, !dbg !100
  %4 = load i32** %par9, align 8, !dbg !100, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !57), !dbg !100
  %fch11 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 3, !dbg !101
  %5 = load i32** %fch11, align 8, !dbg !101, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{i32* %5}, i64 0, metadata !54), !dbg !101
  %sib13 = getelementptr inbounds %struct._Tree* %0, i64 0, i32 4, !dbg !102
  %6 = load i32** %sib13, align 8, !dbg !102, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{i32* %6}, i64 0, metadata !58), !dbg !102
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !103
  %7 = load %struct._IV** %nodwghtsIV, align 8, !dbg !103, !tbaa !86
  %call14 = tail call i32* @IV_entries(%struct._IV* %7) #5, !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !56), !dbg !103
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !104
  %8 = load %struct._IV** %bndwghtsIV, align 8, !dbg !104, !tbaa !86
  %call15 = tail call i32* @IV_entries(%struct._IV* %8) #5, !dbg !104
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !53), !dbg !104
  %call16 = tail call %struct._IV* @IV_new() #5, !dbg !105
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %call16}, i64 0, metadata !59), !dbg !105
  tail call void @IV_init(%struct._IV* %call16, i32 %1, i32* null) #5, !dbg !106
  %call17 = tail call i32* @IV_entries(%struct._IV* %call16) #5, !dbg !107
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !55), !dbg !107
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !108
  %9 = load %struct._Tree** %tree, align 8, !dbg !109, !tbaa !86
  %root = getelementptr inbounds %struct._Tree* %9, i64 0, i32 1, !dbg !109
  %front.0117 = load i32* %root, align 4, !dbg !109
  %cmp19118 = icmp eq i32 %front.0117, -1, !dbg !110
  br i1 %cmp19118, label %while.end62, label %while.cond20.preheader, !dbg !110

while.cond20.preheader:                           ; preds = %if.then50, %while.end, %if.else, %if.end
  %front.0120 = phi i32 [ %front.0117, %if.end ], [ %20, %if.else ], [ %11, %while.end ], [ %18, %if.then50 ]
  %nfs.0119 = phi i32 [ 0, %if.end ], [ %nfs.1.ph112, %if.else ], [ %inc, %while.end ], [ %inc51, %if.then50 ]
  br label %while.cond20, !dbg !111

while.cond20:                                     ; preds = %while.cond20.preheader, %while.cond20
  %front.1 = phi i32 [ %10, %while.cond20 ], [ %front.0120, %while.cond20.preheader ]
  %idxprom = sext i32 %front.1 to i64, !dbg !111
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom, !dbg !111
  %10 = load i32* %arrayidx, align 4, !dbg !111, !tbaa !89
  %cmp21 = icmp eq i32 %10, -1, !dbg !111
  br i1 %cmp21, label %while.end, label %while.cond20, !dbg !111

while.end:                                        ; preds = %while.cond20
  %inc = add nsw i32 %nfs.0119, 1, !dbg !113
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !51), !dbg !113
  %arrayidx26 = getelementptr inbounds i32* %call17, i64 %idxprom, !dbg !113
  store i32 %nfs.0119, i32* %arrayidx26, align 4, !dbg !113, !tbaa !89
  %arrayidx29100110 = getelementptr inbounds i32* %6, i64 %idxprom, !dbg !114
  %11 = load i32* %arrayidx29100110, align 4, !dbg !114, !tbaa !89
  %cmp30101111 = icmp eq i32 %11, -1, !dbg !114
  br i1 %cmp30101111, label %land.rhs.lr.ph, label %while.cond20.preheader, !dbg !114

land.rhs.lr.ph:                                   ; preds = %while.end, %if.then50
  %idxprom2899113 = phi i64 [ %idxprom37, %if.then50 ], [ %idxprom, %while.end ]
  %nfs.1.ph112 = phi i32 [ %inc51, %if.then50 ], [ %inc, %while.end ]
  br label %land.rhs, !dbg !114

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.else
  %idxprom28102 = phi i64 [ %idxprom2899113, %land.rhs.lr.ph ], [ %idxprom37, %if.else ]
  %arrayidx32 = getelementptr inbounds i32* %4, i64 %idxprom28102, !dbg !114
  %12 = load i32* %arrayidx32, align 4, !dbg !114, !tbaa !89
  %cmp33 = icmp eq i32 %12, -1, !dbg !114
  br i1 %cmp33, label %while.end62, label %while.body34

while.body34:                                     ; preds = %land.rhs
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !49), !dbg !115
  %idxprom37 = sext i32 %12 to i64, !dbg !117
  %arrayidx38 = getelementptr inbounds i32* %5, i64 %idxprom37, !dbg !117
  %13 = load i32* %arrayidx38, align 4, !dbg !117, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !48), !dbg !117
  %idxprom39 = sext i32 %13 to i64, !dbg !118
  %arrayidx40 = getelementptr inbounds i32* %6, i64 %idxprom39, !dbg !118
  %14 = load i32* %arrayidx40, align 4, !dbg !118, !tbaa !89
  %cmp41 = icmp eq i32 %14, -1, !dbg !118
  br i1 %cmp41, label %lor.lhs.false42, label %if.then50, !dbg !118

lor.lhs.false42:                                  ; preds = %while.body34
  %arrayidx44 = getelementptr inbounds i32* %call14, i64 %idxprom37, !dbg !118
  %15 = load i32* %arrayidx44, align 4, !dbg !118, !tbaa !89
  %arrayidx46 = getelementptr inbounds i32* %call15, i64 %idxprom37, !dbg !118
  %16 = load i32* %arrayidx46, align 4, !dbg !118, !tbaa !89
  %add = add nsw i32 %16, %15, !dbg !118
  %arrayidx48 = getelementptr inbounds i32* %call15, i64 %idxprom39, !dbg !118
  %17 = load i32* %arrayidx48, align 4, !dbg !118, !tbaa !89
  %cmp49 = icmp eq i32 %add, %17, !dbg !118
  br i1 %cmp49, label %if.else, label %if.then50, !dbg !118

if.then50:                                        ; preds = %lor.lhs.false42, %while.body34
  %inc51 = add nsw i32 %nfs.1.ph112, 1, !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32 %inc51}, i64 0, metadata !51), !dbg !119
  %arrayidx53 = getelementptr inbounds i32* %call17, i64 %idxprom37, !dbg !119
  store i32 %nfs.1.ph112, i32* %arrayidx53, align 4, !dbg !119, !tbaa !89
  %arrayidx29100 = getelementptr inbounds i32* %6, i64 %idxprom37, !dbg !114
  %18 = load i32* %arrayidx29100, align 4, !dbg !114, !tbaa !89
  %cmp30101 = icmp eq i32 %18, -1, !dbg !114
  br i1 %cmp30101, label %land.rhs.lr.ph, label %while.cond20.preheader, !dbg !114

if.else:                                          ; preds = %lor.lhs.false42
  %arrayidx55 = getelementptr inbounds i32* %call17, i64 %idxprom39, !dbg !121
  %19 = load i32* %arrayidx55, align 4, !dbg !121, !tbaa !89
  %arrayidx57 = getelementptr inbounds i32* %call17, i64 %idxprom37, !dbg !121
  store i32 %19, i32* %arrayidx57, align 4, !dbg !121, !tbaa !89
  %arrayidx29 = getelementptr inbounds i32* %6, i64 %idxprom37, !dbg !114
  %20 = load i32* %arrayidx29, align 4, !dbg !114, !tbaa !89
  %cmp30 = icmp eq i32 %20, -1, !dbg !114
  br i1 %cmp30, label %land.rhs, label %while.cond20.preheader, !dbg !114

while.end62:                                      ; preds = %land.rhs, %if.end
  ret %struct._IV* %call16, !dbg !123
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._IV* @IV_new() #3

; Function Attrs: optsize
declare void @IV_init(%struct._IV*, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @ETree_compress(%struct._ETree* %etree, %struct._IV* %frontmapIV) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %etree}, i64 0, metadata !64), !dbg !124
  tail call void @llvm.dbg.value(metadata !{%struct._IV* %frontmapIV}, i64 0, metadata !65), !dbg !125
  %cmp = icmp eq %struct._ETree* %etree, null, !dbg !126
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !126

lor.lhs.false:                                    ; preds = %entry
  %nfront1 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 0, !dbg !126
  %0 = load i32* %nfront1, align 4, !dbg !126, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !67), !dbg !126
  %cmp2 = icmp slt i32 %0, 1, !dbg !126
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !126

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %nvtx4 = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 1, !dbg !126
  %1 = load i32* %nvtx4, align 4, !dbg !126, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !71), !dbg !126
  %cmp5 = icmp slt i32 %1, 1, !dbg !126
  %cmp7 = icmp eq %struct._IV* %frontmapIV, null, !dbg !126
  %or.cond = or i1 %cmp5, %cmp7, !dbg !126
  br i1 %or.cond, label %if.then, label %for.body.lr.ph, !dbg !126

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !127, !tbaa !86
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([51 x i8]* @.str2, i64 0, i64 0), %struct._ETree* %etree, %struct._IV* %frontmapIV) #5, !dbg !127
  tail call void @exit(i32 -1) #6, !dbg !129
  unreachable, !dbg !129

for.body.lr.ph:                                   ; preds = %lor.lhs.false3
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !67), !dbg !130
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !71), !dbg !131
  %tree = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 2, !dbg !132
  %3 = load %struct._Tree** %tree, align 8, !dbg !132, !tbaa !86
  %par10 = getelementptr inbounds %struct._Tree* %3, i64 0, i32 2, !dbg !132
  %4 = load i32** %par10, align 8, !dbg !132, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{i32* %4}, i64 0, metadata !82), !dbg !132
  %nodwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 3, !dbg !133
  %5 = load %struct._IV** %nodwghtsIV, align 8, !dbg !133, !tbaa !86
  %call11 = tail call i32* @IV_entries(%struct._IV* %5) #5, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i32* %call11}, i64 0, metadata !81), !dbg !133
  %bndwghtsIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 4, !dbg !134
  %6 = load %struct._IV** %bndwghtsIV, align 8, !dbg !134, !tbaa !86
  %call12 = tail call i32* @IV_entries(%struct._IV* %6) #5, !dbg !134
  tail call void @llvm.dbg.value(metadata !{i32* %call12}, i64 0, metadata !75), !dbg !134
  %vtxToFrontIV = getelementptr inbounds %struct._ETree* %etree, i64 0, i32 5, !dbg !135
  %7 = load %struct._IV** %vtxToFrontIV, align 8, !dbg !135, !tbaa !86
  %call13 = tail call i32* @IV_entries(%struct._IV* %7) #5, !dbg !135
  tail call void @llvm.dbg.value(metadata !{i32* %call13}, i64 0, metadata !83), !dbg !135
  %call14 = tail call i32 @IV_max(%struct._IV* %frontmapIV) #5, !dbg !136
  %add = add nsw i32 %call14, 1, !dbg !136
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !69), !dbg !136
  %call15 = tail call i32* @IV_entries(%struct._IV* %frontmapIV) #5, !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !76), !dbg !137
  %call16 = tail call %struct._ETree* @ETree_new() #5, !dbg !138
  tail call void @llvm.dbg.value(metadata !{%struct._ETree* %call16}, i64 0, metadata !66), !dbg !138
  tail call void @ETree_init1(%struct._ETree* %call16, i32 %add, i32 %1) #5, !dbg !139
  %tree17 = getelementptr inbounds %struct._ETree* %call16, i64 0, i32 2, !dbg !140
  %8 = load %struct._Tree** %tree17, align 8, !dbg !140, !tbaa !86
  %par18 = getelementptr inbounds %struct._Tree* %8, i64 0, i32 2, !dbg !140
  %9 = load i32** %par18, align 8, !dbg !140, !tbaa !86
  tail call void @llvm.dbg.value(metadata !{i32* %9}, i64 0, metadata !79), !dbg !140
  %nodwghtsIV19 = getelementptr inbounds %struct._ETree* %call16, i64 0, i32 3, !dbg !141
  %10 = load %struct._IV** %nodwghtsIV19, align 8, !dbg !141, !tbaa !86
  %call20 = tail call i32* @IV_entries(%struct._IV* %10) #5, !dbg !141
  tail call void @llvm.dbg.value(metadata !{i32* %call20}, i64 0, metadata !78), !dbg !141
  %bndwghtsIV21 = getelementptr inbounds %struct._ETree* %call16, i64 0, i32 4, !dbg !142
  %11 = load %struct._IV** %bndwghtsIV21, align 8, !dbg !142, !tbaa !86
  %call22 = tail call i32* @IV_entries(%struct._IV* %11) #5, !dbg !142
  tail call void @llvm.dbg.value(metadata !{i32* %call22}, i64 0, metadata !77), !dbg !142
  %vtxToFrontIV23 = getelementptr inbounds %struct._ETree* %call16, i64 0, i32 5, !dbg !143
  %12 = load %struct._IV** %vtxToFrontIV23, align 8, !dbg !143, !tbaa !86
  %call24 = tail call i32* @IV_entries(%struct._IV* %12) #5, !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32* %call24}, i64 0, metadata !80), !dbg !143
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !72), !dbg !144
  br label %for.body, !dbg !144

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv95 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next96, %for.inc ]
  %arrayidx = getelementptr inbounds i32* %call15, i64 %indvars.iv95, !dbg !146
  %13 = load i32* %arrayidx, align 4, !dbg !146, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !68), !dbg !146
  %arrayidx27 = getelementptr inbounds i32* %4, i64 %indvars.iv95, !dbg !148
  %14 = load i32* %arrayidx27, align 4, !dbg !148, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !73), !dbg !148
  %arrayidx29 = getelementptr inbounds i32* %call11, i64 %indvars.iv95, !dbg !149
  %15 = load i32* %arrayidx29, align 4, !dbg !149, !tbaa !89
  %idxprom30 = sext i32 %13 to i64, !dbg !149
  %arrayidx31 = getelementptr inbounds i32* %call20, i64 %idxprom30, !dbg !149
  %16 = load i32* %arrayidx31, align 4, !dbg !149, !tbaa !89
  %add32 = add nsw i32 %16, %15, !dbg !149
  store i32 %add32, i32* %arrayidx31, align 4, !dbg !149, !tbaa !89
  %cmp33 = icmp eq i32 %14, -1, !dbg !150
  br i1 %cmp33, label %for.inc, label %land.lhs.true, !dbg !150

land.lhs.true:                                    ; preds = %for.body
  %idxprom34 = sext i32 %14 to i64, !dbg !150
  %arrayidx35 = getelementptr inbounds i32* %call15, i64 %idxprom34, !dbg !150
  %17 = load i32* %arrayidx35, align 4, !dbg !150, !tbaa !89
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !70), !dbg !150
  %cmp36 = icmp eq i32 %17, %13, !dbg !150
  br i1 %cmp36, label %for.inc, label %if.then37, !dbg !150

if.then37:                                        ; preds = %land.lhs.true
  %arrayidx39 = getelementptr inbounds i32* %9, i64 %idxprom30, !dbg !151
  store i32 %17, i32* %arrayidx39, align 4, !dbg !151, !tbaa !89
  %arrayidx41 = getelementptr inbounds i32* %call12, i64 %indvars.iv95, !dbg !153
  %18 = load i32* %arrayidx41, align 4, !dbg !153, !tbaa !89
  %arrayidx43 = getelementptr inbounds i32* %call22, i64 %idxprom30, !dbg !153
  store i32 %18, i32* %arrayidx43, align 4, !dbg !153, !tbaa !89
  br label %for.inc, !dbg !154

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then37
  %indvars.iv.next96 = add i64 %indvars.iv95, 1, !dbg !144
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32, !dbg !144
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %0, !dbg !144
  br i1 %exitcond98, label %for.end, label %for.body, !dbg !144

for.end:                                          ; preds = %for.inc
  %19 = load %struct._Tree** %tree17, align 8, !dbg !155, !tbaa !86
  tail call void @Tree_setFchSibRoot(%struct._Tree* %19) #5, !dbg !155
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !74), !dbg !156
  %cmp4791 = icmp sgt i32 %1, 0, !dbg !156
  br i1 %cmp4791, label %for.body48, label %for.end57, !dbg !156

for.body48:                                       ; preds = %for.end, %for.body48
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body48 ], [ 0, %for.end ]
  %arrayidx50 = getelementptr inbounds i32* %call13, i64 %indvars.iv, !dbg !158
  %20 = load i32* %arrayidx50, align 4, !dbg !158, !tbaa !89
  %idxprom51 = sext i32 %20 to i64, !dbg !158
  %arrayidx52 = getelementptr inbounds i32* %call15, i64 %idxprom51, !dbg !158
  %21 = load i32* %arrayidx52, align 4, !dbg !158, !tbaa !89
  %arrayidx54 = getelementptr inbounds i32* %call24, i64 %indvars.iv, !dbg !158
  store i32 %21, i32* %arrayidx54, align 4, !dbg !158, !tbaa !89
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !156
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !156
  %exitcond = icmp eq i32 %lftr.wideiv, %1, !dbg !156
  br i1 %exitcond, label %for.end57, label %for.body48, !dbg !156

for.end57:                                        ; preds = %for.body48, %for.end
  ret %struct._ETree* %call16, !dbg !160
}

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_new() #3

; Function Attrs: optsize
declare void @ETree_init1(%struct._ETree*, i32, i32) #3

; Function Attrs: optsize
declare void @Tree_setFchSibRoot(%struct._Tree*) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !45, metadata !60}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_fundChainMap", metadata !"ETree_fundChainMap", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_fundChainMap, null, null, metadata !40, i32 20} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 20] [ETree_fundChainMap]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !19}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IV]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ETree]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"ETree", i32 31, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [ETree] [line 31, size 0, align 0, offset 0] [from _ETree]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"_ETree", i32 32, i64 320, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [_ETree] [line 32, size 320, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../ETree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !25, metadata !26, metadata !37, metadata !38, metadata !39}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nfront", i32 33, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [nfront] [line 33, size 32, align 32, offset 0] [from int]
!25 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nvtx", i32 34, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [nvtx] [line 34, size 32, align 32, offset 32] [from int]
!26 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"tree", i32 35, i64 64, i64 64, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [tree] [line 35, size 64, align 64, offset 64] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!28 = metadata !{i32 786454, metadata !22, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/../../Tree/Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!37 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nodwghtsIV", i32 36, i64 64, i64 64, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nodwghtsIV] [line 36, size 64, align 64, offset 128] [from ]
!38 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"bndwghtsIV", i32 37, i64 64, i64 64, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [bndwghtsIV] [line 37, size 64, align 64, offset 192] [from ]
!39 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"vtxToFrontIV", i32 38, i64 64, i64 64, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [vtxToFrontIV] [line 38, size 64, align 64, offset 256] [from ]
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44}
!41 = metadata !{i32 786689, metadata !4, metadata !"etree", metadata !5, i32 16777235, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 19]
!42 = metadata !{i32 786688, metadata !4, metadata !"nfront", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 21]
!43 = metadata !{i32 786688, metadata !4, metadata !"nvtx", metadata !5, i32 21, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 21]
!44 = metadata !{i32 786688, metadata !4, metadata !"frontmapIV", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frontmapIV] [line 22]
!45 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_fundSupernodeMap", metadata !"ETree_fundSupernodeMap", metadata !"", i32 55, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IV* (%struct._ETree*)* @ETree_fundSupernodeMap, null, null, metadata !46, i32 57} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 57] [ETree_fundSupernodeMap]
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59}
!47 = metadata !{i32 786689, metadata !45, metadata !"etree", metadata !5, i32 16777272, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 56]
!48 = metadata !{i32 786688, metadata !45, metadata !"child", metadata !5, i32 58, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [child] [line 58]
!49 = metadata !{i32 786688, metadata !45, metadata !"front", metadata !5, i32 58, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [front] [line 58]
!50 = metadata !{i32 786688, metadata !45, metadata !"nfront", metadata !5, i32 58, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 58]
!51 = metadata !{i32 786688, metadata !45, metadata !"nfs", metadata !5, i32 58, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfs] [line 58]
!52 = metadata !{i32 786688, metadata !45, metadata !"nvtx", metadata !5, i32 58, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 58]
!53 = metadata !{i32 786688, metadata !45, metadata !"bndwghts", metadata !5, i32 59, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 59]
!54 = metadata !{i32 786688, metadata !45, metadata !"fch", metadata !5, i32 59, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fch] [line 59]
!55 = metadata !{i32 786688, metadata !45, metadata !"frontmap", metadata !5, i32 59, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frontmap] [line 59]
!56 = metadata !{i32 786688, metadata !45, metadata !"nodwghts", metadata !5, i32 59, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 59]
!57 = metadata !{i32 786688, metadata !45, metadata !"par", metadata !5, i32 59, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 59]
!58 = metadata !{i32 786688, metadata !45, metadata !"sib", metadata !5, i32 59, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sib] [line 59]
!59 = metadata !{i32 786688, metadata !45, metadata !"frontmapIV", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frontmapIV] [line 60]
!60 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ETree_compress", metadata !"ETree_compress", metadata !"", i32 119, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._ETree* (%struct._ETree*, %struct._IV*)* @ETree_compress, null, null, metadata !63, i32 122} ; [ DW_TAG_subprogram ] [line 119] [def] [scope 122] [ETree_compress]
!61 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{metadata !19, metadata !19, metadata !8}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83}
!64 = metadata !{i32 786689, metadata !60, metadata !"etree", metadata !5, i32 16777336, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [etree] [line 120]
!65 = metadata !{i32 786689, metadata !60, metadata !"frontmapIV", metadata !5, i32 33554553, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [frontmapIV] [line 121]
!66 = metadata !{i32 786688, metadata !60, metadata !"etree2", metadata !5, i32 123, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [etree2] [line 123]
!67 = metadata !{i32 786688, metadata !60, metadata !"nfront", metadata !5, i32 124, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfront] [line 124]
!68 = metadata !{i32 786688, metadata !60, metadata !"newfront", metadata !5, i32 124, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newfront] [line 124]
!69 = metadata !{i32 786688, metadata !60, metadata !"newnfront", metadata !5, i32 124, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newnfront] [line 124]
!70 = metadata !{i32 786688, metadata !60, metadata !"newparfront", metadata !5, i32 124, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newparfront] [line 124]
!71 = metadata !{i32 786688, metadata !60, metadata !"nvtx", metadata !5, i32 124, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nvtx] [line 124]
!72 = metadata !{i32 786688, metadata !60, metadata !"oldfront", metadata !5, i32 124, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldfront] [line 124]
!73 = metadata !{i32 786688, metadata !60, metadata !"parfront", metadata !5, i32 125, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parfront] [line 125]
!74 = metadata !{i32 786688, metadata !60, metadata !"v", metadata !5, i32 125, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 125]
!75 = metadata !{i32 786688, metadata !60, metadata !"bndwghts", metadata !5, i32 126, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bndwghts] [line 126]
!76 = metadata !{i32 786688, metadata !60, metadata !"frontmap", metadata !5, i32 126, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [frontmap] [line 126]
!77 = metadata !{i32 786688, metadata !60, metadata !"newbndwghts", metadata !5, i32 126, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newbndwghts] [line 126]
!78 = metadata !{i32 786688, metadata !60, metadata !"newnodwghts", metadata !5, i32 126, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newnodwghts] [line 126]
!79 = metadata !{i32 786688, metadata !60, metadata !"newpar", metadata !5, i32 126, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newpar] [line 126]
!80 = metadata !{i32 786688, metadata !60, metadata !"newvtxToFront", metadata !5, i32 127, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newvtxToFront] [line 127]
!81 = metadata !{i32 786688, metadata !60, metadata !"nodwghts", metadata !5, i32 127, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodwghts] [line 127]
!82 = metadata !{i32 786688, metadata !60, metadata !"par", metadata !5, i32 127, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [par] [line 127]
!83 = metadata !{i32 786688, metadata !60, metadata !"vtxToFront", metadata !5, i32 127, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vtxToFront] [line 127]
!84 = metadata !{i32 19, i32 0, metadata !4, null}
!85 = metadata !{i32 28, i32 0, metadata !4, null}
!86 = metadata !{metadata !"any pointer", metadata !87}
!87 = metadata !{metadata !"omnipotent char", metadata !88}
!88 = metadata !{metadata !"Simple C/C++ TBAA"}
!89 = metadata !{metadata !"int", metadata !87}
!90 = metadata !{i32 30, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!92 = metadata !{i32 32, i32 0, metadata !91, null}
!93 = metadata !{i32 40, i32 0, metadata !4, null}
!94 = metadata !{i32 42, i32 0, metadata !4, null}
!95 = metadata !{i32 56, i32 0, metadata !45, null}
!96 = metadata !{i32 66, i32 0, metadata !45, null}
!97 = metadata !{i32 68, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !45, i32 67, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!99 = metadata !{i32 70, i32 0, metadata !98, null}
!100 = metadata !{i32 72, i32 0, metadata !45, null}
!101 = metadata !{i32 73, i32 0, metadata !45, null}
!102 = metadata !{i32 74, i32 0, metadata !45, null}
!103 = metadata !{i32 75, i32 0, metadata !45, null}
!104 = metadata !{i32 76, i32 0, metadata !45, null}
!105 = metadata !{i32 82, i32 0, metadata !45, null}
!106 = metadata !{i32 83, i32 0, metadata !45, null}
!107 = metadata !{i32 84, i32 0, metadata !45, null}
!108 = metadata !{i32 85, i32 0, metadata !45, null}
!109 = metadata !{i32 86, i32 0, metadata !45, null}
!110 = metadata !{i32 87, i32 0, metadata !45, null}
!111 = metadata !{i32 88, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !45, i32 87, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!113 = metadata !{i32 91, i32 0, metadata !112, null}
!114 = metadata !{i32 92, i32 0, metadata !112, null}
!115 = metadata !{i32 93, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !112, i32 92, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!117 = metadata !{i32 94, i32 0, metadata !116, null}
!118 = metadata !{i32 95, i32 0, metadata !116, null}
!119 = metadata !{i32 97, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !116, i32 96, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!121 = metadata !{i32 99, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !116, i32 98, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!123 = metadata !{i32 105, i32 0, metadata !45, null}
!124 = metadata !{i32 120, i32 0, metadata !60, null}
!125 = metadata !{i32 121, i32 0, metadata !60, null}
!126 = metadata !{i32 133, i32 0, metadata !60, null}
!127 = metadata !{i32 135, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !60, i32 134, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!129 = metadata !{i32 137, i32 0, metadata !128, null}
!130 = metadata !{i32 144, i32 0, metadata !60, null}
!131 = metadata !{i32 145, i32 0, metadata !60, null}
!132 = metadata !{i32 146, i32 0, metadata !60, null}
!133 = metadata !{i32 147, i32 0, metadata !60, null}
!134 = metadata !{i32 148, i32 0, metadata !60, null}
!135 = metadata !{i32 149, i32 0, metadata !60, null}
!136 = metadata !{i32 150, i32 0, metadata !60, null}
!137 = metadata !{i32 151, i32 0, metadata !60, null}
!138 = metadata !{i32 160, i32 0, metadata !60, null}
!139 = metadata !{i32 161, i32 0, metadata !60, null}
!140 = metadata !{i32 162, i32 0, metadata !60, null}
!141 = metadata !{i32 163, i32 0, metadata !60, null}
!142 = metadata !{i32 164, i32 0, metadata !60, null}
!143 = metadata !{i32 165, i32 0, metadata !60, null}
!144 = metadata !{i32 175, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !60, i32 175, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!146 = metadata !{i32 176, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !145, i32 175, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!148 = metadata !{i32 177, i32 0, metadata !147, null}
!149 = metadata !{i32 184, i32 0, metadata !147, null}
!150 = metadata !{i32 192, i32 0, metadata !147, null}
!151 = metadata !{i32 194, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !147, i32 193, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!153 = metadata !{i32 195, i32 0, metadata !152, null}
!154 = metadata !{i32 204, i32 0, metadata !152, null}
!155 = metadata !{i32 206, i32 0, metadata !60, null}
!156 = metadata !{i32 212, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !60, i32 212, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!158 = metadata !{i32 213, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !157, i32 212, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/ETree/src/ETree_compress.c]
!160 = metadata !{i32 216, i32 0, metadata !60, null}

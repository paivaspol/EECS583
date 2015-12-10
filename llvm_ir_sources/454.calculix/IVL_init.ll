; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A fatal error in IVL_init1(%p,%d,%d)\0A bad input\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IVL_init2(%p,%d,%d,%d)\0A bad input\00", align 1
@.str2 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str3 = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c\00", align 1
@.str4 = private unnamed_addr constant [51 x i8] c"\0A fatal error in IVL_init3(%p,%d,%d,%p)\0A bad input\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"\0A fatal error in IVL_setMaxnlist(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [49 x i8] c"\0A fatal error in IVL_setNlist(%p,%d)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @IVL_init1(%struct._IVL* %ivl, i32 %type, i32 %maxnlist) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ivl}, i64 0, metadata !33), !dbg !66
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !34), !dbg !67
  tail call void @llvm.dbg.value(metadata !{i32 %maxnlist}, i64 0, metadata !35), !dbg !68
  %cmp = icmp eq %struct._IVL* %ivl, null, !dbg !69
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !69

lor.lhs.false:                                    ; preds = %entry
  %type.off = add i32 %type, -1, !dbg !69
  %0 = icmp ugt i32 %type.off, 1, !dbg !69
  %cmp4 = icmp ne i32 %type, 3, !dbg !69
  %or.cond14 = and i1 %0, %cmp4, !dbg !69
  %cmp6 = icmp slt i32 %maxnlist, 0, !dbg !69
  %or.cond = or i1 %or.cond14, %cmp6, !dbg !69
  br i1 %or.cond, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !70, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist) #5, !dbg !70
  tail call void @exit(i32 -1) #6, !dbg !75
  unreachable, !dbg !75

if.end:                                           ; preds = %lor.lhs.false
  tail call void @IVL_clearData(%struct._IVL* %ivl) #5, !dbg !76
  %type7 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0, !dbg !77
  store i32 %type, i32* %type7, align 4, !dbg !77, !tbaa !78
  %maxnlist8 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !79
  store i32 %maxnlist, i32* %maxnlist8, align 4, !dbg !79, !tbaa !78
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !80
  store i32 %maxnlist, i32* %nlist, align 4, !dbg !80, !tbaa !78
  %cmp9 = icmp sgt i32 %maxnlist, 0, !dbg !81
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !81

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32* @IVinit(i32 %maxnlist, i32 0) #5, !dbg !82
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4, !dbg !82
  store i32* %call11, i32** %sizes, align 8, !dbg !82, !tbaa !72
  %call12 = tail call i32** @PIVinit(i32 %maxnlist) #5, !dbg !84
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5, !dbg !84
  store i32** %call12, i32*** %p_vec, align 8, !dbg !84, !tbaa !72
  br label %if.end13, !dbg !85

if.end13:                                         ; preds = %if.then10, %if.end
  ret void, !dbg !86
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IVL_clearData(%struct._IVL*) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare i32** @PIVinit(i32) #3

; Function Attrs: nounwind optsize uwtable
define void @IVL_init2(%struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32 %tsize) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ivl}, i64 0, metadata !40), !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !41), !dbg !88
  tail call void @llvm.dbg.value(metadata !{i32 %maxnlist}, i64 0, metadata !42), !dbg !89
  tail call void @llvm.dbg.value(metadata !{i32 %tsize}, i64 0, metadata !43), !dbg !90
  %notlhs = icmp eq %struct._IVL* %ivl, null, !dbg !91
  %notrhs = icmp ne i32 %type, 1, !dbg !91
  %or.cond.not = or i1 %notrhs, %notlhs, !dbg !91
  %cmp3 = icmp slt i32 %maxnlist, 0, !dbg !91
  %or.cond31 = or i1 %or.cond.not, %cmp3, !dbg !91
  br i1 %or.cond31, label %if.then, label %if.end, !dbg !91

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !92, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32 %tsize) #5, !dbg !92
  tail call void @exit(i32 -1) #6, !dbg !94
  unreachable, !dbg !94

if.end:                                           ; preds = %entry
  tail call void @IVL_init1(%struct._IVL* %ivl, i32 1, i32 %maxnlist) #7, !dbg !95
  %cmp4 = icmp sgt i32 %tsize, 0, !dbg !96
  br i1 %cmp4, label %if.then5, label %if.end16, !dbg !96

if.then5:                                         ; preds = %if.end
  %call6 = tail call noalias i8* @malloc(i64 24) #5, !dbg !97
  %1 = bitcast i8* %call6 to %struct._Ichunk*, !dbg !97
  %chunk = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7, !dbg !97
  store %struct._Ichunk* %1, %struct._Ichunk** %chunk, align 8, !dbg !97, !tbaa !72
  %cmp7 = icmp eq i8* %call6, null, !dbg !97
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !97

if.then8:                                         ; preds = %if.then5
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !100, !tbaa !72
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([49 x i8]* @.str2, i64 0, i64 0), i64 24, i32 93, i8* getelementptr inbounds ([73 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !100
  tail call void @exit(i32 -1) #6, !dbg !100
  unreachable, !dbg !100

if.end10:                                         ; preds = %if.then5
  %size = bitcast i8* %call6 to i32*, !dbg !102
  store i32 %tsize, i32* %size, align 4, !dbg !102, !tbaa !78
  %inuse = getelementptr inbounds i8* %call6, i64 4, !dbg !103
  %3 = bitcast i8* %inuse to i32*, !dbg !103
  store i32 0, i32* %3, align 4, !dbg !103, !tbaa !78
  %call13 = tail call i32* @IVinit(i32 %tsize, i32 -1) #5, !dbg !104
  %4 = load %struct._Ichunk** %chunk, align 8, !dbg !104, !tbaa !72
  %base = getelementptr inbounds %struct._Ichunk* %4, i64 0, i32 2, !dbg !104
  store i32* %call13, i32** %base, align 8, !dbg !104, !tbaa !72
  %5 = load %struct._Ichunk** %chunk, align 8, !dbg !105, !tbaa !72
  %next = getelementptr inbounds %struct._Ichunk* %5, i64 0, i32 3, !dbg !105
  store %struct._Ichunk* null, %struct._Ichunk** %next, align 8, !dbg !105, !tbaa !72
  br label %if.end16, !dbg !106

if.end16:                                         ; preds = %if.end10, %if.end
  ret void, !dbg !107
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind optsize uwtable
define void @IVL_init3(%struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32* %sizes) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ivl}, i64 0, metadata !48), !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !49), !dbg !109
  tail call void @llvm.dbg.value(metadata !{i32 %maxnlist}, i64 0, metadata !50), !dbg !110
  tail call void @llvm.dbg.value(metadata !{i32* %sizes}, i64 0, metadata !51), !dbg !111
  %cmp = icmp eq %struct._IVL* %ivl, null, !dbg !112
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !112

lor.lhs.false:                                    ; preds = %entry
  %type.off = add i32 %type, -1, !dbg !112
  %0 = icmp ugt i32 %type.off, 1, !dbg !112
  %cmp4 = icmp slt i32 %maxnlist, 0, !dbg !112
  %or.cond = or i1 %0, %cmp4, !dbg !112
  %cmp6 = icmp eq i32* %sizes, null, !dbg !112
  %or.cond30 = or i1 %or.cond, %cmp6, !dbg !112
  br i1 %or.cond30, label %if.then, label %if.end, !dbg !112

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !113, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i32 %type, i32 %maxnlist, i32* %sizes) #5, !dbg !113
  tail call void @exit(i32 -1) #6, !dbg !115
  unreachable, !dbg !115

if.end:                                           ; preds = %lor.lhs.false
  switch i32 %type, label %for.cond.preheader [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
  ], !dbg !116

sw.bb:                                            ; preds = %if.end
  tail call void @IVL_init1(%struct._IVL* %ivl, i32 2, i32 %maxnlist) #7, !dbg !117
  br label %for.cond.preheader, !dbg !119

sw.bb7:                                           ; preds = %if.end
  %call8 = tail call i32 @IVsum(i32 %maxnlist, i32* %sizes) #5, !dbg !120
  tail call void @IVL_init2(%struct._IVL* %ivl, i32 1, i32 %maxnlist, i32 %call8) #7, !dbg !120
  br label %for.cond.preheader, !dbg !121

for.cond.preheader:                               ; preds = %if.end, %sw.bb7, %sw.bb
  %cmp931 = icmp sgt i32 %maxnlist, 0, !dbg !122
  br i1 %cmp931, label %for.body, label %for.end, !dbg !122

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %sizes, i64 %indvars.iv, !dbg !124
  %2 = load i32* %arrayidx, align 4, !dbg !124, !tbaa !78
  %3 = trunc i64 %indvars.iv to i32, !dbg !124
  tail call void @IVL_setList(%struct._IVL* %ivl, i32 %3, i32 %2, i32* null) #5, !dbg !124
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !122
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !122
  %exitcond = icmp eq i32 %lftr.wideiv, %maxnlist, !dbg !122
  br i1 %exitcond, label %for.end, label %for.body, !dbg !122

for.end:                                          ; preds = %for.body, %for.cond.preheader
  ret void, !dbg !126
}

; Function Attrs: optsize
declare i32 @IVsum(i32, i32*) #3

; Function Attrs: optsize
declare void @IVL_setList(%struct._IVL*, i32, i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define void @IVL_setMaxnlist(%struct._IVL* %ivl, i32 %newmaxnlist) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ivl}, i64 0, metadata !57), !dbg !127
  tail call void @llvm.dbg.value(metadata !{i32 %newmaxnlist}, i64 0, metadata !58), !dbg !128
  %cmp = icmp eq %struct._IVL* %ivl, null, !dbg !129
  %cmp1 = icmp slt i32 %newmaxnlist, 0, !dbg !129
  %or.cond = or i1 %cmp, %cmp1, !dbg !129
  br i1 %or.cond, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !130, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0), %struct._IVL* %ivl, i32 %newmaxnlist) #5, !dbg !130
  tail call void @exit(i32 -1) #6, !dbg !132
  unreachable, !dbg !132

if.end:                                           ; preds = %entry
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !133
  %1 = load i32* %maxnlist, align 4, !dbg !133, !tbaa !78
  %cmp2 = icmp eq i32 %1, %newmaxnlist, !dbg !133
  br i1 %cmp2, label %if.end44, label %if.then3, !dbg !133

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32* @IVinit(i32 %newmaxnlist, i32 0) #5, !dbg !134
  tail call void @llvm.dbg.value(metadata !{i32* %call4}, i64 0, metadata !59), !dbg !134
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4, !dbg !135
  %2 = load i32** %sizes, align 8, !dbg !135, !tbaa !72
  %cmp5 = icmp eq i32* %2, null, !dbg !135
  br i1 %cmp5, label %if.end18, label %if.then6, !dbg !135

if.then6:                                         ; preds = %if.then3
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !136
  %3 = load i32* %nlist, align 4, !dbg !136, !tbaa !78
  %cmp7 = icmp sgt i32 %3, %newmaxnlist, !dbg !136
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !136

if.then8:                                         ; preds = %if.then6
  tail call void @IVcopy(i32 %newmaxnlist, i32* %call4, i32* %2) #5, !dbg !138
  br label %if.end16, !dbg !140

if.else:                                          ; preds = %if.then6
  %cmp11 = icmp sgt i32 %3, 0, !dbg !141
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !141

if.then12:                                        ; preds = %if.else
  tail call void @IVcopy(i32 %3, i32* %call4, i32* %2) #5, !dbg !142
  br label %if.end16, !dbg !144

if.end16:                                         ; preds = %if.else, %if.then12, %if.then8
  %4 = load i32** %sizes, align 8, !dbg !145, !tbaa !72
  tail call void @IVfree(i32* %4) #5, !dbg !145
  br label %if.end18, !dbg !146

if.end18:                                         ; preds = %if.then3, %if.end16
  store i32* %call4, i32** %sizes, align 8, !dbg !147, !tbaa !72
  %call20 = tail call i32** @PIVinit(i32 %newmaxnlist) #5, !dbg !148
  tail call void @llvm.dbg.value(metadata !{i32** %call20}, i64 0, metadata !61), !dbg !148
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5, !dbg !149
  %5 = load i32*** %p_vec, align 8, !dbg !149, !tbaa !72
  %cmp21 = icmp eq i32** %5, null, !dbg !149
  %nlist39.pre = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !150
  br i1 %cmp21, label %if.end36, label %if.then22, !dbg !149

if.then22:                                        ; preds = %if.end18
  %6 = load i32* %nlist39.pre, align 4, !dbg !151, !tbaa !78
  %cmp24 = icmp sgt i32 %6, %newmaxnlist, !dbg !151
  br i1 %cmp24, label %if.then25, label %if.else27, !dbg !151

if.then25:                                        ; preds = %if.then22
  tail call void @PIVcopy(i32 %newmaxnlist, i32** %call20, i32** %5) #5, !dbg !153
  br label %if.end34, !dbg !155

if.else27:                                        ; preds = %if.then22
  %cmp29 = icmp sgt i32 %6, 0, !dbg !156
  br i1 %cmp29, label %if.then30, label %if.end34, !dbg !156

if.then30:                                        ; preds = %if.else27
  tail call void @PIVcopy(i32 %6, i32** %call20, i32** %5) #5, !dbg !157
  br label %if.end34, !dbg !159

if.end34:                                         ; preds = %if.else27, %if.then30, %if.then25
  %7 = load i32*** %p_vec, align 8, !dbg !160, !tbaa !72
  tail call void @PIVfree(i32** %7) #5, !dbg !160
  br label %if.end36, !dbg !161

if.end36:                                         ; preds = %if.end18, %if.end34
  store i32** %call20, i32*** %p_vec, align 8, !dbg !162, !tbaa !72
  store i32 %newmaxnlist, i32* %maxnlist, align 4, !dbg !163, !tbaa !78
  %8 = load i32* %nlist39.pre, align 4, !dbg !150, !tbaa !78
  %cmp40 = icmp sgt i32 %8, %newmaxnlist, !dbg !150
  br i1 %cmp40, label %if.then41, label %if.end44, !dbg !150

if.then41:                                        ; preds = %if.end36
  store i32 %newmaxnlist, i32* %nlist39.pre, align 4, !dbg !164, !tbaa !78
  br label %if.end44, !dbg !166

if.end44:                                         ; preds = %if.end, %if.end36, %if.then41
  ret void, !dbg !167
}

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @PIVcopy(i32, i32**, i32**) #3

; Function Attrs: optsize
declare void @PIVfree(i32**) #3

; Function Attrs: nounwind optsize uwtable
define void @IVL_setNlist(%struct._IVL* %ivl, i32 %newnlist) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IVL* %ivl}, i64 0, metadata !64), !dbg !168
  tail call void @llvm.dbg.value(metadata !{i32 %newnlist}, i64 0, metadata !65), !dbg !169
  %cmp = icmp eq %struct._IVL* %ivl, null, !dbg !170
  %cmp1 = icmp slt i32 %newnlist, 0, !dbg !170
  %or.cond = or i1 %cmp, %cmp1, !dbg !170
  br i1 %or.cond, label %if.then, label %if.end, !dbg !170

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !171, !tbaa !72
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([49 x i8]* @.str6, i64 0, i64 0), %struct._IVL* %ivl, i32 %newnlist) #5, !dbg !171
  tail call void @exit(i32 -1) #6, !dbg !173
  unreachable, !dbg !173

if.end:                                           ; preds = %entry
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1, !dbg !174
  %1 = load i32* %maxnlist, align 4, !dbg !174, !tbaa !78
  %cmp2 = icmp slt i32 %1, %newnlist, !dbg !174
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !174

if.then3:                                         ; preds = %if.end
  tail call void @IVL_setMaxnlist(%struct._IVL* %ivl, i32 %newnlist) #7, !dbg !175
  br label %if.end4, !dbg !177

if.end4:                                          ; preds = %if.then3, %if.end
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2, !dbg !178
  store i32 %newnlist, i32* %nlist, align 4, !dbg !178, !tbaa !78
  ret void, !dbg !179
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !36, metadata !44, metadata !53, metadata !62}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_init1", metadata !"IVL_init1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IVL*, i32, i32)* @IVL_init1, null, null, metadata !32, i32 21} ; [ DW_TAG_subprogram ] [line 17] [def] [scope 21] [IVL_init1]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/../IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !20, metadata !22, metadata !23}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!20 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !14} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!23 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!25 = metadata !{i32 786454, metadata !11, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!26 = metadata !{i32 786451, metadata !11, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !27, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31}
!28 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!29 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!30 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!31 = metadata !{i32 786445, metadata !11, metadata !26, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!32 = metadata !{metadata !33, metadata !34, metadata !35}
!33 = metadata !{i32 786689, metadata !4, metadata !"ivl", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivl] [line 18]
!34 = metadata !{i32 786689, metadata !4, metadata !"type", metadata !5, i32 33554451, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 19]
!35 = metadata !{i32 786689, metadata !4, metadata !"maxnlist", metadata !5, i32 50331668, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxnlist] [line 20]
!36 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_init2", metadata !"IVL_init2", metadata !"", i32 65, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IVL*, i32, i32, i32)* @IVL_init2, null, null, metadata !39, i32 70} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 70] [IVL_init2]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !14}
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786689, metadata !36, metadata !"ivl", metadata !5, i32 16777282, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivl] [line 66]
!41 = metadata !{i32 786689, metadata !36, metadata !"type", metadata !5, i32 33554499, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 67]
!42 = metadata !{i32 786689, metadata !36, metadata !"maxnlist", metadata !5, i32 50331716, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxnlist] [line 68]
!43 = metadata !{i32 786689, metadata !36, metadata !"tsize", metadata !5, i32 67108933, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tsize] [line 69]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_init3", metadata !"IVL_init3", metadata !"", i32 111, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IVL*, i32, i32, i32*)* @IVL_init3, null, null, metadata !47, i32 116} ; [ DW_TAG_subprogram ] [line 111] [def] [scope 116] [IVL_init3]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null, metadata !8, metadata !14, metadata !14, metadata !19}
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!48 = metadata !{i32 786689, metadata !44, metadata !"ivl", metadata !5, i32 16777328, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivl] [line 112]
!49 = metadata !{i32 786689, metadata !44, metadata !"type", metadata !5, i32 33554545, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 113]
!50 = metadata !{i32 786689, metadata !44, metadata !"maxnlist", metadata !5, i32 50331762, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxnlist] [line 114]
!51 = metadata !{i32 786689, metadata !44, metadata !"sizes", metadata !5, i32 67108979, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sizes] [line 115]
!52 = metadata !{i32 786688, metadata !44, metadata !"ilist", metadata !5, i32 117, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ilist] [line 117]
!53 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_setMaxnlist", metadata !"IVL_setMaxnlist", metadata !"", i32 170, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IVL*, i32)* @IVL_setMaxnlist, null, null, metadata !56, i32 173} ; [ DW_TAG_subprogram ] [line 170] [def] [scope 173] [IVL_setMaxnlist]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{null, metadata !8, metadata !14}
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !61}
!57 = metadata !{i32 786689, metadata !53, metadata !"ivl", metadata !5, i32 16777387, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivl] [line 171]
!58 = metadata !{i32 786689, metadata !53, metadata !"newmaxnlist", metadata !5, i32 33554604, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newmaxnlist] [line 172]
!59 = metadata !{i32 786688, metadata !60, metadata !"ivec", metadata !5, i32 180, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec] [line 180]
!60 = metadata !{i32 786443, metadata !1, metadata !53, i32 179, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!61 = metadata !{i32 786688, metadata !60, metadata !"pivec", metadata !5, i32 180, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivec] [line 180]
!62 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"IVL_setNlist", metadata !"IVL_setNlist", metadata !"", i32 234, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IVL*, i32)* @IVL_setNlist, null, null, metadata !63, i32 237} ; [ DW_TAG_subprogram ] [line 234] [def] [scope 237] [IVL_setNlist]
!63 = metadata !{metadata !64, metadata !65}
!64 = metadata !{i32 786689, metadata !62, metadata !"ivl", metadata !5, i32 16777451, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ivl] [line 235]
!65 = metadata !{i32 786689, metadata !62, metadata !"newnlist", metadata !5, i32 33554668, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newnlist] [line 236]
!66 = metadata !{i32 18, i32 0, metadata !4, null}
!67 = metadata !{i32 19, i32 0, metadata !4, null}
!68 = metadata !{i32 20, i32 0, metadata !4, null}
!69 = metadata !{i32 27, i32 0, metadata !4, null}
!70 = metadata !{i32 30, i32 0, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !4, i32 29, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!72 = metadata !{metadata !"any pointer", metadata !73}
!73 = metadata !{metadata !"omnipotent char", metadata !74}
!74 = metadata !{metadata !"Simple C/C++ TBAA"}
!75 = metadata !{i32 32, i32 0, metadata !71, null}
!76 = metadata !{i32 39, i32 0, metadata !4, null}
!77 = metadata !{i32 45, i32 0, metadata !4, null}
!78 = metadata !{metadata !"int", metadata !73}
!79 = metadata !{i32 46, i32 0, metadata !4, null}
!80 = metadata !{i32 47, i32 0, metadata !4, null}
!81 = metadata !{i32 48, i32 0, metadata !4, null}
!82 = metadata !{i32 49, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!84 = metadata !{i32 50, i32 0, metadata !83, null}
!85 = metadata !{i32 51, i32 0, metadata !83, null}
!86 = metadata !{i32 53, i32 0, metadata !4, null}
!87 = metadata !{i32 66, i32 0, metadata !36, null}
!88 = metadata !{i32 67, i32 0, metadata !36, null}
!89 = metadata !{i32 68, i32 0, metadata !36, null}
!90 = metadata !{i32 69, i32 0, metadata !36, null}
!91 = metadata !{i32 76, i32 0, metadata !36, null}
!92 = metadata !{i32 77, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !36, i32 76, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!94 = metadata !{i32 79, i32 0, metadata !93, null}
!95 = metadata !{i32 86, i32 0, metadata !36, null}
!96 = metadata !{i32 92, i32 0, metadata !36, null}
!97 = metadata !{i32 93, i32 0, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !99, i32 93, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!99 = metadata !{i32 786443, metadata !1, metadata !36, i32 92, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!100 = metadata !{i32 93, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !98, i32 93, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!102 = metadata !{i32 94, i32 0, metadata !99, null}
!103 = metadata !{i32 95, i32 0, metadata !99, null}
!104 = metadata !{i32 96, i32 0, metadata !99, null}
!105 = metadata !{i32 97, i32 0, metadata !99, null}
!106 = metadata !{i32 98, i32 0, metadata !99, null}
!107 = metadata !{i32 99, i32 0, metadata !36, null}
!108 = metadata !{i32 112, i32 0, metadata !44, null}
!109 = metadata !{i32 113, i32 0, metadata !44, null}
!110 = metadata !{i32 114, i32 0, metadata !44, null}
!111 = metadata !{i32 115, i32 0, metadata !44, null}
!112 = metadata !{i32 123, i32 0, metadata !44, null}
!113 = metadata !{i32 125, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !44, i32 124, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!115 = metadata !{i32 128, i32 0, metadata !114, null}
!116 = metadata !{i32 130, i32 0, metadata !44, null}
!117 = metadata !{i32 137, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !44, i32 130, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!119 = metadata !{i32 138, i32 0, metadata !118, null}
!120 = metadata !{i32 145, i32 0, metadata !118, null}
!121 = metadata !{i32 146, i32 0, metadata !118, null}
!122 = metadata !{i32 153, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !44, i32 153, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!124 = metadata !{i32 154, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !123, i32 153, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!126 = metadata !{i32 157, i32 0, metadata !44, null}
!127 = metadata !{i32 171, i32 0, metadata !53, null}
!128 = metadata !{i32 172, i32 0, metadata !53, null}
!129 = metadata !{i32 174, i32 0, metadata !53, null}
!130 = metadata !{i32 175, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !53, i32 174, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!132 = metadata !{i32 177, i32 0, metadata !131, null}
!133 = metadata !{i32 179, i32 0, metadata !53, null}
!134 = metadata !{i32 186, i32 0, metadata !60, null}
!135 = metadata !{i32 187, i32 0, metadata !60, null}
!136 = metadata !{i32 188, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !60, i32 187, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!138 = metadata !{i32 189, i32 0, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !137, i32 188, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!140 = metadata !{i32 190, i32 0, metadata !139, null}
!141 = metadata !{i32 190, i32 0, metadata !137, null}
!142 = metadata !{i32 191, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !137, i32 190, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!144 = metadata !{i32 192, i32 0, metadata !143, null}
!145 = metadata !{i32 193, i32 0, metadata !137, null}
!146 = metadata !{i32 194, i32 0, metadata !137, null}
!147 = metadata !{i32 195, i32 0, metadata !60, null}
!148 = metadata !{i32 201, i32 0, metadata !60, null}
!149 = metadata !{i32 202, i32 0, metadata !60, null}
!150 = metadata !{i32 217, i32 0, metadata !60, null}
!151 = metadata !{i32 203, i32 0, metadata !152, null}
!152 = metadata !{i32 786443, metadata !1, metadata !60, i32 202, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!153 = metadata !{i32 204, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !152, i32 203, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!155 = metadata !{i32 205, i32 0, metadata !154, null}
!156 = metadata !{i32 205, i32 0, metadata !152, null}
!157 = metadata !{i32 206, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !152, i32 205, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!159 = metadata !{i32 207, i32 0, metadata !158, null}
!160 = metadata !{i32 208, i32 0, metadata !152, null}
!161 = metadata !{i32 209, i32 0, metadata !152, null}
!162 = metadata !{i32 210, i32 0, metadata !60, null}
!163 = metadata !{i32 216, i32 0, metadata !60, null}
!164 = metadata !{i32 218, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !60, i32 217, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!166 = metadata !{i32 219, i32 0, metadata !165, null}
!167 = metadata !{i32 221, i32 0, metadata !53, null}
!168 = metadata !{i32 235, i32 0, metadata !62, null}
!169 = metadata !{i32 236, i32 0, metadata !62, null}
!170 = metadata !{i32 238, i32 0, metadata !62, null}
!171 = metadata !{i32 239, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !62, i32 238, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!173 = metadata !{i32 241, i32 0, metadata !172, null}
!174 = metadata !{i32 243, i32 0, metadata !62, null}
!175 = metadata !{i32 249, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !62, i32 243, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_init.c]
!177 = metadata !{i32 250, i32 0, metadata !176, null}
!178 = metadata !{i32 256, i32 0, metadata !62, null}
!179 = metadata !{i32 258, i32 0, metadata !62, null}

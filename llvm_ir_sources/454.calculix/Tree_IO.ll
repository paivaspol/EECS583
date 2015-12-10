; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [48 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [60 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [104 x i8] c"\0A error in Tree_readFromFile(%p,%s)\0A bad Tree file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [57 x i8] c"\0A error in Tree_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [67 x i8] c"\0A error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [72 x i8] c"\0A par: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str8 = private unnamed_addr constant [72 x i8] c"\0A fch: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [72 x i8] c"\0A sib: error in Tree_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str10 = private unnamed_addr constant [60 x i8] c"\0A fatal error in Tree_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [75 x i8] c"\0A error in Tree_readFromBinaryFile(%p,%p)\0A itemp(2) : %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [70 x i8] c"\0A par : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str13 = private unnamed_addr constant [70 x i8] c"\0A fch : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str14 = private unnamed_addr constant [70 x i8] c"\0A sib : error in Tree_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str15 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Tree_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str17 = private unnamed_addr constant [59 x i8] c"\0A error in Tree_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str20 = private unnamed_addr constant [62 x i8] c"\0A fatal error in Tree_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str21 = private unnamed_addr constant [8 x i8] c"\0A %d %d\00", align 1
@.str22 = private unnamed_addr constant [87 x i8] c"\0A fatal error in Tree_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str23 = private unnamed_addr constant [59 x i8] c"\0A fatal error in Tree_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [73 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str25 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->par, %d of %d items written\0A\00", align 1
@.str26 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->fch, %d of %d items written\0A\00", align 1
@.str27 = private unnamed_addr constant [77 x i8] c"\0A error in Tree_writeToBinaryFile(%p,%p)\0A tree->sib, %d of %d items written\0A\00", align 1
@.str28 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Tree_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str29 = private unnamed_addr constant [92 x i8] c"\0A fatal error in Tree_writeForHumanEye(%p,%p)\0A rc = %d, return from Tree_writeStats(%p,%p)\0A\00", align 1
@.str30 = private unnamed_addr constant [37 x i8] c"\0A vertex   parent   fchild   sibling\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"\0A %5d %9d %9d %9d :\00", align 1
@.str32 = private unnamed_addr constant [46 x i8] c"\0A error in Tree_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str33 = private unnamed_addr constant [61 x i8] c"\0A Tree : tree object, %d vertices, root = %d, takes %d bytes\00", align 1
@.str34 = private unnamed_addr constant [71 x i8] c"\0A fatal error in Tree_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str35 = private unnamed_addr constant [7 x i8] c".treef\00", align 1
@.str36 = private unnamed_addr constant [7 x i8] c".treeb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_readFromFile(%struct._Tree* %tree, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !23), !dbg !137
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !24), !dbg !138
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !139
  %cmp1 = icmp eq i8* %fn, null, !dbg !139
  %or.cond = or i1 %cmp, %cmp1, !dbg !139
  br i1 %or.cond, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !140, !tbaa !142
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), %struct._Tree* %tree, i8* %fn) #6, !dbg !140
  br label %return, !dbg !145

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !146
  %conv = trunc i64 %call2 to i32, !dbg !146
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !81), !dbg !146
  tail call void @llvm.dbg.value(metadata !147, i64 0, metadata !83), !dbg !148
  %cmp5 = icmp sgt i32 %conv, 6, !dbg !149
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !149

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !150
  %sext = add i64 %sub, -25769803776, !dbg !150
  %idxprom = ashr exact i64 %sext, 32, !dbg !150
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !150
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !150
  %cmp9 = icmp eq i32 %call8, 0, !dbg !150
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !150

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !152
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !25), !dbg !152
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !152
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !152

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !154, !tbaa !142
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #6, !dbg !154
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !156
  br label %return, !dbg !157

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @Tree_readFromBinaryFile(%struct._Tree* %tree, %struct._IO_FILE* %call12) #8, !dbg !158
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !82), !dbg !158
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !160
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !161
  %cmp25 = icmp eq i32 %call24, 0, !dbg !161
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !161

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !162
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !25), !dbg !162
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !162
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !162

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !164, !tbaa !142
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str2, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #6, !dbg !164
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !166
  br label %return, !dbg !167

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @Tree_readFromFormattedFile(%struct._Tree* %tree, %struct._IO_FILE* %call28) #8, !dbg !168
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !82), !dbg !168
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !170
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !171, !tbaa !142
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([104 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !171
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !173
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !174, !tbaa !142
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([104 x i8]* @.str4, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #6, !dbg !174
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !176
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !177
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_readFromBinaryFile(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !97), !dbg !178
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !98), !dbg !179
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %itemp}, metadata !100), !dbg !180
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !181
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !181
  %or.cond = or i1 %cmp, %cmp1, !dbg !181
  br i1 %or.cond, label %if.then, label %if.end, !dbg !181

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !182, !tbaa !142
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str10, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #6, !dbg !182
  br label %return, !dbg !184

if.end:                                           ; preds = %entry
  call void @Tree_clearData(%struct._Tree* %tree) #6, !dbg !185
  %1 = bitcast [2 x i32]* %itemp to i8*, !dbg !186
  %call2 = call i64 @fread(i8* %1, i64 4, i64 2, %struct._IO_FILE* %fp) #6, !dbg !186
  %conv = trunc i64 %call2 to i32, !dbg !186
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !99), !dbg !186
  %cmp3 = icmp eq i32 %conv, 2, !dbg !186
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !186

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !187, !tbaa !142
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([75 x i8]* @.str11, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv, i32 2) #6, !dbg !187
  br label %return, !dbg !189

if.end7:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !190
  %3 = load i32* %arrayidx, align 4, !dbg !190, !tbaa !191
  call void @Tree_init1(%struct._Tree* %tree, i32 %3) #6, !dbg !190
  %arrayidx8 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !192
  %4 = load i32* %arrayidx8, align 4, !dbg !192, !tbaa !191
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !192
  store i32 %4, i32* %root, align 4, !dbg !192, !tbaa !191
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !193
  %5 = load i32** %par, align 8, !dbg !193, !tbaa !142
  %6 = bitcast i32* %5 to i8*, !dbg !193
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !193
  %7 = load i32* %n, align 4, !dbg !193, !tbaa !191
  %conv9 = sext i32 %7 to i64, !dbg !193
  %call10 = call i64 @fread(i8* %6, i64 4, i64 %conv9, %struct._IO_FILE* %fp) #6, !dbg !193
  %conv11 = trunc i64 %call10 to i32, !dbg !193
  call void @llvm.dbg.value(metadata !{i32 %conv11}, i64 0, metadata !99), !dbg !193
  %8 = load i32* %n, align 4, !dbg !193, !tbaa !191
  %cmp13 = icmp eq i32 %conv11, %8, !dbg !193
  br i1 %cmp13, label %if.end18, label %if.then15, !dbg !193

if.then15:                                        ; preds = %if.end7
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !194, !tbaa !142
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([70 x i8]* @.str12, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv11, i32 %8) #6, !dbg !194
  br label %return, !dbg !196

if.end18:                                         ; preds = %if.end7
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !197
  %10 = load i32** %fch, align 8, !dbg !197, !tbaa !142
  %11 = bitcast i32* %10 to i8*, !dbg !197
  %sext = shl i64 %call10, 32, !dbg !197
  %conv20 = ashr exact i64 %sext, 32, !dbg !197
  %call21 = call i64 @fread(i8* %11, i64 4, i64 %conv20, %struct._IO_FILE* %fp) #6, !dbg !197
  %conv22 = trunc i64 %call21 to i32, !dbg !197
  call void @llvm.dbg.value(metadata !{i32 %conv22}, i64 0, metadata !99), !dbg !197
  %12 = load i32* %n, align 4, !dbg !197, !tbaa !191
  %cmp24 = icmp eq i32 %conv22, %12, !dbg !197
  br i1 %cmp24, label %if.end29, label %if.then26, !dbg !197

if.then26:                                        ; preds = %if.end18
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !198, !tbaa !142
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([70 x i8]* @.str13, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv22, i32 %12) #6, !dbg !198
  br label %return, !dbg !200

if.end29:                                         ; preds = %if.end18
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !201
  %14 = load i32** %sib, align 8, !dbg !201, !tbaa !142
  %15 = bitcast i32* %14 to i8*, !dbg !201
  %sext73 = shl i64 %call21, 32, !dbg !201
  %conv31 = ashr exact i64 %sext73, 32, !dbg !201
  %call32 = call i64 @fread(i8* %15, i64 4, i64 %conv31, %struct._IO_FILE* %fp) #6, !dbg !201
  %conv33 = trunc i64 %call32 to i32, !dbg !201
  call void @llvm.dbg.value(metadata !{i32 %conv33}, i64 0, metadata !99), !dbg !201
  %16 = load i32* %n, align 4, !dbg !201, !tbaa !191
  %cmp35 = icmp eq i32 %conv33, %16, !dbg !201
  br i1 %cmp35, label %return, label %if.then37, !dbg !201

if.then37:                                        ; preds = %if.end29
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !202, !tbaa !142
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([70 x i8]* @.str14, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv33, i32 %16) #6, !dbg !202
  br label %return, !dbg !204

return:                                           ; preds = %if.end29, %if.then37, %if.then26, %if.then15, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then15 ], [ 0, %if.then26 ], [ 0, %if.then37 ], [ 1, %if.end29 ]
  ret i32 %retval.0, !dbg !205
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_readFromFormattedFile(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !88), !dbg !206
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !89), !dbg !207
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %itemp}, metadata !91), !dbg !208
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !209
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !209
  %or.cond = or i1 %cmp, %cmp1, !dbg !209
  br i1 %or.cond, label %if.then, label %if.end, !dbg !209

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !210, !tbaa !142
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str5, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #6, !dbg !210
  br label %return, !dbg !212

if.end:                                           ; preds = %entry
  call void @Tree_clearData(%struct._Tree* %tree) #6, !dbg !213
  %arraydecay = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !214
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 2, i32* %arraydecay) #6, !dbg !214
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !90), !dbg !214
  %cmp3 = icmp eq i32 %call2, 2, !dbg !214
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !214

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !215, !tbaa !142
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([67 x i8]* @.str6, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call2, i32 2) #6, !dbg !215
  br label %return, !dbg !217

if.end6:                                          ; preds = %if.end
  %2 = load i32* %arraydecay, align 4, !dbg !218, !tbaa !191
  call void @Tree_init1(%struct._Tree* %tree, i32 %2) #6, !dbg !218
  %arrayidx7 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !219
  %3 = load i32* %arrayidx7, align 4, !dbg !219, !tbaa !191
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !219
  store i32 %3, i32* %root, align 4, !dbg !219, !tbaa !191
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !220
  %4 = load i32* %n, align 4, !dbg !220, !tbaa !191
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !220
  %5 = load i32** %par, align 8, !dbg !220, !tbaa !142
  %call8 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %4, i32* %5) #6, !dbg !220
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !90), !dbg !220
  %6 = load i32* %n, align 4, !dbg !220, !tbaa !191
  %cmp10 = icmp eq i32 %call8, %6, !dbg !220
  br i1 %cmp10, label %if.end14, label %if.then11, !dbg !220

if.then11:                                        ; preds = %if.end6
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !142
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([72 x i8]* @.str7, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call8, i32 %6) #6, !dbg !221
  br label %return, !dbg !223

if.end14:                                         ; preds = %if.end6
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !224
  %8 = load i32** %fch, align 8, !dbg !224, !tbaa !142
  %call16 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call8, i32* %8) #6, !dbg !224
  call void @llvm.dbg.value(metadata !{i32 %call16}, i64 0, metadata !90), !dbg !224
  %9 = load i32* %n, align 4, !dbg !224, !tbaa !191
  %cmp18 = icmp eq i32 %call16, %9, !dbg !224
  br i1 %cmp18, label %if.end22, label %if.then19, !dbg !224

if.then19:                                        ; preds = %if.end14
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !225, !tbaa !142
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([72 x i8]* @.str8, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call16, i32 %9) #6, !dbg !225
  br label %return, !dbg !227

if.end22:                                         ; preds = %if.end14
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !228
  %11 = load i32** %sib, align 8, !dbg !228, !tbaa !142
  %call24 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call16, i32* %11) #6, !dbg !228
  call void @llvm.dbg.value(metadata !{i32 %call24}, i64 0, metadata !90), !dbg !228
  %12 = load i32* %n, align 4, !dbg !228, !tbaa !191
  %cmp26 = icmp eq i32 %call24, %12, !dbg !228
  br i1 %cmp26, label %return, label %if.then27, !dbg !228

if.then27:                                        ; preds = %if.end22
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !229, !tbaa !142
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call24, i32 %12) #6, !dbg !229
  br label %return, !dbg !231

return:                                           ; preds = %if.end22, %if.then27, %if.then19, %if.then11, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then11 ], [ 0, %if.then19 ], [ 0, %if.then27 ], [ 1, %if.end22 ]
  ret i32 %retval.0, !dbg !232
}

; Function Attrs: optsize
declare void @Tree_clearData(%struct._Tree*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @Tree_init1(%struct._Tree*, i32) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeToFile(%struct._Tree* %tree, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !103), !dbg !233
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !104), !dbg !234
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !235
  %cmp1 = icmp eq i8* %fn, null, !dbg !235
  %or.cond = or i1 %cmp, %cmp1, !dbg !235
  br i1 %or.cond, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !236, !tbaa !142
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str15, i64 0, i64 0), %struct._Tree* %tree, i8* %fn) #6, !dbg !236
  br label %if.end, !dbg !238

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !239
  %conv = trunc i64 %call2 to i32, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !106), !dbg !239
  tail call void @llvm.dbg.value(metadata !147, i64 0, metadata !108), !dbg !240
  %cmp5 = icmp sgt i32 %conv, 6, !dbg !241
  br i1 %cmp5, label %if.then7, label %if.else49, !dbg !241

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !242
  %sext = add i64 %sub, -25769803776, !dbg !242
  %idxprom = ashr exact i64 %sext, 32, !dbg !242
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !242
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8]* @.str36, i64 0, i64 0)) #7, !dbg !242
  %cmp9 = icmp eq i32 %call8, 0, !dbg !242
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !242

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !244
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !105), !dbg !244
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !244
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !244

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !246, !tbaa !142
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #6, !dbg !246
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !248
  br label %if.end59, !dbg !249

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @Tree_writeToBinaryFile(%struct._Tree* %tree, %struct._IO_FILE* %call12) #8, !dbg !250
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !107), !dbg !250
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !252
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8]* @.str35, i64 0, i64 0)) #7, !dbg !253
  %cmp25 = icmp eq i32 %call24, 0, !dbg !253
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !253

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0)) #6, !dbg !254
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !105), !dbg !254
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !254
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !254

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !256, !tbaa !142
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #6, !dbg !256
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !258
  br label %if.end59, !dbg !259

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @Tree_writeToFormattedFile(%struct._Tree* %tree, %struct._IO_FILE* %call28) #8, !dbg !260
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !107), !dbg !260
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !262
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #6, !dbg !263
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call38}, i64 0, metadata !105), !dbg !263
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null, !dbg !263
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !263

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !265, !tbaa !142
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #6, !dbg !265
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !267
  br label %if.end59, !dbg !268

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct._IO_FILE* %call38) #8, !dbg !269
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !107), !dbg !269
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #6, !dbg !271
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #6, !dbg !272
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !105), !dbg !272
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null, !dbg !272
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !272

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !274, !tbaa !142
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([59 x i8]* @.str17, i64 0, i64 0), %struct._Tree* %tree, i8* %fn, i8* %fn) #6, !dbg !274
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !276
  br label %if.end59, !dbg !277

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct._IO_FILE* %call50) #8, !dbg !278
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !107), !dbg !278
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #6, !dbg !280
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %rc.0, !dbg !281
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeToBinaryFile(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !117), !dbg !282
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !118), !dbg !283
  call void @llvm.dbg.declare(metadata !{[2 x i32]* %itemp}, metadata !120), !dbg !284
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !285
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !285
  %or.cond = or i1 %cmp, %cmp1, !dbg !285
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !285

lor.lhs.false2:                                   ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !285
  %0 = load i32* %n, align 4, !dbg !285, !tbaa !191
  %cmp3 = icmp slt i32 %0, 1, !dbg !285
  br i1 %cmp3, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !286, !tbaa !142
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str23, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #6, !dbg !286
  call void @exit(i32 -1) #9, !dbg !288
  unreachable, !dbg !288

if.end:                                           ; preds = %lor.lhs.false2
  %arrayidx = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 0, !dbg !289
  store i32 %0, i32* %arrayidx, align 4, !dbg !289, !tbaa !191
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !290
  %2 = load i32* %root, align 4, !dbg !290, !tbaa !191
  %arrayidx5 = getelementptr inbounds [2 x i32]* %itemp, i64 0, i64 1, !dbg !290
  store i32 %2, i32* %arrayidx5, align 4, !dbg !290, !tbaa !191
  %3 = bitcast [2 x i32]* %itemp to i8*, !dbg !291
  %call6 = call i64 @fwrite(i8* %3, i64 4, i64 2, %struct._IO_FILE* %fp) #6, !dbg !291
  %conv = trunc i64 %call6 to i32, !dbg !291
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !119), !dbg !291
  %cmp7 = icmp eq i32 %conv, 2, !dbg !292
  br i1 %cmp7, label %if.end11, label %if.then9, !dbg !292

if.then9:                                         ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !293, !tbaa !142
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([73 x i8]* @.str24, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv, i32 2) #6, !dbg !293
  br label %return, !dbg !295

if.end11:                                         ; preds = %if.end
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !296
  %5 = load i32** %par, align 8, !dbg !296, !tbaa !142
  %6 = bitcast i32* %5 to i8*, !dbg !296
  %7 = load i32* %n, align 4, !dbg !296, !tbaa !191
  %conv13 = sext i32 %7 to i64, !dbg !296
  %call14 = call i64 @fwrite(i8* %6, i64 4, i64 %conv13, %struct._IO_FILE* %fp) #6, !dbg !296
  %conv15 = trunc i64 %call14 to i32, !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %conv15}, i64 0, metadata !119), !dbg !296
  %8 = load i32* %n, align 4, !dbg !297, !tbaa !191
  %cmp17 = icmp eq i32 %conv15, %8, !dbg !297
  br i1 %cmp17, label %if.end22, label %if.then19, !dbg !297

if.then19:                                        ; preds = %if.end11
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !298, !tbaa !142
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([77 x i8]* @.str25, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv15, i32 %8) #6, !dbg !298
  br label %return, !dbg !300

if.end22:                                         ; preds = %if.end11
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !301
  %10 = load i32** %fch, align 8, !dbg !301, !tbaa !142
  %11 = bitcast i32* %10 to i8*, !dbg !301
  %sext = shl i64 %call14, 32, !dbg !301
  %conv24 = ashr exact i64 %sext, 32, !dbg !301
  %call25 = call i64 @fwrite(i8* %11, i64 4, i64 %conv24, %struct._IO_FILE* %fp) #6, !dbg !301
  %conv26 = trunc i64 %call25 to i32, !dbg !301
  call void @llvm.dbg.value(metadata !{i32 %conv26}, i64 0, metadata !119), !dbg !301
  %12 = load i32* %n, align 4, !dbg !302, !tbaa !191
  %cmp28 = icmp eq i32 %conv26, %12, !dbg !302
  br i1 %cmp28, label %if.end33, label %if.then30, !dbg !302

if.then30:                                        ; preds = %if.end22
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !303, !tbaa !142
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([77 x i8]* @.str26, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv26, i32 %12) #6, !dbg !303
  br label %return, !dbg !305

if.end33:                                         ; preds = %if.end22
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !306
  %14 = load i32** %sib, align 8, !dbg !306, !tbaa !142
  %15 = bitcast i32* %14 to i8*, !dbg !306
  %sext81 = shl i64 %call25, 32, !dbg !306
  %conv35 = ashr exact i64 %sext81, 32, !dbg !306
  %call36 = call i64 @fwrite(i8* %15, i64 4, i64 %conv35, %struct._IO_FILE* %fp) #6, !dbg !306
  %conv37 = trunc i64 %call36 to i32, !dbg !306
  call void @llvm.dbg.value(metadata !{i32 %conv37}, i64 0, metadata !119), !dbg !306
  %16 = load i32* %n, align 4, !dbg !307, !tbaa !191
  %cmp39 = icmp eq i32 %conv37, %16, !dbg !307
  br i1 %cmp39, label %return, label %if.then41, !dbg !307

if.then41:                                        ; preds = %if.end33
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !308, !tbaa !142
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([77 x i8]* @.str27, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %conv37, i32 %16) #6, !dbg !308
  br label %return, !dbg !310

return:                                           ; preds = %if.end33, %if.then41, %if.then30, %if.then19, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then19 ], [ 0, %if.then30 ], [ 0, %if.then41 ], [ 1, %if.end33 ]
  ret i32 %retval.0, !dbg !311
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeToFormattedFile(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !111), !dbg !312
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !112), !dbg !313
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !113), !dbg !314
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !315
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !315
  %or.cond = or i1 %cmp, %cmp1, !dbg !315
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !315

lor.lhs.false2:                                   ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !315
  %0 = load i32* %n, align 4, !dbg !315, !tbaa !191
  %cmp3 = icmp slt i32 %0, 1, !dbg !315
  br i1 %cmp3, label %if.then, label %if.end, !dbg !315

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !316, !tbaa !142
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str20, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #6, !dbg !316
  call void @exit(i32 -1) #9, !dbg !318
  unreachable, !dbg !318

if.end:                                           ; preds = %lor.lhs.false2
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !319
  %2 = load i32* %root, align 4, !dbg !319, !tbaa !191
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str21, i64 0, i64 0), i32 %0, i32 %2) #6, !dbg !319
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !114), !dbg !319
  %cmp6 = icmp slt i32 %call5, 0, !dbg !320
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !320

if.then7:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !321, !tbaa !142
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([87 x i8]* @.str22, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call5) #6, !dbg !321
  br label %return, !dbg !323

if.end9:                                          ; preds = %if.end
  %4 = load i32* %n, align 4, !dbg !324, !tbaa !191
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !324
  %5 = load i32** %par, align 8, !dbg !324, !tbaa !142
  %call11 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %4, i32* %5, i32 80, i32* %ierr) #6, !dbg !324
  %6 = load i32* %n, align 4, !dbg !325, !tbaa !191
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !325
  %7 = load i32** %fch, align 8, !dbg !325, !tbaa !142
  %call13 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %6, i32* %7, i32 80, i32* %ierr) #6, !dbg !325
  %8 = load i32* %n, align 4, !dbg !326, !tbaa !191
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !326
  %9 = load i32** %sib, align 8, !dbg !326, !tbaa !142
  %call15 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %8, i32* %9, i32 80, i32* %ierr) #6, !dbg !326
  br label %return, !dbg !327

return:                                           ; preds = %if.end9, %if.then7
  %retval.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.end9 ]
  ret i32 %retval.0, !dbg !327
}

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeForHumanEye(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !123), !dbg !328
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !124), !dbg !329
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !330
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !330
  %or.cond = or i1 %cmp, %cmp1, !dbg !330
  br i1 %or.cond, label %if.then, label %if.end, !dbg !330

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !331, !tbaa !142
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str28, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #6, !dbg !331
  tail call void @exit(i32 -1) #9, !dbg !333
  unreachable, !dbg !333

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @Tree_writeStats(%struct._Tree* %tree, %struct._IO_FILE* %fp) #8, !dbg !334
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !125), !dbg !334
  %cmp3 = icmp eq i32 %call2, 0, !dbg !334
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !334

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !335, !tbaa !142
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([92 x i8]* @.str29, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 0, %struct._Tree* %tree, %struct._IO_FILE* %fp) #6, !dbg !335
  br label %return, !dbg !337

if.end6:                                          ; preds = %if.end
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str30, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp) #10, !dbg !338
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !126), !dbg !339
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !339
  %3 = load i32* %n, align 4, !dbg !339, !tbaa !191
  %cmp833 = icmp sgt i32 %3, 0, !dbg !339
  br i1 %cmp833, label %for.body.lr.ph, label %return, !dbg !339

for.body.lr.ph:                                   ; preds = %if.end6
  %par = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 2, !dbg !341
  %fch = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 3, !dbg !341
  %sib = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 4, !dbg !341
  br label %for.body, !dbg !339

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %4 = load i32** %par, align 8, !dbg !341, !tbaa !142
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv, !dbg !341
  %5 = load i32* %arrayidx, align 4, !dbg !341, !tbaa !191
  %6 = load i32** %fch, align 8, !dbg !341, !tbaa !142
  %arrayidx10 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !341
  %7 = load i32* %arrayidx10, align 4, !dbg !341, !tbaa !191
  %8 = load i32** %sib, align 8, !dbg !341, !tbaa !142
  %arrayidx12 = getelementptr inbounds i32* %8, i64 %indvars.iv, !dbg !341
  %9 = load i32* %arrayidx12, align 4, !dbg !341, !tbaa !191
  %10 = trunc i64 %indvars.iv to i32, !dbg !341
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0), i32 %10, i32 %5, i32 %7, i32 %9) #6, !dbg !341
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !339
  %11 = load i32* %n, align 4, !dbg !339, !tbaa !191
  %12 = trunc i64 %indvars.iv.next to i32, !dbg !339
  %cmp8 = icmp slt i32 %12, %11, !dbg !339
  br i1 %cmp8, label %for.body, label %return, !dbg !339

return:                                           ; preds = %if.end6, %for.body, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %for.body ], [ 1, %if.end6 ]
  ret i32 %retval.0, !dbg !343
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Tree_writeStats(%struct._Tree* %tree, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._Tree* %tree}, i64 0, metadata !129), !dbg !344
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !130), !dbg !345
  %cmp = icmp eq %struct._Tree* %tree, null, !dbg !346
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !346
  %or.cond = or i1 %cmp, %cmp1, !dbg !346
  br i1 %or.cond, label %if.then, label %if.end, !dbg !346

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !347, !tbaa !142
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str32, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp) #6, !dbg !347
  tail call void @exit(i32 -1) #9, !dbg !349
  unreachable, !dbg !349

if.end:                                           ; preds = %entry
  %n = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 0, !dbg !350
  %1 = load i32* %n, align 4, !dbg !350, !tbaa !191
  %root = getelementptr inbounds %struct._Tree* %tree, i64 0, i32 1, !dbg !350
  %2 = load i32* %root, align 4, !dbg !350, !tbaa !191
  %call2 = tail call i32 @Tree_sizeOf(%struct._Tree* %tree) #6, !dbg !351
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([61 x i8]* @.str33, i64 0, i64 0), i32 %1, i32 %2, i32 %call2) #6, !dbg !351
  tail call void @llvm.dbg.value(metadata !{i32 %call3}, i64 0, metadata !131), !dbg !351
  %cmp4 = icmp slt i32 %call3, 0, !dbg !352
  br i1 %cmp4, label %if.then5, label %return, !dbg !352

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !353, !tbaa !142
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([71 x i8]* @.str34, i64 0, i64 0), %struct._Tree* %tree, %struct._IO_FILE* %fp, i32 %call3) #6, !dbg !353
  br label %return, !dbg !355

return:                                           ; preds = %if.end, %if.then5
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.end ]
  ret i32 %retval.0, !dbg !356
}

; Function Attrs: optsize
declare i32 @Tree_sizeOf(%struct._Tree*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !132, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !84, metadata !95, metadata !101, metadata !109, metadata !115, metadata !121, metadata !127}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_readFromFile", metadata !"Tree_readFromFile", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, i8*)* @Tree_readFromFile, null, null, metadata !22, i32 26} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 26] [Tree_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !20}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Tree]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Tree", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Tree] [line 15, size 0, align 0, offset 0] [from _Tree]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Tree", i32 16, i64 256, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Tree] [line 16, size 256, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/../Tree.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !18, metadata !19}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"n", i32 17, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [n] [line 17, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"root", i32 18, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [root] [line 18, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"par", i32 19, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [par] [line 19, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"fch", i32 20, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [fch] [line 20, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"sib", i32 21, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [sib] [line 21, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !81, metadata !82, metadata !83}
!23 = metadata !{i32 786689, metadata !4, metadata !"tree", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 24]
!24 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554457, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 25]
!25 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 27, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 27]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!27 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!29 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !51, metadata !52, metadata !53, metadata !54, metadata !57, metadata !59, metadata !61, metadata !65, metadata !67, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !76, metadata !77}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!36 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!37 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!38 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!39 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!40 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!41 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!42 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !20} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!43 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !44} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!45 = metadata !{i32 786451, metadata !29, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!46 = metadata !{metadata !47, metadata !48, metadata !50}
!47 = metadata !{i32 786445, metadata !29, metadata !45, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786445, metadata !29, metadata !45, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !49} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!50 = metadata !{i32 786445, metadata !29, metadata !45, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!51 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !49} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!52 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!53 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!54 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !55} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!55 = metadata !{i32 786454, metadata !29, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!56 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!57 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !58} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!58 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!59 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !60} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!60 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!61 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !62} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!62 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !21, metadata !63, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!65 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !66} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!66 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!67 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !68} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!68 = metadata !{i32 786454, metadata !29, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!69 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !66} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!70 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !66} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!71 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !66} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!72 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !66} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!73 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !74} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!74 = metadata !{i32 786454, metadata !29, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!75 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!76 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!77 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !78} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!78 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !21, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!81 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 28]
!82 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 28]
!83 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 28]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_readFromFormattedFile", metadata !"Tree_readFromFormattedFile", metadata !"", i32 92, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, %struct._IO_FILE*)* @Tree_readFromFormattedFile, null, null, metadata !87, i32 95} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 95] [Tree_readFromFormattedFile]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !8, metadata !9, metadata !26}
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91}
!88 = metadata !{i32 786689, metadata !84, metadata !"tree", metadata !5, i32 16777309, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 93]
!89 = metadata !{i32 786689, metadata !84, metadata !"fp", metadata !5, i32 33554526, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 94]
!90 = metadata !{i32 786688, metadata !84, metadata !"rc", metadata !5, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 96]
!91 = metadata !{i32 786688, metadata !84, metadata !"itemp", metadata !5, i32 97, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 97]
!92 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 64, i64 32, i32 0, i32 0, metadata !8, metadata !93, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 32, offset 0] [from int]
!93 = metadata !{metadata !94}
!94 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ] [0, 1]
!95 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_readFromBinaryFile", metadata !"Tree_readFromBinaryFile", metadata !"", i32 169, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, %struct._IO_FILE*)* @Tree_readFromBinaryFile, null, null, metadata !96, i32 172} ; [ DW_TAG_subprogram ] [line 169] [def] [scope 172] [Tree_readFromBinaryFile]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100}
!97 = metadata !{i32 786689, metadata !95, metadata !"tree", metadata !5, i32 16777386, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 170]
!98 = metadata !{i32 786689, metadata !95, metadata !"fp", metadata !5, i32 33554603, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 171]
!99 = metadata !{i32 786688, metadata !95, metadata !"rc", metadata !5, i32 173, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 173]
!100 = metadata !{i32 786688, metadata !95, metadata !"itemp", metadata !5, i32 174, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 174]
!101 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_writeToFile", metadata !"Tree_writeToFile", metadata !"", i32 255, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, i8*)* @Tree_writeToFile, null, null, metadata !102, i32 258} ; [ DW_TAG_subprogram ] [line 255] [def] [scope 258] [Tree_writeToFile]
!102 = metadata !{metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108}
!103 = metadata !{i32 786689, metadata !101, metadata !"tree", metadata !5, i32 16777472, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 256]
!104 = metadata !{i32 786689, metadata !101, metadata !"fn", metadata !5, i32 33554689, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 257]
!105 = metadata !{i32 786688, metadata !101, metadata !"fp", metadata !5, i32 259, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 259]
!106 = metadata !{i32 786688, metadata !101, metadata !"fnlength", metadata !5, i32 260, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 260]
!107 = metadata !{i32 786688, metadata !101, metadata !"rc", metadata !5, i32 260, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 260]
!108 = metadata !{i32 786688, metadata !101, metadata !"sulength", metadata !5, i32 260, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 260]
!109 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_writeToFormattedFile", metadata !"Tree_writeToFormattedFile", metadata !"", i32 329, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, %struct._IO_FILE*)* @Tree_writeToFormattedFile, null, null, metadata !110, i32 332} ; [ DW_TAG_subprogram ] [line 329] [def] [scope 332] [Tree_writeToFormattedFile]
!110 = metadata !{metadata !111, metadata !112, metadata !113, metadata !114}
!111 = metadata !{i32 786689, metadata !109, metadata !"tree", metadata !5, i32 16777546, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 330]
!112 = metadata !{i32 786689, metadata !109, metadata !"fp", metadata !5, i32 33554763, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 331]
!113 = metadata !{i32 786688, metadata !109, metadata !"ierr", metadata !5, i32 333, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 333]
!114 = metadata !{i32 786688, metadata !109, metadata !"rc", metadata !5, i32 333, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 333]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_writeToBinaryFile", metadata !"Tree_writeToBinaryFile", metadata !"", i32 377, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, %struct._IO_FILE*)* @Tree_writeToBinaryFile, null, null, metadata !116, i32 380} ; [ DW_TAG_subprogram ] [line 377] [def] [scope 380] [Tree_writeToBinaryFile]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120}
!117 = metadata !{i32 786689, metadata !115, metadata !"tree", metadata !5, i32 16777594, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 378]
!118 = metadata !{i32 786689, metadata !115, metadata !"fp", metadata !5, i32 33554811, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 379]
!119 = metadata !{i32 786688, metadata !115, metadata !"rc", metadata !5, i32 381, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 381]
!120 = metadata !{i32 786688, metadata !115, metadata !"itemp", metadata !5, i32 382, metadata !92, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 382]
!121 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_writeForHumanEye", metadata !"Tree_writeForHumanEye", metadata !"", i32 436, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, %struct._IO_FILE*)* @Tree_writeForHumanEye, null, null, metadata !122, i32 439} ; [ DW_TAG_subprogram ] [line 436] [def] [scope 439] [Tree_writeForHumanEye]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126}
!123 = metadata !{i32 786689, metadata !121, metadata !"tree", metadata !5, i32 16777653, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 437]
!124 = metadata !{i32 786689, metadata !121, metadata !"fp", metadata !5, i32 33554870, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 438]
!125 = metadata !{i32 786688, metadata !121, metadata !"rc", metadata !5, i32 440, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 440]
!126 = metadata !{i32 786688, metadata !121, metadata !"v", metadata !5, i32 440, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 440]
!127 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Tree_writeStats", metadata !"Tree_writeStats", metadata !"", i32 472, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Tree*, %struct._IO_FILE*)* @Tree_writeStats, null, null, metadata !128, i32 475} ; [ DW_TAG_subprogram ] [line 472] [def] [scope 475] [Tree_writeStats]
!128 = metadata !{metadata !129, metadata !130, metadata !131}
!129 = metadata !{i32 786689, metadata !127, metadata !"tree", metadata !5, i32 16777689, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tree] [line 473]
!130 = metadata !{i32 786689, metadata !127, metadata !"fp", metadata !5, i32 33554906, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 474]
!131 = metadata !{i32 786688, metadata !127, metadata !"rc", metadata !5, i32 476, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 476]
!132 = metadata !{metadata !133, metadata !136}
!133 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !134, i32 1, i32 1, null, null}
!134 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !135} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!135 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!136 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !134, i32 1, i32 1, null, null}
!137 = metadata !{i32 24, i32 0, metadata !4, null}
!138 = metadata !{i32 25, i32 0, metadata !4, null}
!139 = metadata !{i32 34, i32 0, metadata !4, null}
!140 = metadata !{i32 35, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!142 = metadata !{metadata !"any pointer", metadata !143}
!143 = metadata !{metadata !"omnipotent char", metadata !144}
!144 = metadata !{metadata !"Simple C/C++ TBAA"}
!145 = metadata !{i32 37, i32 0, metadata !141, null}
!146 = metadata !{i32 44, i32 0, metadata !4, null}
!147 = metadata !{i32 6}
!148 = metadata !{i32 45, i32 0, metadata !4, null}
!149 = metadata !{i32 46, i32 0, metadata !4, null}
!150 = metadata !{i32 47, i32 0, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!152 = metadata !{i32 48, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !151, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!154 = metadata !{i32 49, i32 0, metadata !155, null}
!155 = metadata !{i32 786443, metadata !1, metadata !153, i32 48, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!156 = metadata !{i32 51, i32 0, metadata !155, null}
!157 = metadata !{i32 52, i32 0, metadata !155, null}
!158 = metadata !{i32 53, i32 0, metadata !159, null}
!159 = metadata !{i32 786443, metadata !1, metadata !153, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!160 = metadata !{i32 54, i32 0, metadata !159, null}
!161 = metadata !{i32 56, i32 0, metadata !151, null}
!162 = metadata !{i32 57, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !151, i32 56, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!164 = metadata !{i32 58, i32 0, metadata !165, null} ; [ DW_TAG_imported_module ]
!165 = metadata !{i32 786443, metadata !1, metadata !163, i32 57, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!166 = metadata !{i32 60, i32 0, metadata !165, null}
!167 = metadata !{i32 61, i32 0, metadata !165, null}
!168 = metadata !{i32 62, i32 0, metadata !169, null}
!169 = metadata !{i32 786443, metadata !1, metadata !163, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!170 = metadata !{i32 63, i32 0, metadata !169, null}
!171 = metadata !{i32 66, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !151, i32 65, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!173 = metadata !{i32 70, i32 0, metadata !172, null}
!174 = metadata !{i32 73, i32 0, metadata !175, null}
!175 = metadata !{i32 786443, metadata !1, metadata !4, i32 72, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!176 = metadata !{i32 77, i32 0, metadata !175, null}
!177 = metadata !{i32 79, i32 0, metadata !4, null}
!178 = metadata !{i32 170, i32 0, metadata !95, null}
!179 = metadata !{i32 171, i32 0, metadata !95, null}
!180 = metadata !{i32 174, i32 0, metadata !95, null}
!181 = metadata !{i32 180, i32 0, metadata !95, null}
!182 = metadata !{i32 181, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !95, i32 180, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!184 = metadata !{i32 183, i32 0, metadata !183, null}
!185 = metadata !{i32 190, i32 0, metadata !95, null}
!186 = metadata !{i32 197, i32 0, metadata !95, null}
!187 = metadata !{i32 198, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !95, i32 197, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!189 = metadata !{i32 200, i32 0, metadata !188, null}
!190 = metadata !{i32 207, i32 0, metadata !95, null}
!191 = metadata !{metadata !"int", metadata !143}
!192 = metadata !{i32 208, i32 0, metadata !95, null}
!193 = metadata !{i32 214, i32 0, metadata !95, null}
!194 = metadata !{i32 216, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !95, i32 215, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!196 = metadata !{i32 219, i32 0, metadata !195, null}
!197 = metadata !{i32 221, i32 0, metadata !95, null}
!198 = metadata !{i32 223, i32 0, metadata !199, null}
!199 = metadata !{i32 786443, metadata !1, metadata !95, i32 222, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!200 = metadata !{i32 226, i32 0, metadata !199, null}
!201 = metadata !{i32 228, i32 0, metadata !95, null}
!202 = metadata !{i32 230, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !95, i32 229, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!204 = metadata !{i32 233, i32 0, metadata !203, null}
!205 = metadata !{i32 235, i32 0, metadata !95, null}
!206 = metadata !{i32 93, i32 0, metadata !84, null}
!207 = metadata !{i32 94, i32 0, metadata !84, null}
!208 = metadata !{i32 97, i32 0, metadata !84, null}
!209 = metadata !{i32 103, i32 0, metadata !84, null}
!210 = metadata !{i32 104, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !84, i32 103, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!212 = metadata !{i32 106, i32 0, metadata !211, null}
!213 = metadata !{i32 113, i32 0, metadata !84, null}
!214 = metadata !{i32 120, i32 0, metadata !84, null}
!215 = metadata !{i32 121, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !84, i32 120, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!217 = metadata !{i32 123, i32 0, metadata !216, null}
!218 = metadata !{i32 130, i32 0, metadata !84, null}
!219 = metadata !{i32 131, i32 0, metadata !84, null}
!220 = metadata !{i32 137, i32 0, metadata !84, null}
!221 = metadata !{i32 138, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !84, i32 137, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!223 = metadata !{i32 141, i32 0, metadata !222, null}
!224 = metadata !{i32 143, i32 0, metadata !84, null}
!225 = metadata !{i32 144, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !84, i32 143, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!227 = metadata !{i32 147, i32 0, metadata !226, null}
!228 = metadata !{i32 149, i32 0, metadata !84, null}
!229 = metadata !{i32 150, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !84, i32 149, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!231 = metadata !{i32 153, i32 0, metadata !230, null}
!232 = metadata !{i32 156, i32 0, metadata !84, null}
!233 = metadata !{i32 256, i32 0, metadata !101, null}
!234 = metadata !{i32 257, i32 0, metadata !101, null}
!235 = metadata !{i32 266, i32 0, metadata !101, null}
!236 = metadata !{i32 267, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !101, i32 266, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!238 = metadata !{i32 269, i32 0, metadata !237, null}
!239 = metadata !{i32 275, i32 0, metadata !101, null}
!240 = metadata !{i32 276, i32 0, metadata !101, null}
!241 = metadata !{i32 277, i32 0, metadata !101, null}
!242 = metadata !{i32 278, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !101, i32 277, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!244 = metadata !{i32 279, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !243, i32 278, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!246 = metadata !{i32 280, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !245, i32 279, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!248 = metadata !{i32 282, i32 0, metadata !247, null}
!249 = metadata !{i32 283, i32 0, metadata !247, null}
!250 = metadata !{i32 284, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !245, i32 283, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!252 = metadata !{i32 285, i32 0, metadata !251, null}
!253 = metadata !{i32 287, i32 0, metadata !243, null}
!254 = metadata !{i32 288, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !243, i32 287, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!256 = metadata !{i32 289, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !255, i32 288, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!258 = metadata !{i32 291, i32 0, metadata !257, null}
!259 = metadata !{i32 292, i32 0, metadata !257, null}
!260 = metadata !{i32 293, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !255, i32 292, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!262 = metadata !{i32 294, i32 0, metadata !261, null}
!263 = metadata !{i32 297, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !243, i32 296, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!265 = metadata !{i32 298, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !264, i32 297, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!267 = metadata !{i32 300, i32 0, metadata !266, null}
!268 = metadata !{i32 301, i32 0, metadata !266, null}
!269 = metadata !{i32 302, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !264, i32 301, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!271 = metadata !{i32 303, i32 0, metadata !270, null}
!272 = metadata !{i32 307, i32 0, metadata !273, null}
!273 = metadata !{i32 786443, metadata !1, metadata !101, i32 306, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!274 = metadata !{i32 308, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !273, i32 307, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!276 = metadata !{i32 310, i32 0, metadata !275, null}
!277 = metadata !{i32 311, i32 0, metadata !275, null}
!278 = metadata !{i32 312, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !273, i32 311, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!280 = metadata !{i32 313, i32 0, metadata !279, null}
!281 = metadata !{i32 316, i32 0, metadata !101, null}
!282 = metadata !{i32 378, i32 0, metadata !115, null}
!283 = metadata !{i32 379, i32 0, metadata !115, null}
!284 = metadata !{i32 382, i32 0, metadata !115, null}
!285 = metadata !{i32 388, i32 0, metadata !115, null}
!286 = metadata !{i32 389, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !115, i32 388, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!288 = metadata !{i32 391, i32 0, metadata !287, null}
!289 = metadata !{i32 393, i32 0, metadata !115, null}
!290 = metadata !{i32 394, i32 0, metadata !115, null}
!291 = metadata !{i32 395, i32 0, metadata !115, null}
!292 = metadata !{i32 396, i32 0, metadata !115, null}
!293 = metadata !{i32 397, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !115, i32 396, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!295 = metadata !{i32 399, i32 0, metadata !294, null}
!296 = metadata !{i32 401, i32 0, metadata !115, null}
!297 = metadata !{i32 402, i32 0, metadata !115, null}
!298 = metadata !{i32 403, i32 0, metadata !299, null}
!299 = metadata !{i32 786443, metadata !1, metadata !115, i32 402, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!300 = metadata !{i32 406, i32 0, metadata !299, null}
!301 = metadata !{i32 408, i32 0, metadata !115, null}
!302 = metadata !{i32 409, i32 0, metadata !115, null}
!303 = metadata !{i32 410, i32 0, metadata !304, null}
!304 = metadata !{i32 786443, metadata !1, metadata !115, i32 409, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!305 = metadata !{i32 413, i32 0, metadata !304, null}
!306 = metadata !{i32 415, i32 0, metadata !115, null}
!307 = metadata !{i32 416, i32 0, metadata !115, null}
!308 = metadata !{i32 417, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !1, metadata !115, i32 416, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!310 = metadata !{i32 420, i32 0, metadata !309, null}
!311 = metadata !{i32 423, i32 0, metadata !115, null}
!312 = metadata !{i32 330, i32 0, metadata !109, null}
!313 = metadata !{i32 331, i32 0, metadata !109, null}
!314 = metadata !{i32 333, i32 0, metadata !109, null}
!315 = metadata !{i32 339, i32 0, metadata !109, null}
!316 = metadata !{i32 340, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !109, i32 339, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!318 = metadata !{i32 342, i32 0, metadata !317, null}
!319 = metadata !{i32 349, i32 0, metadata !109, null}
!320 = metadata !{i32 350, i32 0, metadata !109, null}
!321 = metadata !{i32 351, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !109, i32 350, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!323 = metadata !{i32 353, i32 0, metadata !322, null}
!324 = metadata !{i32 360, i32 0, metadata !109, null}
!325 = metadata !{i32 361, i32 0, metadata !109, null}
!326 = metadata !{i32 362, i32 0, metadata !109, null}
!327 = metadata !{i32 364, i32 0, metadata !109, null}
!328 = metadata !{i32 437, i32 0, metadata !121, null}
!329 = metadata !{i32 438, i32 0, metadata !121, null}
!330 = metadata !{i32 442, i32 0, metadata !121, null}
!331 = metadata !{i32 443, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !121, i32 442, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!333 = metadata !{i32 445, i32 0, metadata !332, null}
!334 = metadata !{i32 447, i32 0, metadata !121, null}
!335 = metadata !{i32 448, i32 0, metadata !336, null}
!336 = metadata !{i32 786443, metadata !1, metadata !121, i32 447, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!337 = metadata !{i32 451, i32 0, metadata !336, null}
!338 = metadata !{i32 453, i32 0, metadata !121, null}
!339 = metadata !{i32 454, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !121, i32 454, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!341 = metadata !{i32 455, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !340, i32 454, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!343 = metadata !{i32 459, i32 0, metadata !121, null}
!344 = metadata !{i32 473, i32 0, metadata !127, null}
!345 = metadata !{i32 474, i32 0, metadata !127, null}
!346 = metadata !{i32 482, i32 0, metadata !127, null}
!347 = metadata !{i32 483, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !127, i32 482, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!349 = metadata !{i32 485, i32 0, metadata !348, null}
!350 = metadata !{i32 487, i32 0, metadata !127, null}
!351 = metadata !{i32 489, i32 0, metadata !127, null}
!352 = metadata !{i32 490, i32 0, metadata !127, null}
!353 = metadata !{i32 491, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !127, i32 490, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Tree/src/Tree_IO.c]
!355 = metadata !{i32 493, i32 0, metadata !354, null}
!356 = metadata !{i32 495, i32 0, metadata !127, null}

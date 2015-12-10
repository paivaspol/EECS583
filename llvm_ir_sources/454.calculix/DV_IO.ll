; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [64 x i8] c"\0A error in DV_readFromFile(%p,%s), file %s, line %d\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [69 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str3 = private unnamed_addr constant [58 x i8] c"\0A error in DV_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str5 = private unnamed_addr constant [100 x i8] c"\0A error in DV_readFromFile(%p,%s)\0A bad DV file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str6 = private unnamed_addr constant [55 x i8] c"\0A error in DV_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str8 = private unnamed_addr constant [65 x i8] c"\0A error in DV_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DV_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [73 x i8] c"\0A error in DV_readFromBinaryFile(%p,%p)\0A itemp(3) : %d items of %d read\0A\00", align 1
@.str11 = private unnamed_addr constant [74 x i8] c"\0A error in DV_readFromBinaryFile(%p,%p)\0A sizes(%d) : %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DV_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str14 = private unnamed_addr constant [57 x i8] c"\0A error in DV_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str16 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str17 = private unnamed_addr constant [60 x i8] c"\0A fatal error in DV_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str18 = private unnamed_addr constant [16 x i8] c"\0A dv->size = %d\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"\0A %d\00", align 1
@.str20 = private unnamed_addr constant [85 x i8] c"\0A fatal error in DV_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str21 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DV_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [71 x i8] c"\0A error in DV_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str23 = private unnamed_addr constant [64 x i8] c"\0A error in DV_writeToBinaryFile(%p,%p)\0A %d of %d items written\0A\00", align 1
@.str24 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DV_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str25 = private unnamed_addr constant [88 x i8] c"\0A fatal error in DV_writeForHumanEye(%p,%p)\0A rc = %d, return from DV_writeStats(%p,%p)\0A\00", align 1
@.str26 = private unnamed_addr constant [44 x i8] c"\0A error in DV_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str27 = private unnamed_addr constant [31 x i8] c"\0A DV : double vector object : \00", align 1
@.str28 = private unnamed_addr constant [37 x i8] c" size = %d, maxsize = %d, owned = %d\00", align 1
@.str29 = private unnamed_addr constant [69 x i8] c"\0A fatal error in DV_writeStats(%p,%p)\0A rc = %d, return from fprintf\0A\00", align 1
@.str30 = private unnamed_addr constant [51 x i8] c"\0A error in DV_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str31 = private unnamed_addr constant [22 x i8] c"\0A %s = zeros(%d,%d) ;\00", align 1
@.str32 = private unnamed_addr constant [21 x i8] c"\0A %s(%d) = %24.16e ;\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c".dvf\00", align 1
@.str34 = private unnamed_addr constant [5 x i8] c".dvb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DV_readFromFile(%struct._DV* %dv, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !23), !dbg !144
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !24), !dbg !145
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !146
  %cmp1 = icmp eq i8* %fn, null, !dbg !146
  %or.cond = or i1 %cmp, %cmp1, !dbg !146
  br i1 %or.cond, label %if.then, label %if.end, !dbg !146

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !147, !tbaa !149
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 37) #6, !dbg !147
  br label %return, !dbg !152

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !153
  %conv = trunc i64 %call2 to i32, !dbg !153
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !81), !dbg !153
  tail call void @llvm.dbg.value(metadata !154, i64 0, metadata !83), !dbg !155
  %cmp5 = icmp sgt i32 %conv, 4, !dbg !156
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !156

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !157
  %sext = add i64 %sub, -17179869184, !dbg !157
  %idxprom = ashr exact i64 %sext, 32, !dbg !157
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !157
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !157
  %cmp9 = icmp eq i32 %call8, 0, !dbg !157
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !157

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !159
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !25), !dbg !159
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !159
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !159

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !161, !tbaa !149
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !161
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !163
  br label %return, !dbg !164

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @DV_readFromBinaryFile(%struct._DV* %dv, %struct._IO_FILE* %call12) #8, !dbg !165
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !82), !dbg !165
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !167
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !168
  %cmp25 = icmp eq i32 %call24, 0, !dbg !168
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !168

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0)) #6, !dbg !169
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !25), !dbg !169
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !169
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !169

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !171, !tbaa !149
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str3, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !171
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !173
  br label %return, !dbg !174

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @DV_readFromFormattedFile(%struct._DV* %dv, %struct._IO_FILE* %call28) #8, !dbg !175
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !82), !dbg !175
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !177
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !149
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([100 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #6, !dbg !178
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !180
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !181, !tbaa !149
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([100 x i8]* @.str5, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #6, !dbg !181
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !82), !dbg !183
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !184
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
define i32 @DV_readFromBinaryFile(%struct._DV* %dv, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !94), !dbg !185
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !95), !dbg !186
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !97), !dbg !187
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !188
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !188
  %or.cond = or i1 %cmp, %cmp1, !dbg !188
  br i1 %or.cond, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !149
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp) #6, !dbg !189
  br label %return, !dbg !191

if.end:                                           ; preds = %entry
  call void @DV_clearData(%struct._DV* %dv) #6, !dbg !192
  %1 = bitcast i32* %size to i8*, !dbg !193
  %call2 = call i64 @fread(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !193
  %conv = trunc i64 %call2 to i32, !dbg !193
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !96), !dbg !193
  %cmp3 = icmp eq i32 %conv, 1, !dbg !193
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !193

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !194, !tbaa !149
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([73 x i8]* @.str10, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 %conv, i32 1) #6, !dbg !194
  br label %return, !dbg !196

if.end7:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !97), !dbg !197
  %3 = load i32* %size, align 4, !dbg !197, !tbaa !198
  call void @DV_init(%struct._DV* %dv, i32 %3, double* null) #6, !dbg !197
  %call8 = call double* @DV_entries(%struct._DV* %dv) #6, !dbg !199
  %4 = bitcast double* %call8 to i8*, !dbg !199
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !97), !dbg !199
  %conv9 = sext i32 %3 to i64, !dbg !199
  %call10 = call i64 @fread(i8* %4, i64 8, i64 %conv9, %struct._IO_FILE* %fp) #6, !dbg !199
  %conv11 = trunc i64 %call10 to i32, !dbg !199
  call void @llvm.dbg.value(metadata !{i32 %conv11}, i64 0, metadata !96), !dbg !199
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !97), !dbg !199
  %cmp12 = icmp eq i32 %conv11, %3, !dbg !199
  br i1 %cmp12, label %return, label %if.then14, !dbg !199

if.then14:                                        ; preds = %if.end7
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !200, !tbaa !149
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([74 x i8]* @.str11, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 %3, i32 %conv11, i32 %3) #6, !dbg !200
  br label %return, !dbg !202

return:                                           ; preds = %if.end7, %if.then14, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then14 ], [ 1, %if.end7 ]
  ret i32 %retval.0, !dbg !203
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DV_readFromFormattedFile(%struct._DV* %dv, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !88), !dbg !204
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !89), !dbg !205
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !91), !dbg !206
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !207
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !207
  %or.cond = or i1 %cmp, %cmp1, !dbg !207
  br i1 %or.cond, label %if.then, label %if.end, !dbg !207

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !208, !tbaa !149
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str6, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp) #6, !dbg !208
  br label %return, !dbg !210

if.end:                                           ; preds = %entry
  call void @DV_clearData(%struct._DV* %dv) #6, !dbg !211
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i32* %size) #6, !dbg !212
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !90), !dbg !212
  %cmp3 = icmp eq i32 %call2, 1, !dbg !212
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !212

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !213, !tbaa !149
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 %call2, i32 1) #6, !dbg !213
  br label %return, !dbg !215

if.end6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !91), !dbg !216
  %2 = load i32* %size, align 4, !dbg !216, !tbaa !198
  call void @DV_init(%struct._DV* %dv, i32 %2, double* null) #6, !dbg !216
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !91), !dbg !217
  %3 = load i32* %size, align 4, !dbg !217, !tbaa !198
  %call7 = call double* @DV_entries(%struct._DV* %dv) #6, !dbg !217
  %call8 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %3, double* %call7) #6, !dbg !217
  call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !90), !dbg !217
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !91), !dbg !217
  %4 = load i32* %size, align 4, !dbg !217, !tbaa !198
  %cmp9 = icmp eq i32 %call8, %4, !dbg !217
  br i1 %cmp9, label %return, label %if.then10, !dbg !217

if.then10:                                        ; preds = %if.end6
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !218, !tbaa !149
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 %call8, i32 %4) #6, !dbg !218
  br label %return, !dbg !220

return:                                           ; preds = %if.end6, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then10 ], [ 1, %if.end6 ]
  ret i32 %retval.0, !dbg !221
}

; Function Attrs: optsize
declare void @DV_clearData(%struct._DV*) #4

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: optsize
declare void @DV_init(%struct._DV*, i32, double*) #4

; Function Attrs: optsize
declare i32 @DVfscanf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DV_writeToFile(%struct._DV* %dv, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !100), !dbg !222
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !101), !dbg !223
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !224
  %cmp1 = icmp eq i8* %fn, null, !dbg !224
  %or.cond = or i1 %cmp, %cmp1, !dbg !224
  br i1 %or.cond, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !225, !tbaa !149
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str12, i64 0, i64 0), %struct._DV* %dv, i8* %fn) #6, !dbg !225
  br label %if.end, !dbg !227

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !228
  %conv = trunc i64 %call2 to i32, !dbg !228
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !103), !dbg !228
  tail call void @llvm.dbg.value(metadata !154, i64 0, metadata !105), !dbg !229
  %cmp5 = icmp sgt i32 %conv, 4, !dbg !230
  br i1 %cmp5, label %if.then7, label %if.else49, !dbg !230

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !231
  %sext = add i64 %sub, -17179869184, !dbg !231
  %idxprom = ashr exact i64 %sext, 32, !dbg !231
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !231
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str34, i64 0, i64 0)) #7, !dbg !231
  %cmp9 = icmp eq i32 %call8, 0, !dbg !231
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !231

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0)) #6, !dbg !233
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !102), !dbg !233
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !233
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !233

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !235, !tbaa !149
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !235
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !104), !dbg !237
  br label %if.end59, !dbg !238

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @DV_writeToBinaryFile(%struct._DV* %dv, %struct._IO_FILE* %call12) #8, !dbg !239
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !104), !dbg !239
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !241
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #7, !dbg !242
  %cmp25 = icmp eq i32 %call24, 0, !dbg !242
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !242

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #6, !dbg !243
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !102), !dbg !243
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !243
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !243

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !245, !tbaa !149
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !245
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !104), !dbg !247
  br label %if.end59, !dbg !248

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @DV_writeToFormattedFile(%struct._DV* %dv, %struct._IO_FILE* %call28) #8, !dbg !249
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !104), !dbg !249
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !251
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !252
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call38}, i64 0, metadata !102), !dbg !252
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null, !dbg !252
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !252

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !254, !tbaa !149
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !254
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !104), !dbg !256
  br label %if.end59, !dbg !257

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @DV_writeForHumanEye(%struct._DV* %dv, %struct._IO_FILE* %call38) #8, !dbg !258
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !104), !dbg !258
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #6, !dbg !260
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str16, i64 0, i64 0)) #6, !dbg !261
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !102), !dbg !261
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null, !dbg !261
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !261

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !263, !tbaa !149
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._DV* %dv, i8* %fn, i8* %fn) #6, !dbg !263
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !104), !dbg !265
  br label %if.end59, !dbg !266

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @DV_writeForHumanEye(%struct._DV* %dv, %struct._IO_FILE* %call50) #8, !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !104), !dbg !267
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #6, !dbg !269
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %rc.0, !dbg !270
}

; Function Attrs: nounwind optsize uwtable
define i32 @DV_writeToBinaryFile(%struct._DV* %dv, %struct._IO_FILE* %fp) #0 {
entry:
  %size = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !114), !dbg !271
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !115), !dbg !272
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !117), !dbg !273
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !274
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !274
  %or.cond = or i1 %cmp, %cmp1, !dbg !274
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !274

lor.lhs.false2:                                   ; preds = %entry
  %size3 = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !274
  %0 = load i32* %size3, align 4, !dbg !274, !tbaa !198
  %cmp4 = icmp slt i32 %0, 1, !dbg !274
  br i1 %cmp4, label %if.then, label %if.end, !dbg !274

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !275, !tbaa !149
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str21, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp) #6, !dbg !275
  call void @exit(i32 -1) #9, !dbg !277
  unreachable, !dbg !277

if.end:                                           ; preds = %lor.lhs.false2
  %call5 = call i32 @DV_size(%struct._DV* %dv) #6, !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !117), !dbg !278
  store i32 %call5, i32* %size, align 4, !dbg !278, !tbaa !198
  %2 = bitcast i32* %size to i8*, !dbg !279
  %call6 = call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #6, !dbg !279
  %conv = trunc i64 %call6 to i32, !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !116), !dbg !279
  %cmp7 = icmp eq i32 %conv, 1, !dbg !280
  br i1 %cmp7, label %if.end11, label %if.then9, !dbg !280

if.then9:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !281, !tbaa !149
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([71 x i8]* @.str22, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 %conv, i32 1) #6, !dbg !281
  br label %return, !dbg !283

if.end11:                                         ; preds = %if.end
  %call12 = call double* @DV_entries(%struct._DV* %dv) #6, !dbg !284
  %4 = bitcast double* %call12 to i8*, !dbg !284
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !117), !dbg !284
  %5 = load i32* %size, align 4, !dbg !284, !tbaa !198
  %conv13 = sext i32 %5 to i64, !dbg !284
  %call14 = call i64 @fwrite(i8* %4, i64 8, i64 %conv13, %struct._IO_FILE* %fp) #6, !dbg !284
  %conv15 = trunc i64 %call14 to i32, !dbg !284
  call void @llvm.dbg.value(metadata !{i32 %conv15}, i64 0, metadata !116), !dbg !284
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !117), !dbg !285
  %cmp16 = icmp eq i32 %conv15, %5, !dbg !285
  br i1 %cmp16, label %return, label %if.then18, !dbg !285

if.then18:                                        ; preds = %if.end11
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !286, !tbaa !149
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([64 x i8]* @.str23, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 %conv15, i32 %5) #6, !dbg !286
  br label %return, !dbg !288

return:                                           ; preds = %if.end11, %if.then18, %if.then9
  %retval.0 = phi i32 [ 0, %if.then9 ], [ 0, %if.then18 ], [ 1, %if.end11 ]
  ret i32 %retval.0, !dbg !289
}

; Function Attrs: nounwind optsize uwtable
define i32 @DV_writeToFormattedFile(%struct._DV* %dv, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !108), !dbg !290
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !109), !dbg !291
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !292
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !292
  %or.cond = or i1 %cmp, %cmp1, !dbg !292
  %size5.pre = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !293
  br i1 %or.cond, label %if.then, label %lor.lhs.false2, !dbg !292

lor.lhs.false2:                                   ; preds = %entry
  %0 = load i32* %size5.pre, align 4, !dbg !292, !tbaa !198
  %cmp4 = icmp slt i32 %0, 1, !dbg !292
  br i1 %cmp4, label %if.then, label %if.end, !dbg !292

if.then:                                          ; preds = %entry, %lor.lhs.false2
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !295, !tbaa !149
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str17, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp) #6, !dbg !295
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !293, !tbaa !149
  %3 = load i32* %size5.pre, align 4, !dbg !293, !tbaa !198
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([16 x i8]* @.str18, i64 0, i64 0), i32 %3) #6, !dbg !293
  tail call void @exit(i32 -1) #9, !dbg !296
  unreachable, !dbg !296

if.end:                                           ; preds = %lor.lhs.false2
  %call7 = tail call i32 @DV_size(%struct._DV* %dv) #6, !dbg !297
  tail call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !111), !dbg !297
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str19, i64 0, i64 0), i32 %call7) #6, !dbg !298
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !110), !dbg !298
  %cmp9 = icmp slt i32 %call8, 0, !dbg !299
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !299

if.then10:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !300, !tbaa !149
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str20, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 %call8) #6, !dbg !300
  br label %return, !dbg !302

if.end12:                                         ; preds = %if.end
  %cmp13 = icmp sgt i32 %call7, 0, !dbg !303
  br i1 %cmp13, label %if.then14, label %return, !dbg !303

if.then14:                                        ; preds = %if.end12
  %call15 = tail call double* @DV_entries(%struct._DV* %dv) #6, !dbg !304
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %call7, double* %call15) #6, !dbg !304
  br label %return, !dbg !306

return:                                           ; preds = %if.end12, %if.then14, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 1, %if.then14 ], [ 1, %if.end12 ]
  ret i32 %retval.0, !dbg !307
}

; Function Attrs: nounwind optsize uwtable
define i32 @DV_writeForHumanEye(%struct._DV* %dv, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !120), !dbg !308
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !121), !dbg !309
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !310
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !310
  %or.cond = or i1 %cmp, %cmp1, !dbg !310
  br i1 %or.cond, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !311, !tbaa !149
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str24, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp) #6, !dbg !311
  tail call void @exit(i32 -1) #9, !dbg !313
  unreachable, !dbg !313

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @DV_writeStats(%struct._DV* %dv, %struct._IO_FILE* %fp) #8, !dbg !314
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !122), !dbg !314
  %cmp3 = icmp eq i32 %call2, 0, !dbg !314
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !314

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !315, !tbaa !149
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([88 x i8]* @.str25, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 0, %struct._DV* %dv, %struct._IO_FILE* %fp) #6, !dbg !315
  br label %return, !dbg !317

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @DV_size(%struct._DV* %dv) #6, !dbg !318
  %call8 = tail call double* @DV_entries(%struct._DV* %dv) #6, !dbg !318
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %call7, double* %call8) #6, !dbg !318
  br label %return, !dbg !319

return:                                           ; preds = %if.end6, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.end6 ]
  ret i32 %retval.0, !dbg !319
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare i32 @DV_size(%struct._DV*) #4

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DV_writeStats(%struct._DV* %dv, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !125), !dbg !320
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !126), !dbg !321
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !322
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !322
  %or.cond = or i1 %cmp, %cmp1, !dbg !322
  br i1 %or.cond, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !149
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([44 x i8]* @.str26, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp) #6, !dbg !323
  tail call void @exit(i32 -1) #9, !dbg !325
  unreachable, !dbg !325

if.end:                                           ; preds = %entry
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([31 x i8]* @.str27, i64 0, i64 0)) #6, !dbg !326
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !127), !dbg !326
  %cmp3 = icmp slt i32 %call2, 0, !dbg !327
  br i1 %cmp3, label %IO_error, label %if.end5, !dbg !327

if.end5:                                          ; preds = %if.end
  %size = getelementptr inbounds %struct._DV* %dv, i64 0, i32 0, !dbg !328
  %1 = load i32* %size, align 4, !dbg !328, !tbaa !198
  %maxsize = getelementptr inbounds %struct._DV* %dv, i64 0, i32 1, !dbg !328
  %2 = load i32* %maxsize, align 4, !dbg !328, !tbaa !198
  %owned = getelementptr inbounds %struct._DV* %dv, i64 0, i32 2, !dbg !328
  %3 = load i32* %owned, align 4, !dbg !328, !tbaa !198
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([37 x i8]* @.str28, i64 0, i64 0), i32 %1, i32 %2, i32 %3) #6, !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !127), !dbg !328
  %cmp7 = icmp slt i32 %call6, 0, !dbg !329
  br i1 %cmp7, label %IO_error, label %return, !dbg !329

IO_error:                                         ; preds = %if.end5, %if.end
  %rc.0 = phi i32 [ %call2, %if.end ], [ %call6, %if.end5 ]
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !330, !tbaa !149
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([69 x i8]* @.str29, i64 0, i64 0), %struct._DV* %dv, %struct._IO_FILE* %fp, i32 %rc.0) #6, !dbg !330
  br label %return, !dbg !331

return:                                           ; preds = %if.end5, %IO_error
  %retval.0 = phi i32 [ 0, %IO_error ], [ 1, %if.end5 ]
  ret i32 %retval.0, !dbg !331
}

; Function Attrs: nounwind optsize uwtable
define i32 @DV_writeForMatlab(%struct._DV* %dv, i8* %name, %struct._IO_FILE* %fp) #0 {
entry:
  %entries = alloca double*, align 8
  %size = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._DV* %dv}, i64 0, metadata !132), !dbg !332
  call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !133), !dbg !333
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !134), !dbg !334
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !135), !dbg !335
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !138), !dbg !336
  %cmp = icmp eq %struct._DV* %dv, null, !dbg !337
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !337
  %or.cond = or i1 %cmp, %cmp1, !dbg !337
  br i1 %or.cond, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !338, !tbaa !149
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str30, i64 0, i64 0), %struct._DV* %dv, i8* %name, %struct._IO_FILE* %fp) #6, !dbg !338
  call void @exit(i32 -1) #9, !dbg !340
  unreachable, !dbg !340

if.end:                                           ; preds = %entry
  call void @DV_sizeAndEntries(%struct._DV* %dv, i32* %size, double** %entries) #6, !dbg !341
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !138), !dbg !342
  %1 = load i32* %size, align 4, !dbg !342, !tbaa !198
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str31, i64 0, i64 0), i8* %name, i32 %1, i32 %1) #6, !dbg !342
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !136), !dbg !343
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !138), !dbg !343
  %2 = load i32* %size, align 4, !dbg !343, !tbaa !198
  %cmp315 = icmp sgt i32 %2, 0, !dbg !343
  br i1 %cmp315, label %for.body, label %for.end, !dbg !343

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !343
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !135), !dbg !345
  %3 = load double** %entries, align 8, !dbg !345, !tbaa !149
  %arrayidx = getelementptr inbounds double* %3, i64 %indvars.iv, !dbg !345
  %4 = load double* %arrayidx, align 8, !dbg !345, !tbaa !347
  %5 = trunc i64 %indvars.iv.next to i32, !dbg !345
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([21 x i8]* @.str32, i64 0, i64 0), i8* %name, i32 %5, double %4) #6, !dbg !345
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !138), !dbg !343
  %6 = load i32* %size, align 4, !dbg !343, !tbaa !198
  %cmp3 = icmp slt i32 %5, %6, !dbg !343
  br i1 %cmp3, label %for.body, label %for.end, !dbg !343

for.end:                                          ; preds = %for.body, %if.end
  ret i32 1, !dbg !348
}

; Function Attrs: optsize
declare void @DV_sizeAndEntries(%struct._DV*, i32*, double**) #4

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

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !139, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !84, metadata !92, metadata !98, metadata !106, metadata !112, metadata !118, metadata !123, metadata !128}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_readFromFile", metadata !"DV_readFromFile", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, i8*)* @DV_readFromFile, null, null, metadata !22, i32 26} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 26] [DV_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !20}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/../DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!19 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23, metadata !24, metadata !25, metadata !81, metadata !82, metadata !83}
!23 = metadata !{i32 786689, metadata !4, metadata !"dv", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 24]
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
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_readFromFormattedFile", metadata !"DV_readFromFormattedFile", metadata !"", i32 93, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, %struct._IO_FILE*)* @DV_readFromFormattedFile, null, null, metadata !87, i32 96} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 96] [DV_readFromFormattedFile]
!85 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!86 = metadata !{metadata !8, metadata !9, metadata !26}
!87 = metadata !{metadata !88, metadata !89, metadata !90, metadata !91}
!88 = metadata !{i32 786689, metadata !84, metadata !"dv", metadata !5, i32 16777310, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 94]
!89 = metadata !{i32 786689, metadata !84, metadata !"fp", metadata !5, i32 33554527, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 95]
!90 = metadata !{i32 786688, metadata !84, metadata !"rc", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 97]
!91 = metadata !{i32 786688, metadata !84, metadata !"size", metadata !5, i32 97, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 97]
!92 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_readFromBinaryFile", metadata !"DV_readFromBinaryFile", metadata !"", i32 148, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, %struct._IO_FILE*)* @DV_readFromBinaryFile, null, null, metadata !93, i32 151} ; [ DW_TAG_subprogram ] [line 148] [def] [scope 151] [DV_readFromBinaryFile]
!93 = metadata !{metadata !94, metadata !95, metadata !96, metadata !97}
!94 = metadata !{i32 786689, metadata !92, metadata !"dv", metadata !5, i32 16777365, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 149]
!95 = metadata !{i32 786689, metadata !92, metadata !"fp", metadata !5, i32 33554582, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 150]
!96 = metadata !{i32 786688, metadata !92, metadata !"rc", metadata !5, i32 152, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 152]
!97 = metadata !{i32 786688, metadata !92, metadata !"size", metadata !5, i32 152, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 152]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_writeToFile", metadata !"DV_writeToFile", metadata !"", i32 212, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, i8*)* @DV_writeToFile, null, null, metadata !99, i32 215} ; [ DW_TAG_subprogram ] [line 212] [def] [scope 215] [DV_writeToFile]
!99 = metadata !{metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!100 = metadata !{i32 786689, metadata !98, metadata !"dv", metadata !5, i32 16777429, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 213]
!101 = metadata !{i32 786689, metadata !98, metadata !"fn", metadata !5, i32 33554646, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 214]
!102 = metadata !{i32 786688, metadata !98, metadata !"fp", metadata !5, i32 216, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 216]
!103 = metadata !{i32 786688, metadata !98, metadata !"fnlength", metadata !5, i32 217, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 217]
!104 = metadata !{i32 786688, metadata !98, metadata !"rc", metadata !5, i32 217, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 217]
!105 = metadata !{i32 786688, metadata !98, metadata !"sulength", metadata !5, i32 217, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 217]
!106 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_writeToFormattedFile", metadata !"DV_writeToFormattedFile", metadata !"", i32 286, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, %struct._IO_FILE*)* @DV_writeToFormattedFile, null, null, metadata !107, i32 289} ; [ DW_TAG_subprogram ] [line 286] [def] [scope 289] [DV_writeToFormattedFile]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111}
!108 = metadata !{i32 786689, metadata !106, metadata !"dv", metadata !5, i32 16777503, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 287]
!109 = metadata !{i32 786689, metadata !106, metadata !"fp", metadata !5, i32 33554720, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 288]
!110 = metadata !{i32 786688, metadata !106, metadata !"rc", metadata !5, i32 290, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 290]
!111 = metadata !{i32 786688, metadata !106, metadata !"size", metadata !5, i32 290, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 290]
!112 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_writeToBinaryFile", metadata !"DV_writeToBinaryFile", metadata !"", i32 331, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, %struct._IO_FILE*)* @DV_writeToBinaryFile, null, null, metadata !113, i32 334} ; [ DW_TAG_subprogram ] [line 331] [def] [scope 334] [DV_writeToBinaryFile]
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117}
!114 = metadata !{i32 786689, metadata !112, metadata !"dv", metadata !5, i32 16777548, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 332]
!115 = metadata !{i32 786689, metadata !112, metadata !"fp", metadata !5, i32 33554765, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 333]
!116 = metadata !{i32 786688, metadata !112, metadata !"rc", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 335]
!117 = metadata !{i32 786688, metadata !112, metadata !"size", metadata !5, i32 335, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 335]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_writeForHumanEye", metadata !"DV_writeForHumanEye", metadata !"", i32 373, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, %struct._IO_FILE*)* @DV_writeForHumanEye, null, null, metadata !119, i32 376} ; [ DW_TAG_subprogram ] [line 373] [def] [scope 376] [DV_writeForHumanEye]
!119 = metadata !{metadata !120, metadata !121, metadata !122}
!120 = metadata !{i32 786689, metadata !118, metadata !"dv", metadata !5, i32 16777590, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 374]
!121 = metadata !{i32 786689, metadata !118, metadata !"fp", metadata !5, i32 33554807, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 375]
!122 = metadata !{i32 786688, metadata !118, metadata !"rc", metadata !5, i32 377, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 377]
!123 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_writeStats", metadata !"DV_writeStats", metadata !"", i32 405, metadata !85, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, %struct._IO_FILE*)* @DV_writeStats, null, null, metadata !124, i32 408} ; [ DW_TAG_subprogram ] [line 405] [def] [scope 408] [DV_writeStats]
!124 = metadata !{metadata !125, metadata !126, metadata !127}
!125 = metadata !{i32 786689, metadata !123, metadata !"dv", metadata !5, i32 16777622, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 406]
!126 = metadata !{i32 786689, metadata !123, metadata !"fp", metadata !5, i32 33554839, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 407]
!127 = metadata !{i32 786688, metadata !123, metadata !"rc", metadata !5, i32 409, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 409]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DV_writeForMatlab", metadata !"DV_writeForMatlab", metadata !"", i32 445, metadata !129, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DV*, i8*, %struct._IO_FILE*)* @DV_writeForMatlab, null, null, metadata !131, i32 449} ; [ DW_TAG_subprogram ] [line 445] [def] [scope 449] [DV_writeForMatlab]
!129 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!130 = metadata !{metadata !8, metadata !9, metadata !20, metadata !26}
!131 = metadata !{metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138}
!132 = metadata !{i32 786689, metadata !128, metadata !"dv", metadata !5, i32 16777662, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dv] [line 446]
!133 = metadata !{i32 786689, metadata !128, metadata !"name", metadata !5, i32 33554879, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 447]
!134 = metadata !{i32 786689, metadata !128, metadata !"fp", metadata !5, i32 50332096, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 448]
!135 = metadata !{i32 786688, metadata !128, metadata !"entries", metadata !5, i32 450, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 450]
!136 = metadata !{i32 786688, metadata !128, metadata !"ii", metadata !5, i32 451, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 451]
!137 = metadata !{i32 786688, metadata !128, metadata !"rc", metadata !5, i32 451, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 451]
!138 = metadata !{i32 786688, metadata !128, metadata !"size", metadata !5, i32 451, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 451]
!139 = metadata !{metadata !140, metadata !143}
!140 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !141, i32 1, i32 1, null, null}
!141 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!142 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!143 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !141, i32 1, i32 1, null, null}
!144 = metadata !{i32 24, i32 0, metadata !4, null}
!145 = metadata !{i32 25, i32 0, metadata !4, null}
!146 = metadata !{i32 34, i32 0, metadata !4, null}
!147 = metadata !{i32 35, i32 0, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!149 = metadata !{metadata !"any pointer", metadata !150}
!150 = metadata !{metadata !"omnipotent char", metadata !151}
!151 = metadata !{metadata !"Simple C/C++ TBAA"}
!152 = metadata !{i32 38, i32 0, metadata !148, null}
!153 = metadata !{i32 45, i32 0, metadata !4, null}
!154 = metadata !{i32 4}
!155 = metadata !{i32 46, i32 0, metadata !4, null}
!156 = metadata !{i32 47, i32 0, metadata !4, null}
!157 = metadata !{i32 48, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!159 = metadata !{i32 49, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !158, i32 48, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!161 = metadata !{i32 50, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !160, i32 49, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!163 = metadata !{i32 52, i32 0, metadata !162, null}
!164 = metadata !{i32 53, i32 0, metadata !162, null}
!165 = metadata !{i32 54, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !160, i32 53, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!167 = metadata !{i32 55, i32 0, metadata !166, null}
!168 = metadata !{i32 57, i32 0, metadata !158, null}
!169 = metadata !{i32 58, i32 0, metadata !170, null} ; [ DW_TAG_imported_module ]
!170 = metadata !{i32 786443, metadata !1, metadata !158, i32 57, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!171 = metadata !{i32 59, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !170, i32 58, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!173 = metadata !{i32 61, i32 0, metadata !172, null}
!174 = metadata !{i32 62, i32 0, metadata !172, null}
!175 = metadata !{i32 63, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !170, i32 62, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!177 = metadata !{i32 64, i32 0, metadata !176, null}
!178 = metadata !{i32 67, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !158, i32 66, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!180 = metadata !{i32 71, i32 0, metadata !179, null}
!181 = metadata !{i32 74, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !4, i32 73, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!183 = metadata !{i32 78, i32 0, metadata !182, null}
!184 = metadata !{i32 80, i32 0, metadata !4, null}
!185 = metadata !{i32 149, i32 0, metadata !92, null}
!186 = metadata !{i32 150, i32 0, metadata !92, null}
!187 = metadata !{i32 152, i32 0, metadata !92, null}
!188 = metadata !{i32 158, i32 0, metadata !92, null}
!189 = metadata !{i32 159, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !92, i32 158, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!191 = metadata !{i32 161, i32 0, metadata !190, null}
!192 = metadata !{i32 163, i32 0, metadata !92, null}
!193 = metadata !{i32 169, i32 0, metadata !92, null}
!194 = metadata !{i32 170, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !92, i32 169, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!196 = metadata !{i32 172, i32 0, metadata !195, null}
!197 = metadata !{i32 179, i32 0, metadata !92, null}
!198 = metadata !{metadata !"int", metadata !150}
!199 = metadata !{i32 185, i32 0, metadata !92, null}
!200 = metadata !{i32 187, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !92, i32 186, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!202 = metadata !{i32 190, i32 0, metadata !201, null}
!203 = metadata !{i32 192, i32 0, metadata !92, null}
!204 = metadata !{i32 94, i32 0, metadata !84, null}
!205 = metadata !{i32 95, i32 0, metadata !84, null}
!206 = metadata !{i32 97, i32 0, metadata !84, null}
!207 = metadata !{i32 103, i32 0, metadata !84, null}
!208 = metadata !{i32 104, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !84, i32 103, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!210 = metadata !{i32 106, i32 0, metadata !209, null}
!211 = metadata !{i32 108, i32 0, metadata !84, null}
!212 = metadata !{i32 114, i32 0, metadata !84, null}
!213 = metadata !{i32 115, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !84, i32 114, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!215 = metadata !{i32 117, i32 0, metadata !214, null}
!216 = metadata !{i32 124, i32 0, metadata !84, null}
!217 = metadata !{i32 130, i32 0, metadata !84, null}
!218 = metadata !{i32 131, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !84, i32 130, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!220 = metadata !{i32 133, i32 0, metadata !219, null}
!221 = metadata !{i32 135, i32 0, metadata !84, null}
!222 = metadata !{i32 213, i32 0, metadata !98, null}
!223 = metadata !{i32 214, i32 0, metadata !98, null}
!224 = metadata !{i32 223, i32 0, metadata !98, null}
!225 = metadata !{i32 224, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !98, i32 223, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!227 = metadata !{i32 226, i32 0, metadata !226, null}
!228 = metadata !{i32 232, i32 0, metadata !98, null}
!229 = metadata !{i32 233, i32 0, metadata !98, null}
!230 = metadata !{i32 234, i32 0, metadata !98, null}
!231 = metadata !{i32 235, i32 0, metadata !232, null}
!232 = metadata !{i32 786443, metadata !1, metadata !98, i32 234, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!233 = metadata !{i32 236, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !232, i32 235, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!235 = metadata !{i32 237, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !234, i32 236, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!237 = metadata !{i32 239, i32 0, metadata !236, null}
!238 = metadata !{i32 240, i32 0, metadata !236, null}
!239 = metadata !{i32 241, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !234, i32 240, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!241 = metadata !{i32 242, i32 0, metadata !240, null}
!242 = metadata !{i32 244, i32 0, metadata !232, null}
!243 = metadata !{i32 245, i32 0, metadata !244, null}
!244 = metadata !{i32 786443, metadata !1, metadata !232, i32 244, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!245 = metadata !{i32 246, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !244, i32 245, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!247 = metadata !{i32 248, i32 0, metadata !246, null}
!248 = metadata !{i32 249, i32 0, metadata !246, null}
!249 = metadata !{i32 250, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !244, i32 249, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!251 = metadata !{i32 251, i32 0, metadata !250, null}
!252 = metadata !{i32 254, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !232, i32 253, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!254 = metadata !{i32 255, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 254, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!256 = metadata !{i32 257, i32 0, metadata !255, null}
!257 = metadata !{i32 258, i32 0, metadata !255, null}
!258 = metadata !{i32 259, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !253, i32 258, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!260 = metadata !{i32 260, i32 0, metadata !259, null}
!261 = metadata !{i32 264, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !98, i32 263, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!263 = metadata !{i32 265, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !262, i32 264, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!265 = metadata !{i32 267, i32 0, metadata !264, null}
!266 = metadata !{i32 268, i32 0, metadata !264, null}
!267 = metadata !{i32 269, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !262, i32 268, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!269 = metadata !{i32 270, i32 0, metadata !268, null}
!270 = metadata !{i32 273, i32 0, metadata !98, null}
!271 = metadata !{i32 332, i32 0, metadata !112, null}
!272 = metadata !{i32 333, i32 0, metadata !112, null}
!273 = metadata !{i32 335, i32 0, metadata !112, null}
!274 = metadata !{i32 341, i32 0, metadata !112, null}
!275 = metadata !{i32 342, i32 0, metadata !276, null}
!276 = metadata !{i32 786443, metadata !1, metadata !112, i32 341, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!277 = metadata !{i32 344, i32 0, metadata !276, null}
!278 = metadata !{i32 346, i32 0, metadata !112, null}
!279 = metadata !{i32 347, i32 0, metadata !112, null}
!280 = metadata !{i32 348, i32 0, metadata !112, null}
!281 = metadata !{i32 349, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !112, i32 348, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!283 = metadata !{i32 351, i32 0, metadata !282, null}
!284 = metadata !{i32 353, i32 0, metadata !112, null}
!285 = metadata !{i32 354, i32 0, metadata !112, null}
!286 = metadata !{i32 355, i32 0, metadata !287, null}
!287 = metadata !{i32 786443, metadata !1, metadata !112, i32 354, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!288 = metadata !{i32 358, i32 0, metadata !287, null}
!289 = metadata !{i32 360, i32 0, metadata !112, null}
!290 = metadata !{i32 287, i32 0, metadata !106, null}
!291 = metadata !{i32 288, i32 0, metadata !106, null}
!292 = metadata !{i32 296, i32 0, metadata !106, null}
!293 = metadata !{i32 299, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !106, i32 296, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!295 = metadata !{i32 297, i32 0, metadata !294, null}
!296 = metadata !{i32 300, i32 0, metadata !294, null}
!297 = metadata !{i32 307, i32 0, metadata !106, null}
!298 = metadata !{i32 308, i32 0, metadata !106, null}
!299 = metadata !{i32 309, i32 0, metadata !106, null}
!300 = metadata !{i32 310, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !106, i32 309, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!302 = metadata !{i32 312, i32 0, metadata !301, null}
!303 = metadata !{i32 314, i32 0, metadata !106, null}
!304 = metadata !{i32 315, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !106, i32 314, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!306 = metadata !{i32 316, i32 0, metadata !305, null}
!307 = metadata !{i32 318, i32 0, metadata !106, null}
!308 = metadata !{i32 374, i32 0, metadata !118, null}
!309 = metadata !{i32 375, i32 0, metadata !118, null}
!310 = metadata !{i32 379, i32 0, metadata !118, null}
!311 = metadata !{i32 380, i32 0, metadata !312, null}
!312 = metadata !{i32 786443, metadata !1, metadata !118, i32 379, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!313 = metadata !{i32 382, i32 0, metadata !312, null}
!314 = metadata !{i32 384, i32 0, metadata !118, null}
!315 = metadata !{i32 385, i32 0, metadata !316, null}
!316 = metadata !{i32 786443, metadata !1, metadata !118, i32 384, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!317 = metadata !{i32 388, i32 0, metadata !316, null}
!318 = metadata !{i32 390, i32 0, metadata !118, null}
!319 = metadata !{i32 392, i32 0, metadata !118, null}
!320 = metadata !{i32 406, i32 0, metadata !123, null}
!321 = metadata !{i32 407, i32 0, metadata !123, null}
!322 = metadata !{i32 415, i32 0, metadata !123, null}
!323 = metadata !{i32 416, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !123, i32 415, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!325 = metadata !{i32 418, i32 0, metadata !324, null}
!326 = metadata !{i32 420, i32 0, metadata !123, null}
!327 = metadata !{i32 421, i32 0, metadata !123, null}
!328 = metadata !{i32 422, i32 0, metadata !123, null}
!329 = metadata !{i32 425, i32 0, metadata !123, null}
!330 = metadata !{i32 429, i32 0, metadata !123, null}
!331 = metadata !{i32 431, i32 0, metadata !123, null}
!332 = metadata !{i32 446, i32 0, metadata !128, null}
!333 = metadata !{i32 447, i32 0, metadata !128, null}
!334 = metadata !{i32 448, i32 0, metadata !128, null}
!335 = metadata !{i32 450, i32 0, metadata !128, null}
!336 = metadata !{i32 451, i32 0, metadata !128, null}
!337 = metadata !{i32 457, i32 0, metadata !128, null}
!338 = metadata !{i32 458, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !128, i32 457, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!340 = metadata !{i32 460, i32 0, metadata !339, null}
!341 = metadata !{i32 462, i32 0, metadata !128, null}
!342 = metadata !{i32 463, i32 0, metadata !128, null}
!343 = metadata !{i32 464, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !128, i32 464, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!345 = metadata !{i32 465, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !344, i32 464, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DV/src/DV_IO.c]
!347 = metadata !{metadata !"double", metadata !150}
!348 = metadata !{i32 467, i32 0, metadata !128, null}

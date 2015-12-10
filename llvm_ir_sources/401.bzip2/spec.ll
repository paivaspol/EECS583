; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spec_fd_t = type { i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@dbglvl = global i32 4, align 4
@seedi = common global i64 0, align 8
@spec_fd = common global [3 x %struct.spec_fd_t] zeroinitializer, align 16
@.str3 = private unnamed_addr constant [19 x i8] c"Creating Chunk %d\0A\00", align 1
@stderr = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [24 x i8] c"Can't open file %s: %s\0A\00", align 1
@.str6 = private unnamed_addr constant [27 x i8] c"Error reading from %s: %s\0A\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Duplicating %d bytes\0A\00", align 1
@.str8 = private unnamed_addr constant [25 x i8] c"spec_read: %d, %p, %d = \00", align 1
@.str9 = private unnamed_addr constant [34 x i8] c"spec_read: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str12 = private unnamed_addr constant [34 x i8] c"spec_fread: %p, (%d x %d) fd %d =\00", align 1
@.str13 = private unnamed_addr constant [35 x i8] c"spec_fread: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"spec_getc: %d = \00", align 1
@.str15 = private unnamed_addr constant [19 x i8] c"spec_ungetc: %d = \00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"spec_ungetc: pos %d <= 0\0A\00", align 1
@.str17 = private unnamed_addr constant [72 x i8] c"spec_ungetc: can't unget something that wasn't what was in the buffer!\0A\00", align 1
@.str18 = private unnamed_addr constant [26 x i8] c"spec_write: %d, %p, %d = \00", align 1
@.str19 = private unnamed_addr constant [35 x i8] c"spec_write: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str20 = private unnamed_addr constant [31 x i8] c"spec_fwrite: %p, %d, %d, %d = \00", align 1
@.str21 = private unnamed_addr constant [36 x i8] c"spec_fwrite: fd=%d, > MAX_SPEC_FD!\0A\00", align 1
@.str22 = private unnamed_addr constant [21 x i8] c"spec_putc: %d, %d = \00", align 1
@str = private unnamed_addr constant [35 x i8] c"spec_init: Error mallocing memory!\00"
@str23 = private unnamed_addr constant [10 x i8] c"spec_init\00"
@str24 = private unnamed_addr constant [19 x i8] c"Filling input file\00"
@str25 = private unnamed_addr constant [16 x i8] c"Creating Chunks\00"
@str28 = private unnamed_addr constant [4 x i8] c"EOF\00"

; Function Attrs: nounwind optsize uwtable
define double @ran() #0 {
entry:
  %0 = load i64* @seedi, align 8, !dbg !114, !tbaa !115
  %div = sdiv i64 %0, 127773, !dbg !114
  tail call void @llvm.dbg.value(metadata !{i64 %div}, i64 0, metadata !12), !dbg !114
  %rem = srem i64 %0, 127773, !dbg !118
  tail call void @llvm.dbg.value(metadata !{i64 %rem}, i64 0, metadata !10), !dbg !118
  %mul = mul nsw i64 %rem, 16807, !dbg !119
  %1 = mul i64 %div, -2836, !dbg !119
  %sub = add i64 %mul, %1, !dbg !119
  tail call void @llvm.dbg.value(metadata !{i64 %sub}, i64 0, metadata !13), !dbg !119
  %cmp = icmp sgt i64 %sub, 0, !dbg !120
  %add = add nsw i64 %sub, 2147483647, !dbg !121
  %storemerge = select i1 %cmp, i64 %sub, i64 %add, !dbg !120
  store i64 %storemerge, i64* @seedi, align 8, !dbg !123, !tbaa !115
  %conv = sitofp i64 %storemerge to float, !dbg !125
  %div2 = fmul float %conv, 0x3E00000000000000, !dbg !125
  %conv3 = fpext float %div2 to double, !dbg !125
  ret double %conv3, !dbg !125
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define i32 @spec_init() #0 {
entry:
  %0 = load i32* @dbglvl, align 4, !dbg !126, !tbaa !128
  %cmp = icmp sgt i32 %0, 3, !dbg !126
  br i1 %cmp, label %if.then, label %for.body, !dbg !126

if.then:                                          ; preds = %entry
  %puts42 = tail call i32 @puts(i8* getelementptr inbounds ([10 x i8]* @str23, i64 0, i64 0)), !dbg !126
  br label %for.body, !dbg !126

for.body:                                         ; preds = %entry, %if.then, %for.inc29
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc29 ], [ 0, %if.then ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %indvars.iv46, !dbg !129
  %limit2 = getelementptr inbounds %struct.spec_fd_t* %arrayidx, i64 0, i32 0, !dbg !129
  %1 = load i32* %limit2, align 8, !dbg !129, !tbaa !128
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !21), !dbg !129
  %2 = bitcast %struct.spec_fd_t* %arrayidx to i8*, !dbg !130
  tail call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 24, i32 8, i1 false), !dbg !130
  store i32 %1, i32* %limit2, align 8, !dbg !131, !tbaa !128
  %add = add nsw i32 %1, 1048576, !dbg !132
  %conv = sext i32 %add to i64, !dbg !132
  %call8 = tail call noalias i8* @malloc(i64 %conv) #7, !dbg !132
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %indvars.iv46, i32 3, !dbg !132
  store i8* %call8, i8** %buf, align 8, !dbg !132, !tbaa !133
  %cmp14 = icmp eq i8* %call8, null, !dbg !134
  br i1 %cmp14, label %if.then16, label %for.cond19.preheader, !dbg !134

for.cond19.preheader:                             ; preds = %for.body
  %cmp2043 = icmp sgt i32 %1, 0, !dbg !135
  br i1 %cmp2043, label %for.body22, label %for.inc29, !dbg !135

if.then16:                                        ; preds = %for.body
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([35 x i8]* @str, i64 0, i64 0)), !dbg !137
  tail call void @exit(i32 0) #8, !dbg !139
  unreachable, !dbg !139

for.body22:                                       ; preds = %for.cond19.preheader, %for.body22.for.body22_crit_edge
  %3 = phi i8* [ %.pre, %for.body22.for.body22_crit_edge ], [ %call8, %for.cond19.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22.for.body22_crit_edge ], [ 0, %for.cond19.preheader ]
  %arrayidx27 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !140
  store i8 0, i8* %arrayidx27, align 1, !dbg !140, !tbaa !116
  %indvars.iv.next = add i64 %indvars.iv, 1024, !dbg !135
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !135
  %cmp20 = icmp slt i32 %4, %1, !dbg !135
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.inc29, !dbg !135

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  %.pre = load i8** %buf, align 8, !dbg !140, !tbaa !133
  br label %for.body22, !dbg !135

for.inc29:                                        ; preds = %for.body22, %for.cond19.preheader
  %indvars.iv.next47 = add i64 %indvars.iv46, 1, !dbg !142
  %5 = trunc i64 %indvars.iv.next47 to i32, !dbg !142
  %cmp1 = icmp slt i32 %5, 3, !dbg !142
  br i1 %cmp1, label %for.body, label %for.end30, !dbg !142

for.end30:                                        ; preds = %for.inc29
  ret i32 0, !dbg !143
}

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @spec_random_load(i32 %fd) #0 {
entry:
  %random_text = alloca [32 x [131072 x i8]], align 16
  call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !28), !dbg !144
  %0 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 0, i64 0, !dbg !145
  call void @llvm.lifetime.start(i64 4194304, i8* %0) #3, !dbg !145
  call void @llvm.dbg.declare(metadata !{[32 x [131072 x i8]]* %random_text}, metadata !31), !dbg !145
  %1 = load i32* @dbglvl, align 4, !dbg !146, !tbaa !128
  %cmp = icmp sgt i32 %1, 4, !dbg !146
  br i1 %cmp, label %if.then, label %for.cond6.preheader, !dbg !146

if.then:                                          ; preds = %entry
  %puts47 = call i32 @puts(i8* getelementptr inbounds ([16 x i8]* @str25, i64 0, i64 0)), !dbg !146
  br label %for.cond, !dbg !146

for.cond:                                         ; preds = %if.then, %for.inc13
  %i.0.ph = phi i32 [ 0, %if.then ], [ %inc14, %for.inc13 ]
  %.pr = load i32* @dbglvl, align 4, !dbg !148, !tbaa !128
  %cmp1 = icmp slt i32 %i.0.ph, 32, !dbg !152
  br i1 %cmp1, label %for.body, label %for.end15, !dbg !152

for.body:                                         ; preds = %for.cond
  %cmp2 = icmp sgt i32 %.pr, 5, !dbg !148
  br i1 %cmp2, label %if.then3, label %for.cond6.preheader, !dbg !148

if.then3:                                         ; preds = %for.body
  %call4 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), i32 %i.0.ph) #7, !dbg !148
  br label %for.cond6.preheader, !dbg !148

for.cond6.preheader:                              ; preds = %entry, %for.body, %if.then3
  %i.06567 = phi i32 [ %i.0.ph, %if.then3 ], [ %i.0.ph, %for.body ], [ 0, %entry ]
  %idxprom11 = sext i32 %i.06567 to i64, !dbg !153
  %seedi.promoted = load i64* @seedi, align 8, !dbg !156, !tbaa !115
  br label %for.body8, !dbg !157

for.body8:                                        ; preds = %for.body8, %for.cond6.preheader
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next, %for.body8 ]
  %storemerge.i59 = phi i64 [ %seedi.promoted, %for.cond6.preheader ], [ %storemerge.i, %for.body8 ], !dbg !158
  %div.i = sdiv i64 %storemerge.i59, 127773, !dbg !158
  tail call void @llvm.dbg.value(metadata !{i64 %div.i}, i64 0, metadata !159), !dbg !158
  %rem.i = srem i64 %storemerge.i59, 127773, !dbg !160
  tail call void @llvm.dbg.value(metadata !{i64 %rem.i}, i64 0, metadata !161), !dbg !160
  %mul.i = mul nsw i64 %rem.i, 16807, !dbg !162
  %2 = mul i64 %div.i, -2836, !dbg !162
  %sub.i = add i64 %mul.i, %2, !dbg !162
  tail call void @llvm.dbg.value(metadata !{i64 %sub.i}, i64 0, metadata !163), !dbg !162
  %cmp.i = icmp sgt i64 %sub.i, 0, !dbg !164
  %add.i = add nsw i64 %sub.i, 2147483647, !dbg !165
  %storemerge.i = select i1 %cmp.i, i64 %sub.i, i64 %add.i, !dbg !164
  %conv.i = sitofp i64 %storemerge.i to float, !dbg !166
  %div2.i = fmul float %conv.i, 0x3E00000000000000, !dbg !166
  %conv3.i = fpext float %div2.i to double, !dbg !166
  %mul = fmul double %conv3.i, 2.560000e+02, !dbg !153
  %conv = fptosi double %mul to i32, !dbg !153
  %conv10 = trunc i32 %conv to i8, !dbg !153
  %arrayidx12 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 %idxprom11, i64 %indvars.iv, !dbg !153
  store i8 %conv10, i8* %arrayidx12, align 1, !dbg !153, !tbaa !116
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !157
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !157
  %exitcond = icmp eq i32 %lftr.wideiv, 131072, !dbg !157
  br i1 %exitcond, label %for.inc13, label %for.body8, !dbg !157

for.inc13:                                        ; preds = %for.body8
  store i64 %storemerge.i, i64* @seedi, align 8, !dbg !156, !tbaa !115
  %inc14 = add nsw i32 %i.06567, 1, !dbg !152
  call void @llvm.dbg.value(metadata !{i32 %inc14}, i64 0, metadata !29), !dbg !152
  br label %for.cond, !dbg !152

for.end15:                                        ; preds = %for.cond
  %cmp16 = icmp sgt i32 %.pr, 4, !dbg !167
  br i1 %cmp16, label %if.then18, label %for.cond21.preheader, !dbg !167

if.then18:                                        ; preds = %for.end15
  %puts = call i32 @puts(i8* getelementptr inbounds ([19 x i8]* @str24, i64 0, i64 0)), !dbg !167
  br label %for.cond21.preheader, !dbg !167

for.cond21.preheader:                             ; preds = %if.then18, %for.end15
  %idxprom22 = sext i32 %fd to i64, !dbg !169
  %limit = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22, i32 0, !dbg !169
  %3 = load i32* %limit, align 8, !dbg !169, !tbaa !128
  %cmp2460 = icmp sgt i32 %3, 0, !dbg !169
  br i1 %cmp2460, label %for.body26.lr.ph, label %for.end35, !dbg !169

for.body26.lr.ph:                                 ; preds = %for.cond21.preheader
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22, i32 3, !dbg !171
  br label %for.body26, !dbg !169

for.body26:                                       ; preds = %for.body26, %for.body26.lr.ph
  %indvars.iv62 = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next63, %for.body26 ]
  %4 = load i8** %buf, align 8, !dbg !171, !tbaa !133
  %add.ptr = getelementptr inbounds i8* %4, i64 %indvars.iv62, !dbg !171
  %5 = load i64* @seedi, align 8, !dbg !173, !tbaa !115
  %div.i48 = sdiv i64 %5, 127773, !dbg !173
  tail call void @llvm.dbg.value(metadata !{i64 %div.i48}, i64 0, metadata !174), !dbg !173
  %rem.i49 = srem i64 %5, 127773, !dbg !175
  tail call void @llvm.dbg.value(metadata !{i64 %rem.i49}, i64 0, metadata !176), !dbg !175
  %mul.i50 = mul nsw i64 %rem.i49, 16807, !dbg !177
  %6 = mul i64 %div.i48, -2836, !dbg !177
  %sub.i51 = add i64 %mul.i50, %6, !dbg !177
  tail call void @llvm.dbg.value(metadata !{i64 %sub.i51}, i64 0, metadata !178), !dbg !177
  %cmp.i52 = icmp sgt i64 %sub.i51, 0, !dbg !179
  %add.i53 = add nsw i64 %sub.i51, 2147483647, !dbg !180
  %storemerge.i54 = select i1 %cmp.i52, i64 %sub.i51, i64 %add.i53, !dbg !179
  store i64 %storemerge.i54, i64* @seedi, align 8, !dbg !181, !tbaa !115
  %conv.i55 = sitofp i64 %storemerge.i54 to float, !dbg !182
  %div2.i56 = fmul float %conv.i55, 0x3E00000000000000, !dbg !182
  %conv3.i57 = fpext float %div2.i56 to double, !dbg !182
  %mul30 = fmul double %conv3.i57, 3.200000e+01, !dbg !171
  %conv31 = fptosi double %mul30 to i32, !dbg !171
  %idxprom32 = sext i32 %conv31 to i64, !dbg !171
  %7 = getelementptr inbounds [32 x [131072 x i8]]* %random_text, i64 0, i64 %idxprom32, i64 0, !dbg !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %7, i64 131072, i32 1, i1 false), !dbg !171
  %indvars.iv.next63 = add i64 %indvars.iv62, 131072, !dbg !169
  %8 = load i32* %limit, align 8, !dbg !169, !tbaa !128
  %9 = trunc i64 %indvars.iv.next63 to i32, !dbg !169
  %cmp24 = icmp slt i32 %9, %8, !dbg !169
  br i1 %cmp24, label %for.body26, label %for.end35, !dbg !169

for.end35:                                        ; preds = %for.body26, %for.cond21.preheader
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom22, i32 1, !dbg !183
  store i32 1048576, i32* %len, align 4, !dbg !183, !tbaa !128
  call void @llvm.lifetime.end(i64 4194304, i8* %0) #3, !dbg !184
  ret i32 0, !dbg !185
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define i32 @spec_load(i32 %num, i8* %filename, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !42), !dbg !186
  tail call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !43), !dbg !186
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !44), !dbg !186
  %call = tail call i32 (i8*, i32, ...)* @open(i8* %filename, i32 0) #7, !dbg !187
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !45), !dbg !187
  %cmp = icmp slt i32 %call, 0, !dbg !188
  br i1 %cmp, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !133
  %call1 = tail call i32* @__errno_location() #9, !dbg !189
  %1 = load i32* %call1, align 4, !dbg !189, !tbaa !128
  %call2 = tail call i8* @strerror(i32 %1) #7, !dbg !189
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i8* %filename, i8* %call2) #7, !dbg !189
  tail call void @exit(i32 0) #8, !dbg !191
  unreachable, !dbg !191

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %num to i64, !dbg !192
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1, !dbg !192
  store i32 0, i32* %len, align 4, !dbg !192, !tbaa !128
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !192
  store i32 0, i32* %pos, align 8, !dbg !192, !tbaa !128
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !193
  %cmp691 = icmp sgt i32 %size, 0, !dbg !193
  br i1 %cmp691, label %for.body.lr.ph, label %for.end, !dbg !193

for.body.lr.ph:                                   ; preds = %if.end
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !195
  br label %for.body, !dbg !193

for.body:                                         ; preds = %for.body.lr.ph, %if.end20
  %i.092 = phi i32 [ 0, %for.body.lr.ph ], [ %add24, %if.end20 ]
  %2 = load i8** %buf, align 8, !dbg !195, !tbaa !133
  %idx.ext = sext i32 %i.092 to i64, !dbg !195
  %add.ptr = getelementptr inbounds i8* %2, i64 %idx.ext, !dbg !195
  %call9 = tail call i64 @read(i32 %call, i8* %add.ptr, i64 131072) #7, !dbg !195
  %conv = trunc i64 %call9 to i32, !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !46), !dbg !195
  %cmp10 = icmp eq i32 %conv, 0, !dbg !197
  br i1 %cmp10, label %for.end, label %if.end13, !dbg !197

if.end13:                                         ; preds = %for.body
  %cmp14 = icmp slt i32 %conv, 0, !dbg !198
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !198

if.then16:                                        ; preds = %if.end13
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !199, !tbaa !133
  %call17 = tail call i32* @__errno_location() #9, !dbg !199
  %4 = load i32* %call17, align 4, !dbg !199, !tbaa !128
  %call18 = tail call i8* @strerror(i32 %4) #7, !dbg !199
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([27 x i8]* @.str6, i64 0, i64 0), i8* %filename, i8* %call18) #7, !dbg !199
  tail call void @exit(i32 0) #8, !dbg !201
  unreachable, !dbg !201

if.end20:                                         ; preds = %if.end13
  %5 = load i32* %len, align 4, !dbg !202, !tbaa !128
  %add = add nsw i32 %5, %conv, !dbg !202
  store i32 %add, i32* %len, align 4, !dbg !202, !tbaa !128
  %add24 = add nsw i32 %conv, %i.092, !dbg !193
  tail call void @llvm.dbg.value(metadata !{i32 %add24}, i64 0, metadata !47), !dbg !193
  %cmp6 = icmp slt i32 %add24, %size, !dbg !193
  br i1 %cmp6, label %for.body, label %for.end, !dbg !193

for.end:                                          ; preds = %if.end20, %for.body, %if.end
  %call25 = tail call i32 @close(i32 %call) #7, !dbg !203
  %6 = load i32* %len, align 4, !dbg !204, !tbaa !128
  %cmp2990 = icmp slt i32 %6, %size, !dbg !204
  br i1 %cmp2990, label %while.body.lr.ph, label %while.end, !dbg !204

while.body.lr.ph:                                 ; preds = %for.end
  %buf51 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !205
  br label %while.body, !dbg !204

while.body:                                       ; preds = %while.body.lr.ph, %if.end48
  %7 = phi i32 [ %6, %while.body.lr.ph ], [ %add64, %if.end48 ]
  %sub = sub nsw i32 %size, %7, !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !48), !dbg !206
  %cmp37 = icmp sgt i32 %sub, %7, !dbg !207
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !48), !dbg !207
  %.sub = select i1 %cmp37, i32 %7, i32 %sub, !dbg !207
  %8 = load i32* @dbglvl, align 4, !dbg !208, !tbaa !128
  %cmp44 = icmp sgt i32 %8, 3, !dbg !208
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !208

if.then46:                                        ; preds = %while.body
  %call47 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i32 %.sub) #7, !dbg !208
  %.pre = load i32* %len, align 4, !dbg !205, !tbaa !128
  br label %if.end48, !dbg !208

if.end48:                                         ; preds = %if.then46, %while.body
  %9 = phi i32 [ %.pre, %if.then46 ], [ %7, %while.body ], !dbg !205
  %10 = load i8** %buf51, align 8, !dbg !205, !tbaa !133
  %idx.ext55 = sext i32 %9 to i64, !dbg !205
  %add.ptr56 = getelementptr inbounds i8* %10, i64 %idx.ext55, !dbg !205
  %conv60 = sext i32 %.sub to i64, !dbg !205
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr56, i8* %10, i64 %conv60, i32 1, i1 false), !dbg !205
  %11 = load i32* %len, align 4, !dbg !210, !tbaa !128
  %add64 = add nsw i32 %11, %.sub, !dbg !210
  store i32 %add64, i32* %len, align 4, !dbg !210, !tbaa !128
  %cmp29 = icmp slt i32 %add64, %size, !dbg !204
  br i1 %cmp29, label %while.body, label %while.end, !dbg !204

while.end:                                        ; preds = %if.end48, %for.end
  ret i32 0, !dbg !211
}

; Function Attrs: optsize
declare i32 @open(i8* nocapture, i32, ...) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i8* @strerror(i32) #2

; Function Attrs: nounwind optsize readnone
declare i32* @__errno_location() #6

; Function Attrs: optsize
declare i64 @read(i32, i8* nocapture, i64) #5

; Function Attrs: optsize
declare i32 @close(i32) #5

; Function Attrs: nounwind optsize uwtable
define i32 @spec_read(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !56), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !57), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !58), !dbg !212
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !59), !dbg !213
  %0 = load i32* @dbglvl, align 4, !dbg !214, !tbaa !128
  %cmp = icmp sgt i32 %0, 4, !dbg !214
  br i1 %cmp, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([25 x i8]* @.str8, i64 0, i64 0), i32 %fd, i8* %buf, i32 %size) #7, !dbg !214
  br label %if.end, !dbg !214

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3, !dbg !216
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !216

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !217, !tbaa !133
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #7, !dbg !217
  tail call void @exit(i32 0) #8, !dbg !219
  unreachable, !dbg !219

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64, !dbg !220
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !220
  %2 = load i32* %pos, align 8, !dbg !220, !tbaa !128
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1, !dbg !220
  %3 = load i32* %len, align 4, !dbg !220, !tbaa !128
  %cmp7 = icmp slt i32 %2, %3, !dbg !220
  br i1 %cmp7, label %if.end13, label %if.then8, !dbg !220

if.then8:                                         ; preds = %if.end4
  %4 = load i32* @dbglvl, align 4, !dbg !221, !tbaa !128
  %cmp9 = icmp sgt i32 %4, 4, !dbg !221
  br i1 %cmp9, label %if.then10, label %return, !dbg !221

if.then10:                                        ; preds = %if.then8
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0)), !dbg !221
  br label %return, !dbg !221

if.end13:                                         ; preds = %if.end4
  %add = add nsw i32 %2, %size, !dbg !224
  %cmp20 = icmp slt i32 %add, %3, !dbg !224
  %sub = sub nsw i32 %3, %2, !dbg !225
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !59), !dbg !225
  %rc.0 = select i1 %cmp20, i32 %size, i32 %sub, !dbg !224
  %idxprom32 = sext i32 %2 to i64, !dbg !227
  %buf35 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !227
  %5 = load i8** %buf35, align 8, !dbg !227, !tbaa !133
  %arrayidx36 = getelementptr inbounds i8* %5, i64 %idxprom32, !dbg !227
  %conv = sext i32 %rc.0 to i64, !dbg !227
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %arrayidx36, i64 %conv, i32 1, i1 false), !dbg !227
  %6 = load i32* %pos, align 8, !dbg !228, !tbaa !128
  %add40 = add nsw i32 %6, %rc.0, !dbg !228
  store i32 %add40, i32* %pos, align 8, !dbg !228, !tbaa !128
  %7 = load i32* @dbglvl, align 4, !dbg !229, !tbaa !128
  %cmp41 = icmp sgt i32 %7, 4, !dbg !229
  br i1 %cmp41, label %if.then43, label %return, !dbg !229

if.then43:                                        ; preds = %if.end13
  %call44 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %rc.0) #7, !dbg !229
  br label %return, !dbg !229

return:                                           ; preds = %if.end13, %if.then43, %if.then8, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then8 ], [ %rc.0, %if.then43 ], [ %rc.0, %if.end13 ]
  ret i32 %retval.0, !dbg !231
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_fread(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !64), !dbg !232
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !65), !dbg !232
  tail call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !66), !dbg !232
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !67), !dbg !232
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !68), !dbg !233
  %0 = load i32* @dbglvl, align 4, !dbg !234, !tbaa !128
  %cmp = icmp sgt i32 %0, 4, !dbg !234
  br i1 %cmp, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([34 x i8]* @.str12, i64 0, i64 0), i8* %buf, i32 %size, i32 %num, i32 %fd) #7, !dbg !234
  br label %if.end, !dbg !234

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3, !dbg !236
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !236

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !237, !tbaa !133
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8]* @.str13, i64 0, i64 0), i32 %fd) #7, !dbg !237
  tail call void @exit(i32 0) #8, !dbg !239
  unreachable, !dbg !239

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64, !dbg !240
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !240
  %2 = load i32* %pos, align 8, !dbg !240, !tbaa !128
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1, !dbg !240
  %3 = load i32* %len, align 4, !dbg !240, !tbaa !128
  %cmp7 = icmp slt i32 %2, %3, !dbg !240
  br i1 %cmp7, label %if.end13, label %if.then8, !dbg !240

if.then8:                                         ; preds = %if.end4
  %4 = load i32* @dbglvl, align 4, !dbg !241, !tbaa !128
  %cmp9 = icmp sgt i32 %4, 4, !dbg !241
  br i1 %cmp9, label %if.then10, label %return, !dbg !241

if.then10:                                        ; preds = %if.then8
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0)), !dbg !241
  br label %return, !dbg !241

if.end13:                                         ; preds = %if.end4
  %mul = mul nsw i32 %num, %size, !dbg !244
  %add = add nsw i32 %2, %mul, !dbg !244
  %cmp20 = icmp slt i32 %add, %3, !dbg !244
  br i1 %cmp20, label %if.end28, label %if.then21, !dbg !244

if.then21:                                        ; preds = %if.end13
  %sub = sub nsw i32 %3, %2, !dbg !245
  %div = sdiv i32 %sub, %size, !dbg !245
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !68), !dbg !245
  br label %if.end28, !dbg !247

if.end28:                                         ; preds = %if.end13, %if.then21
  %rc.0 = phi i32 [ %div, %if.then21 ], [ %num, %if.end13 ]
  %idxprom32 = sext i32 %2 to i64, !dbg !248
  %buf35 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !248
  %5 = load i8** %buf35, align 8, !dbg !248, !tbaa !133
  %arrayidx36 = getelementptr inbounds i8* %5, i64 %idxprom32, !dbg !248
  %conv = sext i32 %rc.0 to i64, !dbg !248
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %arrayidx36, i64 %conv, i32 1, i1 false), !dbg !248
  %mul37 = mul nsw i32 %rc.0, %size, !dbg !249
  %6 = load i32* %pos, align 8, !dbg !249, !tbaa !128
  %add41 = add nsw i32 %6, %mul37, !dbg !249
  store i32 %add41, i32* %pos, align 8, !dbg !249, !tbaa !128
  %7 = load i32* @dbglvl, align 4, !dbg !250, !tbaa !128
  %cmp42 = icmp sgt i32 %7, 4, !dbg !250
  br i1 %cmp42, label %if.then44, label %return, !dbg !250

if.then44:                                        ; preds = %if.end28
  %call46 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %mul37) #7, !dbg !250
  br label %return, !dbg !250

return:                                           ; preds = %if.end28, %if.then44, %if.then8, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then8 ], [ %rc.0, %if.then44 ], [ %rc.0, %if.end28 ]
  ret i32 %retval.0, !dbg !252
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_getc(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !71), !dbg !253
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !72), !dbg !254
  %0 = load i32* @dbglvl, align 4, !dbg !255, !tbaa !128
  %cmp = icmp sgt i32 %0, 4, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i32 %fd) #7, !dbg !255
  br label %if.end, !dbg !255

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3, !dbg !257
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !257

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !258, !tbaa !133
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #7, !dbg !258
  tail call void @exit(i32 0) #8, !dbg !260
  unreachable, !dbg !260

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64, !dbg !261
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !261
  %2 = load i32* %pos, align 8, !dbg !261, !tbaa !128
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1, !dbg !261
  %3 = load i32* %len, align 4, !dbg !261, !tbaa !128
  %cmp7 = icmp slt i32 %2, %3, !dbg !261
  br i1 %cmp7, label %if.end13, label %if.then8, !dbg !261

if.then8:                                         ; preds = %if.end4
  %4 = load i32* @dbglvl, align 4, !dbg !262, !tbaa !128
  %cmp9 = icmp sgt i32 %4, 4, !dbg !262
  br i1 %cmp9, label %if.then10, label %return, !dbg !262

if.then10:                                        ; preds = %if.then8
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([4 x i8]* @str28, i64 0, i64 0)), !dbg !262
  br label %return, !dbg !262

if.end13:                                         ; preds = %if.end4
  %inc = add nsw i32 %2, 1, !dbg !265
  store i32 %inc, i32* %pos, align 8, !dbg !265, !tbaa !128
  %idxprom17 = sext i32 %2 to i64, !dbg !265
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !265
  %5 = load i8** %buf, align 8, !dbg !265, !tbaa !133
  %arrayidx20 = getelementptr inbounds i8* %5, i64 %idxprom17, !dbg !265
  %6 = load i8* %arrayidx20, align 1, !dbg !265, !tbaa !116
  %conv = zext i8 %6 to i32, !dbg !265
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !72), !dbg !265
  %7 = load i32* @dbglvl, align 4, !dbg !266, !tbaa !128
  %cmp21 = icmp sgt i32 %7, 4, !dbg !266
  br i1 %cmp21, label %if.then23, label %return, !dbg !266

if.then23:                                        ; preds = %if.end13
  %call24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %conv) #7, !dbg !266
  br label %return, !dbg !266

return:                                           ; preds = %if.end13, %if.then23, %if.then8, %if.then10
  %retval.0 = phi i32 [ -1, %if.then10 ], [ -1, %if.then8 ], [ %conv, %if.then23 ], [ %conv, %if.end13 ]
  ret i32 %retval.0, !dbg !268
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_ungetc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8 %ch}, i64 0, metadata !77), !dbg !269
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !78), !dbg !269
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !79), !dbg !270
  %0 = load i32* @dbglvl, align 4, !dbg !271, !tbaa !128
  %cmp = icmp sgt i32 %0, 4, !dbg !271
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @.str15, i64 0, i64 0), i32 %fd) #7, !dbg !271
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3, !dbg !273
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !273

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !274, !tbaa !133
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8]* @.str9, i64 0, i64 0), i32 %fd) #7, !dbg !274
  tail call void @exit(i32 0) #8, !dbg !276
  unreachable, !dbg !276

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64, !dbg !277
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !277
  %2 = load i32* %pos, align 8, !dbg !277, !tbaa !128
  %cmp5 = icmp slt i32 %2, 1, !dbg !277
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !277

if.then6:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !278, !tbaa !133
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), i32 %2) #7, !dbg !278
  tail call void @exit(i32 0) #8, !dbg !280
  unreachable, !dbg !280

if.end11:                                         ; preds = %if.end4
  %dec = add nsw i32 %2, -1, !dbg !281
  store i32 %dec, i32* %pos, align 8, !dbg !281, !tbaa !128
  %idxprom15 = sext i32 %dec to i64, !dbg !281
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !281
  %4 = load i8** %buf, align 8, !dbg !281, !tbaa !133
  %arrayidx18 = getelementptr inbounds i8* %4, i64 %idxprom15, !dbg !281
  %5 = load i8* %arrayidx18, align 1, !dbg !281, !tbaa !116
  %conv19 = zext i8 %ch to i32, !dbg !281
  %cmp20 = icmp eq i8 %5, %ch, !dbg !281
  br i1 %cmp20, label %if.end24, label %if.then22, !dbg !281

if.then22:                                        ; preds = %if.end11
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !282, !tbaa !133
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([72 x i8]* @.str17, i64 0, i64 0), i64 71, i64 1, %struct._IO_FILE* %6), !dbg !282
  tail call void @exit(i32 0) #8, !dbg !284
  unreachable, !dbg !284

if.end24:                                         ; preds = %if.end11
  %8 = load i32* @dbglvl, align 4, !dbg !285, !tbaa !128
  %cmp25 = icmp sgt i32 %8, 4, !dbg !285
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !285

if.then27:                                        ; preds = %if.end24
  %call28 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 0) #7, !dbg !285
  br label %if.end29, !dbg !285

if.end29:                                         ; preds = %if.then27, %if.end24
  ret i32 %conv19, !dbg !287
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_rewind(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !82), !dbg !288
  %idxprom = sext i32 %fd to i64, !dbg !289
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !289
  store i32 0, i32* %pos, align 8, !dbg !289, !tbaa !128
  ret i32 0, !dbg !290
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_reset(i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !85), !dbg !291
  %idxprom = sext i32 %fd to i64, !dbg !292
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !292
  %0 = load i8** %buf, align 8, !dbg !292, !tbaa !133
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1, !dbg !292
  %1 = load i32* %len, align 4, !dbg !292, !tbaa !128
  %conv = sext i32 %1 to i64, !dbg !292
  tail call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %conv, i32 1, i1 false), !dbg !292
  store i32 0, i32* %len, align 4, !dbg !293, !tbaa !128
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !293
  store i32 0, i32* %pos, align 8, !dbg !293, !tbaa !128
  ret i32 0, !dbg !294
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_write(i32 %fd, i8* %buf, i32 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !88), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !89), !dbg !295
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !90), !dbg !295
  %0 = load i32* @dbglvl, align 4, !dbg !296, !tbaa !128
  %cmp = icmp sgt i32 %0, 4, !dbg !296
  br i1 %cmp, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([26 x i8]* @.str18, i64 0, i64 0), i32 %fd, i8* %buf, i32 %size) #7, !dbg !296
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3, !dbg !298
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !298

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !299, !tbaa !133
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i32 %fd) #7, !dbg !299
  tail call void @exit(i32 0) #8, !dbg !301
  unreachable, !dbg !301

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64, !dbg !302
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !302
  %2 = load i32* %pos, align 8, !dbg !302, !tbaa !128
  %idxprom5 = sext i32 %2 to i64, !dbg !302
  %buf8 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !302
  %3 = load i8** %buf8, align 8, !dbg !302, !tbaa !133
  %arrayidx9 = getelementptr inbounds i8* %3, i64 %idxprom5, !dbg !302
  %conv = sext i32 %size to i64, !dbg !302
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %buf, i64 %conv, i32 1, i1 false), !dbg !302
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1, !dbg !303
  %4 = load i32* %len, align 4, !dbg !303, !tbaa !128
  %add = add nsw i32 %4, %size, !dbg !303
  store i32 %add, i32* %len, align 4, !dbg !303, !tbaa !128
  %5 = load i32* %pos, align 8, !dbg !304, !tbaa !128
  %add15 = add nsw i32 %5, %size, !dbg !304
  store i32 %add15, i32* %pos, align 8, !dbg !304, !tbaa !128
  %6 = load i32* @dbglvl, align 4, !dbg !305, !tbaa !128
  %cmp16 = icmp sgt i32 %6, 4, !dbg !305
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !305

if.then18:                                        ; preds = %if.end4
  %call19 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %size) #7, !dbg !305
  br label %if.end20, !dbg !305

if.end20:                                         ; preds = %if.then18, %if.end4
  ret i32 %size, !dbg !307
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_fwrite(i8* %buf, i32 %size, i32 %num, i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !93), !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !94), !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32 %num}, i64 0, metadata !95), !dbg !308
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !96), !dbg !308
  %0 = load i32* @dbglvl, align 4, !dbg !309, !tbaa !128
  %cmp = icmp sgt i32 %0, 4, !dbg !309
  br i1 %cmp, label %if.then, label %if.end, !dbg !309

if.then:                                          ; preds = %entry
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @.str20, i64 0, i64 0), i8* %buf, i32 %size, i32 %num, i32 %fd) #7, !dbg !309
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3, !dbg !311
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !311

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !312, !tbaa !133
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8]* @.str21, i64 0, i64 0), i32 %fd) #7, !dbg !312
  tail call void @exit(i32 0) #8, !dbg !314
  unreachable, !dbg !314

if.end4:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64, !dbg !315
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !315
  %2 = load i32* %pos, align 8, !dbg !315, !tbaa !128
  %idxprom5 = sext i32 %2 to i64, !dbg !315
  %buf8 = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !315
  %3 = load i8** %buf8, align 8, !dbg !315, !tbaa !133
  %arrayidx9 = getelementptr inbounds i8* %3, i64 %idxprom5, !dbg !315
  %mul = mul nsw i32 %num, %size, !dbg !315
  %conv = sext i32 %mul to i64, !dbg !315
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx9, i8* %buf, i64 %conv, i32 1, i1 false), !dbg !315
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1, !dbg !316
  %4 = load i32* %len, align 4, !dbg !316, !tbaa !128
  %add = add nsw i32 %4, %mul, !dbg !316
  store i32 %add, i32* %len, align 4, !dbg !316, !tbaa !128
  %5 = load i32* %pos, align 8, !dbg !317, !tbaa !128
  %add17 = add nsw i32 %5, %mul, !dbg !317
  store i32 %add17, i32* %pos, align 8, !dbg !317, !tbaa !128
  %6 = load i32* @dbglvl, align 4, !dbg !318, !tbaa !128
  %cmp18 = icmp sgt i32 %6, 4, !dbg !318
  br i1 %cmp18, label %if.then20, label %if.end22, !dbg !318

if.then20:                                        ; preds = %if.end4
  %call21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i32 %num) #7, !dbg !318
  br label %if.end22, !dbg !318

if.end22:                                         ; preds = %if.then20, %if.end4
  ret i32 %num, !dbg !320
}

; Function Attrs: nounwind optsize uwtable
define i32 @spec_putc(i8 zeroext %ch, i32 %fd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8 %ch}, i64 0, metadata !99), !dbg !321
  tail call void @llvm.dbg.value(metadata !{i32 %fd}, i64 0, metadata !100), !dbg !321
  %0 = load i32* @dbglvl, align 4, !dbg !322, !tbaa !128
  %cmp = icmp sgt i32 %0, 4, !dbg !322
  br i1 %cmp, label %if.then, label %if.end, !dbg !322

if.then:                                          ; preds = %entry
  %conv = zext i8 %ch to i32, !dbg !322
  %call = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([21 x i8]* @.str22, i64 0, i64 0), i32 %conv, i32 %fd) #7, !dbg !322
  br label %if.end, !dbg !322

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp sgt i32 %fd, 3, !dbg !324
  br i1 %cmp1, label %if.then3, label %if.end5, !dbg !324

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !325, !tbaa !133
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8]* @.str19, i64 0, i64 0), i32 %fd) #7, !dbg !325
  tail call void @exit(i32 0) #8, !dbg !327
  unreachable, !dbg !327

if.end5:                                          ; preds = %if.end
  %idxprom = sext i32 %fd to i64, !dbg !328
  %pos = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 2, !dbg !328
  %2 = load i32* %pos, align 8, !dbg !328, !tbaa !128
  %inc = add nsw i32 %2, 1, !dbg !328
  store i32 %inc, i32* %pos, align 8, !dbg !328, !tbaa !128
  %idxprom6 = sext i32 %2 to i64, !dbg !328
  %buf = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 3, !dbg !328
  %3 = load i8** %buf, align 8, !dbg !328, !tbaa !133
  %arrayidx9 = getelementptr inbounds i8* %3, i64 %idxprom6, !dbg !328
  store i8 %ch, i8* %arrayidx9, align 1, !dbg !328, !tbaa !116
  %len = getelementptr inbounds [3 x %struct.spec_fd_t]* @spec_fd, i64 0, i64 %idxprom, i32 1, !dbg !329
  %4 = load i32* %len, align 4, !dbg !329, !tbaa !128
  %inc12 = add nsw i32 %4, 1, !dbg !329
  store i32 %inc12, i32* %len, align 4, !dbg !329, !tbaa !128
  %conv13 = zext i8 %ch to i32, !dbg !330
  ret i32 %conv13, !dbg !330
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !101, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !14, metadata !24, metadata !37, metadata !50, metadata !60, metadata !69, metadata !73, metadata !80, metadata !83, metadata !86, metadata !91, metadata !97}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ran", metadata !"ran", metadata !"", i32 53, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, double ()* @ran, null, null, metadata !9, i32 63} ; [ DW_TAG_subprogram ] [line 53] [def] [scope 63] [ran]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!9 = metadata !{metadata !10, metadata !12, metadata !13}
!10 = metadata !{i32 786688, metadata !4, metadata !"lo", metadata !5, i32 64, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lo] [line 64]
!11 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786688, metadata !4, metadata !"hi", metadata !5, i32 65, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hi] [line 65]
!13 = metadata !{i32 786688, metadata !4, metadata !"test", metadata !5, i32 66, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [test] [line 66]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_init", metadata !"spec_init", metadata !"", i32 80, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 ()* @spec_init, null, null, metadata !18, i32 80} ; [ DW_TAG_subprogram ] [line 80] [def] [spec_init]
!15 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!18 = metadata !{metadata !19, metadata !20, metadata !21}
!19 = metadata !{i32 786688, metadata !14, metadata !"i", metadata !5, i32 81, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 81]
!20 = metadata !{i32 786688, metadata !14, metadata !"j", metadata !5, i32 81, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 81]
!21 = metadata !{i32 786688, metadata !22, metadata !"limit", metadata !5, i32 88, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 88]
!22 = metadata !{i32 786443, metadata !1, metadata !23, i32 87, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!23 = metadata !{i32 786443, metadata !1, metadata !14, i32 87, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_random_load", metadata !"spec_random_load", metadata !"", i32 103, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @spec_random_load, null, null, metadata !27, i32 103} ; [ DW_TAG_subprogram ] [line 103] [def] [spec_random_load]
!25 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!26 = metadata !{metadata !17, metadata !17}
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31}
!28 = metadata !{i32 786689, metadata !24, metadata !"fd", metadata !5, i32 16777319, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 103]
!29 = metadata !{i32 786688, metadata !24, metadata !"i", metadata !5, i32 110, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 110]
!30 = metadata !{i32 786688, metadata !24, metadata !"j", metadata !5, i32 110, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 110]
!31 = metadata !{i32 786688, metadata !24, metadata !"random_text", metadata !5, i32 111, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [random_text] [line 111]
!32 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 33554432, i64 8, i32 0, i32 0, metadata !33, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 33554432, align 8, offset 0] [from char]
!33 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!34 = metadata !{metadata !35, metadata !36}
!35 = metadata !{i32 786465, i64 0, i64 32}       ; [ DW_TAG_subrange_type ] [0, 31]
!36 = metadata !{i32 786465, i64 0, i64 131072}   ; [ DW_TAG_subrange_type ] [0, 131071]
!37 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_load", metadata !"spec_load", metadata !"", i32 132, metadata !38, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @spec_load, null, null, metadata !41, i32 132} ; [ DW_TAG_subprogram ] [line 132] [def] [spec_load]
!38 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !39, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!39 = metadata !{metadata !17, metadata !17, metadata !40, metadata !17}
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48}
!42 = metadata !{i32 786689, metadata !37, metadata !"num", metadata !5, i32 16777348, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 132]
!43 = metadata !{i32 786689, metadata !37, metadata !"filename", metadata !5, i32 33554564, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 132]
!44 = metadata !{i32 786689, metadata !37, metadata !"size", metadata !5, i32 50331780, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 132]
!45 = metadata !{i32 786688, metadata !37, metadata !"fd", metadata !5, i32 134, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fd] [line 134]
!46 = metadata !{i32 786688, metadata !37, metadata !"rc", metadata !5, i32 134, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 134]
!47 = metadata !{i32 786688, metadata !37, metadata !"i", metadata !5, i32 134, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 134]
!48 = metadata !{i32 786688, metadata !49, metadata !"tmp", metadata !5, i32 155, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 155]
!49 = metadata !{i32 786443, metadata !1, metadata !37, i32 154, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!50 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_read", metadata !"spec_read", metadata !"", i32 164, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @spec_read, null, null, metadata !55, i32 164} ; [ DW_TAG_subprogram ] [line 164] [def] [spec_read]
!51 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!52 = metadata !{metadata !17, metadata !17, metadata !53, metadata !17}
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!54 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59}
!56 = metadata !{i32 786689, metadata !50, metadata !"fd", metadata !5, i32 16777380, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 164]
!57 = metadata !{i32 786689, metadata !50, metadata !"buf", metadata !5, i32 33554596, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 164]
!58 = metadata !{i32 786689, metadata !50, metadata !"size", metadata !5, i32 50331812, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 164]
!59 = metadata !{i32 786688, metadata !50, metadata !"rc", metadata !5, i32 165, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 165]
!60 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_fread", metadata !"spec_fread", metadata !"", i32 185, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32, i32)* @spec_fread, null, null, metadata !63, i32 185} ; [ DW_TAG_subprogram ] [line 185] [def] [spec_fread]
!61 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!62 = metadata !{metadata !17, metadata !53, metadata !17, metadata !17, metadata !17}
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68}
!64 = metadata !{i32 786689, metadata !60, metadata !"buf", metadata !5, i32 16777401, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 185]
!65 = metadata !{i32 786689, metadata !60, metadata !"size", metadata !5, i32 33554617, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 185]
!66 = metadata !{i32 786689, metadata !60, metadata !"num", metadata !5, i32 50331833, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 185]
!67 = metadata !{i32 786689, metadata !60, metadata !"fd", metadata !5, i32 67109049, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 185]
!68 = metadata !{i32 786688, metadata !60, metadata !"rc", metadata !5, i32 186, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 186]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_getc", metadata !"spec_getc", metadata !"", i32 206, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @spec_getc, null, null, metadata !70, i32 206} ; [ DW_TAG_subprogram ] [line 206] [def] [spec_getc]
!70 = metadata !{metadata !71, metadata !72}
!71 = metadata !{i32 786689, metadata !69, metadata !"fd", metadata !5, i32 16777422, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 206]
!72 = metadata !{i32 786688, metadata !69, metadata !"rc", metadata !5, i32 207, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 207]
!73 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_ungetc", metadata !"spec_ungetc", metadata !"", i32 221, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8, i32)* @spec_ungetc, null, null, metadata !76, i32 221} ; [ DW_TAG_subprogram ] [line 221] [def] [spec_ungetc]
!74 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !17, metadata !54, metadata !17}
!76 = metadata !{metadata !77, metadata !78, metadata !79}
!77 = metadata !{i32 786689, metadata !73, metadata !"ch", metadata !5, i32 16777437, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ch] [line 221]
!78 = metadata !{i32 786689, metadata !73, metadata !"fd", metadata !5, i32 33554653, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 221]
!79 = metadata !{i32 786688, metadata !73, metadata !"rc", metadata !5, i32 222, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 222]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_rewind", metadata !"spec_rewind", metadata !"", i32 239, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @spec_rewind, null, null, metadata !81, i32 239} ; [ DW_TAG_subprogram ] [line 239] [def] [spec_rewind]
!81 = metadata !{metadata !82}
!82 = metadata !{i32 786689, metadata !80, metadata !"fd", metadata !5, i32 16777455, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 239]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_reset", metadata !"spec_reset", metadata !"", i32 243, metadata !25, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @spec_reset, null, null, metadata !84, i32 243} ; [ DW_TAG_subprogram ] [line 243] [def] [spec_reset]
!84 = metadata !{metadata !85}
!85 = metadata !{i32 786689, metadata !83, metadata !"fd", metadata !5, i32 16777459, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 243]
!86 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_write", metadata !"spec_write", metadata !"", i32 249, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*, i32)* @spec_write, null, null, metadata !87, i32 249} ; [ DW_TAG_subprogram ] [line 249] [def] [spec_write]
!87 = metadata !{metadata !88, metadata !89, metadata !90}
!88 = metadata !{i32 786689, metadata !86, metadata !"fd", metadata !5, i32 16777465, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 249]
!89 = metadata !{i32 786689, metadata !86, metadata !"buf", metadata !5, i32 33554681, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 249]
!90 = metadata !{i32 786689, metadata !86, metadata !"size", metadata !5, i32 50331897, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 249]
!91 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_fwrite", metadata !"spec_fwrite", metadata !"", i32 261, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i32, i32)* @spec_fwrite, null, null, metadata !92, i32 261} ; [ DW_TAG_subprogram ] [line 261] [def] [spec_fwrite]
!92 = metadata !{metadata !93, metadata !94, metadata !95, metadata !96}
!93 = metadata !{i32 786689, metadata !91, metadata !"buf", metadata !5, i32 16777477, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 261]
!94 = metadata !{i32 786689, metadata !91, metadata !"size", metadata !5, i32 33554693, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 261]
!95 = metadata !{i32 786689, metadata !91, metadata !"num", metadata !5, i32 50331909, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [num] [line 261]
!96 = metadata !{i32 786689, metadata !91, metadata !"fd", metadata !5, i32 67109125, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 261]
!97 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"spec_putc", metadata !"spec_putc", metadata !"", i32 273, metadata !74, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8, i32)* @spec_putc, null, null, metadata !98, i32 273} ; [ DW_TAG_subprogram ] [line 273] [def] [spec_putc]
!98 = metadata !{metadata !99, metadata !100}
!99 = metadata !{i32 786689, metadata !97, metadata !"ch", metadata !5, i32 16777489, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ch] [line 273]
!100 = metadata !{i32 786689, metadata !97, metadata !"fd", metadata !5, i32 33554705, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 273]
!101 = metadata !{metadata !102, metadata !103, metadata !113}
!102 = metadata !{i32 786484, i32 0, null, metadata !"dbglvl", metadata !"dbglvl", metadata !"", metadata !5, i32 28, metadata !17, i32 0, i32 1, i32* @dbglvl, null} ; [ DW_TAG_variable ] [dbglvl] [line 28] [def]
!103 = metadata !{i32 786484, i32 0, null, metadata !"spec_fd", metadata !"spec_fd", metadata !"", metadata !5, i32 50, metadata !104, i32 0, i32 1, [3 x %struct.spec_fd_t]* @spec_fd, null} ; [ DW_TAG_variable ] [spec_fd] [line 50] [def]
!104 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 576, i64 64, i32 0, i32 0, metadata !105, metadata !111, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 64, offset 0] [from spec_fd_t]
!105 = metadata !{i32 786451, metadata !1, null, metadata !"spec_fd_t", i32 45, i64 192, i64 64, i32 0, i32 0, null, metadata !106, i32 0, null, null} ; [ DW_TAG_structure_type ] [spec_fd_t] [line 45, size 192, align 64, offset 0] [from ]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110}
!107 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"limit", i32 46, i64 32, i64 32, i64 0, i32 0, metadata !17} ; [ DW_TAG_member ] [limit] [line 46, size 32, align 32, offset 0] [from int]
!108 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"len", i32 47, i64 32, i64 32, i64 32, i32 0, metadata !17} ; [ DW_TAG_member ] [len] [line 47, size 32, align 32, offset 32] [from int]
!109 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"pos", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [pos] [line 48, size 32, align 32, offset 64] [from int]
!110 = metadata !{i32 786445, metadata !1, metadata !105, metadata !"buf", i32 49, i64 64, i64 64, i64 128, i32 0, metadata !53} ; [ DW_TAG_member ] [buf] [line 49, size 64, align 64, offset 128] [from ]
!111 = metadata !{metadata !112}
!112 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!113 = metadata !{i32 786484, i32 0, null, metadata !"seedi", metadata !"seedi", metadata !"", metadata !5, i32 52, metadata !11, i32 0, i32 1, i64* @seedi, null} ; [ DW_TAG_variable ] [seedi] [line 52] [def]
!114 = metadata !{i32 68, i32 0, metadata !4, null}
!115 = metadata !{metadata !"long", metadata !116}
!116 = metadata !{metadata !"omnipotent char", metadata !117}
!117 = metadata !{metadata !"Simple C/C++ TBAA"}
!118 = metadata !{i32 69, i32 0, metadata !4, null}
!119 = metadata !{i32 70, i32 0, metadata !4, null}
!120 = metadata !{i32 71, i32 0, metadata !4, null}
!121 = metadata !{i32 74, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !4, i32 73, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!123 = metadata !{i32 72, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !4, i32 71, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!125 = metadata !{i32 76, i32 0, metadata !4, null}
!126 = metadata !{i32 82, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !14, i32 82, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!128 = metadata !{metadata !"int", metadata !116}
!129 = metadata !{i32 88, i32 0, metadata !22, null}
!130 = metadata !{i32 89, i32 0, metadata !22, null}
!131 = metadata !{i32 90, i32 0, metadata !22, null}
!132 = metadata !{i32 91, i32 0, metadata !22, null}
!133 = metadata !{metadata !"any pointer", metadata !116}
!134 = metadata !{i32 92, i32 0, metadata !22, null}
!135 = metadata !{i32 96, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !22, i32 96, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!137 = metadata !{i32 93, i32 0, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !22, i32 92, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!139 = metadata !{i32 94, i32 0, metadata !138, null}
!140 = metadata !{i32 97, i32 0, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !136, i32 96, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!142 = metadata !{i32 87, i32 0, metadata !23, null}
!143 = metadata !{i32 100, i32 0, metadata !14, null}
!144 = metadata !{i32 103, i32 0, metadata !24, null}
!145 = metadata !{i32 111, i32 0, metadata !24, null}
!146 = metadata !{i32 113, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !24, i32 113, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!148 = metadata !{i32 115, i32 0, metadata !149, null}
!149 = metadata !{i32 786443, metadata !1, metadata !150, i32 115, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!150 = metadata !{i32 786443, metadata !1, metadata !151, i32 114, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!151 = metadata !{i32 786443, metadata !1, metadata !24, i32 114, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!152 = metadata !{i32 114, i32 0, metadata !151, null}
!153 = metadata !{i32 117, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !155, i32 116, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!155 = metadata !{i32 786443, metadata !1, metadata !150, i32 116, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!156 = metadata !{i32 72, i32 0, metadata !124, metadata !153}
!157 = metadata !{i32 116, i32 0, metadata !155, null}
!158 = metadata !{i32 68, i32 0, metadata !4, metadata !153}
!159 = metadata !{i32 786688, metadata !4, metadata !"hi", metadata !5, i32 65, metadata !11, i32 0, metadata !153} ; [ DW_TAG_auto_variable ] [hi] [line 65]
!160 = metadata !{i32 69, i32 0, metadata !4, metadata !153}
!161 = metadata !{i32 786688, metadata !4, metadata !"lo", metadata !5, i32 64, metadata !11, i32 0, metadata !153} ; [ DW_TAG_auto_variable ] [lo] [line 64]
!162 = metadata !{i32 70, i32 0, metadata !4, metadata !153}
!163 = metadata !{i32 786688, metadata !4, metadata !"test", metadata !5, i32 66, metadata !11, i32 0, metadata !153} ; [ DW_TAG_auto_variable ] [test] [line 66]
!164 = metadata !{i32 71, i32 0, metadata !4, metadata !153}
!165 = metadata !{i32 74, i32 0, metadata !122, metadata !153}
!166 = metadata !{i32 76, i32 0, metadata !4, metadata !153}
!167 = metadata !{i32 121, i32 0, metadata !168, null}
!168 = metadata !{i32 786443, metadata !1, metadata !24, i32 121, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!169 = metadata !{i32 123, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !24, i32 123, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!171 = metadata !{i32 124, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !170, i32 123, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!173 = metadata !{i32 68, i32 0, metadata !4, metadata !171}
!174 = metadata !{i32 786688, metadata !4, metadata !"hi", metadata !5, i32 65, metadata !11, i32 0, metadata !171} ; [ DW_TAG_auto_variable ] [hi] [line 65]
!175 = metadata !{i32 69, i32 0, metadata !4, metadata !171}
!176 = metadata !{i32 786688, metadata !4, metadata !"lo", metadata !5, i32 64, metadata !11, i32 0, metadata !171} ; [ DW_TAG_auto_variable ] [lo] [line 64]
!177 = metadata !{i32 70, i32 0, metadata !4, metadata !171}
!178 = metadata !{i32 786688, metadata !4, metadata !"test", metadata !5, i32 66, metadata !11, i32 0, metadata !171} ; [ DW_TAG_auto_variable ] [test] [line 66]
!179 = metadata !{i32 71, i32 0, metadata !4, metadata !171}
!180 = metadata !{i32 74, i32 0, metadata !122, metadata !171}
!181 = metadata !{i32 72, i32 0, metadata !124, metadata !171}
!182 = metadata !{i32 76, i32 0, metadata !4, metadata !171}
!183 = metadata !{i32 128, i32 0, metadata !24, null}
!184 = metadata !{i32 129, i32 0, metadata !24, null}
!185 = metadata !{i32 130, i32 0, metadata !24, null}
!186 = metadata !{i32 132, i32 0, metadata !37, null}
!187 = metadata !{i32 138, i32 0, metadata !37, null}
!188 = metadata !{i32 139, i32 0, metadata !37, null}
!189 = metadata !{i32 140, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !37, i32 139, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!191 = metadata !{i32 141, i32 0, metadata !190, null}
!192 = metadata !{i32 143, i32 0, metadata !37, null}
!193 = metadata !{i32 144, i32 0, metadata !194, null}
!194 = metadata !{i32 786443, metadata !1, metadata !37, i32 144, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!195 = metadata !{i32 145, i32 0, metadata !196, null}
!196 = metadata !{i32 786443, metadata !1, metadata !194, i32 144, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!197 = metadata !{i32 146, i32 0, metadata !196, null}
!198 = metadata !{i32 147, i32 0, metadata !196, null}
!199 = metadata !{i32 148, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !196, i32 147, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!201 = metadata !{i32 149, i32 0, metadata !200, null}
!202 = metadata !{i32 151, i32 0, metadata !196, null}
!203 = metadata !{i32 153, i32 0, metadata !37, null}
!204 = metadata !{i32 154, i32 0, metadata !37, null}
!205 = metadata !{i32 158, i32 0, metadata !49, null}
!206 = metadata !{i32 155, i32 0, metadata !49, null}
!207 = metadata !{i32 156, i32 0, metadata !49, null}
!208 = metadata !{i32 157, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !49, i32 157, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!210 = metadata !{i32 159, i32 0, metadata !49, null}
!211 = metadata !{i32 161, i32 0, metadata !37, null}
!212 = metadata !{i32 164, i32 0, metadata !50, null}
!213 = metadata !{i32 165, i32 0, metadata !50, null}
!214 = metadata !{i32 166, i32 0, metadata !215, null}
!215 = metadata !{i32 786443, metadata !1, metadata !50, i32 166, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!216 = metadata !{i32 167, i32 0, metadata !50, null}
!217 = metadata !{i32 168, i32 0, metadata !218, null}
!218 = metadata !{i32 786443, metadata !1, metadata !50, i32 167, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!219 = metadata !{i32 169, i32 0, metadata !218, null}
!220 = metadata !{i32 171, i32 0, metadata !50, null}
!221 = metadata !{i32 172, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !223, i32 172, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!223 = metadata !{i32 786443, metadata !1, metadata !50, i32 171, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!224 = metadata !{i32 175, i32 0, metadata !50, null}
!225 = metadata !{i32 176, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !50, i32 175, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!227 = metadata !{i32 180, i32 0, metadata !50, null}
!228 = metadata !{i32 181, i32 0, metadata !50, null}
!229 = metadata !{i32 182, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !50, i32 182, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!231 = metadata !{i32 184, i32 0, metadata !50, null}
!232 = metadata !{i32 185, i32 0, metadata !60, null}
!233 = metadata !{i32 186, i32 0, metadata !60, null}
!234 = metadata !{i32 187, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !60, i32 187, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!236 = metadata !{i32 188, i32 0, metadata !60, null}
!237 = metadata !{i32 189, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !60, i32 188, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!239 = metadata !{i32 190, i32 0, metadata !238, null}
!240 = metadata !{i32 192, i32 0, metadata !60, null}
!241 = metadata !{i32 193, i32 0, metadata !242, null}
!242 = metadata !{i32 786443, metadata !1, metadata !243, i32 193, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!243 = metadata !{i32 786443, metadata !1, metadata !60, i32 192, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!244 = metadata !{i32 196, i32 0, metadata !60, null}
!245 = metadata !{i32 197, i32 0, metadata !246, null}
!246 = metadata !{i32 786443, metadata !1, metadata !60, i32 196, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!247 = metadata !{i32 198, i32 0, metadata !246, null}
!248 = metadata !{i32 201, i32 0, metadata !60, null}
!249 = metadata !{i32 202, i32 0, metadata !60, null}
!250 = metadata !{i32 203, i32 0, metadata !251, null}
!251 = metadata !{i32 786443, metadata !1, metadata !60, i32 203, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!252 = metadata !{i32 205, i32 0, metadata !60, null}
!253 = metadata !{i32 206, i32 0, metadata !69, null}
!254 = metadata !{i32 207, i32 0, metadata !69, null}
!255 = metadata !{i32 208, i32 0, metadata !256, null}
!256 = metadata !{i32 786443, metadata !1, metadata !69, i32 208, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!257 = metadata !{i32 209, i32 0, metadata !69, null}
!258 = metadata !{i32 210, i32 0, metadata !259, null}
!259 = metadata !{i32 786443, metadata !1, metadata !69, i32 209, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!260 = metadata !{i32 211, i32 0, metadata !259, null}
!261 = metadata !{i32 213, i32 0, metadata !69, null}
!262 = metadata !{i32 214, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !264, i32 214, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!264 = metadata !{i32 786443, metadata !1, metadata !69, i32 213, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!265 = metadata !{i32 217, i32 0, metadata !69, null}
!266 = metadata !{i32 218, i32 0, metadata !267, null}
!267 = metadata !{i32 786443, metadata !1, metadata !69, i32 218, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!268 = metadata !{i32 220, i32 0, metadata !69, null}
!269 = metadata !{i32 221, i32 0, metadata !73, null}
!270 = metadata !{i32 222, i32 0, metadata !73, null}
!271 = metadata !{i32 223, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !73, i32 223, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!273 = metadata !{i32 224, i32 0, metadata !73, null}
!274 = metadata !{i32 225, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !73, i32 224, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!276 = metadata !{i32 226, i32 0, metadata !275, null}
!277 = metadata !{i32 228, i32 0, metadata !73, null}
!278 = metadata !{i32 229, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !73, i32 228, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!280 = metadata !{i32 230, i32 0, metadata !279, null}
!281 = metadata !{i32 232, i32 0, metadata !73, null}
!282 = metadata !{i32 233, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !73, i32 232, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!284 = metadata !{i32 234, i32 0, metadata !283, null}
!285 = metadata !{i32 236, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !73, i32 236, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!287 = metadata !{i32 237, i32 0, metadata !73, null}
!288 = metadata !{i32 239, i32 0, metadata !80, null}
!289 = metadata !{i32 240, i32 0, metadata !80, null}
!290 = metadata !{i32 241, i32 0, metadata !80, null}
!291 = metadata !{i32 243, i32 0, metadata !83, null}
!292 = metadata !{i32 244, i32 0, metadata !83, null}
!293 = metadata !{i32 245, i32 0, metadata !83, null}
!294 = metadata !{i32 246, i32 0, metadata !83, null}
!295 = metadata !{i32 249, i32 0, metadata !86, null}
!296 = metadata !{i32 250, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !86, i32 250, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!298 = metadata !{i32 251, i32 0, metadata !86, null}
!299 = metadata !{i32 252, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !86, i32 251, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!301 = metadata !{i32 253, i32 0, metadata !300, null}
!302 = metadata !{i32 255, i32 0, metadata !86, null}
!303 = metadata !{i32 256, i32 0, metadata !86, null}
!304 = metadata !{i32 257, i32 0, metadata !86, null}
!305 = metadata !{i32 258, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !86, i32 258, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!307 = metadata !{i32 259, i32 0, metadata !86, null}
!308 = metadata !{i32 261, i32 0, metadata !91, null}
!309 = metadata !{i32 262, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !91, i32 262, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!311 = metadata !{i32 263, i32 0, metadata !91, null}
!312 = metadata !{i32 264, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !91, i32 263, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!314 = metadata !{i32 265, i32 0, metadata !313, null}
!315 = metadata !{i32 267, i32 0, metadata !91, null}
!316 = metadata !{i32 268, i32 0, metadata !91, null}
!317 = metadata !{i32 269, i32 0, metadata !91, null}
!318 = metadata !{i32 270, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !91, i32 270, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!320 = metadata !{i32 271, i32 0, metadata !91, null}
!321 = metadata !{i32 273, i32 0, metadata !97, null}
!322 = metadata !{i32 274, i32 0, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !97, i32 274, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!324 = metadata !{i32 275, i32 0, metadata !97, null}
!325 = metadata !{i32 276, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !97, i32 275, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/401.bzip2/src/spec.c]
!327 = metadata !{i32 277, i32 0, metadata !326, null}
!328 = metadata !{i32 279, i32 0, metadata !97, null}
!329 = metadata !{i32 280, i32 0, metadata !97, null}
!330 = metadata !{i32 281, i32 0, metadata !97, null}

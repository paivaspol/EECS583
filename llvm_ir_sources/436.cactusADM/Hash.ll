; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.T_HASH = type { i32, i32, i32, %struct.T_HASH_ENTRY** }
%struct.T_HASH_ENTRY = type { %struct.T_HASH_ENTRY*, %struct.T_HASH_ENTRY*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [81 x i8] c"$Header: /cactus/Cactus/src/util/Hash.c,v 1.10 2001/06/25 20:36:46 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_Hash_c() #0 {
entry:
  ret i8* getelementptr inbounds ([81 x i8]* @.str, i64 0, i64 0), !dbg !138
}

; Function Attrs: nounwind optsize uwtable
define noalias %struct.T_HASH* @Util_HashCreate(i32 %initial_size) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %initial_size}, i64 0, metadata !39), !dbg !139
  %call = tail call noalias i8* @malloc(i64 24) #6, !dbg !140
  %0 = bitcast i8* %call to %struct.T_HASH*, !dbg !140
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH* %0}, i64 0, metadata !40), !dbg !140
  %tobool = icmp eq i8* %call, null, !dbg !141
  br i1 %tobool, label %if.end9, label %while.cond, !dbg !141

while.cond:                                       ; preds = %entry, %while.cond
  %storemerge = phi i32 [ %mul, %while.cond ], [ 2, %entry ]
  %cmp = icmp ult i32 %storemerge, %initial_size, !dbg !142
  %mul = shl i32 %storemerge, 1, !dbg !142
  br i1 %cmp, label %while.cond, label %while.end, !dbg !142

while.end:                                        ; preds = %while.cond
  %size = bitcast i8* %call to i32*, !dbg !144
  store i32 %storemerge, i32* %size, align 4, !dbg !142, !tbaa !145
  %fill = getelementptr inbounds i8* %call, i64 4, !dbg !148
  %1 = bitcast i8* %fill to i32*, !dbg !148
  store i32 0, i32* %1, align 4, !dbg !148, !tbaa !145
  %keys = getelementptr inbounds i8* %call, i64 8, !dbg !149
  %2 = bitcast i8* %keys to i32*, !dbg !149
  store i32 0, i32* %2, align 4, !dbg !149, !tbaa !145
  %conv = zext i32 %storemerge to i64, !dbg !150
  %call5 = tail call noalias i8* @calloc(i64 8, i64 %conv) #6, !dbg !150
  %3 = bitcast i8* %call5 to %struct.T_HASH_ENTRY**, !dbg !150
  %array = getelementptr inbounds i8* %call, i64 16, !dbg !150
  %4 = bitcast i8* %array to %struct.T_HASH_ENTRY***, !dbg !150
  store %struct.T_HASH_ENTRY** %3, %struct.T_HASH_ENTRY*** %4, align 8, !dbg !150, !tbaa !151
  %tobool7 = icmp eq i8* %call5, null, !dbg !152
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !152

if.then8:                                         ; preds = %while.end
  tail call void @free(i8* %call) #6, !dbg !153
  tail call void @llvm.dbg.value(metadata !155, i64 0, metadata !40), !dbg !156
  br label %if.end9, !dbg !157

if.end9:                                          ; preds = %while.end, %entry, %if.then8
  %retval1.0 = phi %struct.T_HASH* [ %0, %while.end ], [ null, %if.then8 ], [ %0, %entry ]
  ret %struct.T_HASH* %retval1.0, !dbg !158
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Util_HashDestroy(%struct.T_HASH* nocapture %hash, void (i8*)* %delete_entry) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH* %hash}, i64 0, metadata !49), !dbg !159
  tail call void @llvm.dbg.value(metadata !{void (i8*)* %delete_entry}, i64 0, metadata !50), !dbg !159
  %size2 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 0, !dbg !160
  %0 = load i32* %size2, align 4, !dbg !160, !tbaa !145
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !51), !dbg !160
  %array3 = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 3, !dbg !161
  %1 = load %struct.T_HASH_ENTRY*** %array3, align 8, !dbg !161, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY** %1}, i64 0, metadata !52), !dbg !161
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !55), !dbg !162
  %cmp22 = icmp eq i32 %0, 0, !dbg !162
  br i1 %cmp22, label %for.end9, label %for.body.lr.ph, !dbg !162

for.body.lr.ph:                                   ; preds = %entry
  %tobool7 = icmp eq void (i8*)* %delete_entry, null, !dbg !164
  br label %for.body, !dbg !162

for.body:                                         ; preds = %for.inc8, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc8 ]
  %arrayidx = getelementptr inbounds %struct.T_HASH_ENTRY** %1, i64 %indvars.iv, !dbg !168
  %2 = load %struct.T_HASH_ENTRY** %arrayidx, align 8, !dbg !168, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %2}, i64 0, metadata !53), !dbg !168
  %tobool20 = icmp eq %struct.T_HASH_ENTRY* %2, null, !dbg !168
  br i1 %tobool20, label %for.inc8, label %for.body5, !dbg !168

for.body5:                                        ; preds = %for.body, %if.end
  %entry1.021 = phi %struct.T_HASH_ENTRY* [ %3, %if.end ], [ %2, %for.body ]
  %next6 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.021, i64 0, i32 1, !dbg !169
  %3 = load %struct.T_HASH_ENTRY** %next6, align 8, !dbg !169, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %3}, i64 0, metadata !54), !dbg !169
  %key = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.021, i64 0, i32 4, !dbg !170
  %4 = load i8** %key, align 8, !dbg !170, !tbaa !151
  tail call void @free(i8* %4) #6, !dbg !170
  br i1 %tobool7, label %if.end, label %if.then, !dbg !164

if.then:                                          ; preds = %for.body5
  %data = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.021, i64 0, i32 5, !dbg !171
  %5 = load i8** %data, align 8, !dbg !171, !tbaa !151
  tail call void %delete_entry(i8* %5) #6, !dbg !171
  br label %if.end, !dbg !173

if.end:                                           ; preds = %for.body5, %if.then
  %6 = bitcast %struct.T_HASH_ENTRY* %entry1.021 to i8*, !dbg !174
  tail call void @free(i8* %6) #6, !dbg !174
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %3}, i64 0, metadata !53), !dbg !168
  %tobool = icmp eq %struct.T_HASH_ENTRY* %3, null, !dbg !168
  br i1 %tobool, label %for.inc8, label %for.body5, !dbg !168

for.inc8:                                         ; preds = %if.end, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !162
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !162
  %exitcond = icmp eq i32 %lftr.wideiv, %0, !dbg !162
  br i1 %exitcond, label %for.cond.for.end9_crit_edge, label %for.body, !dbg !162

for.cond.for.end9_crit_edge:                      ; preds = %for.inc8
  %.pre = load %struct.T_HASH_ENTRY*** %array3, align 8, !dbg !175, !tbaa !151
  br label %for.end9, !dbg !162

for.end9:                                         ; preds = %entry, %for.cond.for.end9_crit_edge
  %7 = phi %struct.T_HASH_ENTRY** [ %1, %entry ], [ %.pre, %for.cond.for.end9_crit_edge ]
  %8 = bitcast %struct.T_HASH_ENTRY** %7 to i8*, !dbg !175
  tail call void @free(i8* %8) #6, !dbg !175
  ret i32 0, !dbg !176
}

; Function Attrs: nounwind optsize uwtable
define i32 @Util_HashStore(%struct.T_HASH* nocapture %hash, i32 %klen, i8* nocapture %key, i32 %hashval, i8* %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH* %hash}, i64 0, metadata !60), !dbg !177
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !61), !dbg !178
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !62), !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32 %hashval}, i64 0, metadata !63), !dbg !180
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !64), !dbg !181
  %call = tail call fastcc %struct.T_HASH_ENTRY* @HashFind(%struct.T_HASH* %hash, i32 %klen, i8* %key, i32 %hashval) #7, !dbg !182
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %call}, i64 0, metadata !66), !dbg !182
  %tobool = icmp eq %struct.T_HASH_ENTRY* %call, null, !dbg !183
  br i1 %tobool, label %if.else, label %if.then, !dbg !183

if.then:                                          ; preds = %entry
  %data3 = getelementptr inbounds %struct.T_HASH_ENTRY* %call, i64 0, i32 5, !dbg !184
  store i8* %data, i8** %data3, align 8, !dbg !184, !tbaa !151
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !65), !dbg !186
  br label %if.end, !dbg !187

if.else:                                          ; preds = %entry
  %call4 = tail call i32 @Util_HashAdd(%struct.T_HASH* %hash, i32 %klen, i8* %key, i32 %hashval, i8* %data) #7, !dbg !188
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !65), !dbg !188
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %retval1.0 = phi i32 [ 0, %if.then ], [ %call4, %if.else ]
  ret i32 %retval1.0, !dbg !190
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.T_HASH_ENTRY* @HashFind(%struct.T_HASH* nocapture %hash, i32 %klen, i8* nocapture %key, i32 %hashval) #1 {
entry:
  %location = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.T_HASH* %hash}, i64 0, metadata !130), !dbg !191
  call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !131), !dbg !192
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !132), !dbg !193
  call void @llvm.dbg.value(metadata !{i32 %hashval}, i64 0, metadata !133), !dbg !194
  %tobool = icmp eq i32 %hashval, 0, !dbg !195
  br i1 %tobool, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !196), !dbg !199
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !200), !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !202), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !204), !dbg !205
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !206), !dbg !207
  %tobool1.i = icmp eq i32 %klen, 0, !dbg !208
  br i1 %tobool1.i, label %if.end, label %while.body.i, !dbg !208

while.body.i:                                     ; preds = %if.then, %while.body.i
  %pos.04.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %key, %if.then ]
  %i.03.i = phi i32 [ %dec.i, %while.body.i ], [ %klen, %if.then ]
  %hash.02.i = phi i32 [ %add.i, %while.body.i ], [ 0, %if.then ]
  %dec.i = add nsw i32 %i.03.i, -1, !dbg !208
  %mul.i = mul i32 %hash.02.i, 33, !dbg !209
  %incdec.ptr.i = getelementptr inbounds i8* %pos.04.i, i64 1, !dbg !209
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !204), !dbg !209
  %0 = load i8* %pos.04.i, align 1, !dbg !209, !tbaa !146
  %conv.i = sext i8 %0 to i32, !dbg !209
  %add.i = add i32 %conv.i, %mul.i, !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !206), !dbg !209
  %tobool.i = icmp eq i32 %dec.i, 0, !dbg !208
  br i1 %tobool.i, label %if.end, label %while.body.i, !dbg !208

if.end:                                           ; preds = %while.body.i, %if.then, %entry
  %hashval.addr.0 = phi i32 [ %hashval, %entry ], [ 0, %if.then ], [ %add.i, %while.body.i ]
  %size = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 0, !dbg !211
  %1 = load i32* %size, align 4, !dbg !211, !tbaa !145
  %rem = urem i32 %hashval.addr.0, %1, !dbg !211
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !135), !dbg !211
  store volatile i32 %rem, i32* %location, align 4, !dbg !211
  call void @llvm.dbg.value(metadata !{i32* %location}, i64 0, metadata !135), !dbg !212
  %location.0.load12 = load volatile i32* %location, align 4, !dbg !212
  %idxprom = zext i32 %location.0.load12 to i64, !dbg !212
  %array = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 3, !dbg !212
  %2 = load %struct.T_HASH_ENTRY*** %array, align 8, !dbg !212, !tbaa !151
  %arrayidx = getelementptr inbounds %struct.T_HASH_ENTRY** %2, i64 %idxprom, !dbg !212
  %entry1.013 = load %struct.T_HASH_ENTRY** %arrayidx, align 8, !dbg !212
  %tobool214 = icmp eq %struct.T_HASH_ENTRY* %entry1.013, null, !dbg !213
  br i1 %tobool214, label %for.end, label %for.body, !dbg !213

for.cond:                                         ; preds = %for.body
  %next = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.015, i64 0, i32 1, !dbg !213
  %entry1.0 = load %struct.T_HASH_ENTRY** %next, align 8, !dbg !212
  %tobool2 = icmp eq %struct.T_HASH_ENTRY* %entry1.0, null, !dbg !213
  br i1 %tobool2, label %for.end, label %for.body, !dbg !213

for.body:                                         ; preds = %if.end, %for.cond
  %entry1.015 = phi %struct.T_HASH_ENTRY* [ %entry1.0, %for.cond ], [ %entry1.013, %if.end ]
  %hash3 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.015, i64 0, i32 2, !dbg !215
  %3 = load i32* %hash3, align 4, !dbg !215, !tbaa !145
  %cmp = icmp eq i32 %hashval.addr.0, %3, !dbg !215
  br i1 %cmp, label %for.end, label %for.cond, !dbg !215

for.end:                                          ; preds = %for.cond, %for.body, %if.end
  %entry1.0.lcssa = phi %struct.T_HASH_ENTRY* [ null, %if.end ], [ %entry1.015, %for.body ], [ null, %for.cond ]
  ret %struct.T_HASH_ENTRY* %entry1.0.lcssa, !dbg !217
}

; Function Attrs: nounwind optsize uwtable
define i32 @Util_HashAdd(%struct.T_HASH* nocapture %hash, i32 %klen, i8* nocapture %key, i32 %hashval, i8* %data) #1 {
entry:
  %location.i = alloca i32, align 4
  %location = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.T_HASH* %hash}, i64 0, metadata !69), !dbg !218
  call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !70), !dbg !219
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !71), !dbg !220
  call void @llvm.dbg.value(metadata !{i32 %hashval}, i64 0, metadata !72), !dbg !221
  call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !73), !dbg !222
  %tobool = icmp eq i32 %hashval, 0, !dbg !223
  br i1 %tobool, label %if.then, label %if.end, !dbg !223

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !224), !dbg !227
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !228), !dbg !229
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !230), !dbg !231
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !232), !dbg !233
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !234), !dbg !235
  %tobool1.i = icmp eq i32 %klen, 0, !dbg !236
  br i1 %tobool1.i, label %if.end, label %while.body.i, !dbg !236

while.body.i:                                     ; preds = %if.then, %while.body.i
  %pos.04.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %key, %if.then ]
  %i.03.i = phi i32 [ %dec.i, %while.body.i ], [ %klen, %if.then ]
  %hash.02.i = phi i32 [ %add.i, %while.body.i ], [ 0, %if.then ]
  %dec.i = add nsw i32 %i.03.i, -1, !dbg !236
  %mul.i = mul i32 %hash.02.i, 33, !dbg !237
  %incdec.ptr.i = getelementptr inbounds i8* %pos.04.i, i64 1, !dbg !237
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !232), !dbg !237
  %0 = load i8* %pos.04.i, align 1, !dbg !237, !tbaa !146
  %conv.i = sext i8 %0 to i32, !dbg !237
  %add.i = add i32 %conv.i, %mul.i, !dbg !237
  tail call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !234), !dbg !237
  %tobool.i = icmp eq i32 %dec.i, 0, !dbg !236
  br i1 %tobool.i, label %if.end, label %while.body.i, !dbg !236

if.end:                                           ; preds = %while.body.i, %if.then, %entry
  %hashval.addr.0 = phi i32 [ %hashval, %entry ], [ 0, %if.then ], [ %add.i, %while.body.i ]
  %size = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 0, !dbg !238
  %1 = load i32* %size, align 4, !dbg !238, !tbaa !145
  %rem = urem i32 %hashval.addr.0, %1, !dbg !238
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !77), !dbg !238
  store volatile i32 %rem, i32* %location, align 4, !dbg !238
  call void @llvm.dbg.value(metadata !{i32* %location}, i64 0, metadata !77), !dbg !239
  %location.0.load88 = load volatile i32* %location, align 4, !dbg !239
  %idxprom = zext i32 %location.0.load88 to i64, !dbg !239
  %array = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 3, !dbg !239
  %2 = load %struct.T_HASH_ENTRY*** %array, align 8, !dbg !239, !tbaa !151
  %arrayidx = getelementptr inbounds %struct.T_HASH_ENTRY** %2, i64 %idxprom, !dbg !239
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !79), !dbg !240
  call void @llvm.dbg.value(metadata !241, i64 0, metadata !76), !dbg !242
  %entry2.098 = load %struct.T_HASH_ENTRY** %arrayidx, align 8, !dbg !239
  %tobool399 = icmp eq %struct.T_HASH_ENTRY* %entry2.098, null, !dbg !243
  br i1 %tobool399, label %if.then8, label %while.body, !dbg !243

while.cond:                                       ; preds = %while.body
  %next = getelementptr inbounds %struct.T_HASH_ENTRY* %entry2.0100, i64 0, i32 1, !dbg !244
  %entry2.0 = load %struct.T_HASH_ENTRY** %next, align 8, !dbg !239
  %tobool3 = icmp eq %struct.T_HASH_ENTRY* %entry2.0, null, !dbg !243
  br i1 %tobool3, label %if.then8, label %while.body, !dbg !243

while.body:                                       ; preds = %if.end, %while.cond
  %entry2.0100 = phi %struct.T_HASH_ENTRY* [ %entry2.0, %while.cond ], [ %entry2.098, %if.end ]
  call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %entry2.0100}, i64 0, metadata !76), !dbg !247
  %hash4 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry2.0100, i64 0, i32 2, !dbg !248
  %3 = load i32* %hash4, align 4, !dbg !248, !tbaa !145
  %cmp = icmp eq i32 %hashval.addr.0, %3, !dbg !248
  br i1 %cmp, label %if.end49, label %while.cond, !dbg !248

if.then8:                                         ; preds = %while.cond, %if.end
  %lastentry.0.lcssa = phi %struct.T_HASH_ENTRY* [ null, %if.end ], [ %entry2.0100, %while.cond ]
  %call9 = call noalias i8* @malloc(i64 40) #6, !dbg !249
  %4 = bitcast i8* %call9 to %struct.T_HASH_ENTRY*, !dbg !249
  call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %4}, i64 0, metadata !75), !dbg !249
  %tobool10 = icmp eq i8* %call9, null, !dbg !251
  br i1 %tobool10, label %if.else44, label %if.then11, !dbg !251

if.then11:                                        ; preds = %if.then8
  %hash12 = getelementptr inbounds i8* %call9, i64 16, !dbg !252
  %5 = bitcast i8* %hash12 to i32*, !dbg !252
  store i32 %hashval.addr.0, i32* %5, align 4, !dbg !252, !tbaa !145
  %klen13 = getelementptr inbounds i8* %call9, i64 20, !dbg !254
  %6 = bitcast i8* %klen13 to i32*, !dbg !254
  store i32 %klen, i32* %6, align 4, !dbg !254, !tbaa !145
  %conv = zext i32 %klen to i64, !dbg !255
  %call14 = call noalias i8* @malloc(i64 %conv) #6, !dbg !255
  %key15 = getelementptr inbounds i8* %call9, i64 24, !dbg !255
  %7 = bitcast i8* %key15 to i8**, !dbg !255
  store i8* %call14, i8** %7, align 8, !dbg !255, !tbaa !151
  %data16 = getelementptr inbounds i8* %call9, i64 32, !dbg !256
  %8 = bitcast i8* %data16 to i8**, !dbg !256
  store i8* %data, i8** %8, align 8, !dbg !256, !tbaa !151
  %next17 = getelementptr inbounds i8* %call9, i64 8, !dbg !257
  %9 = bitcast i8* %next17 to %struct.T_HASH_ENTRY**, !dbg !257
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %9, align 8, !dbg !257, !tbaa !151
  %tobool19 = icmp eq i8* %call14, null, !dbg !258
  br i1 %tobool19, label %if.else38, label %for.cond.preheader, !dbg !258

for.cond.preheader:                               ; preds = %if.then11
  %cmp2195 = icmp eq i32 %klen, 0, !dbg !259
  br i1 %cmp2195, label %for.end, label %for.body, !dbg !259

for.body:                                         ; preds = %for.cond.preheader, %for.body.for.body_crit_edge
  %10 = phi i8* [ %.pre, %for.body.for.body_crit_edge ], [ %call14, %for.cond.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  %arrayidx24 = getelementptr inbounds i8* %key, i64 %indvars.iv, !dbg !262
  %11 = load i8* %arrayidx24, align 1, !dbg !262, !tbaa !146
  %arrayidx27 = getelementptr inbounds i8* %10, i64 %indvars.iv, !dbg !262
  store i8 %11, i8* %arrayidx27, align 1, !dbg !262, !tbaa !146
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !259
  %lftr.wideiv101 = trunc i64 %indvars.iv.next to i32, !dbg !259
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %klen, !dbg !259
  br i1 %exitcond102, label %for.end, label %for.body.for.body_crit_edge, !dbg !259

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load i8** %7, align 8, !dbg !262, !tbaa !151
  br label %for.body, !dbg !259

for.end:                                          ; preds = %for.body, %for.cond.preheader
  %tobool28 = icmp eq %struct.T_HASH_ENTRY* %lastentry.0.lcssa, null, !dbg !264
  br i1 %tobool28, label %if.else31, label %if.then29, !dbg !264

if.then29:                                        ; preds = %for.end
  %next30 = getelementptr inbounds %struct.T_HASH_ENTRY* %lastentry.0.lcssa, i64 0, i32 1, !dbg !265
  store %struct.T_HASH_ENTRY* %4, %struct.T_HASH_ENTRY** %next30, align 8, !dbg !265, !tbaa !151
  br label %if.end36, !dbg !267

if.else31:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata !{i32* %location}, i64 0, metadata !77), !dbg !268
  %location.0.load89 = load volatile i32* %location, align 4, !dbg !268
  %idxprom32 = zext i32 %location.0.load89 to i64, !dbg !268
  %12 = load %struct.T_HASH_ENTRY*** %array, align 8, !dbg !268, !tbaa !151
  %arrayidx34 = getelementptr inbounds %struct.T_HASH_ENTRY** %12, i64 %idxprom32, !dbg !268
  store %struct.T_HASH_ENTRY* %4, %struct.T_HASH_ENTRY** %arrayidx34, align 8, !dbg !268, !tbaa !151
  %fill = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 1, !dbg !270
  %13 = load i32* %fill, align 4, !dbg !270, !tbaa !145
  %inc35 = add i32 %13, 1, !dbg !270
  store i32 %inc35, i32* %fill, align 4, !dbg !270, !tbaa !145
  br label %if.end36

if.end36:                                         ; preds = %if.else31, %if.then29
  %last = bitcast i8* %call9 to %struct.T_HASH_ENTRY**, !dbg !271
  store %struct.T_HASH_ENTRY* %lastentry.0.lcssa, %struct.T_HASH_ENTRY** %last, align 8, !dbg !271, !tbaa !151
  %keys = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 2, !dbg !272
  %14 = load i32* %keys, align 4, !dbg !272, !tbaa !145
  %inc37 = add i32 %14, 1, !dbg !272
  store i32 %inc37, i32* %keys, align 4, !dbg !272, !tbaa !145
  br label %if.else44, !dbg !273

if.else38:                                        ; preds = %if.then11
  call void @free(i8* %call9) #6, !dbg !274
  call void @llvm.dbg.value(metadata !241, i64 0, metadata !75), !dbg !276
  br label %if.else44

if.else44:                                        ; preds = %if.end36, %if.else38, %if.then8
  %entry2.1.ph = phi %struct.T_HASH_ENTRY* [ %4, %if.end36 ], [ null, %if.else38 ], [ %4, %if.then8 ]
  %tobool45 = icmp eq %struct.T_HASH_ENTRY* %entry2.1.ph, null, !dbg !277
  %. = select i1 %tobool45, i32 -2, i32 0, !dbg !278
  br label %if.end49, !dbg !278

if.end49:                                         ; preds = %while.body, %if.else44
  %retval1.0 = phi i32 [ %., %if.else44 ], [ -1, %while.body ]
  %location.i.0.cast = bitcast i32* %location.i to i8*, !dbg !280
  call void @llvm.lifetime.start(i64 4, i8* %location.i.0.cast), !dbg !280
  %keys.i = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 2, !dbg !280
  %15 = load i32* %keys.i, align 4, !dbg !280, !tbaa !145
  %fill.i = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 1, !dbg !280
  %16 = load i32* %fill.i, align 4, !dbg !280, !tbaa !145
  %cmp.i = icmp ugt i32 %15, %16, !dbg !280
  br i1 %cmp.i, label %if.then.i, label %HashRehash.exit, !dbg !280

if.then.i:                                        ; preds = %if.end49
  %17 = load i32* %size, align 4, !dbg !282, !tbaa !145
  call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !284) #5, !dbg !282
  %mul.i85 = shl i32 %17, 1, !dbg !285
  call void @llvm.dbg.value(metadata !{i32 %mul.i85}, i64 0, metadata !286) #5, !dbg !285
  %conv.i86 = zext i32 %mul.i85 to i64, !dbg !287
  %call.i = call noalias i8* @calloc(i64 8, i64 %conv.i86) #6, !dbg !287
  %18 = bitcast i8* %call.i to %struct.T_HASH_ENTRY**, !dbg !287
  call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY** %18}, i64 0, metadata !288) #5, !dbg !287
  %19 = load %struct.T_HASH_ENTRY*** %array, align 8, !dbg !289, !tbaa !151
  call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY** %19}, i64 0, metadata !290) #5, !dbg !289
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !291) #5, !dbg !292
  %tobool.i87 = icmp eq i8* %call.i, null, !dbg !293
  br i1 %tobool.i87, label %HashRehash.exit, label %for.cond.preheader.i, !dbg !293

for.cond.preheader.i:                             ; preds = %if.then.i
  %cmp67.i = icmp eq i32 %17, 0, !dbg !294
  br i1 %cmp67.i, label %for.end34.i, label %for.body.i, !dbg !294

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.inc32.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc32.i ], [ 0, %for.cond.preheader.i ]
  %new_fill.08.i = phi i32 [ %new_fill.1.lcssa.i, %for.inc32.i ], [ 0, %for.cond.preheader.i ]
  %arrayidx.i = getelementptr inbounds %struct.T_HASH_ENTRY** %19, i64 %indvars.iv.i, !dbg !297
  %20 = load %struct.T_HASH_ENTRY** %arrayidx.i, align 8, !dbg !297, !tbaa !151
  call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %20}, i64 0, metadata !300) #5, !dbg !297
  %tobool94.i = icmp eq %struct.T_HASH_ENTRY* %20, null, !dbg !297
  br i1 %tobool94.i, label %for.inc32.i, label %for.body10.i, !dbg !297

for.body10.i:                                     ; preds = %for.body.i, %for.inc30.i
  %entry2.06.i = phi %struct.T_HASH_ENTRY* [ %21, %for.inc30.i ], [ %20, %for.body.i ]
  %new_fill.15.i = phi i32 [ %new_fill.2.i, %for.inc30.i ], [ %new_fill.08.i, %for.body.i ]
  %next11.i = getelementptr inbounds %struct.T_HASH_ENTRY* %entry2.06.i, i64 0, i32 1, !dbg !301
  %21 = load %struct.T_HASH_ENTRY** %next11.i, align 8, !dbg !301, !tbaa !151
  call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %21}, i64 0, metadata !303) #5, !dbg !301
  %hash12.i = getelementptr inbounds %struct.T_HASH_ENTRY* %entry2.06.i, i64 0, i32 2, !dbg !304
  %22 = load i32* %hash12.i, align 4, !dbg !304, !tbaa !145
  %rem.i = urem i32 %22, %mul.i85, !dbg !304
  call void @llvm.dbg.value(metadata !{i32 %rem.i}, i64 0, metadata !305) #5, !dbg !304
  store volatile i32 %rem.i, i32* %location.i, align 4, !dbg !304
  call void @llvm.dbg.value(metadata !{i32* %location.i}, i64 0, metadata !305) #5, !dbg !306
  %location.i.0.load = load volatile i32* %location.i, align 4, !dbg !306
  %idxprom13.i = zext i32 %location.i.0.load to i64, !dbg !306
  %arrayidx14.i = getelementptr inbounds %struct.T_HASH_ENTRY** %18, i64 %idxprom13.i, !dbg !306
  %23 = load %struct.T_HASH_ENTRY** %arrayidx14.i, align 8, !dbg !306, !tbaa !151
  %tobool15.i = icmp eq %struct.T_HASH_ENTRY* %23, null, !dbg !306
  br i1 %tobool15.i, label %if.then16.i, label %if.else.i, !dbg !306

if.then16.i:                                      ; preds = %for.body10.i
  %inc.i = add i32 %new_fill.15.i, 1, !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !291) #5, !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %location.i}, i64 0, metadata !305) #5, !dbg !309
  %location.i.0.load91 = load volatile i32* %location.i, align 4, !dbg !309
  %idxprom17.i = zext i32 %location.i.0.load91 to i64, !dbg !309
  %arrayidx18.i = getelementptr inbounds %struct.T_HASH_ENTRY** %18, i64 %idxprom17.i, !dbg !309
  store %struct.T_HASH_ENTRY* %entry2.06.i, %struct.T_HASH_ENTRY** %arrayidx18.i, align 8, !dbg !309, !tbaa !151
  %last.i = getelementptr inbounds %struct.T_HASH_ENTRY* %entry2.06.i, i64 0, i32 0, !dbg !310
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %last.i, align 8, !dbg !310, !tbaa !151
  br label %for.inc30.i, !dbg !311

if.else.i:                                        ; preds = %for.body10.i
  call void @llvm.dbg.value(metadata !{i32* %location.i}, i64 0, metadata !305) #5, !dbg !312
  %location.i.0.load90 = load volatile i32* %location.i, align 4, !dbg !312
  %idxprom20.i = zext i32 %location.i.0.load90 to i64, !dbg !312
  %arrayidx21.i = getelementptr inbounds %struct.T_HASH_ENTRY** %18, i64 %idxprom20.i, !dbg !312
  %24 = load %struct.T_HASH_ENTRY** %arrayidx21.i, align 8, !dbg !312, !tbaa !151
  call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %24}, i64 0, metadata !315) #5, !dbg !312
  br label %for.cond22.i, !dbg !312

for.cond22.i:                                     ; preds = %for.cond22.i, %if.else.i
  %entry23.0.i = phi %struct.T_HASH_ENTRY* [ %24, %if.else.i ], [ %25, %for.cond22.i ]
  %next23.i = getelementptr inbounds %struct.T_HASH_ENTRY* %entry23.0.i, i64 0, i32 1, !dbg !312
  %25 = load %struct.T_HASH_ENTRY** %next23.i, align 8, !dbg !312, !tbaa !151
  %tobool24.i = icmp eq %struct.T_HASH_ENTRY* %25, null, !dbg !312
  br i1 %tobool24.i, label %for.end.i, label %for.cond22.i, !dbg !312

for.end.i:                                        ; preds = %for.cond22.i
  store %struct.T_HASH_ENTRY* %entry2.06.i, %struct.T_HASH_ENTRY** %next23.i, align 8, !dbg !316, !tbaa !151
  %last28.i = getelementptr inbounds %struct.T_HASH_ENTRY* %entry2.06.i, i64 0, i32 0, !dbg !317
  store %struct.T_HASH_ENTRY* %entry23.0.i, %struct.T_HASH_ENTRY** %last28.i, align 8, !dbg !317, !tbaa !151
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.end.i, %if.then16.i
  %new_fill.2.i = phi i32 [ %new_fill.15.i, %for.end.i ], [ %inc.i, %if.then16.i ]
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %next11.i, align 8, !dbg !318, !tbaa !151
  call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %21}, i64 0, metadata !300) #5, !dbg !297
  %tobool9.i = icmp eq %struct.T_HASH_ENTRY* %21, null, !dbg !297
  br i1 %tobool9.i, label %for.inc32.i, label %for.body10.i, !dbg !297

for.inc32.i:                                      ; preds = %for.inc30.i, %for.body.i
  %new_fill.1.lcssa.i = phi i32 [ %new_fill.08.i, %for.body.i ], [ %new_fill.2.i, %for.inc30.i ]
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !294
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32, !dbg !294
  %exitcond = icmp eq i32 %lftr.wideiv, %17, !dbg !294
  br i1 %exitcond, label %for.cond.for.end34_crit_edge.i, label %for.body.i, !dbg !294

for.cond.for.end34_crit_edge.i:                   ; preds = %for.inc32.i
  %.pre.i = load %struct.T_HASH_ENTRY*** %array, align 8, !dbg !319, !tbaa !151
  br label %for.end34.i, !dbg !294

for.end34.i:                                      ; preds = %for.cond.for.end34_crit_edge.i, %for.cond.preheader.i
  %26 = phi %struct.T_HASH_ENTRY** [ %.pre.i, %for.cond.for.end34_crit_edge.i ], [ %19, %for.cond.preheader.i ]
  %new_fill.0.lcssa.i = phi i32 [ %new_fill.1.lcssa.i, %for.cond.for.end34_crit_edge.i ], [ 0, %for.cond.preheader.i ]
  %27 = bitcast %struct.T_HASH_ENTRY** %26 to i8*, !dbg !319
  call void @free(i8* %27) #6, !dbg !319
  store %struct.T_HASH_ENTRY** %18, %struct.T_HASH_ENTRY*** %array, align 8, !dbg !320, !tbaa !151
  store i32 %new_fill.0.lcssa.i, i32* %fill.i, align 4, !dbg !321, !tbaa !145
  store i32 %mul.i85, i32* %size, align 4, !dbg !322, !tbaa !145
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !323) #5, !dbg !324
  br label %HashRehash.exit, !dbg !325

HashRehash.exit:                                  ; preds = %if.end49, %if.then.i, %for.end34.i
  call void @llvm.lifetime.end(i64 4, i8* %location.i.0.cast)
  ret i32 %retval1.0, !dbg !326
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @Util_HashHash(i32 %klen, i8* nocapture %key) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !105), !dbg !327
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !106), !dbg !328
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !108), !dbg !329
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !109), !dbg !330
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !107), !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !108), !dbg !332
  %tobool1 = icmp eq i32 %klen, 0, !dbg !332
  br i1 %tobool1, label %while.end, label %while.body, !dbg !332

while.body:                                       ; preds = %entry, %while.body
  %pos.04 = phi i8* [ %incdec.ptr, %while.body ], [ %key, %entry ]
  %i.03 = phi i32 [ %dec, %while.body ], [ %klen, %entry ]
  %hash.02 = phi i32 [ %add, %while.body ], [ 0, %entry ]
  %dec = add nsw i32 %i.03, -1, !dbg !332
  %mul = mul i32 %hash.02, 33, !dbg !333
  %incdec.ptr = getelementptr inbounds i8* %pos.04, i64 1, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !109), !dbg !333
  %0 = load i8* %pos.04, align 1, !dbg !333, !tbaa !146
  %conv = sext i8 %0 to i32, !dbg !333
  %add = add i32 %conv, %mul, !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !107), !dbg !333
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !108), !dbg !332
  %tobool = icmp eq i32 %dec, 0, !dbg !332
  br i1 %tobool, label %while.end, label %while.body, !dbg !332

while.end:                                        ; preds = %while.body, %entry
  %hash.0.lcssa = phi i32 [ 0, %entry ], [ %add, %while.body ]
  ret i32 %hash.0.lcssa, !dbg !334
}

; Function Attrs: nounwind optsize uwtable
define i32 @Util_HashDelete(%struct.T_HASH* nocapture %hash, i32 %klen, i8* nocapture %key, i32 %hashval) #1 {
entry:
  %location = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.T_HASH* %hash}, i64 0, metadata !85), !dbg !335
  call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !86), !dbg !336
  call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !87), !dbg !337
  call void @llvm.dbg.value(metadata !{i32 %hashval}, i64 0, metadata !88), !dbg !338
  %tobool = icmp eq i32 %hashval, 0, !dbg !339
  br i1 %tobool, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !340), !dbg !343
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !344), !dbg !345
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !346), !dbg !347
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !348), !dbg !349
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !350), !dbg !351
  %tobool1.i = icmp eq i32 %klen, 0, !dbg !352
  br i1 %tobool1.i, label %if.end, label %while.body.i, !dbg !352

while.body.i:                                     ; preds = %if.then, %while.body.i
  %pos.04.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %key, %if.then ]
  %i.03.i = phi i32 [ %dec.i, %while.body.i ], [ %klen, %if.then ]
  %hash.02.i = phi i32 [ %add.i, %while.body.i ], [ 0, %if.then ]
  %dec.i = add nsw i32 %i.03.i, -1, !dbg !352
  %mul.i = mul i32 %hash.02.i, 33, !dbg !353
  %incdec.ptr.i = getelementptr inbounds i8* %pos.04.i, i64 1, !dbg !353
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !348), !dbg !353
  %0 = load i8* %pos.04.i, align 1, !dbg !353, !tbaa !146
  %conv.i = sext i8 %0 to i32, !dbg !353
  %add.i = add i32 %conv.i, %mul.i, !dbg !353
  tail call void @llvm.dbg.value(metadata !{i32 %add.i}, i64 0, metadata !350), !dbg !353
  %tobool.i = icmp eq i32 %dec.i, 0, !dbg !352
  br i1 %tobool.i, label %if.end, label %while.body.i, !dbg !352

if.end:                                           ; preds = %while.body.i, %if.then, %entry
  %hashval.addr.0 = phi i32 [ %hashval, %entry ], [ 0, %if.then ], [ %add.i, %while.body.i ]
  %size = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 0, !dbg !354
  %1 = load i32* %size, align 4, !dbg !354, !tbaa !145
  %rem = urem i32 %hashval.addr.0, %1, !dbg !354
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !90), !dbg !354
  store volatile i32 %rem, i32* %location, align 4, !dbg !354
  call void @llvm.dbg.value(metadata !{i32* %location}, i64 0, metadata !90), !dbg !355
  %location.0.load74 = load volatile i32* %location, align 4, !dbg !355
  %array = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 3, !dbg !355
  %2 = load %struct.T_HASH_ENTRY*** %array, align 8, !dbg !355, !tbaa !151
  call void @llvm.dbg.value(metadata !{i32* %location}, i64 0, metadata !90), !dbg !356
  %location.0.load75 = load volatile i32* %location, align 4, !dbg !356
  %idxprom2 = zext i32 %location.0.load75 to i64, !dbg !356
  %arrayidx4 = getelementptr inbounds %struct.T_HASH_ENTRY** %2, i64 %idxprom2, !dbg !356
  br label %for.cond, !dbg !356

for.cond:                                         ; preds = %for.body, %if.end
  %entry1.0.in = phi %struct.T_HASH_ENTRY** [ %arrayidx4, %if.end ], [ %next11, %for.body ]
  %entry1.0 = load %struct.T_HASH_ENTRY** %entry1.0.in, align 8, !dbg !356
  %tobool5 = icmp eq %struct.T_HASH_ENTRY* %entry1.0, null, !dbg !356
  br i1 %tobool5, label %if.end45, label %for.body, !dbg !356

for.body:                                         ; preds = %for.cond
  %hash6 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.0, i64 0, i32 2, !dbg !358
  %3 = load i32* %hash6, align 4, !dbg !358, !tbaa !145
  %cmp = icmp eq i32 %hashval.addr.0, %3, !dbg !358
  %next11 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.0, i64 0, i32 1, !dbg !360
  br i1 %cmp, label %if.then10, label %for.cond, !dbg !358

if.then10:                                        ; preds = %for.body
  %4 = load %struct.T_HASH_ENTRY** %next11, align 8, !dbg !360, !tbaa !151
  %tobool12 = icmp eq %struct.T_HASH_ENTRY* %4, null, !dbg !360
  %last21.phi.trans.insert = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.0, i64 0, i32 0
  %.pre = load %struct.T_HASH_ENTRY** %last21.phi.trans.insert, align 8, !dbg !362, !tbaa !151
  %tobool22 = icmp eq %struct.T_HASH_ENTRY* %.pre, null, !dbg !362
  br i1 %tobool12, label %if.else, label %land.lhs.true, !dbg !360

land.lhs.true:                                    ; preds = %if.then10
  %last31 = getelementptr inbounds %struct.T_HASH_ENTRY* %4, i64 0, i32 0, !dbg !363
  br i1 %tobool22, label %if.then29, label %if.then14, !dbg !360

if.then14:                                        ; preds = %land.lhs.true
  store %struct.T_HASH_ENTRY* %.pre, %struct.T_HASH_ENTRY** %last31, align 8, !dbg !365, !tbaa !151
  %5 = load %struct.T_HASH_ENTRY** %next11, align 8, !dbg !367, !tbaa !151
  %6 = load %struct.T_HASH_ENTRY** %last21.phi.trans.insert, align 8, !dbg !367, !tbaa !151
  %next20 = getelementptr inbounds %struct.T_HASH_ENTRY* %6, i64 0, i32 1, !dbg !367
  store %struct.T_HASH_ENTRY* %5, %struct.T_HASH_ENTRY** %next20, align 8, !dbg !367, !tbaa !151
  br label %if.end42, !dbg !368

if.else:                                          ; preds = %if.then10
  br i1 %tobool22, label %if.else36, label %if.then23, !dbg !362

if.then23:                                        ; preds = %if.else
  %next25 = getelementptr inbounds %struct.T_HASH_ENTRY* %.pre, i64 0, i32 1, !dbg !369
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %next25, align 8, !dbg !369, !tbaa !151
  br label %if.end42, !dbg !371

if.then29:                                        ; preds = %land.lhs.true
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %last31, align 8, !dbg !363, !tbaa !151
  %7 = load %struct.T_HASH_ENTRY** %next11, align 8, !dbg !372, !tbaa !151
  call void @llvm.dbg.value(metadata !{i32* %location}, i64 0, metadata !90), !dbg !372
  %location.0.load76 = load volatile i32* %location, align 4, !dbg !372
  %idxprom33 = zext i32 %location.0.load76 to i64, !dbg !372
  %8 = load %struct.T_HASH_ENTRY*** %array, align 8, !dbg !372, !tbaa !151
  %arrayidx35 = getelementptr inbounds %struct.T_HASH_ENTRY** %8, i64 %idxprom33, !dbg !372
  store %struct.T_HASH_ENTRY* %7, %struct.T_HASH_ENTRY** %arrayidx35, align 8, !dbg !372, !tbaa !151
  br label %if.end42, !dbg !373

if.else36:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata !{i32* %location}, i64 0, metadata !90), !dbg !374
  %location.0.load77 = load volatile i32* %location, align 4, !dbg !374
  %idxprom37 = zext i32 %location.0.load77 to i64, !dbg !374
  %9 = load %struct.T_HASH_ENTRY*** %array, align 8, !dbg !374, !tbaa !151
  %arrayidx39 = getelementptr inbounds %struct.T_HASH_ENTRY** %9, i64 %idxprom37, !dbg !374
  store %struct.T_HASH_ENTRY* null, %struct.T_HASH_ENTRY** %arrayidx39, align 8, !dbg !374, !tbaa !151
  %fill = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 1, !dbg !376
  %10 = load i32* %fill, align 4, !dbg !376, !tbaa !145
  %dec = add i32 %10, -1, !dbg !376
  store i32 %dec, i32* %fill, align 4, !dbg !376, !tbaa !145
  br label %if.end42

if.end42:                                         ; preds = %if.then23, %if.else36, %if.then29, %if.then14
  %key43 = getelementptr inbounds %struct.T_HASH_ENTRY* %entry1.0, i64 0, i32 4, !dbg !377
  %11 = load i8** %key43, align 8, !dbg !377, !tbaa !151
  call void @free(i8* %11) #6, !dbg !377
  %12 = bitcast %struct.T_HASH_ENTRY* %entry1.0 to i8*, !dbg !378
  call void @free(i8* %12) #6, !dbg !378
  %keys = getelementptr inbounds %struct.T_HASH* %hash, i64 0, i32 2, !dbg !379
  %13 = load i32* %keys, align 4, !dbg !379, !tbaa !145
  %dec44 = add i32 %13, -1, !dbg !379
  store i32 %dec44, i32* %keys, align 4, !dbg !379, !tbaa !145
  br label %if.end45, !dbg !380

if.end45:                                         ; preds = %for.cond, %if.end42
  %tobool583 = phi i32 [ 1, %if.end42 ], [ 0, %for.cond ]
  ret i32 %tobool583, !dbg !381
}

; Function Attrs: nounwind optsize uwtable
define i8* @Util_HashData(%struct.T_HASH* nocapture %hash, i32 %klen, i8* nocapture %key, i32 %hashval) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH* %hash}, i64 0, metadata !95), !dbg !382
  tail call void @llvm.dbg.value(metadata !{i32 %klen}, i64 0, metadata !96), !dbg !383
  tail call void @llvm.dbg.value(metadata !{i8* %key}, i64 0, metadata !97), !dbg !384
  tail call void @llvm.dbg.value(metadata !{i32 %hashval}, i64 0, metadata !98), !dbg !385
  %call = tail call fastcc %struct.T_HASH_ENTRY* @HashFind(%struct.T_HASH* %hash, i32 %klen, i8* %key, i32 %hashval) #7, !dbg !386
  tail call void @llvm.dbg.value(metadata !{%struct.T_HASH_ENTRY* %call}, i64 0, metadata !100), !dbg !386
  %tobool = icmp eq %struct.T_HASH_ENTRY* %call, null, !dbg !387
  br i1 %tobool, label %if.end, label %if.then, !dbg !387

if.then:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.T_HASH_ENTRY* %call, i64 0, i32 5, !dbg !388
  %0 = load i8** %data, align 8, !dbg !388, !tbaa !151
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !99), !dbg !388
  br label %if.end, !dbg !390

if.end:                                           ; preds = %entry, %if.then
  %retval1.0 = phi i8* [ %0, %if.then ], [ null, %entry ]
  ret i8* %retval1.0, !dbg !391
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !136, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !41, metadata !56, metadata !67, metadata !81, metadata !91, metadata !101, metadata !110, metadata !126}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_Hash_c", metadata !"CCTKi_version_util_Hash_c", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_Hash_c, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [CCTKi_version_util_Hash_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_HashCreate", metadata !"Util_HashCreate", metadata !"", i32 79, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.T_HASH* (i32)* @Util_HashCreate, null, null, metadata !38, i32 80} ; [ DW_TAG_subprogram ] [line 79] [def] [scope 80] [Util_HashCreate]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !20}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from uHash]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"uHash", i32 39, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [uHash] [line 39, size 0, align 0, offset 0] [from T_HASH]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"T_HASH", i32 32, i64 192, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [T_HASH] [line 32, size 192, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/util_Hash.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !23}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"size", i32 34, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [size] [line 34, size 32, align 32, offset 0] [from unsigned int]
!20 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"fill", i32 35, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [fill] [line 35, size 32, align 32, offset 32] [from unsigned int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"keys", i32 36, i64 32, i64 32, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [keys] [line 36, size 32, align 32, offset 64] [from unsigned int]
!23 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"array", i32 38, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [array] [line 38, size 64, align 64, offset 128] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iHashEntry]
!26 = metadata !{i32 786454, metadata !17, null, metadata !"iHashEntry", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [iHashEntry] [line 30, size 0, align 0, offset 0] [from T_HASH_ENTRY]
!27 = metadata !{i32 786451, metadata !17, null, metadata !"T_HASH_ENTRY", i32 19, i64 320, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [T_HASH_ENTRY] [line 19, size 320, align 64, offset 0] [from ]
!28 = metadata !{metadata !29, metadata !31, metadata !32, metadata !33, metadata !34, metadata !36}
!29 = metadata !{i32 786445, metadata !17, metadata !27, metadata !"last", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [last] [line 21, size 64, align 64, offset 0] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from T_HASH_ENTRY]
!31 = metadata !{i32 786445, metadata !17, metadata !27, metadata !"next", i32 22, i64 64, i64 64, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [next] [line 22, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786445, metadata !17, metadata !27, metadata !"hash", i32 24, i64 32, i64 32, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [hash] [line 24, size 32, align 32, offset 128] [from unsigned int]
!33 = metadata !{i32 786445, metadata !17, metadata !27, metadata !"klen", i32 26, i64 32, i64 32, i64 160, i32 0, metadata !20} ; [ DW_TAG_member ] [klen] [line 26, size 32, align 32, offset 160] [from unsigned int]
!34 = metadata !{i32 786445, metadata !17, metadata !27, metadata !"key", i32 27, i64 64, i64 64, i64 192, i32 0, metadata !35} ; [ DW_TAG_member ] [key] [line 27, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!36 = metadata !{i32 786445, metadata !17, metadata !27, metadata !"data", i32 29, i64 64, i64 64, i64 256, i32 0, metadata !37} ; [ DW_TAG_member ] [data] [line 29, size 64, align 64, offset 256] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{metadata !39, metadata !40}
!39 = metadata !{i32 786689, metadata !11, metadata !"initial_size", metadata !5, i32 16777295, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [initial_size] [line 79]
!40 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 81, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 81]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_HashDestroy", metadata !"Util_HashDestroy", metadata !"", i32 144, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.T_HASH*, void (i8*)*)* @Util_HashDestroy, null, null, metadata !48, i32 145} ; [ DW_TAG_subprogram ] [line 144] [def] [scope 145] [Util_HashDestroy]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !14, metadata !45}
!44 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!46 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!47 = metadata !{null, metadata !37}
!48 = metadata !{metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55}
!49 = metadata !{i32 786689, metadata !41, metadata !"hash", metadata !5, i32 16777360, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 144]
!50 = metadata !{i32 786689, metadata !41, metadata !"delete_entry", metadata !5, i32 33554576, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delete_entry] [line 144]
!51 = metadata !{i32 786688, metadata !41, metadata !"size", metadata !5, i32 146, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 146]
!52 = metadata !{i32 786688, metadata !41, metadata !"array", metadata !5, i32 148, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array] [line 148]
!53 = metadata !{i32 786688, metadata !41, metadata !"entry", metadata !5, i32 149, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 149]
!54 = metadata !{i32 786688, metadata !41, metadata !"next", metadata !5, i32 150, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 150]
!55 = metadata !{i32 786688, metadata !41, metadata !"location", metadata !5, i32 152, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [location] [line 152]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_HashStore", metadata !"Util_HashStore", metadata !"", i32 232, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.T_HASH*, i32, i8*, i32, i8*)* @Util_HashStore, null, null, metadata !59, i32 237} ; [ DW_TAG_subprogram ] [line 232] [def] [scope 237] [Util_HashStore]
!57 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{metadata !44, metadata !14, metadata !20, metadata !8, metadata !20, metadata !37}
!59 = metadata !{metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66}
!60 = metadata !{i32 786689, metadata !56, metadata !"hash", metadata !5, i32 16777448, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 232]
!61 = metadata !{i32 786689, metadata !56, metadata !"klen", metadata !5, i32 33554665, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [klen] [line 233]
!62 = metadata !{i32 786689, metadata !56, metadata !"key", metadata !5, i32 50331882, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 234]
!63 = metadata !{i32 786689, metadata !56, metadata !"hashval", metadata !5, i32 67109099, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashval] [line 235]
!64 = metadata !{i32 786689, metadata !56, metadata !"data", metadata !5, i32 83886316, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 236]
!65 = metadata !{i32 786688, metadata !56, metadata !"retval", metadata !5, i32 238, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 238]
!66 = metadata !{i32 786688, metadata !56, metadata !"entry", metadata !5, i32 239, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 239]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_HashAdd", metadata !"Util_HashAdd", metadata !"", i32 314, metadata !57, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.T_HASH*, i32, i8*, i32, i8*)* @Util_HashAdd, null, null, metadata !68, i32 319} ; [ DW_TAG_subprogram ] [line 314] [def] [scope 319] [Util_HashAdd]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !79, metadata !80}
!69 = metadata !{i32 786689, metadata !67, metadata !"hash", metadata !5, i32 16777530, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 314]
!70 = metadata !{i32 786689, metadata !67, metadata !"klen", metadata !5, i32 33554747, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [klen] [line 315]
!71 = metadata !{i32 786689, metadata !67, metadata !"key", metadata !5, i32 50331964, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 316]
!72 = metadata !{i32 786689, metadata !67, metadata !"hashval", metadata !5, i32 67109181, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashval] [line 317]
!73 = metadata !{i32 786689, metadata !67, metadata !"data", metadata !5, i32 83886398, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 318]
!74 = metadata !{i32 786688, metadata !67, metadata !"retval", metadata !5, i32 320, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 320]
!75 = metadata !{i32 786688, metadata !67, metadata !"entry", metadata !5, i32 321, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 321]
!76 = metadata !{i32 786688, metadata !67, metadata !"lastentry", metadata !5, i32 322, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lastentry] [line 322]
!77 = metadata !{i32 786688, metadata !67, metadata !"location", metadata !5, i32 324, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [location] [line 324]
!78 = metadata !{i32 786485, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from unsigned int]
!79 = metadata !{i32 786688, metadata !67, metadata !"duplicate", metadata !5, i32 325, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [duplicate] [line 325]
!80 = metadata !{i32 786688, metadata !67, metadata !"i", metadata !5, i32 326, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 326]
!81 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_HashDelete", metadata !"Util_HashDelete", metadata !"", i32 470, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.T_HASH*, i32, i8*, i32)* @Util_HashDelete, null, null, metadata !84, i32 474} ; [ DW_TAG_subprogram ] [line 470] [def] [scope 474] [Util_HashDelete]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !44, metadata !14, metadata !20, metadata !8, metadata !20}
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!85 = metadata !{i32 786689, metadata !81, metadata !"hash", metadata !5, i32 16777686, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 470]
!86 = metadata !{i32 786689, metadata !81, metadata !"klen", metadata !5, i32 33554903, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [klen] [line 471]
!87 = metadata !{i32 786689, metadata !81, metadata !"key", metadata !5, i32 50332120, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 472]
!88 = metadata !{i32 786689, metadata !81, metadata !"hashval", metadata !5, i32 67109337, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashval] [line 473]
!89 = metadata !{i32 786688, metadata !81, metadata !"entry", metadata !5, i32 475, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 475]
!90 = metadata !{i32 786688, metadata !81, metadata !"location", metadata !5, i32 478, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [location] [line 478]
!91 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_HashData", metadata !"Util_HashData", metadata !"", i32 583, metadata !92, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.T_HASH*, i32, i8*, i32)* @Util_HashData, null, null, metadata !94, i32 587} ; [ DW_TAG_subprogram ] [line 583] [def] [scope 587] [Util_HashData]
!92 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!93 = metadata !{metadata !37, metadata !14, metadata !20, metadata !8, metadata !20}
!94 = metadata !{metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100}
!95 = metadata !{i32 786689, metadata !91, metadata !"hash", metadata !5, i32 16777799, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 583]
!96 = metadata !{i32 786689, metadata !91, metadata !"klen", metadata !5, i32 33555016, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [klen] [line 584]
!97 = metadata !{i32 786689, metadata !91, metadata !"key", metadata !5, i32 50332233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 585]
!98 = metadata !{i32 786689, metadata !91, metadata !"hashval", metadata !5, i32 67109450, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashval] [line 586]
!99 = metadata !{i32 786688, metadata !91, metadata !"retval", metadata !5, i32 588, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 588]
!100 = metadata !{i32 786688, metadata !91, metadata !"entry", metadata !5, i32 589, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 589]
!101 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_HashHash", metadata !"Util_HashHash", metadata !"", i32 645, metadata !102, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @Util_HashHash, null, null, metadata !104, i32 647} ; [ DW_TAG_subprogram ] [line 645] [def] [scope 647] [Util_HashHash]
!102 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!103 = metadata !{metadata !20, metadata !20, metadata !8}
!104 = metadata !{metadata !105, metadata !106, metadata !107, metadata !108, metadata !109}
!105 = metadata !{i32 786689, metadata !101, metadata !"klen", metadata !5, i32 16777861, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [klen] [line 645]
!106 = metadata !{i32 786689, metadata !101, metadata !"key", metadata !5, i32 33555078, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 646]
!107 = metadata !{i32 786688, metadata !101, metadata !"hash", metadata !5, i32 648, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 648]
!108 = metadata !{i32 786688, metadata !101, metadata !"i", metadata !5, i32 649, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 649]
!109 = metadata !{i32 786688, metadata !101, metadata !"pos", metadata !5, i32 650, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 650]
!110 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"HashRehash", metadata !"HashRehash", metadata !"", i32 785, metadata !111, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !113, i32 786} ; [ DW_TAG_subprogram ] [line 785] [local] [def] [scope 786] [HashRehash]
!111 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!112 = metadata !{metadata !44, metadata !14}
!113 = metadata !{metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!114 = metadata !{i32 786689, metadata !110, metadata !"hash", metadata !5, i32 16778001, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 785]
!115 = metadata !{i32 786688, metadata !110, metadata !"retval", metadata !5, i32 787, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 787]
!116 = metadata !{i32 786688, metadata !110, metadata !"old_size", metadata !5, i32 789, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_size] [line 789]
!117 = metadata !{i32 786688, metadata !110, metadata !"new_size", metadata !5, i32 790, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_size] [line 790]
!118 = metadata !{i32 786688, metadata !110, metadata !"old_location", metadata !5, i32 792, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_location] [line 792]
!119 = metadata !{i32 786688, metadata !110, metadata !"location", metadata !5, i32 795, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [location] [line 795]
!120 = metadata !{i32 786688, metadata !110, metadata !"new_fill", metadata !5, i32 797, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_fill] [line 797]
!121 = metadata !{i32 786688, metadata !110, metadata !"oldarray", metadata !5, i32 799, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldarray] [line 799]
!122 = metadata !{i32 786688, metadata !110, metadata !"newarray", metadata !5, i32 800, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newarray] [line 800]
!123 = metadata !{i32 786688, metadata !110, metadata !"entry", metadata !5, i32 802, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 802]
!124 = metadata !{i32 786688, metadata !110, metadata !"next", metadata !5, i32 803, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 803]
!125 = metadata !{i32 786688, metadata !110, metadata !"entry2", metadata !5, i32 804, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry2] [line 804]
!126 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"HashFind", metadata !"HashFind", metadata !"", i32 723, metadata !127, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.T_HASH_ENTRY* (%struct.T_HASH*, i32, i8*, i32)* @HashFind, null, null, metadata !129, i32 727} ; [ DW_TAG_subprogram ] [line 723] [local] [def] [scope 727] [HashFind]
!127 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{metadata !25, metadata !14, metadata !20, metadata !8, metadata !20}
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!130 = metadata !{i32 786689, metadata !126, metadata !"hash", metadata !5, i32 16777939, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 723]
!131 = metadata !{i32 786689, metadata !126, metadata !"klen", metadata !5, i32 33555156, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [klen] [line 724]
!132 = metadata !{i32 786689, metadata !126, metadata !"key", metadata !5, i32 50332373, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [key] [line 725]
!133 = metadata !{i32 786689, metadata !126, metadata !"hashval", metadata !5, i32 67109590, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hashval] [line 726]
!134 = metadata !{i32 786688, metadata !126, metadata !"entry", metadata !5, i32 728, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 728]
!135 = metadata !{i32 786688, metadata !126, metadata !"location", metadata !5, i32 731, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [location] [line 731]
!136 = metadata !{metadata !137}
!137 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 21, metadata !8, i32 1, i32 1, null, null}
!138 = metadata !{i32 23, i32 0, metadata !4, null}
!139 = metadata !{i32 79, i32 0, metadata !11, null}
!140 = metadata !{i32 83, i32 0, metadata !11, null}
!141 = metadata !{i32 85, i32 0, metadata !11, null}
!142 = metadata !{i32 92, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !11, i32 86, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!144 = metadata !{i32 87, i32 0, metadata !143, null}
!145 = metadata !{metadata !"int", metadata !146}
!146 = metadata !{metadata !"omnipotent char", metadata !147}
!147 = metadata !{metadata !"Simple C/C++ TBAA"}
!148 = metadata !{i32 94, i32 0, metadata !143, null}
!149 = metadata !{i32 95, i32 0, metadata !143, null}
!150 = metadata !{i32 97, i32 0, metadata !143, null}
!151 = metadata !{metadata !"any pointer", metadata !146}
!152 = metadata !{i32 99, i32 0, metadata !143, null}
!153 = metadata !{i32 101, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !143, i32 100, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!155 = metadata !{%struct.T_HASH* null}
!156 = metadata !{i32 103, i32 0, metadata !154, null}
!157 = metadata !{i32 104, i32 0, metadata !154, null}
!158 = metadata !{i32 108, i32 0, metadata !11, null}
!159 = metadata !{i32 144, i32 0, metadata !41, null}
!160 = metadata !{i32 154, i32 0, metadata !41, null}
!161 = metadata !{i32 155, i32 0, metadata !41, null}
!162 = metadata !{i32 157, i32 0, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !41, i32 157, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!164 = metadata !{i32 163, i32 0, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !166, i32 160, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!166 = metadata !{i32 786443, metadata !1, metadata !167, i32 159, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!167 = metadata !{i32 786443, metadata !1, metadata !163, i32 158, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!168 = metadata !{i32 159, i32 0, metadata !166, null}
!169 = metadata !{i32 161, i32 0, metadata !165, null}
!170 = metadata !{i32 162, i32 0, metadata !165, null}
!171 = metadata !{i32 165, i32 0, metadata !172, null}
!172 = metadata !{i32 786443, metadata !1, metadata !165, i32 164, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!173 = metadata !{i32 166, i32 0, metadata !172, null}
!174 = metadata !{i32 167, i32 0, metadata !165, null}
!175 = metadata !{i32 170, i32 0, metadata !41, null}
!176 = metadata !{i32 171, i32 0, metadata !41, null}
!177 = metadata !{i32 232, i32 0, metadata !56, null}
!178 = metadata !{i32 233, i32 0, metadata !56, null}
!179 = metadata !{i32 234, i32 0, metadata !56, null}
!180 = metadata !{i32 235, i32 0, metadata !56, null}
!181 = metadata !{i32 236, i32 0, metadata !56, null}
!182 = metadata !{i32 241, i32 0, metadata !56, null}
!183 = metadata !{i32 243, i32 0, metadata !56, null}
!184 = metadata !{i32 245, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !56, i32 244, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!186 = metadata !{i32 246, i32 0, metadata !185, null}
!187 = metadata !{i32 247, i32 0, metadata !185, null}
!188 = metadata !{i32 250, i32 0, metadata !189, null}
!189 = metadata !{i32 786443, metadata !1, metadata !56, i32 249, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!190 = metadata !{i32 253, i32 0, metadata !56, null}
!191 = metadata !{i32 723, i32 0, metadata !126, null}
!192 = metadata !{i32 724, i32 0, metadata !126, null}
!193 = metadata !{i32 725, i32 0, metadata !126, null}
!194 = metadata !{i32 726, i32 0, metadata !126, null}
!195 = metadata !{i32 734, i32 0, metadata !126, null}
!196 = metadata !{i32 786689, metadata !101, metadata !"klen", metadata !5, i32 16777861, metadata !20, i32 0, metadata !197} ; [ DW_TAG_arg_variable ] [klen] [line 645]
!197 = metadata !{i32 736, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !126, i32 735, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!199 = metadata !{i32 645, i32 0, metadata !101, metadata !197}
!200 = metadata !{i32 786689, metadata !101, metadata !"key", metadata !5, i32 33555078, metadata !8, i32 0, metadata !197} ; [ DW_TAG_arg_variable ] [key] [line 646]
!201 = metadata !{i32 646, i32 0, metadata !101, metadata !197}
!202 = metadata !{i32 786688, metadata !101, metadata !"i", metadata !5, i32 649, metadata !44, i32 0, metadata !197} ; [ DW_TAG_auto_variable ] [i] [line 649]
!203 = metadata !{i32 652, i32 0, metadata !101, metadata !197}
!204 = metadata !{i32 786688, metadata !101, metadata !"pos", metadata !5, i32 650, metadata !8, i32 0, metadata !197} ; [ DW_TAG_auto_variable ] [pos] [line 650]
!205 = metadata !{i32 653, i32 0, metadata !101, metadata !197}
!206 = metadata !{i32 786688, metadata !101, metadata !"hash", metadata !5, i32 648, metadata !20, i32 0, metadata !197} ; [ DW_TAG_auto_variable ] [hash] [line 648]
!207 = metadata !{i32 655, i32 0, metadata !101, metadata !197}
!208 = metadata !{i32 657, i32 0, metadata !101, metadata !197}
!209 = metadata !{i32 659, i32 0, metadata !210, metadata !197}
!210 = metadata !{i32 786443, metadata !1, metadata !101, i32 658, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!211 = metadata !{i32 740, i32 0, metadata !126, null}
!212 = metadata !{i32 743, i32 0, metadata !126, null}
!213 = metadata !{i32 746, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !126, i32 746, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!215 = metadata !{i32 748, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !214, i32 747, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!217 = metadata !{i32 754, i32 0, metadata !126, null}
!218 = metadata !{i32 314, i32 0, metadata !67, null}
!219 = metadata !{i32 315, i32 0, metadata !67, null}
!220 = metadata !{i32 316, i32 0, metadata !67, null}
!221 = metadata !{i32 317, i32 0, metadata !67, null}
!222 = metadata !{i32 318, i32 0, metadata !67, null}
!223 = metadata !{i32 329, i32 0, metadata !67, null}
!224 = metadata !{i32 786689, metadata !101, metadata !"klen", metadata !5, i32 16777861, metadata !20, i32 0, metadata !225} ; [ DW_TAG_arg_variable ] [klen] [line 645]
!225 = metadata !{i32 331, i32 0, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !67, i32 330, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!227 = metadata !{i32 645, i32 0, metadata !101, metadata !225}
!228 = metadata !{i32 786689, metadata !101, metadata !"key", metadata !5, i32 33555078, metadata !8, i32 0, metadata !225} ; [ DW_TAG_arg_variable ] [key] [line 646]
!229 = metadata !{i32 646, i32 0, metadata !101, metadata !225}
!230 = metadata !{i32 786688, metadata !101, metadata !"i", metadata !5, i32 649, metadata !44, i32 0, metadata !225} ; [ DW_TAG_auto_variable ] [i] [line 649]
!231 = metadata !{i32 652, i32 0, metadata !101, metadata !225}
!232 = metadata !{i32 786688, metadata !101, metadata !"pos", metadata !5, i32 650, metadata !8, i32 0, metadata !225} ; [ DW_TAG_auto_variable ] [pos] [line 650]
!233 = metadata !{i32 653, i32 0, metadata !101, metadata !225}
!234 = metadata !{i32 786688, metadata !101, metadata !"hash", metadata !5, i32 648, metadata !20, i32 0, metadata !225} ; [ DW_TAG_auto_variable ] [hash] [line 648]
!235 = metadata !{i32 655, i32 0, metadata !101, metadata !225}
!236 = metadata !{i32 657, i32 0, metadata !101, metadata !225}
!237 = metadata !{i32 659, i32 0, metadata !210, metadata !225}
!238 = metadata !{i32 335, i32 0, metadata !67, null}
!239 = metadata !{i32 338, i32 0, metadata !67, null}
!240 = metadata !{i32 340, i32 0, metadata !67, null}
!241 = metadata !{%struct.T_HASH_ENTRY* null}
!242 = metadata !{i32 345, i32 0, metadata !67, null}
!243 = metadata !{i32 346, i32 0, metadata !67, null}
!244 = metadata !{i32 356, i32 0, metadata !245, null}
!245 = metadata !{i32 786443, metadata !1, metadata !246, i32 355, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!246 = metadata !{i32 786443, metadata !1, metadata !67, i32 347, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!247 = metadata !{i32 348, i32 0, metadata !246, null}
!248 = metadata !{i32 349, i32 0, metadata !246, null}
!249 = metadata !{i32 363, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !67, i32 361, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!251 = metadata !{i32 365, i32 0, metadata !250, null}
!252 = metadata !{i32 367, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !250, i32 366, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!254 = metadata !{i32 368, i32 0, metadata !253, null}
!255 = metadata !{i32 369, i32 0, metadata !253, null}
!256 = metadata !{i32 370, i32 0, metadata !253, null}
!257 = metadata !{i32 371, i32 0, metadata !253, null}
!258 = metadata !{i32 373, i32 0, metadata !253, null}
!259 = metadata !{i32 375, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !261, i32 375, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!261 = metadata !{i32 786443, metadata !1, metadata !253, i32 374, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!262 = metadata !{i32 377, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !260, i32 376, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!264 = metadata !{i32 381, i32 0, metadata !261, null}
!265 = metadata !{i32 383, i32 0, metadata !266, null}
!266 = metadata !{i32 786443, metadata !1, metadata !261, i32 382, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!267 = metadata !{i32 384, i32 0, metadata !266, null}
!268 = metadata !{i32 387, i32 0, metadata !269, null}
!269 = metadata !{i32 786443, metadata !1, metadata !261, i32 386, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!270 = metadata !{i32 388, i32 0, metadata !269, null}
!271 = metadata !{i32 391, i32 0, metadata !261, null}
!272 = metadata !{i32 392, i32 0, metadata !261, null}
!273 = metadata !{i32 393, i32 0, metadata !261, null}
!274 = metadata !{i32 396, i32 0, metadata !275, null}
!275 = metadata !{i32 786443, metadata !1, metadata !253, i32 395, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!276 = metadata !{i32 397, i32 0, metadata !275, null}
!277 = metadata !{i32 406, i32 0, metadata !67, null}
!278 = metadata !{i32 409, i32 0, metadata !279, null}
!279 = metadata !{i32 786443, metadata !1, metadata !67, i32 407, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!280 = metadata !{i32 806, i32 0, metadata !110, metadata !281}
!281 = metadata !{i32 415, i32 0, metadata !67, null}
!282 = metadata !{i32 808, i32 0, metadata !283, metadata !281}
!283 = metadata !{i32 786443, metadata !1, metadata !110, i32 807, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!284 = metadata !{i32 786688, metadata !110, metadata !"old_size", metadata !5, i32 789, metadata !20, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [old_size] [line 789]
!285 = metadata !{i32 809, i32 0, metadata !283, metadata !281}
!286 = metadata !{i32 786688, metadata !110, metadata !"new_size", metadata !5, i32 790, metadata !20, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [new_size] [line 790]
!287 = metadata !{i32 810, i32 0, metadata !283, metadata !281}
!288 = metadata !{i32 786688, metadata !110, metadata !"newarray", metadata !5, i32 800, metadata !24, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [newarray] [line 800]
!289 = metadata !{i32 811, i32 0, metadata !283, metadata !281}
!290 = metadata !{i32 786688, metadata !110, metadata !"oldarray", metadata !5, i32 799, metadata !24, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [oldarray] [line 799]
!291 = metadata !{i32 786688, metadata !110, metadata !"new_fill", metadata !5, i32 797, metadata !20, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [new_fill] [line 797]
!292 = metadata !{i32 812, i32 0, metadata !283, metadata !281}
!293 = metadata !{i32 819, i32 0, metadata !283, metadata !281}
!294 = metadata !{i32 821, i32 0, metadata !295, metadata !281}
!295 = metadata !{i32 786443, metadata !1, metadata !296, i32 821, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!296 = metadata !{i32 786443, metadata !1, metadata !283, i32 820, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!297 = metadata !{i32 824, i32 0, metadata !298, metadata !281}
!298 = metadata !{i32 786443, metadata !1, metadata !299, i32 824, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!299 = metadata !{i32 786443, metadata !1, metadata !295, i32 822, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!300 = metadata !{i32 786688, metadata !110, metadata !"entry", metadata !5, i32 802, metadata !25, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [entry] [line 802]
!301 = metadata !{i32 826, i32 0, metadata !302, metadata !281}
!302 = metadata !{i32 786443, metadata !1, metadata !298, i32 825, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!303 = metadata !{i32 786688, metadata !110, metadata !"next", metadata !5, i32 803, metadata !25, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [next] [line 803]
!304 = metadata !{i32 828, i32 0, metadata !302, metadata !281}
!305 = metadata !{i32 786688, metadata !110, metadata !"location", metadata !5, i32 795, metadata !78, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [location] [line 795]
!306 = metadata !{i32 830, i32 0, metadata !302, metadata !281}
!307 = metadata !{i32 832, i32 0, metadata !308, metadata !281}
!308 = metadata !{i32 786443, metadata !1, metadata !302, i32 831, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!309 = metadata !{i32 833, i32 0, metadata !308, metadata !281}
!310 = metadata !{i32 834, i32 0, metadata !308, metadata !281}
!311 = metadata !{i32 836, i32 0, metadata !308, metadata !281}
!312 = metadata !{i32 840, i32 0, metadata !313, metadata !281}
!313 = metadata !{i32 786443, metadata !1, metadata !314, i32 840, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!314 = metadata !{i32 786443, metadata !1, metadata !302, i32 838, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!315 = metadata !{i32 786688, metadata !110, metadata !"entry2", metadata !5, i32 804, metadata !25, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [entry2] [line 804]
!316 = metadata !{i32 843, i32 0, metadata !314, metadata !281}
!317 = metadata !{i32 844, i32 0, metadata !314, metadata !281}
!318 = metadata !{i32 845, i32 0, metadata !314, metadata !281}
!319 = metadata !{i32 851, i32 0, metadata !296, metadata !281}
!320 = metadata !{i32 853, i32 0, metadata !296, metadata !281}
!321 = metadata !{i32 854, i32 0, metadata !296, metadata !281}
!322 = metadata !{i32 855, i32 0, metadata !296, metadata !281}
!323 = metadata !{i32 786688, metadata !110, metadata !"retval", metadata !5, i32 787, metadata !44, i32 0, metadata !281} ; [ DW_TAG_auto_variable ] [retval] [line 787]
!324 = metadata !{i32 856, i32 0, metadata !296, metadata !281}
!325 = metadata !{i32 857, i32 0, metadata !296, metadata !281}
!326 = metadata !{i32 417, i32 0, metadata !67, null}
!327 = metadata !{i32 645, i32 0, metadata !101, null}
!328 = metadata !{i32 646, i32 0, metadata !101, null}
!329 = metadata !{i32 652, i32 0, metadata !101, null}
!330 = metadata !{i32 653, i32 0, metadata !101, null}
!331 = metadata !{i32 655, i32 0, metadata !101, null}
!332 = metadata !{i32 657, i32 0, metadata !101, null}
!333 = metadata !{i32 659, i32 0, metadata !210, null}
!334 = metadata !{i32 666, i32 0, metadata !101, null}
!335 = metadata !{i32 470, i32 0, metadata !81, null}
!336 = metadata !{i32 471, i32 0, metadata !81, null}
!337 = metadata !{i32 472, i32 0, metadata !81, null}
!338 = metadata !{i32 473, i32 0, metadata !81, null}
!339 = metadata !{i32 481, i32 0, metadata !81, null}
!340 = metadata !{i32 786689, metadata !101, metadata !"klen", metadata !5, i32 16777861, metadata !20, i32 0, metadata !341} ; [ DW_TAG_arg_variable ] [klen] [line 645]
!341 = metadata !{i32 483, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !81, i32 482, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!343 = metadata !{i32 645, i32 0, metadata !101, metadata !341}
!344 = metadata !{i32 786689, metadata !101, metadata !"key", metadata !5, i32 33555078, metadata !8, i32 0, metadata !341} ; [ DW_TAG_arg_variable ] [key] [line 646]
!345 = metadata !{i32 646, i32 0, metadata !101, metadata !341}
!346 = metadata !{i32 786688, metadata !101, metadata !"i", metadata !5, i32 649, metadata !44, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [i] [line 649]
!347 = metadata !{i32 652, i32 0, metadata !101, metadata !341}
!348 = metadata !{i32 786688, metadata !101, metadata !"pos", metadata !5, i32 650, metadata !8, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [pos] [line 650]
!349 = metadata !{i32 653, i32 0, metadata !101, metadata !341}
!350 = metadata !{i32 786688, metadata !101, metadata !"hash", metadata !5, i32 648, metadata !20, i32 0, metadata !341} ; [ DW_TAG_auto_variable ] [hash] [line 648]
!351 = metadata !{i32 655, i32 0, metadata !101, metadata !341}
!352 = metadata !{i32 657, i32 0, metadata !101, metadata !341}
!353 = metadata !{i32 659, i32 0, metadata !210, metadata !341}
!354 = metadata !{i32 487, i32 0, metadata !81, null}
!355 = metadata !{i32 490, i32 0, metadata !81, null}
!356 = metadata !{i32 493, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !81, i32 493, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!358 = metadata !{i32 495, i32 0, metadata !359, null}
!359 = metadata !{i32 786443, metadata !1, metadata !357, i32 494, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!360 = metadata !{i32 504, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !81, i32 502, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!362 = metadata !{i32 509, i32 0, metadata !361, null}
!363 = metadata !{i32 515, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !361, i32 514, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!365 = metadata !{i32 506, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !361, i32 505, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!367 = metadata !{i32 507, i32 0, metadata !366, null}
!368 = metadata !{i32 508, i32 0, metadata !366, null}
!369 = metadata !{i32 511, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !361, i32 510, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!371 = metadata !{i32 512, i32 0, metadata !370, null}
!372 = metadata !{i32 516, i32 0, metadata !364, null}
!373 = metadata !{i32 517, i32 0, metadata !364, null}
!374 = metadata !{i32 520, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !361, i32 519, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!376 = metadata !{i32 521, i32 0, metadata !375, null}
!377 = metadata !{i32 524, i32 0, metadata !361, null}
!378 = metadata !{i32 525, i32 0, metadata !361, null}
!379 = metadata !{i32 527, i32 0, metadata !361, null}
!380 = metadata !{i32 528, i32 0, metadata !361, null}
!381 = metadata !{i32 530, i32 0, metadata !81, null}
!382 = metadata !{i32 583, i32 0, metadata !91, null}
!383 = metadata !{i32 584, i32 0, metadata !91, null}
!384 = metadata !{i32 585, i32 0, metadata !91, null}
!385 = metadata !{i32 586, i32 0, metadata !91, null}
!386 = metadata !{i32 591, i32 0, metadata !91, null}
!387 = metadata !{i32 593, i32 0, metadata !91, null}
!388 = metadata !{i32 595, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !91, i32 594, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Hash.c]
!390 = metadata !{i32 596, i32 0, metadata !389, null}
!391 = metadata !{i32 602, i32 0, metadata !91, null}

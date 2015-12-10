; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in InpMtx_coordType(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [52 x i8] c"\0A fatal error in InpMtx_storageMode(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [50 x i8] c"\0A fatal error in InpMtx_inputMode(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"\0A fatal error in InpMtx_maxnent(%p)\0A bad input\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"\0A fatal error in InpMtx_nent(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [51 x i8] c"\0A fatal error in InpMtx_maxnvector(%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [48 x i8] c"\0A fatal error in InpMtx_nvector(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"\0A fatal error in InpMtx_resizeMultiple(%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [46 x i8] c"\0A fatal error in InpMtx_ivec1(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [46 x i8] c"\0A fatal error in InpMtx_ivec2(%p)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [45 x i8] c"\0A fatal error in InpMtx_dvec(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [46 x i8] c"\0A fatal error in InpMtx_sizes(%p)\0A bad input\0A\00", align 1
@.str12 = private unnamed_addr constant [47 x i8] c"\0A fatal error in InpMtx_vecids(%p)\0A bad input\0A\00", align 1
@.str13 = private unnamed_addr constant [48 x i8] c"\0A fatal error in InpMtx_offsets(%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [56 x i8] c"\0A fatal error in InpMtx_vector(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [83 x i8] c"\0A fatal error in InpMtx_vector(%p,%d,%p,%p)\0A NULL input, pnent = %p, pindices = %p\00", align 1
@.str16 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_realVector(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str17 = private unnamed_addr constant [91 x i8] c"\0A fatal error in InpMtx_realVector(%p,%d,%p,%p,%p)\0A storageMode must be INPMTX_BY_VECTORS\0A\00", align 1
@.str18 = private unnamed_addr constant [105 x i8] c"\0A fatal error in InpMtx_realVector(%p,%d,%p,%p,%p)\0A NULL input, pnent = %p, pindices = %p, pentries = %p\00", align 1
@.str19 = private unnamed_addr constant [66 x i8] c"\0A fatal error in InpMtx_complexVector(%p,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str20 = private unnamed_addr constant [95 x i8] c"\0A fatal error in InpMtx_complexVector(%p,%d,%p,%p,%p)\0A storage mode muse be INPMTX_BY_VECTORS\0A\00", align 1
@.str21 = private unnamed_addr constant [108 x i8] c"\0A fatal error in InpMtx_complexVector(%p,%d,%p,%p,%p)\0A NULL input, pnent = %p, pindices = %p, pentries = %p\00", align 1
@.str22 = private unnamed_addr constant [55 x i8] c"\0A fatal error in InpMtx_setMaxnent(%p, %d)\0A bad input\0A\00", align 1
@.str23 = private unnamed_addr constant [51 x i8] c"\0A fatal error in InpMtx_setNent(%p,%d)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [55 x i8] c"\0A fatal error in InpMtx_Maxnvector(%p, %d)\0A bad input\0A\00", align 1
@.str25 = private unnamed_addr constant [55 x i8] c"\0A fatal error in InpMtx_setNvector(%p, %d)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [61 x i8] c"\0A fatal error in InpMtx_setResizeMultiple(%p,%f)\0A bad input\0A\00", align 1
@.str27 = private unnamed_addr constant [56 x i8] c"\0A fatal error in InpMtx_setCoordType(%p,%d)\0A bad input\0A\00", align 1
@.str28 = private unnamed_addr constant [68 x i8] c"\0A fatal error in InpMtx_setCoordType\0A reserved coordinate type %d \0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_coordType(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !48), !dbg !154
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !155
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !156, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !156
  tail call void @exit(i32 -1) #6, !dbg !161
  unreachable, !dbg !161

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !162
  %1 = load i32* %coordType, align 4, !dbg !162, !tbaa !163
  ret i32 %1, !dbg !162
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_storageMode(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !51), !dbg !164
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !165
  br i1 %cmp, label %if.then, label %if.end, !dbg !165

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !166, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !166
  tail call void @exit(i32 -1) #6, !dbg !168
  unreachable, !dbg !168

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !169
  %1 = load i32* %storageMode, align 4, !dbg !169, !tbaa !163
  ret i32 %1, !dbg !169
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_inputMode(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !54), !dbg !170
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !171
  br i1 %cmp, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !172, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !172
  tail call void @exit(i32 -1) #6, !dbg !174
  unreachable, !dbg !174

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !175
  %1 = load i32* %inputMode, align 4, !dbg !175, !tbaa !163
  ret i32 %1, !dbg !175
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_maxnent(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !57), !dbg !176
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !177
  br i1 %cmp, label %if.then, label %if.end, !dbg !177

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !178
  tail call void @exit(i32 -1) #6, !dbg !180
  unreachable, !dbg !180

if.end:                                           ; preds = %entry
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !181
  %1 = load i32* %maxnent, align 4, !dbg !181, !tbaa !163
  ret i32 %1, !dbg !181
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_nent(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !60), !dbg !182
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !183
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !184, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !184
  tail call void @exit(i32 -1) #6, !dbg !186
  unreachable, !dbg !186

if.end:                                           ; preds = %entry
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !187
  %1 = load i32* %nent, align 4, !dbg !187, !tbaa !163
  ret i32 %1, !dbg !187
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_maxnvector(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !63), !dbg !188
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !189
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !190, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !190
  tail call void @exit(i32 -1) #6, !dbg !192
  unreachable, !dbg !192

if.end:                                           ; preds = %entry
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9, !dbg !193
  %1 = load i32* %maxnvector, align 4, !dbg !193, !tbaa !163
  ret i32 %1, !dbg !193
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_nvector(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !66), !dbg !194
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !196, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !196
  tail call void @exit(i32 -1) #6, !dbg !198
  unreachable, !dbg !198

if.end:                                           ; preds = %entry
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !199
  %1 = load i32* %nvector, align 4, !dbg !199, !tbaa !163
  ret i32 %1, !dbg !199
}

; Function Attrs: nounwind optsize uwtable
define double @InpMtx_resizeMultiple(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !71), !dbg !200
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !201
  br i1 %cmp, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !202, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !202
  tail call void @exit(i32 -1) #6, !dbg !204
  unreachable, !dbg !204

if.end:                                           ; preds = %entry
  %resizeMultiple = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5, !dbg !205
  %1 = load double* %resizeMultiple, align 8, !dbg !205, !tbaa !206
  ret double %1, !dbg !205
}

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !76), !dbg !207
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !208
  br i1 %cmp, label %if.then, label %if.end, !dbg !208

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !209, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !209
  tail call void @exit(i32 -1) #6, !dbg !211
  unreachable, !dbg !211

if.end:                                           ; preds = %entry
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !212
  %call1 = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #5, !dbg !212
  ret i32* %call1, !dbg !212
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !79), !dbg !213
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !214
  br i1 %cmp, label %if.then, label %if.end, !dbg !214

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !215, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str9, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !215
  tail call void @exit(i32 -1) #6, !dbg !217
  unreachable, !dbg !217

if.end:                                           ; preds = %entry
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !218
  %call1 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #5, !dbg !218
  ret i32* %call1, !dbg !218
}

; Function Attrs: nounwind optsize uwtable
define double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !84), !dbg !219
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !220
  br i1 %cmp, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str10, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !221
  tail call void @exit(i32 -1) #6, !dbg !223
  unreachable, !dbg !223

if.end:                                           ; preds = %entry
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !224
  %call1 = tail call double* @DV_entries(%struct._DV* %dvecDV) #5, !dbg !224
  ret double* %call1, !dbg !224
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_sizes(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !87), !dbg !225
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !226
  br i1 %cmp, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !227, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !227
  tail call void @exit(i32 -1) #6, !dbg !229
  unreachable, !dbg !229

if.end:                                           ; preds = %entry
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !230
  %call1 = tail call i32* @IV_entries(%struct._IV* %sizesIV) #5, !dbg !230
  ret i32* %call1, !dbg !230
}

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_vecids(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !90), !dbg !231
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !232
  br i1 %cmp, label %if.then, label %if.end, !dbg !232

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !233, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str12, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !233
  tail call void @exit(i32 -1) #6, !dbg !235
  unreachable, !dbg !235

if.end:                                           ; preds = %entry
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !236
  %call1 = tail call i32* @IV_entries(%struct._IV* %vecidsIV) #5, !dbg !236
  ret i32* %call1, !dbg !236
}

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_offsets(%struct._InpMtx* %inpmtx) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !93), !dbg !237
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !238
  br i1 %cmp, label %if.then, label %if.end, !dbg !238

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !239, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str13, i64 0, i64 0), %struct._InpMtx* null) #5, !dbg !239
  tail call void @exit(i32 -1) #6, !dbg !241
  unreachable, !dbg !241

if.end:                                           ; preds = %entry
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !242
  %call1 = tail call i32* @IV_entries(%struct._IV* %offsetsIV) #5, !dbg !242
  ret i32* %call1, !dbg !242
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_vector(%struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !99), !dbg !243
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !100), !dbg !244
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !101), !dbg !245
  tail call void @llvm.dbg.value(metadata !{i32** %pindices}, i64 0, metadata !102), !dbg !246
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !247
  br i1 %cmp, label %if.then, label %if.end, !dbg !247

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !248, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* null, i32 %id, i32* %pnent, i32** %pindices) #5, !dbg !248
  tail call void @exit(i32 -1) #6, !dbg !250
  unreachable, !dbg !250

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !251
  %1 = load i32* %storageMode, align 4, !dbg !251, !tbaa !163
  %cmp1 = icmp eq i32 %1, 3, !dbg !251
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !251

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !252, !tbaa !158
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices) #5, !dbg !252
  tail call void @exit(i32 -1) #6, !dbg !254
  unreachable, !dbg !254

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32* %pnent, null, !dbg !255
  %cmp6 = icmp eq i32** %pindices, null, !dbg !255
  %or.cond = or i1 %cmp5, %cmp6, !dbg !255
  br i1 %or.cond, label %if.then7, label %if.end9, !dbg !255

if.then7:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !256, !tbaa !158
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([83 x i8]* @.str15, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, i32* %pnent, i32** %pindices) #5, !dbg !256
  tail call void @exit(i32 -1) #6, !dbg !258
  unreachable, !dbg !258

if.end9:                                          ; preds = %if.end4
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !259
  %call10 = tail call i32 @IV_findValueAscending(%struct._IV* %vecidsIV, i32 %id) #5, !dbg !259
  tail call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !103), !dbg !259
  %cmp11 = icmp eq i32 %call10, -1, !dbg !260
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !260

if.then12:                                        ; preds = %if.end9
  store i32 0, i32* %pnent, align 4, !dbg !261, !tbaa !163
  br label %if.end17, !dbg !263

if.else:                                          ; preds = %if.end9
  %idxprom = sext i32 %call10 to i64, !dbg !264
  %vec = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, i32 3, !dbg !264
  %4 = load i32** %vec, align 8, !dbg !264, !tbaa !158
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !264
  %5 = load i32* %arrayidx, align 4, !dbg !264, !tbaa !163
  store i32 %5, i32* %pnent, align 4, !dbg !264, !tbaa !163
  %vec14 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, i32 3, !dbg !266
  %6 = load i32** %vec14, align 8, !dbg !266, !tbaa !158
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %idxprom, !dbg !266
  %7 = load i32* %arrayidx15, align 4, !dbg !266, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !104), !dbg !266
  %vec16 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, i32 3, !dbg !267
  %8 = load i32** %vec16, align 8, !dbg !267, !tbaa !158
  %idx.ext = sext i32 %7 to i64, !dbg !267
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext, !dbg !267
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %storemerge = phi i32* [ %add.ptr, %if.else ], [ null, %if.then12 ]
  store i32* %storemerge, i32** %pindices, align 8, !dbg !268, !tbaa !158
  ret void, !dbg !269
}

; Function Attrs: optsize
declare i32 @IV_findValueAscending(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_realVector(%struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !110), !dbg !270
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !111), !dbg !271
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !112), !dbg !272
  tail call void @llvm.dbg.value(metadata !{i32** %pindices}, i64 0, metadata !113), !dbg !273
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !114), !dbg !274
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !275
  br i1 %cmp, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !276, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str16, i64 0, i64 0), %struct._InpMtx* null, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #5, !dbg !276
  tail call void @exit(i32 -1) #6, !dbg !278
  unreachable, !dbg !278

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !279
  %1 = load i32* %storageMode, align 4, !dbg !279, !tbaa !163
  %cmp1 = icmp eq i32 %1, 3, !dbg !279
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !279

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !280, !tbaa !158
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str17, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #5, !dbg !280
  tail call void @exit(i32 -1) #6, !dbg !282
  unreachable, !dbg !282

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32* %pnent, null, !dbg !283
  %cmp6 = icmp eq i32** %pindices, null, !dbg !283
  %or.cond = or i1 %cmp5, %cmp6, !dbg !283
  %cmp8 = icmp eq double** %pentries, null, !dbg !283
  %or.cond56 = or i1 %or.cond, %cmp8, !dbg !283
  br i1 %or.cond56, label %if.then9, label %if.end11, !dbg !283

if.then9:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !284, !tbaa !158
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([105 x i8]* @.str18, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries, i32* %pnent, i32** %pindices, double** %pentries) #5, !dbg !284
  tail call void @exit(i32 -1) #6, !dbg !286
  unreachable, !dbg !286

if.end11:                                         ; preds = %if.end4
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !287
  %call12 = tail call i32 @IV_findValueAscending(%struct._IV* %vecidsIV, i32 %id) #5, !dbg !287
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !115), !dbg !287
  %cmp13 = icmp eq i32 %call12, -1, !dbg !288
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !288

if.then14:                                        ; preds = %if.end11
  store i32 0, i32* %pnent, align 4, !dbg !289, !tbaa !163
  store i32* null, i32** %pindices, align 8, !dbg !291, !tbaa !158
  br label %if.end22, !dbg !292

if.else:                                          ; preds = %if.end11
  %idxprom = sext i32 %call12 to i64, !dbg !293
  %vec = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, i32 3, !dbg !293
  %4 = load i32** %vec, align 8, !dbg !293, !tbaa !158
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !293
  %5 = load i32* %arrayidx, align 4, !dbg !293, !tbaa !163
  store i32 %5, i32* %pnent, align 4, !dbg !293, !tbaa !163
  %vec16 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, i32 3, !dbg !295
  %6 = load i32** %vec16, align 8, !dbg !295, !tbaa !158
  %arrayidx17 = getelementptr inbounds i32* %6, i64 %idxprom, !dbg !295
  %7 = load i32* %arrayidx17, align 4, !dbg !295, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !116), !dbg !295
  %vec18 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, i32 3, !dbg !296
  %8 = load i32** %vec18, align 8, !dbg !296, !tbaa !158
  %idx.ext = sext i32 %7 to i64, !dbg !296
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext, !dbg !296
  store i32* %add.ptr, i32** %pindices, align 8, !dbg !296, !tbaa !158
  %vec19 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, i32 3, !dbg !297
  %9 = load double** %vec19, align 8, !dbg !297, !tbaa !158
  %add.ptr21 = getelementptr inbounds double* %9, i64 %idx.ext, !dbg !297
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14
  %storemerge = phi double* [ %add.ptr21, %if.else ], [ null, %if.then14 ]
  store double* %storemerge, double** %pentries, align 8, !dbg !298, !tbaa !158
  ret void, !dbg !299
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_complexVector(%struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !119), !dbg !300
  tail call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !120), !dbg !301
  tail call void @llvm.dbg.value(metadata !{i32* %pnent}, i64 0, metadata !121), !dbg !302
  tail call void @llvm.dbg.value(metadata !{i32** %pindices}, i64 0, metadata !122), !dbg !303
  tail call void @llvm.dbg.value(metadata !{double** %pentries}, i64 0, metadata !123), !dbg !304
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !305
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !306, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str19, i64 0, i64 0), %struct._InpMtx* null, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #5, !dbg !306
  tail call void @exit(i32 -1) #6, !dbg !308
  unreachable, !dbg !308

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !309
  %1 = load i32* %storageMode, align 4, !dbg !309, !tbaa !163
  %cmp1 = icmp eq i32 %1, 3, !dbg !309
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !309

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !310, !tbaa !158
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([95 x i8]* @.str20, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #5, !dbg !310
  tail call void @exit(i32 -1) #6, !dbg !312
  unreachable, !dbg !312

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32* %pnent, null, !dbg !313
  %cmp6 = icmp eq i32** %pindices, null, !dbg !313
  %or.cond = or i1 %cmp5, %cmp6, !dbg !313
  %cmp8 = icmp eq double** %pentries, null, !dbg !313
  %or.cond56 = or i1 %or.cond, %cmp8, !dbg !313
  br i1 %or.cond56, label %if.then9, label %if.end11, !dbg !313

if.then9:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !314, !tbaa !158
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([108 x i8]* @.str21, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries, i32* %pnent, i32** %pindices, double** %pentries) #5, !dbg !314
  tail call void @exit(i32 -1) #6, !dbg !316
  unreachable, !dbg !316

if.end11:                                         ; preds = %if.end4
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !317
  %call12 = tail call i32 @IV_findValueAscending(%struct._IV* %vecidsIV, i32 %id) #5, !dbg !317
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !124), !dbg !317
  %cmp13 = icmp eq i32 %call12, -1, !dbg !318
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !318

if.then14:                                        ; preds = %if.end11
  store i32 0, i32* %pnent, align 4, !dbg !319, !tbaa !163
  store i32* null, i32** %pindices, align 8, !dbg !321, !tbaa !158
  br label %if.end22, !dbg !322

if.else:                                          ; preds = %if.end11
  %idxprom = sext i32 %call12 to i64, !dbg !323
  %vec = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, i32 3, !dbg !323
  %4 = load i32** %vec, align 8, !dbg !323, !tbaa !158
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !323
  %5 = load i32* %arrayidx, align 4, !dbg !323, !tbaa !163
  store i32 %5, i32* %pnent, align 4, !dbg !323, !tbaa !163
  %vec16 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, i32 3, !dbg !325
  %6 = load i32** %vec16, align 8, !dbg !325, !tbaa !158
  %arrayidx17 = getelementptr inbounds i32* %6, i64 %idxprom, !dbg !325
  %7 = load i32* %arrayidx17, align 4, !dbg !325, !tbaa !163
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !125), !dbg !325
  %vec18 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, i32 3, !dbg !326
  %8 = load i32** %vec18, align 8, !dbg !326, !tbaa !158
  %idx.ext = sext i32 %7 to i64, !dbg !326
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext, !dbg !326
  store i32* %add.ptr, i32** %pindices, align 8, !dbg !326, !tbaa !158
  %vec19 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, i32 3, !dbg !327
  %9 = load double** %vec19, align 8, !dbg !327, !tbaa !158
  %mul = shl nsw i32 %7, 1, !dbg !327
  %idx.ext20 = sext i32 %mul to i64, !dbg !327
  %add.ptr21 = getelementptr inbounds double* %9, i64 %idx.ext20, !dbg !327
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14
  %storemerge = phi double* [ %add.ptr21, %if.else ], [ null, %if.then14 ]
  store double* %storemerge, double** %pentries, align 8, !dbg !328, !tbaa !158
  ret void, !dbg !329
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %newmaxnent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !130), !dbg !330
  tail call void @llvm.dbg.value(metadata !{i32 %newmaxnent}, i64 0, metadata !131), !dbg !331
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !332
  %cmp1 = icmp slt i32 %newmaxnent, 0, !dbg !332
  %or.cond = or i1 %cmp, %cmp1, !dbg !332
  br i1 %or.cond, label %if.then, label %if.end, !dbg !332

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !333, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str22, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newmaxnent) #5, !dbg !333
  tail call void @exit(i32 -1) #6, !dbg !335
  unreachable, !dbg !335

if.end:                                           ; preds = %entry
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !336
  %1 = load i32* %maxnent, align 4, !dbg !336, !tbaa !163
  %cmp2 = icmp eq i32 %1, %newmaxnent, !dbg !336
  br i1 %cmp2, label %if.end12, label %if.then3, !dbg !336

if.then3:                                         ; preds = %if.end
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !337
  tail call void @IV_setMaxsize(%struct._IV* %ivec1IV, i32 %newmaxnent) #5, !dbg !337
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !339
  tail call void @IV_setMaxsize(%struct._IV* %ivec2IV, i32 %newmaxnent) #5, !dbg !339
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !340
  %2 = load i32* %inputMode, align 4, !dbg !340, !tbaa !163
  switch i32 %2, label %if.end12 [
    i32 1, label %if.then5
    i32 2, label %if.then8
  ], !dbg !340

if.then5:                                         ; preds = %if.then3
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !341
  tail call void @DV_setMaxsize(%struct._DV* %dvecDV, i32 %newmaxnent) #5, !dbg !341
  br label %if.end12, !dbg !343

if.then8:                                         ; preds = %if.then3
  %dvecDV9 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !344
  %mul = shl nsw i32 %newmaxnent, 1, !dbg !344
  tail call void @DV_setMaxsize(%struct._DV* %dvecDV9, i32 %mul) #5, !dbg !344
  br label %if.end12, !dbg !346

if.end12:                                         ; preds = %if.then3, %if.end, %if.then5, %if.then8
  store i32 %newmaxnent, i32* %maxnent, align 4, !dbg !347, !tbaa !163
  ret void, !dbg !348
}

; Function Attrs: optsize
declare void @IV_setMaxsize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @DV_setMaxsize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setNent(%struct._InpMtx* %inpmtx, i32 %newnent) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !134), !dbg !349
  tail call void @llvm.dbg.value(metadata !{i32 %newnent}, i64 0, metadata !135), !dbg !350
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !351
  %cmp1 = icmp slt i32 %newnent, 0, !dbg !351
  %or.cond = or i1 %cmp, %cmp1, !dbg !351
  br i1 %or.cond, label %if.then, label %if.end, !dbg !351

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !352, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str23, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newnent) #5, !dbg !352
  tail call void @exit(i32 -1) #6, !dbg !354
  unreachable, !dbg !354

if.end:                                           ; preds = %entry
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !355
  %1 = load i32* %maxnent, align 4, !dbg !355, !tbaa !163
  %cmp2 = icmp slt i32 %1, %newnent, !dbg !355
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !355

if.then3:                                         ; preds = %if.end
  tail call void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %newnent) #7, !dbg !356
  br label %if.end4, !dbg !358

if.end4:                                          ; preds = %if.then3, %if.end
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !359
  store i32 %newnent, i32* %nent, align 4, !dbg !359, !tbaa !163
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !360
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %newnent) #5, !dbg !360
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !361
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %newnent) #5, !dbg !361
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !362
  %2 = load i32* %inputMode, align 4, !dbg !362, !tbaa !163
  switch i32 %2, label %if.end12 [
    i32 1, label %if.then6
    i32 2, label %if.then9
  ], !dbg !362

if.then6:                                         ; preds = %if.end4
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !363
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %newnent) #5, !dbg !363
  br label %if.end12, !dbg !365

if.then9:                                         ; preds = %if.end4
  %dvecDV10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !366
  %mul = shl nsw i32 %newnent, 1, !dbg !366
  tail call void @DV_setSize(%struct._DV* %dvecDV10, i32 %mul) #5, !dbg !366
  br label %if.end12, !dbg !368

if.end12:                                         ; preds = %if.end4, %if.then9, %if.then6
  ret void, !dbg !369
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setMaxnvector(%struct._InpMtx* %inpmtx, i32 %newmaxnvector) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !138), !dbg !370
  tail call void @llvm.dbg.value(metadata !{i32 %newmaxnvector}, i64 0, metadata !139), !dbg !371
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !372
  %cmp1 = icmp slt i32 %newmaxnvector, 0, !dbg !372
  %or.cond = or i1 %cmp, %cmp1, !dbg !372
  br i1 %or.cond, label %if.then, label %if.end, !dbg !372

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !373, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str24, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newmaxnvector) #5, !dbg !373
  tail call void @exit(i32 -1) #6, !dbg !375
  unreachable, !dbg !375

if.end:                                           ; preds = %entry
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9, !dbg !376
  %1 = load i32* %maxnvector, align 4, !dbg !376, !tbaa !163
  %cmp2 = icmp eq i32 %1, %newmaxnvector, !dbg !376
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !376

if.then3:                                         ; preds = %if.end
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !377
  tail call void @IV_setMaxsize(%struct._IV* %vecidsIV, i32 %newmaxnvector) #5, !dbg !377
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !379
  tail call void @IV_setMaxsize(%struct._IV* %sizesIV, i32 %newmaxnvector) #5, !dbg !379
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !380
  tail call void @IV_setMaxsize(%struct._IV* %offsetsIV, i32 %newmaxnvector) #5, !dbg !380
  br label %if.end4, !dbg !381

if.end4:                                          ; preds = %if.end, %if.then3
  store i32 %newmaxnvector, i32* %maxnvector, align 4, !dbg !382, !tbaa !163
  ret void, !dbg !383
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setNvector(%struct._InpMtx* %inpmtx, i32 %newnvector) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !142), !dbg !384
  tail call void @llvm.dbg.value(metadata !{i32 %newnvector}, i64 0, metadata !143), !dbg !385
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !386
  %cmp1 = icmp slt i32 %newnvector, 0, !dbg !386
  %or.cond = or i1 %cmp, %cmp1, !dbg !386
  br i1 %or.cond, label %if.then, label %if.end, !dbg !386

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !387, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str25, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newnvector) #5, !dbg !387
  tail call void @exit(i32 -1) #6, !dbg !389
  unreachable, !dbg !389

if.end:                                           ; preds = %entry
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9, !dbg !390
  %1 = load i32* %maxnvector, align 4, !dbg !390, !tbaa !163
  %cmp2 = icmp slt i32 %1, %newnvector, !dbg !390
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !390

if.then3:                                         ; preds = %if.end
  tail call void @InpMtx_setMaxnvector(%struct._InpMtx* %inpmtx, i32 %newnvector) #7, !dbg !391
  br label %if.end4, !dbg !393

if.end4:                                          ; preds = %if.then3, %if.end
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !394
  store i32 %newnvector, i32* %nvector, align 4, !dbg !394, !tbaa !163
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !395
  tail call void @IV_setSize(%struct._IV* %vecidsIV, i32 %newnvector) #5, !dbg !395
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !396
  tail call void @IV_setSize(%struct._IV* %sizesIV, i32 %newnvector) #5, !dbg !396
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !397
  tail call void @IV_setSize(%struct._IV* %offsetsIV, i32 %newnvector) #5, !dbg !397
  ret void, !dbg !398
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setResizeMultiple(%struct._InpMtx* %inpmtx, double %resizeMultiple) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !148), !dbg !399
  tail call void @llvm.dbg.value(metadata !{double %resizeMultiple}, i64 0, metadata !149), !dbg !400
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !401
  %cmp1 = fcmp olt double %resizeMultiple, 0.000000e+00, !dbg !401
  %or.cond = or i1 %cmp, %cmp1, !dbg !401
  br i1 %or.cond, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !402, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str26, i64 0, i64 0), %struct._InpMtx* %inpmtx, double %resizeMultiple) #5, !dbg !402
  tail call void @exit(i32 -1) #6, !dbg !404
  unreachable, !dbg !404

if.end:                                           ; preds = %entry
  %resizeMultiple2 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5, !dbg !405
  store double %resizeMultiple, double* %resizeMultiple2, align 8, !dbg !405, !tbaa !206
  ret void, !dbg !406
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setCoordType(%struct._InpMtx* %inpmtx, i32 %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !152), !dbg !407
  tail call void @llvm.dbg.value(metadata !{i32 %type}, i64 0, metadata !153), !dbg !408
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !409
  %cmp1 = icmp slt i32 %type, 4, !dbg !409
  %or.cond = or i1 %cmp, %cmp1, !dbg !409
  br i1 %or.cond, label %if.then, label %if.end5, !dbg !409

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !410, !tbaa !158
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str27, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %type) #5, !dbg !410
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !412

if.then3:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !413, !tbaa !158
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str28, i64 0, i64 0), i32 %type) #5, !dbg !413
  br label %if.end, !dbg !413

if.end:                                           ; preds = %if.then3, %if.then
  tail call void @exit(i32 -1) #6, !dbg !414
  unreachable, !dbg !414

if.end5:                                          ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !415
  store i32 %type, i32* %coordType, align 4, !dbg !415, !tbaa !163
  ret void, !dbg !416
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !49, metadata !52, metadata !55, metadata !58, metadata !61, metadata !64, metadata !67, metadata !72, metadata !77, metadata !80, metadata !85, metadata !88, metadata !91, metadata !94, metadata !105, metadata !117, metadata !126, metadata !132, metadata !136, metadata !140, metadata !144, metadata !150}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_coordType", metadata !"InpMtx_coordType", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*)* @InpMtx_coordType, null, null, metadata !47, i32 16} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 16] [InpMtx_coordType]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !21, metadata !31, metadata !32, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!22 = metadata !{i32 786454, metadata !12, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!32 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!33 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!40 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!42 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!43 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !8} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!44 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!45 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!46 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786689, metadata !4, metadata !"inpmtx", metadata !5, i32 16777231, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 15]
!49 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_storageMode", metadata !"InpMtx_storageMode", metadata !"", i32 38, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*)* @InpMtx_storageMode, null, null, metadata !50, i32 40} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 40] [InpMtx_storageMode]
!50 = metadata !{metadata !51}
!51 = metadata !{i32 786689, metadata !49, metadata !"inpmtx", metadata !5, i32 16777255, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 39]
!52 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_inputMode", metadata !"InpMtx_inputMode", metadata !"", i32 62, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*)* @InpMtx_inputMode, null, null, metadata !53, i32 64} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 64] [InpMtx_inputMode]
!53 = metadata !{metadata !54}
!54 = metadata !{i32 786689, metadata !52, metadata !"inpmtx", metadata !5, i32 16777279, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 63]
!55 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_maxnent", metadata !"InpMtx_maxnent", metadata !"", i32 86, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*)* @InpMtx_maxnent, null, null, metadata !56, i32 88} ; [ DW_TAG_subprogram ] [line 86] [def] [scope 88] [InpMtx_maxnent]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786689, metadata !55, metadata !"inpmtx", metadata !5, i32 16777303, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 87]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_nent", metadata !"InpMtx_nent", metadata !"", i32 110, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*)* @InpMtx_nent, null, null, metadata !59, i32 112} ; [ DW_TAG_subprogram ] [line 110] [def] [scope 112] [InpMtx_nent]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786689, metadata !58, metadata !"inpmtx", metadata !5, i32 16777327, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 111]
!61 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_maxnvector", metadata !"InpMtx_maxnvector", metadata !"", i32 134, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*)* @InpMtx_maxnvector, null, null, metadata !62, i32 136} ; [ DW_TAG_subprogram ] [line 134] [def] [scope 136] [InpMtx_maxnvector]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786689, metadata !61, metadata !"inpmtx", metadata !5, i32 16777351, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 135]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_nvector", metadata !"InpMtx_nvector", metadata !"", i32 158, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*)* @InpMtx_nvector, null, null, metadata !65, i32 160} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 160] [InpMtx_nvector]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786689, metadata !64, metadata !"inpmtx", metadata !5, i32 16777375, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 159]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_resizeMultiple", metadata !"InpMtx_resizeMultiple", metadata !"", i32 182, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (%struct._InpMtx*)* @InpMtx_resizeMultiple, null, null, metadata !70, i32 184} ; [ DW_TAG_subprogram ] [line 182] [def] [scope 184] [InpMtx_resizeMultiple]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !20, metadata !9}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 786689, metadata !67, metadata !"inpmtx", metadata !5, i32 16777399, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 183]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_ivec1", metadata !"InpMtx_ivec1", metadata !"", i32 201, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._InpMtx*)* @InpMtx_ivec1, null, null, metadata !75, i32 203} ; [ DW_TAG_subprogram ] [line 201] [def] [scope 203] [InpMtx_ivec1]
!73 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !30, metadata !9}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 786689, metadata !72, metadata !"inpmtx", metadata !5, i32 16777418, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 202]
!77 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_ivec2", metadata !"InpMtx_ivec2", metadata !"", i32 225, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._InpMtx*)* @InpMtx_ivec2, null, null, metadata !78, i32 227} ; [ DW_TAG_subprogram ] [line 225] [def] [scope 227] [InpMtx_ivec2]
!78 = metadata !{metadata !79}
!79 = metadata !{i32 786689, metadata !77, metadata !"inpmtx", metadata !5, i32 16777442, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 226]
!80 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_dvec", metadata !"InpMtx_dvec", metadata !"", i32 249, metadata !81, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double* (%struct._InpMtx*)* @InpMtx_dvec, null, null, metadata !83, i32 251} ; [ DW_TAG_subprogram ] [line 249] [def] [scope 251] [InpMtx_dvec]
!81 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!82 = metadata !{metadata !41, metadata !9}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 786689, metadata !80, metadata !"inpmtx", metadata !5, i32 16777466, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 250]
!85 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_sizes", metadata !"InpMtx_sizes", metadata !"", i32 273, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._InpMtx*)* @InpMtx_sizes, null, null, metadata !86, i32 275} ; [ DW_TAG_subprogram ] [line 273] [def] [scope 275] [InpMtx_sizes]
!86 = metadata !{metadata !87}
!87 = metadata !{i32 786689, metadata !85, metadata !"inpmtx", metadata !5, i32 16777490, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 274]
!88 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_vecids", metadata !"InpMtx_vecids", metadata !"", i32 297, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._InpMtx*)* @InpMtx_vecids, null, null, metadata !89, i32 299} ; [ DW_TAG_subprogram ] [line 297] [def] [scope 299] [InpMtx_vecids]
!89 = metadata !{metadata !90}
!90 = metadata !{i32 786689, metadata !88, metadata !"inpmtx", metadata !5, i32 16777514, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 298]
!91 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_offsets", metadata !"InpMtx_offsets", metadata !"", i32 321, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32* (%struct._InpMtx*)* @InpMtx_offsets, null, null, metadata !92, i32 323} ; [ DW_TAG_subprogram ] [line 321] [def] [scope 323] [InpMtx_offsets]
!92 = metadata !{metadata !93}
!93 = metadata !{i32 786689, metadata !91, metadata !"inpmtx", metadata !5, i32 16777538, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 322]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_vector", metadata !"InpMtx_vector", metadata !"", i32 347, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32*, i32**)* @InpMtx_vector, null, null, metadata !98, i32 352} ; [ DW_TAG_subprogram ] [line 347] [def] [scope 352] [InpMtx_vector]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{null, metadata !9, metadata !8, metadata !30, metadata !97}
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!98 = metadata !{metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104}
!99 = metadata !{i32 786689, metadata !94, metadata !"inpmtx", metadata !5, i32 16777564, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 348]
!100 = metadata !{i32 786689, metadata !94, metadata !"id", metadata !5, i32 33554781, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 349]
!101 = metadata !{i32 786689, metadata !94, metadata !"pnent", metadata !5, i32 50331998, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 350]
!102 = metadata !{i32 786689, metadata !94, metadata !"pindices", metadata !5, i32 67109215, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pindices] [line 351]
!103 = metadata !{i32 786688, metadata !94, metadata !"loc", metadata !5, i32 353, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 353]
!104 = metadata !{i32 786688, metadata !94, metadata !"off", metadata !5, i32 353, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 353]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_realVector", metadata !"InpMtx_realVector", metadata !"", i32 415, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32*, i32**, double**)* @InpMtx_realVector, null, null, metadata !109, i32 421} ; [ DW_TAG_subprogram ] [line 415] [def] [scope 421] [InpMtx_realVector]
!106 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!107 = metadata !{null, metadata !9, metadata !8, metadata !30, metadata !97, metadata !108}
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!109 = metadata !{metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116}
!110 = metadata !{i32 786689, metadata !105, metadata !"inpmtx", metadata !5, i32 16777632, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 416]
!111 = metadata !{i32 786689, metadata !105, metadata !"id", metadata !5, i32 33554849, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 417]
!112 = metadata !{i32 786689, metadata !105, metadata !"pnent", metadata !5, i32 50332066, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 418]
!113 = metadata !{i32 786689, metadata !105, metadata !"pindices", metadata !5, i32 67109283, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pindices] [line 419]
!114 = metadata !{i32 786689, metadata !105, metadata !"pentries", metadata !5, i32 83886500, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 420]
!115 = metadata !{i32 786688, metadata !105, metadata !"loc", metadata !5, i32 422, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 422]
!116 = metadata !{i32 786688, metadata !105, metadata !"off", metadata !5, i32 422, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 422]
!117 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_complexVector", metadata !"InpMtx_complexVector", metadata !"", i32 491, metadata !106, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32, i32*, i32**, double**)* @InpMtx_complexVector, null, null, metadata !118, i32 497} ; [ DW_TAG_subprogram ] [line 491] [def] [scope 497] [InpMtx_complexVector]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!119 = metadata !{i32 786689, metadata !117, metadata !"inpmtx", metadata !5, i32 16777708, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 492]
!120 = metadata !{i32 786689, metadata !117, metadata !"id", metadata !5, i32 33554925, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [id] [line 493]
!121 = metadata !{i32 786689, metadata !117, metadata !"pnent", metadata !5, i32 50332142, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pnent] [line 494]
!122 = metadata !{i32 786689, metadata !117, metadata !"pindices", metadata !5, i32 67109359, metadata !97, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pindices] [line 495]
!123 = metadata !{i32 786689, metadata !117, metadata !"pentries", metadata !5, i32 83886576, metadata !108, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pentries] [line 496]
!124 = metadata !{i32 786688, metadata !117, metadata !"loc", metadata !5, i32 498, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [loc] [line 498]
!125 = metadata !{i32 786688, metadata !117, metadata !"off", metadata !5, i32 498, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 498]
!126 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_setMaxnent", metadata !"InpMtx_setMaxnent", metadata !"", i32 565, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32)* @InpMtx_setMaxnent, null, null, metadata !129, i32 568} ; [ DW_TAG_subprogram ] [line 565] [def] [scope 568] [InpMtx_setMaxnent]
!127 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!128 = metadata !{null, metadata !9, metadata !8}
!129 = metadata !{metadata !130, metadata !131}
!130 = metadata !{i32 786689, metadata !126, metadata !"inpmtx", metadata !5, i32 16777782, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 566]
!131 = metadata !{i32 786689, metadata !126, metadata !"newmaxnent", metadata !5, i32 33554999, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newmaxnent] [line 567]
!132 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_setNent", metadata !"InpMtx_setNent", metadata !"", i32 601, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32)* @InpMtx_setNent, null, null, metadata !133, i32 604} ; [ DW_TAG_subprogram ] [line 601] [def] [scope 604] [InpMtx_setNent]
!133 = metadata !{metadata !134, metadata !135}
!134 = metadata !{i32 786689, metadata !132, metadata !"inpmtx", metadata !5, i32 16777818, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 602]
!135 = metadata !{i32 786689, metadata !132, metadata !"newnent", metadata !5, i32 33555035, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newnent] [line 603]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_setMaxnvector", metadata !"InpMtx_setMaxnvector", metadata !"", i32 645, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32)* @InpMtx_setMaxnvector, null, null, metadata !137, i32 648} ; [ DW_TAG_subprogram ] [line 645] [def] [scope 648] [InpMtx_setMaxnvector]
!137 = metadata !{metadata !138, metadata !139}
!138 = metadata !{i32 786689, metadata !136, metadata !"inpmtx", metadata !5, i32 16777862, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 646]
!139 = metadata !{i32 786689, metadata !136, metadata !"newmaxnvector", metadata !5, i32 33555079, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newmaxnvector] [line 647]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_setNvector", metadata !"InpMtx_setNvector", metadata !"", i32 677, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32)* @InpMtx_setNvector, null, null, metadata !141, i32 680} ; [ DW_TAG_subprogram ] [line 677] [def] [scope 680] [InpMtx_setNvector]
!141 = metadata !{metadata !142, metadata !143}
!142 = metadata !{i32 786689, metadata !140, metadata !"inpmtx", metadata !5, i32 16777894, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 678]
!143 = metadata !{i32 786689, metadata !140, metadata !"newnvector", metadata !5, i32 33555111, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [newnvector] [line 679]
!144 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_setResizeMultiple", metadata !"InpMtx_setResizeMultiple", metadata !"", i32 710, metadata !145, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, double)* @InpMtx_setResizeMultiple, null, null, metadata !147, i32 713} ; [ DW_TAG_subprogram ] [line 710] [def] [scope 713] [InpMtx_setResizeMultiple]
!145 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{null, metadata !9, metadata !20}
!147 = metadata !{metadata !148, metadata !149}
!148 = metadata !{i32 786689, metadata !144, metadata !"inpmtx", metadata !5, i32 16777927, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 711]
!149 = metadata !{i32 786689, metadata !144, metadata !"resizeMultiple", metadata !5, i32 33555144, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [resizeMultiple] [line 712]
!150 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_setCoordType", metadata !"InpMtx_setCoordType", metadata !"", i32 739, metadata !127, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32)* @InpMtx_setCoordType, null, null, metadata !151, i32 742} ; [ DW_TAG_subprogram ] [line 739] [def] [scope 742] [InpMtx_setCoordType]
!151 = metadata !{metadata !152, metadata !153}
!152 = metadata !{i32 786689, metadata !150, metadata !"inpmtx", metadata !5, i32 16777956, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 740]
!153 = metadata !{i32 786689, metadata !150, metadata !"type", metadata !5, i32 33555173, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 741]
!154 = metadata !{i32 15, i32 0, metadata !4, null}
!155 = metadata !{i32 22, i32 0, metadata !4, null}
!156 = metadata !{i32 23, i32 0, metadata !157, null}
!157 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!158 = metadata !{metadata !"any pointer", metadata !159}
!159 = metadata !{metadata !"omnipotent char", metadata !160}
!160 = metadata !{metadata !"Simple C/C++ TBAA"}
!161 = metadata !{i32 25, i32 0, metadata !157, null}
!162 = metadata !{i32 27, i32 0, metadata !4, null}
!163 = metadata !{metadata !"int", metadata !159}
!164 = metadata !{i32 39, i32 0, metadata !49, null}
!165 = metadata !{i32 46, i32 0, metadata !49, null}
!166 = metadata !{i32 47, i32 0, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !49, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!168 = metadata !{i32 49, i32 0, metadata !167, null}
!169 = metadata !{i32 51, i32 0, metadata !49, null}
!170 = metadata !{i32 63, i32 0, metadata !52, null}
!171 = metadata !{i32 70, i32 0, metadata !52, null}
!172 = metadata !{i32 71, i32 0, metadata !173, null}
!173 = metadata !{i32 786443, metadata !1, metadata !52, i32 70, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!174 = metadata !{i32 73, i32 0, metadata !173, null}
!175 = metadata !{i32 75, i32 0, metadata !52, null}
!176 = metadata !{i32 87, i32 0, metadata !55, null}
!177 = metadata !{i32 94, i32 0, metadata !55, null}
!178 = metadata !{i32 95, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !55, i32 94, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!180 = metadata !{i32 97, i32 0, metadata !179, null}
!181 = metadata !{i32 99, i32 0, metadata !55, null}
!182 = metadata !{i32 111, i32 0, metadata !58, null}
!183 = metadata !{i32 118, i32 0, metadata !58, null}
!184 = metadata !{i32 119, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !58, i32 118, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!186 = metadata !{i32 121, i32 0, metadata !185, null}
!187 = metadata !{i32 123, i32 0, metadata !58, null}
!188 = metadata !{i32 135, i32 0, metadata !61, null}
!189 = metadata !{i32 142, i32 0, metadata !61, null}
!190 = metadata !{i32 143, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !61, i32 142, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!192 = metadata !{i32 145, i32 0, metadata !191, null}
!193 = metadata !{i32 147, i32 0, metadata !61, null}
!194 = metadata !{i32 159, i32 0, metadata !64, null}
!195 = metadata !{i32 166, i32 0, metadata !64, null}
!196 = metadata !{i32 167, i32 0, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !64, i32 166, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!198 = metadata !{i32 169, i32 0, metadata !197, null}
!199 = metadata !{i32 171, i32 0, metadata !64, null}
!200 = metadata !{i32 183, i32 0, metadata !67, null}
!201 = metadata !{i32 185, i32 0, metadata !67, null}
!202 = metadata !{i32 186, i32 0, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !67, i32 185, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!204 = metadata !{i32 188, i32 0, metadata !203, null}
!205 = metadata !{i32 190, i32 0, metadata !67, null}
!206 = metadata !{metadata !"double", metadata !159}
!207 = metadata !{i32 202, i32 0, metadata !72, null}
!208 = metadata !{i32 209, i32 0, metadata !72, null}
!209 = metadata !{i32 210, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !72, i32 209, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!211 = metadata !{i32 212, i32 0, metadata !210, null}
!212 = metadata !{i32 214, i32 0, metadata !72, null}
!213 = metadata !{i32 226, i32 0, metadata !77, null}
!214 = metadata !{i32 233, i32 0, metadata !77, null}
!215 = metadata !{i32 234, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !77, i32 233, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!217 = metadata !{i32 236, i32 0, metadata !216, null}
!218 = metadata !{i32 238, i32 0, metadata !77, null}
!219 = metadata !{i32 250, i32 0, metadata !80, null}
!220 = metadata !{i32 257, i32 0, metadata !80, null}
!221 = metadata !{i32 258, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !80, i32 257, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!223 = metadata !{i32 260, i32 0, metadata !222, null}
!224 = metadata !{i32 262, i32 0, metadata !80, null}
!225 = metadata !{i32 274, i32 0, metadata !85, null}
!226 = metadata !{i32 281, i32 0, metadata !85, null}
!227 = metadata !{i32 282, i32 0, metadata !228, null}
!228 = metadata !{i32 786443, metadata !1, metadata !85, i32 281, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!229 = metadata !{i32 284, i32 0, metadata !228, null}
!230 = metadata !{i32 286, i32 0, metadata !85, null}
!231 = metadata !{i32 298, i32 0, metadata !88, null}
!232 = metadata !{i32 305, i32 0, metadata !88, null}
!233 = metadata !{i32 306, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !88, i32 305, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!235 = metadata !{i32 308, i32 0, metadata !234, null}
!236 = metadata !{i32 310, i32 0, metadata !88, null}
!237 = metadata !{i32 322, i32 0, metadata !91, null}
!238 = metadata !{i32 329, i32 0, metadata !91, null}
!239 = metadata !{i32 330, i32 0, metadata !240, null}
!240 = metadata !{i32 786443, metadata !1, metadata !91, i32 329, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!241 = metadata !{i32 332, i32 0, metadata !240, null}
!242 = metadata !{i32 334, i32 0, metadata !91, null}
!243 = metadata !{i32 348, i32 0, metadata !94, null}
!244 = metadata !{i32 349, i32 0, metadata !94, null}
!245 = metadata !{i32 350, i32 0, metadata !94, null}
!246 = metadata !{i32 351, i32 0, metadata !94, null}
!247 = metadata !{i32 359, i32 0, metadata !94, null}
!248 = metadata !{i32 360, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !94, i32 359, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!250 = metadata !{i32 362, i32 0, metadata !249, null}
!251 = metadata !{i32 364, i32 0, metadata !94, null}
!252 = metadata !{i32 365, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !94, i32 364, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!254 = metadata !{i32 367, i32 0, metadata !253, null}
!255 = metadata !{i32 369, i32 0, metadata !94, null}
!256 = metadata !{i32 370, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !94, i32 369, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!258 = metadata !{i32 373, i32 0, metadata !257, null}
!259 = metadata !{i32 380, i32 0, metadata !94, null}
!260 = metadata !{i32 381, i32 0, metadata !94, null}
!261 = metadata !{i32 387, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !94, i32 381, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!263 = metadata !{i32 389, i32 0, metadata !262, null}
!264 = metadata !{i32 397, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !94, i32 389, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!266 = metadata !{i32 398, i32 0, metadata !265, null}
!267 = metadata !{i32 399, i32 0, metadata !265, null}
!268 = metadata !{i32 388, i32 0, metadata !262, null}
!269 = metadata !{i32 401, i32 0, metadata !94, null}
!270 = metadata !{i32 416, i32 0, metadata !105, null}
!271 = metadata !{i32 417, i32 0, metadata !105, null}
!272 = metadata !{i32 418, i32 0, metadata !105, null}
!273 = metadata !{i32 419, i32 0, metadata !105, null}
!274 = metadata !{i32 420, i32 0, metadata !105, null}
!275 = metadata !{i32 428, i32 0, metadata !105, null}
!276 = metadata !{i32 429, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !105, i32 428, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!278 = metadata !{i32 432, i32 0, metadata !277, null}
!279 = metadata !{i32 434, i32 0, metadata !105, null}
!280 = metadata !{i32 435, i32 0, metadata !281, null}
!281 = metadata !{i32 786443, metadata !1, metadata !105, i32 434, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!282 = metadata !{i32 439, i32 0, metadata !281, null}
!283 = metadata !{i32 441, i32 0, metadata !105, null}
!284 = metadata !{i32 442, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !105, i32 441, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!286 = metadata !{i32 447, i32 0, metadata !285, null}
!287 = metadata !{i32 454, i32 0, metadata !105, null}
!288 = metadata !{i32 455, i32 0, metadata !105, null}
!289 = metadata !{i32 461, i32 0, metadata !290, null}
!290 = metadata !{i32 786443, metadata !1, metadata !105, i32 455, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!291 = metadata !{i32 462, i32 0, metadata !290, null}
!292 = metadata !{i32 464, i32 0, metadata !290, null}
!293 = metadata !{i32 472, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !105, i32 464, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!295 = metadata !{i32 473, i32 0, metadata !294, null}
!296 = metadata !{i32 474, i32 0, metadata !294, null}
!297 = metadata !{i32 475, i32 0, metadata !294, null}
!298 = metadata !{i32 463, i32 0, metadata !290, null}
!299 = metadata !{i32 477, i32 0, metadata !105, null}
!300 = metadata !{i32 492, i32 0, metadata !117, null}
!301 = metadata !{i32 493, i32 0, metadata !117, null}
!302 = metadata !{i32 494, i32 0, metadata !117, null}
!303 = metadata !{i32 495, i32 0, metadata !117, null}
!304 = metadata !{i32 496, i32 0, metadata !117, null}
!305 = metadata !{i32 504, i32 0, metadata !117, null}
!306 = metadata !{i32 505, i32 0, metadata !307, null}
!307 = metadata !{i32 786443, metadata !1, metadata !117, i32 504, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!308 = metadata !{i32 508, i32 0, metadata !307, null}
!309 = metadata !{i32 510, i32 0, metadata !117, null}
!310 = metadata !{i32 511, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !117, i32 510, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!312 = metadata !{i32 515, i32 0, metadata !311, null}
!313 = metadata !{i32 517, i32 0, metadata !117, null}
!314 = metadata !{i32 518, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !117, i32 517, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!316 = metadata !{i32 523, i32 0, metadata !315, null}
!317 = metadata !{i32 530, i32 0, metadata !117, null}
!318 = metadata !{i32 531, i32 0, metadata !117, null}
!319 = metadata !{i32 537, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !117, i32 531, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!321 = metadata !{i32 538, i32 0, metadata !320, null}
!322 = metadata !{i32 540, i32 0, metadata !320, null}
!323 = metadata !{i32 548, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !117, i32 540, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!325 = metadata !{i32 549, i32 0, metadata !324, null}
!326 = metadata !{i32 550, i32 0, metadata !324, null}
!327 = metadata !{i32 551, i32 0, metadata !324, null}
!328 = metadata !{i32 539, i32 0, metadata !320, null}
!329 = metadata !{i32 553, i32 0, metadata !117, null}
!330 = metadata !{i32 566, i32 0, metadata !126, null}
!331 = metadata !{i32 567, i32 0, metadata !126, null}
!332 = metadata !{i32 574, i32 0, metadata !126, null}
!333 = metadata !{i32 575, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !126, i32 574, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!335 = metadata !{i32 577, i32 0, metadata !334, null}
!336 = metadata !{i32 579, i32 0, metadata !126, null}
!337 = metadata !{i32 580, i32 0, metadata !338, null}
!338 = metadata !{i32 786443, metadata !1, metadata !126, i32 579, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!339 = metadata !{i32 581, i32 0, metadata !338, null}
!340 = metadata !{i32 582, i32 0, metadata !338, null}
!341 = metadata !{i32 583, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !338, i32 582, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!343 = metadata !{i32 584, i32 0, metadata !342, null}
!344 = metadata !{i32 585, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !338, i32 584, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!346 = metadata !{i32 586, i32 0, metadata !345, null}
!347 = metadata !{i32 588, i32 0, metadata !126, null}
!348 = metadata !{i32 590, i32 0, metadata !126, null}
!349 = metadata !{i32 602, i32 0, metadata !132, null}
!350 = metadata !{i32 603, i32 0, metadata !132, null}
!351 = metadata !{i32 610, i32 0, metadata !132, null}
!352 = metadata !{i32 611, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !132, i32 610, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!354 = metadata !{i32 613, i32 0, metadata !353, null}
!355 = metadata !{i32 615, i32 0, metadata !132, null}
!356 = metadata !{i32 621, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !132, i32 615, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!358 = metadata !{i32 622, i32 0, metadata !357, null}
!359 = metadata !{i32 623, i32 0, metadata !132, null}
!360 = metadata !{i32 624, i32 0, metadata !132, null}
!361 = metadata !{i32 625, i32 0, metadata !132, null}
!362 = metadata !{i32 626, i32 0, metadata !132, null}
!363 = metadata !{i32 627, i32 0, metadata !364, null}
!364 = metadata !{i32 786443, metadata !1, metadata !132, i32 626, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!365 = metadata !{i32 628, i32 0, metadata !364, null}
!366 = metadata !{i32 629, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !132, i32 628, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!368 = metadata !{i32 630, i32 0, metadata !367, null}
!369 = metadata !{i32 632, i32 0, metadata !132, null}
!370 = metadata !{i32 646, i32 0, metadata !136, null}
!371 = metadata !{i32 647, i32 0, metadata !136, null}
!372 = metadata !{i32 654, i32 0, metadata !136, null}
!373 = metadata !{i32 655, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !136, i32 654, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!375 = metadata !{i32 657, i32 0, metadata !374, null}
!376 = metadata !{i32 659, i32 0, metadata !136, null}
!377 = metadata !{i32 660, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !136, i32 659, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!379 = metadata !{i32 661, i32 0, metadata !378, null}
!380 = metadata !{i32 662, i32 0, metadata !378, null}
!381 = metadata !{i32 663, i32 0, metadata !378, null}
!382 = metadata !{i32 664, i32 0, metadata !136, null}
!383 = metadata !{i32 666, i32 0, metadata !136, null}
!384 = metadata !{i32 678, i32 0, metadata !140, null}
!385 = metadata !{i32 679, i32 0, metadata !140, null}
!386 = metadata !{i32 686, i32 0, metadata !140, null}
!387 = metadata !{i32 687, i32 0, metadata !388, null}
!388 = metadata !{i32 786443, metadata !1, metadata !140, i32 686, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!389 = metadata !{i32 689, i32 0, metadata !388, null}
!390 = metadata !{i32 691, i32 0, metadata !140, null}
!391 = metadata !{i32 692, i32 0, metadata !392, null}
!392 = metadata !{i32 786443, metadata !1, metadata !140, i32 691, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!393 = metadata !{i32 693, i32 0, metadata !392, null}
!394 = metadata !{i32 694, i32 0, metadata !140, null}
!395 = metadata !{i32 695, i32 0, metadata !140, null}
!396 = metadata !{i32 696, i32 0, metadata !140, null}
!397 = metadata !{i32 697, i32 0, metadata !140, null}
!398 = metadata !{i32 699, i32 0, metadata !140, null}
!399 = metadata !{i32 711, i32 0, metadata !144, null}
!400 = metadata !{i32 712, i32 0, metadata !144, null}
!401 = metadata !{i32 719, i32 0, metadata !144, null}
!402 = metadata !{i32 720, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !144, i32 719, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!404 = metadata !{i32 722, i32 0, metadata !403, null}
!405 = metadata !{i32 724, i32 0, metadata !144, null}
!406 = metadata !{i32 726, i32 0, metadata !144, null}
!407 = metadata !{i32 740, i32 0, metadata !150, null}
!408 = metadata !{i32 741, i32 0, metadata !150, null}
!409 = metadata !{i32 748, i32 0, metadata !150, null}
!410 = metadata !{i32 749, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !150, i32 748, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_instance.c]
!412 = metadata !{i32 751, i32 0, metadata !411, null}
!413 = metadata !{i32 752, i32 0, metadata !411, null}
!414 = metadata !{i32 755, i32 0, metadata !411, null}
!415 = metadata !{i32 757, i32 0, metadata !150, null}
!416 = metadata !{i32 759, i32 0, metadata !150, null}

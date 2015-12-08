; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/mdef.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.mdef_t = type { i32, i32, i32, i32, i32, i32, %struct.hash_table_t*, %struct.ciphone_t*, %struct.phone_t*, i16**, i32, i16*, i8*, i32*, i8, %struct.ph_lc_s*** }
%struct.hash_table_t = type { %struct.hash_entry_s*, i32, i8 }
%struct.hash_entry_s = type { i8*, i32, i32, %struct.hash_entry_s* }
%struct.ciphone_t = type { i8*, i32 }
%struct.phone_t = type { i32, i32, i8, i8, i8, i32 }
%struct.ph_lc_s = type { i8, %struct.ph_rc_s*, %struct.ph_lc_s* }
%struct.ph_rc_s = type { i8, i32, %struct.ph_rc_s* }
%struct.gnode_s = type { %union.anytype_s, %struct.gnode_s* }
%union.anytype_s = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"%d ciphone\0A\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"%d phone\0A\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"%d emitstate\0A\00", align 1
@.str3 = private unnamed_addr constant [10 x i8] c"%d cisen\0A\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"%d sen\0A\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"%d tmat\0A\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"%3d %5d\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c" %5d\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c" %3d\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str11 = private unnamed_addr constant [6 x i8] c"besiu\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"(%s,%s,%s,%c)\00", align 1
@.str14 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/mdef.c\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str16 = private unnamed_addr constant [14 x i8] c"No mdef-file\0A\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str18 = private unnamed_addr constant [30 x i8] c"Reading model definition: %s\0A\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str20 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str21 = private unnamed_addr constant [20 x i8] c"fopen(%s,r) failed\0A\00", align 1
@.str22 = private unnamed_addr constant [16 x i8] c"Empty file: %s\0A\00", align 1
@.str23 = private unnamed_addr constant [4 x i8] c"0.3\00", align 1
@.str24 = private unnamed_addr constant [41 x i8] c"Version error: Expecing %s, but read %s\0A\00", align 1
@.str25 = private unnamed_addr constant [19 x i8] c"Incomplete header\0A\00", align 1
@.str26 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str27 = private unnamed_addr constant [21 x i8] c"Error in header: %s\0A\00", align 1
@.str28 = private unnamed_addr constant [7 x i8] c"n_base\00", align 1
@.str29 = private unnamed_addr constant [6 x i8] c"n_tri\00", align 1
@.str30 = private unnamed_addr constant [12 x i8] c"n_state_map\00", align 1
@.str31 = private unnamed_addr constant [16 x i8] c"n_tied_ci_state\00", align 1
@.str32 = private unnamed_addr constant [13 x i8] c"n_tied_state\00", align 1
@.str33 = private unnamed_addr constant [12 x i8] c"n_tied_tmat\00", align 1
@.str34 = private unnamed_addr constant [25 x i8] c"Unknown header line: %s\0A\00", align 1
@.str35 = private unnamed_addr constant [21 x i8] c"%s: Error in header\0A\00", align 1
@.str36 = private unnamed_addr constant [40 x i8] c"%s: #CI phones (%d) exceeds limit (%d)\0A\00", align 1
@.str37 = private unnamed_addr constant [37 x i8] c"%s: #Phones (%d) exceeds limit (%d)\0A\00", align 1
@.str38 = private unnamed_addr constant [38 x i8] c"%s: #senones (%d) exceeds limit (%d)\0A\00", align 1
@.str39 = private unnamed_addr constant [36 x i8] c"%s: #tmats (%d) exceeds limit (%d)\0A\00", align 1
@.str40 = private unnamed_addr constant [56 x i8] c"Header error: n_state_map not a multiple of n_ci*n_tri\0A\00", align 1
@.str41 = private unnamed_addr constant [34 x i8] c"Premature EOF reading CIphone %d\0A\00", align 1
@.str42 = private unnamed_addr constant [4 x i8] c"SIL\00", align 1
@.str43 = private unnamed_addr constant [32 x i8] c"Premature EOF reading phone %d\0A\00", align 1
@.str44 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str45 = private unnamed_addr constant [45 x i8] c"Non-empty file beyond expected #phones (%d)\0A\00", align 1
@.str46 = private unnamed_addr constant [57 x i8] c"#CI-senones(%d) != #CI-phone(%d) x #emitting-states(%d)\0A\00", align 1
@.str47 = private unnamed_addr constant [57 x i8] c"Unreferenced senone %d; cannot determine parent CIphone\0A\00", align 1
@.str48 = private unnamed_addr constant [77 x i8] c"%d CI-phone, %d CD-phone, %d emitstate/phone, %d CI-sen, %d Sen, %d Sen-Seq\0A\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c"%s%n\00", align 1
@.str50 = private unnamed_addr constant [29 x i8] c"Missing base phone name: %s\0A\00", align 1
@.str51 = private unnamed_addr constant [24 x i8] c"Unknown base phone: %s\0A\00", align 1
@.str52 = private unnamed_addr constant [26 x i8] c"Missing left context: %s\0A\00", align 1
@.str53 = private unnamed_addr constant [26 x i8] c"Unknown left context: %s\0A\00", align 1
@.str54 = private unnamed_addr constant [27 x i8] c"Missing right context: %s\0A\00", align 1
@.str55 = private unnamed_addr constant [28 x i8] c"Unknown right  context: %s\0A\00", align 1
@.str56 = private unnamed_addr constant [39 x i8] c"Missing or bad word-position spec: %s\0A\00", align 1
@.str57 = private unnamed_addr constant [28 x i8] c"Bad word-position spec: %s\0A\00", align 1
@.str58 = private unnamed_addr constant [36 x i8] c"Missing filler attribute field: %s\0A\00", align 1
@.str59 = private unnamed_addr constant [7 x i8] c"filler\00", align 1
@.str60 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str61 = private unnamed_addr constant [32 x i8] c"Bad filler attribute field: %s\0A\00", align 1
@.str62 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str63 = private unnamed_addr constant [41 x i8] c"Missing or bad transition matrix id: %s\0A\00", align 1
@.str64 = private unnamed_addr constant [39 x i8] c"tmat-id(%d) > #tmat in header(%d): %s\0A\00", align 1
@.str65 = private unnamed_addr constant [46 x i8] c"Missing or bad state[%d]->senone mapping: %s\0A\00", align 1
@.str66 = private unnamed_addr constant [40 x i8] c"CI-senone-id(%d) > #CI-senones(%d): %s\0A\00", align 1
@.str67 = private unnamed_addr constant [34 x i8] c"Senone-id(%d) > #senones(%d): %s\0A\00", align 1
@.str68 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str69 = private unnamed_addr constant [37 x i8] c"Missing non-emitting state spec: %s\0A\00", align 1
@.str70 = private unnamed_addr constant [47 x i8] c"Non-empty beyond non-emitting final state: %s\0A\00", align 1
@.str71 = private unnamed_addr constant [24 x i8] c"Duplicate triphone: %s\0A\00", align 1
@.str72 = private unnamed_addr constant [26 x i8] c"Duplicate base phone: %s\0A\00", align 1
@.str73 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str74 = private unnamed_addr constant [37 x i8] c"Bad context info for base phone: %s\0A\00", align 1
@.str75 = private unnamed_addr constant [35 x i8] c"Missing filler atribute field: %s\0A\00", align 1
@.str76 = private unnamed_addr constant [43 x i8] c"hash_enter(%s) failed; duplicate CIphone?\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @mdef_dump(%struct._IO_FILE* nocapture %fp, %struct.mdef_t* nocapture %m) #0 {
entry:
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 0
  %1 = load i32* %n_ciphone, align 4, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str, i64 0, i64 0), i32 %1) #7
  %n_phone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 1
  %2 = load i32* %n_phone, align 4, !tbaa !0
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str1, i64 0, i64 0), i32 %2) #7
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 2
  %3 = load i32* %n_emit_state, align 4, !tbaa !0
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i32 %3) #7
  %n_ci_sen = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 3
  %4 = load i32* %n_ci_sen, align 4, !tbaa !0
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 %4) #7
  %n_sen = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 4
  %5 = load i32* %n_sen, align 4, !tbaa !0
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0), i32 %5) #7
  %n_tmat = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 5
  %6 = load i32* %n_tmat, align 4, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str5, i64 0, i64 0), i32 %6) #7
  %7 = load i32* %n_phone, align 4, !tbaa !0
  %cmp84 = icmp sgt i32 %7, 0
  br i1 %cmp84, label %for.body.lr.ph, label %for.end44

for.body.lr.ph:                                   ; preds = %entry
  %phone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 8
  %sseq30 = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 9
  %cd2cisen = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end39
  %indvars.iv88 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next89, %for.end39 ]
  %8 = trunc i64 %indvars.iv88 to i32
  %call7 = call i32 @mdef_phone_str(%struct.mdef_t* %m, i32 %8, i8* %0) #8
  %9 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %ssid8 = getelementptr inbounds %struct.phone_t* %9, i64 %indvars.iv88, i32 0
  %10 = load i32* %ssid8, align 4, !tbaa !0
  %tmat = getelementptr inbounds %struct.phone_t* %9, i64 %indvars.iv88, i32 1
  %11 = load i32* %tmat, align 4, !tbaa !0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0), i32 %11, i32 %10) #7
  %12 = load i32* %n_emit_state, align 4, !tbaa !0
  %cmp1580 = icmp sgt i32 %12, 0
  br i1 %cmp1580, label %for.body16.lr.ph, label %for.end

for.body16.lr.ph:                                 ; preds = %for.body
  %idxprom18 = sext i32 %10 to i64
  br label %for.body16

for.body16:                                       ; preds = %for.body16.lr.ph, %for.body16
  %indvars.iv = phi i64 [ 0, %for.body16.lr.ph ], [ %indvars.iv.next, %for.body16 ]
  %13 = load i16*** %sseq30, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds i16** %13, i64 %idxprom18
  %14 = load i16** %arrayidx19, align 8, !tbaa !3
  %arrayidx20 = getelementptr inbounds i16* %14, i64 %indvars.iv
  %15 = load i16* %arrayidx20, align 2, !tbaa !4
  %conv = sext i16 %15 to i32
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i32 %conv) #7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %16 = load i32* %n_emit_state, align 4, !tbaa !0
  %17 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %17, %16
  br i1 %cmp15, label %for.body16, label %for.end

for.end:                                          ; preds = %for.body16, %for.body
  %fputc = call i32 @fputc(i32 9, %struct._IO_FILE* %fp)
  %18 = load i32* %n_emit_state, align 4, !tbaa !0
  %cmp2582 = icmp sgt i32 %18, 0
  br i1 %cmp2582, label %for.body27.lr.ph, label %for.end39

for.body27.lr.ph:                                 ; preds = %for.end
  %idxprom29 = sext i32 %10 to i64
  br label %for.body27

for.body27:                                       ; preds = %for.body27.lr.ph, %for.body27
  %indvars.iv86 = phi i64 [ 0, %for.body27.lr.ph ], [ %indvars.iv.next87, %for.body27 ]
  %19 = load i16*** %sseq30, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds i16** %19, i64 %idxprom29
  %20 = load i16** %arrayidx31, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i16* %20, i64 %indvars.iv86
  %21 = load i16* %arrayidx32, align 2, !tbaa !4
  %idxprom33 = sext i16 %21 to i64
  %22 = load i16** %cd2cisen, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds i16* %22, i64 %idxprom33
  %23 = load i16* %arrayidx34, align 2, !tbaa !4
  %conv35 = sext i16 %23 to i32
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i32 %conv35) #7
  %indvars.iv.next87 = add i64 %indvars.iv86, 1
  %24 = load i32* %n_emit_state, align 4, !tbaa !0
  %25 = trunc i64 %indvars.iv.next87 to i32
  %cmp25 = icmp slt i32 %25, %24
  br i1 %cmp25, label %for.body27, label %for.end39

for.end39:                                        ; preds = %for.body27, %for.end
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %0) #7
  %indvars.iv.next89 = add i64 %indvars.iv88, 1
  %26 = load i32* %n_phone, align 4, !tbaa !0
  %27 = trunc i64 %indvars.iv.next89 to i32
  %cmp = icmp slt i32 %27, %26
  br i1 %cmp, label %for.body, label %for.end44

for.end44:                                        ; preds = %for.end39, %entry
  %call45 = call i32 @fflush(%struct._IO_FILE* %fp) #7
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @mdef_phone_str(%struct.mdef_t* nocapture %m, i32 %pid, i8* nocapture %buf) #0 {
entry:
  store i8 0, i8* %buf, align 1, !tbaa !1
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 0
  %0 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, %pid
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = zext i32 %pid to i64
  %sext = shl i64 %conv, 56
  %idxprom.i = ashr exact i64 %sext, 56
  %ciphone.i = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 7
  %1 = load %struct.ciphone_t** %ciphone.i, align 8, !tbaa !3
  %name.i = getelementptr inbounds %struct.ciphone_t* %1, i64 %idxprom.i, i32 0
  %2 = load i8** %name.i, align 8, !tbaa !3
  %strlen = tail call i64 @strlen(i8* %2)
  %leninc = add i64 %strlen, 1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf, i8* %2, i64 %leninc, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %pid to i64
  %phone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 8
  %3 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %ci = getelementptr inbounds %struct.phone_t* %3, i64 %idxprom, i32 2
  %4 = load i8* %ci, align 1, !tbaa !1
  %idxprom.i37 = sext i8 %4 to i64
  %ciphone.i38 = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 7
  %5 = load %struct.ciphone_t** %ciphone.i38, align 8, !tbaa !3
  %name.i39 = getelementptr inbounds %struct.ciphone_t* %5, i64 %idxprom.i37, i32 0
  %6 = load i8** %name.i39, align 8, !tbaa !3
  %lc = getelementptr inbounds %struct.phone_t* %3, i64 %idxprom, i32 3
  %7 = load i8* %lc, align 1, !tbaa !1
  %idxprom.i34 = sext i8 %7 to i64
  %name.i36 = getelementptr inbounds %struct.ciphone_t* %5, i64 %idxprom.i34, i32 0
  %8 = load i8** %name.i36, align 8, !tbaa !3
  %rc = getelementptr inbounds %struct.phone_t* %3, i64 %idxprom, i32 4
  %9 = load i8* %rc, align 1, !tbaa !1
  %idxprom.i31 = sext i8 %9 to i64
  %name.i33 = getelementptr inbounds %struct.ciphone_t* %5, i64 %idxprom.i31, i32 0
  %10 = load i8** %name.i33, align 8, !tbaa !3
  %wpos = getelementptr inbounds %struct.phone_t* %3, i64 %idxprom, i32 5
  %11 = load i32* %wpos, align 4, !tbaa !1
  %idxprom15 = zext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [6 x i8]* @.str11, i64 0, i64 %idxprom15
  %12 = load i8* %arrayidx16, align 1, !tbaa !1
  %conv17 = sext i8 %12 to i32
  %call18 = tail call i32 (i8*, i8*, ...)* @sprintf(i8* %buf, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* %6, i8* %8, i8* %10, i32 %conv17) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define signext i8 @mdef_ciphone_id(%struct.mdef_t* nocapture %m, i8* %ci) #0 {
entry:
  %id = alloca i32, align 4
  %ciphone_ht = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 6
  %0 = load %struct.hash_table_t** %ciphone_ht, align 8, !tbaa !3
  %call = call i32 @hash_lookup(%struct.hash_table_t* %0, i8* %ci, i32* %id) #7
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %1 = load i32* %id, align 4, !tbaa !0
  %conv = trunc i32 %1 to i8
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %conv, %if.end ], [ -1, %entry ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i32 @hash_lookup(%struct.hash_table_t*, i8*, i32*) #3

; Function Attrs: nounwind optsize readonly uwtable
define i8* @mdef_ciphone_str(%struct.mdef_t* nocapture %m, i8 signext %id) #4 {
entry:
  %idxprom = sext i8 %id to i64
  %ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 7
  %0 = load %struct.ciphone_t** %ciphone, align 8, !tbaa !3
  %name = getelementptr inbounds %struct.ciphone_t* %0, i64 %idxprom, i32 0
  %1 = load i8** %name, align 8, !tbaa !3
  ret i8* %1
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @mdef_phone_id(%struct.mdef_t* nocapture %m, i8 signext %ci, i8 signext %lc, i8 signext %rc, i32 %wpos) #4 {
entry:
  %idxprom = sext i8 %ci to i64
  %idxprom1 = zext i32 %wpos to i64
  %wpos_ci_lclist = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 15
  %0 = load %struct.ph_lc_s**** %wpos_ci_lclist, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.ph_lc_s*** %0, i64 %idxprom1
  %1 = load %struct.ph_lc_s*** %arrayidx, align 8, !tbaa !3
  %arrayidx2 = getelementptr inbounds %struct.ph_lc_s** %1, i64 %idxprom
  %2 = load %struct.ph_lc_s** %arrayidx2, align 8, !tbaa !3
  %tobool7.i = icmp eq %struct.ph_lc_s* %2, null
  %sil = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 14
  %ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 7
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end, %entry
  %lc.tr = phi i8 [ %lc, %entry ], [ %lc., %if.end ]
  %rc.tr = phi i8 [ %rc, %entry ], [ %rc., %if.end ]
  br i1 %tobool7.i, label %if.then, label %land.rhs.i

land.rhs.i:                                       ; preds = %tailrecurse, %for.inc.i
  %lcptr.08.i = phi %struct.ph_lc_s* [ %4, %for.inc.i ], [ %2, %tailrecurse ]
  %lc1.i = getelementptr inbounds %struct.ph_lc_s* %lcptr.08.i, i64 0, i32 0
  %3 = load i8* %lc1.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %3, %lc.tr
  br i1 %cmp.i, label %lor.lhs.false, label %for.inc.i

for.inc.i:                                        ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.ph_lc_s* %lcptr.08.i, i64 0, i32 2
  %4 = load %struct.ph_lc_s** %next.i, align 8, !tbaa !3
  %tobool.i = icmp eq %struct.ph_lc_s* %4, null
  br i1 %tobool.i, label %if.then, label %land.rhs.i

lor.lhs.false:                                    ; preds = %land.rhs.i
  %rclist = getelementptr inbounds %struct.ph_lc_s* %lcptr.08.i, i64 0, i32 1
  %5 = load %struct.ph_rc_s** %rclist, align 8, !tbaa !3
  %tobool7.i61 = icmp eq %struct.ph_rc_s* %5, null
  br i1 %tobool7.i61, label %if.then, label %land.rhs.i63

land.rhs.i63:                                     ; preds = %lor.lhs.false, %for.inc.i66
  %rcptr.08.i = phi %struct.ph_rc_s* [ %7, %for.inc.i66 ], [ %5, %lor.lhs.false ]
  %rc1.i = getelementptr inbounds %struct.ph_rc_s* %rcptr.08.i, i64 0, i32 0
  %6 = load i8* %rc1.i, align 1, !tbaa !1
  %cmp.i62 = icmp eq i8 %6, %rc.tr
  br i1 %cmp.i62, label %if.end43, label %for.inc.i66

for.inc.i66:                                      ; preds = %land.rhs.i63
  %next.i64 = getelementptr inbounds %struct.ph_rc_s* %rcptr.08.i, i64 0, i32 2
  %7 = load %struct.ph_rc_s** %next.i64, align 8, !tbaa !3
  %tobool.i65 = icmp eq %struct.ph_rc_s* %7, null
  br i1 %tobool.i65, label %if.then, label %land.rhs.i63

if.then:                                          ; preds = %for.inc.i66, %for.inc.i, %lor.lhs.false, %tailrecurse
  %8 = load i8* %sil, align 1, !tbaa !1
  %cmp8 = icmp slt i8 %8, 0
  br i1 %cmp8, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %idxprom12 = sext i8 %lc.tr to i64
  %9 = load %struct.ciphone_t** %ciphone, align 8, !tbaa !3
  %filler = getelementptr inbounds %struct.ciphone_t* %9, i64 %idxprom12, i32 1
  %10 = load i32* %filler, align 4, !tbaa !0
  %tobool = icmp eq i32 %10, 0
  %lc. = select i1 %tobool, i8 %lc.tr, i8 %8
  %idxprom19 = sext i8 %rc.tr to i64
  %filler22 = getelementptr inbounds %struct.ciphone_t* %9, i64 %idxprom19, i32 1
  %11 = load i32* %filler22, align 4, !tbaa !0
  %tobool23 = icmp eq i32 %11, 0
  %rc. = select i1 %tobool23, i8 %rc.tr, i8 %8
  %cmp34 = icmp eq i8 %lc., %lc.tr
  %cmp38 = icmp eq i8 %rc., %rc.tr
  %or.cond = and i1 %cmp34, %cmp38
  br i1 %or.cond, label %return, label %tailrecurse

if.end43:                                         ; preds = %land.rhs.i63
  %pid = getelementptr inbounds %struct.ph_rc_s* %rcptr.08.i, i64 0, i32 1
  %12 = load i32* %pid, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.then, %if.end43
  %retval.0 = phi i32 [ %12, %if.end43 ], [ -1, %if.then ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @mdef_phone_id_nearest(%struct.mdef_t* nocapture %m, i8 signext %b, i8 signext %l, i8 signext %r, i32 %pos) #4 {
entry:
  %0 = or i8 %r, %l
  %1 = icmp slt i8 %0, 0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv5 = sext i8 %b to i32
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call i32 @mdef_phone_id(%struct.mdef_t* %m, i8 signext %b, i8 signext %l, i8 signext %r, i32 %pos) #8
  %cmp6 = icmp sgt i32 %call, -1
  br i1 %cmp6, label %return, label %for.body

for.body:                                         ; preds = %if.end, %for.inc
  %tmppos.0140 = phi i32 [ %inc, %for.inc ], [ 0, %if.end ]
  %cmp12 = icmp eq i32 %tmppos.0140, %pos
  br i1 %cmp12, label %for.inc, label %if.then14

if.then14:                                        ; preds = %for.body
  %call15 = tail call i32 @mdef_phone_id(%struct.mdef_t* %m, i8 signext %b, i8 signext %l, i8 signext %r, i32 %tmppos.0140) #8
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %return, label %for.inc

for.inc:                                          ; preds = %for.body, %if.then14
  %inc = add i32 %tmppos.0140, 1
  %cmp10 = icmp ult i32 %inc, 4
  br i1 %cmp10, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %sil = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 14
  %2 = load i8* %sil, align 1, !tbaa !1
  %cmp22 = icmp sgt i8 %2, -1
  br i1 %cmp22, label %if.then24, label %if.end76

if.then24:                                        ; preds = %for.end
  %idxprom = sext i8 %l to i64
  %ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 7
  %3 = load %struct.ciphone_t** %ciphone, align 8, !tbaa !3
  %filler = getelementptr inbounds %struct.ciphone_t* %3, i64 %idxprom, i32 1
  %4 = load i32* %filler, align 4, !tbaa !0
  %tobool = icmp eq i32 %4, 0
  %l. = select i1 %tobool, i8 %l, i8 %2
  %idxprom31 = sext i8 %r to i64
  %filler34 = getelementptr inbounds %struct.ciphone_t* %3, i64 %idxprom31, i32 1
  %5 = load i32* %filler34, align 4, !tbaa !0
  %tobool35 = icmp eq i32 %5, 0
  %r. = select i1 %tobool35, i8 %r, i8 %2
  %cmp46 = icmp eq i8 %l., %l
  %cmp51 = icmp eq i8 %r., %r
  %or.cond137 = and i1 %cmp46, %cmp51
  br i1 %or.cond137, label %if.end76, label %if.then53

if.then53:                                        ; preds = %if.then24
  %call54 = tail call i32 @mdef_phone_id(%struct.mdef_t* %m, i8 signext %b, i8 signext %l., i8 signext %r., i32 %pos) #8
  %cmp55 = icmp sgt i32 %call54, -1
  br i1 %cmp55, label %return, label %for.body62

for.body62:                                       ; preds = %if.then53, %for.inc72
  %tmppos.1138 = phi i32 [ %inc73, %for.inc72 ], [ 0, %if.then53 ]
  %cmp63 = icmp eq i32 %tmppos.1138, %pos
  br i1 %cmp63, label %for.inc72, label %if.then65

if.then65:                                        ; preds = %for.body62
  %call66 = tail call i32 @mdef_phone_id(%struct.mdef_t* %m, i8 signext %b, i8 signext %l., i8 signext %r., i32 %tmppos.1138) #8
  %cmp67 = icmp sgt i32 %call66, -1
  br i1 %cmp67, label %return, label %for.inc72

for.inc72:                                        ; preds = %for.body62, %if.then65
  %inc73 = add i32 %tmppos.1138, 1
  %cmp60 = icmp ult i32 %inc73, 4
  br i1 %cmp60, label %for.body62, label %if.end76

if.end76:                                         ; preds = %for.inc72, %if.then24, %for.end
  %conv87 = sext i8 %b to i32
  br label %return

return:                                           ; preds = %if.then14, %if.then65, %if.then53, %if.end, %if.end76, %if.then
  %retval.0 = phi i32 [ %conv5, %if.then ], [ %conv87, %if.end76 ], [ %call, %if.end ], [ %call54, %if.then53 ], [ %call66, %if.then65 ], [ %call15, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @mdef_phone_components(%struct.mdef_t* nocapture %m, i32 %p, i8* nocapture %b, i8* nocapture %l, i8* nocapture %r, i32* nocapture %pos) #0 {
entry:
  %idxprom = sext i32 %p to i64
  %phone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 8
  %0 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %ci = getelementptr inbounds %struct.phone_t* %0, i64 %idxprom, i32 2
  %1 = load i8* %ci, align 1, !tbaa !1
  store i8 %1, i8* %b, align 1, !tbaa !1
  %2 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %lc = getelementptr inbounds %struct.phone_t* %2, i64 %idxprom, i32 3
  %3 = load i8* %lc, align 1, !tbaa !1
  store i8 %3, i8* %l, align 1, !tbaa !1
  %4 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %rc = getelementptr inbounds %struct.phone_t* %4, i64 %idxprom, i32 4
  %5 = load i8* %rc, align 1, !tbaa !1
  store i8 %5, i8* %r, align 1, !tbaa !1
  %6 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %wpos = getelementptr inbounds %struct.phone_t* %6, i64 %idxprom, i32 5
  %7 = load i32* %wpos, align 4, !tbaa !1
  store i32 %7, i32* %pos, align 4, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @mdef_is_ciphone(%struct.mdef_t* nocapture %m, i32 %p) #4 {
entry:
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 0
  %0 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, %p
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: nounwind optsize uwtable
define %struct.mdef_t* @mdef_init(i8* %mdeffile) #0 {
entry:
  %j.i = alloca i32, align 4
  %id.i125.i = alloca i32, align 4
  %id.i117.i = alloca i32, align 4
  %id.i.i593 = alloca i32, align 4
  %wlen.i594 = alloca i32, align 4
  %id.i = alloca i32, align 4
  %id.i.i = alloca i32, align 4
  %wlen.i = alloca i32, align 4
  %word.i = alloca [1024 x i8], align 16
  %n = alloca i32, align 4
  %tag = alloca [1024 x i8], align 16
  %buf = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8]* %tag, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %1 = getelementptr inbounds [1024 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %1) #1
  %tobool = icmp eq i8* %mdeffile, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 592, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([14 x i8]* @.str16, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 594, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([30 x i8]* @.str18, i64 0, i64 0), i8* %mdeffile) #7
  %call = call i8* @__ckd_calloc__(i64 1, i64 104, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 596) #7
  %2 = bitcast i8* %call to %struct.mdef_t*
  %call1 = call %struct._IO_FILE* @fopen(i8* %mdeffile, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #7
  %cmp = icmp eq %struct._IO_FILE* %call1, null
  br i1 %cmp, label %if.then2, label %while.cond.i

if.then2:                                         ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 599, i8* getelementptr inbounds ([13 x i8]* @.str20, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__fatal_sys_error(i8* getelementptr inbounds ([20 x i8]* @.str21, i64 0, i64 0), i8* %mdeffile) #7
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end, %if.then2, %while.body.i
  %call.i = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %call1) #7
  %cmp.i = icmp eq i8* %call.i, null
  br i1 %cmp.i, label %if.then6, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %3 = load i8* %1, align 16, !tbaa !1
  %cmp1.i = icmp eq i8 %3, 35
  br i1 %cmp1.i, label %while.cond.i, label %if.end7

if.then6:                                         ; preds = %while.cond.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 602, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([16 x i8]* @.str22, i64 0, i64 0), i8* %mdeffile) #7
  br label %if.end7

if.end7:                                          ; preds = %while.body.i, %if.then6
  %call9 = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), i64 3) #9
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 605, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([41 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), i8* %1) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.then11
  %n_ci_sen = getelementptr inbounds i8* %call, i64 12
  %4 = bitcast i8* %n_ci_sen to i32*
  store i32 -1, i32* %4, align 4, !tbaa !0
  %n_sen = getelementptr inbounds i8* %call, i64 16
  %5 = bitcast i8* %n_sen to i32*
  store i32 -1, i32* %5, align 4, !tbaa !0
  %n_tmat = getelementptr inbounds i8* %call, i64 20
  %6 = bitcast i8* %n_tmat to i32*
  store i32 -1, i32* %6, align 4, !tbaa !0
  br label %do.body

do.body:                                          ; preds = %do.cond, %lor.lhs.false71, %lor.lhs.false74, %lor.rhs, %if.end13
  %n_map.0 = phi i32 [ -1, %if.end13 ], [ %n_map.1, %lor.rhs ], [ %n_map.1, %lor.lhs.false74 ], [ %n_map.1, %lor.lhs.false71 ], [ %n_map.1, %do.cond ]
  %n_tri.0 = phi i32 [ -1, %if.end13 ], [ %n_tri.1, %lor.rhs ], [ %n_tri.1, %lor.lhs.false74 ], [ %n_tri.1, %lor.lhs.false71 ], [ %n_tri.1, %do.cond ]
  %n_ci.0 = phi i32 [ -1, %if.end13 ], [ %n_ci.1, %lor.rhs ], [ %n_ci.1, %lor.lhs.false74 ], [ %n_ci.1, %lor.lhs.false71 ], [ %n_ci.1, %do.cond ]
  br label %while.cond.i568

while.cond.i568:                                  ; preds = %while.body.i570, %do.body
  %call.i566 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %call1) #7
  %cmp.i567 = icmp eq i8* %call.i566, null
  br i1 %cmp.i567, label %if.then17, label %while.body.i570

while.body.i570:                                  ; preds = %while.cond.i568
  %7 = load i8* %1, align 16, !tbaa !1
  %cmp1.i569 = icmp eq i8 %7, 35
  br i1 %cmp1.i569, label %while.cond.i568, label %if.end18

if.then17:                                        ; preds = %while.cond.i568
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 616, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([19 x i8]* @.str25, i64 0, i64 0)) #7
  br label %if.end18

if.end18:                                         ; preds = %while.body.i570, %if.then17
  %call21 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([6 x i8]* @.str26, i64 0, i64 0), i32* %n, i8* %0) #7
  %cmp22 = icmp ne i32 %call21, 2
  %8 = load i32* %n, align 4, !tbaa !0
  %cmp23 = icmp slt i32 %8, 0
  %or.cond = or i1 %cmp22, %cmp23
  br i1 %or.cond, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end18
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 619, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([21 x i8]* @.str27, i64 0, i64 0), i8* %1) #7
  br label %if.end26

if.end26:                                         ; preds = %if.end18, %if.then24
  %call28 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str28, i64 0, i64 0)) #9
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end26
  %9 = load i32* %n, align 4, !tbaa !0
  br label %do.cond

if.else:                                          ; preds = %if.end26
  %call32 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8]* @.str29, i64 0, i64 0)) #9
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.else
  %10 = load i32* %n, align 4, !tbaa !0
  br label %do.cond

if.else35:                                        ; preds = %if.else
  %call37 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str30, i64 0, i64 0)) #9
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then39, label %if.else40

if.then39:                                        ; preds = %if.else35
  %11 = load i32* %n, align 4, !tbaa !0
  br label %do.cond

if.else40:                                        ; preds = %if.else35
  %call42 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([16 x i8]* @.str31, i64 0, i64 0)) #9
  %cmp43 = icmp eq i32 %call42, 0
  br i1 %cmp43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else40
  %12 = load i32* %n, align 4, !tbaa !0
  store i32 %12, i32* %4, align 4, !tbaa !0
  br label %do.cond

if.else46:                                        ; preds = %if.else40
  %call48 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str32, i64 0, i64 0)) #9
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.else46
  %13 = load i32* %n, align 4, !tbaa !0
  store i32 %13, i32* %5, align 4, !tbaa !0
  br label %do.cond

if.else52:                                        ; preds = %if.else46
  %call54 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str33, i64 0, i64 0)) #9
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.else52
  %14 = load i32* %n, align 4, !tbaa !0
  store i32 %14, i32* %6, align 4, !tbaa !0
  br label %do.cond

if.else58:                                        ; preds = %if.else52
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 634, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([25 x i8]* @.str34, i64 0, i64 0), i8* %1) #7
  br label %do.cond

do.cond:                                          ; preds = %if.then30, %if.then39, %if.then50, %if.else58, %if.then56, %if.then44, %if.then34
  %n_map.1 = phi i32 [ %n_map.0, %if.then30 ], [ %n_map.0, %if.then34 ], [ %11, %if.then39 ], [ %n_map.0, %if.then44 ], [ %n_map.0, %if.then50 ], [ %n_map.0, %if.then56 ], [ %n_map.0, %if.else58 ]
  %n_tri.1 = phi i32 [ %n_tri.0, %if.then30 ], [ %10, %if.then34 ], [ %n_tri.0, %if.then39 ], [ %n_tri.0, %if.then44 ], [ %n_tri.0, %if.then50 ], [ %n_tri.0, %if.then56 ], [ %n_tri.0, %if.else58 ]
  %n_ci.1 = phi i32 [ %9, %if.then30 ], [ %n_ci.0, %if.then34 ], [ %n_ci.0, %if.then39 ], [ %n_ci.0, %if.then44 ], [ %n_ci.0, %if.then50 ], [ %n_ci.0, %if.then56 ], [ %n_ci.0, %if.else58 ]
  %15 = or i32 %n_tri.1, %n_map.1
  %16 = or i32 %15, %n_ci.1
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %do.body, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %do.cond
  %18 = load i32* %4, align 4, !tbaa !0
  %cmp73 = icmp slt i32 %18, 0
  br i1 %cmp73, label %do.body, label %lor.lhs.false74

lor.lhs.false74:                                  ; preds = %lor.lhs.false71
  %19 = load i32* %5, align 4, !tbaa !0
  %cmp76 = icmp slt i32 %19, 0
  br i1 %cmp76, label %do.body, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false74
  %20 = load i32* %6, align 4, !tbaa !0
  %cmp78 = icmp slt i32 %20, 0
  br i1 %cmp78, label %do.body, label %do.end

do.end:                                           ; preds = %lor.rhs
  %cmp79 = icmp eq i32 %n_ci.1, 0
  %cmp82 = icmp eq i32 %18, 0
  %or.cond563 = or i1 %cmp79, %cmp82
  %cmp85 = icmp eq i32 %20, 0
  %or.cond564 = or i1 %or.cond563, %cmp85
  %cmp89 = icmp sgt i32 %18, %19
  %or.cond565 = or i1 %or.cond564, %cmp89
  br i1 %or.cond565, label %if.then90, label %if.end91

if.then90:                                        ; preds = %do.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 639, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([21 x i8]* @.str35, i64 0, i64 0), i8* %mdeffile) #7
  br label %if.end91

if.end91:                                         ; preds = %do.end, %if.then90
  %cmp92 = icmp sgt i32 %n_ci.1, 126
  br i1 %cmp92, label %if.then93, label %if.end94

if.then93:                                        ; preds = %if.end91
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 643, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([40 x i8]* @.str36, i64 0, i64 0), i8* %mdeffile, i32 %n_ci.1, i32 127) #7
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end91
  %add = add nsw i32 %n_ci.1, %n_tri.1
  %cmp95 = icmp sgt i32 %add, 2147483645
  br i1 %cmp95, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end94
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 645, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([37 x i8]* @.str37, i64 0, i64 0), i8* %mdeffile, i32 %add, i32 2147483646) #7
  br label %if.end98

if.end98:                                         ; preds = %if.end94, %if.then96
  %21 = load i32* %5, align 4, !tbaa !0
  %cmp100 = icmp sgt i32 %21, 32765
  br i1 %cmp100, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.end98
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 647, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %22 = load i32* %5, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([38 x i8]* @.str38, i64 0, i64 0), i8* %mdeffile, i32 %22, i32 32766) #7
  br label %if.end103

if.end103:                                        ; preds = %if.end98, %if.then101
  %23 = load i32* %6, align 4, !tbaa !0
  %cmp105 = icmp sgt i32 %23, 2147483645
  br i1 %cmp105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end103
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 649, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %24 = load i32* %6, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([36 x i8]* @.str39, i64 0, i64 0), i8* %mdeffile, i32 %24, i32 2147483646) #7
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end103
  %div = sdiv i32 %n_map.1, %add
  %sub = add nsw i32 %div, -1
  %n_emit_state = getelementptr inbounds i8* %call, i64 8
  %25 = bitcast i8* %n_emit_state to i32*
  store i32 %sub, i32* %25, align 4, !tbaa !0
  %mul = mul nsw i32 %div, %add
  %cmp113 = icmp eq i32 %mul, %n_map.1
  br i1 %cmp113, label %if.end115, label %if.then114

if.then114:                                       ; preds = %if.end108
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 653, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([56 x i8]* @.str40, i64 0, i64 0)) #7
  br label %if.end115

if.end115:                                        ; preds = %if.end108, %if.then114
  %n_ciphone = bitcast i8* %call to i32*
  store i32 %n_ci.1, i32* %n_ciphone, align 4, !tbaa !0
  %call116 = call %struct.hash_table_t* @hash_new(i32 %n_ci.1, i32 1) #7
  %ciphone_ht = getelementptr inbounds i8* %call, i64 24
  %26 = bitcast i8* %ciphone_ht to %struct.hash_table_t**
  store %struct.hash_table_t* %call116, %struct.hash_table_t** %26, align 8, !tbaa !3
  %conv = sext i32 %n_ci.1 to i64
  %call117 = call i8* @__ckd_calloc__(i64 %conv, i64 16, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 658) #7
  %27 = bitcast i8* %call117 to %struct.ciphone_t*
  %ciphone = getelementptr inbounds i8* %call, i64 32
  %28 = bitcast i8* %ciphone to %struct.ciphone_t**
  store %struct.ciphone_t* %27, %struct.ciphone_t** %28, align 8, !tbaa !3
  %n_phone = getelementptr inbounds i8* %call, i64 4
  %29 = bitcast i8* %n_phone to i32*
  store i32 %add, i32* %29, align 4, !tbaa !0
  %conv120 = sext i32 %add to i64
  %call121 = call i8* @__ckd_calloc__(i64 %conv120, i64 16, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 666) #7
  %30 = bitcast i8* %call121 to %struct.phone_t*
  %phone = getelementptr inbounds i8* %call, i64 40
  %31 = bitcast i8* %phone to %struct.phone_t**
  store %struct.phone_t* %30, %struct.phone_t** %31, align 8, !tbaa !3
  %32 = load i32* %29, align 4, !tbaa !0
  %33 = load i32* %25, align 4, !tbaa !0
  %call124 = call i8** @__ckd_calloc_2d__(i32 %32, i32 %33, i32 2, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 669) #7
  %34 = bitcast i8** %call124 to i16**
  %sseq = getelementptr inbounds i8* %call, i64 48
  %35 = bitcast i8* %sseq to i16***
  store i16** %34, i16*** %35, align 8, !tbaa !3
  %36 = load i32* %n_ciphone, align 4, !tbaa !0
  %call126 = call i8** @__ckd_calloc_2d__(i32 4, i32 %36, i32 8, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 673) #7
  %37 = bitcast i8** %call126 to %struct.ph_lc_s***
  %wpos_ci_lclist = getelementptr inbounds i8* %call, i64 96
  %38 = bitcast i8* %wpos_ci_lclist to %struct.ph_lc_s****
  store %struct.ph_lc_s*** %37, %struct.ph_lc_s**** %38, align 8, !tbaa !3
  %cmp127653 = icmp sgt i32 %n_ci.1, 0
  br i1 %cmp127653, label %while.cond.i575.preheader.lr.ph, label %for.end

while.cond.i575.preheader.lr.ph:                  ; preds = %if.end115
  %39 = bitcast i32* %wlen.i to i8*
  %40 = getelementptr inbounds [1024 x i8]* %word.i, i64 0, i64 0
  %41 = bitcast i32* %id.i.i to i8*
  %sub.ptr.rhs.cast.i = ptrtoint [1024 x i8]* %buf to i64
  br label %while.cond.i575.preheader

while.cond.i575.preheader:                        ; preds = %parse_base_line.exit, %while.cond.i575.preheader.lr.ph
  %indvars.iv673 = phi i64 [ 0, %while.cond.i575.preheader.lr.ph ], [ %indvars.iv.next674, %parse_base_line.exit ]
  br label %while.cond.i575

while.cond.i575:                                  ; preds = %while.cond.i575.preheader, %while.body.i577
  %call.i573 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %call1) #7
  %cmp.i574 = icmp eq i8* %call.i573, null
  br i1 %cmp.i574, label %if.then133, label %while.body.i577

while.body.i577:                                  ; preds = %while.cond.i575
  %42 = load i8* %1, align 16, !tbaa !1
  %cmp1.i576 = icmp eq i8 %42, 35
  br i1 %cmp1.i576, label %while.cond.i575, label %if.end134

if.then133:                                       ; preds = %while.cond.i575
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 683, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %43 = trunc i64 %indvars.iv673 to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str41, i64 0, i64 0), i32 %43) #7
  br label %if.end134

if.end134:                                        ; preds = %while.body.i577, %if.then133
  call void @llvm.lifetime.start(i64 4, i8* %39) #1
  call void @llvm.lifetime.start(i64 1024, i8* %40) #1
  %call.i580 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %40, i32* %wlen.i) #7
  %cmp.i581 = icmp eq i32 %call.i580, 1
  br i1 %cmp.i581, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end134
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 421, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([29 x i8]* @.str50, i64 0, i64 0), i8* %1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end134
  %44 = load i32* %wlen.i, align 4, !tbaa !0
  %idx.ext.i = sext i32 %44 to i64
  %add.ptr.i = getelementptr inbounds [1024 x i8]* %buf, i64 0, i64 %idx.ext.i
  call void @llvm.lifetime.start(i64 4, i8* %41) #1
  %45 = load %struct.hash_table_t** %26, align 8, !tbaa !3
  %call.i.i = call i32 @hash_lookup(%struct.hash_table_t* %45, i8* %40, i32* %id.i.i) #7
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end6.i, label %mdef_ciphone_id.exit.i

mdef_ciphone_id.exit.i:                           ; preds = %if.end.i
  %46 = load i32* %id.i.i, align 4, !tbaa !0
  %conv.i.i = trunc i32 %46 to i8
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  %cmp3.i = icmp sgt i8 %conv.i.i, -1
  br i1 %cmp3.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %mdef_ciphone_id.exit.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 427, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([26 x i8]* @.str72, i64 0, i64 0), i8* %1) #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %mdef_ciphone_id.exit.i, %if.end.i
  %call.i76.i = call i8* @__ckd_salloc__(i8* %40, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 138) #7
  %47 = load %struct.ciphone_t** %28, align 8, !tbaa !3
  %name.i.i = getelementptr inbounds %struct.ciphone_t* %47, i64 %indvars.iv673, i32 0
  store i8* %call.i76.i, i8** %name.i.i, align 8, !tbaa !3
  %48 = load %struct.hash_table_t** %26, align 8, !tbaa !3
  %49 = load %struct.ciphone_t** %28, align 8, !tbaa !3
  %name4.i.i = getelementptr inbounds %struct.ciphone_t* %49, i64 %indvars.iv673, i32 0
  %50 = load i8** %name4.i.i, align 8, !tbaa !3
  %51 = trunc i64 %indvars.iv673 to i32
  %call5.i.i = call i32 @hash_enter(%struct.hash_table_t* %48, i8* %50, i32 %51) #7
  %cmp.i78.i = icmp eq i32 %call5.i.i, %51
  br i1 %cmp.i78.i, label %ciphone_add.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end6.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 140, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %52 = load %struct.ciphone_t** %28, align 8, !tbaa !3
  %name9.i.i = getelementptr inbounds %struct.ciphone_t* %52, i64 %indvars.iv673, i32 0
  %53 = load i8** %name9.i.i, align 8, !tbaa !3
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([43 x i8]* @.str76, i64 0, i64 0), i8* %53) #7
  br label %ciphone_add.exit.i

ciphone_add.exit.i:                               ; preds = %if.then.i.i, %if.end6.i
  %call1281.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr.i, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %40, i32* %wlen.i) #7
  %cmp1382.i = icmp ne i32 %call1281.i, 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end20.i, %ciphone_add.exit.i
  %cmp1385.i = phi i1 [ %cmp1382.i, %ciphone_add.exit.i ], [ %cmp13.i, %if.end20.i ]
  %lp.084.i = phi i8* [ %add.ptr.i, %ciphone_add.exit.i ], [ %add.ptr22.i, %if.end20.i ]
  %n.083.i = phi i32 [ 0, %ciphone_add.exit.i ], [ %inc.i, %if.end20.i ]
  br i1 %cmp1385.i, label %if.then19.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %call16.i = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([2 x i8]* @.str73, i64 0, i64 0)) #9
  %cmp17.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.i, label %if.end20.i, label %if.then19.i

if.then19.i:                                      ; preds = %lor.lhs.false.i, %for.body.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 436, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([37 x i8]* @.str74, i64 0, i64 0), i8* %1) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then19.i, %lor.lhs.false.i
  %54 = load i32* %wlen.i, align 4, !tbaa !0
  %idx.ext21.i = sext i32 %54 to i64
  %add.ptr22.i = getelementptr inbounds i8* %lp.084.i, i64 %idx.ext21.i
  %inc.i = add nsw i32 %n.083.i, 1
  %call12.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr22.i, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %40, i32* %wlen.i) #7
  %cmp13.i = icmp ne i32 %call12.i, 1
  %exitcond.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %if.end20.i
  %conv8.i = trunc i64 %indvars.iv673 to i8
  br i1 %cmp13.i, label %if.then27.i, label %if.end28.i

if.then27.i:                                      ; preds = %for.end.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 442, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([35 x i8]* @.str75, i64 0, i64 0), i8* %1) #7
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %for.end.i
  %55 = load i32* %wlen.i, align 4, !tbaa !0
  %idx.ext29.i = sext i32 %55 to i64
  %add.ptr22.sum.i = add i64 %idx.ext29.i, %idx.ext21.i
  %add.ptr30.i = getelementptr inbounds i8* %lp.084.i, i64 %add.ptr22.sum.i
  %call32.i = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8]* @.str59, i64 0, i64 0)) #9
  %cmp33.i = icmp eq i32 %call32.i, 0
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.end28.i
  %idxprom.i689 = shl i64 %indvars.iv673, 56
  %idxprom.i = ashr exact i64 %idxprom.i689, 56
  %56 = load %struct.ciphone_t** %28, align 8, !tbaa !3
  %filler.i = getelementptr inbounds %struct.ciphone_t* %56, i64 %idxprom.i, i32 1
  store i32 1, i32* %filler.i, align 4, !tbaa !0
  br label %parse_base_line.exit

if.else.i:                                        ; preds = %if.end28.i
  %call38.i = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0)) #9
  %cmp39.i = icmp eq i32 %call38.i, 0
  br i1 %cmp39.i, label %if.then41.i, label %if.else47.i

if.then41.i:                                      ; preds = %if.else.i
  %idxprom43.i688 = shl i64 %indvars.iv673, 56
  %idxprom43.i = ashr exact i64 %idxprom43.i688, 56
  %57 = load %struct.ciphone_t** %28, align 8, !tbaa !3
  %filler46.i = getelementptr inbounds %struct.ciphone_t* %57, i64 %idxprom43.i, i32 1
  store i32 0, i32* %filler46.i, align 4, !tbaa !0
  br label %parse_base_line.exit

if.else47.i:                                      ; preds = %if.else.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 449, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str61, i64 0, i64 0), i8* %1) #7
  br label %parse_base_line.exit

parse_base_line.exit:                             ; preds = %if.then35.i, %if.then41.i, %if.else47.i
  call fastcc void @triphone_add(%struct.mdef_t* %2, i8 signext %conv8.i, i8 signext -1, i8 signext -1, i32 4, i32 %51) #7
  %sub.ptr.lhs.cast.i = ptrtoint i8* %add.ptr30.i to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv50.i = trunc i64 %sub.ptr.sub.i to i32
  call fastcc void @parse_tmat_senmap(%struct.mdef_t* %2, i8* %1, i32 %conv50.i, i32 %51) #7
  call void @llvm.lifetime.end(i64 1024, i8* %40) #1
  call void @llvm.lifetime.end(i64 4, i8* %39) #1
  %indvars.iv.next674 = add i64 %indvars.iv673, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next674 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_ci.1
  br i1 %exitcond, label %for.end, label %while.cond.i575.preheader

for.end:                                          ; preds = %parse_base_line.exit, %if.end115
  %p.0.lcssa = phi i32 [ 0, %if.end115 ], [ %n_ci.1, %parse_base_line.exit ]
  %58 = bitcast i32* %id.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %58) #1
  %59 = load %struct.hash_table_t** %26, align 8, !tbaa !3
  %call.i582 = call i32 @hash_lookup(%struct.hash_table_t* %59, i8* getelementptr inbounds ([4 x i8]* @.str42, i64 0, i64 0), i32* %id.i) #7
  %cmp.i583 = icmp slt i32 %call.i582, 0
  br i1 %cmp.i583, label %mdef_ciphone_id.exit, label %if.end.i584

if.end.i584:                                      ; preds = %for.end
  %60 = load i32* %id.i, align 4, !tbaa !0
  %conv.i = trunc i32 %60 to i8
  br label %mdef_ciphone_id.exit

mdef_ciphone_id.exit:                             ; preds = %for.end, %if.end.i584
  %retval.0.i585 = phi i8 [ %conv.i, %if.end.i584 ], [ -1, %for.end ]
  call void @llvm.lifetime.end(i64 4, i8* %58) #1
  %61 = getelementptr inbounds i8* %call, i64 88
  store i8 %retval.0.i585, i8* %61, align 1, !tbaa !1
  %62 = bitcast i32* %wlen.i594 to i8*
  %63 = getelementptr inbounds [1024 x i8]* %word.i, i64 0, i64 0
  %64 = bitcast i32* %id.i.i593 to i8*
  %65 = bitcast i32* %id.i117.i to i8*
  %66 = bitcast i32* %id.i125.i to i8*
  %arrayidx.i = getelementptr inbounds [1024 x i8]* %word.i, i64 0, i64 1
  br label %for.cond137

for.cond137:                                      ; preds = %parse_tri_line.exit, %mdef_ciphone_id.exit
  %p.1 = phi i32 [ %p.0.lcssa, %mdef_ciphone_id.exit ], [ %inc150, %parse_tri_line.exit ]
  %67 = load i32* %29, align 4, !tbaa !0
  %cmp139 = icmp slt i32 %p.1, %67
  br label %while.cond.i588

while.cond.i588:                                  ; preds = %while.body.i590, %for.cond137
  %call.i586 = call i8* @fgets(i8* %1, i32 1024, %struct._IO_FILE* %call1) #7
  %cmp.i587 = icmp eq i8* %call.i586, null
  br i1 %cmp.i587, label %noncomment_line.exit592, label %while.body.i590

while.body.i590:                                  ; preds = %while.cond.i588
  %68 = load i8* %1, align 16, !tbaa !1
  %cmp1.i589 = icmp eq i8 %68, 35
  br i1 %cmp1.i589, label %while.cond.i588, label %noncomment_line.exit592

noncomment_line.exit592:                          ; preds = %while.cond.i588, %while.body.i590
  %retval.0.i591 = phi i32 [ 0, %while.body.i590 ], [ -1, %while.cond.i588 ]
  br i1 %cmp139, label %for.body141, label %for.end151

for.body141:                                      ; preds = %noncomment_line.exit592
  %cmp144 = icmp slt i32 %retval.0.i591, 0
  br i1 %cmp144, label %if.then146, label %if.end147

if.then146:                                       ; preds = %for.body141
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 691, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str43, i64 0, i64 0), i32 %p.1) #7
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %for.body141
  call void @llvm.lifetime.start(i64 4, i8* %62) #1
  call void @llvm.lifetime.start(i64 1024, i8* %63) #1
  %call.i596 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %63, i32* %wlen.i594) #7
  %cmp.i597 = icmp eq i32 %call.i596, 1
  br i1 %cmp.i597, label %if.end.i604, label %if.then.i598

if.then.i598:                                     ; preds = %if.end147
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 469, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([29 x i8]* @.str50, i64 0, i64 0), i8* %1) #7
  br label %if.end.i604

if.end.i604:                                      ; preds = %if.then.i598, %if.end147
  %69 = load i32* %wlen.i594, align 4, !tbaa !0
  %idx.ext.i599 = sext i32 %69 to i64
  %add.ptr.i600 = getelementptr inbounds [1024 x i8]* %buf, i64 0, i64 %idx.ext.i599
  call void @llvm.lifetime.start(i64 4, i8* %64) #1
  %70 = load %struct.hash_table_t** %26, align 8, !tbaa !3
  %call.i.i602 = call i32 @hash_lookup(%struct.hash_table_t* %70, i8* %63, i32* %id.i.i593) #7
  %cmp.i.i603 = icmp slt i32 %call.i.i602, 0
  br i1 %cmp.i.i603, label %if.then5.i608, label %mdef_ciphone_id.exit.i607

mdef_ciphone_id.exit.i607:                        ; preds = %if.end.i604
  %71 = load i32* %id.i.i593, align 4, !tbaa !0
  %conv.i.i605 = trunc i32 %71 to i8
  call void @llvm.lifetime.end(i64 4, i8* %64) #1
  %cmp3.i606 = icmp slt i8 %conv.i.i605, 0
  br i1 %cmp3.i606, label %if.then5.i608, label %if.end6.i609

if.then5.i608:                                    ; preds = %mdef_ciphone_id.exit.i607, %if.end.i604
  %retval.0.i135.i = phi i8 [ %conv.i.i605, %mdef_ciphone_id.exit.i607 ], [ -1, %if.end.i604 ]
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 474, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([24 x i8]* @.str51, i64 0, i64 0), i8* %1) #7
  br label %if.end6.i609

if.end6.i609:                                     ; preds = %if.then5.i608, %mdef_ciphone_id.exit.i607
  %retval.0.i134.i = phi i8 [ %retval.0.i135.i, %if.then5.i608 ], [ %conv.i.i605, %mdef_ciphone_id.exit.i607 ]
  %call8.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr.i600, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %63, i32* %wlen.i594) #7
  %cmp9.i = icmp eq i32 %call8.i, 1
  br i1 %cmp9.i, label %if.end12.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i609
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 478, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([26 x i8]* @.str52, i64 0, i64 0), i8* %1) #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then11.i, %if.end6.i609
  %72 = load i32* %wlen.i594, align 4, !tbaa !0
  %idx.ext13.i = sext i32 %72 to i64
  %add.ptr.sum.i = add i64 %idx.ext13.i, %idx.ext.i599
  %add.ptr14.i = getelementptr inbounds [1024 x i8]* %buf, i64 0, i64 %add.ptr.sum.i
  call void @llvm.lifetime.start(i64 4, i8* %65) #1
  %73 = load %struct.hash_table_t** %26, align 8, !tbaa !3
  %call.i119.i = call i32 @hash_lookup(%struct.hash_table_t* %73, i8* %63, i32* %id.i117.i) #7
  %cmp.i120.i = icmp slt i32 %call.i119.i, 0
  br i1 %cmp.i120.i, label %if.then20.i, label %mdef_ciphone_id.exit124.i

mdef_ciphone_id.exit124.i:                        ; preds = %if.end12.i
  %74 = load i32* %id.i117.i, align 4, !tbaa !0
  %conv.i121.i = trunc i32 %74 to i8
  call void @llvm.lifetime.end(i64 4, i8* %65) #1
  %cmp18.i = icmp slt i8 %conv.i121.i, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end21.i

if.then20.i:                                      ; preds = %mdef_ciphone_id.exit124.i, %if.end12.i
  %retval.0.i123139.i = phi i8 [ %conv.i121.i, %mdef_ciphone_id.exit124.i ], [ -1, %if.end12.i ]
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 482, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([26 x i8]* @.str53, i64 0, i64 0), i8* %1) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %mdef_ciphone_id.exit124.i
  %retval.0.i123138.i = phi i8 [ %retval.0.i123139.i, %if.then20.i ], [ %conv.i121.i, %mdef_ciphone_id.exit124.i ]
  %call23.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr14.i, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %63, i32* %wlen.i594) #7
  %cmp24.i = icmp eq i32 %call23.i, 1
  br i1 %cmp24.i, label %if.end27.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end21.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 486, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str54, i64 0, i64 0), i8* %1) #7
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end21.i
  %75 = load i32* %wlen.i594, align 4, !tbaa !0
  %idx.ext28.i = sext i32 %75 to i64
  %add.ptr14.sum.i = add i64 %idx.ext28.i, %add.ptr.sum.i
  %add.ptr29.i = getelementptr inbounds [1024 x i8]* %buf, i64 0, i64 %add.ptr14.sum.i
  call void @llvm.lifetime.start(i64 4, i8* %66) #1
  %76 = load %struct.hash_table_t** %26, align 8, !tbaa !3
  %call.i127.i = call i32 @hash_lookup(%struct.hash_table_t* %76, i8* %63, i32* %id.i125.i) #7
  %cmp.i128.i = icmp slt i32 %call.i127.i, 0
  br i1 %cmp.i128.i, label %if.then35.i611, label %mdef_ciphone_id.exit132.i

mdef_ciphone_id.exit132.i:                        ; preds = %if.end27.i
  %77 = load i32* %id.i125.i, align 4, !tbaa !0
  %conv.i129.i = trunc i32 %77 to i8
  call void @llvm.lifetime.end(i64 4, i8* %66) #1
  %cmp33.i610 = icmp slt i8 %conv.i129.i, 0
  br i1 %cmp33.i610, label %if.then35.i611, label %if.end36.i

if.then35.i611:                                   ; preds = %mdef_ciphone_id.exit132.i, %if.end27.i
  %retval.0.i131142.i = phi i8 [ %conv.i129.i, %mdef_ciphone_id.exit132.i ], [ -1, %if.end27.i ]
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 490, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([28 x i8]* @.str55, i64 0, i64 0), i8* %1) #7
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i611, %mdef_ciphone_id.exit132.i
  %retval.0.i131141.i = phi i8 [ %retval.0.i131142.i, %if.then35.i611 ], [ %conv.i129.i, %mdef_ciphone_id.exit132.i ]
  %call38.i612 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr29.i, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %63, i32* %wlen.i594) #7
  %cmp39.i613 = icmp eq i32 %call38.i612, 1
  br i1 %cmp39.i613, label %lor.lhs.false.i614, label %if.then44.i

lor.lhs.false.i614:                               ; preds = %if.end36.i
  %78 = load i8* %arrayidx.i, align 1, !tbaa !1
  %cmp42.i = icmp eq i8 %78, 0
  br i1 %cmp42.i, label %if.end45.i, label %if.then44.i

if.then44.i:                                      ; preds = %lor.lhs.false.i614, %if.end36.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 494, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([39 x i8]* @.str56, i64 0, i64 0), i8* %1) #7
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then44.i, %lor.lhs.false.i614
  %79 = load i32* %wlen.i594, align 4, !tbaa !0
  %idx.ext46.i = sext i32 %79 to i64
  %add.ptr29.sum.i = add i64 %idx.ext46.i, %add.ptr14.sum.i
  %add.ptr47.i = getelementptr inbounds [1024 x i8]* %buf, i64 0, i64 %add.ptr29.sum.i
  %80 = load i8* %63, align 16, !tbaa !1
  %conv49.i = sext i8 %80 to i32
  switch i32 %conv49.i, label %sw.default.i [
    i32 98, label %sw.epilog.i
    i32 101, label %sw.bb50.i
    i32 115, label %sw.bb51.i
    i32 105, label %sw.bb52.i
  ]

sw.bb50.i:                                        ; preds = %if.end45.i
  br label %sw.epilog.i

sw.bb51.i:                                        ; preds = %if.end45.i
  br label %sw.epilog.i

sw.bb52.i:                                        ; preds = %if.end45.i
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end45.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 501, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([28 x i8]* @.str57, i64 0, i64 0), i8* %1) #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb52.i, %sw.bb51.i, %sw.bb50.i, %if.end45.i
  %wpos.0.i = phi i32 [ 0, %sw.default.i ], [ 3, %sw.bb52.i ], [ 2, %sw.bb51.i ], [ 1, %sw.bb50.i ], [ 0, %if.end45.i ]
  %call54.i = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr47.i, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %63, i32* %wlen.i594) #7
  %cmp55.i = icmp eq i32 %call54.i, 1
  br i1 %cmp55.i, label %if.end58.i, label %if.then57.i

if.then57.i:                                      ; preds = %sw.epilog.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 506, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([36 x i8]* @.str58, i64 0, i64 0), i8* %1) #7
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then57.i, %sw.epilog.i
  %81 = load i32* %wlen.i594, align 4, !tbaa !0
  %idx.ext59116.i = zext i32 %81 to i64
  %call62.i = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([7 x i8]* @.str59, i64 0, i64 0)) #9
  %cmp63.i = icmp eq i32 %call62.i, 0
  br i1 %cmp63.i, label %land.lhs.true.i, label %lor.lhs.false67.i

land.lhs.true.i:                                  ; preds = %if.end58.i
  %idxprom.i615 = sext i8 %retval.0.i134.i to i64
  %82 = load %struct.ciphone_t** %28, align 8, !tbaa !3
  %filler.i616 = getelementptr inbounds %struct.ciphone_t* %82, i64 %idxprom.i615, i32 1
  %83 = load i32* %filler.i616, align 4, !tbaa !0
  %tobool.i = icmp eq i32 %83, 0
  br i1 %tobool.i, label %lor.lhs.false67.i, label %parse_tri_line.exit

lor.lhs.false67.i:                                ; preds = %land.lhs.true.i, %if.end58.i
  %call69.i = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([4 x i8]* @.str60, i64 0, i64 0)) #9
  %cmp70.i = icmp eq i32 %call69.i, 0
  br i1 %cmp70.i, label %land.lhs.true72.i, label %if.else.i617

land.lhs.true72.i:                                ; preds = %lor.lhs.false67.i
  %idxprom74.i = sext i8 %retval.0.i134.i to i64
  %84 = load %struct.ciphone_t** %28, align 8, !tbaa !3
  %filler77.i = getelementptr inbounds %struct.ciphone_t* %84, i64 %idxprom74.i, i32 1
  %85 = load i32* %filler77.i, align 4, !tbaa !0
  %tobool78.i = icmp eq i32 %85, 0
  br i1 %tobool78.i, label %parse_tri_line.exit, label %if.else.i617

if.else.i617:                                     ; preds = %land.lhs.true72.i, %lor.lhs.false67.i
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 512, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([32 x i8]* @.str61, i64 0, i64 0), i8* %1) #7
  br label %parse_tri_line.exit

parse_tri_line.exit:                              ; preds = %land.lhs.true.i, %land.lhs.true72.i, %if.else.i617
  call fastcc void @triphone_add(%struct.mdef_t* %2, i8 signext %retval.0.i134.i, i8 signext %retval.0.i123138.i, i8 signext %retval.0.i131141.i, i32 %wpos.0.i, i32 %p.1) #7
  %add.ptr60.offs.i = add i64 %idx.ext59116.i, %add.ptr29.sum.i
  %conv81.i = trunc i64 %add.ptr60.offs.i to i32
  call fastcc void @parse_tmat_senmap(%struct.mdef_t* %2, i8* %1, i32 %conv81.i, i32 %p.1) #7
  call void @llvm.lifetime.end(i64 1024, i8* %63) #1
  call void @llvm.lifetime.end(i64 4, i8* %62) #1
  %inc150 = add nsw i32 %p.1, 1
  br label %for.cond137

for.end151:                                       ; preds = %noncomment_line.exit592
  %cmp154 = icmp sgt i32 %retval.0.i591, -1
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %for.end151
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 696, i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0)) #7
  %86 = load i32* %29, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([45 x i8]* @.str45, i64 0, i64 0), i32 %86) #7
  br label %if.end158

if.end158:                                        ; preds = %if.then156, %for.end151
  %87 = load i32* %n_ciphone, align 4, !tbaa !0
  %88 = load i32* %25, align 4, !tbaa !0
  %mul161 = mul nsw i32 %88, %87
  %89 = load i32* %4, align 4, !tbaa !0
  %cmp163 = icmp eq i32 %mul161, %89
  br i1 %cmp163, label %if.end169, label %if.then165

if.then165:                                       ; preds = %if.end158
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 700, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %90 = load i32* %4, align 4, !tbaa !0
  %91 = load i32* %n_ciphone, align 4, !tbaa !0
  %92 = load i32* %25, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([57 x i8]* @.str46, i64 0, i64 0), i32 %90, i32 %91, i32 %92) #7
  br label %if.end169

if.end169:                                        ; preds = %if.end158, %if.then165
  %93 = load i32* %5, align 4, !tbaa !0
  %conv171 = sext i32 %93 to i64
  %call172 = call i8* @__ckd_calloc__(i64 %conv171, i64 2, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 702) #7
  %94 = bitcast i8* %call172 to i16*
  %cd2cisen = getelementptr inbounds i8* %call, i64 64
  %95 = bitcast i8* %cd2cisen to i16**
  store i16* %94, i16** %95, align 8, !tbaa !3
  %96 = load i32* %5, align 4, !tbaa !0
  %conv174 = sext i32 %96 to i64
  %call175 = call i8* @__ckd_calloc__(i64 %conv174, i64 1, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 704) #7
  %sen2cimap = getelementptr inbounds i8* %call, i64 72
  %97 = bitcast i8* %sen2cimap to i8**
  store i8* %call175, i8** %97, align 8, !tbaa !3
  %98 = load i32* %5, align 4, !tbaa !0
  %cmp178651 = icmp sgt i32 %98, 0
  br i1 %cmp178651, label %for.body180, label %for.cond185.preheader

for.cond185.preheader:                            ; preds = %for.body180, %if.end169
  %99 = load i32* %4, align 4, !tbaa !0
  %cmp187649 = icmp sgt i32 %99, 0
  br i1 %cmp187649, label %for.body189, label %for.cond203.preheader

for.body180:                                      ; preds = %if.end169, %for.body180.for.body180_crit_edge
  %100 = phi i8* [ %.pre686, %for.body180.for.body180_crit_edge ], [ %call175, %if.end169 ]
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %for.body180.for.body180_crit_edge ], [ 0, %if.end169 ]
  %arrayidx = getelementptr inbounds i8* %100, i64 %indvars.iv671
  store i8 -1, i8* %arrayidx, align 1, !tbaa !1
  %indvars.iv.next672 = add i64 %indvars.iv671, 1
  %101 = load i32* %5, align 4, !tbaa !0
  %102 = trunc i64 %indvars.iv.next672 to i32
  %cmp178 = icmp slt i32 %102, %101
  br i1 %cmp178, label %for.body180.for.body180_crit_edge, label %for.cond185.preheader

for.body180.for.body180_crit_edge:                ; preds = %for.body180
  %.pre686 = load i8** %97, align 8, !tbaa !3
  br label %for.body180

for.cond203.preheader:                            ; preds = %for.body189, %for.cond185.preheader
  %103 = load i32* %29, align 4, !tbaa !0
  %cmp205647 = icmp slt i32 %n_ci.1, %103
  br i1 %cmp205647, label %for.cond208.preheader.lr.ph, label %for.end246

for.cond208.preheader.lr.ph:                      ; preds = %for.cond203.preheader
  %.pre684 = load i32* %25, align 4, !tbaa !0
  br label %for.cond208.preheader

for.body189:                                      ; preds = %for.body189, %for.cond185.preheader
  %indvars.iv669 = phi i64 [ 0, %for.cond185.preheader ], [ %indvars.iv.next670, %for.body189 ]
  %104 = trunc i64 %indvars.iv669 to i32
  %conv190 = trunc i64 %indvars.iv669 to i16
  %105 = load i16** %95, align 8, !tbaa !3
  %arrayidx193 = getelementptr inbounds i16* %105, i64 %indvars.iv669
  store i16 %conv190, i16* %arrayidx193, align 2, !tbaa !4
  %106 = load i32* %25, align 4, !tbaa !0
  %div195 = sdiv i32 %104, %106
  %conv196 = trunc i32 %div195 to i8
  %107 = load i8** %97, align 8, !tbaa !3
  %arrayidx199 = getelementptr inbounds i8* %107, i64 %indvars.iv669
  store i8 %conv196, i8* %arrayidx199, align 1, !tbaa !1
  %indvars.iv.next670 = add i64 %indvars.iv669, 1
  %108 = load i32* %4, align 4, !tbaa !0
  %109 = trunc i64 %indvars.iv.next670 to i32
  %cmp187 = icmp slt i32 %109, %108
  br i1 %cmp187, label %for.body189, label %for.cond203.preheader

for.cond208.preheader:                            ; preds = %for.cond208.preheader.lr.ph, %for.inc244
  %110 = phi i32 [ %103, %for.cond208.preheader.lr.ph ], [ %124, %for.inc244 ]
  %111 = phi i32 [ %.pre684, %for.cond208.preheader.lr.ph ], [ %125, %for.inc244 ]
  %indvars.iv667 = phi i64 [ %conv, %for.cond208.preheader.lr.ph ], [ %indvars.iv.next668, %for.inc244 ]
  %cmp210645 = icmp sgt i32 %111, 0
  br i1 %cmp210645, label %for.body212, label %for.inc244

for.body212:                                      ; preds = %for.body212, %for.cond208.preheader
  %indvars.iv665 = phi i64 [ 0, %for.cond208.preheader ], [ %indvars.iv.next666, %for.body212 ]
  %112 = load i16*** %35, align 8, !tbaa !3
  %arrayidx216 = getelementptr inbounds i16** %112, i64 %indvars.iv667
  %113 = load i16** %arrayidx216, align 8, !tbaa !3
  %arrayidx217 = getelementptr inbounds i16* %113, i64 %indvars.iv665
  %114 = load i16* %arrayidx217, align 2, !tbaa !4
  %115 = load %struct.phone_t** %31, align 8, !tbaa !3
  %ci223 = getelementptr inbounds %struct.phone_t* %115, i64 %indvars.iv667, i32 2
  %116 = load i8* %ci223, align 1, !tbaa !1
  %idxprom225 = sext i8 %116 to i64
  %arrayidx227 = getelementptr inbounds i16** %112, i64 %idxprom225
  %117 = load i16** %arrayidx227, align 8, !tbaa !3
  %arrayidx228 = getelementptr inbounds i16* %117, i64 %indvars.iv665
  %118 = load i16* %arrayidx228, align 2, !tbaa !4
  %idxprom231 = sext i16 %114 to i64
  %119 = load i16** %95, align 8, !tbaa !3
  %arrayidx233 = getelementptr inbounds i16* %119, i64 %idxprom231
  store i16 %118, i16* %arrayidx233, align 2, !tbaa !4
  %120 = load i8* %ci223, align 1, !tbaa !1
  %121 = load i8** %97, align 8, !tbaa !3
  %arrayidx240 = getelementptr inbounds i8* %121, i64 %idxprom231
  store i8 %120, i8* %arrayidx240, align 1, !tbaa !1
  %indvars.iv.next666 = add i64 %indvars.iv665, 1
  %122 = load i32* %25, align 4, !tbaa !0
  %123 = trunc i64 %indvars.iv.next666 to i32
  %cmp210 = icmp slt i32 %123, %122
  br i1 %cmp210, label %for.body212, label %for.cond208.for.inc244_crit_edge

for.cond208.for.inc244_crit_edge:                 ; preds = %for.body212
  %.pre685 = load i32* %29, align 4, !tbaa !0
  br label %for.inc244

for.inc244:                                       ; preds = %for.cond208.for.inc244_crit_edge, %for.cond208.preheader
  %124 = phi i32 [ %.pre685, %for.cond208.for.inc244_crit_edge ], [ %110, %for.cond208.preheader ]
  %125 = phi i32 [ %122, %for.cond208.for.inc244_crit_edge ], [ %111, %for.cond208.preheader ]
  %indvars.iv.next668 = add i64 %indvars.iv667, 1
  %126 = trunc i64 %indvars.iv.next668 to i32
  %cmp205 = icmp slt i32 %126, %124
  br i1 %cmp205, label %for.cond208.preheader, label %for.end246

for.end246:                                       ; preds = %for.inc244, %for.cond203.preheader
  %127 = load i32* %n_ciphone, align 4, !tbaa !0
  %conv248 = sext i32 %127 to i64
  %call249 = call i8* @__ckd_calloc__(i64 %conv248, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 726) #7
  %128 = bitcast i8* %call249 to i32*
  %129 = load i32* %n_ciphone, align 4, !tbaa !0
  %conv251 = sext i32 %129 to i64
  %call252 = call i8* @__ckd_calloc__(i64 %conv251, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 728) #7
  %130 = bitcast i8* %call252 to i32*
  %131 = load i32* %4, align 4, !tbaa !0
  %132 = load i32* %5, align 4, !tbaa !0
  %cmp256642 = icmp slt i32 %131, %132
  br i1 %cmp256642, label %for.body258.lr.ph, label %for.end290

for.body258.lr.ph:                                ; preds = %for.end246
  %133 = sext i32 %131 to i64
  %.pre681 = load i8** %97, align 8, !tbaa !3
  br label %for.body258

for.body258:                                      ; preds = %for.body258.lr.ph, %for.inc288
  %134 = phi i32 [ %132, %for.body258.lr.ph ], [ %139, %for.inc288 ]
  %indvars.iv663 = phi i64 [ %133, %for.body258.lr.ph ], [ %indvars.iv.next664, %for.inc288 ]
  %arrayidx261 = getelementptr inbounds i8* %.pre681, i64 %indvars.iv663
  %135 = load i8* %arrayidx261, align 1, !tbaa !1
  %cmp263 = icmp slt i8 %135, 0
  br i1 %cmp263, label %for.inc288, label %if.end266

if.end266:                                        ; preds = %for.body258
  %idxprom271 = sext i8 %135 to i64
  %arrayidx272 = getelementptr inbounds i32* %128, i64 %idxprom271
  %136 = load i32* %arrayidx272, align 4, !tbaa !0
  %tobool273 = icmp eq i32 %136, 0
  %137 = trunc i64 %indvars.iv663 to i32
  br i1 %tobool273, label %if.then274, label %if.end281

if.then274:                                       ; preds = %if.end266
  store i32 %137, i32* %arrayidx272, align 4, !tbaa !0
  %.pre683 = load i8* %arrayidx261, align 1, !tbaa !1
  br label %if.end281

if.end281:                                        ; preds = %if.end266, %if.then274
  %138 = phi i8 [ %.pre683, %if.then274 ], [ %135, %if.end266 ]
  %idxprom286 = sext i8 %138 to i64
  %arrayidx287 = getelementptr inbounds i32* %130, i64 %idxprom286
  store i32 %137, i32* %arrayidx287, align 4, !tbaa !0
  %.pre682 = load i32* %5, align 4, !tbaa !0
  br label %for.inc288

for.inc288:                                       ; preds = %for.body258, %if.end281
  %139 = phi i32 [ %134, %for.body258 ], [ %.pre682, %if.end281 ]
  %indvars.iv.next664 = add i64 %indvars.iv663, 1
  %140 = trunc i64 %indvars.iv.next664 to i32
  %cmp256 = icmp slt i32 %140, %139
  br i1 %cmp256, label %for.body258, label %for.cond254.for.end290_crit_edge

for.cond254.for.end290_crit_edge:                 ; preds = %for.inc288
  %.pre = load i32* %4, align 4, !tbaa !0
  br label %for.end290

for.end290:                                       ; preds = %for.cond254.for.end290_crit_edge, %for.end246
  %141 = phi i32 [ %139, %for.cond254.for.end290_crit_edge ], [ %132, %for.end246 ]
  %142 = phi i32 [ %.pre, %for.cond254.for.end290_crit_edge ], [ %131, %for.end246 ]
  %cmp294639 = icmp slt i32 %142, %141
  br i1 %cmp294639, label %for.body296.lr.ph, label %for.end334

for.body296.lr.ph:                                ; preds = %for.end290
  %143 = sext i32 %142 to i64
  br label %for.body296

for.body296:                                      ; preds = %for.inc332, %for.body296.lr.ph
  %144 = phi i32 [ %141, %for.body296.lr.ph ], [ %154, %for.inc332 ]
  %indvars.iv661 = phi i64 [ %143, %for.body296.lr.ph ], [ %indvars.iv.next662, %for.inc332 ]
  %145 = load i8** %97, align 8, !tbaa !3
  %arrayidx299 = getelementptr inbounds i8* %145, i64 %indvars.iv661
  %146 = load i8* %arrayidx299, align 1, !tbaa !1
  %cmp301 = icmp sgt i8 %146, -1
  br i1 %cmp301, label %for.inc332, label %for.cond305.preheader

for.cond305.preheader:                            ; preds = %for.body296
  %147 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp307637 = icmp sgt i32 %147, 0
  br i1 %cmp307637, label %for.body309, label %for.end322

for.body309:                                      ; preds = %for.cond305.preheader, %for.inc320
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %for.inc320 ], [ 0, %for.cond305.preheader ]
  %p.3638 = phi i32 [ %inc321, %for.inc320 ], [ 0, %for.cond305.preheader ]
  %arrayidx311 = getelementptr inbounds i32* %128, i64 %indvars.iv659
  %148 = load i32* %arrayidx311, align 4, !tbaa !0
  %149 = trunc i64 %indvars.iv661 to i32
  %cmp312 = icmp sgt i32 %149, %148
  br i1 %cmp312, label %land.lhs.true, label %for.inc320

land.lhs.true:                                    ; preds = %for.body309
  %arrayidx315 = getelementptr inbounds i32* %130, i64 %indvars.iv659
  %150 = load i32* %arrayidx315, align 4, !tbaa !0
  %cmp316 = icmp slt i32 %149, %150
  br i1 %cmp316, label %for.end322, label %for.inc320

for.inc320:                                       ; preds = %for.body309, %land.lhs.true
  %indvars.iv.next660 = add i64 %indvars.iv659, 1
  %inc321 = add nsw i32 %p.3638, 1
  %151 = trunc i64 %indvars.iv.next660 to i32
  %cmp307 = icmp slt i32 %151, %147
  br i1 %cmp307, label %for.body309, label %for.end322

for.end322:                                       ; preds = %for.inc320, %land.lhs.true, %for.cond305.preheader
  %p.3.lcssa = phi i32 [ 0, %for.cond305.preheader ], [ %p.3638, %land.lhs.true ], [ %inc321, %for.inc320 ]
  %cmp324 = icmp slt i32 %p.3.lcssa, %147
  br i1 %cmp324, label %if.end327, label %if.then326

if.then326:                                       ; preds = %for.end322
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 750, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %152 = trunc i64 %indvars.iv661 to i32
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([57 x i8]* @.str47, i64 0, i64 0), i32 %152) #7
  %.pre680 = load i8** %97, align 8, !tbaa !3
  br label %if.end327

if.end327:                                        ; preds = %for.end322, %if.then326
  %153 = phi i8* [ %145, %for.end322 ], [ %.pre680, %if.then326 ]
  %conv328 = trunc i32 %p.3.lcssa to i8
  %arrayidx331 = getelementptr inbounds i8* %153, i64 %indvars.iv661
  store i8 %conv328, i8* %arrayidx331, align 1, !tbaa !1
  %.pre679 = load i32* %5, align 4, !tbaa !0
  br label %for.inc332

for.inc332:                                       ; preds = %for.body296, %if.end327
  %154 = phi i32 [ %144, %for.body296 ], [ %.pre679, %if.end327 ]
  %indvars.iv.next662 = add i64 %indvars.iv661, 1
  %155 = trunc i64 %indvars.iv.next662 to i32
  %cmp294 = icmp slt i32 %155, %154
  br i1 %cmp294, label %for.body296, label %for.end334

for.end334:                                       ; preds = %for.inc332, %for.end290
  %156 = load i32* %n_ciphone, align 4, !tbaa !0
  %conv336 = sext i32 %156 to i64
  %call337 = call i8* @__ckd_calloc__(i64 %conv336, i64 4, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 755) #7
  %157 = bitcast i8* %call337 to i32*
  %ciphone2n_cd_sen = getelementptr inbounds i8* %call, i64 80
  %158 = bitcast i8* %ciphone2n_cd_sen to i32**
  store i32* %157, i32** %158, align 8, !tbaa !3
  store i32 0, i32* %n, align 4, !tbaa !0
  %159 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp340635 = icmp sgt i32 %159, 0
  br i1 %cmp340635, label %for.body342, label %for.end364

for.body342:                                      ; preds = %for.end334, %for.inc362
  %160 = phi i32 [ %165, %for.inc362 ], [ %159, %for.end334 ]
  %161 = phi i32 [ %166, %for.inc362 ], [ 0, %for.end334 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc362 ], [ 0, %for.end334 ]
  %arrayidx344 = getelementptr inbounds i32* %128, i64 %indvars.iv
  %162 = load i32* %arrayidx344, align 4, !tbaa !0
  %cmp345 = icmp sgt i32 %162, 0
  br i1 %cmp345, label %if.then347, label %for.inc362

if.then347:                                       ; preds = %for.body342
  %arrayidx349 = getelementptr inbounds i32* %130, i64 %indvars.iv
  %163 = load i32* %arrayidx349, align 4, !tbaa !0
  %sub352 = sub i32 1, %162
  %add353 = add i32 %sub352, %163
  %arrayidx356 = getelementptr inbounds i32* %157, i64 %indvars.iv
  store i32 %add353, i32* %arrayidx356, align 4, !tbaa !0
  %164 = load i32* %n, align 4, !tbaa !0
  %add360 = add nsw i32 %164, %add353
  store i32 %add360, i32* %n, align 4, !tbaa !0
  %.pre678 = load i32* %n_ciphone, align 4, !tbaa !0
  br label %for.inc362

for.inc362:                                       ; preds = %for.body342, %if.then347
  %165 = phi i32 [ %160, %for.body342 ], [ %.pre678, %if.then347 ]
  %166 = phi i32 [ %161, %for.body342 ], [ %add360, %if.then347 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %167 = trunc i64 %indvars.iv.next to i32
  %cmp340 = icmp slt i32 %167, %165
  br i1 %cmp340, label %for.body342, label %for.end364

for.end364:                                       ; preds = %for.inc362, %for.end334
  %168 = phi i32 [ 0, %for.end334 ], [ %166, %for.inc362 ]
  %169 = load i32* %4, align 4, !tbaa !0
  %add366 = add nsw i32 %168, %169
  store i32 %add366, i32* %n, align 4, !tbaa !0
  call void @ckd_free(i8* %call249) #7
  call void @ckd_free(i8* %call252) #7
  %170 = bitcast i32* %j.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %170) #1
  %171 = load i32* %25, align 4, !tbaa !0
  %mul.i = shl i32 %171, 1
  %172 = load i32* %29, align 4, !tbaa !0
  %call.i618 = call %struct.hash_table_t* @hash_new(i32 %172, i32 0) #7
  %173 = load i32* %29, align 4, !tbaa !0
  %cmp51.i = icmp sgt i32 %173, 0
  br i1 %cmp51.i, label %for.body.i622, label %for.end.i624

for.body.i622:                                    ; preds = %for.end364, %for.body.i622
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i622 ], [ 0, %for.end364 ]
  %n_sseq.053.i = phi i32 [ %inc.n_sseq.0.i, %for.body.i622 ], [ 0, %for.end364 ]
  %174 = load i16*** %35, align 8, !tbaa !3
  %arrayidx.i619 = getelementptr inbounds i16** %174, i64 %indvars.iv.i
  %175 = load i16** %arrayidx.i619, align 8, !tbaa !3
  %176 = bitcast i16* %175 to i8*
  %call5.i = call i32 @hash_enter_bkey(%struct.hash_table_t* %call.i618, i8* %176, i32 %mul.i, i32 %n_sseq.053.i) #7
  store i32 %call5.i, i32* %j.i, align 4, !tbaa !0
  %cmp6.i = icmp eq i32 %call5.i, %n_sseq.053.i
  %inc.i620 = zext i1 %cmp6.i to i32
  %inc.n_sseq.0.i = add nsw i32 %inc.i620, %n_sseq.053.i
  %177 = load %struct.phone_t** %31, align 8, !tbaa !3
  %ssid.i = getelementptr inbounds %struct.phone_t* %177, i64 %indvars.iv.i, i32 0
  store i32 %call5.i, i32* %ssid.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %178 = load i32* %29, align 4, !tbaa !0
  %179 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i621 = icmp slt i32 %179, %178
  br i1 %cmp.i621, label %for.body.i622, label %for.end.i624

for.end.i624:                                     ; preds = %for.body.i622, %for.end364
  %n_sseq.0.lcssa.i = phi i32 [ 0, %for.end364 ], [ %inc.n_sseq.0.i, %for.body.i622 ]
  %180 = load i32* %25, align 4, !tbaa !0
  %call12.i623 = call i8** @__ckd_calloc_2d__(i32 %n_sseq.0.lcssa.i, i32 %180, i32 2, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 546) #7
  %181 = bitcast i8** %call12.i623 to i16**
  %call13.i = call %struct.gnode_s* @hash_tolist(%struct.hash_table_t* %call.i618, i32* %j.i) #7
  %tobool49.i = icmp eq %struct.gnode_s* %call13.i, null
  br i1 %tobool49.i, label %sseq_compress.exit, label %for.body15.lr.ph.i

for.body15.lr.ph.i:                               ; preds = %for.end.i624
  %conv18.i = sext i32 %mul.i to i64
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body15.lr.ph.i
  %gn.050.i = phi %struct.gnode_s* [ %call13.i, %for.body15.lr.ph.i ], [ %186, %for.body15.i ]
  %ptr.i = getelementptr inbounds %struct.gnode_s* %gn.050.i, i64 0, i32 0, i32 0
  %182 = load i8** %ptr.i, align 8, !tbaa !3
  %val.i = getelementptr inbounds i8* %182, i64 12
  %183 = bitcast i8* %val.i to i32*
  %184 = load i32* %183, align 4, !tbaa !0
  store i32 %184, i32* %j.i, align 4, !tbaa !0
  %idxprom16.i = sext i32 %184 to i64
  %arrayidx1747.i = getelementptr inbounds i8** %call12.i623, i64 %idxprom16.i
  %arrayidx1748.i = load i8** %arrayidx1747.i, align 8
  %key.i = bitcast i8* %182 to i8**
  %185 = load i8** %key.i, align 8, !tbaa !3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx1748.i, i8* %185, i64 %conv18.i, i32 1, i1 false) #1
  %next.i = getelementptr inbounds %struct.gnode_s* %gn.050.i, i64 0, i32 1
  %186 = load %struct.gnode_s** %next.i, align 8, !tbaa !3
  %tobool.i625 = icmp eq %struct.gnode_s* %186, null
  br i1 %tobool.i625, label %sseq_compress.exit, label %for.body15.i

sseq_compress.exit:                               ; preds = %for.body15.i, %for.end.i624
  call void @glist_free(%struct.gnode_s* %call13.i) #7
  %187 = load i16*** %35, align 8, !tbaa !3
  %188 = bitcast i16** %187 to i8**
  call void @ckd_free_2d(i8** %188) #7
  store i16** %181, i16*** %35, align 8, !tbaa !3
  %n_sseq23.i = getelementptr inbounds i8* %call, i64 56
  %189 = bitcast i8* %n_sseq23.i to i32*
  store i32 %n_sseq.0.lcssa.i, i32* %189, align 4, !tbaa !0
  call void @hash_free(%struct.hash_table_t* %call.i618) #7
  call void @llvm.lifetime.end(i64 4, i8* %170) #1
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 771, i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0)) #7
  %190 = load i32* %n_ciphone, align 4, !tbaa !0
  %191 = load i32* %29, align 4, !tbaa !0
  %sub370 = sub nsw i32 %191, %190
  %192 = load i32* %25, align 4, !tbaa !0
  %193 = load i32* %4, align 4, !tbaa !0
  %194 = load i32* %5, align 4, !tbaa !0
  %195 = load i32* %189, align 4, !tbaa !0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([77 x i8]* @.str48, i64 0, i64 0), i32 %190, i32 %sub370, i32 %192, i32 %193, i32 %194, i32 %195) #7
  %call374 = call i32 @fclose(%struct._IO_FILE* %call1) #7
  call void @llvm.lifetime.end(i64 1024, i8* %1) #1
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1
  ret %struct.mdef_t* %2
}

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #3

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #3

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #3

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #3

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: optsize
declare void @_E__fatal_sys_error(i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: optsize
declare %struct.hash_table_t* @hash_new(i32, i32) #3

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #3

; Function Attrs: optsize
declare void @ckd_free(i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @mdef_sseq2sen_active(%struct.mdef_t* nocapture %mdef, i32* nocapture %sseq, i32* nocapture %sen) #0 {
entry:
  %n_sseq = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 10
  %0 = load i32* %n_sseq, align 4, !tbaa !0
  %cmp23 = icmp sgt i32 %0, 0
  br i1 %cmp23, label %for.body.lr.ph, label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %sseq2 = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 9
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %mdef, i64 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc11
  %1 = phi i32 [ %0, %for.body.lr.ph ], [ %9, %for.inc11 ]
  %indvars.iv25 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next26, %for.inc11 ]
  %arrayidx = getelementptr inbounds i32* %sseq, i64 %indvars.iv25
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool = icmp eq i32 %2, 0
  br i1 %tobool, label %for.inc11, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load i16*** %sseq2, align 8, !tbaa !3
  %arrayidx3 = getelementptr inbounds i16** %3, i64 %indvars.iv25
  %4 = load i16** %arrayidx3, align 8, !tbaa !3
  %5 = load i32* %n_emit_state, align 4, !tbaa !0
  %cmp521 = icmp sgt i32 %5, 0
  br i1 %cmp521, label %for.body6, label %for.inc11

for.body6:                                        ; preds = %if.then, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %if.then ]
  %arrayidx8 = getelementptr inbounds i16* %4, i64 %indvars.iv
  %6 = load i16* %arrayidx8, align 2, !tbaa !4
  %idxprom9 = sext i16 %6 to i64
  %arrayidx10 = getelementptr inbounds i32* %sen, i64 %idxprom9
  store i32 1, i32* %arrayidx10, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %7 = load i32* %n_emit_state, align 4, !tbaa !0
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp5 = icmp slt i32 %8, %7
  br i1 %cmp5, label %for.body6, label %for.cond4.for.inc11.loopexit_crit_edge

for.cond4.for.inc11.loopexit_crit_edge:           ; preds = %for.body6
  %.pre.pre = load i32* %n_sseq, align 4, !tbaa !0
  br label %for.inc11

for.inc11:                                        ; preds = %if.then, %for.cond4.for.inc11.loopexit_crit_edge, %for.body
  %9 = phi i32 [ %1, %for.body ], [ %.pre.pre, %for.cond4.for.inc11.loopexit_crit_edge ], [ %1, %if.then ]
  %indvars.iv.next26 = add i64 %indvars.iv25, 1
  %10 = trunc i64 %indvars.iv.next26 to i32
  %cmp = icmp slt i32 %10, %9
  br i1 %cmp, label %for.body, label %for.end13

for.end13:                                        ; preds = %for.inc11, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @mdef_free_recursive_lc(%struct.ph_lc_s* %lc) #0 {
entry:
  %cmp = icmp eq %struct.ph_lc_s* %lc, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %rclist = getelementptr inbounds %struct.ph_lc_s* %lc, i64 0, i32 1
  %0 = load %struct.ph_rc_s** %rclist, align 8, !tbaa !3
  %tobool = icmp eq %struct.ph_rc_s* %0, null
  br i1 %tobool, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @mdef_free_recursive_rc(%struct.ph_rc_s* %0) #8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then1
  %next = getelementptr inbounds %struct.ph_lc_s* %lc, i64 0, i32 2
  %1 = load %struct.ph_lc_s** %next, align 8, !tbaa !3
  %tobool4 = icmp eq %struct.ph_lc_s* %1, null
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @mdef_free_recursive_lc(%struct.ph_lc_s* %1) #8
  br label %if.end7

if.end7:                                          ; preds = %if.end3, %if.then5
  %2 = getelementptr inbounds %struct.ph_lc_s* %lc, i64 0, i32 0
  tail call void @ckd_free(i8* %2) #7
  br label %return

return:                                           ; preds = %entry, %if.end7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @mdef_free_recursive_rc(%struct.ph_rc_s* %rc) #0 {
entry:
  %cmp = icmp eq %struct.ph_rc_s* %rc, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %next = getelementptr inbounds %struct.ph_rc_s* %rc, i64 0, i32 2
  %0 = load %struct.ph_rc_s** %next, align 8, !tbaa !3
  %tobool = icmp eq %struct.ph_rc_s* %0, null
  br i1 %tobool, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @mdef_free_recursive_rc(%struct.ph_rc_s* %0) #8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then1
  %1 = getelementptr inbounds %struct.ph_rc_s* %rc, i64 0, i32 0
  tail call void @ckd_free(i8* %1) #7
  br label %return

return:                                           ; preds = %entry, %if.end3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @mdef_free(%struct.mdef_t* %m) #0 {
entry:
  %tobool = icmp eq %struct.mdef_t* %m, null
  br i1 %tobool, label %if.end97, label %if.then

if.then:                                          ; preds = %entry
  %ciphone2n_cd_sen = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 13
  %0 = load i32** %ciphone2n_cd_sen, align 8, !tbaa !3
  %tobool1 = icmp eq i32* %0, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = bitcast i32* %0 to i8*
  tail call void @ckd_free(i8* %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %sen2cimap = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 12
  %2 = load i8** %sen2cimap, align 8, !tbaa !3
  %tobool4 = icmp eq i8* %2, null
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  tail call void @ckd_free(i8* %2) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then5
  %cd2cisen = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 11
  %3 = load i16** %cd2cisen, align 8, !tbaa !3
  %tobool8 = icmp eq i16* %3, null
  br i1 %tobool8, label %for.cond.preheader, label %if.then9

if.then9:                                         ; preds = %if.end7
  %4 = bitcast i16* %3 to i8*
  tail call void @ckd_free(i8* %4) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end7, %if.then9
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 0
  %wpos_ci_lclist = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 15
  %.pre = load i32* %n_ciphone, align 4, !tbaa !0
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.inc30, %for.cond.preheader
  %5 = phi i32 [ %.pre, %for.cond.preheader ], [ %17, %for.inc30 ]
  %indvars.iv159 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next160, %for.inc30 ]
  %cmp13150 = icmp sgt i32 %5, 0
  br i1 %cmp13150, label %for.body14, label %for.inc30

for.body14:                                       ; preds = %for.inc, %for.cond12.preheader
  %6 = phi i32 [ %5, %for.cond12.preheader ], [ %15, %for.inc ]
  %indvars.iv157 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next158, %for.inc ]
  %7 = load %struct.ph_lc_s**** %wpos_ci_lclist, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds %struct.ph_lc_s*** %7, i64 %indvars.iv159
  %8 = load %struct.ph_lc_s*** %arrayidx, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct.ph_lc_s** %8, i64 %indvars.iv157
  %9 = load %struct.ph_lc_s** %arrayidx16, align 8, !tbaa !3
  %tobool17 = icmp eq %struct.ph_lc_s* %9, null
  br i1 %tobool17, label %for.inc, label %if.then18

if.then18:                                        ; preds = %for.body14
  %next = getelementptr inbounds %struct.ph_lc_s* %9, i64 0, i32 2
  %10 = load %struct.ph_lc_s** %next, align 8, !tbaa !3
  tail call void @mdef_free_recursive_lc(%struct.ph_lc_s* %10) #8
  %11 = load %struct.ph_lc_s**** %wpos_ci_lclist, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds %struct.ph_lc_s*** %11, i64 %indvars.iv159
  %12 = load %struct.ph_lc_s*** %arrayidx27, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds %struct.ph_lc_s** %12, i64 %indvars.iv157
  %13 = load %struct.ph_lc_s** %arrayidx28, align 8, !tbaa !3
  %rclist = getelementptr inbounds %struct.ph_lc_s* %13, i64 0, i32 1
  %14 = load %struct.ph_rc_s** %rclist, align 8, !tbaa !3
  tail call void @mdef_free_recursive_rc(%struct.ph_rc_s* %14) #8
  %.pre165 = load i32* %n_ciphone, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %if.then18
  %15 = phi i32 [ %6, %for.body14 ], [ %.pre165, %if.then18 ]
  %indvars.iv.next158 = add i64 %indvars.iv157, 1
  %16 = trunc i64 %indvars.iv.next158 to i32
  %cmp13 = icmp slt i32 %16, %15
  br i1 %cmp13, label %for.body14, label %for.inc30

for.inc30:                                        ; preds = %for.inc, %for.cond12.preheader
  %17 = phi i32 [ %5, %for.cond12.preheader ], [ %15, %for.inc ]
  %indvars.iv.next160 = add i64 %indvars.iv159, 1
  %lftr.wideiv161 = trunc i64 %indvars.iv.next160 to i32
  %exitcond162 = icmp eq i32 %lftr.wideiv161, 4
  br i1 %exitcond162, label %for.cond36.preheader, label %for.cond12.preheader

for.cond36.preheader:                             ; preds = %for.inc30, %for.inc56
  %18 = phi i32 [ %26, %for.inc56 ], [ %17, %for.inc30 ]
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.inc56 ], [ 0, %for.inc30 ]
  %cmp38147 = icmp sgt i32 %18, 0
  br i1 %cmp38147, label %for.body39, label %for.inc56

for.body39:                                       ; preds = %for.inc53, %for.cond36.preheader
  %19 = phi i32 [ %18, %for.cond36.preheader ], [ %24, %for.inc53 ]
  %indvars.iv153 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next154, %for.inc53 ]
  %20 = load %struct.ph_lc_s**** %wpos_ci_lclist, align 8, !tbaa !3
  %arrayidx43 = getelementptr inbounds %struct.ph_lc_s*** %20, i64 %indvars.iv155
  %21 = load %struct.ph_lc_s*** %arrayidx43, align 8, !tbaa !3
  %arrayidx44 = getelementptr inbounds %struct.ph_lc_s** %21, i64 %indvars.iv153
  %22 = load %struct.ph_lc_s** %arrayidx44, align 8, !tbaa !3
  %tobool45 = icmp eq %struct.ph_lc_s* %22, null
  br i1 %tobool45, label %for.inc53, label %if.then46

if.then46:                                        ; preds = %for.body39
  %23 = getelementptr inbounds %struct.ph_lc_s* %22, i64 0, i32 0
  tail call void @ckd_free(i8* %23) #7
  %.pre164 = load i32* %n_ciphone, align 4, !tbaa !0
  br label %for.inc53

for.inc53:                                        ; preds = %for.body39, %if.then46
  %24 = phi i32 [ %19, %for.body39 ], [ %.pre164, %if.then46 ]
  %indvars.iv.next154 = add i64 %indvars.iv153, 1
  %25 = trunc i64 %indvars.iv.next154 to i32
  %cmp38 = icmp slt i32 %25, %24
  br i1 %cmp38, label %for.body39, label %for.inc56

for.inc56:                                        ; preds = %for.inc53, %for.cond36.preheader
  %26 = phi i32 [ %18, %for.cond36.preheader ], [ %24, %for.inc53 ]
  %indvars.iv.next156 = add i64 %indvars.iv155, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next156 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 4
  br i1 %exitcond, label %for.end58, label %for.cond36.preheader

for.end58:                                        ; preds = %for.inc56
  %27 = load %struct.ph_lc_s**** %wpos_ci_lclist, align 8, !tbaa !3
  %tobool60 = icmp eq %struct.ph_lc_s*** %27, null
  br i1 %tobool60, label %if.end63, label %if.then61

if.then61:                                        ; preds = %for.end58
  %28 = bitcast %struct.ph_lc_s*** %27 to i8**
  tail call void @ckd_free_2d(i8** %28) #7
  br label %if.end63

if.end63:                                         ; preds = %for.end58, %if.then61
  %sseq = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 9
  %29 = load i16*** %sseq, align 8, !tbaa !3
  %tobool64 = icmp eq i16** %29, null
  br i1 %tobool64, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.end63
  %30 = bitcast i16** %29 to i8**
  tail call void @ckd_free_2d(i8** %30) #7
  br label %if.end67

if.end67:                                         ; preds = %if.end63, %if.then65
  %phone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 8
  %31 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %tobool68 = icmp eq %struct.phone_t* %31, null
  br i1 %tobool68, label %if.end71, label %if.then69

if.then69:                                        ; preds = %if.end67
  %32 = bitcast %struct.phone_t* %31 to i8*
  tail call void @ckd_free(i8* %32) #7
  br label %if.end71

if.end71:                                         ; preds = %if.end67, %if.then69
  %ciphone_ht = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 6
  %33 = load %struct.hash_table_t** %ciphone_ht, align 8, !tbaa !3
  %tobool72 = icmp eq %struct.hash_table_t* %33, null
  br i1 %tobool72, label %for.cond76.preheader, label %if.then73

if.then73:                                        ; preds = %if.end71
  tail call void @hash_free(%struct.hash_table_t* %33) #7
  br label %for.cond76.preheader

for.cond76.preheader:                             ; preds = %if.end71, %if.then73
  %34 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp78145 = icmp sgt i32 %34, 0
  %ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 7
  br i1 %cmp78145, label %for.body79, label %for.end91

for.body79:                                       ; preds = %for.cond76.preheader, %for.inc89
  %35 = phi i32 [ %38, %for.inc89 ], [ %34, %for.cond76.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc89 ], [ 0, %for.cond76.preheader ]
  %36 = load %struct.ciphone_t** %ciphone, align 8, !tbaa !3
  %name = getelementptr inbounds %struct.ciphone_t* %36, i64 %indvars.iv, i32 0
  %37 = load i8** %name, align 8, !tbaa !3
  %tobool82 = icmp eq i8* %37, null
  br i1 %tobool82, label %for.inc89, label %if.then83

if.then83:                                        ; preds = %for.body79
  tail call void @ckd_free(i8* %37) #7
  %.pre163 = load i32* %n_ciphone, align 4, !tbaa !0
  br label %for.inc89

for.inc89:                                        ; preds = %for.body79, %if.then83
  %38 = phi i32 [ %35, %for.body79 ], [ %.pre163, %if.then83 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %39 = trunc i64 %indvars.iv.next to i32
  %cmp78 = icmp slt i32 %39, %38
  br i1 %cmp78, label %for.body79, label %for.end91

for.end91:                                        ; preds = %for.cond76.preheader, %for.inc89
  %40 = load %struct.ciphone_t** %ciphone, align 8, !tbaa !3
  %tobool93 = icmp eq %struct.ciphone_t* %40, null
  br i1 %tobool93, label %if.end96, label %if.then94

if.then94:                                        ; preds = %for.end91
  %41 = bitcast %struct.ciphone_t* %40 to i8*
  tail call void @ckd_free(i8* %41) #7
  br label %if.end96

if.end96:                                         ; preds = %for.end91, %if.then94
  %42 = bitcast %struct.mdef_t* %m to i8*
  tail call void @ckd_free(i8* %42) #7
  br label %if.end97

if.end97:                                         ; preds = %entry, %if.end96
  ret void
}

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #3

; Function Attrs: optsize
declare void @hash_free(%struct.hash_table_t*) #3

; Function Attrs: optsize
declare i32 @hash_enter_bkey(%struct.hash_table_t*, i8*, i32, i32) #3

; Function Attrs: optsize
declare %struct.gnode_s* @hash_tolist(%struct.hash_table_t*, i32*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare void @glist_free(%struct.gnode_s*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @triphone_add(%struct.mdef_t* nocapture %m, i8 signext %ci, i8 signext %lc, i8 signext %rc, i32 %wpos, i32 %p) #0 {
entry:
  %buf = alloca [4096 x i8], align 16
  %idxprom = sext i32 %p to i64
  %phone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 8
  %0 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %ci1 = getelementptr inbounds %struct.phone_t* %0, i64 %idxprom, i32 2
  store i8 %ci, i8* %ci1, align 1, !tbaa !1
  %1 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %lc5 = getelementptr inbounds %struct.phone_t* %1, i64 %idxprom, i32 3
  store i8 %lc, i8* %lc5, align 1, !tbaa !1
  %2 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %rc9 = getelementptr inbounds %struct.phone_t* %2, i64 %idxprom, i32 4
  store i8 %rc, i8* %rc9, align 1, !tbaa !1
  %3 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %wpos13 = getelementptr inbounds %struct.phone_t* %3, i64 %idxprom, i32 5
  store i32 %wpos, i32* %wpos13, align 4, !tbaa !1
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 0
  %4 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp = icmp sgt i32 %4, %p
  br i1 %cmp, label %if.end48, label %if.then

if.then:                                          ; preds = %entry
  %idxprom14 = sext i8 %ci to i64
  %idxprom15 = zext i32 %wpos to i64
  %wpos_ci_lclist = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 15
  %5 = load %struct.ph_lc_s**** %wpos_ci_lclist, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds %struct.ph_lc_s*** %5, i64 %idxprom15
  %6 = load %struct.ph_lc_s*** %arrayidx16, align 8, !tbaa !3
  %arrayidx17 = getelementptr inbounds %struct.ph_lc_s** %6, i64 %idxprom14
  %7 = load %struct.ph_lc_s** %arrayidx17, align 8, !tbaa !3
  %tobool7.i = icmp eq %struct.ph_lc_s* %7, null
  br i1 %tobool7.i, label %if.then20, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then, %for.inc.i
  %lcptr.08.i = phi %struct.ph_lc_s* [ %9, %for.inc.i ], [ %7, %if.then ]
  %lc1.i = getelementptr inbounds %struct.ph_lc_s* %lcptr.08.i, i64 0, i32 0
  %8 = load i8* %lc1.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %8, %lc
  br i1 %cmp.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %land.rhs.i
  %next.i = getelementptr inbounds %struct.ph_lc_s* %lcptr.08.i, i64 0, i32 2
  %9 = load %struct.ph_lc_s** %next.i, align 8, !tbaa !3
  %tobool.i = icmp eq %struct.ph_lc_s* %9, null
  br i1 %tobool.i, label %if.then20, label %land.rhs.i

if.then20:                                        ; preds = %for.inc.i, %if.then
  %call21 = call i8* @__ckd_calloc__(i64 1, i64 24, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 182) #7
  %10 = bitcast i8* %call21 to %struct.ph_lc_s*
  store i8 %lc, i8* %call21, align 1, !tbaa !1
  %11 = load %struct.ph_lc_s**** %wpos_ci_lclist, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds %struct.ph_lc_s*** %11, i64 %idxprom15
  %12 = load %struct.ph_lc_s*** %arrayidx27, align 8, !tbaa !3
  %arrayidx28 = getelementptr inbounds %struct.ph_lc_s** %12, i64 %idxprom14
  %13 = load %struct.ph_lc_s** %arrayidx28, align 8, !tbaa !3
  %next = getelementptr inbounds i8* %call21, i64 16
  %14 = bitcast i8* %next to %struct.ph_lc_s**
  store %struct.ph_lc_s* %13, %struct.ph_lc_s** %14, align 8, !tbaa !3
  %15 = load %struct.ph_lc_s**** %wpos_ci_lclist, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds %struct.ph_lc_s*** %15, i64 %idxprom15
  %16 = load %struct.ph_lc_s*** %arrayidx33, align 8, !tbaa !3
  %arrayidx34 = getelementptr inbounds %struct.ph_lc_s** %16, i64 %idxprom14
  store %struct.ph_lc_s* %10, %struct.ph_lc_s** %arrayidx34, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %land.rhs.i, %if.then20
  %lcptr.0 = phi %struct.ph_lc_s* [ %10, %if.then20 ], [ %lcptr.08.i, %land.rhs.i ]
  %rclist = getelementptr inbounds %struct.ph_lc_s* %lcptr.0, i64 0, i32 1
  %17 = load %struct.ph_rc_s** %rclist, align 8, !tbaa !3
  %tobool7.i81 = icmp eq %struct.ph_rc_s* %17, null
  br i1 %tobool7.i81, label %if.end41, label %land.rhs.i83

land.rhs.i83:                                     ; preds = %if.end, %for.inc.i86
  %rcptr.08.i = phi %struct.ph_rc_s* [ %19, %for.inc.i86 ], [ %17, %if.end ]
  %rc1.i = getelementptr inbounds %struct.ph_rc_s* %rcptr.08.i, i64 0, i32 0
  %18 = load i8* %rc1.i, align 1, !tbaa !1
  %cmp.i82 = icmp eq i8 %18, %rc
  br i1 %cmp.i82, label %if.then38, label %for.inc.i86

for.inc.i86:                                      ; preds = %land.rhs.i83
  %next.i84 = getelementptr inbounds %struct.ph_rc_s* %rcptr.08.i, i64 0, i32 2
  %19 = load %struct.ph_rc_s** %next.i84, align 8, !tbaa !3
  %tobool.i85 = icmp eq %struct.ph_rc_s* %19, null
  br i1 %tobool.i85, label %if.end41, label %land.rhs.i83

if.then38:                                        ; preds = %land.rhs.i83
  %20 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %20) #1
  %pid = getelementptr inbounds %struct.ph_rc_s* %rcptr.08.i, i64 0, i32 1
  %21 = load i32* %pid, align 4, !tbaa !0
  %call39 = call i32 @mdef_phone_str(%struct.mdef_t* %m, i32 %21, i8* %20) #8
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 191, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([24 x i8]* @.str71, i64 0, i64 0), i8* %20) #7
  call void @llvm.lifetime.end(i64 4096, i8* %20) #1
  br label %if.end41

if.end41:                                         ; preds = %for.inc.i86, %if.end, %if.then38
  %call42 = call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i32 194) #7
  %22 = bitcast i8* %call42 to %struct.ph_rc_s*
  store i8 %rc, i8* %call42, align 1, !tbaa !1
  %pid44 = getelementptr inbounds i8* %call42, i64 4
  %23 = bitcast i8* %pid44 to i32*
  store i32 %p, i32* %23, align 4, !tbaa !0
  %24 = load %struct.ph_rc_s** %rclist, align 8, !tbaa !3
  %next46 = getelementptr inbounds i8* %call42, i64 8
  %25 = bitcast i8* %next46 to %struct.ph_rc_s**
  store %struct.ph_rc_s* %24, %struct.ph_rc_s** %25, align 8, !tbaa !3
  store %struct.ph_rc_s* %22, %struct.ph_rc_s** %rclist, align 8, !tbaa !3
  br label %if.end48

if.end48:                                         ; preds = %entry, %if.end41
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @parse_tmat_senmap(%struct.mdef_t* nocapture %m, i8* %line, i32 %off, i32 %p) #0 {
entry:
  %wlen = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca i32, align 4
  %word = alloca [1024 x i8], align 16
  %0 = getelementptr inbounds [1024 x i8]* %word, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %0) #1
  %idx.ext = sext i32 %off to i64
  %add.ptr = getelementptr inbounds i8* %line, i64 %idx.ext
  %call = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr, i8* getelementptr inbounds ([5 x i8]* @.str62, i64 0, i64 0), i32* %n, i32* %wlen) #7
  %cmp = icmp ne i32 %call, 1
  %1 = load i32* %n, align 4, !tbaa !0
  %cmp1 = icmp slt i32 %1, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 381, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([41 x i8]* @.str63, i64 0, i64 0), i8* %line) #7
  %.pre = load i32* %n, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = phi i32 [ %1, %entry ], [ %.pre, %if.then ]
  %idxprom = sext i32 %p to i64
  %phone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 8
  %3 = load %struct.phone_t** %phone, align 8, !tbaa !3
  %tmat = getelementptr inbounds %struct.phone_t* %3, i64 %idxprom, i32 1
  store i32 %2, i32* %tmat, align 4, !tbaa !0
  %n_tmat = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 5
  %4 = load i32* %n_tmat, align 4, !tbaa !0
  %5 = load i32* %n, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %4, %5
  br i1 %cmp2, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 384, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %6 = load i32* %n, align 4, !tbaa !0
  %7 = load i32* %n_tmat, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([39 x i8]* @.str64, i64 0, i64 0), i32 %6, i32 %7, i8* %line) #7
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then3
  %8 = load i32* %wlen, align 4, !tbaa !0
  %idx.ext6 = sext i32 %8 to i64
  %add.ptr.sum = add i64 %idx.ext6, %idx.ext
  %add.ptr7 = getelementptr inbounds i8* %line, i64 %add.ptr.sum
  store i32 0, i32* %n, align 4, !tbaa !0
  %n_emit_state = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 2
  %9 = load i32* %n_emit_state, align 4, !tbaa !0
  %cmp872 = icmp sgt i32 %9, 0
  br i1 %cmp872, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end5
  %n_ciphone = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 0
  %n_ci_sen = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 3
  %n_sen = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 4
  %sseq = getelementptr inbounds %struct.mdef_t* %m, i64 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end23
  %lp.073 = phi i8* [ %add.ptr7, %for.body.lr.ph ], [ %add.ptr29, %if.end23 ]
  %call9 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %lp.073, i8* getelementptr inbounds ([5 x i8]* @.str62, i64 0, i64 0), i32* %s, i32* %wlen) #7
  %cmp10 = icmp ne i32 %call9, 1
  %10 = load i32* %s, align 4, !tbaa !0
  %cmp12 = icmp slt i32 %10, 0
  %or.cond48 = or i1 %cmp10, %cmp12
  br i1 %or.cond48, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 390, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %11 = load i32* %n, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([46 x i8]* @.str65, i64 0, i64 0), i32 %11, i8* %line) #7
  br label %if.end14

if.end14:                                         ; preds = %for.body, %if.then13
  %12 = load i32* %n_ciphone, align 4, !tbaa !0
  %cmp15 = icmp sgt i32 %12, %p
  br i1 %cmp15, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end14
  %13 = load i32* %n_ci_sen, align 4, !tbaa !0
  %14 = load i32* %s, align 4, !tbaa !0
  %cmp16 = icmp sgt i32 %13, %14
  br i1 %cmp16, label %if.end19, label %if.then17

if.then17:                                        ; preds = %land.lhs.true
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 392, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %15 = load i32* %s, align 4, !tbaa !0
  %16 = load i32* %n_ci_sen, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([40 x i8]* @.str66, i64 0, i64 0), i32 %15, i32 %16, i8* %line) #7
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %land.lhs.true, %if.then17
  %17 = load i32* %n_sen, align 4, !tbaa !0
  %18 = load i32* %s, align 4, !tbaa !0
  %cmp20 = icmp sgt i32 %17, %18
  br i1 %cmp20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 394, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  %19 = load i32* %s, align 4, !tbaa !0
  %20 = load i32* %n_sen, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str67, i64 0, i64 0), i32 %19, i32 %20, i8* %line) #7
  %.pre74 = load i32* %s, align 4, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %if.end19, %if.then21
  %21 = phi i32 [ %18, %if.end19 ], [ %.pre74, %if.then21 ]
  %conv = trunc i32 %21 to i16
  %22 = load i32* %n, align 4, !tbaa !0
  %idxprom24 = sext i32 %22 to i64
  %23 = load i16*** %sseq, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i16** %23, i64 %idxprom
  %24 = load i16** %arrayidx26, align 8, !tbaa !3
  %arrayidx27 = getelementptr inbounds i16* %24, i64 %idxprom24
  store i16 %conv, i16* %arrayidx27, align 2, !tbaa !4
  %25 = load i32* %wlen, align 4, !tbaa !0
  %idx.ext28 = sext i32 %25 to i64
  %add.ptr29 = getelementptr inbounds i8* %lp.073, i64 %idx.ext28
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %n, align 4, !tbaa !0
  %26 = load i32* %n_emit_state, align 4, !tbaa !0
  %cmp8 = icmp slt i32 %inc, %26
  br i1 %cmp8, label %for.body, label %for.end

for.end:                                          ; preds = %if.end23, %if.end5
  %lp.0.lcssa = phi i8* [ %add.ptr7, %if.end5 ], [ %add.ptr29, %if.end23 ]
  %call30 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %lp.0.lcssa, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %0, i32* %wlen) #7
  %cmp31 = icmp eq i32 %call30, 1
  br i1 %cmp31, label %lor.lhs.false33, label %if.then38

lor.lhs.false33:                                  ; preds = %for.end
  %call35 = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8]* @.str68, i64 0, i64 0)) #9
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.end39, label %if.then38

if.then38:                                        ; preds = %lor.lhs.false33, %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 402, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([37 x i8]* @.str69, i64 0, i64 0), i8* %line) #7
  br label %if.end39

if.end39:                                         ; preds = %lor.lhs.false33, %if.then38
  %27 = load i32* %wlen, align 4, !tbaa !0
  %idx.ext40 = sext i32 %27 to i64
  %add.ptr41 = getelementptr inbounds i8* %lp.0.lcssa, i64 %idx.ext40
  %call43 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %add.ptr41, i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i8* %0, i32* %wlen) #7
  %cmp44 = icmp eq i32 %call43, 1
  br i1 %cmp44, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end39
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i64 407, i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #7
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([47 x i8]* @.str70, i64 0, i64 0), i8* %line) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end39
  call void @llvm.lifetime.end(i64 1024, i8* %0) #1
  ret void
}

; Function Attrs: optsize
declare i8* @__ckd_salloc__(i8*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @hash_enter(%struct.hash_table_t*, i8*, i32) #3

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"short", metadata !1}

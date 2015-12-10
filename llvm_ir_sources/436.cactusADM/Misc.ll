; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.regmatch_t = type { i32, i32 }
%struct.re_pattern_buffer = type { i8*, i64, i64, i64, i8*, i8*, i64, i8 }

@.str = private unnamed_addr constant [61 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [43 x i8] c"CCTK_Equals: First string null (2nd is %s)\00", align 1
@.str3 = private unnamed_addr constant [44 x i8] c"CCTK_Equals: Second string null (1st is %s)\00", align 1
@.str4 = private unnamed_addr constant [31 x i8] c"CCTK_Equals: Both strings null\00", align 1
@.str5 = private unnamed_addr constant [106 x i8] c"Null Terminating a string with length %d !!\0AThis is probably an error in calling a C routine from Fortran\00", align 1
@.str6 = private unnamed_addr constant [50 x i8] c"(\5C[|\5C()?([^]):]*):?([^]):]*)?:?([^]):]*)?(\5C]|\5C))?\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"Flesh\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"Invalid range\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str16 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str17 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str20 = private unnamed_addr constant [102 x i8] c"CCTK_FortranString: fortran string buffer is too short to hold C string '%s, string will be truncated\00", align 1
@.str21 = private unnamed_addr constant [79 x i8] c"$Header: /cactus/Cactus/src/util/Misc.c,v 1.61 2001/12/04 10:42:39 allen Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_util_Misc_c() #0 {
entry:
  ret i8* getelementptr inbounds ([79 x i8]* @.str21, i64 0, i64 0), !dbg !244
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_Equals(i8* %string1, i8* %string2) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %string1}, i64 0, metadata !16), !dbg !245
  tail call void @llvm.dbg.value(metadata !{i8* %string2}, i64 0, metadata !17), !dbg !245
  tail call void @llvm.dbg.value(metadata !246, i64 0, metadata !18), !dbg !247
  %tobool = icmp ne i8* %string1, null, !dbg !248
  %tobool.not = xor i1 %tobool, true, !dbg !248
  %tobool2 = icmp eq i8* %string2, null, !dbg !248
  %or.cond = or i1 %tobool2, %tobool.not, !dbg !248
  br i1 %or.cond, label %if.then, label %if.else14, !dbg !248

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !249
  %or.cond28 = or i1 %tobool, %tobool2, !dbg !251
  br i1 %or.cond28, label %if.else, label %if.then5, !dbg !251

if.then5:                                         ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 128, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8]* @.str2, i64 0, i64 0), i8* %string2) #7, !dbg !252
  br label %if.end19, !dbg !254

if.else:                                          ; preds = %if.then
  %or.cond29 = and i1 %tobool, %tobool2, !dbg !255
  br i1 %or.cond29, label %if.then9, label %if.else11, !dbg !255

if.then9:                                         ; preds = %if.else
  %call10 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 0, i32 134, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8]* @.str3, i64 0, i64 0), i8* %string1) #7, !dbg !256
  br label %if.end19, !dbg !258

if.else11:                                        ; preds = %if.else
  %call12 = tail call i32 @CCTK_Warn(i32 0, i32 139, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !259
  br label %if.end19

if.else14:                                        ; preds = %entry
  %call15 = tail call i32 @Util_StrCmpi(i8* %string1, i8* %string2) #7, !dbg !261
  %tobool16 = icmp eq i32 %call15, 0, !dbg !261
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !18), !dbg !263
  %. = zext i1 %tobool16 to i32, !dbg !261
  ret i32 %., !dbg !261

if.end19:                                         ; preds = %if.then5, %if.else11, %if.then9
  ret i32 0, !dbg !265
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @Util_StrCmpi(i8*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @cctk_equals_(i8** nocapture %arg1, i8* nocapture %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %arg1}, i64 0, metadata !26), !dbg !266
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !27), !dbg !266
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !28), !dbg !266
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !267
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !30), !dbg !267
  %0 = load i8** %arg1, align 8, !dbg !268, !tbaa !269
  %call2 = tail call i32 @CCTK_Equals(i8* %0, i8* %call) #8, !dbg !268
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !29), !dbg !268
  tail call void @free(i8* %call) #7, !dbg !272
  ret i32 %call2, !dbg !273
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @Util_NullTerminateString(i8* nocapture %instring, i32 %len) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %instring}, i64 0, metadata !35), !dbg !274
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !36), !dbg !274
  %cmp = icmp ugt i32 %len, 100000, !dbg !275
  br i1 %cmp, label %if.then, label %while.cond, !dbg !275

if.then:                                          ; preds = %entry
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 205, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([106 x i8]* @.str5, i64 0, i64 0), i32 %len) #7, !dbg !276
  br label %while.cond, !dbg !278

while.cond:                                       ; preds = %entry, %if.then, %land.rhs
  %indvar = phi i32 [ %indvar.next, %land.rhs ], [ 0, %if.then ], [ 0, %entry ]
  %indvars.iv31 = phi i32 [ %indvars.iv.next32, %land.rhs ], [ %len, %if.then ], [ %len, %entry ], !dbg !279
  %cmp1 = icmp eq i32 %indvars.iv31, 0, !dbg !282
  br i1 %cmp1, label %while.end, label %land.rhs, !dbg !282

land.rhs:                                         ; preds = %while.cond
  %indvars.iv.next32 = add i32 %indvars.iv31, -1
  %idxprom = zext i32 %indvars.iv.next32 to i64, !dbg !282
  %arrayidx = getelementptr inbounds i8* %instring, i64 %idxprom, !dbg !282
  %0 = load i8* %arrayidx, align 1, !dbg !282, !tbaa !270
  %cmp2 = icmp eq i8 %0, 32, !dbg !282
  %indvar.next = add i32 %indvar, 1
  br i1 %cmp2, label %while.cond, label %while.end

while.end:                                        ; preds = %while.cond, %land.rhs
  %position.0.lcssa = phi i32 [ 0, %while.cond ], [ %indvars.iv31, %land.rhs ]
  %add = add i32 %position.0.lcssa, 1, !dbg !283
  %conv4 = zext i32 %add to i64, !dbg !283
  %call5 = tail call noalias i8* @malloc(i64 %conv4) #7, !dbg !283
  tail call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !37), !dbg !283
  %tobool = icmp eq i8* %call5, null, !dbg !284
  br i1 %tobool, label %if.end15, label %for.cond.preheader, !dbg !284

for.cond.preheader:                               ; preds = %while.end
  %cmp729 = icmp eq i32 %position.0.lcssa, 0, !dbg !279
  br i1 %cmp729, label %for.end, label %for.body.lr.ph, !dbg !279

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %1 = add i32 %len, -1, !dbg !279
  %2 = sub i32 %1, %indvar, !dbg !279
  %3 = zext i32 %2 to i64
  %4 = add i64 %3, 1, !dbg !279
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call5, i8* %instring, i64 %4, i32 1, i1 false), !dbg !285
  br label %for.end, !dbg !279

for.end:                                          ; preds = %for.cond.preheader, %for.body.lr.ph
  %idxprom13 = zext i32 %position.0.lcssa to i64, !dbg !287
  %arrayidx14 = getelementptr inbounds i8* %call5, i64 %idxprom13, !dbg !287
  store i8 0, i8* %arrayidx14, align 1, !dbg !287, !tbaa !270
  br label %if.end15, !dbg !288

if.end15:                                         ; preds = %while.end, %for.end
  ret i8* %call5, !dbg !289
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize uwtable
define i32 @Util_InList(i8* %string1, i32 %n_elements, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8* %string1}, i64 0, metadata !44), !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %n_elements}, i64 0, metadata !45), !dbg !290
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !48), !dbg !291
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !46), !dbg !292
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !293
  call void @llvm.va_start(i8* %arraydecay2), !dbg !293
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !47), !dbg !294
  %cmp7 = icmp sgt i32 %n_elements, 0, !dbg !294
  br i1 %cmp7, label %for.body.lr.ph, label %for.end, !dbg !294

for.body.lr.ph:                                   ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !296
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !296
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !296
  br label %for.body, !dbg !294

for.cond:                                         ; preds = %vaarg.end
  %cmp = icmp slt i32 %inc, %n_elements, !dbg !294
  br i1 %cmp, label %for.body, label %for.end, !dbg !294

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %arg.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !296
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !296
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !296

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8** %0, align 16, !dbg !296
  %1 = sext i32 %gp_offset to i64, !dbg !296
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !296
  %3 = add i32 %gp_offset, 8, !dbg !296
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !296
  br label %vaarg.end, !dbg !296

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !296
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !296
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !296
  br label %vaarg.end, !dbg !296

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !296
  %4 = load i8** %vaarg.addr, align 8, !dbg !296
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !63), !dbg !296
  %call = call i32 @CCTK_Equals(i8* %string1, i8* %4) #8, !dbg !298
  %tobool = icmp eq i32 %call, 0, !dbg !298
  %inc = add nsw i32 %arg.08, 1, !dbg !294
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !47), !dbg !294
  br i1 %tobool, label %for.cond, label %for.end, !dbg !298

for.end:                                          ; preds = %for.cond, %vaarg.end, %entry
  %retval1.0 = phi i32 [ 0, %entry ], [ 1, %vaarg.end ], [ 0, %for.cond ]
  call void @llvm.va_end(i8* %arraydecay2), !dbg !299
  ret i32 %retval1.0, !dbg !300
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind optsize uwtable
define i32 @Util_IntInRange(i32 %inval, i8* %range) #1 {
entry:
  %pmatch = alloca [6 x %struct.regmatch_t], align 16
  call void @llvm.dbg.value(metadata !{i32 %inval}, i64 0, metadata !68), !dbg !301
  call void @llvm.dbg.value(metadata !{i8* %range}, i64 0, metadata !69), !dbg !301
  %0 = bitcast [6 x %struct.regmatch_t]* %pmatch to i8*, !dbg !302
  call void @llvm.lifetime.start(i64 48, i8* %0) #5, !dbg !302
  call void @llvm.dbg.declare(metadata !{[6 x %struct.regmatch_t]* %pmatch}, metadata !71), !dbg !302
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !303
  %arraydecay = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 0, !dbg !304
  %call = call i32 @CCTK_RegexMatch(i8* %range, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i32 6, %struct.regmatch_t* %arraydecay) #8, !dbg !304
  %cmp = icmp eq i32 %call, 0, !dbg !304
  br i1 %cmp, label %if.else109, label %if.then, !dbg !304

if.then:                                          ; preds = %entry
  %rm_so = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 1, i32 0, !dbg !305
  %1 = load i32* %rm_so, align 8, !dbg !305, !tbaa !307
  %cmp2 = icmp eq i32 %1, -1, !dbg !305
  br i1 %cmp2, label %if.end, label %if.then3, !dbg !305

if.then3:                                         ; preds = %if.then
  %idxprom = sext i32 %1 to i64, !dbg !308
  %arrayidx6 = getelementptr inbounds i8* %range, i64 %idxprom, !dbg !308
  %2 = load i8* %arrayidx6, align 1, !dbg !308, !tbaa !270
  %cond = icmp eq i8 %2, 40, !dbg !308
  %. = zext i1 %cond to i32, !dbg !310
  br label %if.end, !dbg !310

if.end:                                           ; preds = %if.then, %if.then3
  %start_closed.0 = phi i32 [ %., %if.then3 ], [ 0, %if.then ]
  %rm_so9 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 2, i32 0, !dbg !312
  %3 = bitcast i32* %rm_so9 to i64*, !dbg !312
  %4 = load i64* %3, align 16, !dbg !312
  %5 = trunc i64 %4 to i32, !dbg !312
  %cmp10 = icmp eq i32 %5, -1, !dbg !312
  br i1 %cmp10, label %if.end30, label %land.lhs.true, !dbg !312

land.lhs.true:                                    ; preds = %if.end
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %sub = sub nsw i32 %7, %5, !dbg !312
  %cmp15 = icmp sgt i32 %sub, 0, !dbg !312
  br i1 %cmp15, label %land.lhs.true17, label %if.end30, !dbg !312

land.lhs.true17:                                  ; preds = %land.lhs.true
  %sext126 = shl i64 %4, 32, !dbg !312
  %idxprom20 = ashr exact i64 %sext126, 32, !dbg !312
  %arrayidx21 = getelementptr inbounds i8* %range, i64 %idxprom20, !dbg !312
  %8 = load i8* %arrayidx21, align 1, !dbg !312, !tbaa !270
  %cmp23 = icmp eq i8 %8, 42, !dbg !312
  br i1 %cmp23, label %if.end30, label %if.then25, !dbg !312

if.then25:                                        ; preds = %land.lhs.true17
  %call28 = call i32 @atoi(i8* %arrayidx21) #9, !dbg !313
  call void @llvm.dbg.value(metadata !{i32 %call28}, i64 0, metadata !84), !dbg !313
  br label %if.end30, !dbg !315

if.end30:                                         ; preds = %land.lhs.true, %if.end, %land.lhs.true17, %if.then25
  %start.0 = phi i32 [ %call28, %if.then25 ], [ -2147483648, %land.lhs.true17 ], [ -2147483648, %if.end ], [ -2147483648, %land.lhs.true ]
  %rm_so32 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 3, i32 0, !dbg !316
  %9 = bitcast i32* %rm_so32 to i64*, !dbg !316
  %10 = load i64* %9, align 8, !dbg !316
  %11 = trunc i64 %10 to i32, !dbg !316
  %cmp33 = icmp eq i32 %11, -1, !dbg !316
  br i1 %cmp33, label %if.end58, label %land.lhs.true35, !dbg !316

land.lhs.true35:                                  ; preds = %if.end30
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  %sub40 = sub nsw i32 %13, %11, !dbg !316
  %cmp41 = icmp sgt i32 %sub40, 0, !dbg !316
  br i1 %cmp41, label %land.lhs.true43, label %if.end58, !dbg !316

land.lhs.true43:                                  ; preds = %land.lhs.true35
  %sext125 = shl i64 %10, 32, !dbg !316
  %idxprom46 = ashr exact i64 %sext125, 32, !dbg !316
  %arrayidx47 = getelementptr inbounds i8* %range, i64 %idxprom46, !dbg !316
  %14 = load i8* %arrayidx47, align 1, !dbg !316, !tbaa !270
  %cmp49 = icmp eq i8 %14, 42, !dbg !316
  br i1 %cmp49, label %if.end58, label %if.then51, !dbg !316

if.then51:                                        ; preds = %land.lhs.true43
  %call56 = call i32 @atoi(i8* %arrayidx47) #9, !dbg !317
  call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !85), !dbg !317
  br label %if.end58, !dbg !319

if.end58:                                         ; preds = %land.lhs.true35, %if.end30, %land.lhs.true43, %if.then51
  %end.0 = phi i32 [ %call56, %if.then51 ], [ 2147483647, %land.lhs.true43 ], [ 2147483647, %if.end30 ], [ 2147483647, %land.lhs.true35 ]
  %rm_so60 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 4, i32 0, !dbg !320
  %15 = bitcast i32* %rm_so60 to i64*, !dbg !320
  %16 = load i64* %15, align 16, !dbg !320
  %17 = trunc i64 %16 to i32, !dbg !320
  %cmp61 = icmp eq i32 %17, -1, !dbg !320
  br i1 %cmp61, label %if.end78, label %land.lhs.true63, !dbg !320

land.lhs.true63:                                  ; preds = %if.end58
  %18 = lshr i64 %16, 32
  %19 = trunc i64 %18 to i32
  %sub68 = sub nsw i32 %19, %17, !dbg !320
  %cmp69 = icmp sgt i32 %sub68, 0, !dbg !320
  br i1 %cmp69, label %if.then71, label %if.end78, !dbg !320

if.then71:                                        ; preds = %land.lhs.true63
  %sext = shl i64 %16, 32, !dbg !321
  %idx.ext74 = ashr exact i64 %sext, 32, !dbg !321
  %add.ptr75 = getelementptr inbounds i8* %range, i64 %idx.ext74, !dbg !321
  %call76 = call i32 @atoi(i8* %add.ptr75) #9, !dbg !321
  call void @llvm.dbg.value(metadata !{i32 %call76}, i64 0, metadata !86), !dbg !321
  br label %if.end78, !dbg !323

if.end78:                                         ; preds = %land.lhs.true63, %if.end58, %if.then71
  %step.0 = phi i32 [ %call76, %if.then71 ], [ 1, %if.end58 ], [ 1, %land.lhs.true63 ]
  %rm_so80 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 5, i32 0, !dbg !324
  %20 = load i32* %rm_so80, align 8, !dbg !324, !tbaa !307
  %cmp81 = icmp eq i32 %20, -1, !dbg !324
  br i1 %cmp81, label %if.end94, label %if.then83, !dbg !324

if.then83:                                        ; preds = %if.end78
  %idxprom86 = sext i32 %20 to i64, !dbg !325
  %arrayidx87 = getelementptr inbounds i8* %range, i64 %idxprom86, !dbg !325
  %21 = load i8* %arrayidx87, align 1, !dbg !325, !tbaa !270
  %cond112 = icmp eq i8 %21, 41, !dbg !325
  %.123 = zext i1 %cond112 to i32, !dbg !327
  br label %if.end94, !dbg !327

if.end94:                                         ; preds = %if.end78, %if.then83
  %end_closed.0 = phi i32 [ %.123, %if.then83 ], [ 0, %if.end78 ]
  %add = add nsw i32 %start.0, %start_closed.0, !dbg !329
  %cmp95 = icmp sgt i32 %add, %inval, !dbg !329
  br i1 %cmp95, label %if.end111, label %land.lhs.true97, !dbg !329

land.lhs.true97:                                  ; preds = %if.end94
  %sub101 = sub nsw i32 %end.0, %end_closed.0, !dbg !329
  %cmp102 = icmp slt i32 %sub101, %inval, !dbg !329
  br i1 %cmp102, label %if.end111, label %land.lhs.true104, !dbg !329

land.lhs.true104:                                 ; preds = %land.lhs.true97
  %sub105 = sub nsw i32 %inval, %start.0, !dbg !329
  %rem = srem i32 %sub105, %step.0, !dbg !329
  %tobool106 = icmp eq i32 %rem, 0, !dbg !329
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !70), !dbg !330
  %.124 = zext i1 %tobool106 to i32, !dbg !329
  br label %if.end111, !dbg !329

if.else109:                                       ; preds = %entry
  %call110 = call i32 @CCTK_Warn(i32 1, i32 444, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !332
  br label %if.end111

if.end111:                                        ; preds = %land.lhs.true104, %land.lhs.true97, %if.end94, %if.else109
  %retval1.0 = phi i32 [ 0, %land.lhs.true97 ], [ 0, %if.end94 ], [ 0, %if.else109 ], [ %.124, %land.lhs.true104 ]
  call void @llvm.lifetime.end(i64 48, i8* %0) #5, !dbg !334
  ret i32 %retval1.0, !dbg !334
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RegexMatch(i8* %string, i8* %pattern, i32 %nmatch, %struct.regmatch_t* %pmatch) #1 {
entry:
  %re = alloca %struct.re_pattern_buffer, align 8
  call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !190), !dbg !335
  call void @llvm.dbg.value(metadata !{i8* %pattern}, i64 0, metadata !191), !dbg !336
  call void @llvm.dbg.value(metadata !{i32 %nmatch}, i64 0, metadata !192), !dbg !337
  call void @llvm.dbg.value(metadata !{%struct.regmatch_t* %pmatch}, i64 0, metadata !193), !dbg !338
  %0 = bitcast %struct.re_pattern_buffer* %re to i8*, !dbg !339
  call void @llvm.lifetime.start(i64 64, i8* %0) #5, !dbg !339
  call void @llvm.dbg.declare(metadata !{%struct.re_pattern_buffer* %re}, metadata !196), !dbg !339
  %call = call i32 @regcomp(%struct.re_pattern_buffer* %re, i8* %pattern, i32 1) #7, !dbg !340
  %cmp = icmp eq i32 %call, 0, !dbg !340
  br i1 %cmp, label %if.then, label %if.end7, !dbg !340

if.then:                                          ; preds = %entry
  %conv = sext i32 %nmatch to i64, !dbg !341
  %call2 = call i32 @regexec(%struct.re_pattern_buffer* %re, i8* %string, i64 %conv, %struct.regmatch_t* %pmatch, i32 0) #7, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !195), !dbg !341
  call void @regfree(%struct.re_pattern_buffer* %re) #7, !dbg !343
  %cmp3 = icmp eq i32 %call2, 0, !dbg !344
  %. = zext i1 %cmp3 to i32
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then
  %retval1.0 = phi i32 [ %., %if.then ], [ 0, %entry ]
  call void @llvm.lifetime.end(i64 64, i8* %0) #5, !dbg !345
  ret i32 %retval1.0, !dbg !345
}

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define i32 @Util_DoubleInRange(double %inval, i8* %range) #1 {
entry:
  %pmatch = alloca [6 x %struct.regmatch_t], align 16
  call void @llvm.dbg.value(metadata !{double %inval}, i64 0, metadata !92), !dbg !346
  call void @llvm.dbg.value(metadata !{i8* %range}, i64 0, metadata !93), !dbg !346
  %0 = bitcast [6 x %struct.regmatch_t]* %pmatch to i8*, !dbg !347
  call void @llvm.lifetime.start(i64 48, i8* %0) #5, !dbg !347
  call void @llvm.dbg.declare(metadata !{[6 x %struct.regmatch_t]* %pmatch}, metadata !95), !dbg !347
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !94), !dbg !348
  %arraydecay = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 0, !dbg !349
  %call = call i32 @CCTK_RegexMatch(i8* %range, i8* getelementptr inbounds ([50 x i8]* @.str6, i64 0, i64 0), i32 6, %struct.regmatch_t* %arraydecay) #8, !dbg !349
  %cmp = icmp eq i32 %call, 0, !dbg !349
  br i1 %cmp, label %if.else52, label %if.then, !dbg !349

if.then:                                          ; preds = %entry
  %rm_so = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 2, i32 0, !dbg !350
  %1 = bitcast i32* %rm_so to i64*, !dbg !350
  %2 = load i64* %1, align 16, !dbg !350
  %3 = trunc i64 %2 to i32, !dbg !350
  %cmp2 = icmp eq i32 %3, -1, !dbg !350
  br i1 %cmp2, label %if.end, label %land.lhs.true, !dbg !350

land.lhs.true:                                    ; preds = %if.then
  %4 = lshr i64 %2, 32
  %5 = trunc i64 %4 to i32
  %sub = sub nsw i32 %5, %3, !dbg !350
  %cmp6 = icmp sgt i32 %sub, 0, !dbg !350
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !350

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sext60 = shl i64 %2, 32, !dbg !350
  %idxprom = ashr exact i64 %sext60, 32, !dbg !350
  %arrayidx10 = getelementptr inbounds i8* %range, i64 %idxprom, !dbg !350
  %6 = load i8* %arrayidx10, align 1, !dbg !350, !tbaa !270
  %cmp11 = icmp eq i8 %6, 42, !dbg !350
  br i1 %cmp11, label %if.end, label %if.then13, !dbg !350

if.then13:                                        ; preds = %land.lhs.true7
  %call16 = call double @atof(i8* %arrayidx10) #9, !dbg !352
  call void @llvm.dbg.value(metadata !{double %call16}, i64 0, metadata !96), !dbg !352
  br label %if.end, !dbg !354

if.end:                                           ; preds = %land.lhs.true, %if.then, %land.lhs.true7, %if.then13
  %start.0 = phi double [ %call16, %if.then13 ], [ 0xC7EFFFFFE0000000, %land.lhs.true7 ], [ 0xC7EFFFFFE0000000, %if.then ], [ 0xC7EFFFFFE0000000, %land.lhs.true ]
  %rm_so18 = getelementptr inbounds [6 x %struct.regmatch_t]* %pmatch, i64 0, i64 3, i32 0, !dbg !355
  %7 = bitcast i32* %rm_so18 to i64*, !dbg !355
  %8 = load i64* %7, align 8, !dbg !355
  %9 = trunc i64 %8 to i32, !dbg !355
  %cmp19 = icmp eq i32 %9, -1, !dbg !355
  br i1 %cmp19, label %if.end44, label %land.lhs.true21, !dbg !355

land.lhs.true21:                                  ; preds = %if.end
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %sub26 = sub nsw i32 %11, %9, !dbg !355
  %cmp27 = icmp sgt i32 %sub26, 0, !dbg !355
  br i1 %cmp27, label %land.lhs.true29, label %if.end44, !dbg !355

land.lhs.true29:                                  ; preds = %land.lhs.true21
  %sext = shl i64 %8, 32, !dbg !355
  %idxprom32 = ashr exact i64 %sext, 32, !dbg !355
  %arrayidx33 = getelementptr inbounds i8* %range, i64 %idxprom32, !dbg !355
  %12 = load i8* %arrayidx33, align 1, !dbg !355, !tbaa !270
  %cmp35 = icmp eq i8 %12, 42, !dbg !355
  br i1 %cmp35, label %if.end44, label %if.then37, !dbg !355

if.then37:                                        ; preds = %land.lhs.true29
  %call42 = call double @atof(i8* %arrayidx33) #9, !dbg !356
  call void @llvm.dbg.value(metadata !{double %call42}, i64 0, metadata !97), !dbg !356
  br label %if.end44, !dbg !358

if.end44:                                         ; preds = %land.lhs.true21, %if.end, %land.lhs.true29, %if.then37
  %end.0 = phi double [ %call42, %if.then37 ], [ 0x47EFFFFFE0000000, %land.lhs.true29 ], [ 0x47EFFFFFE0000000, %if.end ], [ 0x47EFFFFFE0000000, %land.lhs.true21 ]
  %cmp45 = fcmp ugt double %start.0, %inval, !dbg !359
  %cmp48 = fcmp ult double %end.0, %inval, !dbg !359
  %or.cond = or i1 %cmp45, %cmp48, !dbg !359
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !94), !dbg !360
  %13 = zext i1 %or.cond to i32, !dbg !359
  %. = xor i32 %13, 1, !dbg !359
  br label %if.end54, !dbg !359

if.else52:                                        ; preds = %entry
  %call53 = call i32 @CCTK_Warn(i32 1, i32 595, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0)) #7, !dbg !362
  br label %if.end54

if.end54:                                         ; preds = %if.end44, %if.else52
  %retval1.0 = phi i32 [ 0, %if.else52 ], [ %., %if.end44 ]
  call void @llvm.lifetime.end(i64 48, i8* %0) #5, !dbg !364
  ret i32 %retval1.0, !dbg !364
}

; Function Attrs: nounwind optsize readonly
declare double @atof(i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i32 @Util_IntInRangeList(i32 %inval, i32 %n_elements, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i32 %inval}, i64 0, metadata !102), !dbg !365
  call void @llvm.dbg.value(metadata !{i32 %n_elements}, i64 0, metadata !103), !dbg !365
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !106), !dbg !366
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !104), !dbg !367
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !368
  call void @llvm.va_start(i8* %arraydecay2), !dbg !368
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !105), !dbg !369
  %cmp7 = icmp sgt i32 %n_elements, 0, !dbg !369
  br i1 %cmp7, label %for.body.lr.ph, label %for.end, !dbg !369

for.body.lr.ph:                                   ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !371
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !371
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !371
  br label %for.body, !dbg !369

for.cond:                                         ; preds = %vaarg.end
  %cmp = icmp slt i32 %inc, %n_elements, !dbg !369
  br i1 %cmp, label %for.body, label %for.end, !dbg !369

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %arg.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !371
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !371
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !371

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8** %0, align 16, !dbg !371
  %1 = sext i32 %gp_offset to i64, !dbg !371
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !371
  %3 = add i32 %gp_offset, 8, !dbg !371
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !371
  br label %vaarg.end, !dbg !371

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !371
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !371
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !371
  br label %vaarg.end, !dbg !371

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !371
  %4 = load i8** %vaarg.addr, align 8, !dbg !371
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !107), !dbg !371
  %call = call i32 @Util_IntInRange(i32 %inval, i8* %4) #8, !dbg !373
  %tobool = icmp eq i32 %call, 0, !dbg !373
  %inc = add nsw i32 %arg.08, 1, !dbg !369
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !105), !dbg !369
  br i1 %tobool, label %for.cond, label %for.end, !dbg !373

for.end:                                          ; preds = %for.cond, %vaarg.end, %entry
  %retval1.0 = phi i32 [ 0, %entry ], [ 1, %vaarg.end ], [ 0, %for.cond ]
  call void @llvm.va_end(i8* %arraydecay2), !dbg !374
  ret i32 %retval1.0, !dbg !375
}

; Function Attrs: nounwind optsize uwtable
define i32 @Util_DoubleInRangeList(double %inval, i32 %n_elements, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{double %inval}, i64 0, metadata !112), !dbg !376
  call void @llvm.dbg.value(metadata !{i32 %n_elements}, i64 0, metadata !113), !dbg !376
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !116), !dbg !377
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !114), !dbg !378
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !379
  call void @llvm.va_start(i8* %arraydecay2), !dbg !379
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !115), !dbg !380
  %cmp7 = icmp sgt i32 %n_elements, 0, !dbg !380
  br i1 %cmp7, label %for.body.lr.ph, label %for.end, !dbg !380

for.body.lr.ph:                                   ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !382
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !382
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !382
  br label %for.body, !dbg !380

for.cond:                                         ; preds = %vaarg.end
  %cmp = icmp slt i32 %inc, %n_elements, !dbg !380
  br i1 %cmp, label %for.body, label %for.end, !dbg !380

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %arg.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !382
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !382
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !382

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8** %0, align 16, !dbg !382
  %1 = sext i32 %gp_offset to i64, !dbg !382
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !382
  %3 = add i32 %gp_offset, 8, !dbg !382
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !382
  br label %vaarg.end, !dbg !382

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !382
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !382
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !382
  br label %vaarg.end, !dbg !382

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !382
  %4 = load i8** %vaarg.addr, align 8, !dbg !382
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !117), !dbg !382
  %call = call i32 @Util_DoubleInRange(double %inval, i8* %4) #8, !dbg !384
  %tobool = icmp eq i32 %call, 0, !dbg !384
  %inc = add nsw i32 %arg.08, 1, !dbg !380
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !115), !dbg !380
  br i1 %tobool, label %for.cond, label %for.end, !dbg !384

for.end:                                          ; preds = %for.cond, %vaarg.end, %entry
  %retval1.0 = phi i32 [ 0, %entry ], [ 1, %vaarg.end ], [ 0, %for.cond ]
  call void @llvm.va_end(i8* %arraydecay2), !dbg !385
  ret i32 %retval1.0, !dbg !386
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SetDoubleInRangeList(double* nocapture %data, i8* nocapture %value, i32 %n_elements, ...) #1 {
entry:
  %temp = alloca [1001 x i8], align 16
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{double* %data}, i64 0, metadata !123), !dbg !387
  call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !124), !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %n_elements}, i64 0, metadata !125), !dbg !388
  %0 = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 0, !dbg !389
  call void @llvm.lifetime.start(i64 1001, i8* %0) #5, !dbg !389
  call void @llvm.dbg.declare(metadata !{[1001 x i8]* %temp}, metadata !127), !dbg !389
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !133), !dbg !390
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !126), !dbg !391
  %call = call i8* @strncpy(i8* %0, i8* %value, i64 1000) #7, !dbg !392
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !393
  %strlenfirst = load i8* %0, align 16, !dbg !393
  %cmp48 = icmp eq i8 %strlenfirst, 0, !dbg !393
  br i1 %cmp48, label %for.end, label %for.body, !dbg !393

for.body:                                         ; preds = %entry, %for.inc.for.body_crit_edge
  %1 = phi i8 [ %.pre, %for.inc.for.body_crit_edge ], [ %strlenfirst, %entry ]
  %conv50 = phi i64 [ %conv, %for.inc.for.body_crit_edge ], [ 0, %entry ]
  %p.049 = phi i32 [ %phitmp, %for.inc.for.body_crit_edge ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 %conv50, !dbg !395
  switch i8 %1, label %for.inc [
    i8 69, label %if.then
    i8 100, label %if.then
    i8 68, label %if.then
  ], !dbg !395

if.then:                                          ; preds = %for.body, %for.body, %for.body
  store i8 101, i8* %arrayidx, align 1, !dbg !397, !tbaa !270
  br label %for.end, !dbg !399

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata !{i32 %p.049}, i64 0, metadata !131), !dbg !393
  %conv = zext i32 %p.049 to i64, !dbg !393
  %call3 = call i64 @strlen(i8* %0) #9, !dbg !393
  %cmp = icmp ult i64 %conv, %call3, !dbg !393
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end, !dbg !393

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx.phi.trans.insert = getelementptr inbounds [1001 x i8]* %temp, i64 0, i64 %conv
  %.pre = load i8* %arrayidx.phi.trans.insert, align 1, !dbg !395, !tbaa !270
  %phitmp = add i32 %p.049, 1, !dbg !393
  br label %for.body, !dbg !393

for.end:                                          ; preds = %entry, %for.inc, %if.then
  %call22 = call double @atof(i8* %0) #9, !dbg !400
  call void @llvm.dbg.value(metadata !{double %call22}, i64 0, metadata !135), !dbg !400
  %arraydecay2324 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !401
  call void @llvm.va_start(i8* %arraydecay2324), !dbg !401
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !132), !dbg !402
  %cmp2645 = icmp sgt i32 %n_elements, 0, !dbg !402
  br i1 %cmp2645, label %for.body28.lr.ph, label %for.end35, !dbg !402

for.body28.lr.ph:                                 ; preds = %for.end
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !404
  %2 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !404
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !404
  br label %for.body28, !dbg !402

for.cond25:                                       ; preds = %vaarg.end
  %cmp26 = icmp slt i32 %inc34, %n_elements, !dbg !402
  br i1 %cmp26, label %for.body28, label %for.end35, !dbg !402

for.body28:                                       ; preds = %for.body28.lr.ph, %for.cond25
  %arg.046 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc34, %for.cond25 ]
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !404
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !404
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !404

vaarg.in_reg:                                     ; preds = %for.body28
  %reg_save_area = load i8** %2, align 16, !dbg !404
  %3 = sext i32 %gp_offset to i64, !dbg !404
  %4 = getelementptr i8* %reg_save_area, i64 %3, !dbg !404
  %5 = add i32 %gp_offset, 8, !dbg !404
  store i32 %5, i32* %gp_offset_p, align 16, !dbg !404
  br label %vaarg.end, !dbg !404

vaarg.in_mem:                                     ; preds = %for.body28
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !404
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !404
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !404
  br label %vaarg.end, !dbg !404

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %4, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !404
  %6 = load i8** %vaarg.addr, align 8, !dbg !404
  call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !134), !dbg !404
  %call30 = call i32 @Util_DoubleInRange(double %call22, i8* %6) #8, !dbg !406
  %tobool = icmp eq i32 %call30, 0, !dbg !406
  %inc34 = add nsw i32 %arg.046, 1, !dbg !402
  call void @llvm.dbg.value(metadata !{i32 %inc34}, i64 0, metadata !132), !dbg !402
  br i1 %tobool, label %for.cond25, label %if.then31, !dbg !406

if.then31:                                        ; preds = %vaarg.end
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !126), !dbg !407
  store double %call22, double* %data, align 8, !dbg !409, !tbaa !410
  br label %for.end35, !dbg !411

for.end35:                                        ; preds = %for.end, %for.cond25, %if.then31
  %retval1.0 = phi i32 [ 0, %if.then31 ], [ 1, %for.cond25 ], [ 1, %for.end ]
  call void @llvm.va_end(i8* %arraydecay2324), !dbg !412
  call void @llvm.lifetime.end(i64 1001, i8* %0) #5, !dbg !413
  ret i32 %retval1.0, !dbg !413
}

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SetIntInRangeList(i32* nocapture %data, i8* nocapture %value, i32 %n_elements, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i32* %data}, i64 0, metadata !141), !dbg !414
  call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !142), !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %n_elements}, i64 0, metadata !143), !dbg !415
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !146), !dbg !416
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !144), !dbg !417
  %call = call i32 @atoi(i8* %value) #9, !dbg !418
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !148), !dbg !418
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !419
  call void @llvm.va_start(i8* %arraydecay2), !dbg !419
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !145), !dbg !420
  %cmp9 = icmp sgt i32 %n_elements, 0, !dbg !420
  br i1 %cmp9, label %for.body.lr.ph, label %for.end, !dbg !420

for.body.lr.ph:                                   ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !422
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !422
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !422
  br label %for.body, !dbg !420

for.cond:                                         ; preds = %vaarg.end
  %cmp = icmp slt i32 %inc, %n_elements, !dbg !420
  br i1 %cmp, label %for.body, label %for.end, !dbg !420

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %arg.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !422
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !422
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !422

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8** %0, align 16, !dbg !422
  %1 = sext i32 %gp_offset to i64, !dbg !422
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !422
  %3 = add i32 %gp_offset, 8, !dbg !422
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !422
  br label %vaarg.end, !dbg !422

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !422
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !422
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !422
  br label %vaarg.end, !dbg !422

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !422
  %4 = load i8** %vaarg.addr, align 8, !dbg !422
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !147), !dbg !422
  %call4 = call i32 @Util_IntInRange(i32 %call, i8* %4) #8, !dbg !424
  %tobool = icmp eq i32 %call4, 0, !dbg !424
  %inc = add nsw i32 %arg.010, 1, !dbg !420
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !145), !dbg !420
  br i1 %tobool, label %for.cond, label %if.then, !dbg !424

if.then:                                          ; preds = %vaarg.end
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !144), !dbg !425
  store i32 %call, i32* %data, align 4, !dbg !427, !tbaa !307
  br label %for.end, !dbg !428

for.end:                                          ; preds = %entry, %for.cond, %if.then
  %retval1.0 = phi i32 [ 0, %if.then ], [ 1, %for.cond ], [ 1, %entry ]
  call void @llvm.va_end(i8* %arraydecay2), !dbg !429
  ret i32 %retval1.0, !dbg !430
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SetKeywordInRangeList(i8** nocapture %data, i8* %value, i32 %n_elements, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !154), !dbg !431
  call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !155), !dbg !431
  call void @llvm.dbg.value(metadata !{i32 %n_elements}, i64 0, metadata !156), !dbg !432
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !159), !dbg !433
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !157), !dbg !434
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !435
  call void @llvm.va_start(i8* %arraydecay2), !dbg !435
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !158), !dbg !436
  %cmp22 = icmp sgt i32 %n_elements, 0, !dbg !436
  br i1 %cmp22, label %for.body.lr.ph, label %for.end, !dbg !436

for.body.lr.ph:                                   ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !438
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !438
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !438
  br label %for.body, !dbg !436

for.cond:                                         ; preds = %vaarg.end
  %cmp = icmp slt i32 %inc, %n_elements, !dbg !436
  br i1 %cmp, label %for.body, label %for.end, !dbg !436

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %arg.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !438
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !438
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !438

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8** %0, align 16, !dbg !438
  %1 = sext i32 %gp_offset to i64, !dbg !438
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !438
  %3 = add i32 %gp_offset, 8, !dbg !438
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !438
  br label %vaarg.end, !dbg !438

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !438
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !438
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !438
  br label %vaarg.end, !dbg !438

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !438
  %4 = load i8** %vaarg.addr, align 8, !dbg !438
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !160), !dbg !438
  %call = call i32 @CCTK_Equals(i8* %value, i8* %4) #8, !dbg !440
  %tobool = icmp eq i32 %call, 0, !dbg !440
  %inc = add nsw i32 %arg.023, 1, !dbg !436
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !158), !dbg !436
  br i1 %tobool, label %for.cond, label %if.then, !dbg !440

if.then:                                          ; preds = %vaarg.end
  %5 = load i8** %data, align 8, !dbg !441, !tbaa !269
  %tobool4 = icmp eq i8* %5, null, !dbg !441
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !441

if.then5:                                         ; preds = %if.then
  call void @free(i8* %5) #7, !dbg !441
  br label %if.end, !dbg !441

if.end:                                           ; preds = %if.then, %if.then5
  %call6 = call i64 @strlen(i8* %value) #9, !dbg !443
  %add = add i64 %call6, 1, !dbg !443
  %call7 = call noalias i8* @malloc(i64 %add) #7, !dbg !443
  store i8* %call7, i8** %data, align 8, !dbg !443, !tbaa !269
  %tobool8 = icmp eq i8* %call7, null, !dbg !444
  br i1 %tobool8, label %for.end, label %if.then9, !dbg !444

if.then9:                                         ; preds = %if.end
  %call10 = call i8* @strcpy(i8* %call7, i8* %value) #7, !dbg !445
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !157), !dbg !447
  br label %for.end, !dbg !448

for.end:                                          ; preds = %entry, %for.cond, %if.end, %if.then9
  %retval1.0 = phi i32 [ 0, %if.then9 ], [ -1, %if.end ], [ 1, %for.cond ], [ 1, %entry ]
  call void @llvm.va_end(i8* %arraydecay2), !dbg !449
  ret i32 %retval1.0, !dbg !450
}

; Function Attrs: nounwind optsize
declare i8* @strcpy(i8*, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SetStringInRegexList(i8** nocapture %data, i8* %value, i32 %n_elements, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !163), !dbg !451
  call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !164), !dbg !451
  call void @llvm.dbg.value(metadata !{i32 %n_elements}, i64 0, metadata !165), !dbg !452
  call void @llvm.dbg.declare(metadata !{[1 x %struct.__va_list_tag]* %ap}, metadata !168), !dbg !453
  call void @llvm.dbg.value(metadata !246, i64 0, metadata !166), !dbg !454
  %arraydecay2 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !455
  call void @llvm.va_start(i8* %arraydecay2), !dbg !455
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !167), !dbg !456
  %cmp9 = icmp sgt i32 %n_elements, 0, !dbg !456
  br i1 %cmp9, label %for.body.lr.ph, label %for.end, !dbg !456

for.body.lr.ph:                                   ; preds = %entry
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 0, !dbg !458
  %0 = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 3, !dbg !458
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, i32 2, !dbg !458
  br label %for.body, !dbg !456

for.cond:                                         ; preds = %vaarg.end
  %cmp = icmp slt i32 %inc, %n_elements, !dbg !456
  br i1 %cmp, label %for.body, label %for.end, !dbg !456

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %arg.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond ]
  %gp_offset = load i32* %gp_offset_p, align 16, !dbg !458
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !458
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !458

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8** %0, align 16, !dbg !458
  %1 = sext i32 %gp_offset to i64, !dbg !458
  %2 = getelementptr i8* %reg_save_area, i64 %1, !dbg !458
  %3 = add i32 %gp_offset, 8, !dbg !458
  store i32 %3, i32* %gp_offset_p, align 16, !dbg !458
  br label %vaarg.end, !dbg !458

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8** %overflow_arg_area_p, align 8, !dbg !458
  %overflow_arg_area.next = getelementptr i8* %overflow_arg_area, i64 8, !dbg !458
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !458
  br label %vaarg.end, !dbg !458

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !458
  %4 = load i8** %vaarg.addr, align 8, !dbg !458
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !169), !dbg !458
  %call = call i32 @CCTK_RegexMatch(i8* %value, i8* %4, i32 0, %struct.regmatch_t* null) #8, !dbg !460
  %tobool = icmp eq i32 %call, 0, !dbg !460
  %inc = add nsw i32 %arg.010, 1, !dbg !456
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !167), !dbg !456
  br i1 %tobool, label %for.cond, label %if.then, !dbg !460

if.then:                                          ; preds = %vaarg.end
  %call4 = call i32 @CCTK_SetString(i8** %data, i8* %value) #8, !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !166), !dbg !461
  br label %for.end, !dbg !463

for.end:                                          ; preds = %entry, %for.cond, %if.then
  %retval1.0 = phi i32 [ %call4, %if.then ], [ 1, %for.cond ], [ 1, %entry ]
  call void @llvm.va_end(i8* %arraydecay2), !dbg !464
  ret i32 %retval1.0, !dbg !465
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SetString(i8** nocapture %data, i8* nocapture %value) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %data}, i64 0, metadata !174), !dbg !466
  tail call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !175), !dbg !466
  tail call void @llvm.dbg.value(metadata !246, i64 0, metadata !176), !dbg !467
  %0 = load i8** %data, align 8, !dbg !468, !tbaa !269
  %tobool = icmp eq i8* %0, null, !dbg !468
  br i1 %tobool, label %if.end, label %if.then, !dbg !468

if.then:                                          ; preds = %entry
  tail call void @free(i8* %0) #7, !dbg !468
  br label %if.end, !dbg !468

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i64 @strlen(i8* %value) #9, !dbg !469
  %add = add i64 %call, 1, !dbg !469
  %call2 = tail call noalias i8* @malloc(i64 %add) #7, !dbg !469
  store i8* %call2, i8** %data, align 8, !dbg !469, !tbaa !269
  %tobool3 = icmp eq i8* %call2, null, !dbg !470
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !470

if.then4:                                         ; preds = %if.end
  %call5 = tail call i8* @strcpy(i8* %call2, i8* %value) #7, !dbg !471
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !176), !dbg !473
  br label %if.end6, !dbg !474

if.end6:                                          ; preds = %if.end, %if.then4
  %retval1.0 = phi i32 [ 0, %if.then4 ], [ -1, %if.end ]
  ret i32 %retval1.0, !dbg !475
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SetBoolean(i32* nocapture %data, i8* %value) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %data}, i64 0, metadata !181), !dbg !476
  tail call void @llvm.dbg.value(metadata !{i8* %value}, i64 0, metadata !182), !dbg !476
  tail call void @llvm.dbg.value(metadata !246, i64 0, metadata !183), !dbg !477
  %call = tail call i32 (i8*, i32, ...)* @Util_InList(i8* %value, i32 5, i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #8, !dbg !478
  %tobool = icmp eq i32 %call, 0, !dbg !478
  br i1 %tobool, label %if.else, label %if.then, !dbg !478

if.then:                                          ; preds = %entry
  store i32 1, i32* %data, align 4, !dbg !479, !tbaa !307
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !481
  br label %if.end6, !dbg !482

if.else:                                          ; preds = %entry
  %call2 = tail call i32 (i8*, i32, ...)* @Util_InList(i8* %value, i32 5, i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str18, i64 0, i64 0)) #8, !dbg !483
  %tobool3 = icmp eq i32 %call2, 0, !dbg !483
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !483

if.then4:                                         ; preds = %if.else
  store i32 0, i32* %data, align 4, !dbg !484, !tbaa !307
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !486
  br label %if.end6, !dbg !487

if.end6:                                          ; preds = %if.else, %if.then4, %if.then
  %retval1.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ -1, %if.else ]
  ret i32 %retval1.0, !dbg !488
}

; Function Attrs: optsize
declare i32 @regcomp(%struct.re_pattern_buffer*, i8*, i32) #3

; Function Attrs: optsize
declare i32 @regexec(%struct.re_pattern_buffer*, i8*, i64, %struct.regmatch_t*, i32) #3

; Function Attrs: optsize
declare void @regfree(%struct.re_pattern_buffer*) #3

; Function Attrs: nounwind optsize uwtable
define void @CCTK_PrintString(i8* nocapture %data) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !223), !dbg !489
  %puts = tail call i32 @puts(i8* %data), !dbg !490
  ret void, !dbg !491
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_printstring_(i8** nocapture %arg1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %arg1}, i64 0, metadata !228), !dbg !492
  %0 = load i8** %arg1, align 8, !dbg !493, !tbaa !269
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !494) #5, !dbg !495
  %puts.i = tail call i32 @puts(i8* %0) #5, !dbg !496
  ret void, !dbg !497
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_fortranstring_(i32* nocapture %nchars, i8** nocapture %c_string, i8* nocapture %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %nchars}, i64 0, metadata !235), !dbg !498
  tail call void @llvm.dbg.value(metadata !{i8** %c_string}, i64 0, metadata !236), !dbg !499
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !237), !dbg !500
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !238), !dbg !500
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #8, !dbg !501
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !240), !dbg !501
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !241), !dbg !502
  %0 = load i8** %c_string, align 8, !dbg !503, !tbaa !269
  %call1 = tail call i64 @strlen(i8* %0) #9, !dbg !503
  tail call void @llvm.dbg.value(metadata !{i64 %call1}, i64 0, metadata !239), !dbg !503
  %conv = trunc i64 %call1 to i32, !dbg !503
  store i32 %conv, i32* %nchars, align 4, !dbg !503, !tbaa !307
  %conv2 = zext i32 %cctk_strlen1 to i64, !dbg !504
  %cmp = icmp ugt i64 %call1, %conv2, !dbg !504
  br i1 %cmp, label %if.then, label %if.end, !dbg !504

if.then:                                          ; preds = %entry
  %call4 = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 1370, i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([102 x i8]* @.str20, i64 0, i64 0), i8* %0) #7, !dbg !505
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !239), !dbg !507
  %.pre = load i8** %c_string, align 8, !dbg !508, !tbaa !269
  br label %if.end, !dbg !509

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i8* [ %.pre, %if.then ], [ %0, %entry ]
  %c_strlen.0 = phi i64 [ %conv2, %if.then ], [ %call1, %entry ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %cctk_str1, i8* %1, i64 %c_strlen.0, i32 1, i1 false), !dbg !508
  %add.ptr = getelementptr inbounds i8* %cctk_str1, i64 %c_strlen.0, !dbg !510
  %sub = sub i64 %conv2, %c_strlen.0, !dbg !510
  tail call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 32, i64 %sub, i32 1, i1 false), !dbg !510
  tail call void @free(i8* %call) #7, !dbg !511
  ret void, !dbg !512
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !242, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !19, metadata !31, metadata !40, metadata !64, metadata !87, metadata !98, metadata !108, metadata !118, metadata !136, metadata !149, metadata !161, metadata !170, metadata !177, metadata !184, metadata !219, metadata !224, metadata !229}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_util_Misc_c", metadata !"CCTKi_version_util_Misc_c", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_util_Misc_c, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 40] [def] [CCTKi_version_util_Misc_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_Equals", metadata !"CCTK_Equals", metadata !"", i32 116, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @CCTK_Equals, null, null, metadata !15, i32 117} ; [ DW_TAG_subprogram ] [line 116] [def] [scope 117] [CCTK_Equals]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !8, metadata !8}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786689, metadata !11, metadata !"string1", metadata !5, i32 16777332, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string1] [line 116]
!17 = metadata !{i32 786689, metadata !11, metadata !"string2", metadata !5, i32 33554548, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string2] [line 116]
!18 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 118, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 118]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_equals_", metadata !"cctk_equals_", metadata !"", i32 153, metadata !20, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8*, i32)* @cctk_equals_, null, null, metadata !25, i32 155} ; [ DW_TAG_subprogram ] [line 153] [def] [scope 155] [cctk_equals_]
!20 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!21 = metadata !{metadata !14, metadata !22, metadata !23, metadata !24}
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!26 = metadata !{i32 786689, metadata !19, metadata !"arg1", metadata !5, i32 16777370, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg1] [line 154]
!27 = metadata !{i32 786689, metadata !19, metadata !"cctk_str1", metadata !5, i32 33554586, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 154]
!28 = metadata !{i32 786689, metadata !19, metadata !"cctk_strlen1", metadata !5, i32 50331802, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 154]
!29 = metadata !{i32 786688, metadata !19, metadata !"retval", metadata !5, i32 156, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 156]
!30 = metadata !{i32 786688, metadata !19, metadata !"arg2", metadata !5, i32 157, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg2] [line 157]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_NullTerminateString", metadata !"Util_NullTerminateString", metadata !"", i32 197, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32)* @Util_NullTerminateString, null, null, metadata !34, i32 198} ; [ DW_TAG_subprogram ] [line 197] [def] [scope 198] [Util_NullTerminateString]
!32 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!33 = metadata !{metadata !23, metadata !8, metadata !24}
!34 = metadata !{metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!35 = metadata !{i32 786689, metadata !31, metadata !"instring", metadata !5, i32 16777413, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [instring] [line 197]
!36 = metadata !{i32 786689, metadata !31, metadata !"len", metadata !5, i32 33554629, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 197]
!37 = metadata !{i32 786688, metadata !31, metadata !"outstring", metadata !5, i32 199, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outstring] [line 199]
!38 = metadata !{i32 786688, metadata !31, metadata !"i", metadata !5, i32 200, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 200]
!39 = metadata !{i32 786688, metadata !31, metadata !"position", metadata !5, i32 201, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [position] [line 201]
!40 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_InList", metadata !"Util_InList", metadata !"", i32 275, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, ...)* @Util_InList, null, null, metadata !43, i32 276} ; [ DW_TAG_subprogram ] [line 275] [def] [scope 276] [Util_InList]
!41 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!42 = metadata !{metadata !14, metadata !8, metadata !14}
!43 = metadata !{metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !63}
!44 = metadata !{i32 786689, metadata !40, metadata !"string1", metadata !5, i32 16777491, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string1] [line 275]
!45 = metadata !{i32 786689, metadata !40, metadata !"n_elements", metadata !5, i32 33554707, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_elements] [line 275]
!46 = metadata !{i32 786688, metadata !40, metadata !"retval", metadata !5, i32 277, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 277]
!47 = metadata !{i32 786688, metadata !40, metadata !"arg", metadata !5, i32 278, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 278]
!48 = metadata !{i32 786688, metadata !40, metadata !"ap", metadata !5, i32 279, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 279]
!49 = metadata !{i32 786454, metadata !1, null, metadata !"va_list", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [va_list] [line 79, size 0, align 0, offset 0] [from __gnuc_va_list]
!50 = metadata !{i32 786454, metadata !1, null, metadata !"__gnuc_va_list", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [__gnuc_va_list] [line 48, size 0, align 0, offset 0] [from __builtin_va_list]
!51 = metadata !{i32 786454, metadata !1, null, metadata !"__builtin_va_list", i32 279, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ] [__builtin_va_list] [line 279, size 0, align 0, offset 0] [from ]
!52 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !53, metadata !61, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __va_list_tag]
!53 = metadata !{i32 786454, metadata !1, null, metadata !"__va_list_tag", i32 279, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [__va_list_tag] [line 279, size 0, align 0, offset 0] [from __va_list_tag]
!54 = metadata !{i32 786451, metadata !1, null, metadata !"__va_list_tag", i32 279, i64 192, i64 64, i32 0, i32 0, null, metadata !55, i32 0, null, null} ; [ DW_TAG_structure_type ] [__va_list_tag] [line 279, size 192, align 64, offset 0] [from ]
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !60}
!56 = metadata !{i32 786445, metadata !1, metadata !54, metadata !"gp_offset", i32 279, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [gp_offset] [line 279, size 32, align 32, offset 0] [from unsigned int]
!57 = metadata !{i32 786445, metadata !1, metadata !54, metadata !"fp_offset", i32 279, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [fp_offset] [line 279, size 32, align 32, offset 32] [from unsigned int]
!58 = metadata !{i32 786445, metadata !1, metadata !54, metadata !"overflow_arg_area", i32 279, i64 64, i64 64, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [overflow_arg_area] [line 279, size 64, align 64, offset 64] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786445, metadata !1, metadata !54, metadata !"reg_save_area", i32 279, i64 64, i64 64, i64 128, i32 0, metadata !59} ; [ DW_TAG_member ] [reg_save_area] [line 279, size 64, align 64, offset 128] [from ]
!61 = metadata !{metadata !62}
!62 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!63 = metadata !{i32 786688, metadata !40, metadata !"element", metadata !5, i32 281, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [element] [line 281]
!64 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_IntInRange", metadata !"Util_IntInRange", metadata !"", i32 340, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i8*)* @Util_IntInRange, null, null, metadata !67, i32 341} ; [ DW_TAG_subprogram ] [line 340] [def] [scope 341] [Util_IntInRange]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !14, metadata !14, metadata !8}
!67 = metadata !{metadata !68, metadata !69, metadata !70, metadata !71, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!68 = metadata !{i32 786689, metadata !64, metadata !"inval", metadata !5, i32 16777556, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inval] [line 340]
!69 = metadata !{i32 786689, metadata !64, metadata !"range", metadata !5, i32 33554772, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [range] [line 340]
!70 = metadata !{i32 786688, metadata !64, metadata !"retval", metadata !5, i32 342, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 342]
!71 = metadata !{i32 786688, metadata !64, metadata !"pmatch", metadata !5, i32 343, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pmatch] [line 343]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 384, i64 32, i32 0, i32 0, metadata !73, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 384, align 32, offset 0] [from regmatch_t]
!73 = metadata !{i32 786454, metadata !1, null, metadata !"regmatch_t", i32 422, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [regmatch_t] [line 422, size 0, align 0, offset 0] [from ]
!74 = metadata !{i32 786451, metadata !75, null, metadata !"", i32 418, i64 64, i64 32, i32 0, i32 0, null, metadata !76, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 418, size 64, align 32, offset 0] [from ]
!75 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/regex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!76 = metadata !{metadata !77, metadata !79}
!77 = metadata !{i32 786445, metadata !75, metadata !74, metadata !"rm_so", i32 420, i64 32, i64 32, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ] [rm_so] [line 420, size 32, align 32, offset 0] [from regoff_t]
!78 = metadata !{i32 786454, metadata !75, null, metadata !"regoff_t", i32 394, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [regoff_t] [line 394, size 0, align 0, offset 0] [from int]
!79 = metadata !{i32 786445, metadata !75, metadata !74, metadata !"rm_eo", i32 421, i64 32, i64 32, i64 32, i32 0, metadata !78} ; [ DW_TAG_member ] [rm_eo] [line 421, size 32, align 32, offset 32] [from regoff_t]
!80 = metadata !{metadata !81}
!81 = metadata !{i32 786465, i64 0, i64 6}        ; [ DW_TAG_subrange_type ] [0, 5]
!82 = metadata !{i32 786688, metadata !64, metadata !"start_closed", metadata !5, i32 344, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start_closed] [line 344]
!83 = metadata !{i32 786688, metadata !64, metadata !"end_closed", metadata !5, i32 344, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end_closed] [line 344]
!84 = metadata !{i32 786688, metadata !64, metadata !"start", metadata !5, i32 345, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 345]
!85 = metadata !{i32 786688, metadata !64, metadata !"end", metadata !5, i32 345, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 345]
!86 = metadata !{i32 786688, metadata !64, metadata !"step", metadata !5, i32 345, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [step] [line 345]
!87 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_DoubleInRange", metadata !"Util_DoubleInRange", metadata !"", i32 484, metadata !88, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double, i8*)* @Util_DoubleInRange, null, null, metadata !91, i32 485} ; [ DW_TAG_subprogram ] [line 484] [def] [scope 485] [Util_DoubleInRange]
!88 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!89 = metadata !{metadata !14, metadata !90, metadata !8}
!90 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!91 = metadata !{metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!92 = metadata !{i32 786689, metadata !87, metadata !"inval", metadata !5, i32 16777700, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inval] [line 484]
!93 = metadata !{i32 786689, metadata !87, metadata !"range", metadata !5, i32 33554916, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [range] [line 484]
!94 = metadata !{i32 786688, metadata !87, metadata !"retval", metadata !5, i32 486, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 486]
!95 = metadata !{i32 786688, metadata !87, metadata !"pmatch", metadata !5, i32 487, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pmatch] [line 487]
!96 = metadata !{i32 786688, metadata !87, metadata !"start", metadata !5, i32 488, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 488]
!97 = metadata !{i32 786688, metadata !87, metadata !"end", metadata !5, i32 488, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 488]
!98 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_IntInRangeList", metadata !"Util_IntInRangeList", metadata !"", i32 643, metadata !99, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, ...)* @Util_IntInRangeList, null, null, metadata !101, i32 644} ; [ DW_TAG_subprogram ] [line 643] [def] [scope 644] [Util_IntInRangeList]
!99 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!100 = metadata !{metadata !14, metadata !14, metadata !14}
!101 = metadata !{metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107}
!102 = metadata !{i32 786689, metadata !98, metadata !"inval", metadata !5, i32 16777859, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inval] [line 643]
!103 = metadata !{i32 786689, metadata !98, metadata !"n_elements", metadata !5, i32 33555075, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_elements] [line 643]
!104 = metadata !{i32 786688, metadata !98, metadata !"retval", metadata !5, i32 645, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 645]
!105 = metadata !{i32 786688, metadata !98, metadata !"arg", metadata !5, i32 646, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 646]
!106 = metadata !{i32 786688, metadata !98, metadata !"ap", metadata !5, i32 647, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 647]
!107 = metadata !{i32 786688, metadata !98, metadata !"element", metadata !5, i32 649, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [element] [line 649]
!108 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Util_DoubleInRangeList", metadata !"Util_DoubleInRangeList", metadata !"", i32 715, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double, i32, ...)* @Util_DoubleInRangeList, null, null, metadata !111, i32 716} ; [ DW_TAG_subprogram ] [line 715] [def] [scope 716] [Util_DoubleInRangeList]
!109 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!110 = metadata !{metadata !14, metadata !90, metadata !14}
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!112 = metadata !{i32 786689, metadata !108, metadata !"inval", metadata !5, i32 16777931, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inval] [line 715]
!113 = metadata !{i32 786689, metadata !108, metadata !"n_elements", metadata !5, i32 33555147, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_elements] [line 715]
!114 = metadata !{i32 786688, metadata !108, metadata !"retval", metadata !5, i32 717, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 717]
!115 = metadata !{i32 786688, metadata !108, metadata !"arg", metadata !5, i32 718, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 718]
!116 = metadata !{i32 786688, metadata !108, metadata !"ap", metadata !5, i32 719, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 719]
!117 = metadata !{i32 786688, metadata !108, metadata !"element", metadata !5, i32 721, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [element] [line 721]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SetDoubleInRangeList", metadata !"CCTK_SetDoubleInRangeList", metadata !"", i32 795, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (double*, i8*, i32, ...)* @CCTK_SetDoubleInRangeList, null, null, metadata !122, i32 797} ; [ DW_TAG_subprogram ] [line 795] [def] [scope 797] [CCTK_SetDoubleInRangeList]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !14, metadata !121, metadata !8, metadata !14}
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!123 = metadata !{i32 786689, metadata !118, metadata !"data", metadata !5, i32 16778011, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 795]
!124 = metadata !{i32 786689, metadata !118, metadata !"value", metadata !5, i32 33555227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 795]
!125 = metadata !{i32 786689, metadata !118, metadata !"n_elements", metadata !5, i32 50332444, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_elements] [line 796]
!126 = metadata !{i32 786688, metadata !118, metadata !"retval", metadata !5, i32 798, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 798]
!127 = metadata !{i32 786688, metadata !118, metadata !"temp", metadata !5, i32 799, metadata !128, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 799]
!128 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8008, i64 8, i32 0, i32 0, metadata !10, metadata !129, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8008, align 8, offset 0] [from char]
!129 = metadata !{metadata !130}
!130 = metadata !{i32 786465, i64 0, i64 1001}    ; [ DW_TAG_subrange_type ] [0, 1000]
!131 = metadata !{i32 786688, metadata !118, metadata !"p", metadata !5, i32 800, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 800]
!132 = metadata !{i32 786688, metadata !118, metadata !"arg", metadata !5, i32 801, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 801]
!133 = metadata !{i32 786688, metadata !118, metadata !"ap", metadata !5, i32 802, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 802]
!134 = metadata !{i32 786688, metadata !118, metadata !"element", metadata !5, i32 804, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [element] [line 804]
!135 = metadata !{i32 786688, metadata !118, metadata !"inval", metadata !5, i32 806, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inval] [line 806]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SetIntInRangeList", metadata !"CCTK_SetIntInRangeList", metadata !"", i32 897, metadata !137, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8*, i32, ...)* @CCTK_SetIntInRangeList, null, null, metadata !140, i32 899} ; [ DW_TAG_subprogram ] [line 897] [def] [scope 899] [CCTK_SetIntInRangeList]
!137 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!138 = metadata !{metadata !14, metadata !139, metadata !8, metadata !14}
!139 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!140 = metadata !{metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!141 = metadata !{i32 786689, metadata !136, metadata !"data", metadata !5, i32 16778113, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 897]
!142 = metadata !{i32 786689, metadata !136, metadata !"value", metadata !5, i32 33555329, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 897]
!143 = metadata !{i32 786689, metadata !136, metadata !"n_elements", metadata !5, i32 50332546, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_elements] [line 898]
!144 = metadata !{i32 786688, metadata !136, metadata !"retval", metadata !5, i32 900, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 900]
!145 = metadata !{i32 786688, metadata !136, metadata !"arg", metadata !5, i32 901, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 901]
!146 = metadata !{i32 786688, metadata !136, metadata !"ap", metadata !5, i32 902, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 902]
!147 = metadata !{i32 786688, metadata !136, metadata !"element", metadata !5, i32 904, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [element] [line 904]
!148 = metadata !{i32 786688, metadata !136, metadata !"inval", metadata !5, i32 906, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inval] [line 906]
!149 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SetKeywordInRangeList", metadata !"CCTK_SetKeywordInRangeList", metadata !"", i32 983, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8*, i32, ...)* @CCTK_SetKeywordInRangeList, null, null, metadata !153, i32 985} ; [ DW_TAG_subprogram ] [line 983] [def] [scope 985] [CCTK_SetKeywordInRangeList]
!150 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!151 = metadata !{metadata !14, metadata !152, metadata !8, metadata !14}
!152 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!153 = metadata !{metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160}
!154 = metadata !{i32 786689, metadata !149, metadata !"data", metadata !5, i32 16778199, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 983]
!155 = metadata !{i32 786689, metadata !149, metadata !"value", metadata !5, i32 33555415, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 983]
!156 = metadata !{i32 786689, metadata !149, metadata !"n_elements", metadata !5, i32 50332632, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_elements] [line 984]
!157 = metadata !{i32 786688, metadata !149, metadata !"retval", metadata !5, i32 986, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 986]
!158 = metadata !{i32 786688, metadata !149, metadata !"arg", metadata !5, i32 987, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 987]
!159 = metadata !{i32 786688, metadata !149, metadata !"ap", metadata !5, i32 988, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 988]
!160 = metadata !{i32 786688, metadata !149, metadata !"element", metadata !5, i32 990, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [element] [line 990]
!161 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SetStringInRegexList", metadata !"CCTK_SetStringInRegexList", metadata !"", i32 1073, metadata !150, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8*, i32, ...)* @CCTK_SetStringInRegexList, null, null, metadata !162, i32 1075} ; [ DW_TAG_subprogram ] [line 1073] [def] [scope 1075] [CCTK_SetStringInRegexList]
!162 = metadata !{metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169}
!163 = metadata !{i32 786689, metadata !161, metadata !"data", metadata !5, i32 16778289, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 1073]
!164 = metadata !{i32 786689, metadata !161, metadata !"value", metadata !5, i32 33555505, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 1073]
!165 = metadata !{i32 786689, metadata !161, metadata !"n_elements", metadata !5, i32 50332722, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_elements] [line 1074]
!166 = metadata !{i32 786688, metadata !161, metadata !"retval", metadata !5, i32 1076, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1076]
!167 = metadata !{i32 786688, metadata !161, metadata !"arg", metadata !5, i32 1077, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arg] [line 1077]
!168 = metadata !{i32 786688, metadata !161, metadata !"ap", metadata !5, i32 1078, metadata !49, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ap] [line 1078]
!169 = metadata !{i32 786688, metadata !161, metadata !"element", metadata !5, i32 1080, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [element] [line 1080]
!170 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SetString", metadata !"CCTK_SetString", metadata !"", i32 1136, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8**, i8*)* @CCTK_SetString, null, null, metadata !173, i32 1137} ; [ DW_TAG_subprogram ] [line 1136] [def] [scope 1137] [CCTK_SetString]
!171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !14, metadata !152, metadata !8}
!173 = metadata !{metadata !174, metadata !175, metadata !176}
!174 = metadata !{i32 786689, metadata !170, metadata !"data", metadata !5, i32 16778352, metadata !152, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 1136]
!175 = metadata !{i32 786689, metadata !170, metadata !"value", metadata !5, i32 33555568, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 1136]
!176 = metadata !{i32 786688, metadata !170, metadata !"retval", metadata !5, i32 1138, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1138]
!177 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SetBoolean", metadata !"CCTK_SetBoolean", metadata !"", i32 1192, metadata !178, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8*)* @CCTK_SetBoolean, null, null, metadata !180, i32 1193} ; [ DW_TAG_subprogram ] [line 1192] [def] [scope 1193] [CCTK_SetBoolean]
!178 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!179 = metadata !{metadata !14, metadata !139, metadata !8}
!180 = metadata !{metadata !181, metadata !182, metadata !183}
!181 = metadata !{i32 786689, metadata !177, metadata !"data", metadata !5, i32 16778408, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 1192]
!182 = metadata !{i32 786689, metadata !177, metadata !"value", metadata !5, i32 33555624, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 1192]
!183 = metadata !{i32 786688, metadata !177, metadata !"retval", metadata !5, i32 1194, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1194]
!184 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RegexMatch", metadata !"CCTK_RegexMatch", metadata !"", i32 1266, metadata !185, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32, %struct.regmatch_t*)* @CCTK_RegexMatch, null, null, metadata !189, i32 1270} ; [ DW_TAG_subprogram ] [line 1266] [def] [scope 1270] [CCTK_RegexMatch]
!185 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!186 = metadata !{metadata !14, metadata !8, metadata !8, metadata !187, metadata !188}
!187 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!188 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from regmatch_t]
!189 = metadata !{metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196}
!190 = metadata !{i32 786689, metadata !184, metadata !"string", metadata !5, i32 16778482, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 1266]
!191 = metadata !{i32 786689, metadata !184, metadata !"pattern", metadata !5, i32 33555699, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pattern] [line 1267]
!192 = metadata !{i32 786689, metadata !184, metadata !"nmatch", metadata !5, i32 50332916, metadata !187, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nmatch] [line 1268]
!193 = metadata !{i32 786689, metadata !184, metadata !"pmatch", metadata !5, i32 67110133, metadata !188, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pmatch] [line 1269]
!194 = metadata !{i32 786688, metadata !184, metadata !"retval", metadata !5, i32 1271, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 1271]
!195 = metadata !{i32 786688, metadata !184, metadata !"status", metadata !5, i32 1272, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 1272]
!196 = metadata !{i32 786688, metadata !184, metadata !"re", metadata !5, i32 1273, metadata !197, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [re] [line 1273]
!197 = metadata !{i32 786454, metadata !1, null, metadata !"regex_t", i32 391, i64 0, i64 0, i64 0, i32 0, metadata !198} ; [ DW_TAG_typedef ] [regex_t] [line 391, size 0, align 0, offset 0] [from re_pattern_buffer]
!198 = metadata !{i32 786451, metadata !75, null, metadata !"re_pattern_buffer", i32 323, i64 512, i64 64, i32 0, i32 0, null, metadata !199, i32 0, null, null} ; [ DW_TAG_structure_type ] [re_pattern_buffer] [line 323, size 512, align 64, offset 0] [from ]
!199 = metadata !{metadata !200, metadata !203, metadata !205, metadata !206, metadata !208, metadata !209, metadata !210, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217, metadata !218}
!200 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"buffer", i32 329, i64 64, i64 64, i64 0, i32 0, metadata !201} ; [ DW_TAG_member ] [buffer] [line 329, size 64, align 64, offset 0] [from ]
!201 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from unsigned char]
!202 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!203 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"allocated", i32 332, i64 64, i64 64, i64 64, i32 0, metadata !204} ; [ DW_TAG_member ] [allocated] [line 332, size 64, align 64, offset 64] [from long unsigned int]
!204 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!205 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"used", i32 335, i64 64, i64 64, i64 128, i32 0, metadata !204} ; [ DW_TAG_member ] [used] [line 335, size 64, align 64, offset 128] [from long unsigned int]
!206 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"syntax", i32 338, i64 64, i64 64, i64 192, i32 0, metadata !207} ; [ DW_TAG_member ] [syntax] [line 338, size 64, align 64, offset 192] [from reg_syntax_t]
!207 = metadata !{i32 786454, metadata !75, null, metadata !"reg_syntax_t", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [reg_syntax_t] [line 52, size 0, align 0, offset 0] [from long unsigned int]
!208 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"fastmap", i32 343, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [fastmap] [line 343, size 64, align 64, offset 256] [from ]
!209 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"translate", i32 349, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [translate] [line 349, size 64, align 64, offset 320] [from ]
!210 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"re_nsub", i32 352, i64 64, i64 64, i64 384, i32 0, metadata !211} ; [ DW_TAG_member ] [re_nsub] [line 352, size 64, align 64, offset 384] [from size_t]
!211 = metadata !{i32 786454, metadata !75, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !204} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!212 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"can_be_null", i32 359, i64 1, i64 32, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [can_be_null] [line 359, size 1, align 32, offset 448] [from unsigned int]
!213 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"regs_allocated", i32 368, i64 2, i64 32, i64 449, i32 0, metadata !24} ; [ DW_TAG_member ] [regs_allocated] [line 368, size 2, align 32, offset 449] [from unsigned int]
!214 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"fastmap_accurate", i32 372, i64 1, i64 32, i64 451, i32 0, metadata !24} ; [ DW_TAG_member ] [fastmap_accurate] [line 372, size 1, align 32, offset 451] [from unsigned int]
!215 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"no_sub", i32 376, i64 1, i64 32, i64 452, i32 0, metadata !24} ; [ DW_TAG_member ] [no_sub] [line 376, size 1, align 32, offset 452] [from unsigned int]
!216 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"not_bol", i32 380, i64 1, i64 32, i64 453, i32 0, metadata !24} ; [ DW_TAG_member ] [not_bol] [line 380, size 1, align 32, offset 453] [from unsigned int]
!217 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"not_eol", i32 383, i64 1, i64 32, i64 454, i32 0, metadata !24} ; [ DW_TAG_member ] [not_eol] [line 383, size 1, align 32, offset 454] [from unsigned int]
!218 = metadata !{i32 786445, metadata !75, metadata !198, metadata !"newline_anchor", i32 386, i64 1, i64 32, i64 455, i32 0, metadata !24} ; [ DW_TAG_member ] [newline_anchor] [line 386, size 1, align 32, offset 455] [from unsigned int]
!219 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_PrintString", metadata !"CCTK_PrintString", metadata !"", i32 1317, metadata !220, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @CCTK_PrintString, null, null, metadata !222, i32 1318} ; [ DW_TAG_subprogram ] [line 1317] [def] [scope 1318] [CCTK_PrintString]
!220 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!221 = metadata !{null, metadata !8}
!222 = metadata !{metadata !223}
!223 = metadata !{i32 786689, metadata !219, metadata !"data", metadata !5, i32 16778533, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 1317]
!224 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_printstring_", metadata !"cctk_printstring_", metadata !"", i32 1322, metadata !225, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8**)* @cctk_printstring_, null, null, metadata !227, i32 1324} ; [ DW_TAG_subprogram ] [line 1322] [def] [scope 1324] [cctk_printstring_]
!225 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!226 = metadata !{null, metadata !22}
!227 = metadata !{metadata !228}
!228 = metadata !{i32 786689, metadata !224, metadata !"arg1", metadata !5, i32 16778539, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [arg1] [line 1323]
!229 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_fortranstring_", metadata !"cctk_fortranstring_", metadata !"", i32 1357, metadata !230, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, i8**, i8*, i32)* @cctk_fortranstring_, null, null, metadata !234, i32 1361} ; [ DW_TAG_subprogram ] [line 1357] [def] [scope 1361] [cctk_fortranstring_]
!230 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!231 = metadata !{null, metadata !139, metadata !232, metadata !23, metadata !24}
!232 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !233} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!233 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!234 = metadata !{metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241}
!235 = metadata !{i32 786689, metadata !229, metadata !"nchars", metadata !5, i32 16778574, metadata !139, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nchars] [line 1358]
!236 = metadata !{i32 786689, metadata !229, metadata !"c_string", metadata !5, i32 33555791, metadata !232, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c_string] [line 1359]
!237 = metadata !{i32 786689, metadata !229, metadata !"cctk_str1", metadata !5, i32 50333008, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 1360]
!238 = metadata !{i32 786689, metadata !229, metadata !"cctk_strlen1", metadata !5, i32 67110224, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 1360]
!239 = metadata !{i32 786688, metadata !229, metadata !"c_strlen", metadata !5, i32 1362, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c_strlen] [line 1362]
!240 = metadata !{i32 786688, metadata !229, metadata !"fstring", metadata !5, i32 1363, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fstring] [line 1363]
!241 = metadata !{i32 786688, metadata !229, metadata !"fortran_string", metadata !5, i32 1364, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fortran_string] [line 1364]
!242 = metadata !{metadata !243}
!243 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 38, metadata !8, i32 1, i32 1, null, null}
!244 = metadata !{i32 40, i32 0, metadata !4, null}
!245 = metadata !{i32 116, i32 0, metadata !11, null}
!246 = metadata !{i32 1}
!247 = metadata !{i32 120, i32 0, metadata !11, null}
!248 = metadata !{i32 123, i32 0, metadata !11, null}
!249 = metadata !{i32 125, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !11, i32 124, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!251 = metadata !{i32 126, i32 0, metadata !250, null}
!252 = metadata !{i32 128, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !250, i32 127, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!254 = metadata !{i32 131, i32 0, metadata !253, null}
!255 = metadata !{i32 132, i32 0, metadata !250, null}
!256 = metadata !{i32 134, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !250, i32 133, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!258 = metadata !{i32 136, i32 0, metadata !257, null}
!259 = metadata !{i32 139, i32 0, metadata !260, null}
!260 = metadata !{i32 786443, metadata !1, metadata !250, i32 138, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!261 = metadata !{i32 145, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !11, i32 144, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!263 = metadata !{i32 147, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !262, i32 146, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!265 = metadata !{i32 150, i32 0, metadata !11, null}
!266 = metadata !{i32 154, i32 0, metadata !19, null}
!267 = metadata !{i32 157, i32 0, metadata !19, null}
!268 = metadata !{i32 158, i32 0, metadata !19, null}
!269 = metadata !{metadata !"any pointer", metadata !270}
!270 = metadata !{metadata !"omnipotent char", metadata !271}
!271 = metadata !{metadata !"Simple C/C++ TBAA"}
!272 = metadata !{i32 159, i32 0, metadata !19, null}
!273 = metadata !{i32 160, i32 0, metadata !19, null}
!274 = metadata !{i32 197, i32 0, metadata !31, null}
!275 = metadata !{i32 203, i32 0, metadata !31, null}
!276 = metadata !{i32 205, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !31, i32 204, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!278 = metadata !{i32 209, i32 0, metadata !277, null}
!279 = metadata !{i32 225, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !281, i32 225, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!281 = metadata !{i32 786443, metadata !1, metadata !31, i32 224, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!282 = metadata !{i32 216, i32 0, metadata !31, null}
!283 = metadata !{i32 221, i32 0, metadata !31, null}
!284 = metadata !{i32 223, i32 0, metadata !31, null}
!285 = metadata !{i32 227, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !280, i32 226, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!287 = metadata !{i32 229, i32 0, metadata !281, null}
!288 = metadata !{i32 230, i32 0, metadata !281, null}
!289 = metadata !{i32 231, i32 0, metadata !31, null}
!290 = metadata !{i32 275, i32 0, metadata !40, null}
!291 = metadata !{i32 279, i32 0, metadata !40, null}
!292 = metadata !{i32 283, i32 0, metadata !40, null}
!293 = metadata !{i32 286, i32 0, metadata !40, null}
!294 = metadata !{i32 288, i32 0, metadata !295, null}
!295 = metadata !{i32 786443, metadata !1, metadata !40, i32 288, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!296 = metadata !{i32 290, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !295, i32 289, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!298 = metadata !{i32 292, i32 0, metadata !297, null}
!299 = metadata !{i32 299, i32 0, metadata !40, null}
!300 = metadata !{i32 301, i32 0, metadata !40, null}
!301 = metadata !{i32 340, i32 0, metadata !64, null}
!302 = metadata !{i32 343, i32 0, metadata !64, null}
!303 = metadata !{i32 347, i32 0, metadata !64, null}
!304 = metadata !{i32 363, i32 0, metadata !64, null}
!305 = metadata !{i32 368, i32 0, metadata !306, null}
!306 = metadata !{i32 786443, metadata !1, metadata !64, i32 366, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!307 = metadata !{metadata !"int", metadata !270}
!308 = metadata !{i32 370, i32 0, metadata !309, null}
!309 = metadata !{i32 786443, metadata !1, metadata !306, i32 369, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!310 = metadata !{i32 372, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !309, i32 371, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!312 = metadata !{i32 383, i32 0, metadata !306, null}
!313 = metadata !{i32 387, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !306, i32 386, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!315 = metadata !{i32 388, i32 0, metadata !314, null}
!316 = metadata !{i32 396, i32 0, metadata !306, null}
!317 = metadata !{i32 400, i32 0, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !306, i32 399, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!319 = metadata !{i32 401, i32 0, metadata !318, null}
!320 = metadata !{i32 409, i32 0, metadata !306, null}
!321 = metadata !{i32 411, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !306, i32 410, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!323 = metadata !{i32 412, i32 0, metadata !322, null}
!324 = metadata !{i32 420, i32 0, metadata !306, null}
!325 = metadata !{i32 422, i32 0, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !306, i32 421, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!327 = metadata !{i32 424, i32 0, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !326, i32 423, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!329 = metadata !{i32 434, i32 0, metadata !306, null}
!330 = metadata !{i32 438, i32 0, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !306, i32 437, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!332 = metadata !{i32 444, i32 0, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !64, i32 443, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!334 = metadata !{i32 448, i32 0, metadata !64, null}
!335 = metadata !{i32 1266, i32 0, metadata !184, null}
!336 = metadata !{i32 1267, i32 0, metadata !184, null}
!337 = metadata !{i32 1268, i32 0, metadata !184, null}
!338 = metadata !{i32 1269, i32 0, metadata !184, null}
!339 = metadata !{i32 1273, i32 0, metadata !184, null}
!340 = metadata !{i32 1275, i32 0, metadata !184, null}
!341 = metadata !{i32 1277, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !184, i32 1276, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!343 = metadata !{i32 1278, i32 0, metadata !342, null}
!344 = metadata !{i32 1279, i32 0, metadata !342, null}
!345 = metadata !{i32 1294, i32 0, metadata !184, null}
!346 = metadata !{i32 484, i32 0, metadata !87, null}
!347 = metadata !{i32 487, i32 0, metadata !87, null}
!348 = metadata !{i32 494, i32 0, metadata !87, null}
!349 = metadata !{i32 510, i32 0, metadata !87, null}
!350 = metadata !{i32 532, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !87, i32 513, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!352 = metadata !{i32 536, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !351, i32 535, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!354 = metadata !{i32 537, i32 0, metadata !353, null}
!355 = metadata !{i32 545, i32 0, metadata !351, null}
!356 = metadata !{i32 549, i32 0, metadata !357, null}
!357 = metadata !{i32 786443, metadata !1, metadata !351, i32 548, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!358 = metadata !{i32 550, i32 0, metadata !357, null}
!359 = metadata !{i32 585, i32 0, metadata !351, null}
!360 = metadata !{i32 589, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !351, i32 588, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!362 = metadata !{i32 595, i32 0, metadata !363, null}
!363 = metadata !{i32 786443, metadata !1, metadata !87, i32 594, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!364 = metadata !{i32 599, i32 0, metadata !87, null}
!365 = metadata !{i32 643, i32 0, metadata !98, null}
!366 = metadata !{i32 647, i32 0, metadata !98, null}
!367 = metadata !{i32 651, i32 0, metadata !98, null}
!368 = metadata !{i32 654, i32 0, metadata !98, null}
!369 = metadata !{i32 656, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !98, i32 656, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!371 = metadata !{i32 658, i32 0, metadata !372, null}
!372 = metadata !{i32 786443, metadata !1, metadata !370, i32 657, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!373 = metadata !{i32 660, i32 0, metadata !372, null}
!374 = metadata !{i32 667, i32 0, metadata !98, null}
!375 = metadata !{i32 669, i32 0, metadata !98, null}
!376 = metadata !{i32 715, i32 0, metadata !108, null}
!377 = metadata !{i32 719, i32 0, metadata !108, null}
!378 = metadata !{i32 723, i32 0, metadata !108, null}
!379 = metadata !{i32 726, i32 0, metadata !108, null}
!380 = metadata !{i32 728, i32 0, metadata !381, null}
!381 = metadata !{i32 786443, metadata !1, metadata !108, i32 728, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!382 = metadata !{i32 730, i32 0, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !381, i32 729, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!384 = metadata !{i32 732, i32 0, metadata !383, null}
!385 = metadata !{i32 739, i32 0, metadata !108, null}
!386 = metadata !{i32 741, i32 0, metadata !108, null}
!387 = metadata !{i32 795, i32 0, metadata !118, null}
!388 = metadata !{i32 796, i32 0, metadata !118, null}
!389 = metadata !{i32 799, i32 0, metadata !118, null}
!390 = metadata !{i32 802, i32 0, metadata !118, null}
!391 = metadata !{i32 808, i32 0, metadata !118, null}
!392 = metadata !{i32 813, i32 0, metadata !118, null}
!393 = metadata !{i32 815, i32 0, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !118, i32 815, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!395 = metadata !{i32 817, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !394, i32 816, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!397 = metadata !{i32 821, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !396, i32 820, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!399 = metadata !{i32 822, i32 0, metadata !398, null}
!400 = metadata !{i32 826, i32 0, metadata !118, null}
!401 = metadata !{i32 829, i32 0, metadata !118, null}
!402 = metadata !{i32 831, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !118, i32 831, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!404 = metadata !{i32 833, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !403, i32 832, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!406 = metadata !{i32 835, i32 0, metadata !405, null}
!407 = metadata !{i32 837, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !405, i32 836, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!409 = metadata !{i32 838, i32 0, metadata !408, null}
!410 = metadata !{metadata !"double", metadata !270}
!411 = metadata !{i32 839, i32 0, metadata !408, null}
!412 = metadata !{i32 843, i32 0, metadata !118, null}
!413 = metadata !{i32 846, i32 0, metadata !118, null}
!414 = metadata !{i32 897, i32 0, metadata !136, null}
!415 = metadata !{i32 898, i32 0, metadata !136, null}
!416 = metadata !{i32 902, i32 0, metadata !136, null}
!417 = metadata !{i32 908, i32 0, metadata !136, null}
!418 = metadata !{i32 912, i32 0, metadata !136, null}
!419 = metadata !{i32 915, i32 0, metadata !136, null}
!420 = metadata !{i32 917, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !136, i32 917, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!422 = metadata !{i32 919, i32 0, metadata !423, null}
!423 = metadata !{i32 786443, metadata !1, metadata !421, i32 918, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!424 = metadata !{i32 921, i32 0, metadata !423, null}
!425 = metadata !{i32 923, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !423, i32 922, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!427 = metadata !{i32 924, i32 0, metadata !426, null}
!428 = metadata !{i32 925, i32 0, metadata !426, null}
!429 = metadata !{i32 929, i32 0, metadata !136, null}
!430 = metadata !{i32 931, i32 0, metadata !136, null}
!431 = metadata !{i32 983, i32 0, metadata !149, null}
!432 = metadata !{i32 984, i32 0, metadata !149, null}
!433 = metadata !{i32 988, i32 0, metadata !149, null}
!434 = metadata !{i32 992, i32 0, metadata !149, null}
!435 = metadata !{i32 995, i32 0, metadata !149, null}
!436 = metadata !{i32 997, i32 0, metadata !437, null}
!437 = metadata !{i32 786443, metadata !1, metadata !149, i32 997, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!438 = metadata !{i32 999, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !437, i32 998, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!440 = metadata !{i32 1001, i32 0, metadata !439, null}
!441 = metadata !{i32 1003, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !439, i32 1002, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!443 = metadata !{i32 1004, i32 0, metadata !442, null}
!444 = metadata !{i32 1005, i32 0, metadata !442, null}
!445 = metadata !{i32 1007, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !442, i32 1006, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!447 = metadata !{i32 1008, i32 0, metadata !446, null}
!448 = metadata !{i32 1009, i32 0, metadata !446, null}
!449 = metadata !{i32 1018, i32 0, metadata !149, null}
!450 = metadata !{i32 1020, i32 0, metadata !149, null}
!451 = metadata !{i32 1073, i32 0, metadata !161, null}
!452 = metadata !{i32 1074, i32 0, metadata !161, null}
!453 = metadata !{i32 1078, i32 0, metadata !161, null}
!454 = metadata !{i32 1082, i32 0, metadata !161, null}
!455 = metadata !{i32 1085, i32 0, metadata !161, null}
!456 = metadata !{i32 1087, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !161, i32 1087, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!458 = metadata !{i32 1089, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !457, i32 1088, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!460 = metadata !{i32 1091, i32 0, metadata !459, null}
!461 = metadata !{i32 1093, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !459, i32 1092, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!463 = metadata !{i32 1094, i32 0, metadata !462, null}
!464 = metadata !{i32 1098, i32 0, metadata !161, null}
!465 = metadata !{i32 1100, i32 0, metadata !161, null}
!466 = metadata !{i32 1136, i32 0, metadata !170, null}
!467 = metadata !{i32 1140, i32 0, metadata !170, null}
!468 = metadata !{i32 1142, i32 0, metadata !170, null}
!469 = metadata !{i32 1143, i32 0, metadata !170, null}
!470 = metadata !{i32 1144, i32 0, metadata !170, null}
!471 = metadata !{i32 1146, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !170, i32 1145, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!473 = metadata !{i32 1147, i32 0, metadata !472, null}
!474 = metadata !{i32 1148, i32 0, metadata !472, null}
!475 = metadata !{i32 1154, i32 0, metadata !170, null}
!476 = metadata !{i32 1192, i32 0, metadata !177, null}
!477 = metadata !{i32 1194, i32 0, metadata !177, null}
!478 = metadata !{i32 1196, i32 0, metadata !177, null}
!479 = metadata !{i32 1198, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !177, i32 1197, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!481 = metadata !{i32 1199, i32 0, metadata !480, null}
!482 = metadata !{i32 1200, i32 0, metadata !480, null}
!483 = metadata !{i32 1201, i32 0, metadata !177, null}
!484 = metadata !{i32 1203, i32 0, metadata !485, null}
!485 = metadata !{i32 786443, metadata !1, metadata !177, i32 1202, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!486 = metadata !{i32 1204, i32 0, metadata !485, null}
!487 = metadata !{i32 1205, i32 0, metadata !485, null}
!488 = metadata !{i32 1211, i32 0, metadata !177, null}
!489 = metadata !{i32 1317, i32 0, metadata !219, null}
!490 = metadata !{i32 1319, i32 0, metadata !219, null}
!491 = metadata !{i32 1320, i32 0, metadata !219, null}
!492 = metadata !{i32 1323, i32 0, metadata !224, null}
!493 = metadata !{i32 1325, i32 0, metadata !224, null}
!494 = metadata !{i32 786689, metadata !219, metadata !"data", metadata !5, i32 16778533, metadata !8, i32 0, metadata !493} ; [ DW_TAG_arg_variable ] [data] [line 1317]
!495 = metadata !{i32 1317, i32 0, metadata !219, metadata !493}
!496 = metadata !{i32 1319, i32 0, metadata !219, metadata !493}
!497 = metadata !{i32 1326, i32 0, metadata !224, null}
!498 = metadata !{i32 1358, i32 0, metadata !229, null}
!499 = metadata !{i32 1359, i32 0, metadata !229, null}
!500 = metadata !{i32 1360, i32 0, metadata !229, null}
!501 = metadata !{i32 1363, i32 0, metadata !229, null}
!502 = metadata !{i32 1364, i32 0, metadata !229, null}
!503 = metadata !{i32 1367, i32 0, metadata !229, null}
!504 = metadata !{i32 1368, i32 0, metadata !229, null}
!505 = metadata !{i32 1370, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !229, i32 1369, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/Misc.c]
!507 = metadata !{i32 1373, i32 0, metadata !506, null}
!508 = metadata !{i32 1378, i32 0, metadata !229, null}
!509 = metadata !{i32 1374, i32 0, metadata !506, null}
!510 = metadata !{i32 1379, i32 0, metadata !229, null}
!511 = metadata !{i32 1381, i32 0, metadata !229, null}
!512 = metadata !{i32 1382, i32 0, metadata !229, null}

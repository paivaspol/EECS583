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
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_storageMode(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([52 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %1 = load i32* %storageMode, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_inputMode(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_maxnent(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3
  %1 = load i32* %maxnent, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_nent(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %1 = load i32* %nent, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_maxnvector(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9
  %1 = load i32* %maxnvector, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_nvector(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  %1 = load i32* %nvector, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define double @InpMtx_resizeMultiple(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %resizeMultiple = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5
  %1 = load double* %resizeMultiple, align 8, !tbaa !4
  ret double %1
}

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call1 = tail call i32* @IV_entries(%struct._IV* %ivec1IV) #4
  ret i32* %call1
}

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str9, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call1 = tail call i32* @IV_entries(%struct._IV* %ivec2IV) #4
  ret i32* %call1
}

; Function Attrs: nounwind optsize uwtable
define double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str10, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call1 = tail call double* @DV_entries(%struct._DV* %dvecDV) #4
  ret double* %call1
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_sizes(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([46 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  %call1 = tail call i32* @IV_entries(%struct._IV* %sizesIV) #4
  ret i32* %call1
}

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_vecids(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([47 x i8]* @.str12, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  %call1 = tail call i32* @IV_entries(%struct._IV* %vecidsIV) #4
  ret i32* %call1
}

; Function Attrs: nounwind optsize uwtable
define i32* @InpMtx_offsets(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str13, i64 0, i64 0), %struct._InpMtx* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  %call1 = tail call i32* @IV_entries(%struct._IV* %offsetsIV) #4
  ret i32* %call1
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_vector(%struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* null, i32 %id, i32* %pnent, i32** %pindices) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %1 = load i32* %storageMode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([56 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32* %pnent, null
  %cmp6 = icmp eq i32** %pindices, null
  %or.cond = or i1 %cmp5, %cmp6
  br i1 %or.cond, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([83 x i8]* @.str15, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, i32* %pnent, i32** %pindices) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end4
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  %call10 = tail call i32 @IV_findValueAscending(%struct._IV* %vecidsIV, i32 %id) #4
  %cmp11 = icmp eq i32 %call10, -1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  store i32 0, i32* %pnent, align 4, !tbaa !3
  br label %if.end17

if.else:                                          ; preds = %if.end9
  %idxprom = sext i32 %call10 to i64
  %vec = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  store i32 %5, i32* %pnent, align 4, !tbaa !3
  %vec14 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, i32 3
  %6 = load i32** %vec14, align 8, !tbaa !0
  %arrayidx15 = getelementptr inbounds i32* %6, i64 %idxprom
  %7 = load i32* %arrayidx15, align 4, !tbaa !3
  %vec16 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, i32 3
  %8 = load i32** %vec16, align 8, !tbaa !0
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  %storemerge = phi i32* [ %add.ptr, %if.else ], [ null, %if.then12 ]
  store i32* %storemerge, i32** %pindices, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare i32 @IV_findValueAscending(%struct._IV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_realVector(%struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str16, i64 0, i64 0), %struct._InpMtx* null, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %1 = load i32* %storageMode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([91 x i8]* @.str17, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32* %pnent, null
  %cmp6 = icmp eq i32** %pindices, null
  %or.cond = or i1 %cmp5, %cmp6
  %cmp8 = icmp eq double** %pentries, null
  %or.cond56 = or i1 %or.cond, %cmp8
  br i1 %or.cond56, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([105 x i8]* @.str18, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries, i32* %pnent, i32** %pindices, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end4
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  %call12 = tail call i32 @IV_findValueAscending(%struct._IV* %vecidsIV, i32 %id) #4
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  store i32 0, i32* %pnent, align 4, !tbaa !3
  store i32* null, i32** %pindices, align 8, !tbaa !0
  br label %if.end22

if.else:                                          ; preds = %if.end11
  %idxprom = sext i32 %call12 to i64
  %vec = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  store i32 %5, i32* %pnent, align 4, !tbaa !3
  %vec16 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, i32 3
  %6 = load i32** %vec16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %6, i64 %idxprom
  %7 = load i32* %arrayidx17, align 4, !tbaa !3
  %vec18 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, i32 3
  %8 = load i32** %vec18, align 8, !tbaa !0
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %pindices, align 8, !tbaa !0
  %vec19 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, i32 3
  %9 = load double** %vec19, align 8, !tbaa !0
  %add.ptr21 = getelementptr inbounds double* %9, i64 %idx.ext
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14
  %storemerge = phi double* [ %add.ptr21, %if.else ], [ null, %if.then14 ]
  store double* %storemerge, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_complexVector(%struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([66 x i8]* @.str19, i64 0, i64 0), %struct._InpMtx* null, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %1 = load i32* %storageMode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([95 x i8]* @.str20, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32* %pnent, null
  %cmp6 = icmp eq i32** %pindices, null
  %or.cond = or i1 %cmp5, %cmp6
  %cmp8 = icmp eq double** %pentries, null
  %or.cond56 = or i1 %or.cond, %cmp8
  br i1 %or.cond56, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([108 x i8]* @.str21, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %id, i32* %pnent, i32** %pindices, double** %pentries, i32* %pnent, i32** %pindices, double** %pentries) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end11:                                         ; preds = %if.end4
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  %call12 = tail call i32 @IV_findValueAscending(%struct._IV* %vecidsIV, i32 %id) #4
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end11
  store i32 0, i32* %pnent, align 4, !tbaa !3
  store i32* null, i32** %pindices, align 8, !tbaa !0
  br label %if.end22

if.else:                                          ; preds = %if.end11
  %idxprom = sext i32 %call12 to i64
  %vec = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, i32 3
  %4 = load i32** %vec, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  store i32 %5, i32* %pnent, align 4, !tbaa !3
  %vec16 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, i32 3
  %6 = load i32** %vec16, align 8, !tbaa !0
  %arrayidx17 = getelementptr inbounds i32* %6, i64 %idxprom
  %7 = load i32* %arrayidx17, align 4, !tbaa !3
  %vec18 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, i32 3
  %8 = load i32** %vec18, align 8, !tbaa !0
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i32* %8, i64 %idx.ext
  store i32* %add.ptr, i32** %pindices, align 8, !tbaa !0
  %vec19 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, i32 3
  %9 = load double** %vec19, align 8, !tbaa !0
  %mul = shl nsw i32 %7, 1
  %idx.ext20 = sext i32 %mul to i64
  %add.ptr21 = getelementptr inbounds double* %9, i64 %idx.ext20
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then14
  %storemerge = phi double* [ %add.ptr21, %if.else ], [ null, %if.then14 ]
  store double* %storemerge, double** %pentries, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %newmaxnent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %newmaxnent, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str22, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newmaxnent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3
  %1 = load i32* %maxnent, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, %newmaxnent
  br i1 %cmp2, label %if.end12, label %if.then3

if.then3:                                         ; preds = %if.end
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  tail call void @IV_setMaxsize(%struct._IV* %ivec1IV, i32 %newmaxnent) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  tail call void @IV_setMaxsize(%struct._IV* %ivec2IV, i32 %newmaxnent) #4
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %2 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %2, label %if.end12 [
    i32 1, label %if.then5
    i32 2, label %if.then8
  ]

if.then5:                                         ; preds = %if.then3
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  tail call void @DV_setMaxsize(%struct._DV* %dvecDV, i32 %newmaxnent) #4
  br label %if.end12

if.then8:                                         ; preds = %if.then3
  %dvecDV9 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %mul = shl nsw i32 %newmaxnent, 1
  tail call void @DV_setMaxsize(%struct._DV* %dvecDV9, i32 %mul) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then3, %if.end, %if.then5, %if.then8
  store i32 %newmaxnent, i32* %maxnent, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare void @IV_setMaxsize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @DV_setMaxsize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setNent(%struct._InpMtx* %inpmtx, i32 %newnent) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %newnent, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str23, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newnent) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3
  %1 = load i32* %maxnent, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, %newnent
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @InpMtx_setMaxnent(%struct._InpMtx* %inpmtx, i32 %newnent) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  store i32 %newnent, i32* %nent, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %newnent) #4
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %newnent) #4
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %2 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %2, label %if.end12 [
    i32 1, label %if.then6
    i32 2, label %if.then9
  ]

if.then6:                                         ; preds = %if.end4
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %newnent) #4
  br label %if.end12

if.then9:                                         ; preds = %if.end4
  %dvecDV10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %mul = shl nsw i32 %newnent, 1
  tail call void @DV_setSize(%struct._DV* %dvecDV10, i32 %mul) #4
  br label %if.end12

if.end12:                                         ; preds = %if.end4, %if.then9, %if.then6
  ret void
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setMaxnvector(%struct._InpMtx* %inpmtx, i32 %newmaxnvector) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %newmaxnvector, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str24, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newmaxnvector) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9
  %1 = load i32* %maxnvector, align 4, !tbaa !3
  %cmp2 = icmp eq i32 %1, %newmaxnvector
  br i1 %cmp2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  tail call void @IV_setMaxsize(%struct._IV* %vecidsIV, i32 %newmaxnvector) #4
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  tail call void @IV_setMaxsize(%struct._IV* %sizesIV, i32 %newmaxnvector) #4
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  tail call void @IV_setMaxsize(%struct._IV* %offsetsIV, i32 %newmaxnvector) #4
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  store i32 %newmaxnvector, i32* %maxnvector, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setNvector(%struct._InpMtx* %inpmtx, i32 %newnvector) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %newnvector, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str25, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %newnvector) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9
  %1 = load i32* %maxnvector, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %1, %newnvector
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @InpMtx_setMaxnvector(%struct._InpMtx* %inpmtx, i32 %newnvector) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  store i32 %newnvector, i32* %nvector, align 4, !tbaa !3
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  tail call void @IV_setSize(%struct._IV* %vecidsIV, i32 %newnvector) #4
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  tail call void @IV_setSize(%struct._IV* %sizesIV, i32 %newnvector) #4
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  tail call void @IV_setSize(%struct._IV* %offsetsIV, i32 %newnvector) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setResizeMultiple(%struct._InpMtx* %inpmtx, double %resizeMultiple) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = fcmp olt double %resizeMultiple, 0.000000e+00
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str26, i64 0, i64 0), %struct._InpMtx* %inpmtx, double %resizeMultiple) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %resizeMultiple2 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5
  store double %resizeMultiple, double* %resizeMultiple2, align 8, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_setCoordType(%struct._InpMtx* %inpmtx, i32 %type) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp slt i32 %type, 4
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str27, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %type) #4
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([68 x i8]* @.str28, i64 0, i64 0), i32 %type) #4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  tail call void @exit(i32 -1) #5
  unreachable

if.end5:                                          ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  store i32 %type, i32* %coordType, align 4, !tbaa !3
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

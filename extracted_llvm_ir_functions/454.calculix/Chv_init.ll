; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [75 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A bad input, nD = %d, nL = %d, nU = %d\0A\00", align 1
@.str1 = private unnamed_addr constant [131 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A type = SPOOLES_REAL, invalid symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str2 = private unnamed_addr constant [154 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A type = SPOOLES_COMPLEX, invalid symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [97 x i8] c"\0A fatal error in Chv_nbytesNeeded()\0A invalid type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str4 = private unnamed_addr constant [55 x i8] c"\0A fatal error in Chv_nbytesInWorkspace(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [61 x i8] c"\0A fatal error in Chv_setNbytesInWorkspace(%p,%d)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [74 x i8] c"\0A fatal error in Chv_setFields()\0A bad input, chv %p, nD %d, nL %d, nU %d\0A\00", align 1
@.str7 = private unnamed_addr constant [120 x i8] c"\0A fatal error in Chv_setFields()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str8 = private unnamed_addr constant [143 x i8] c"\0A fatal error in Chv_setFields()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str9 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Chv_setFields()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str10 = private unnamed_addr constant [69 x i8] c"\0A fatal error in Chv_init()\0A bad input, chv %p, nD %d, nL %d, nU %d\0A\00", align 1
@.str11 = private unnamed_addr constant [115 x i8] c"\0A fatal error in Chv_init()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str12 = private unnamed_addr constant [138 x i8] c"\0A fatal error in Chv_init()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str13 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Chv_init()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str14 = private unnamed_addr constant [79 x i8] c"\0A fatal error in Chv_initWithPointers() \0A chv = %p, nD = %d, nL = %d, nU = %d\0A\00", align 1
@.str15 = private unnamed_addr constant [83 x i8] c"\0A fatal error in Chv_init()\0A entries = %p, colind = %p, rowind = %p, symflag = %d\0A\00", align 1
@.str16 = private unnamed_addr constant [127 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = SPOOLES_REAL, symflag = %d\0A must be SPOOLES_SYMMETRIC or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str17 = private unnamed_addr constant [150 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = SPOOLES_COMPLEX, symflag = %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN\0A or SPOOLES_NONSYMMETRIC\0A\00", align 1
@.str18 = private unnamed_addr constant [93 x i8] c"\0A fatal error in Chv_initFromPointers()\0A type = %d\0A must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str19 = private unnamed_addr constant [53 x i8] c"\0A fatal error in Chv_initFromBuffer(%p) \0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_nbytesNeeded(i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
entry:
  %0 = or i32 %nL, %nD
  %1 = or i32 %0, %nU
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([75 x i8]* @.str, i64 0, i64 0), i32 %nD, i32 %nL, i32 %nU) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  switch i32 %type, label %sw.default50 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.bb4
    i32 2, label %sw.bb9
  ]

sw.bb4:                                           ; preds = %sw.bb
  %add = add nsw i32 %nD, 6
  %add6 = add nsw i32 %nD, 1
  %mul = mul nsw i32 %add6, %nD
  %div = sdiv i32 %mul, 2
  %mul7 = mul nsw i32 %nU, %nD
  %add8 = add nsw i32 %div, %mul7
  br label %sw.epilog

sw.bb9:                                           ; preds = %sw.bb
  %mul10 = shl i32 %nD, 1
  %add11 = add nsw i32 %mul10, 6
  %add12 = add nsw i32 %add11, %nL
  %add14 = add nsw i32 %nL, %nD
  %add15 = add nsw i32 %add14, %nU
  %mul16 = mul nsw i32 %add15, %nD
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([131 x i8]* @.str1, i64 0, i64 0), i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb4
  %nent.0 = phi i32 [ %mul16, %sw.bb9 ], [ %add8, %sw.bb4 ]
  %add12.pn = phi i32 [ %add12, %sw.bb9 ], [ %add, %sw.bb4 ]
  %nint.0 = add i32 %nU, 1
  %add18 = add i32 %nint.0, %add12.pn
  %div19 = sdiv i32 %add18, 2
  %add20 = add nsw i32 %div19, %nent.0
  %mul21 = shl i32 %add20, 3
  br label %sw.epilog52

sw.bb23:                                          ; preds = %if.end
  switch i32 %symflag, label %sw.default40 [
    i32 0, label %sw.bb24
    i32 1, label %sw.bb24
    i32 2, label %sw.bb32
  ]

sw.bb24:                                          ; preds = %sw.bb23, %sw.bb23
  %add25 = add nsw i32 %nD, 6
  %add27 = add nsw i32 %nD, 1
  %mul28 = mul nsw i32 %add27, %nD
  %div29 = sdiv i32 %mul28, 2
  %mul30 = mul nsw i32 %nU, %nD
  %add31 = add nsw i32 %div29, %mul30
  br label %sw.epilog42

sw.bb32:                                          ; preds = %sw.bb23
  %mul33 = shl i32 %nD, 1
  %add34 = add nsw i32 %mul33, 6
  %add35 = add nsw i32 %add34, %nL
  %add37 = add nsw i32 %nL, %nD
  %add38 = add nsw i32 %add37, %nU
  %mul39 = mul nsw i32 %add38, %nD
  br label %sw.epilog42

sw.default40:                                     ; preds = %sw.bb23
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call41 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([154 x i8]* @.str2, i64 0, i64 0), i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog42:                                      ; preds = %sw.bb32, %sw.bb24
  %nent.1 = phi i32 [ %mul39, %sw.bb32 ], [ %add31, %sw.bb24 ]
  %add35.pn = phi i32 [ %add35, %sw.bb32 ], [ %add25, %sw.bb24 ]
  %nint.1 = add i32 %nU, 1
  %add43 = add i32 %nint.1, %add35.pn
  %div44 = sdiv i32 %add43, 2
  %mul45 = shl i32 %nent.1, 1
  %add46 = add nsw i32 %div44, %mul45
  %mul48 = shl i32 %add46, 3
  br label %sw.epilog52

sw.default50:                                     ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([97 x i8]* @.str3, i64 0, i64 0), i32 %type) #4
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.default50, %sw.epilog42, %sw.epilog
  %nbytes.0 = phi i32 [ 0, %sw.default50 ], [ %mul48, %sw.epilog42 ], [ %mul21, %sw.epilog ]
  ret i32 %nbytes.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_nbytesInWorkspace(%struct._Chv* %chv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str4, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9
  %call1 = tail call i32 @DV_maxsize(%struct._DV* %wrkDV) #4
  %mul = shl i32 %call1, 3
  ret i32 %mul
}

; Function Attrs: optsize
declare i32 @DV_maxsize(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_setNbytesInWorkspace(%struct._Chv* %chv, i32 %nbytes) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str5, i64 0, i64 0), %struct._Chv* null, i32 %nbytes) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9
  %conv = sext i32 %nbytes to i64
  %div = lshr i64 %conv, 3
  %conv1 = trunc i64 %div to i32
  tail call void @DV_setSize(%struct._DV* %wrkDV, i32 %conv1) #4
  ret void
}

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_setFields(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %nD, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %nL, 0
  %or.cond84 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %nU, 0
  %or.cond85 = or i1 %or.cond84, %cmp5
  br i1 %or.cond85, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([74 x i8]* @.str6, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  switch i32 %type, label %sw.default13 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.epilog15
    i32 2, label %sw.epilog15
  ]

sw.default:                                       ; preds = %sw.bb
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([120 x i8]* @.str7, i64 0, i64 0), i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.bb8:                                           ; preds = %if.end
  %switch = icmp ult i32 %symflag, 3
  br i1 %switch, label %sw.epilog15, label %sw.default10

sw.default10:                                     ; preds = %sw.bb8
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([143 x i8]* @.str8, i64 0, i64 0), i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.default13:                                     ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([86 x i8]* @.str9, i64 0, i64 0), i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog15:                                      ; preds = %sw.bb8, %sw.bb, %sw.bb
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9
  %call16 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %4 = bitcast double* %call16 to i32*
  store i32 %id, i32* %4, align 4, !tbaa !3
  %id17 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0
  store i32 %id, i32* %id17, align 4, !tbaa !3
  %arrayidx18 = getelementptr inbounds i32* %4, i64 1
  store i32 %nD, i32* %arrayidx18, align 4, !tbaa !3
  %nD19 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  store i32 %nD, i32* %nD19, align 4, !tbaa !3
  %arrayidx2081 = getelementptr inbounds double* %call16, i64 1
  %arrayidx20 = bitcast double* %arrayidx2081 to i32*
  store i32 %nL, i32* %arrayidx20, align 4, !tbaa !3
  %nL21 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  store i32 %nL, i32* %nL21, align 4, !tbaa !3
  %arrayidx22 = getelementptr inbounds i32* %4, i64 3
  store i32 %nU, i32* %arrayidx22, align 4, !tbaa !3
  %nU23 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  store i32 %nU, i32* %nU23, align 4, !tbaa !3
  %arrayidx2482 = getelementptr inbounds double* %call16, i64 2
  %arrayidx24 = bitcast double* %arrayidx2482 to i32*
  store i32 %type, i32* %arrayidx24, align 4, !tbaa !3
  %type25 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  store i32 %type, i32* %type25, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32* %4, i64 5
  store i32 %symflag, i32* %arrayidx26, align 4, !tbaa !3
  %symflag27 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  store i32 %symflag, i32* %symflag27, align 4, !tbaa !3
  %add.ptr83 = getelementptr inbounds double* %call16, i64 3
  %add.ptr = bitcast double* %add.ptr83 to i32*
  %colind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  store i32* %add.ptr, i32** %colind, align 8, !tbaa !0
  %add = add nsw i32 %nD, 6
  %add28 = add nsw i32 %add, %nU
  %cmp29 = icmp eq i32 %symflag, 2
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.epilog15
  %idx.ext = sext i32 %nD to i64
  %idx.ext33 = sext i32 %nU to i64
  %add.ptr32.sum = add i64 %idx.ext33, %idx.ext
  %add.ptr34 = getelementptr inbounds i32* %add.ptr, i64 %add.ptr32.sum
  %rowind = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6
  store i32* %add.ptr34, i32** %rowind, align 8, !tbaa !0
  %add35 = add nsw i32 %nL, %nD
  %add36 = add nsw i32 %add35, %add28
  br label %if.end38

if.else:                                          ; preds = %sw.epilog15
  %rowind37 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6
  store i32* null, i32** %rowind37, align 8, !tbaa !0
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.then30
  %nint.0 = phi i32 [ %add36, %if.then30 ], [ %add28, %if.else ]
  %add39 = add nsw i32 %nint.0, 1
  %div = sdiv i32 %add39, 2
  %idx.ext40 = sext i32 %div to i64
  %add.ptr41 = getelementptr inbounds double* %call16, i64 %idx.ext40
  %entries = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  store double* %add.ptr41, double** %entries, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_init(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %nD, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %nL, 0
  %or.cond37 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %nU, 0
  %or.cond38 = or i1 %or.cond37, %cmp5
  br i1 %or.cond38, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([69 x i8]* @.str10, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  switch i32 %type, label %sw.default13 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.epilog15
    i32 2, label %sw.epilog15
  ]

sw.default:                                       ; preds = %sw.bb
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([115 x i8]* @.str11, i64 0, i64 0), i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.bb8:                                           ; preds = %if.end
  %switch = icmp ult i32 %symflag, 3
  br i1 %switch, label %sw.epilog15, label %sw.default10

sw.default10:                                     ; preds = %sw.bb8
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([138 x i8]* @.str12, i64 0, i64 0), i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.default13:                                     ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([81 x i8]* @.str13, i64 0, i64 0), i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog15:                                      ; preds = %sw.bb8, %sw.bb, %sw.bb
  %call16 = tail call i32 @Chv_nbytesNeeded(i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #6
  tail call void @Chv_setNbytesInWorkspace(%struct._Chv* %chv, i32 %call16) #6
  tail call void @Chv_setFields(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag) #6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_initWithPointers(%struct._Chv* %chv, i32 %id, i32 %nD, i32 %nL, i32 %nU, i32 %type, i32 %symflag, i32* %rowind, i32* %colind, double* %entries) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp slt i32 %nD, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %nL, 0
  %or.cond70 = or i1 %or.cond, %cmp3
  %cmp5 = icmp slt i32 %nU, 0
  %or.cond71 = or i1 %or.cond70, %cmp5
  br i1 %or.cond71, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i32 %nD, i32 %nL, i32 %nU) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp6 = icmp eq double* %entries, null
  %cmp8 = icmp eq i32* %colind, null
  %or.cond72 = or i1 %cmp6, %cmp8
  br i1 %or.cond72, label %if.then12, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %cmp10 = icmp eq i32 %symflag, 2
  %cmp11 = icmp eq i32* %rowind, null
  %or.cond73 = and i1 %cmp10, %cmp11
  br i1 %or.cond73, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false9, %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([83 x i8]* @.str15, i64 0, i64 0), double* %entries, i32* %colind, i32* %rowind, i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end14:                                         ; preds = %lor.lhs.false9
  switch i32 %type, label %sw.default22 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end14
  switch i32 %symflag, label %sw.default [
    i32 0, label %sw.epilog24
    i32 2, label %sw.epilog24
  ]

sw.default:                                       ; preds = %sw.bb
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([127 x i8]* @.str16, i64 0, i64 0), i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.bb17:                                          ; preds = %if.end14
  %switch = icmp ult i32 %symflag, 3
  br i1 %switch, label %sw.epilog24, label %sw.default19

sw.default19:                                     ; preds = %sw.bb17
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([150 x i8]* @.str17, i64 0, i64 0), i32 %symflag) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.default22:                                     ; preds = %if.end14
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([93 x i8]* @.str18, i64 0, i64 0), i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog24:                                      ; preds = %sw.bb17, %sw.bb, %sw.bb
  %id25 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0
  store i32 %id, i32* %id25, align 4, !tbaa !3
  %nD26 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1
  store i32 %nD, i32* %nD26, align 4, !tbaa !3
  %nL27 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 2
  store i32 %nL, i32* %nL27, align 4, !tbaa !3
  %nU28 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 3
  store i32 %nU, i32* %nU28, align 4, !tbaa !3
  %type29 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  store i32 %type, i32* %type29, align 4, !tbaa !3
  %symflag30 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  store i32 %symflag, i32* %symflag30, align 4, !tbaa !3
  %entries31 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 8
  store double* %entries, double** %entries31, align 8, !tbaa !0
  %colind32 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 7
  store i32* %colind, i32** %colind32, align 8, !tbaa !0
  %rowind35 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 6
  %rowind. = select i1 %cmp10, i32* %rowind, i32* null
  store i32* %rowind., i32** %rowind35, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Chv_initFromBuffer(%struct._Chv* %chv) #0 {
entry:
  %cmp = icmp eq %struct._Chv* %chv, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str19, i64 0, i64 0), %struct._Chv* null) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %wrkDV = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 9
  %call1 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %1 = bitcast double* %call1 to i32*
  %2 = load i32* %1, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds i32* %1, i64 1
  %3 = load i32* %arrayidx2, align 4, !tbaa !3
  %arrayidx315 = getelementptr inbounds double* %call1, i64 1
  %arrayidx3 = bitcast double* %arrayidx315 to i32*
  %4 = load i32* %arrayidx3, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds i32* %1, i64 3
  %5 = load i32* %arrayidx4, align 4, !tbaa !3
  %arrayidx516 = getelementptr inbounds double* %call1, i64 2
  %arrayidx5 = bitcast double* %arrayidx516 to i32*
  %6 = load i32* %arrayidx5, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds i32* %1, i64 5
  %7 = load i32* %arrayidx6, align 4, !tbaa !3
  tail call void @Chv_setFields(%struct._Chv* %chv, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #6
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

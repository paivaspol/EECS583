; ModuleID = '../../SPEC/benchspec/CPU2006/401.bzip2/src/bzip2.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.UInt64 = type { [8 x i8] }

@blockSize100k = common global i32 0, align 4
@verbosity = common global i32 0, align 4
@workFactor = common global i32 0, align 4
@stderr = external global %struct._IO_FILE*
@outputHandleJustInCase = common global i32 0, align 4
@.str1 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str2 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str3 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@smallMode = common global i8 0, align 1
@.str5 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@forceOverwrite = common global i8 0, align 1
@noisy = common global i8 0, align 1
@.str7 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@progName = common global i8* null, align 8
@inName = common global [1034 x i8] zeroinitializer, align 16
@.str8 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@keepInputFiles = common global i8 0, align 1
@deleteOutputOnInterrupt = common global i8 0, align 1
@testFailsExist = common global i8 0, align 1
@unzFailsExist = common global i8 0, align 1
@numFileNames = common global i32 0, align 4
@numFilesProcessed = common global i32 0, align 4
@exitValue = common global i32 0, align 4
@opMode = common global i32 0, align 4
@srcMode = common global i32 0, align 4
@longestFileName = common global i32 0, align 4
@outName = common global [1034 x i8] zeroinitializer, align 16
@tmpName = common global [1034 x i8] zeroinitializer, align 16
@progNameReally = common global [1034 x i8] zeroinitializer, align 16
@.str10 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1
@.str11 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str12 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str13 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str14 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str15 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str16 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str17 = private unnamed_addr constant [148 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is probably a BUG, but it may be in your COMPILER.  Please do not bother\0A\09the original author.\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @compressStream(i32 %stream, i32 %zStream) #0 {
entry:
  %ibuf = alloca [5000 x i8], align 16
  %nbytes_in_lo32 = alloca i32, align 4
  %nbytes_in_hi32 = alloca i32, align 4
  %nbytes_out_lo32 = alloca i32, align 4
  %nbytes_out_hi32 = alloca i32, align 4
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %buf_nin = alloca [32 x i8], align 16
  %buf_nout = alloca [32 x i8], align 16
  %nbytes_in = alloca %struct.UInt64, align 1
  %nbytes_out = alloca %struct.UInt64, align 1
  %0 = getelementptr inbounds [5000 x i8]* %ibuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %0) #1
  %1 = load i32* @blockSize100k, align 4, !tbaa !0
  %2 = load i32* @verbosity, align 4, !tbaa !0
  %3 = load i32* @workFactor, align 4, !tbaa !0
  %call = call i8* @BZ2_bzWriteOpen(i32* %bzerr, i32 %zStream, i32 %1, i32 %2, i32 %3) #6
  %4 = load i32* %bzerr, align 4, !tbaa !0
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end, label %errhandler

if.end:                                           ; preds = %entry
  %5 = load i32* @verbosity, align 4, !tbaa !0
  %cmp1 = icmp sgt i32 %5, 1
  br i1 %cmp1, label %if.then2, label %while.body

if.then2:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %6)
  br label %while.body

while.body:                                       ; preds = %if.then2, %if.end, %if.end12
  %call5 = call fastcc zeroext i8 @myfeof(i32 %stream) #7
  %tobool = icmp eq i8 %call5, 0
  br i1 %tobool, label %if.end7, label %while.end

if.end7:                                          ; preds = %while.body
  %call8 = call i32 @spec_fread(i8* %0, i32 1, i32 5000, i32 %stream) #6
  %cmp9 = icmp sgt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @BZ2_bzWrite(i32* %bzerr, i8* %call, i8* %0, i32 %call8) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  %7 = load i32* %bzerr, align 4, !tbaa !0
  %cmp13 = icmp eq i32 %7, 0
  br i1 %cmp13, label %while.body, label %errhandler

while.end:                                        ; preds = %while.body
  call void @BZ2_bzWriteClose64(i32* %bzerr, i8* %call, i32 0, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32) #6
  %8 = load i32* %bzerr, align 4, !tbaa !0
  %cmp16 = icmp eq i32 %8, 0
  br i1 %cmp16, label %if.end21, label %errhandler

if.end21:                                         ; preds = %while.end
  %cmp22 = icmp eq i32 %zStream, 1
  br i1 %cmp22, label %if.end27, label %if.then23

if.then23:                                        ; preds = %if.end21
  store i32 0, i32* @outputHandleJustInCase, align 4, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end21
  store i32 0, i32* @outputHandleJustInCase, align 4, !tbaa !0
  %9 = load i32* @verbosity, align 4, !tbaa !0
  %cmp31 = icmp sgt i32 %9, 0
  br i1 %cmp31, label %if.then32, label %cleanup

if.then32:                                        ; preds = %if.end27
  %10 = load i32* %nbytes_in_lo32, align 4, !tbaa !0
  %11 = load i32* %nbytes_in_hi32, align 4, !tbaa !0
  %12 = or i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.then32
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %15 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str1, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %14)
  br label %cleanup

if.else:                                          ; preds = %if.then32
  %shr.i = lshr i32 %11, 24
  %conv.i = trunc i32 %shr.i to i8
  %arrayidx.i = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 7
  store i8 %conv.i, i8* %arrayidx.i, align 1, !tbaa !1
  %shr1.i = lshr i32 %11, 16
  %conv3.i = trunc i32 %shr1.i to i8
  %arrayidx5.i = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 6
  store i8 %conv3.i, i8* %arrayidx5.i, align 1, !tbaa !1
  %shr6.i = lshr i32 %11, 8
  %conv8.i = trunc i32 %shr6.i to i8
  %arrayidx10.i = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 5
  store i8 %conv8.i, i8* %arrayidx10.i, align 1, !tbaa !1
  %conv12.i = trunc i32 %11 to i8
  %arrayidx14.i = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 4
  store i8 %conv12.i, i8* %arrayidx14.i, align 1, !tbaa !1
  %shr15.i = lshr i32 %10, 24
  %conv17.i = trunc i32 %shr15.i to i8
  %arrayidx19.i = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 3
  store i8 %conv17.i, i8* %arrayidx19.i, align 1, !tbaa !1
  %shr20.i = lshr i32 %10, 16
  %conv22.i = trunc i32 %shr20.i to i8
  %arrayidx24.i = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 2
  store i8 %conv22.i, i8* %arrayidx24.i, align 1, !tbaa !1
  %shr25.i = lshr i32 %10, 8
  %conv27.i = trunc i32 %shr25.i to i8
  %arrayidx29.i = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 1
  store i8 %conv27.i, i8* %arrayidx29.i, align 1, !tbaa !1
  %conv31.i = trunc i32 %10 to i8
  %arrayidx33.i = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 0
  store i8 %conv31.i, i8* %arrayidx33.i, align 1, !tbaa !1
  %16 = load i32* %nbytes_out_lo32, align 4, !tbaa !0
  %17 = load i32* %nbytes_out_hi32, align 4, !tbaa !0
  %shr.i62 = lshr i32 %17, 24
  %conv.i63 = trunc i32 %shr.i62 to i8
  %arrayidx.i64 = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 7
  store i8 %conv.i63, i8* %arrayidx.i64, align 1, !tbaa !1
  %shr1.i65 = lshr i32 %17, 16
  %conv3.i66 = trunc i32 %shr1.i65 to i8
  %arrayidx5.i67 = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 6
  store i8 %conv3.i66, i8* %arrayidx5.i67, align 1, !tbaa !1
  %shr6.i68 = lshr i32 %17, 8
  %conv8.i69 = trunc i32 %shr6.i68 to i8
  %arrayidx10.i70 = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 5
  store i8 %conv8.i69, i8* %arrayidx10.i70, align 1, !tbaa !1
  %conv12.i71 = trunc i32 %17 to i8
  %arrayidx14.i72 = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 4
  store i8 %conv12.i71, i8* %arrayidx14.i72, align 1, !tbaa !1
  %shr15.i73 = lshr i32 %16, 24
  %conv17.i74 = trunc i32 %shr15.i73 to i8
  %arrayidx19.i75 = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 3
  store i8 %conv17.i74, i8* %arrayidx19.i75, align 1, !tbaa !1
  %shr20.i76 = lshr i32 %16, 16
  %conv22.i77 = trunc i32 %shr20.i76 to i8
  %arrayidx24.i78 = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 2
  store i8 %conv22.i77, i8* %arrayidx24.i78, align 1, !tbaa !1
  %shr25.i79 = lshr i32 %16, 8
  %conv27.i80 = trunc i32 %shr25.i79 to i8
  %arrayidx29.i81 = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 1
  store i8 %conv27.i80, i8* %arrayidx29.i81, align 1, !tbaa !1
  %conv31.i82 = trunc i32 %16 to i8
  %arrayidx33.i83 = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 0
  store i8 %conv31.i82, i8* %arrayidx33.i83, align 1, !tbaa !1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else
  %18 = phi i8 [ %conv31.i, %if.else ], [ %.pre101, %for.body.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i64 [ 1, %if.else ], [ %phitmp, %for.body.i.for.body.i_crit_edge ]
  %sum.08.i = phi double [ 0.000000e+00, %if.else ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %base.07.i = phi double [ 1.000000e+00, %if.else ], [ %mul1.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i85 = uitofp i8 %18 to double
  %mul.i = fmul double %base.07.i, %conv.i85
  %add.i = fadd double %sum.08.i, %mul.i
  %lftr.wideiv99 = trunc i64 %indvars.iv.i to i32
  %exitcond100 = icmp eq i32 %lftr.wideiv99, 8
  br i1 %exitcond100, label %for.body.i97, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  %mul1.i = fmul double %base.07.i, 2.560000e+02
  %arrayidx.i84.phi.trans.insert = getelementptr inbounds %struct.UInt64* %nbytes_in, i64 0, i32 0, i64 %indvars.iv.i
  %.pre101 = load i8* %arrayidx.i84.phi.trans.insert, align 1, !tbaa !1
  %phitmp = add i64 %indvars.iv.i, 1
  br label %for.body.i

for.body.i97:                                     ; preds = %for.body.i, %for.body.i97.for.body.i97_crit_edge
  %19 = phi i8 [ %.pre102, %for.body.i97.for.body.i97_crit_edge ], [ %conv31.i82, %for.body.i ]
  %indvars.iv.i86 = phi i64 [ %phitmp103, %for.body.i97.for.body.i97_crit_edge ], [ 1, %for.body.i ]
  %sum.08.i87 = phi double [ %add.i92, %for.body.i97.for.body.i97_crit_edge ], [ 0.000000e+00, %for.body.i ]
  %base.07.i88 = phi double [ %mul1.i93, %for.body.i97.for.body.i97_crit_edge ], [ 1.000000e+00, %for.body.i ]
  %conv.i90 = uitofp i8 %19 to double
  %mul.i91 = fmul double %base.07.i88, %conv.i90
  %add.i92 = fadd double %sum.08.i87, %mul.i91
  %lftr.wideiv = trunc i64 %indvars.iv.i86 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 8
  br i1 %exitcond, label %uInt64_to_double.exit98, label %for.body.i97.for.body.i97_crit_edge

for.body.i97.for.body.i97_crit_edge:              ; preds = %for.body.i97
  %mul1.i93 = fmul double %base.07.i88, 2.560000e+02
  %arrayidx.i89.phi.trans.insert = getelementptr inbounds %struct.UInt64* %nbytes_out, i64 0, i32 0, i64 %indvars.iv.i86
  %.pre102 = load i8* %arrayidx.i89.phi.trans.insert, align 1, !tbaa !1
  %phitmp103 = add i64 %indvars.iv.i86, 1
  br label %for.body.i97

uInt64_to_double.exit98:                          ; preds = %for.body.i97
  %arraydecay39 = getelementptr inbounds [32 x i8]* %buf_nin, i64 0, i64 0
  call fastcc void @uInt64_toAscii(i8* %arraydecay39, %struct.UInt64* %nbytes_in) #7
  %arraydecay40 = getelementptr inbounds [32 x i8]* %buf_nout, i64 0, i64 0
  call fastcc void @uInt64_toAscii(i8* %arraydecay40, %struct.UInt64* %nbytes_out) #7
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %div = fdiv double %add.i, %add.i92
  %mul = fmul double %add.i92, 8.000000e+00
  %div41 = fdiv double %mul, %add.i
  %div42 = fdiv double %add.i92, %add.i
  %sub = fsub double 1.000000e+00, %div42
  %mul43 = fmul double %sub, 1.000000e+02
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([57 x i8]* @.str2, i64 0, i64 0), double %div, double %div41, double %mul43, i8* %arraydecay39, i8* %arraydecay40) #6
  br label %cleanup

errhandler:                                       ; preds = %if.end12, %while.end, %entry
  call void @BZ2_bzWriteClose64(i32* %bzerr_dummy, i8* %call, i32 1, i32* %nbytes_in_lo32, i32* %nbytes_in_hi32, i32* %nbytes_out_lo32, i32* %nbytes_out_hi32) #6
  %21 = load i32* %bzerr, align 4, !tbaa !0
  switch i32 %21, label %sw.default [
    i32 -9, label %sw.bb
    i32 -3, label %sw.bb49
    i32 -6, label %errhandler_io
  ]

sw.bb:                                            ; preds = %errhandler
  call fastcc void @configError() #7
  unreachable

sw.bb49:                                          ; preds = %errhandler
  call fastcc void @outOfMemory() #7
  unreachable

errhandler_io:                                    ; preds = %errhandler
  call fastcc void @ioError() #7
  unreachable

sw.default:                                       ; preds = %errhandler
  call fastcc void @panic(i8* getelementptr inbounds ([26 x i8]* @.str3, i64 0, i64 0)) #7
  unreachable

cleanup:                                          ; preds = %if.end27, %uInt64_to_double.exit98, %if.then35
  call void @llvm.lifetime.end(i64 5000, i8* %0) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @BZ2_bzWriteOpen(i32*, i32, i32, i32, i32) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc zeroext i8 @myfeof(i32 %f) #0 {
entry:
  %call = tail call i32 @spec_getc(i32 %f) #6
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i8
  %call1 = tail call i32 @spec_ungetc(i8 zeroext %conv, i32 %f) #6
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ 0, %if.end ], [ 1, %entry ]
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i32 @spec_fread(i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @BZ2_bzWrite(i32*, i8*, i8*, i32) #2

; Function Attrs: optsize
declare void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @uInt64_toAscii(i8* nocapture %outbuf, %struct.UInt64* nocapture %n) #0 {
entry:
  %buf = alloca [32 x i8], align 16
  %n_copy = alloca i64, align 8
  %tmpcast = bitcast i64* %n_copy to %struct.UInt64*
  %0 = bitcast %struct.UInt64* %n to i64*
  %1 = load i64* %0, align 1
  store i64 %1, i64* %n_copy, align 8
  br label %do.body

do.body:                                          ; preds = %for.body.i23, %entry
  %indvars.iv30 = phi i64 [ 0, %entry ], [ %indvars.iv.next31, %for.body.i23 ]
  %nBuf.0 = phi i32 [ 0, %entry ], [ %inc, %for.body.i23 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %do.body
  %indvars.iv.i = phi i64 [ 7, %do.body ], [ %indvars.iv.next.i, %for.body.i ]
  %rem.012.i = phi i32 [ 0, %do.body ], [ %rem6.i, %for.body.i ]
  %mul.i = shl nuw nsw i32 %rem.012.i, 8
  %arrayidx.i = getelementptr inbounds %struct.UInt64* %tmpcast, i64 0, i32 0, i64 %indvars.iv.i
  %2 = load i8* %arrayidx.i, align 1, !tbaa !1
  %conv.i = zext i8 %2 to i32
  %add.i = or i32 %conv.i, %mul.i
  %div.i = udiv i32 %add.i, 10
  %conv2.i = trunc i32 %div.i to i8
  store i8 %conv2.i, i8* %arrayidx.i, align 1, !tbaa !1
  %rem6.i = urem i32 %add.i, 10
  %indvars.iv.next.i = add i64 %indvars.iv.i, -1
  %3 = trunc i64 %indvars.iv.i to i32
  %cmp.i = icmp sgt i32 %3, 0
  br i1 %cmp.i, label %for.body.i, label %uInt64_qrm10.exit

uInt64_qrm10.exit:                                ; preds = %for.body.i
  %add27 = or i32 %rem6.i, 48
  %conv = trunc i32 %add27 to i8
  %arrayidx = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 %indvars.iv30
  store i8 %conv, i8* %arrayidx, align 1, !tbaa !1
  %indvars.iv.next31 = add i64 %indvars.iv30, 1
  %inc = add nsw i32 %nBuf.0, 1
  br label %for.body.i23

for.cond.i:                                       ; preds = %for.body.i23
  %4 = trunc i64 %indvars.iv.next.i22 to i32
  %cmp.i19 = icmp slt i32 %4, 8
  br i1 %cmp.i19, label %for.body.i23, label %do.end

for.body.i23:                                     ; preds = %for.cond.i, %uInt64_qrm10.exit
  %indvars.iv.i20 = phi i64 [ 0, %uInt64_qrm10.exit ], [ %indvars.iv.next.i22, %for.cond.i ]
  %arrayidx.i21 = getelementptr inbounds %struct.UInt64* %tmpcast, i64 0, i32 0, i64 %indvars.iv.i20
  %5 = load i8* %arrayidx.i21, align 1, !tbaa !1
  %cmp1.i = icmp eq i8 %5, 0
  %indvars.iv.next.i22 = add i64 %indvars.iv.i20, 1
  br i1 %cmp1.i, label %for.cond.i, label %do.body

do.end:                                           ; preds = %for.cond.i
  %idxprom2 = sext i32 %inc to i64
  %arrayidx3 = getelementptr inbounds i8* %outbuf, i64 %idxprom2
  store i8 0, i8* %arrayidx3, align 1, !tbaa !1
  %cmp28 = icmp sgt i32 %nBuf.0, -1
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %do.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %do.end ]
  %6 = trunc i64 %indvars.iv to i32
  %sub5 = sub i32 %nBuf.0, %6
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds [32 x i8]* %buf, i64 0, i64 %idxprom6
  %7 = load i8* %arrayidx7, align 1, !tbaa !1
  %arrayidx9 = getelementptr inbounds i8* %outbuf, i64 %indvars.iv
  store i8 %7, i8* %arrayidx9, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %8, %inc
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %do.end
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @configError() #4 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([236 x i8]* @.str10, i64 0, i64 0), i64 235, i64 1, %struct._IO_FILE* %0)
  store i32 0, i32* @exitValue, align 4, !tbaa !0
  tail call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @outOfMemory() #4 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = load i8** @progName, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8]* @.str11, i64 0, i64 0), i8* %1) #6
  tail call fastcc void @showFileNames() #7
  tail call fastcc void @cleanUpAndFail() #7
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @ioError() #4 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = load i8** @progName, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str13, i64 0, i64 0), i8* %1) #6
  %2 = load i8** @progName, align 8, !tbaa !3
  tail call void @perror(i8* %2) #6
  tail call fastcc void @showFileNames() #7
  tail call fastcc void @cleanUpAndFail() #7
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @panic(i8* %s) #4 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %1 = load i8** @progName, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([148 x i8]* @.str17, i64 0, i64 0), i8* %1, i8* %s) #6
  tail call fastcc void @showFileNames() #7
  tail call fastcc void @cleanUpAndFail() #7
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define zeroext i8 @uncompressStream(i32 %zStream, i32 %stream) #0 {
entry:
  %bzerr = alloca i32, align 4
  %bzerr_dummy = alloca i32, align 4
  %obuf = alloca [5000 x i8], align 16
  %unused = alloca [5000 x i8], align 16
  %nUnused = alloca i32, align 4
  %unusedTmpV = alloca i8*, align 8
  %0 = getelementptr inbounds [5000 x i8]* %obuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %0) #1
  %1 = getelementptr inbounds [5000 x i8]* %unused, i64 0, i64 0
  call void @llvm.lifetime.start(i64 5000, i8* %1) #1
  store i32 0, i32* %nUnused, align 4, !tbaa !0
  %2 = load i32* @verbosity, align 4, !tbaa !0
  %3 = load i8* @smallMode, align 1, !tbaa !1
  %conv155 = zext i8 %3 to i32
  %call156 = call i8* @BZ2_bzReadOpen(i32* %bzerr, i32 %zStream, i32 %2, i32 %conv155, i8* %1, i32 0) #6
  %cmp157 = icmp ne i8* %call156, null
  %4 = load i32* %bzerr, align 4, !tbaa !0
  %cmp2158 = icmp eq i32 %4, 0
  %or.cond159 = and i1 %cmp157, %cmp2158
  br i1 %or.cond159, label %if.end, label %errhandler

if.end:                                           ; preds = %entry, %while.body.backedge
  %call161 = phi i8* [ %call, %while.body.backedge ], [ %call156, %entry ]
  %streamNo.0160 = phi i32 [ %inc, %while.body.backedge ], [ 0, %entry ]
  %inc = add nsw i32 %streamNo.0160, 1
  br label %while.cond4

while.cond4:                                      ; preds = %if.then21, %if.end13, %if.end
  %5 = phi i32 [ 0, %if.end ], [ %6, %if.end13 ], [ %.pre.pre, %if.then21 ]
  switch i32 %5, label %errhandler [
    i32 0, label %while.body7
    i32 4, label %if.end28
  ]

while.body7:                                      ; preds = %while.cond4
  %call9 = call i32 @BZ2_bzRead(i32* %bzerr, i8* %call161, i8* %0, i32 5000) #6
  %6 = load i32* %bzerr, align 4, !tbaa !0
  %cmp10 = icmp eq i32 %6, -5
  br i1 %cmp10, label %trycat, label %if.end13

if.end13:                                         ; preds = %while.body7
  %7 = and i32 %6, -5
  %8 = icmp eq i32 %7, 0
  %cmp19 = icmp sgt i32 %call9, 0
  %or.cond132 = and i1 %8, %cmp19
  br i1 %or.cond132, label %if.then21, label %while.cond4

if.then21:                                        ; preds = %if.end13
  %call23 = call i32 @spec_fwrite(i8* %0, i32 1, i32 %call9, i32 %stream) #6
  %.pre.pre = load i32* %bzerr, align 4, !tbaa !0
  br label %while.cond4

if.end28:                                         ; preds = %while.cond4
  call void @BZ2_bzReadGetUnused(i32* %bzerr, i8* %call161, i8** %unusedTmpV, i32* %nUnused) #6
  %9 = load i32* %bzerr, align 4, !tbaa !0
  %cmp29 = icmp eq i32 %9, 0
  br i1 %cmp29, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end28
  call fastcc void @panic(i8* getelementptr inbounds ([27 x i8]* @.str5, i64 0, i64 0)) #7
  unreachable

if.end32:                                         ; preds = %if.end28
  %10 = load i8** %unusedTmpV, align 8, !tbaa !3
  %11 = load i32* %nUnused, align 4, !tbaa !0
  %cmp33136 = icmp sgt i32 %11, 0
  br i1 %cmp33136, label %for.body, label %for.end

for.body:                                         ; preds = %if.end32, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end32 ]
  %arrayidx = getelementptr inbounds i8* %10, i64 %indvars.iv
  %12 = load i8* %arrayidx, align 1, !tbaa !1
  %arrayidx36 = getelementptr inbounds [5000 x i8]* %unused, i64 0, i64 %indvars.iv
  store i8 %12, i8* %arrayidx36, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp33 = icmp slt i32 %13, %11
  br i1 %cmp33, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end32
  call void @BZ2_bzReadClose(i32* %bzerr, i8* %call161) #6
  %14 = load i32* %bzerr, align 4, !tbaa !0
  %cmp38 = icmp eq i32 %14, 0
  br i1 %cmp38, label %if.end41, label %if.then40

if.then40:                                        ; preds = %for.end
  call fastcc void @panic(i8* getelementptr inbounds ([27 x i8]* @.str5, i64 0, i64 0)) #7
  unreachable

if.end41:                                         ; preds = %for.end
  %15 = load i32* %nUnused, align 4, !tbaa !0
  %cmp42 = icmp eq i32 %15, 0
  br i1 %cmp42, label %land.lhs.true44, label %while.body.backedge

while.body.backedge:                              ; preds = %land.lhs.true44.while.body.backedge_crit_edge, %if.end41
  %16 = phi i32 [ %.pre175, %land.lhs.true44.while.body.backedge_crit_edge ], [ %15, %if.end41 ]
  %17 = load i32* @verbosity, align 4, !tbaa !0
  %18 = load i8* @smallMode, align 1, !tbaa !1
  %conv = zext i8 %18 to i32
  %call = call i8* @BZ2_bzReadOpen(i32* %bzerr, i32 %zStream, i32 %17, i32 %conv, i8* %1, i32 %16) #6
  %cmp = icmp ne i8* %call, null
  %19 = load i32* %bzerr, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %19, 0
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %if.end, label %errhandler

land.lhs.true44:                                  ; preds = %if.end41
  %call45 = call fastcc zeroext i8 @myfeof(i32 %zStream) #7
  %tobool = icmp eq i8 %call45, 0
  br i1 %tobool, label %land.lhs.true44.while.body.backedge_crit_edge, label %if.end57

land.lhs.true44.while.body.backedge_crit_edge:    ; preds = %land.lhs.true44
  %.pre175 = load i32* %nUnused, align 4, !tbaa !0
  br label %while.body.backedge

if.end57:                                         ; preds = %land.lhs.true44, %if.then72, %while.body75.backedge
  %cmp58 = icmp eq i32 %stream, 1
  br i1 %cmp58, label %if.end65, label %if.then60

if.then60:                                        ; preds = %if.end57
  store i32 0, i32* @outputHandleJustInCase, align 4, !tbaa !0
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end57
  store i32 0, i32* @outputHandleJustInCase, align 4, !tbaa !0
  %20 = load i32* @verbosity, align 4, !tbaa !0
  %cmp66 = icmp sgt i32 %20, 1
  br i1 %cmp66, label %if.then68, label %cleanup

if.then68:                                        ; preds = %if.end65
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %22 = call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %21)
  br label %cleanup

trycat:                                           ; preds = %while.body7
  %23 = load i8* @forceOverwrite, align 1, !tbaa !1
  %tobool71 = icmp eq i8 %23, 0
  br i1 %tobool71, label %errhandler, label %if.then72

if.then72:                                        ; preds = %trycat
  %call73 = call i32 @spec_rewind(i32 %zStream) #6
  %call76134 = call fastcc zeroext i8 @myfeof(i32 %zStream) #7
  %tobool77135 = icmp eq i8 %call76134, 0
  br i1 %tobool77135, label %if.end79, label %if.end57

if.end79:                                         ; preds = %if.then72, %while.body75.backedge
  %call81 = call i32 @spec_fread(i8* %0, i32 1, i32 5000, i32 %zStream) #6
  %cmp82 = icmp sgt i32 %call81, 0
  br i1 %cmp82, label %if.then84, label %while.body75.backedge

if.then84:                                        ; preds = %if.end79
  %call86 = call i32 @spec_fwrite(i8* %0, i32 1, i32 %call81, i32 %stream) #6
  br label %while.body75.backedge

while.body75.backedge:                            ; preds = %if.then84, %if.end79
  %call76 = call fastcc zeroext i8 @myfeof(i32 %zStream) #7
  %tobool77 = icmp eq i8 %call76, 0
  br i1 %tobool77, label %if.end79, label %if.end57

errhandler:                                       ; preds = %entry, %while.body.backedge, %while.cond4, %trycat
  %call150 = phi i8* [ %call161, %trycat ], [ %call161, %while.cond4 ], [ %call156, %entry ], [ %call, %while.body.backedge ]
  %streamNo.1 = phi i32 [ %inc, %trycat ], [ %inc, %while.cond4 ], [ 0, %entry ], [ %inc, %while.body.backedge ]
  call void @BZ2_bzReadClose(i32* %bzerr_dummy, i8* %call150) #6
  %24 = load i32* %bzerr, align 4, !tbaa !0
  switch i32 %24, label %sw.default [
    i32 -9, label %sw.bb
    i32 -6, label %errhandler_io
    i32 -4, label %sw.bb91
    i32 -3, label %sw.bb92
    i32 -7, label %sw.bb93
    i32 -5, label %sw.bb94
  ]

sw.bb:                                            ; preds = %errhandler
  call fastcc void @configError() #7
  unreachable

errhandler_io:                                    ; preds = %errhandler
  call fastcc void @ioError() #7
  unreachable

sw.bb91:                                          ; preds = %errhandler
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %26 = load i8** @progName, align 8, !tbaa !3
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([47 x i8]* @.str16, i64 0, i64 0), i8* %26) #6
  call fastcc void @showFileNames() #6
  call fastcc void @cadvise() #6
  call fastcc void @cleanUpAndFail() #6
  unreachable

sw.bb92:                                          ; preds = %errhandler
  call fastcc void @outOfMemory() #7
  unreachable

sw.bb93:                                          ; preds = %errhandler
  %27 = load i8* @noisy, align 1, !tbaa !1
  %tobool.i = icmp eq i8 %27, 0
  br i1 %tobool.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb93
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %29 = load i8** @progName, align 8, !tbaa !3
  %call.i133 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([95 x i8]* @.str14, i64 0, i64 0), i8* %29) #6
  %30 = load i8** @progName, align 8, !tbaa !3
  call void @perror(i8* %30) #6
  call fastcc void @showFileNames() #6
  call fastcc void @cadvise() #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb93
  call fastcc void @cleanUpAndFail() #6
  unreachable

sw.bb94:                                          ; preds = %errhandler
  %cmp103 = icmp eq i32 %streamNo.1, 1
  br i1 %cmp103, label %cleanup, label %if.else

if.else:                                          ; preds = %sw.bb94
  %31 = load i8* @noisy, align 1, !tbaa !1
  %tobool106 = icmp eq i8 %31, 0
  br i1 %tobool106, label %cleanup, label %if.then107

if.then107:                                       ; preds = %if.else
  %32 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %33 = load i8** @progName, align 8, !tbaa !3
  %call108 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([45 x i8]* @.str7, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0)) #6
  br label %cleanup

sw.default:                                       ; preds = %errhandler
  call fastcc void @panic(i8* getelementptr inbounds ([28 x i8]* @.str8, i64 0, i64 0)) #7
  unreachable

cleanup:                                          ; preds = %if.then107, %if.else, %sw.bb94, %if.end65, %if.then68
  %retval.0 = phi i8 [ 1, %if.then68 ], [ 1, %if.end65 ], [ 0, %sw.bb94 ], [ 1, %if.else ], [ 1, %if.then107 ]
  call void @llvm.lifetime.end(i64 5000, i8* %1) #1
  call void @llvm.lifetime.end(i64 5000, i8* %0) #1
  ret i8 %retval.0
}

; Function Attrs: optsize
declare i8* @BZ2_bzReadOpen(i32*, i32, i32, i32, i8*, i32) #2

; Function Attrs: optsize
declare i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #2

; Function Attrs: optsize
declare i32 @spec_fwrite(i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #2

; Function Attrs: optsize
declare void @BZ2_bzReadClose(i32*, i8*) #2

; Function Attrs: optsize
declare i32 @spec_rewind(i32) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @showFileNames() #0 {
entry:
  %0 = load i8* @noisy, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([36 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @inName, i64 0, i64 0), i8* getelementptr inbounds ([1034 x i8]* @outName, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @cleanUpAndFail() #4 {
entry:
  store i32 0, i32* @exitValue, align 4, !tbaa !0
  tail call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: nounwind optsize
declare void @perror(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @cadvise() #0 {
entry:
  %0 = load i8* @noisy, align 1, !tbaa !1
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([241 x i8]* @.str15, i64 0, i64 0), i64 240, i64 1, %struct._IO_FILE* %1)
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare i32 @spec_getc(i32) #2

; Function Attrs: optsize
declare i32 @spec_ungetc(i8 zeroext, i32) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

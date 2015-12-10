; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [65 x i8] c"\0A fatal error in Chv_findPivot(%p,%p,%f,%d,%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [108 x i8] c"\0A fatal error in Chv_findPivot(%p,%p,%f,%d,%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str2 = private unnamed_addr constant [136 x i8] c"\0A fatal error in Chv_findPivot(%p,%p,%f,%d,%p,%p,%p)\0A bad symflag %d\0A must be SPOOLES_SYMMETRIC, SPOOLES_HERMITIAN or CHV_NONSYMMETRIC\0A\00", align 1
@.str3 = private unnamed_addr constant [70 x i8] c"\0A fatal error in Chv_findPivot(%p,%p,%f,%d,%p,%p,%p)\0A bad symflag %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Chv_findPivot(%struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest) #0 {
entry:
  %maxval.i106 = alloca double, align 8
  %irow.i107 = alloca i32, align 4
  %jcol.i = alloca i32, align 4
  %value.i.i = alloca double, align 8
  %imag.i.i = alloca double, align 8
  %real.i.i = alloca double, align 8
  %maxval.i = alloca double, align 8
  %irow.i = alloca i32, align 4
  %jrow.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !40), !dbg !162
  call void @llvm.dbg.value(metadata !{%struct._DV* %workDV}, i64 0, metadata !41), !dbg !163
  call void @llvm.dbg.value(metadata !{double %tau}, i64 0, metadata !42), !dbg !164
  call void @llvm.dbg.value(metadata !{i32 %ndelay}, i64 0, metadata !43), !dbg !165
  call void @llvm.dbg.value(metadata !{i32* %pirow}, i64 0, metadata !44), !dbg !166
  call void @llvm.dbg.value(metadata !{i32* %pjcol}, i64 0, metadata !45), !dbg !167
  call void @llvm.dbg.value(metadata !{i32* %pntest}, i64 0, metadata !46), !dbg !168
  %cmp = icmp eq %struct._Chv* %chv, null, !dbg !169
  %cmp1 = icmp eq %struct._DV* %workDV, null, !dbg !169
  %or.cond = or i1 %cmp, %cmp1, !dbg !169
  %cmp3 = fcmp olt double %tau, 1.000000e+00, !dbg !169
  %or.cond100 = or i1 %or.cond, %cmp3, !dbg !169
  %cmp5 = icmp slt i32 %ndelay, 0, !dbg !169
  %or.cond101 = or i1 %or.cond100, %cmp5, !dbg !169
  %cmp7 = icmp eq i32* %pirow, null, !dbg !169
  %or.cond102 = or i1 %or.cond101, %cmp7, !dbg !169
  %cmp9 = icmp eq i32* %pjcol, null, !dbg !169
  %or.cond103 = or i1 %or.cond102, %cmp9, !dbg !169
  %cmp11 = icmp eq i32* %pntest, null, !dbg !169
  %or.cond104 = or i1 %or.cond103, %cmp11, !dbg !169
  br i1 %or.cond104, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !170, !tbaa !172
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest) #7, !dbg !170
  call void @exit(i32 -1) #8, !dbg !175
  unreachable, !dbg !175

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !176
  %1 = load i32* %type, align 4, !dbg !176, !tbaa !177
  %.off = add i32 %1, -1, !dbg !176
  %switch = icmp ult i32 %.off, 2, !dbg !176
  br i1 %switch, label %if.end19, label %if.then16, !dbg !176

if.then16:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !178, !tbaa !172
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([108 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest, i32 %1) #7, !dbg !178
  call void @exit(i32 -1) #8, !dbg !180
  unreachable, !dbg !180

if.end19:                                         ; preds = %if.end
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !181
  %3 = load i32* %symflag, align 4, !dbg !181, !tbaa !177
  %switch105 = icmp ult i32 %3, 3, !dbg !181
  br i1 %switch105, label %if.end30, label %if.then27, !dbg !181

if.then27:                                        ; preds = %if.end19
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !182, !tbaa !172
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([136 x i8]* @.str2, i64 0, i64 0), %struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest, i32 %3) #7, !dbg !182
  call void @exit(i32 -1) #8, !dbg !184
  unreachable, !dbg !184

if.end30:                                         ; preds = %if.end19
  switch i32 %3, label %if.else42 [
    i32 0, label %if.then36
    i32 1, label %if.then36
    i32 2, label %if.then40
  ], !dbg !185

if.then36:                                        ; preds = %if.end30, %if.end30
  %5 = bitcast double* %maxval.i to i8*, !dbg !186
  call void @llvm.lifetime.start(i64 8, i8* %5) #6, !dbg !186
  %6 = bitcast i32* %irow.i to i8*, !dbg !186
  call void @llvm.lifetime.start(i64 4, i8* %6) #6, !dbg !186
  %7 = bitcast i32* %jrow.i to i8*, !dbg !186
  call void @llvm.lifetime.start(i64 4, i8* %7) #6, !dbg !186
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !189) #6, !dbg !186
  call void @llvm.dbg.value(metadata !{%struct._DV* %workDV}, i64 0, metadata !190) #6, !dbg !191
  call void @llvm.dbg.value(metadata !{double %tau}, i64 0, metadata !192) #6, !dbg !193
  call void @llvm.dbg.value(metadata !{i32 %ndelay}, i64 0, metadata !194) #6, !dbg !195
  call void @llvm.dbg.value(metadata !{i32* %pirow}, i64 0, metadata !196) #6, !dbg !197
  call void @llvm.dbg.value(metadata !{i32* %pjcol}, i64 0, metadata !198) #6, !dbg !199
  call void @llvm.dbg.value(metadata !{i32* %pntest}, i64 0, metadata !200) #6, !dbg !201
  call void @llvm.dbg.declare(metadata !{double* %maxval.i}, metadata !103) #6, !dbg !202
  call void @llvm.dbg.declare(metadata !{i32* %irow.i}, metadata !106) #6, !dbg !203
  call void @llvm.dbg.declare(metadata !{i32* %jrow.i}, metadata !107) #6, !dbg !203
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !204) #6, !dbg !205
  call void @llvm.dbg.value(metadata !206, i64 0, metadata !207) #6, !dbg !208
  %nD1.i = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !209
  %8 = load i32* %nD1.i, align 4, !dbg !209, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !210) #6, !dbg !209
  store i32 -1, i32* %pjcol, align 4, !dbg !211, !tbaa !177
  store i32 -1, i32* %pirow, align 4, !dbg !211, !tbaa !177
  %9 = load i32* %pntest, align 4, !dbg !212, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !213) #6, !dbg !212
  %mul.i = shl nsw i32 %8, 1, !dbg !214
  call void @llvm.dbg.value(metadata !{i32 %mul.i}, i64 0, metadata !216) #6, !dbg !214
  call void @DV_setSize(%struct._DV* %workDV, i32 %mul.i) #7, !dbg !217
  %call.i = call double* @DV_entries(%struct._DV* %workDV) #7, !dbg !218
  call void @llvm.dbg.value(metadata !{double* %call.i}, i64 0, metadata !219) #6, !dbg !218
  call void @DVfill(i32 %8, double* %call.i, double 0.000000e+00) #7, !dbg !220
  %idx.ext.i = sext i32 %8 to i64, !dbg !221
  %add.ptr.i = getelementptr inbounds double* %call.i, i64 %idx.ext.i, !dbg !221
  %10 = bitcast double* %add.ptr.i to i32*, !dbg !221
  call void @llvm.dbg.value(metadata !{i32* %10}, i64 0, metadata !222) #6, !dbg !221
  %cmp.i = icmp sgt i32 %ndelay, 0, !dbg !223
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !223

if.then.i:                                        ; preds = %if.then36
  call void @IVfill(i32 %ndelay, i32* %10, i32 0) #7, !dbg !224
  %sub.i = sub nsw i32 %8, %ndelay, !dbg !226
  %idx.ext4.i = sext i32 %ndelay to i64, !dbg !226
  %add.ptr5.i = getelementptr inbounds i32* %10, i64 %idx.ext4.i, !dbg !226
  call void @IVfill(i32 %sub.i, i32* %add.ptr5.i, i32 1) #7, !dbg !226
  br label %do.body.preheader.i, !dbg !227

if.else.i:                                        ; preds = %if.then36
  call void @IVfill(i32 %8, i32* %10, i32 1) #7, !dbg !228
  br label %do.body.preheader.i

do.body.preheader.i:                              ; preds = %if.else.i, %if.then.i
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !230) #6, !dbg !231
  call void @Chv_fastBunchParlettPivot(%struct._Chv* %chv, i32* %10, i32 1, i32* %irow.i, i32* %jrow.i) #7, !dbg !233
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !235
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !235
  %11 = load i32* %irow.i, align 4, !dbg !235, !tbaa !177
  %cmp6183.i = icmp eq i32 %11, -1, !dbg !235
  br i1 %cmp6183.i, label %findPivotSH.exit, label %if.else8.lr.ph.i, !dbg !235

if.else8.lr.ph.i:                                 ; preds = %do.body.preheader.i
  %12 = bitcast double* %value.i.i to i8*, !dbg !236
  %13 = bitcast double* %imag.i.i to i8*, !dbg !236
  %14 = bitcast double* %real.i.i to i8*, !dbg !236
  br label %if.else8.i, !dbg !235

if.else8.i:                                       ; preds = %do.body.backedge.i, %if.else8.lr.ph.i
  %15 = phi i32 [ %11, %if.else8.lr.ph.i ], [ %45, %do.body.backedge.i ]
  %ncand.0185.i = phi i32 [ 0, %if.else8.lr.ph.i ], [ %ncand.0.be.i, %do.body.backedge.i ]
  %ntest.0184.i = phi i32 [ %9, %if.else8.lr.ph.i ], [ %ntest.3.i, %do.body.backedge.i ]
  %call9.i = call i32 @Chv_maxabsInRow(%struct._Chv* %chv, i32 %15, double* %maxval.i) #7, !dbg !240
  call void @llvm.dbg.value(metadata !{double* %maxval.i}, i64 0, metadata !241) #6, !dbg !242
  call void @llvm.dbg.value(metadata !{double* %maxval.i}, i64 0, metadata !103), !dbg !242
  %16 = load double* %maxval.i, align 8, !dbg !242, !tbaa !243
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !242
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !242
  %17 = load i32* %irow.i, align 4, !dbg !242, !tbaa !177
  %idxprom.i = sext i32 %17 to i64, !dbg !242
  %arrayidx.i = getelementptr inbounds double* %call.i, i64 %idxprom.i, !dbg !242
  store double %16, double* %arrayidx.i, align 8, !dbg !242, !tbaa !243
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !244
  %arrayidx11.i = getelementptr inbounds i32* %10, i64 %idxprom.i, !dbg !244
  store i32 0, i32* %arrayidx11.i, align 4, !dbg !244, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !245
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !245
  %18 = load i32* %irow.i, align 4, !dbg !245, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !245
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !107), !dbg !245
  %19 = load i32* %jrow.i, align 4, !dbg !245, !tbaa !177
  %cmp12.i = icmp eq i32 %18, %19, !dbg !245
  br i1 %cmp12.i, label %if.then21.i, label %if.end19.i, !dbg !245

if.end19.i:                                       ; preds = %if.else8.i
  %call14.i = call i32 @Chv_maxabsInRow(%struct._Chv* %chv, i32 %19, double* %maxval.i) #7, !dbg !247
  call void @llvm.dbg.value(metadata !{double* %maxval.i}, i64 0, metadata !241) #6, !dbg !249
  call void @llvm.dbg.value(metadata !{double* %maxval.i}, i64 0, metadata !103), !dbg !249
  %20 = load double* %maxval.i, align 8, !dbg !249, !tbaa !243
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !249
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !107), !dbg !249
  %21 = load i32* %jrow.i, align 4, !dbg !249, !tbaa !177
  %idxprom15.i = sext i32 %21 to i64, !dbg !249
  %arrayidx16.i = getelementptr inbounds double* %call.i, i64 %idxprom15.i, !dbg !249
  store double %20, double* %arrayidx16.i, align 8, !dbg !249, !tbaa !243
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !250
  %arrayidx18.i = getelementptr inbounds i32* %10, i64 %idxprom15.i, !dbg !250
  store i32 0, i32* %arrayidx18.i, align 4, !dbg !250, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !251
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !251
  %.pre.i = load i32* %irow.i, align 4, !dbg !251, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !251
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !107), !dbg !251
  %.pre205.i = load i32* %jrow.i, align 4, !dbg !251, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !251
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !251
  %cmp20.i = icmp eq i32 %.pre.i, %.pre205.i, !dbg !251
  br i1 %cmp20.i, label %if.then21.i, label %if.else36.i, !dbg !251

if.then21.i:                                      ; preds = %if.end19.i, %if.else8.i
  %22 = phi i32 [ %.pre.i, %if.end19.i ], [ %18, %if.else8.i ]
  call void @llvm.lifetime.start(i64 8, i8* %12) #6, !dbg !236
  call void @llvm.lifetime.start(i64 8, i8* %13) #6, !dbg !236
  call void @llvm.lifetime.start(i64 8, i8* %14) #6, !dbg !236
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !252) #6, !dbg !236
  call void @llvm.dbg.value(metadata !{i32 %.pre.i}, i64 0, metadata !253) #6, !dbg !254
  call void @llvm.dbg.value(metadata !{double %tau}, i64 0, metadata !255) #6, !dbg !256
  call void @llvm.dbg.value(metadata !{double* %call.i}, i64 0, metadata !257) #6, !dbg !258
  %23 = load i32* %type, align 4, !dbg !259, !tbaa !177
  switch i32 %23, label %sym1x1.exit.i [
    i32 1, label %if.then.i.i
    i32 2, label %if.then3.i.i
  ], !dbg !259

if.then.i.i:                                      ; preds = %if.then21.i
  call void @llvm.dbg.declare(metadata !{double* %value.i.i}, metadata !157) #6, !dbg !260
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %22, i32 %22, double* %value.i.i) #7, !dbg !261
  call void @llvm.dbg.value(metadata !{double* %value.i.i}, i64 0, metadata !262) #6, !dbg !263
  call void @llvm.dbg.value(metadata !{double* %value.i.i}, i64 0, metadata !262) #6, !dbg !263
  call void @llvm.dbg.value(metadata !{double* %value.i.i}, i64 0, metadata !157), !dbg !263
  %24 = load double* %value.i.i, align 8, !dbg !263, !tbaa !243
  %call.i.i = call double @fabs(double %24) #9, !dbg !263
  %mul.i.i = fmul double %call.i.i, %tau, !dbg !263
  call void @llvm.dbg.value(metadata !{double %mul.i.i}, i64 0, metadata !264) #6, !dbg !263
  br label %sym1x1.exit.i, !dbg !265

if.then3.i.i:                                     ; preds = %if.then21.i
  call void @llvm.dbg.declare(metadata !{double* %imag.i.i}, metadata !159) #6, !dbg !266
  call void @llvm.dbg.declare(metadata !{double* %real.i.i}, metadata !161) #6, !dbg !266
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %22, i32 %22, double* %real.i.i, double* %imag.i.i) #7, !dbg !267
  call void @llvm.dbg.value(metadata !{double* %real.i.i}, i64 0, metadata !268) #6, !dbg !269
  call void @llvm.dbg.value(metadata !{double* %real.i.i}, i64 0, metadata !268) #6, !dbg !269
  call void @llvm.dbg.value(metadata !{double* %real.i.i}, i64 0, metadata !161), !dbg !269
  %25 = load double* %real.i.i, align 8, !dbg !269, !tbaa !243
  call void @llvm.dbg.value(metadata !{double* %imag.i.i}, i64 0, metadata !270) #6, !dbg !269
  call void @llvm.dbg.value(metadata !{double* %imag.i.i}, i64 0, metadata !270) #6, !dbg !269
  call void @llvm.dbg.value(metadata !{double* %imag.i.i}, i64 0, metadata !159), !dbg !269
  %26 = load double* %imag.i.i, align 8, !dbg !269, !tbaa !243
  %call4.i.i = call double @Zabs(double %25, double %26) #7, !dbg !269
  %mul5.i.i = fmul double %call4.i.i, %tau, !dbg !269
  call void @llvm.dbg.value(metadata !{double %mul5.i.i}, i64 0, metadata !264) #6, !dbg !269
  br label %sym1x1.exit.i, !dbg !271

sym1x1.exit.i:                                    ; preds = %if.then3.i.i, %if.then.i.i, %if.then21.i
  %cutoff.0.i.i = phi double [ %mul.i.i, %if.then.i.i ], [ %mul5.i.i, %if.then3.i.i ], [ undef, %if.then21.i ]
  %idxprom.i.i = sext i32 %22 to i64, !dbg !272
  %arrayidx.i.i = getelementptr inbounds double* %call.i, i64 %idxprom.i.i, !dbg !272
  %27 = load double* %arrayidx.i.i, align 8, !dbg !272, !tbaa !243
  %not.cmp7.i.i = fcmp ole double %27, %cutoff.0.i.i
  %..i.i = zext i1 %not.cmp7.i.i to i32
  call void @llvm.lifetime.end(i64 8, i8* %12) #6, !dbg !273
  call void @llvm.lifetime.end(i64 8, i8* %13) #6, !dbg !273
  call void @llvm.lifetime.end(i64 8, i8* %14) #6, !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %..i.i}, i64 0, metadata !230) #6, !dbg !237
  %inc.i = add nsw i32 %ntest.0184.i, 1, !dbg !274
  call void @llvm.dbg.value(metadata !{i32 %inc.i}, i64 0, metadata !213) #6, !dbg !274
  br i1 %not.cmp7.i.i, label %if.then24.i, label %for.cond.preheader.i, !dbg !275

for.cond.preheader.i:                             ; preds = %sym1x1.exit.i
  %cmp26176.i = icmp sgt i32 %ncand.0185.i, 0, !dbg !276
  br i1 %cmp26176.i, label %for.body.i, label %if.end61.i, !dbg !276

if.then24.i:                                      ; preds = %sym1x1.exit.i
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !279
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !279
  %28 = load i32* %irow.i, align 4, !dbg !279, !tbaa !177
  store i32 %28, i32* %pirow, align 4, !dbg !279, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !279
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !107), !dbg !279
  %29 = load i32* %jrow.i, align 4, !dbg !279, !tbaa !177
  store i32 %29, i32* %pjcol, align 4, !dbg !279, !tbaa !177
  br label %if.end61.i, !dbg !281

for.cond.i:                                       ; preds = %for.body.i
  %30 = trunc i64 %indvars.iv.next200.i to i32, !dbg !276
  %cmp26.i = icmp slt i32 %30, %ncand.0185.i, !dbg !276
  br i1 %cmp26.i, label %for.body.i, label %if.end61.i, !dbg !276

for.body.i:                                       ; preds = %for.cond.i, %for.cond.preheader.i
  %indvars.iv199.i = phi i64 [ 0, %for.cond.preheader.i ], [ %indvars.iv.next200.i, %for.cond.i ]
  %ntest.1177.i = phi i32 [ %inc.i, %for.cond.preheader.i ], [ %inc30.i, %for.cond.i ]
  %add.ptr3.sum155.i = add i64 %indvars.iv199.i, %idx.ext.i, !dbg !282
  %arrayidx28.i = getelementptr inbounds i32* %10, i64 %add.ptr3.sum155.i, !dbg !282
  %31 = load i32* %arrayidx28.i, align 4, !dbg !282, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !284) #6, !dbg !282
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !285
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !285
  %32 = load i32* %irow.i, align 4, !dbg !285, !tbaa !177
  %call29.i = call fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %32, i32 %31, double %tau, double* %call.i) #7, !dbg !285
  call void @llvm.dbg.value(metadata !{i32 %call29.i}, i64 0, metadata !230) #6, !dbg !285
  %inc30.i = add nsw i32 %ntest.1177.i, 1, !dbg !286
  call void @llvm.dbg.value(metadata !{i32 %inc30.i}, i64 0, metadata !213) #6, !dbg !286
  %cmp31.i = icmp eq i32 %call29.i, 2, !dbg !287
  %indvars.iv.next200.i = add i64 %indvars.iv199.i, 1, !dbg !276
  br i1 %cmp31.i, label %if.then32.i, label %for.cond.i, !dbg !287

if.then32.i:                                      ; preds = %for.body.i
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !288
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !288
  %33 = load i32* %irow.i, align 4, !dbg !288, !tbaa !177
  store i32 %33, i32* %pirow, align 4, !dbg !288, !tbaa !177
  store i32 %31, i32* %pjcol, align 4, !dbg !288, !tbaa !177
  br label %findPivotSH.exit, !dbg !288

if.else36.i:                                      ; preds = %if.end19.i
  %call37.i = call fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %.pre.i, i32 %.pre205.i, double %tau, double* %call.i) #7, !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %call37.i}, i64 0, metadata !230) #6, !dbg !290
  %inc38.i = add nsw i32 %ntest.0184.i, 1, !dbg !292
  call void @llvm.dbg.value(metadata !{i32 %inc38.i}, i64 0, metadata !213) #6, !dbg !292
  %cmp39.i = icmp eq i32 %call37.i, 2, !dbg !293
  br i1 %cmp39.i, label %if.then40.i, label %for.cond42.preheader.i, !dbg !293

for.cond42.preheader.i:                           ; preds = %if.else36.i
  %cmp43168.i = icmp sgt i32 %ncand.0185.i, 0, !dbg !294
  br i1 %cmp43168.i, label %for.body44.i, label %if.end61.i, !dbg !294

if.then40.i:                                      ; preds = %if.else36.i
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !297
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !297
  %34 = load i32* %irow.i, align 4, !dbg !297, !tbaa !177
  store i32 %34, i32* %pirow, align 4, !dbg !297, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !297
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !107), !dbg !297
  %35 = load i32* %jrow.i, align 4, !dbg !297, !tbaa !177
  store i32 %35, i32* %pjcol, align 4, !dbg !297, !tbaa !177
  br label %findPivotSH.exit, !dbg !299

for.cond42.i:                                     ; preds = %if.end51.i
  %36 = trunc i64 %indvars.iv.next.i to i32, !dbg !294
  %cmp43.i = icmp slt i32 %36, %ncand.0185.i, !dbg !294
  br i1 %cmp43.i, label %for.body44.i, label %if.end61.i, !dbg !294

for.body44.i:                                     ; preds = %for.cond42.preheader.i, %for.cond42.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.cond42.i ], [ 0, %for.cond42.preheader.i ]
  %ntest.2169.i = phi i32 [ %inc53.i, %for.cond42.i ], [ %inc38.i, %for.cond42.preheader.i ]
  %add.ptr3.sum154.i = add i64 %indvars.iv.i, %idx.ext.i, !dbg !300
  %arrayidx46.i = getelementptr inbounds i32* %10, i64 %add.ptr3.sum154.i, !dbg !300
  %37 = load i32* %arrayidx46.i, align 4, !dbg !300, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !284) #6, !dbg !300
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !302
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !302
  %38 = load i32* %irow.i, align 4, !dbg !302, !tbaa !177
  %call47.i = call fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %38, i32 %37, double %tau, double* %call.i) #7, !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %call47.i}, i64 0, metadata !230) #6, !dbg !302
  %cmp49.i = icmp eq i32 %call47.i, 2, !dbg !303
  br i1 %cmp49.i, label %if.then50.i, label %if.end51.i, !dbg !303

if.then50.i:                                      ; preds = %for.body44.i
  %inc48.i = add nsw i32 %ntest.2169.i, 1, !dbg !304
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !305
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !305
  %39 = load i32* %irow.i, align 4, !dbg !305, !tbaa !177
  store i32 %39, i32* %pirow, align 4, !dbg !305, !tbaa !177
  store i32 %37, i32* %pjcol, align 4, !dbg !305, !tbaa !177
  br label %findPivotSH.exit, !dbg !305

if.end51.i:                                       ; preds = %for.body44.i
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !307
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !107), !dbg !307
  %40 = load i32* %jrow.i, align 4, !dbg !307, !tbaa !177
  %call52.i = call fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %40, i32 %37, double %tau, double* %call.i) #7, !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %call52.i}, i64 0, metadata !230) #6, !dbg !307
  %inc53.i = add nsw i32 %ntest.2169.i, 2, !dbg !308
  call void @llvm.dbg.value(metadata !{i32 %inc53.i}, i64 0, metadata !213) #6, !dbg !308
  %cmp54.i = icmp eq i32 %call52.i, 2, !dbg !309
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !294
  br i1 %cmp54.i, label %if.then55.i, label %for.cond42.i, !dbg !309

if.then55.i:                                      ; preds = %if.end51.i
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !310
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !107), !dbg !310
  %41 = load i32* %jrow.i, align 4, !dbg !310, !tbaa !177
  store i32 %41, i32* %pirow, align 4, !dbg !310, !tbaa !177
  store i32 %37, i32* %pjcol, align 4, !dbg !310, !tbaa !177
  br label %findPivotSH.exit, !dbg !310

if.end61.i:                                       ; preds = %for.cond.i, %for.cond42.i, %for.cond42.preheader.i, %if.then24.i, %for.cond.preheader.i
  %pivotsize.2.i = phi i32 [ %..i.i, %if.then24.i ], [ %call37.i, %for.cond42.preheader.i ], [ %..i.i, %for.cond.preheader.i ], [ %call52.i, %for.cond42.i ], [ %call29.i, %for.cond.i ]
  %ntest.3.i = phi i32 [ %inc.i, %if.then24.i ], [ %inc38.i, %for.cond42.preheader.i ], [ %inc.i, %for.cond.preheader.i ], [ %inc53.i, %for.cond42.i ], [ %inc30.i, %for.cond.i ]
  %cmp62.i = icmp eq i32 %pivotsize.2.i, 0, !dbg !312
  br i1 %cmp62.i, label %if.then63.i, label %findPivotSH.exit, !dbg !312

if.then63.i:                                      ; preds = %if.end61.i
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !313
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !313
  %42 = load i32* %irow.i, align 4, !dbg !313, !tbaa !177
  %inc64.i = add nsw i32 %ncand.0185.i, 1, !dbg !313
  call void @llvm.dbg.value(metadata !{i32 %inc64.i}, i64 0, metadata !315) #6, !dbg !313
  %idxprom65.i = sext i32 %ncand.0185.i to i64, !dbg !313
  %add.ptr3.sum.i = add i64 %idxprom65.i, %idx.ext.i, !dbg !313
  %arrayidx66.i = getelementptr inbounds i32* %10, i64 %add.ptr3.sum.i, !dbg !313
  store i32 %42, i32* %arrayidx66.i, align 4, !dbg !313, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !316
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !316
  %43 = load i32* %irow.i, align 4, !dbg !316, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !246) #6, !dbg !316
  call void @llvm.dbg.value(metadata !{i32* %jrow.i}, i64 0, metadata !107), !dbg !316
  %44 = load i32* %jrow.i, align 4, !dbg !316, !tbaa !177
  %cmp67.i = icmp eq i32 %43, %44, !dbg !316
  br i1 %cmp67.i, label %do.body.backedge.i, label %if.then68.i, !dbg !316

do.body.backedge.i:                               ; preds = %if.then68.i, %if.then63.i
  %ncand.0.be.i = phi i32 [ %inc69.i, %if.then68.i ], [ %inc64.i, %if.then63.i ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !230) #6, !dbg !231
  call void @Chv_fastBunchParlettPivot(%struct._Chv* %chv, i32* %10, i32 1, i32* %irow.i, i32* %jrow.i) #7, !dbg !233
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !234) #6, !dbg !235
  call void @llvm.dbg.value(metadata !{i32* %irow.i}, i64 0, metadata !106), !dbg !235
  %45 = load i32* %irow.i, align 4, !dbg !235, !tbaa !177
  %cmp6.i = icmp eq i32 %45, -1, !dbg !235
  br i1 %cmp6.i, label %findPivotSH.exit, label %if.else8.i, !dbg !235

if.then68.i:                                      ; preds = %if.then63.i
  %inc69.i = add nsw i32 %ncand.0185.i, 2, !dbg !317
  call void @llvm.dbg.value(metadata !{i32 %inc69.i}, i64 0, metadata !315) #6, !dbg !317
  %idxprom70.i = sext i32 %inc64.i to i64, !dbg !317
  %add.ptr3.sum153.i = add i64 %idxprom70.i, %idx.ext.i, !dbg !317
  %arrayidx71.i = getelementptr inbounds i32* %10, i64 %add.ptr3.sum153.i, !dbg !317
  store i32 %44, i32* %arrayidx71.i, align 4, !dbg !317, !tbaa !177
  br label %do.body.backedge.i

findPivotSH.exit:                                 ; preds = %if.end61.i, %do.body.backedge.i, %do.body.preheader.i, %if.then32.i, %if.then40.i, %if.then50.i, %if.then55.i
  %pivotsize.3.i = phi i32 [ 2, %if.then32.i ], [ 2, %if.then40.i ], [ 2, %if.then50.i ], [ 2, %if.then55.i ], [ 0, %do.body.preheader.i ], [ %pivotsize.2.i, %if.end61.i ], [ 0, %do.body.backedge.i ]
  %ntest.4.i = phi i32 [ %inc30.i, %if.then32.i ], [ %inc38.i, %if.then40.i ], [ %inc48.i, %if.then50.i ], [ %inc53.i, %if.then55.i ], [ %9, %do.body.preheader.i ], [ %ntest.3.i, %if.end61.i ], [ %ntest.3.i, %do.body.backedge.i ]
  store i32 %ntest.4.i, i32* %pntest, align 4, !dbg !319, !tbaa !177
  call void @llvm.lifetime.end(i64 8, i8* %5) #6, !dbg !320
  call void @llvm.lifetime.end(i64 4, i8* %6) #6, !dbg !320
  call void @llvm.lifetime.end(i64 4, i8* %7) #6, !dbg !320
  call void @llvm.dbg.value(metadata !{i32 %pivotsize.3.i}, i64 0, metadata !47), !dbg !187
  br label %if.end46, !dbg !321

if.then40:                                        ; preds = %if.end30
  %46 = bitcast double* %maxval.i106 to i8*, !dbg !322
  call void @llvm.lifetime.start(i64 8, i8* %46) #6, !dbg !322
  %47 = bitcast i32* %irow.i107 to i8*, !dbg !322
  call void @llvm.lifetime.start(i64 4, i8* %47) #6, !dbg !322
  %48 = bitcast i32* %jcol.i to i8*, !dbg !322
  call void @llvm.lifetime.start(i64 4, i8* %48) #6, !dbg !322
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !325) #6, !dbg !322
  call void @llvm.dbg.value(metadata !{%struct._DV* %workDV}, i64 0, metadata !326) #6, !dbg !327
  call void @llvm.dbg.value(metadata !{double %tau}, i64 0, metadata !328) #6, !dbg !329
  call void @llvm.dbg.value(metadata !{i32 %ndelay}, i64 0, metadata !330) #6, !dbg !331
  call void @llvm.dbg.value(metadata !{i32* %pirow}, i64 0, metadata !332) #6, !dbg !333
  call void @llvm.dbg.value(metadata !{i32* %pjcol}, i64 0, metadata !334) #6, !dbg !335
  call void @llvm.dbg.value(metadata !{i32* %pntest}, i64 0, metadata !336) #6, !dbg !337
  call void @llvm.dbg.declare(metadata !{double* %maxval.i106}, metadata !57) #6, !dbg !338
  call void @llvm.dbg.declare(metadata !{i32* %irow.i107}, metadata !62) #6, !dbg !339
  call void @llvm.dbg.declare(metadata !{i32* %jcol.i}, metadata !63) #6, !dbg !339
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !340) #6, !dbg !341
  call void @llvm.dbg.value(metadata !206, i64 0, metadata !342) #6, !dbg !343
  %nD1.i108 = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 1, !dbg !344
  %49 = load i32* %nD1.i108, align 4, !dbg !344, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %49}, i64 0, metadata !345) #6, !dbg !344
  store i32 -1, i32* %pjcol, align 4, !dbg !346, !tbaa !177
  store i32 -1, i32* %pirow, align 4, !dbg !346, !tbaa !177
  %50 = load i32* %pntest, align 4, !dbg !347, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !348) #6, !dbg !347
  %mul.i109 = shl nsw i32 %49, 2, !dbg !349
  call void @llvm.dbg.value(metadata !{i32 %mul.i109}, i64 0, metadata !351) #6, !dbg !349
  call void @DV_setSize(%struct._DV* %workDV, i32 %mul.i109) #7, !dbg !352
  %call.i110 = call double* @DV_entries(%struct._DV* %workDV) #7, !dbg !353
  call void @llvm.dbg.value(metadata !{double* %call.i110}, i64 0, metadata !354) #6, !dbg !353
  %idx.ext.i111 = sext i32 %49 to i64, !dbg !355
  %add.ptr.i112 = getelementptr inbounds double* %call.i110, i64 %idx.ext.i111, !dbg !355
  call void @llvm.dbg.value(metadata !{double* %add.ptr.i112}, i64 0, metadata !356) #6, !dbg !355
  call void @DVfill(i32 %49, double* %call.i110, double 0.000000e+00) #7, !dbg !357
  call void @DVfill(i32 %49, double* %add.ptr.i112, double 0.000000e+00) #7, !dbg !358
  %add.ptr.sum.i = shl nsw i64 %idx.ext.i111, 1, !dbg !359
  %add.ptr3.i = getelementptr inbounds double* %call.i110, i64 %add.ptr.sum.i, !dbg !359
  %51 = bitcast double* %add.ptr3.i to i32*, !dbg !359
  call void @llvm.dbg.value(metadata !{i32* %51}, i64 0, metadata !360) #6, !dbg !359
  %add.ptr5.i113 = getelementptr inbounds i32* %51, i64 %idx.ext.i111, !dbg !361
  call void @llvm.dbg.value(metadata !{i32* %add.ptr5.i113}, i64 0, metadata !362) #6, !dbg !361
  %add.ptr3.sum.i114 = add i64 %add.ptr.sum.i, %idx.ext.i111, !dbg !363
  %add.ptr7133.i = getelementptr double* %call.i110, i64 %add.ptr3.sum.i114, !dbg !363
  %add.ptr7.i = bitcast double* %add.ptr7133.i to i32*, !dbg !363
  call void @llvm.dbg.value(metadata !{i32* %add.ptr7.i}, i64 0, metadata !364) #6, !dbg !363
  %cmp.i115 = icmp sgt i32 %ndelay, 0, !dbg !365
  br i1 %cmp.i115, label %if.then.i117, label %if.else.i118, !dbg !365

if.then.i117:                                     ; preds = %if.then40
  call void @IVfill(i32 %ndelay, i32* %51, i32 0) #7, !dbg !366
  %sub.i116 = sub nsw i32 %49, %ndelay, !dbg !368
  %idx.ext10.i = sext i32 %ndelay to i64, !dbg !368
  %add.ptr11.i = getelementptr inbounds i32* %51, i64 %idx.ext10.i, !dbg !368
  call void @IVfill(i32 %sub.i116, i32* %add.ptr11.i, i32 1) #7, !dbg !368
  call void @IVfill(i32 %ndelay, i32* %add.ptr5.i113, i32 0) #7, !dbg !369
  %add.ptr5.sum136.i = add i64 %idx.ext.i111, %idx.ext10.i, !dbg !370
  %add.ptr14.i = getelementptr inbounds i32* %51, i64 %add.ptr5.sum136.i, !dbg !370
  call void @IVfill(i32 %sub.i116, i32* %add.ptr14.i, i32 1) #7, !dbg !370
  br label %do.body.i, !dbg !371

if.else.i118:                                     ; preds = %if.then40
  call void @IVfill(i32 %49, i32* %51, i32 1) #7, !dbg !372
  call void @IVfill(i32 %49, i32* %add.ptr5.i113, i32 1) #7, !dbg !374
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i118, %if.then.i117, %do.cond.i
  %indvars.iv156.i = phi i64 [ %indvars.iv.next157.i, %do.cond.i ], [ 0, %if.then.i117 ], [ 0, %if.else.i118 ]
  %ntest.0.i = phi i32 [ %ntest.2.i, %do.cond.i ], [ %50, %if.then.i117 ], [ %50, %if.else.i118 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !375) #6, !dbg !376
  %call15.i = call double @Chv_quasimax(%struct._Chv* %chv, i32* %51, i32* %add.ptr5.i113, i32 1, i32* %irow.i107, i32* %jcol.i) #7, !dbg !378
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !379) #6, !dbg !380
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !62), !dbg !380
  %52 = load i32* %irow.i107, align 4, !dbg !380, !tbaa !177
  %cmp16.i = icmp eq i32 %52, -1, !dbg !380
  br i1 %cmp16.i, label %findPivotN.exit, label %if.else18.i, !dbg !380

if.else18.i:                                      ; preds = %do.body.i
  %call19.i = call i32 @Chv_maxabsInRow(%struct._Chv* %chv, i32 %52, double* %maxval.i106) #7, !dbg !381
  call void @llvm.dbg.value(metadata !{double* %maxval.i106}, i64 0, metadata !383) #6, !dbg !384
  call void @llvm.dbg.value(metadata !{double* %maxval.i106}, i64 0, metadata !57), !dbg !384
  %53 = load double* %maxval.i106, align 8, !dbg !384, !tbaa !243
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !379) #6, !dbg !384
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !62), !dbg !384
  %54 = load i32* %irow.i107, align 4, !dbg !384, !tbaa !177
  %idxprom.i119 = sext i32 %54 to i64, !dbg !384
  %arrayidx.i120 = getelementptr inbounds double* %call.i110, i64 %idxprom.i119, !dbg !384
  store double %53, double* %arrayidx.i120, align 8, !dbg !384, !tbaa !243
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !385) #6, !dbg !386
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !63), !dbg !386
  %55 = load i32* %jcol.i, align 4, !dbg !386, !tbaa !177
  %call20.i = call i32 @Chv_maxabsInColumn(%struct._Chv* %chv, i32 %55, double* %maxval.i106) #7, !dbg !386
  call void @llvm.dbg.value(metadata !{double* %maxval.i106}, i64 0, metadata !383) #6, !dbg !387
  call void @llvm.dbg.value(metadata !{double* %maxval.i106}, i64 0, metadata !57), !dbg !387
  %56 = load double* %maxval.i106, align 8, !dbg !387, !tbaa !243
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !385) #6, !dbg !387
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !63), !dbg !387
  %57 = load i32* %jcol.i, align 4, !dbg !387, !tbaa !177
  %idxprom21.i = sext i32 %57 to i64, !dbg !387
  %add.ptr.sum134.i = add i64 %idxprom21.i, %idx.ext.i111, !dbg !387
  %arrayidx22.i = getelementptr inbounds double* %call.i110, i64 %add.ptr.sum134.i, !dbg !387
  store double %56, double* %arrayidx22.i, align 8, !dbg !387, !tbaa !243
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !379) #6, !dbg !388
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !62), !dbg !388
  %58 = load i32* %irow.i107, align 4, !dbg !388, !tbaa !177
  %idxprom23.i = sext i32 %58 to i64, !dbg !388
  %arrayidx24.i = getelementptr inbounds i32* %51, i64 %idxprom23.i, !dbg !388
  store i32 0, i32* %arrayidx24.i, align 4, !dbg !388, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !385) #6, !dbg !389
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !63), !dbg !389
  %59 = load i32* %jcol.i, align 4, !dbg !389, !tbaa !177
  %idxprom25.i = sext i32 %59 to i64, !dbg !389
  %add.ptr5.sum.i = add i64 %idxprom25.i, %idx.ext.i111, !dbg !389
  %arrayidx26.i = getelementptr inbounds i32* %51, i64 %add.ptr5.sum.i, !dbg !389
  store i32 0, i32* %arrayidx26.i, align 4, !dbg !389, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !379) #6, !dbg !390
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !62), !dbg !390
  %60 = load i32* %irow.i107, align 4, !dbg !390, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !385) #6, !dbg !390
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !63), !dbg !390
  %61 = load i32* %jcol.i, align 4, !dbg !390, !tbaa !177
  %call27.i = call fastcc i32 @nonsym1x1(%struct._Chv* %chv, i32 %60, i32 %61, double %tau, double* %call.i110, double* %add.ptr.i112) #7, !dbg !390
  call void @llvm.dbg.value(metadata !{i32 %call27.i}, i64 0, metadata !375) #6, !dbg !390
  %inc.i121 = add nsw i32 %ntest.0.i, 1, !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %inc.i121}, i64 0, metadata !348) #6, !dbg !391
  %cmp28.i = icmp eq i32 %call27.i, 1, !dbg !392
  br i1 %cmp28.i, label %do.cond.thread.i, label %for.cond.preheader.i122, !dbg !392

for.cond.preheader.i122:                          ; preds = %if.else18.i
  %62 = trunc i64 %indvars.iv156.i to i32, !dbg !393
  %cmp31144.i = icmp sgt i32 %62, 0, !dbg !393
  br i1 %cmp31144.i, label %for.body.i126, label %do.cond.i, !dbg !393

do.cond.thread.i:                                 ; preds = %if.else18.i
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !379) #6, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !62), !dbg !396
  %63 = load i32* %irow.i107, align 4, !dbg !396, !tbaa !177
  store i32 %63, i32* %pirow, align 4, !dbg !396, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !385) #6, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !63), !dbg !396
  %64 = load i32* %jcol.i, align 4, !dbg !396, !tbaa !177
  store i32 %64, i32* %pjcol, align 4, !dbg !396, !tbaa !177
  br label %findPivotN.exit, !dbg !398

for.cond.i124:                                    ; preds = %if.end40.i
  %65 = trunc i64 %indvars.iv.next.i128 to i32, !dbg !393
  %cmp31.i123 = icmp slt i32 %65, %62, !dbg !393
  br i1 %cmp31.i123, label %for.body.i126, label %do.cond.i, !dbg !393

for.body.i126:                                    ; preds = %for.cond.preheader.i122, %for.cond.i124
  %indvars.iv.i125 = phi i64 [ %indvars.iv.next.i128, %for.cond.i124 ], [ 0, %for.cond.preheader.i122 ]
  %ntest.1145.i = phi i32 [ %inc42.i, %for.cond.i124 ], [ %inc.i121, %for.cond.preheader.i122 ]
  %arrayidx33.i = getelementptr inbounds i32* %add.ptr7.i, i64 %indvars.iv.i125, !dbg !399
  %66 = load i32* %arrayidx33.i, align 4, !dbg !399, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %66}, i64 0, metadata !401) #6, !dbg !399
  %add.ptr9.sum135.i = add i64 %indvars.iv.i125, %idx.ext.i111, !dbg !402
  %arrayidx35.i = getelementptr inbounds i32* %add.ptr7.i, i64 %add.ptr9.sum135.i, !dbg !402
  %67 = load i32* %arrayidx35.i, align 4, !dbg !402, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32 %67}, i64 0, metadata !403) #6, !dbg !402
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !379) #6, !dbg !404
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !62), !dbg !404
  %68 = load i32* %irow.i107, align 4, !dbg !404, !tbaa !177
  %call36.i = call fastcc i32 @nonsym1x1(%struct._Chv* %chv, i32 %68, i32 %67, double %tau, double* %call.i110, double* %add.ptr.i112) #7, !dbg !404
  call void @llvm.dbg.value(metadata !{i32 %call36.i}, i64 0, metadata !375) #6, !dbg !404
  %cmp38.i = icmp eq i32 %call36.i, 1, !dbg !405
  br i1 %cmp38.i, label %if.then39.i, label %if.end40.i, !dbg !405

if.then39.i:                                      ; preds = %for.body.i126
  %inc37.i = add nsw i32 %ntest.1145.i, 1, !dbg !406
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !379) #6, !dbg !407
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !62), !dbg !407
  %69 = load i32* %irow.i107, align 4, !dbg !407, !tbaa !177
  store i32 %69, i32* %pirow, align 4, !dbg !407, !tbaa !177
  store i32 %67, i32* %pjcol, align 4, !dbg !407, !tbaa !177
  br label %do.cond.i, !dbg !407

if.end40.i:                                       ; preds = %for.body.i126
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !385) #6, !dbg !409
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !63), !dbg !409
  %70 = load i32* %jcol.i, align 4, !dbg !409, !tbaa !177
  %call41.i = call fastcc i32 @nonsym1x1(%struct._Chv* %chv, i32 %66, i32 %70, double %tau, double* %call.i110, double* %add.ptr.i112) #7, !dbg !409
  call void @llvm.dbg.value(metadata !{i32 %call41.i}, i64 0, metadata !375) #6, !dbg !409
  %inc42.i = add nsw i32 %ntest.1145.i, 2, !dbg !410
  call void @llvm.dbg.value(metadata !{i32 %inc42.i}, i64 0, metadata !348) #6, !dbg !410
  %cmp43.i127 = icmp eq i32 %call41.i, 1, !dbg !411
  %indvars.iv.next.i128 = add i64 %indvars.iv.i125, 1, !dbg !393
  br i1 %cmp43.i127, label %if.then44.i, label %for.cond.i124, !dbg !411

if.then44.i:                                      ; preds = %if.end40.i
  store i32 %66, i32* %pirow, align 4, !dbg !412, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !385) #6, !dbg !412
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !63), !dbg !412
  %71 = load i32* %jcol.i, align 4, !dbg !412, !tbaa !177
  store i32 %71, i32* %pjcol, align 4, !dbg !412, !tbaa !177
  br label %do.cond.i, !dbg !412

do.cond.i:                                        ; preds = %for.cond.i124, %for.cond.preheader.i122, %if.then44.i, %if.then39.i
  %pivotsize.1.i = phi i32 [ 1, %if.then39.i ], [ 1, %if.then44.i ], [ %call27.i, %for.cond.preheader.i122 ], [ %call41.i, %for.cond.i124 ]
  %ntest.2.i = phi i32 [ %inc37.i, %if.then39.i ], [ %inc42.i, %if.then44.i ], [ %inc.i121, %for.cond.preheader.i122 ], [ %inc42.i, %for.cond.i124 ]
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !379) #6, !dbg !414
  call void @llvm.dbg.value(metadata !{i32* %irow.i107}, i64 0, metadata !62), !dbg !414
  %72 = load i32* %irow.i107, align 4, !dbg !414, !tbaa !177
  %arrayidx48.i = getelementptr inbounds i32* %add.ptr7.i, i64 %indvars.iv156.i, !dbg !414
  store i32 %72, i32* %arrayidx48.i, align 4, !dbg !414, !tbaa !177
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !385) #6, !dbg !415
  call void @llvm.dbg.value(metadata !{i32* %jcol.i}, i64 0, metadata !63), !dbg !415
  %73 = load i32* %jcol.i, align 4, !dbg !415, !tbaa !177
  %add.ptr9.sum.i = add i64 %indvars.iv156.i, %idx.ext.i111, !dbg !415
  %arrayidx50.i = getelementptr inbounds i32* %add.ptr7.i, i64 %add.ptr9.sum.i, !dbg !415
  store i32 %73, i32* %arrayidx50.i, align 4, !dbg !415, !tbaa !177
  %indvars.iv.next157.i = add i64 %indvars.iv156.i, 1, !dbg !398
  %cmp54.i129 = icmp eq i32 %pivotsize.1.i, 0, !dbg !398
  br i1 %cmp54.i129, label %do.body.i, label %findPivotN.exit, !dbg !398

findPivotN.exit:                                  ; preds = %do.body.i, %do.cond.i, %do.cond.thread.i
  %pivotsize.3.i130 = phi i32 [ 1, %do.cond.thread.i ], [ 0, %do.body.i ], [ %pivotsize.1.i, %do.cond.i ]
  %ntest.4.i131 = phi i32 [ %inc.i121, %do.cond.thread.i ], [ %ntest.0.i, %do.body.i ], [ %ntest.2.i, %do.cond.i ]
  store i32 %ntest.4.i131, i32* %pntest, align 4, !dbg !416, !tbaa !177
  call void @llvm.lifetime.end(i64 8, i8* %46) #6, !dbg !417
  call void @llvm.lifetime.end(i64 4, i8* %47) #6, !dbg !417
  call void @llvm.lifetime.end(i64 4, i8* %48) #6, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %pivotsize.3.i130}, i64 0, metadata !47), !dbg !323
  br label %if.end46

if.else42:                                        ; preds = %if.end30
  %74 = load %struct._IO_FILE** @stderr, align 8, !dbg !418, !tbaa !172
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([70 x i8]* @.str3, i64 0, i64 0), %struct._Chv* %chv, %struct._DV* %workDV, double %tau, i32 %ndelay, i32* %pirow, i32* %pjcol, i32* %pntest, i32 %3) #7, !dbg !418
  call void @exit(i32 -1) #8, !dbg !420
  unreachable, !dbg !420

if.end46:                                         ; preds = %findPivotN.exit, %findPivotSH.exit
  %rc.0 = phi i32 [ %pivotsize.3.i, %findPivotSH.exit ], [ %pivotsize.3.i130, %findPivotN.exit ]
  ret i32 %rc.0, !dbg !421
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #4

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: optsize
declare void @DVfill(i32, double*, double) #4

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #4

; Function Attrs: optsize
declare double @Chv_quasimax(%struct._Chv*, i32*, i32*, i32, i32*, i32*) #4

; Function Attrs: optsize
declare i32 @Chv_maxabsInRow(%struct._Chv*, i32, double*) #4

; Function Attrs: optsize
declare i32 @Chv_maxabsInColumn(%struct._Chv*, i32, double*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @nonsym1x1(%struct._Chv* %chv, i32 %irow, i32 %jcol, double %tau, double* nocapture %rowmaxes, double* nocapture %colmaxes) #0 {
entry:
  %value = alloca double, align 8
  %imag = alloca double, align 8
  %real = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !80), !dbg !422
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !81), !dbg !423
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !82), !dbg !424
  call void @llvm.dbg.value(metadata !{double %tau}, i64 0, metadata !83), !dbg !425
  call void @llvm.dbg.value(metadata !{double* %rowmaxes}, i64 0, metadata !84), !dbg !426
  call void @llvm.dbg.value(metadata !{double* %colmaxes}, i64 0, metadata !85), !dbg !427
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !428
  %0 = load i32* %type, align 4, !dbg !428, !tbaa !177
  switch i32 %0, label %if.end5 [
    i32 1, label %if.then
    i32 2, label %if.then3
  ], !dbg !428

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata !{double* %value}, metadata !89), !dbg !429
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %value) #7, !dbg !430
  call void @llvm.dbg.value(metadata !{double* %value}, i64 0, metadata !89), !dbg !431
  %1 = load double* %value, align 8, !dbg !431, !tbaa !243
  %call = call double @fabs(double %1) #9, !dbg !431
  call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !87), !dbg !431
  br label %if.end5, !dbg !432

if.then3:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata !{double* %imag}, metadata !91), !dbg !433
  call void @llvm.dbg.declare(metadata !{double* %real}, metadata !93), !dbg !433
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %real, double* %imag) #7, !dbg !434
  call void @llvm.dbg.value(metadata !{double* %real}, i64 0, metadata !93), !dbg !435
  %2 = load double* %real, align 8, !dbg !435, !tbaa !243
  call void @llvm.dbg.value(metadata !{double* %imag}, i64 0, metadata !91), !dbg !435
  %3 = load double* %imag, align 8, !dbg !435, !tbaa !243
  %call4 = call double @Zabs(double %2, double %3) #7, !dbg !435
  call void @llvm.dbg.value(metadata !{double %call4}, i64 0, metadata !87), !dbg !435
  br label %if.end5, !dbg !436

if.end5:                                          ; preds = %entry, %if.then3, %if.then
  %magn.0 = phi double [ %call, %if.then ], [ %call4, %if.then3 ], [ undef, %entry ]
  %mul = fmul double %magn.0, %tau, !dbg !437
  call void @llvm.dbg.value(metadata !{double %mul}, i64 0, metadata !86), !dbg !437
  %idxprom = sext i32 %irow to i64, !dbg !438
  %arrayidx = getelementptr inbounds double* %rowmaxes, i64 %idxprom, !dbg !438
  %4 = load double* %arrayidx, align 8, !dbg !438, !tbaa !243
  %cmp6 = fcmp ugt double %4, %mul, !dbg !438
  br i1 %cmp6, label %if.else11, label %land.lhs.true, !dbg !438

land.lhs.true:                                    ; preds = %if.end5
  %idxprom7 = sext i32 %jcol to i64, !dbg !438
  %arrayidx8 = getelementptr inbounds double* %colmaxes, i64 %idxprom7, !dbg !438
  %5 = load double* %arrayidx8, align 8, !dbg !438, !tbaa !243
  %cmp9 = fcmp ugt double %5, %mul, !dbg !438
  br i1 %cmp9, label %if.else11, label %if.end12, !dbg !438

if.else11:                                        ; preds = %land.lhs.true, %if.end5
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !88), !dbg !439
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.else11
  %rc.0 = phi i32 [ 0, %if.else11 ], [ 1, %land.lhs.true ]
  ret i32 %rc.0, !dbg !441
}

; Function Attrs: optsize
declare void @Chv_realEntry(%struct._Chv*, i32, i32, double*) #4

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: optsize
declare void @Chv_complexEntry(%struct._Chv*, i32, i32, double*, double*) #4

; Function Attrs: optsize
declare double @Zabs(double, double) #4

; Function Attrs: optsize
declare void @Chv_fastBunchParlettPivot(%struct._Chv*, i32*, i32, i32*, i32*) #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @sym2x2(%struct._Chv* %chv, i32 %irow, i32 %jcol, double %tau, double* nocapture %rowmaxes) #0 {
entry:
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %aimag = alloca double, align 8
  %areal = alloca double, align 8
  %bimag = alloca double, align 8
  %breal = alloca double, align 8
  %cimag = alloca double, align 8
  %creal = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct._Chv* %chv}, i64 0, metadata !122), !dbg !442
  call void @llvm.dbg.value(metadata !{i32 %irow}, i64 0, metadata !123), !dbg !443
  call void @llvm.dbg.value(metadata !{i32 %jcol}, i64 0, metadata !124), !dbg !444
  call void @llvm.dbg.value(metadata !{double %tau}, i64 0, metadata !125), !dbg !445
  call void @llvm.dbg.value(metadata !{double* %rowmaxes}, i64 0, metadata !126), !dbg !446
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4, !dbg !447
  %0 = load i32* %type, align 4, !dbg !447, !tbaa !177
  switch i32 %0, label %if.end44 [
    i32 1, label %if.then
    i32 2, label %if.then7
  ], !dbg !447

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata !{double* %a}, metadata !134), !dbg !448
  call void @llvm.dbg.declare(metadata !{double* %b}, metadata !136), !dbg !448
  call void @llvm.dbg.declare(metadata !{double* %c}, metadata !137), !dbg !448
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %irow, i32 %irow, double* %a) #7, !dbg !449
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %b) #7, !dbg !450
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %jcol, i32 %jcol, double* %c) #7, !dbg !451
  call void @llvm.dbg.value(metadata !{double* %a}, i64 0, metadata !134), !dbg !452
  %1 = load double* %a, align 8, !dbg !452, !tbaa !243
  %call = call double @fabs(double %1) #9, !dbg !452
  call void @llvm.dbg.value(metadata !{double %call}, i64 0, metadata !127), !dbg !452
  call void @llvm.dbg.value(metadata !{double* %b}, i64 0, metadata !136), !dbg !453
  %2 = load double* %b, align 8, !dbg !453, !tbaa !243
  %call1 = call double @fabs(double %2) #9, !dbg !453
  call void @llvm.dbg.value(metadata !{double %call1}, i64 0, metadata !128), !dbg !453
  call void @llvm.dbg.value(metadata !{double* %c}, i64 0, metadata !137), !dbg !454
  %3 = load double* %c, align 8, !dbg !454, !tbaa !243
  %call2 = call double @fabs(double %3) #9, !dbg !454
  call void @llvm.dbg.value(metadata !{double %call2}, i64 0, metadata !129), !dbg !454
  %mul = fmul double %1, %3, !dbg !455
  %mul3 = fmul double %2, %2, !dbg !455
  %sub = fsub double %mul, %mul3, !dbg !455
  %call4 = call double @fabs(double %sub) #9, !dbg !455
  call void @llvm.dbg.value(metadata !{double %call4}, i64 0, metadata !130), !dbg !455
  br label %if.end41, !dbg !456

if.then7:                                         ; preds = %entry
  call void @llvm.dbg.declare(metadata !{double* %aimag}, metadata !138), !dbg !457
  call void @llvm.dbg.declare(metadata !{double* %areal}, metadata !140), !dbg !457
  call void @llvm.dbg.declare(metadata !{double* %bimag}, metadata !141), !dbg !457
  call void @llvm.dbg.declare(metadata !{double* %breal}, metadata !142), !dbg !457
  call void @llvm.dbg.declare(metadata !{double* %cimag}, metadata !143), !dbg !457
  call void @llvm.dbg.declare(metadata !{double* %creal}, metadata !144), !dbg !457
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %irow, i32 %irow, double* %areal, double* %aimag) #7, !dbg !458
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %irow, i32 %jcol, double* %breal, double* %bimag) #7, !dbg !459
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %jcol, i32 %jcol, double* %creal, double* %cimag) #7, !dbg !460
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5, !dbg !461
  %4 = load i32* %symflag, align 4, !dbg !461, !tbaa !177
  switch i32 %4, label %if.end44 [
    i32 1, label %if.then9
    i32 0, label %if.then22
  ], !dbg !461

if.then9:                                         ; preds = %if.then7
  call void @llvm.dbg.value(metadata !{double* %areal}, i64 0, metadata !140), !dbg !462
  %5 = load double* %areal, align 8, !dbg !462, !tbaa !243
  %call10 = call double @fabs(double %5) #9, !dbg !462
  call void @llvm.dbg.value(metadata !{double %call10}, i64 0, metadata !127), !dbg !462
  call void @llvm.dbg.value(metadata !{double* %breal}, i64 0, metadata !142), !dbg !464
  %6 = load double* %breal, align 8, !dbg !464, !tbaa !243
  call void @llvm.dbg.value(metadata !{double* %bimag}, i64 0, metadata !141), !dbg !464
  %7 = load double* %bimag, align 8, !dbg !464, !tbaa !243
  %call11 = call double @Zabs(double %6, double %7) #7, !dbg !464
  call void @llvm.dbg.value(metadata !{double %call11}, i64 0, metadata !128), !dbg !464
  call void @llvm.dbg.value(metadata !{double* %creal}, i64 0, metadata !144), !dbg !465
  %8 = load double* %creal, align 8, !dbg !465, !tbaa !243
  %call12 = call double @fabs(double %8) #9, !dbg !465
  call void @llvm.dbg.value(metadata !{double %call12}, i64 0, metadata !129), !dbg !465
  call void @llvm.dbg.value(metadata !{double* %areal}, i64 0, metadata !140), !dbg !466
  %9 = load double* %areal, align 8, !dbg !466, !tbaa !243
  %mul13 = fmul double %8, %9, !dbg !466
  call void @llvm.dbg.value(metadata !{double* %breal}, i64 0, metadata !142), !dbg !466
  %10 = load double* %breal, align 8, !dbg !466, !tbaa !243
  %mul14 = fmul double %10, %10, !dbg !466
  %sub15 = fsub double %mul13, %mul14, !dbg !466
  call void @llvm.dbg.value(metadata !{double* %bimag}, i64 0, metadata !141), !dbg !466
  %11 = load double* %bimag, align 8, !dbg !466, !tbaa !243
  %mul16 = fmul double %11, %11, !dbg !466
  %sub17 = fsub double %sub15, %mul16, !dbg !466
  %call18 = call double @fabs(double %sub17) #9, !dbg !466
  call void @llvm.dbg.value(metadata !{double %call18}, i64 0, metadata !130), !dbg !466
  br label %if.end41, !dbg !467

if.then22:                                        ; preds = %if.then7
  call void @llvm.dbg.value(metadata !{double* %areal}, i64 0, metadata !140), !dbg !468
  %12 = load double* %areal, align 8, !dbg !468, !tbaa !243
  call void @llvm.dbg.value(metadata !{double* %aimag}, i64 0, metadata !138), !dbg !468
  %13 = load double* %aimag, align 8, !dbg !468, !tbaa !243
  %call23 = call double @Zabs(double %12, double %13) #7, !dbg !468
  call void @llvm.dbg.value(metadata !{double %call23}, i64 0, metadata !127), !dbg !468
  call void @llvm.dbg.value(metadata !{double* %breal}, i64 0, metadata !142), !dbg !470
  %14 = load double* %breal, align 8, !dbg !470, !tbaa !243
  call void @llvm.dbg.value(metadata !{double* %bimag}, i64 0, metadata !141), !dbg !470
  %15 = load double* %bimag, align 8, !dbg !470, !tbaa !243
  %call24 = call double @Zabs(double %14, double %15) #7, !dbg !470
  call void @llvm.dbg.value(metadata !{double %call24}, i64 0, metadata !128), !dbg !470
  call void @llvm.dbg.value(metadata !{double* %creal}, i64 0, metadata !144), !dbg !471
  %16 = load double* %creal, align 8, !dbg !471, !tbaa !243
  call void @llvm.dbg.value(metadata !{double* %cimag}, i64 0, metadata !143), !dbg !471
  %17 = load double* %cimag, align 8, !dbg !471, !tbaa !243
  %call25 = call double @Zabs(double %16, double %17) #7, !dbg !471
  call void @llvm.dbg.value(metadata !{double %call25}, i64 0, metadata !129), !dbg !471
  call void @llvm.dbg.value(metadata !{double* %areal}, i64 0, metadata !140), !dbg !472
  %18 = load double* %areal, align 8, !dbg !472, !tbaa !243
  call void @llvm.dbg.value(metadata !{double* %creal}, i64 0, metadata !144), !dbg !472
  %19 = load double* %creal, align 8, !dbg !472, !tbaa !243
  %mul26 = fmul double %18, %19, !dbg !472
  call void @llvm.dbg.value(metadata !{double* %aimag}, i64 0, metadata !138), !dbg !472
  %20 = load double* %aimag, align 8, !dbg !472, !tbaa !243
  call void @llvm.dbg.value(metadata !{double* %cimag}, i64 0, metadata !143), !dbg !472
  %21 = load double* %cimag, align 8, !dbg !472, !tbaa !243
  %mul27 = fmul double %20, %21, !dbg !472
  %sub28 = fsub double %mul26, %mul27, !dbg !472
  call void @llvm.dbg.value(metadata !{double* %breal}, i64 0, metadata !142), !dbg !472
  %22 = load double* %breal, align 8, !dbg !472, !tbaa !243
  %mul29 = fmul double %22, %22, !dbg !472
  %sub30 = fsub double %sub28, %mul29, !dbg !472
  call void @llvm.dbg.value(metadata !{double* %bimag}, i64 0, metadata !141), !dbg !472
  %23 = load double* %bimag, align 8, !dbg !472, !tbaa !243
  %mul31 = fmul double %23, %23, !dbg !472
  %add = fadd double %sub30, %mul31, !dbg !472
  call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !146), !dbg !472
  %mul32 = fmul double %18, %21, !dbg !473
  %mul33 = fmul double %19, %20, !dbg !473
  %add34 = fadd double %mul33, %mul32, !dbg !473
  %mul35 = fmul double %22, 2.000000e+00, !dbg !473
  %mul36 = fmul double %mul35, %23, !dbg !473
  %sub37 = fsub double %add34, %mul36, !dbg !473
  call void @llvm.dbg.value(metadata !{double %sub37}, i64 0, metadata !145), !dbg !473
  %call38 = call double @Zabs(double %add, double %sub37) #7, !dbg !474
  call void @llvm.dbg.value(metadata !{double %call38}, i64 0, metadata !130), !dbg !474
  br label %if.end41, !dbg !475

if.end41:                                         ; preds = %if.then22, %if.then9, %if.then
  %denom.0 = phi double [ %call4, %if.then ], [ %call18, %if.then9 ], [ %call38, %if.then22 ]
  %cmag.0 = phi double [ %call2, %if.then ], [ %call12, %if.then9 ], [ %call25, %if.then22 ]
  %bmag.0 = phi double [ %call1, %if.then ], [ %call11, %if.then9 ], [ %call24, %if.then22 ]
  %amag.0 = phi double [ %call, %if.then ], [ %call10, %if.then9 ], [ %call23, %if.then22 ]
  %cmp42 = fcmp oeq double %denom.0, 0.000000e+00, !dbg !476
  br i1 %cmp42, label %return, label %if.end44, !dbg !476

if.end44:                                         ; preds = %if.then7, %entry, %if.end41
  %amag.096 = phi double [ %amag.0, %if.end41 ], [ undef, %entry ], [ undef, %if.then7 ]
  %bmag.095 = phi double [ %bmag.0, %if.end41 ], [ undef, %entry ], [ undef, %if.then7 ]
  %cmag.094 = phi double [ %cmag.0, %if.end41 ], [ undef, %entry ], [ undef, %if.then7 ]
  %denom.093 = phi double [ %denom.0, %if.end41 ], [ undef, %entry ], [ undef, %if.then7 ]
  %idxprom = sext i32 %irow to i64, !dbg !477
  %arrayidx = getelementptr inbounds double* %rowmaxes, i64 %idxprom, !dbg !477
  %24 = load double* %arrayidx, align 8, !dbg !477, !tbaa !243
  %mul45 = fmul double %cmag.094, %24, !dbg !477
  %idxprom46 = sext i32 %jcol to i64, !dbg !477
  %arrayidx47 = getelementptr inbounds double* %rowmaxes, i64 %idxprom46, !dbg !477
  %25 = load double* %arrayidx47, align 8, !dbg !477, !tbaa !243
  %mul48 = fmul double %bmag.095, %25, !dbg !477
  %add49 = fadd double %mul45, %mul48, !dbg !477
  %div = fdiv double %add49, %denom.093, !dbg !477
  call void @llvm.dbg.value(metadata !{double %div}, i64 0, metadata !131), !dbg !477
  call void @llvm.dbg.value(metadata !{double %div57}, i64 0, metadata !132), !dbg !478
  %cmp58 = fcmp ugt double %div, %tau, !dbg !479
  br i1 %cmp58, label %if.else61, label %land.lhs.true, !dbg !479

land.lhs.true:                                    ; preds = %if.end44
  %mul55 = fmul double %amag.096, %25, !dbg !478
  %mul52 = fmul double %bmag.095, %24, !dbg !478
  %add56 = fadd double %mul52, %mul55, !dbg !478
  %div57 = fdiv double %add56, %denom.093, !dbg !478
  %cmp59 = fcmp ugt double %div57, %tau, !dbg !479
  br i1 %cmp59, label %if.else61, label %return, !dbg !479

if.else61:                                        ; preds = %land.lhs.true, %if.end44
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !133), !dbg !480
  br label %return

return:                                           ; preds = %if.else61, %land.lhs.true, %if.end41
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 0, %if.else61 ], [ 2, %land.lhs.true ]
  ret i32 %retval.0, !dbg !482
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !48, metadata !76, metadata !94, metadata !118, metadata !147}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Chv_findPivot", metadata !"Chv_findPivot", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, %struct._DV*, double, i32, i32*, i32*, i32*)* @Chv_findPivot, null, null, metadata !39, i32 48} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 48] [Chv_findPivot]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !38, metadata !25, metadata !8, metadata !21, metadata !21, metadata !21}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_Chv", i32 31, i64 640, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Chv] [line 31, size 640, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../Chv.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !22, metadata !23, metadata !26, metadata !35}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"id", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [id] [line 32, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nD", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [nD] [line 33, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nL", i32 34, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nL] [line 34, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nU", i32 35, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nU] [line 35, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 36, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 36, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"symflag", i32 37, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [symflag] [line 37, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowind", i32 38, i64 64, i64 64, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [rowind] [line 38, size 64, align 64, offset 192] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colind", i32 39, i64 64, i64 64, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [colind] [line 39, size 64, align 64, offset 256] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 40, i64 64, i64 64, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [entries] [line 40, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"wrkDV", i32 41, i64 192, i64 64, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [wrkDV] [line 41, size 192, align 64, offset 384] [from DV]
!27 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!28 = metadata !{i32 786451, metadata !29, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !30, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!29 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!30 = metadata !{metadata !31, metadata !32, metadata !33, metadata !34}
!31 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!32 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!33 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!34 = metadata !{i32 786445, metadata !29, metadata !28, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!35 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 42, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [next] [line 42, size 64, align 64, offset 576] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Chv]
!37 = metadata !{i32 786454, metadata !12, null, metadata !"Chv", i32 30, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [Chv] [line 30, size 0, align 0, offset 0] [from _Chv]
!38 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DV]
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47}
!40 = metadata !{i32 786689, metadata !4, metadata !"chv", metadata !5, i32 16777257, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 41]
!41 = metadata !{i32 786689, metadata !4, metadata !"workDV", metadata !5, i32 33554474, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [workDV] [line 42]
!42 = metadata !{i32 786689, metadata !4, metadata !"tau", metadata !5, i32 50331691, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tau] [line 43]
!43 = metadata !{i32 786689, metadata !4, metadata !"ndelay", metadata !5, i32 67108908, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndelay] [line 44]
!44 = metadata !{i32 786689, metadata !4, metadata !"pirow", metadata !5, i32 83886125, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pirow] [line 45]
!45 = metadata !{i32 786689, metadata !4, metadata !"pjcol", metadata !5, i32 100663342, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pjcol] [line 46]
!46 = metadata !{i32 786689, metadata !4, metadata !"pntest", metadata !5, i32 117440559, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pntest] [line 47]
!47 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 49]
!48 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"findPivotN", metadata !"findPivotN", metadata !"", i32 318, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !49, i32 326} ; [ DW_TAG_subprogram ] [line 318] [local] [def] [scope 326] [findPivotN]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75}
!50 = metadata !{i32 786689, metadata !48, metadata !"chv", metadata !5, i32 16777535, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 319]
!51 = metadata !{i32 786689, metadata !48, metadata !"workDV", metadata !5, i32 33554752, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [workDV] [line 320]
!52 = metadata !{i32 786689, metadata !48, metadata !"tau", metadata !5, i32 50331969, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tau] [line 321]
!53 = metadata !{i32 786689, metadata !48, metadata !"ndelay", metadata !5, i32 67109186, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndelay] [line 322]
!54 = metadata !{i32 786689, metadata !48, metadata !"pirow", metadata !5, i32 83886403, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pirow] [line 323]
!55 = metadata !{i32 786689, metadata !48, metadata !"pjcol", metadata !5, i32 100663620, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pjcol] [line 324]
!56 = metadata !{i32 786689, metadata !48, metadata !"pntest", metadata !5, i32 117440837, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pntest] [line 325]
!57 = metadata !{i32 786688, metadata !48, metadata !"maxval", metadata !5, i32 327, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 327]
!58 = metadata !{i32 786688, metadata !48, metadata !"colmaxes", metadata !5, i32 328, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colmaxes] [line 328]
!59 = metadata !{i32 786688, metadata !48, metadata !"rowmaxes", metadata !5, i32 328, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowmaxes] [line 328]
!60 = metadata !{i32 786688, metadata !48, metadata !"icol", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [icol] [line 329]
!61 = metadata !{i32 786688, metadata !48, metadata !"ii", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 329]
!62 = metadata !{i32 786688, metadata !48, metadata !"irow", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 329]
!63 = metadata !{i32 786688, metadata !48, metadata !"jcol", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 329]
!64 = metadata !{i32 786688, metadata !48, metadata !"jrow", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 329]
!65 = metadata !{i32 786688, metadata !48, metadata !"ncand", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncand] [line 329]
!66 = metadata !{i32 786688, metadata !48, metadata !"nD", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 329]
!67 = metadata !{i32 786688, metadata !48, metadata !"ndouble", metadata !5, i32 330, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndouble] [line 330]
!68 = metadata !{i32 786688, metadata !48, metadata !"ntest", metadata !5, i32 330, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntest] [line 330]
!69 = metadata !{i32 786688, metadata !48, metadata !"pivotsize", metadata !5, i32 330, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsize] [line 330]
!70 = metadata !{i32 786688, metadata !48, metadata !"tag", metadata !5, i32 330, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tag] [line 330]
!71 = metadata !{i32 786688, metadata !48, metadata !"untag", metadata !5, i32 330, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [untag] [line 330]
!72 = metadata !{i32 786688, metadata !48, metadata !"colids", metadata !5, i32 331, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 331]
!73 = metadata !{i32 786688, metadata !48, metadata !"colmark", metadata !5, i32 331, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colmark] [line 331]
!74 = metadata !{i32 786688, metadata !48, metadata !"rowids", metadata !5, i32 331, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 331]
!75 = metadata !{i32 786688, metadata !48, metadata !"rowmark", metadata !5, i32 331, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowmark] [line 331]
!76 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"nonsym1x1", metadata !"nonsym1x1", metadata !"", i32 478, metadata !77, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, i32, i32, double, double*, double*)* @nonsym1x1, null, null, metadata !79, i32 485} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 485] [nonsym1x1]
!77 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!78 = metadata !{metadata !8, metadata !9, metadata !8, metadata !8, metadata !25, metadata !24, metadata !24}
!79 = metadata !{metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !91, metadata !93}
!80 = metadata !{i32 786689, metadata !76, metadata !"chv", metadata !5, i32 16777695, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 479]
!81 = metadata !{i32 786689, metadata !76, metadata !"irow", metadata !5, i32 33554912, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 480]
!82 = metadata !{i32 786689, metadata !76, metadata !"jcol", metadata !5, i32 50332129, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 481]
!83 = metadata !{i32 786689, metadata !76, metadata !"tau", metadata !5, i32 67109346, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tau] [line 482]
!84 = metadata !{i32 786689, metadata !76, metadata !"rowmaxes", metadata !5, i32 83886563, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowmaxes] [line 483]
!85 = metadata !{i32 786689, metadata !76, metadata !"colmaxes", metadata !5, i32 100663780, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colmaxes] [line 484]
!86 = metadata !{i32 786688, metadata !76, metadata !"cutoff", metadata !5, i32 486, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cutoff] [line 486]
!87 = metadata !{i32 786688, metadata !76, metadata !"magn", metadata !5, i32 486, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magn] [line 486]
!88 = metadata !{i32 786688, metadata !76, metadata !"rc", metadata !5, i32 487, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 487]
!89 = metadata !{i32 786688, metadata !90, metadata !"value", metadata !5, i32 490, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 490]
!90 = metadata !{i32 786443, metadata !1, metadata !76, i32 489, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!91 = metadata !{i32 786688, metadata !92, metadata !"imag", metadata !5, i32 494, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 494]
!92 = metadata !{i32 786443, metadata !1, metadata !76, i32 493, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!93 = metadata !{i32 786688, metadata !92, metadata !"real", metadata !5, i32 494, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 494]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"findPivotSH", metadata !"findPivotSH", metadata !"", i32 114, metadata !6, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !95, i32 122} ; [ DW_TAG_subprogram ] [line 114] [local] [def] [scope 122] [findPivotSH]
!95 = metadata !{metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!96 = metadata !{i32 786689, metadata !94, metadata !"chv", metadata !5, i32 16777331, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 115]
!97 = metadata !{i32 786689, metadata !94, metadata !"workDV", metadata !5, i32 33554548, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [workDV] [line 116]
!98 = metadata !{i32 786689, metadata !94, metadata !"tau", metadata !5, i32 50331765, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tau] [line 117]
!99 = metadata !{i32 786689, metadata !94, metadata !"ndelay", metadata !5, i32 67108982, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndelay] [line 118]
!100 = metadata !{i32 786689, metadata !94, metadata !"pirow", metadata !5, i32 83886199, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pirow] [line 119]
!101 = metadata !{i32 786689, metadata !94, metadata !"pjcol", metadata !5, i32 100663416, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pjcol] [line 120]
!102 = metadata !{i32 786689, metadata !94, metadata !"pntest", metadata !5, i32 117440633, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pntest] [line 121]
!103 = metadata !{i32 786688, metadata !94, metadata !"maxval", metadata !5, i32 123, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxval] [line 123]
!104 = metadata !{i32 786688, metadata !94, metadata !"rowmaxes", metadata !5, i32 124, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowmaxes] [line 124]
!105 = metadata !{i32 786688, metadata !94, metadata !"ii", metadata !5, i32 125, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 125]
!106 = metadata !{i32 786688, metadata !94, metadata !"irow", metadata !5, i32 125, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 125]
!107 = metadata !{i32 786688, metadata !94, metadata !"jrow", metadata !5, i32 125, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jrow] [line 125]
!108 = metadata !{i32 786688, metadata !94, metadata !"krow", metadata !5, i32 125, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [krow] [line 125]
!109 = metadata !{i32 786688, metadata !94, metadata !"ncand", metadata !5, i32 125, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncand] [line 125]
!110 = metadata !{i32 786688, metadata !94, metadata !"nD", metadata !5, i32 125, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nD] [line 125]
!111 = metadata !{i32 786688, metadata !94, metadata !"ndouble", metadata !5, i32 126, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ndouble] [line 126]
!112 = metadata !{i32 786688, metadata !94, metadata !"ntest", metadata !5, i32 126, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntest] [line 126]
!113 = metadata !{i32 786688, metadata !94, metadata !"pivotsize", metadata !5, i32 126, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsize] [line 126]
!114 = metadata !{i32 786688, metadata !94, metadata !"tag", metadata !5, i32 126, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tag] [line 126]
!115 = metadata !{i32 786688, metadata !94, metadata !"untag", metadata !5, i32 126, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [untag] [line 126]
!116 = metadata !{i32 786688, metadata !94, metadata !"rowids", metadata !5, i32 127, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 127]
!117 = metadata !{i32 786688, metadata !94, metadata !"rowmark", metadata !5, i32 127, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowmark] [line 127]
!118 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sym2x2", metadata !"sym2x2", metadata !"", i32 560, metadata !119, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._Chv*, i32, i32, double, double*)* @sym2x2, null, null, metadata !121, i32 566} ; [ DW_TAG_subprogram ] [line 560] [local] [def] [scope 566] [sym2x2]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{metadata !8, metadata !9, metadata !8, metadata !8, metadata !25, metadata !24}
!121 = metadata !{metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !136, metadata !137, metadata !138, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146}
!122 = metadata !{i32 786689, metadata !118, metadata !"chv", metadata !5, i32 16777777, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 561]
!123 = metadata !{i32 786689, metadata !118, metadata !"irow", metadata !5, i32 33554994, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 562]
!124 = metadata !{i32 786689, metadata !118, metadata !"jcol", metadata !5, i32 50332211, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jcol] [line 563]
!125 = metadata !{i32 786689, metadata !118, metadata !"tau", metadata !5, i32 67109428, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tau] [line 564]
!126 = metadata !{i32 786689, metadata !118, metadata !"rowmaxes", metadata !5, i32 83886645, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowmaxes] [line 565]
!127 = metadata !{i32 786688, metadata !118, metadata !"amag", metadata !5, i32 567, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [amag] [line 567]
!128 = metadata !{i32 786688, metadata !118, metadata !"bmag", metadata !5, i32 567, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bmag] [line 567]
!129 = metadata !{i32 786688, metadata !118, metadata !"cmag", metadata !5, i32 567, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmag] [line 567]
!130 = metadata !{i32 786688, metadata !118, metadata !"denom", metadata !5, i32 567, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [denom] [line 567]
!131 = metadata !{i32 786688, metadata !118, metadata !"val1", metadata !5, i32 567, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val1] [line 567]
!132 = metadata !{i32 786688, metadata !118, metadata !"val2", metadata !5, i32 567, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val2] [line 567]
!133 = metadata !{i32 786688, metadata !118, metadata !"rc", metadata !5, i32 568, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 568]
!134 = metadata !{i32 786688, metadata !135, metadata !"a", metadata !5, i32 571, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 571]
!135 = metadata !{i32 786443, metadata !1, metadata !118, i32 570, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!136 = metadata !{i32 786688, metadata !135, metadata !"b", metadata !5, i32 571, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 571]
!137 = metadata !{i32 786688, metadata !135, metadata !"c", metadata !5, i32 571, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 571]
!138 = metadata !{i32 786688, metadata !139, metadata !"aimag", metadata !5, i32 581, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [aimag] [line 581]
!139 = metadata !{i32 786443, metadata !1, metadata !118, i32 580, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!140 = metadata !{i32 786688, metadata !139, metadata !"areal", metadata !5, i32 581, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [areal] [line 581]
!141 = metadata !{i32 786688, metadata !139, metadata !"bimag", metadata !5, i32 581, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bimag] [line 581]
!142 = metadata !{i32 786688, metadata !139, metadata !"breal", metadata !5, i32 581, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [breal] [line 581]
!143 = metadata !{i32 786688, metadata !139, metadata !"cimag", metadata !5, i32 581, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cimag] [line 581]
!144 = metadata !{i32 786688, metadata !139, metadata !"creal", metadata !5, i32 581, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [creal] [line 581]
!145 = metadata !{i32 786688, metadata !139, metadata !"imag", metadata !5, i32 581, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 581]
!146 = metadata !{i32 786688, metadata !139, metadata !"real", metadata !5, i32 581, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 581]
!147 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sym1x1", metadata !"sym1x1", metadata !"", i32 521, metadata !148, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !150, i32 526} ; [ DW_TAG_subprogram ] [line 521] [local] [def] [scope 526] [sym1x1]
!148 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!149 = metadata !{metadata !8, metadata !9, metadata !8, metadata !25, metadata !24}
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !159, metadata !161}
!151 = metadata !{i32 786689, metadata !147, metadata !"chv", metadata !5, i32 16777738, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [chv] [line 522]
!152 = metadata !{i32 786689, metadata !147, metadata !"irow", metadata !5, i32 33554955, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [irow] [line 523]
!153 = metadata !{i32 786689, metadata !147, metadata !"tau", metadata !5, i32 50332172, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tau] [line 524]
!154 = metadata !{i32 786689, metadata !147, metadata !"rowmaxes", metadata !5, i32 67109389, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowmaxes] [line 525]
!155 = metadata !{i32 786688, metadata !147, metadata !"cutoff", metadata !5, i32 527, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cutoff] [line 527]
!156 = metadata !{i32 786688, metadata !147, metadata !"rc", metadata !5, i32 528, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 528]
!157 = metadata !{i32 786688, metadata !158, metadata !"value", metadata !5, i32 531, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 531]
!158 = metadata !{i32 786443, metadata !1, metadata !147, i32 530, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!159 = metadata !{i32 786688, metadata !160, metadata !"imag", metadata !5, i32 535, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 535]
!160 = metadata !{i32 786443, metadata !1, metadata !147, i32 534, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!161 = metadata !{i32 786688, metadata !160, metadata !"real", metadata !5, i32 535, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 535]
!162 = metadata !{i32 41, i32 0, metadata !4, null}
!163 = metadata !{i32 42, i32 0, metadata !4, null}
!164 = metadata !{i32 43, i32 0, metadata !4, null}
!165 = metadata !{i32 44, i32 0, metadata !4, null}
!166 = metadata !{i32 45, i32 0, metadata !4, null}
!167 = metadata !{i32 46, i32 0, metadata !4, null}
!168 = metadata !{i32 47, i32 0, metadata !4, null}
!169 = metadata !{i32 55, i32 0, metadata !4, null}
!170 = metadata !{i32 57, i32 0, metadata !171, null}
!171 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!172 = metadata !{metadata !"any pointer", metadata !173}
!173 = metadata !{metadata !"omnipotent char", metadata !174}
!174 = metadata !{metadata !"Simple C/C++ TBAA"}
!175 = metadata !{i32 61, i32 0, metadata !171, null}
!176 = metadata !{i32 63, i32 0, metadata !4, null}
!177 = metadata !{metadata !"int", metadata !173}
!178 = metadata !{i32 64, i32 0, metadata !179, null}
!179 = metadata !{i32 786443, metadata !1, metadata !4, i32 63, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!180 = metadata !{i32 68, i32 0, metadata !179, null}
!181 = metadata !{i32 70, i32 0, metadata !4, null}
!182 = metadata !{i32 72, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !4, i32 71, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!184 = metadata !{i32 77, i32 0, metadata !183, null}
!185 = metadata !{i32 79, i32 0, metadata !4, null}
!186 = metadata !{i32 115, i32 0, metadata !94, metadata !187}
!187 = metadata !{i32 80, i32 0, metadata !188, null}
!188 = metadata !{i32 786443, metadata !1, metadata !4, i32 79, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!189 = metadata !{i32 786689, metadata !94, metadata !"chv", metadata !5, i32 16777331, metadata !9, i32 0, metadata !187} ; [ DW_TAG_arg_variable ] [chv] [line 115]
!190 = metadata !{i32 786689, metadata !94, metadata !"workDV", metadata !5, i32 33554548, metadata !38, i32 0, metadata !187} ; [ DW_TAG_arg_variable ] [workDV] [line 116]
!191 = metadata !{i32 116, i32 0, metadata !94, metadata !187}
!192 = metadata !{i32 786689, metadata !94, metadata !"tau", metadata !5, i32 50331765, metadata !25, i32 0, metadata !187} ; [ DW_TAG_arg_variable ] [tau] [line 117]
!193 = metadata !{i32 117, i32 0, metadata !94, metadata !187}
!194 = metadata !{i32 786689, metadata !94, metadata !"ndelay", metadata !5, i32 67108982, metadata !8, i32 0, metadata !187} ; [ DW_TAG_arg_variable ] [ndelay] [line 118]
!195 = metadata !{i32 118, i32 0, metadata !94, metadata !187}
!196 = metadata !{i32 786689, metadata !94, metadata !"pirow", metadata !5, i32 83886199, metadata !21, i32 0, metadata !187} ; [ DW_TAG_arg_variable ] [pirow] [line 119]
!197 = metadata !{i32 119, i32 0, metadata !94, metadata !187}
!198 = metadata !{i32 786689, metadata !94, metadata !"pjcol", metadata !5, i32 100663416, metadata !21, i32 0, metadata !187} ; [ DW_TAG_arg_variable ] [pjcol] [line 120]
!199 = metadata !{i32 120, i32 0, metadata !94, metadata !187}
!200 = metadata !{i32 786689, metadata !94, metadata !"pntest", metadata !5, i32 117440633, metadata !21, i32 0, metadata !187} ; [ DW_TAG_arg_variable ] [pntest] [line 121]
!201 = metadata !{i32 121, i32 0, metadata !94, metadata !187}
!202 = metadata !{i32 123, i32 0, metadata !94, metadata !187}
!203 = metadata !{i32 125, i32 0, metadata !94, metadata !187}
!204 = metadata !{i32 786688, metadata !94, metadata !"untag", metadata !5, i32 126, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [untag] [line 126]
!205 = metadata !{i32 129, i32 0, metadata !94, metadata !187}
!206 = metadata !{i32 1}
!207 = metadata !{i32 786688, metadata !94, metadata !"tag", metadata !5, i32 126, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [tag] [line 126]
!208 = metadata !{i32 130, i32 0, metadata !94, metadata !187}
!209 = metadata !{i32 131, i32 0, metadata !94, metadata !187}
!210 = metadata !{i32 786688, metadata !94, metadata !"nD", metadata !5, i32 125, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [nD] [line 125]
!211 = metadata !{i32 138, i32 0, metadata !94, metadata !187}
!212 = metadata !{i32 139, i32 0, metadata !94, metadata !187}
!213 = metadata !{i32 786688, metadata !94, metadata !"ntest", metadata !5, i32 126, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [ntest] [line 126]
!214 = metadata !{i32 148, i32 0, metadata !215, metadata !187}
!215 = metadata !{i32 786443, metadata !1, metadata !94, i32 147, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!216 = metadata !{i32 786688, metadata !94, metadata !"ndouble", metadata !5, i32 126, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [ndouble] [line 126]
!217 = metadata !{i32 150, i32 0, metadata !94, metadata !187}
!218 = metadata !{i32 151, i32 0, metadata !94, metadata !187}
!219 = metadata !{i32 786688, metadata !94, metadata !"rowmaxes", metadata !5, i32 124, metadata !24, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [rowmaxes] [line 124]
!220 = metadata !{i32 152, i32 0, metadata !94, metadata !187}
!221 = metadata !{i32 153, i32 0, metadata !94, metadata !187}
!222 = metadata !{i32 786688, metadata !94, metadata !"rowmark", metadata !5, i32 127, metadata !21, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [rowmark] [line 127]
!223 = metadata !{i32 155, i32 0, metadata !94, metadata !187}
!224 = metadata !{i32 156, i32 0, metadata !225, metadata !187}
!225 = metadata !{i32 786443, metadata !1, metadata !94, i32 155, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!226 = metadata !{i32 157, i32 0, metadata !225, metadata !187}
!227 = metadata !{i32 158, i32 0, metadata !225, metadata !187}
!228 = metadata !{i32 159, i32 0, metadata !229, metadata !187}
!229 = metadata !{i32 786443, metadata !1, metadata !94, i32 158, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!230 = metadata !{i32 786688, metadata !94, metadata !"pivotsize", metadata !5, i32 126, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [pivotsize] [line 126]
!231 = metadata !{i32 163, i32 0, metadata !232, metadata !187}
!232 = metadata !{i32 786443, metadata !1, metadata !94, i32 162, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!233 = metadata !{i32 169, i32 0, metadata !232, metadata !187}
!234 = metadata !{i32 786688, metadata !94, metadata !"irow", metadata !5, i32 125, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [irow] [line 125]
!235 = metadata !{i32 189, i32 0, metadata !232, metadata !187}
!236 = metadata !{i32 522, i32 0, metadata !147, metadata !237}
!237 = metadata !{i32 217, i32 0, metadata !238, metadata !187}
!238 = metadata !{i32 786443, metadata !1, metadata !239, i32 211, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!239 = metadata !{i32 786443, metadata !1, metadata !232, i32 196, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!240 = metadata !{i32 203, i32 0, metadata !239, metadata !187}
!241 = metadata !{i32 786688, metadata !94, metadata !"maxval", metadata !5, i32 123, metadata !25, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [maxval] [line 123]
!242 = metadata !{i32 204, i32 0, metadata !239, metadata !187}
!243 = metadata !{metadata !"double", metadata !173}
!244 = metadata !{i32 205, i32 0, metadata !239, metadata !187}
!245 = metadata !{i32 206, i32 0, metadata !239, metadata !187}
!246 = metadata !{i32 786688, metadata !94, metadata !"jrow", metadata !5, i32 125, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [jrow] [line 125]
!247 = metadata !{i32 207, i32 0, metadata !248, metadata !187}
!248 = metadata !{i32 786443, metadata !1, metadata !239, i32 206, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!249 = metadata !{i32 208, i32 0, metadata !248, metadata !187}
!250 = metadata !{i32 209, i32 0, metadata !248, metadata !187}
!251 = metadata !{i32 211, i32 0, metadata !239, metadata !187}
!252 = metadata !{i32 786689, metadata !147, metadata !"chv", metadata !5, i32 16777738, metadata !9, i32 0, metadata !237} ; [ DW_TAG_arg_variable ] [chv] [line 522]
!253 = metadata !{i32 786689, metadata !147, metadata !"irow", metadata !5, i32 33554955, metadata !8, i32 0, metadata !237} ; [ DW_TAG_arg_variable ] [irow] [line 523]
!254 = metadata !{i32 523, i32 0, metadata !147, metadata !237}
!255 = metadata !{i32 786689, metadata !147, metadata !"tau", metadata !5, i32 50332172, metadata !25, i32 0, metadata !237} ; [ DW_TAG_arg_variable ] [tau] [line 524]
!256 = metadata !{i32 524, i32 0, metadata !147, metadata !237}
!257 = metadata !{i32 786689, metadata !147, metadata !"rowmaxes", metadata !5, i32 67109389, metadata !24, i32 0, metadata !237} ; [ DW_TAG_arg_variable ] [rowmaxes] [line 525]
!258 = metadata !{i32 525, i32 0, metadata !147, metadata !237}
!259 = metadata !{i32 530, i32 0, metadata !147, metadata !237}
!260 = metadata !{i32 531, i32 0, metadata !158, metadata !237}
!261 = metadata !{i32 532, i32 0, metadata !158, metadata !237}
!262 = metadata !{i32 786688, metadata !158, metadata !"value", metadata !5, i32 531, metadata !25, i32 0, metadata !237} ; [ DW_TAG_auto_variable ] [value] [line 531]
!263 = metadata !{i32 533, i32 0, metadata !158, metadata !237}
!264 = metadata !{i32 786688, metadata !147, metadata !"cutoff", metadata !5, i32 527, metadata !25, i32 0, metadata !237} ; [ DW_TAG_auto_variable ] [cutoff] [line 527]
!265 = metadata !{i32 534, i32 0, metadata !158, metadata !237}
!266 = metadata !{i32 535, i32 0, metadata !160, metadata !237}
!267 = metadata !{i32 536, i32 0, metadata !160, metadata !237}
!268 = metadata !{i32 786688, metadata !160, metadata !"real", metadata !5, i32 535, metadata !25, i32 0, metadata !237} ; [ DW_TAG_auto_variable ] [real] [line 535]
!269 = metadata !{i32 537, i32 0, metadata !160, metadata !237}
!270 = metadata !{i32 786688, metadata !160, metadata !"imag", metadata !5, i32 535, metadata !25, i32 0, metadata !237} ; [ DW_TAG_auto_variable ] [imag] [line 535]
!271 = metadata !{i32 538, i32 0, metadata !160, metadata !237}
!272 = metadata !{i32 543, i32 0, metadata !147, metadata !237}
!273 = metadata !{i32 548, i32 0, metadata !147, metadata !237}
!274 = metadata !{i32 218, i32 0, metadata !238, metadata !187}
!275 = metadata !{i32 223, i32 0, metadata !238, metadata !187}
!276 = metadata !{i32 226, i32 0, metadata !277, metadata !187}
!277 = metadata !{i32 786443, metadata !1, metadata !278, i32 226, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!278 = metadata !{i32 786443, metadata !1, metadata !238, i32 225, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!279 = metadata !{i32 224, i32 0, metadata !280, metadata !187}
!280 = metadata !{i32 786443, metadata !1, metadata !238, i32 223, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!281 = metadata !{i32 225, i32 0, metadata !280, metadata !187}
!282 = metadata !{i32 233, i32 0, metadata !283, metadata !187}
!283 = metadata !{i32 786443, metadata !1, metadata !277, i32 226, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!284 = metadata !{i32 786688, metadata !94, metadata !"krow", metadata !5, i32 125, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [krow] [line 125]
!285 = metadata !{i32 234, i32 0, metadata !283, metadata !187}
!286 = metadata !{i32 235, i32 0, metadata !283, metadata !187}
!287 = metadata !{i32 236, i32 0, metadata !283, metadata !187}
!288 = metadata !{i32 237, i32 0, metadata !289, metadata !187}
!289 = metadata !{i32 786443, metadata !1, metadata !283, i32 236, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!290 = metadata !{i32 247, i32 0, metadata !291, metadata !187}
!291 = metadata !{i32 786443, metadata !1, metadata !239, i32 241, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!292 = metadata !{i32 248, i32 0, metadata !291, metadata !187}
!293 = metadata !{i32 249, i32 0, metadata !291, metadata !187}
!294 = metadata !{i32 252, i32 0, metadata !295, metadata !187}
!295 = metadata !{i32 786443, metadata !1, metadata !296, i32 252, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!296 = metadata !{i32 786443, metadata !1, metadata !291, i32 251, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!297 = metadata !{i32 250, i32 0, metadata !298, metadata !187}
!298 = metadata !{i32 786443, metadata !1, metadata !291, i32 249, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!299 = metadata !{i32 251, i32 0, metadata !298, metadata !187}
!300 = metadata !{i32 253, i32 0, metadata !301, metadata !187}
!301 = metadata !{i32 786443, metadata !1, metadata !295, i32 252, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!302 = metadata !{i32 260, i32 0, metadata !301, metadata !187}
!303 = metadata !{i32 262, i32 0, metadata !301, metadata !187}
!304 = metadata !{i32 261, i32 0, metadata !301, metadata !187}
!305 = metadata !{i32 263, i32 0, metadata !306, metadata !187}
!306 = metadata !{i32 786443, metadata !1, metadata !301, i32 262, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!307 = metadata !{i32 271, i32 0, metadata !301, metadata !187}
!308 = metadata !{i32 272, i32 0, metadata !301, metadata !187}
!309 = metadata !{i32 273, i32 0, metadata !301, metadata !187}
!310 = metadata !{i32 274, i32 0, metadata !311, metadata !187}
!311 = metadata !{i32 786443, metadata !1, metadata !301, i32 273, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!312 = metadata !{i32 279, i32 0, metadata !239, metadata !187}
!313 = metadata !{i32 285, i32 0, metadata !314, metadata !187}
!314 = metadata !{i32 786443, metadata !1, metadata !239, i32 279, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!315 = metadata !{i32 786688, metadata !94, metadata !"ncand", metadata !5, i32 125, metadata !8, i32 0, metadata !187} ; [ DW_TAG_auto_variable ] [ncand] [line 125]
!316 = metadata !{i32 286, i32 0, metadata !314, metadata !187}
!317 = metadata !{i32 287, i32 0, metadata !318, metadata !187}
!318 = metadata !{i32 786443, metadata !1, metadata !314, i32 286, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!319 = metadata !{i32 292, i32 0, metadata !94, metadata !187}
!320 = metadata !{i32 294, i32 0, metadata !94, metadata !187}
!321 = metadata !{i32 81, i32 0, metadata !188, null}
!322 = metadata !{i32 319, i32 0, metadata !48, metadata !323}
!323 = metadata !{i32 82, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !4, i32 81, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!325 = metadata !{i32 786689, metadata !48, metadata !"chv", metadata !5, i32 16777535, metadata !9, i32 0, metadata !323} ; [ DW_TAG_arg_variable ] [chv] [line 319]
!326 = metadata !{i32 786689, metadata !48, metadata !"workDV", metadata !5, i32 33554752, metadata !38, i32 0, metadata !323} ; [ DW_TAG_arg_variable ] [workDV] [line 320]
!327 = metadata !{i32 320, i32 0, metadata !48, metadata !323}
!328 = metadata !{i32 786689, metadata !48, metadata !"tau", metadata !5, i32 50331969, metadata !25, i32 0, metadata !323} ; [ DW_TAG_arg_variable ] [tau] [line 321]
!329 = metadata !{i32 321, i32 0, metadata !48, metadata !323}
!330 = metadata !{i32 786689, metadata !48, metadata !"ndelay", metadata !5, i32 67109186, metadata !8, i32 0, metadata !323} ; [ DW_TAG_arg_variable ] [ndelay] [line 322]
!331 = metadata !{i32 322, i32 0, metadata !48, metadata !323}
!332 = metadata !{i32 786689, metadata !48, metadata !"pirow", metadata !5, i32 83886403, metadata !21, i32 0, metadata !323} ; [ DW_TAG_arg_variable ] [pirow] [line 323]
!333 = metadata !{i32 323, i32 0, metadata !48, metadata !323}
!334 = metadata !{i32 786689, metadata !48, metadata !"pjcol", metadata !5, i32 100663620, metadata !21, i32 0, metadata !323} ; [ DW_TAG_arg_variable ] [pjcol] [line 324]
!335 = metadata !{i32 324, i32 0, metadata !48, metadata !323}
!336 = metadata !{i32 786689, metadata !48, metadata !"pntest", metadata !5, i32 117440837, metadata !21, i32 0, metadata !323} ; [ DW_TAG_arg_variable ] [pntest] [line 325]
!337 = metadata !{i32 325, i32 0, metadata !48, metadata !323}
!338 = metadata !{i32 327, i32 0, metadata !48, metadata !323}
!339 = metadata !{i32 329, i32 0, metadata !48, metadata !323}
!340 = metadata !{i32 786688, metadata !48, metadata !"untag", metadata !5, i32 330, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [untag] [line 330]
!341 = metadata !{i32 333, i32 0, metadata !48, metadata !323}
!342 = metadata !{i32 786688, metadata !48, metadata !"tag", metadata !5, i32 330, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [tag] [line 330]
!343 = metadata !{i32 334, i32 0, metadata !48, metadata !323}
!344 = metadata !{i32 335, i32 0, metadata !48, metadata !323}
!345 = metadata !{i32 786688, metadata !48, metadata !"nD", metadata !5, i32 329, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [nD] [line 329]
!346 = metadata !{i32 342, i32 0, metadata !48, metadata !323}
!347 = metadata !{i32 343, i32 0, metadata !48, metadata !323}
!348 = metadata !{i32 786688, metadata !48, metadata !"ntest", metadata !5, i32 330, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [ntest] [line 330]
!349 = metadata !{i32 352, i32 0, metadata !350, metadata !323}
!350 = metadata !{i32 786443, metadata !1, metadata !48, i32 351, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!351 = metadata !{i32 786688, metadata !48, metadata !"ndouble", metadata !5, i32 330, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [ndouble] [line 330]
!352 = metadata !{i32 354, i32 0, metadata !48, metadata !323}
!353 = metadata !{i32 355, i32 0, metadata !48, metadata !323}
!354 = metadata !{i32 786688, metadata !48, metadata !"rowmaxes", metadata !5, i32 328, metadata !24, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [rowmaxes] [line 328]
!355 = metadata !{i32 356, i32 0, metadata !48, metadata !323}
!356 = metadata !{i32 786688, metadata !48, metadata !"colmaxes", metadata !5, i32 328, metadata !24, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [colmaxes] [line 328]
!357 = metadata !{i32 357, i32 0, metadata !48, metadata !323}
!358 = metadata !{i32 358, i32 0, metadata !48, metadata !323}
!359 = metadata !{i32 359, i32 0, metadata !48, metadata !323}
!360 = metadata !{i32 786688, metadata !48, metadata !"rowmark", metadata !5, i32 331, metadata !21, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [rowmark] [line 331]
!361 = metadata !{i32 360, i32 0, metadata !48, metadata !323}
!362 = metadata !{i32 786688, metadata !48, metadata !"colmark", metadata !5, i32 331, metadata !21, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [colmark] [line 331]
!363 = metadata !{i32 361, i32 0, metadata !48, metadata !323}
!364 = metadata !{i32 786688, metadata !48, metadata !"rowids", metadata !5, i32 331, metadata !21, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [rowids] [line 331]
!365 = metadata !{i32 363, i32 0, metadata !48, metadata !323}
!366 = metadata !{i32 364, i32 0, metadata !367, metadata !323}
!367 = metadata !{i32 786443, metadata !1, metadata !48, i32 363, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!368 = metadata !{i32 365, i32 0, metadata !367, metadata !323}
!369 = metadata !{i32 366, i32 0, metadata !367, metadata !323}
!370 = metadata !{i32 367, i32 0, metadata !367, metadata !323}
!371 = metadata !{i32 368, i32 0, metadata !367, metadata !323}
!372 = metadata !{i32 369, i32 0, metadata !373, metadata !323}
!373 = metadata !{i32 786443, metadata !1, metadata !48, i32 368, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!374 = metadata !{i32 370, i32 0, metadata !373, metadata !323}
!375 = metadata !{i32 786688, metadata !48, metadata !"pivotsize", metadata !5, i32 330, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [pivotsize] [line 330]
!376 = metadata !{i32 374, i32 0, metadata !377, metadata !323}
!377 = metadata !{i32 786443, metadata !1, metadata !48, i32 373, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!378 = metadata !{i32 380, i32 0, metadata !377, metadata !323}
!379 = metadata !{i32 786688, metadata !48, metadata !"irow", metadata !5, i32 329, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [irow] [line 329]
!380 = metadata !{i32 392, i32 0, metadata !377, metadata !323}
!381 = metadata !{i32 405, i32 0, metadata !382, metadata !323}
!382 = metadata !{i32 786443, metadata !1, metadata !377, i32 399, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!383 = metadata !{i32 786688, metadata !48, metadata !"maxval", metadata !5, i32 327, metadata !25, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [maxval] [line 327]
!384 = metadata !{i32 406, i32 0, metadata !382, metadata !323}
!385 = metadata !{i32 786688, metadata !48, metadata !"jcol", metadata !5, i32 329, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [jcol] [line 329]
!386 = metadata !{i32 407, i32 0, metadata !382, metadata !323}
!387 = metadata !{i32 408, i32 0, metadata !382, metadata !323}
!388 = metadata !{i32 409, i32 0, metadata !382, metadata !323}
!389 = metadata !{i32 410, i32 0, metadata !382, metadata !323}
!390 = metadata !{i32 416, i32 0, metadata !382, metadata !323}
!391 = metadata !{i32 417, i32 0, metadata !382, metadata !323}
!392 = metadata !{i32 418, i32 0, metadata !382, metadata !323}
!393 = metadata !{i32 426, i32 0, metadata !394, metadata !323}
!394 = metadata !{i32 786443, metadata !1, metadata !395, i32 426, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!395 = metadata !{i32 786443, metadata !1, metadata !382, i32 420, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!396 = metadata !{i32 419, i32 0, metadata !397, metadata !323}
!397 = metadata !{i32 786443, metadata !1, metadata !382, i32 418, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!398 = metadata !{i32 463, i32 0, metadata !377, metadata !323}
!399 = metadata !{i32 427, i32 0, metadata !400, metadata !323}
!400 = metadata !{i32 786443, metadata !1, metadata !394, i32 426, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!401 = metadata !{i32 786688, metadata !48, metadata !"jrow", metadata !5, i32 329, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [jrow] [line 329]
!402 = metadata !{i32 428, i32 0, metadata !400, metadata !323}
!403 = metadata !{i32 786688, metadata !48, metadata !"icol", metadata !5, i32 329, metadata !8, i32 0, metadata !323} ; [ DW_TAG_auto_variable ] [icol] [line 329]
!404 = metadata !{i32 434, i32 0, metadata !400, metadata !323}
!405 = metadata !{i32 437, i32 0, metadata !400, metadata !323}
!406 = metadata !{i32 436, i32 0, metadata !400, metadata !323}
!407 = metadata !{i32 438, i32 0, metadata !408, metadata !323}
!408 = metadata !{i32 786443, metadata !1, metadata !400, i32 437, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!409 = metadata !{i32 445, i32 0, metadata !400, metadata !323}
!410 = metadata !{i32 447, i32 0, metadata !400, metadata !323}
!411 = metadata !{i32 448, i32 0, metadata !400, metadata !323}
!412 = metadata !{i32 449, i32 0, metadata !413, metadata !323}
!413 = metadata !{i32 786443, metadata !1, metadata !400, i32 448, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!414 = metadata !{i32 458, i32 0, metadata !395, metadata !323}
!415 = metadata !{i32 459, i32 0, metadata !395, metadata !323}
!416 = metadata !{i32 464, i32 0, metadata !48, metadata !323}
!417 = metadata !{i32 466, i32 0, metadata !48, metadata !323}
!418 = metadata !{i32 84, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !4, i32 83, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!420 = metadata !{i32 88, i32 0, metadata !419, null}
!421 = metadata !{i32 90, i32 0, metadata !4, null}
!422 = metadata !{i32 479, i32 0, metadata !76, null}
!423 = metadata !{i32 480, i32 0, metadata !76, null}
!424 = metadata !{i32 481, i32 0, metadata !76, null}
!425 = metadata !{i32 482, i32 0, metadata !76, null}
!426 = metadata !{i32 483, i32 0, metadata !76, null}
!427 = metadata !{i32 484, i32 0, metadata !76, null}
!428 = metadata !{i32 489, i32 0, metadata !76, null}
!429 = metadata !{i32 490, i32 0, metadata !90, null}
!430 = metadata !{i32 491, i32 0, metadata !90, null}
!431 = metadata !{i32 492, i32 0, metadata !90, null}
!432 = metadata !{i32 493, i32 0, metadata !90, null}
!433 = metadata !{i32 494, i32 0, metadata !92, null}
!434 = metadata !{i32 495, i32 0, metadata !92, null}
!435 = metadata !{i32 496, i32 0, metadata !92, null}
!436 = metadata !{i32 497, i32 0, metadata !92, null}
!437 = metadata !{i32 498, i32 0, metadata !76, null}
!438 = metadata !{i32 504, i32 0, metadata !76, null}
!439 = metadata !{i32 507, i32 0, metadata !440, null}
!440 = metadata !{i32 786443, metadata !1, metadata !76, i32 506, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!441 = metadata !{i32 509, i32 0, metadata !76, null}
!442 = metadata !{i32 561, i32 0, metadata !118, null}
!443 = metadata !{i32 562, i32 0, metadata !118, null}
!444 = metadata !{i32 563, i32 0, metadata !118, null}
!445 = metadata !{i32 564, i32 0, metadata !118, null}
!446 = metadata !{i32 565, i32 0, metadata !118, null}
!447 = metadata !{i32 570, i32 0, metadata !118, null}
!448 = metadata !{i32 571, i32 0, metadata !135, null}
!449 = metadata !{i32 573, i32 0, metadata !135, null}
!450 = metadata !{i32 574, i32 0, metadata !135, null}
!451 = metadata !{i32 575, i32 0, metadata !135, null}
!452 = metadata !{i32 576, i32 0, metadata !135, null}
!453 = metadata !{i32 577, i32 0, metadata !135, null}
!454 = metadata !{i32 578, i32 0, metadata !135, null}
!455 = metadata !{i32 579, i32 0, metadata !135, null}
!456 = metadata !{i32 580, i32 0, metadata !135, null}
!457 = metadata !{i32 581, i32 0, metadata !139, null}
!458 = metadata !{i32 583, i32 0, metadata !139, null}
!459 = metadata !{i32 584, i32 0, metadata !139, null}
!460 = metadata !{i32 585, i32 0, metadata !139, null}
!461 = metadata !{i32 586, i32 0, metadata !139, null}
!462 = metadata !{i32 587, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !139, i32 586, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!464 = metadata !{i32 588, i32 0, metadata !463, null}
!465 = metadata !{i32 589, i32 0, metadata !463, null}
!466 = metadata !{i32 590, i32 0, metadata !463, null}
!467 = metadata !{i32 591, i32 0, metadata !463, null}
!468 = metadata !{i32 592, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !1, metadata !139, i32 591, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!470 = metadata !{i32 593, i32 0, metadata !469, null}
!471 = metadata !{i32 594, i32 0, metadata !469, null}
!472 = metadata !{i32 595, i32 0, metadata !469, null}
!473 = metadata !{i32 596, i32 0, metadata !469, null}
!474 = metadata !{i32 597, i32 0, metadata !469, null}
!475 = metadata !{i32 598, i32 0, metadata !469, null}
!476 = metadata !{i32 606, i32 0, metadata !118, null}
!477 = metadata !{i32 609, i32 0, metadata !118, null}
!478 = metadata !{i32 610, i32 0, metadata !118, null}
!479 = metadata !{i32 620, i32 0, metadata !118, null}
!480 = metadata !{i32 623, i32 0, metadata !481, null}
!481 = metadata !{i32 786443, metadata !1, metadata !118, i32 622, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_findPivot.c]
!482 = metadata !{i32 625, i32 0, metadata !118, null}

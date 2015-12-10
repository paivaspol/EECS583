; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sqd_regexp = type { [10 x i8*], [10 x i8*], i8, i8, i8*, i32, [1 x i8] }
%struct.comp = type { i8*, i32, i8*, [3 x i8], i64 }
%struct.exec = type { i8*, i8*, i8**, i8** }

@.str = private unnamed_addr constant [31 x i8] c"Strparse(): ntok must be <= %d\00", align 1
@sqd_parse = common global [10 x i8*] zeroinitializer, align 16
@.str1 = private unnamed_addr constant [27 x i8] c"regexp compilation failed.\00", align 1
@.str2 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c\00", align 1
@.str3 = private unnamed_addr constant [29 x i8] c"NULL argument to sqd_regcomp\00", align 1
@.str4 = private unnamed_addr constant [15 x i8] c"regexp too big\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"out of space\00", align 1
@.str6 = private unnamed_addr constant [29 x i8] c"NULL argument to sqd_regexec\00", align 1
@.str7 = private unnamed_addr constant [17 x i8] c"corrupted regexp\00", align 1
@.str8 = private unnamed_addr constant [29 x i8] c"NULL parameter to sqd_regsub\00", align 1
@.str9 = private unnamed_addr constant [15 x i8] c"damaged regexp\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"damaged match string\00", align 1
@stderr = external global %struct._IO_FILE*
@.str11 = private unnamed_addr constant [15 x i8] c"regexp(3): %s\0A\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"regexp corruption\00", align 1
@.str13 = private unnamed_addr constant [19 x i8] c"corrupted pointers\00", align 1
@.str14 = private unnamed_addr constant [38 x i8] c"internal error: bad call of regrepeat\00", align 1
@.str15 = private unnamed_addr constant [12 x i8] c"too many ()\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"unterminated ()\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"unmatched ()\00", align 1
@.str18 = private unnamed_addr constant [28 x i8] c"internal error: junk on end\00", align 1
@.str19 = private unnamed_addr constant [26 x i8] c"*+ operand could be empty\00", align 1
@.str20 = private unnamed_addr constant [11 x i8] c"nested *?+\00", align 1
@.str21 = private unnamed_addr constant [17 x i8] c"invalid [] range\00", align 1
@.str22 = private unnamed_addr constant [13 x i8] c"unmatched []\00", align 1
@.str23 = private unnamed_addr constant [32 x i8] c"internal error: \5C0|) unexpected\00", align 1
@.str24 = private unnamed_addr constant [20 x i8] c"?+* follows nothing\00", align 1
@.str25 = private unnamed_addr constant [11 x i8] c"trailing \5C\00", align 1
@.str26 = private unnamed_addr constant [12 x i8] c"^$.[()|?+*\5C\00", align 1
@.str27 = private unnamed_addr constant [26 x i8] c"internal error: strcspn 0\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Strparse(i8* %rexp, i8* %s, i32 %ntok) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %rexp}, i64 0, metadata !28), !dbg !265
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !29), !dbg !265
  tail call void @llvm.dbg.value(metadata !{i32 %ntok}, i64 0, metadata !30), !dbg !265
  %cmp = icmp sgt i32 %ntok, 9, !dbg !266
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !266

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([31 x i8]* @.str, i64 0, i64 0), i32 9) #10, !dbg !266
  br label %for.cond.preheader, !dbg !266

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp179 = icmp slt i32 %ntok, 0, !dbg !267
  br i1 %cmp179, label %for.end, label %for.body.lr.ph, !dbg !267

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = add i32 %ntok, 1, !dbg !267
  br label %for.body, !dbg !267

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc ], [ 0, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds [10 x i8*]* @sqd_parse, i64 0, i64 %indvars.iv81, !dbg !269
  %1 = load i8** %arrayidx, align 8, !dbg !269, !tbaa !270
  %cmp2 = icmp eq i8* %1, null, !dbg !269
  br i1 %cmp2, label %for.inc, label %if.then3, !dbg !269

if.then3:                                         ; preds = %for.body
  tail call void @free(i8* %1) #10, !dbg !273
  store i8* null, i8** %arrayidx, align 8, !dbg !275, !tbaa !270
  br label %for.inc, !dbg !276

for.inc:                                          ; preds = %for.body, %if.then3
  %indvars.iv.next82 = add i64 %indvars.iv81, 1, !dbg !267
  %lftr.wideiv83 = trunc i64 %indvars.iv.next82 to i32, !dbg !267
  %exitcond84 = icmp eq i32 %lftr.wideiv83, %0, !dbg !267
  br i1 %exitcond84, label %for.end, label %for.body, !dbg !267

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call = tail call %struct.sqd_regexp* @sqd_regcomp(i8* %rexp) #11, !dbg !277
  tail call void @llvm.dbg.value(metadata !{%struct.sqd_regexp* %call}, i64 0, metadata !31), !dbg !277
  %cmp9 = icmp eq %struct.sqd_regexp* %call, null, !dbg !277
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !277

if.then10:                                        ; preds = %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str1, i64 0, i64 0)) #10, !dbg !278
  br label %if.end11, !dbg !278

if.end11:                                         ; preds = %if.then10, %for.end
  %call12 = tail call i32 @sqd_regexec(%struct.sqd_regexp* %call, i8* %s) #11, !dbg !279
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !50), !dbg !279
  %cmp13.not = icmp ne i32 %call12, 1, !dbg !280
  %brmerge = or i1 %cmp13.not, %cmp179, !dbg !280
  br i1 %brmerge, label %if.end50, label %for.body17.lr.ph, !dbg !280

for.body17.lr.ph:                                 ; preds = %if.end11
  %2 = add i32 %ntok, 1, !dbg !281
  br label %for.body17, !dbg !281

for.body17:                                       ; preds = %for.inc47, %for.body17.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc47 ], [ 0, %for.body17.lr.ph ]
  %arrayidx19 = getelementptr inbounds %struct.sqd_regexp* %call, i64 0, i32 0, i64 %indvars.iv, !dbg !283
  %3 = load i8** %arrayidx19, align 8, !dbg !283, !tbaa !270
  %cmp20 = icmp eq i8* %3, null, !dbg !283
  br i1 %cmp20, label %for.inc47, label %land.lhs.true, !dbg !283

land.lhs.true:                                    ; preds = %for.body17
  %arrayidx22 = getelementptr inbounds %struct.sqd_regexp* %call, i64 0, i32 1, i64 %indvars.iv, !dbg !283
  %4 = load i8** %arrayidx22, align 8, !dbg !283, !tbaa !270
  %cmp23 = icmp eq i8* %4, null, !dbg !283
  br i1 %cmp23, label %for.inc47, label %if.then24, !dbg !283

if.then24:                                        ; preds = %land.lhs.true
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64, !dbg !284
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64, !dbg !284
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !284
  %add = shl i64 %sub.ptr.sub, 32, !dbg !286
  %sext = add i64 %add, 4294967296, !dbg !286
  %conv31 = ashr exact i64 %sext, 32, !dbg !286
  %call32 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), i32 124, i64 %conv31) #10, !dbg !286
  %arrayidx34 = getelementptr inbounds [10 x i8*]* @sqd_parse, i64 0, i64 %indvars.iv, !dbg !286
  store i8* %call32, i8** %arrayidx34, align 8, !dbg !286, !tbaa !270
  %5 = load i8** %arrayidx19, align 8, !dbg !287, !tbaa !270
  %conv40 = ashr exact i64 %add, 32, !dbg !287
  %call41 = tail call i8* @strncpy(i8* %call32, i8* %5, i64 %conv40) #10, !dbg !287
  %6 = load i8** %arrayidx34, align 8, !dbg !288, !tbaa !270
  %arrayidx45 = getelementptr inbounds i8* %6, i64 %conv40, !dbg !288
  store i8 0, i8* %arrayidx45, align 1, !dbg !288, !tbaa !271
  br label %for.inc47, !dbg !289

for.inc47:                                        ; preds = %land.lhs.true, %for.body17, %if.then24
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !281
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !281
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !281
  br i1 %exitcond, label %if.end50, label %for.body17, !dbg !281

if.end50:                                         ; preds = %if.end11, %for.inc47
  %7 = bitcast %struct.sqd_regexp* %call to i8*, !dbg !290
  tail call void @free(i8* %7) #10, !dbg !290
  ret i32 %call12, !dbg !291
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define %struct.sqd_regexp* @sqd_regcomp(i8* %exp) #0 {
entry:
  %flags = alloca i32, align 4
  %co = alloca %struct.comp, align 8
  call void @llvm.dbg.value(metadata !{i8* %exp}, i64 0, metadata !64), !dbg !292
  call void @llvm.dbg.declare(metadata !{i32* %flags}, metadata !67), !dbg !293
  %0 = bitcast %struct.comp* %co to i8*, !dbg !294
  call void @llvm.lifetime.start(i64 40, i8* %0) #4, !dbg !294
  call void @llvm.dbg.declare(metadata !{%struct.comp* %co}, metadata !68), !dbg !294
  %cmp = icmp eq i8* %exp, null, !dbg !295
  br i1 %cmp, label %if.then, label %regc.exit, !dbg !295

if.then:                                          ; preds = %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0)) #11, !dbg !296
  unreachable

regc.exit:                                        ; preds = %entry
  %regparse = getelementptr inbounds %struct.comp* %co, i64 0, i32 0, !dbg !298
  store i8* %exp, i8** %regparse, align 8, !dbg !298, !tbaa !270
  %regnpar = getelementptr inbounds %struct.comp* %co, i64 0, i32 1, !dbg !299
  store i32 1, i32* %regnpar, align 8, !dbg !299, !tbaa !300
  %regsize = getelementptr inbounds %struct.comp* %co, i64 0, i32 4, !dbg !301
  %arrayidx = getelementptr inbounds %struct.comp* %co, i64 0, i32 3, i64 0, !dbg !302
  store i8 9, i8* %arrayidx, align 8, !dbg !302, !tbaa !271
  %arrayidx2 = getelementptr inbounds %struct.comp* %co, i64 0, i32 3, i64 2, !dbg !303
  store i8 0, i8* %arrayidx2, align 2, !dbg !303, !tbaa !271
  %arrayidx4 = getelementptr inbounds %struct.comp* %co, i64 0, i32 3, i64 1, !dbg !303
  store i8 0, i8* %arrayidx4, align 1, !dbg !303, !tbaa !271
  %regcode = getelementptr inbounds %struct.comp* %co, i64 0, i32 2, !dbg !304
  store i8* %arrayidx, i8** %regcode, align 8, !dbg !304, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %co}, i64 0, metadata !305), !dbg !307
  store i64 1, i64* %regsize, align 8, !dbg !308, !tbaa !309
  %call = call fastcc i8* @reg(%struct.comp* %co, i32 0, i32* %flags) #11, !dbg !310
  %cmp6 = icmp eq i8* %call, null, !dbg !310
  br i1 %cmp6, label %cleanup, label %if.end8, !dbg !310

if.end8:                                          ; preds = %regc.exit
  %1 = load i64* %regsize, align 8, !dbg !311, !tbaa !309
  %cmp10 = icmp sgt i64 %1, 32766, !dbg !311
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !311

if.then11:                                        ; preds = %if.end8
  call void @sqd_regerror(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0)) #11, !dbg !312
  unreachable

if.end12:                                         ; preds = %if.end8
  %add = add i64 %1, 184, !dbg !314
  %call14 = call noalias i8* @malloc(i64 %add) #10, !dbg !314
  %2 = bitcast i8* %call14 to %struct.sqd_regexp*, !dbg !314
  call void @llvm.dbg.value(metadata !{%struct.sqd_regexp* %2}, i64 0, metadata !65), !dbg !314
  %cmp15 = icmp eq i8* %call14, null, !dbg !315
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !315

if.then16:                                        ; preds = %if.end12
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0)) #11, !dbg !316
  unreachable

if.end17:                                         ; preds = %if.end12
  store i8* %exp, i8** %regparse, align 8, !dbg !318, !tbaa !270
  store i32 1, i32* %regnpar, align 8, !dbg !319, !tbaa !300
  %program = getelementptr inbounds i8* %call14, i64 180, !dbg !320
  store i8* %program, i8** %regcode, align 8, !dbg !320, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %co}, i64 0, metadata !321), !dbg !323
  %cmp.i92 = icmp eq i8* %program, %arrayidx, !dbg !324
  br i1 %cmp.i92, label %if.else.i97, label %if.then.i94, !dbg !324

if.then.i94:                                      ; preds = %if.end17
  %incdec.ptr.i93 = getelementptr inbounds i8* %call14, i64 181, !dbg !325
  store i8* %incdec.ptr.i93, i8** %regcode, align 8, !dbg !325, !tbaa !270
  store i8 -100, i8* %program, align 1, !dbg !325, !tbaa !271
  br label %regc.exit98, !dbg !325

if.else.i97:                                      ; preds = %if.end17
  %inc.i96 = add nsw i64 %1, 1, !dbg !326
  store i64 %inc.i96, i64* %regsize, align 8, !dbg !326, !tbaa !309
  br label %regc.exit98

regc.exit98:                                      ; preds = %if.then.i94, %if.else.i97
  %call22 = call fastcc i8* @reg(%struct.comp* %co, i32 0, i32* %flags) #11, !dbg !327
  %cmp23 = icmp eq i8* %call22, null, !dbg !327
  br i1 %cmp23, label %cleanup, label %if.end25, !dbg !327

if.end25:                                         ; preds = %regc.exit98
  %3 = getelementptr inbounds i8* %call14, i64 160, !dbg !328
  store i8 0, i8* %3, align 1, !dbg !328, !tbaa !271
  %4 = getelementptr inbounds i8* %call14, i64 161, !dbg !329
  store i8 0, i8* %4, align 1, !dbg !329, !tbaa !271
  %regmust = getelementptr inbounds i8* %call14, i64 168, !dbg !330
  %5 = bitcast i8* %regmust to i8**, !dbg !330
  store i8* null, i8** %5, align 8, !dbg !330, !tbaa !270
  %regmlen = getelementptr inbounds i8* %call14, i64 176, !dbg !331
  %6 = bitcast i8* %regmlen to i32*, !dbg !331
  store i32 0, i32* %6, align 4, !dbg !331, !tbaa !300
  %add.ptr = getelementptr inbounds i8* %call14, i64 181, !dbg !332
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !66), !dbg !332
  %call28 = call fastcc i8* @regnext(i8* %add.ptr) #11, !dbg !333
  %7 = load i8* %call28, align 1, !dbg !333, !tbaa !271
  %cmp29 = icmp eq i8 %7, 0, !dbg !333
  br i1 %cmp29, label %if.then31, label %cleanup, !dbg !333

if.then31:                                        ; preds = %if.end25
  %add.ptr32 = getelementptr inbounds i8* %call14, i64 184, !dbg !334
  call void @llvm.dbg.value(metadata !{i8* %add.ptr32}, i64 0, metadata !66), !dbg !334
  %8 = load i8* %add.ptr32, align 1, !dbg !335, !tbaa !271
  switch i8 %8, label %if.end45 [
    i8 8, label %if.then36
    i8 1, label %if.then42
  ], !dbg !335

if.then36:                                        ; preds = %if.then31
  %add.ptr37 = getelementptr inbounds i8* %call14, i64 187, !dbg !336
  %9 = load i8* %add.ptr37, align 1, !dbg !336, !tbaa !271
  store i8 %9, i8* %3, align 1, !dbg !336, !tbaa !271
  br label %if.end45, !dbg !336

if.then42:                                        ; preds = %if.then31
  store i8 1, i8* %4, align 1, !dbg !337, !tbaa !271
  br label %if.end45, !dbg !337

if.end45:                                         ; preds = %if.then31, %if.then42, %if.then36
  call void @llvm.dbg.value(metadata !{i32* %flags}, i64 0, metadata !67), !dbg !338
  %10 = load i32* %flags, align 4, !dbg !338, !tbaa !300
  %and = and i32 %10, 4, !dbg !338
  %tobool = icmp eq i32 %and, 0, !dbg !338
  br i1 %tobool, label %cleanup, label %for.body, !dbg !338

for.body:                                         ; preds = %if.end45, %for.inc.for.body_crit_edge
  %11 = phi i8 [ %.pre, %for.inc.for.body_crit_edge ], [ %8, %if.end45 ]
  %len.0102 = phi i64 [ %len.1, %for.inc.for.body_crit_edge ], [ 0, %if.end45 ]
  %longest.0101 = phi i8* [ %longest.1, %for.inc.for.body_crit_edge ], [ null, %if.end45 ]
  %scan.0100 = phi i8* [ %call61, %for.inc.for.body_crit_edge ], [ %add.ptr32, %if.end45 ]
  %cmp50 = icmp eq i8 %11, 8, !dbg !339
  br i1 %cmp50, label %land.lhs.true, label %for.inc, !dbg !339

land.lhs.true:                                    ; preds = %for.body
  %add.ptr52 = getelementptr inbounds i8* %scan.0100, i64 3, !dbg !339
  %call53 = call i64 @strlen(i8* %add.ptr52) #12, !dbg !339
  %cmp54 = icmp ult i64 %call53, %len.0102, !dbg !339
  call void @llvm.dbg.value(metadata !{i8* %add.ptr52}, i64 0, metadata !80), !dbg !341
  call void @llvm.dbg.value(metadata !{i64 %call53}, i64 0, metadata !83), !dbg !343
  %longest.0.add.ptr52 = select i1 %cmp54, i8* %longest.0101, i8* %add.ptr52, !dbg !339
  %len.0.call53 = select i1 %cmp54, i64 %len.0102, i64 %call53, !dbg !339
  br label %for.inc, !dbg !339

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %longest.1 = phi i8* [ %longest.0101, %for.body ], [ %longest.0.add.ptr52, %land.lhs.true ]
  %len.1 = phi i64 [ %len.0102, %for.body ], [ %len.0.call53, %land.lhs.true ]
  %call61 = call fastcc i8* @regnext(i8* %scan.0100) #11, !dbg !344
  call void @llvm.dbg.value(metadata !{i8* %call61}, i64 0, metadata !66), !dbg !344
  %cmp47 = icmp eq i8* %call61, null, !dbg !344
  br i1 %cmp47, label %for.end, label %for.inc.for.body_crit_edge, !dbg !344

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i8* %call61, align 1, !dbg !339, !tbaa !271
  br label %for.body, !dbg !344

for.end:                                          ; preds = %for.inc
  store i8* %longest.1, i8** %5, align 8, !dbg !345, !tbaa !270
  %conv63 = trunc i64 %len.1 to i32, !dbg !346
  store i32 %conv63, i32* %6, align 4, !dbg !346, !tbaa !300
  br label %cleanup, !dbg !347

cleanup:                                          ; preds = %if.end25, %for.end, %if.end45, %regc.exit98, %regc.exit
  %retval.0 = phi %struct.sqd_regexp* [ null, %regc.exit ], [ null, %regc.exit98 ], [ %2, %if.end45 ], [ %2, %for.end ], [ %2, %if.end25 ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #4, !dbg !348
  ret %struct.sqd_regexp* %retval.0, !dbg !348
}

; Function Attrs: nounwind optsize uwtable
define i32 @sqd_regexec(%struct.sqd_regexp* %prog, i8* %str) #0 {
entry:
  %ex = alloca %struct.exec, align 8
  call void @llvm.dbg.value(metadata !{%struct.sqd_regexp* %prog}, i64 0, metadata !90), !dbg !349
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !91), !dbg !350
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !92), !dbg !351
  call void @llvm.dbg.declare(metadata !{%struct.exec* %ex}, metadata !94), !dbg !352
  %cmp = icmp eq %struct.sqd_regexp* %prog, null, !dbg !353
  %cmp1 = icmp eq i8* %str, null, !dbg !353
  %or.cond = or i1 %cmp, %cmp1, !dbg !353
  br i1 %or.cond, label %if.then, label %if.end, !dbg !353

if.then:                                          ; preds = %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0)) #11, !dbg !354
  unreachable

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 6, i64 0, !dbg !356
  %0 = load i8* %arraydecay, align 1, !dbg !356, !tbaa !271
  %cmp2 = icmp eq i8 %0, -100, !dbg !356
  br i1 %cmp2, label %if.end5, label %if.then4, !dbg !356

if.then4:                                         ; preds = %if.end
  call void @sqd_regerror(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #11, !dbg !357
  unreachable

if.end5:                                          ; preds = %if.end
  %regmust = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 4, !dbg !359
  %1 = load i8** %regmust, align 8, !dbg !359, !tbaa !270
  %cmp6 = icmp eq i8* %1, null, !dbg !359
  br i1 %cmp6, label %if.end12, label %land.lhs.true, !dbg !359

land.lhs.true:                                    ; preds = %if.end5
  %call = call i8* @strstr(i8* %str, i8* %1) #12, !dbg !359
  %cmp9 = icmp eq i8* %call, null, !dbg !359
  br i1 %cmp9, label %return, label %if.end12, !dbg !359

if.end12:                                         ; preds = %if.end5, %land.lhs.true
  %regbol = getelementptr inbounds %struct.exec* %ex, i64 0, i32 1, !dbg !360
  store i8* %str, i8** %regbol, align 8, !dbg !360, !tbaa !270
  %arraydecay13 = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 0, i64 0, !dbg !361
  %regstartp = getelementptr inbounds %struct.exec* %ex, i64 0, i32 2, !dbg !361
  store i8** %arraydecay13, i8*** %regstartp, align 8, !dbg !361, !tbaa !270
  %arraydecay14 = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 1, i64 0, !dbg !362
  %regendp = getelementptr inbounds %struct.exec* %ex, i64 0, i32 3, !dbg !362
  store i8** %arraydecay14, i8*** %regendp, align 8, !dbg !362, !tbaa !270
  %reganch = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 3, !dbg !363
  %2 = load i8* %reganch, align 1, !dbg !363, !tbaa !271
  %tobool = icmp eq i8 %2, 0, !dbg !363
  br i1 %tobool, label %if.end17, label %if.then15, !dbg !363

if.then15:                                        ; preds = %if.end12
  %call16 = call fastcc i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %prog, i8* %str) #11, !dbg !364
  br label %return, !dbg !364

if.end17:                                         ; preds = %if.end12
  %regstart = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 2, !dbg !365
  %3 = load i8* %regstart, align 1, !dbg !365, !tbaa !271
  %cmp19 = icmp eq i8 %3, 0, !dbg !365
  call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !93), !dbg !366
  br i1 %cmp19, label %for.cond31.preheader, label %for.body, !dbg !365

for.cond31.preheader:                             ; preds = %if.end17
  %call3261 = call fastcc i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %prog, i8* %str) #11, !dbg !369
  %lnot62 = icmp eq i32 %call3261, 0, !dbg !369
  br i1 %lnot62, label %for.body34, label %return, !dbg !369

for.body:                                         ; preds = %if.end17, %for.inc
  %s.067 = phi i8* [ %call30, %for.inc ], [ %str, %if.end17 ]
  %call24 = call fastcc i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %prog, i8* %s.067) #11, !dbg !372
  %tobool25 = icmp eq i32 %call24, 0, !dbg !372
  br i1 %tobool25, label %for.inc, label %return, !dbg !372

for.inc:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %s.067, i64 1, !dbg !366
  %4 = load i8* %regstart, align 1, !dbg !366, !tbaa !271
  %conv29 = sext i8 %4 to i32, !dbg !366
  %call30 = call i8* @strchr(i8* %add.ptr, i32 %conv29) #12, !dbg !366
  call void @llvm.dbg.value(metadata !{i8* %call30}, i64 0, metadata !93), !dbg !366
  %cmp22 = icmp eq i8* %call30, null, !dbg !366
  br i1 %cmp22, label %return, label %for.body, !dbg !366

for.cond31:                                       ; preds = %for.body34
  %call32 = call fastcc i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %prog, i8* %incdec.ptr) #11, !dbg !369
  %lnot = icmp eq i32 %call32, 0, !dbg !369
  br i1 %lnot, label %for.body34, label %return, !dbg !369

for.body34:                                       ; preds = %for.cond31.preheader, %for.cond31
  %s.163 = phi i8* [ %incdec.ptr, %for.cond31 ], [ %str, %for.cond31.preheader ]
  %5 = load i8* %s.163, align 1, !dbg !373, !tbaa !271
  %cmp36 = icmp eq i8 %5, 0, !dbg !373
  %incdec.ptr = getelementptr inbounds i8* %s.163, i64 1, !dbg !369
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !93), !dbg !369
  br i1 %cmp36, label %return, label %for.cond31, !dbg !373

return:                                           ; preds = %for.body, %for.inc, %for.cond31.preheader, %for.body34, %for.cond31, %land.lhs.true, %if.then15
  %retval.0 = phi i32 [ %call16, %if.then15 ], [ 0, %land.lhs.true ], [ 1, %for.cond31.preheader ], [ 0, %for.body34 ], [ 1, %for.cond31 ], [ 1, %for.body ], [ 0, %for.inc ]
  ret i32 %retval.0, !dbg !374
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define void @SqdClean() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !57), !dbg !375
  br label %for.body, !dbg !375

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [10 x i8*]* @sqd_parse, i64 0, i64 %indvars.iv, !dbg !377
  %0 = load i8** %arrayidx, align 8, !dbg !377, !tbaa !270
  %cmp1 = icmp eq i8* %0, null, !dbg !377
  br i1 %cmp1, label %for.inc, label %if.then, !dbg !377

if.then:                                          ; preds = %for.body
  tail call void @free(i8* %0) #10, !dbg !378
  store i8* null, i8** %arrayidx, align 8, !dbg !380, !tbaa !270
  br label %for.inc, !dbg !381

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !375
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !375
  %exitcond = icmp eq i32 %lftr.wideiv, 10, !dbg !375
  br i1 %exitcond, label %for.end, label %for.body, !dbg !375

for.end:                                          ; preds = %for.inc
  ret void, !dbg !382
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind optsize uwtable
define void @sqd_regerror(i8* %s) #5 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !122), !dbg !383
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !384, !tbaa !270
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* %s) #10, !dbg !384
  tail call void @exit(i32 1) #13, !dbg !385
  unreachable, !dbg !385
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @reg(%struct.comp* %cp, i32 %paren, i32* nocapture %flagp) #0 {
entry:
  %flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !191), !dbg !386
  call void @llvm.dbg.value(metadata !{i32 %paren}, i64 0, metadata !192), !dbg !387
  call void @llvm.dbg.value(metadata !{i32* %flagp}, i64 0, metadata !193), !dbg !388
  call void @llvm.dbg.value(metadata !389, i64 0, metadata !194), !dbg !390
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !197), !dbg !391
  call void @llvm.dbg.declare(metadata !{i32* %flags}, metadata !198), !dbg !392
  store i32 1, i32* %flagp, align 4, !dbg !393, !tbaa !300
  %tobool = icmp ne i32 %paren, 0, !dbg !394
  br i1 %tobool, label %if.then, label %if.end4, !dbg !394

if.then:                                          ; preds = %entry
  %regnpar = getelementptr inbounds %struct.comp* %cp, i64 0, i32 1, !dbg !395
  %0 = load i32* %regnpar, align 4, !dbg !395, !tbaa !300
  %cmp = icmp sgt i32 %0, 9, !dbg !395
  br i1 %cmp, label %if.then1, label %if.end, !dbg !395

if.then1:                                         ; preds = %if.then
  call void @sqd_regerror(i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #11, !dbg !397
  unreachable

if.end:                                           ; preds = %if.then
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !197), !dbg !399
  %inc = add nsw i32 %0, 1, !dbg !400
  store i32 %inc, i32* %regnpar, align 4, !dbg !400, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !401), !dbg !403
  %regcode.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !404
  %1 = load i8** %regcode.i, align 8, !dbg !404, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !405), !dbg !404
  %arraydecay.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !406
  %cmp.i = icmp eq i8* %1, %arraydecay.i, !dbg !406
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !406

if.then.i:                                        ; preds = %if.end
  %regsize.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !407
  %2 = load i64* %regsize.i, align 8, !dbg !407, !tbaa !309
  %add.i = add nsw i64 %2, 3, !dbg !407
  store i64 %add.i, i64* %regsize.i, align 8, !dbg !407, !tbaa !309
  br label %regnode.exit, !dbg !409

if.end.i:                                         ; preds = %if.end
  %add = add nsw i32 %0, 20, !dbg !402
  %op.i = trunc i32 %add to i8
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !410), !dbg !411
  %incdec.ptr.i = getelementptr inbounds i8* %1, i64 1, !dbg !412
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !410), !dbg !412
  store i8 %op.i, i8* %1, align 1, !dbg !412, !tbaa !271
  %incdec.ptr2.i = getelementptr inbounds i8* %1, i64 2, !dbg !413
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i}, i64 0, metadata !410), !dbg !413
  store i8 0, i8* %incdec.ptr.i, align 1, !dbg !413, !tbaa !271
  %incdec.ptr3.i = getelementptr inbounds i8* %1, i64 3, !dbg !414
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i}, i64 0, metadata !410), !dbg !414
  store i8 0, i8* %incdec.ptr2.i, align 1, !dbg !414, !tbaa !271
  store i8* %incdec.ptr3.i, i8** %regcode.i, align 8, !dbg !415, !tbaa !270
  br label %regnode.exit, !dbg !416

regnode.exit:                                     ; preds = %if.then.i, %if.end.i
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !194), !dbg !402
  %phitmp = add i32 %0, 30, !dbg !417
  %phitmp111 = trunc i32 %phitmp to i8, !dbg !417
  br label %if.end4, !dbg !417

if.end4:                                          ; preds = %regnode.exit, %entry
  %ret.0 = phi i8* [ %1, %regnode.exit ], [ null, %entry ]
  %parno.0 = phi i8 [ %phitmp111, %regnode.exit ], [ 30, %entry ]
  %call5 = call fastcc i8* @regbranch(%struct.comp* %cp, i32* %flags) #11, !dbg !418
  call void @llvm.dbg.value(metadata !{i8* %call5}, i64 0, metadata !195), !dbg !418
  %cmp6 = icmp eq i8* %call5, null, !dbg !419
  br i1 %cmp6, label %return, label %if.end8, !dbg !419

if.end8:                                          ; preds = %if.end4
  br i1 %tobool, label %if.then10, label %if.end11, !dbg !420

if.then10:                                        ; preds = %if.end8
  call fastcc void @regtail(%struct.comp* %cp, i8* %ret.0, i8* %call5) #11, !dbg !421
  br label %if.end11, !dbg !421

if.end11:                                         ; preds = %if.end8, %if.then10
  %ret.1 = phi i8* [ %ret.0, %if.then10 ], [ %call5, %if.end8 ]
  call void @llvm.dbg.value(metadata !{i32* %flags}, i64 0, metadata !198), !dbg !422
  %3 = load i32* %flags, align 4, !dbg !422, !tbaa !300
  %neg1293 = or i32 %3, -2, !dbg !422
  %4 = load i32* %flagp, align 4, !dbg !422, !tbaa !300
  %and13 = and i32 %4, %neg1293, !dbg !422
  call void @llvm.dbg.value(metadata !{i32* %flags}, i64 0, metadata !198), !dbg !423
  %and14 = and i32 %3, 4, !dbg !423
  %or = or i32 %and14, %and13, !dbg !423
  store i32 %or, i32* %flagp, align 4, !dbg !424, !tbaa !300
  %regparse = getelementptr inbounds %struct.comp* %cp, i64 0, i32 0, !dbg !426
  %5 = load i8** %regparse, align 8, !dbg !426, !tbaa !270
  %6 = load i8* %5, align 1, !dbg !426, !tbaa !271
  %cmp15115 = icmp eq i8 %6, 124, !dbg !426
  br i1 %cmp15115, label %while.body, label %while.end, !dbg !426

while.body:                                       ; preds = %if.end11, %if.end22
  %7 = phi i8* [ %10, %if.end22 ], [ %5, %if.end11 ]
  %incdec.ptr = getelementptr inbounds i8* %7, i64 1, !dbg !427
  store i8* %incdec.ptr, i8** %regparse, align 8, !dbg !427, !tbaa !270
  %call18 = call fastcc i8* @regbranch(%struct.comp* %cp, i32* %flags) #11, !dbg !428
  call void @llvm.dbg.value(metadata !{i8* %call18}, i64 0, metadata !195), !dbg !428
  %cmp19 = icmp eq i8* %call18, null, !dbg !429
  br i1 %cmp19, label %return, label %if.end22, !dbg !429

if.end22:                                         ; preds = %while.body
  call fastcc void @regtail(%struct.comp* %cp, i8* %ret.1, i8* %call18) #11, !dbg !430
  call void @llvm.dbg.value(metadata !{i32* %flags}, i64 0, metadata !198), !dbg !431
  %8 = load i32* %flags, align 4, !dbg !431, !tbaa !300
  %neg2594 = or i32 %8, -2, !dbg !431
  %9 = load i32* %flagp, align 4, !dbg !431, !tbaa !300
  %and26 = and i32 %9, %neg2594, !dbg !431
  call void @llvm.dbg.value(metadata !{i32* %flags}, i64 0, metadata !198), !dbg !424
  %and27 = and i32 %8, 4, !dbg !424
  %or28 = or i32 %and27, %and26, !dbg !424
  store i32 %or28, i32* %flagp, align 4, !dbg !424, !tbaa !300
  %10 = load i8** %regparse, align 8, !dbg !426, !tbaa !270
  %11 = load i8* %10, align 1, !dbg !426, !tbaa !271
  %cmp15 = icmp eq i8 %11, 124, !dbg !426
  br i1 %cmp15, label %while.body, label %while.end, !dbg !426

while.end:                                        ; preds = %if.end22, %if.end11
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !432), !dbg !434
  %regcode.i99 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !435
  %12 = load i8** %regcode.i99, align 8, !dbg !435, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !436), !dbg !435
  %arraydecay.i100 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !437
  %cmp.i101 = icmp eq i8* %12, %arraydecay.i100, !dbg !437
  br i1 %cmp.i101, label %if.then.i104, label %if.end.i109, !dbg !437

if.then.i104:                                     ; preds = %while.end
  %regsize.i102 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !438
  %13 = load i64* %regsize.i102, align 8, !dbg !438, !tbaa !309
  %add.i103 = add nsw i64 %13, 3, !dbg !438
  store i64 %add.i103, i64* %regsize.i102, align 8, !dbg !438, !tbaa !309
  br label %regnode.exit110, !dbg !439

if.end.i109:                                      ; preds = %while.end
  %op.i105 = select i1 %tobool, i8 %parno.0, i8 0
  tail call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !440), !dbg !441
  %incdec.ptr.i106 = getelementptr inbounds i8* %12, i64 1, !dbg !442
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i106}, i64 0, metadata !440), !dbg !442
  store i8 %op.i105, i8* %12, align 1, !dbg !442, !tbaa !271
  %incdec.ptr2.i107 = getelementptr inbounds i8* %12, i64 2, !dbg !443
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i107}, i64 0, metadata !440), !dbg !443
  store i8 0, i8* %incdec.ptr.i106, align 1, !dbg !443, !tbaa !271
  %incdec.ptr3.i108 = getelementptr inbounds i8* %12, i64 3, !dbg !444
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i108}, i64 0, metadata !440), !dbg !444
  store i8 0, i8* %incdec.ptr2.i107, align 1, !dbg !444, !tbaa !271
  store i8* %incdec.ptr3.i108, i8** %regcode.i99, align 8, !dbg !445, !tbaa !270
  br label %regnode.exit110, !dbg !446

regnode.exit110:                                  ; preds = %if.then.i104, %if.end.i109
  call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !196), !dbg !433
  call fastcc void @regtail(%struct.comp* %cp, i8* %ret.1, i8* %12) #11, !dbg !447
  call void @llvm.dbg.value(metadata !{i8* %ret.1}, i64 0, metadata !195), !dbg !448
  %cmp32112 = icmp eq i8* %ret.1, null, !dbg !448
  br i1 %cmp32112, label %for.end, label %for.body, !dbg !448

for.body:                                         ; preds = %regoptail.exit, %regnode.exit110
  %br.0113 = phi i8* [ %ret.1, %regnode.exit110 ], [ %call34, %regoptail.exit ]
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !450) #4, !dbg !452
  call void @llvm.dbg.value(metadata !{i8* %br.0113}, i64 0, metadata !453) #4, !dbg !454
  call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !455) #4, !dbg !456
  %14 = load i8** %regcode.i99, align 8, !dbg !457, !tbaa !270
  %cmp.i97 = icmp eq i8* %14, %arraydecay.i100, !dbg !457
  br i1 %cmp.i97, label %regoptail.exit, label %lor.lhs.false.i, !dbg !457

lor.lhs.false.i:                                  ; preds = %for.body
  %15 = load i8* %br.0113, align 1, !dbg !457, !tbaa !271
  %cmp1.i = icmp eq i8 %15, 6, !dbg !457
  br i1 %cmp1.i, label %if.end.i98, label %regoptail.exit, !dbg !457

if.end.i98:                                       ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr inbounds i8* %br.0113, i64 3, !dbg !458
  call fastcc void @regtail(%struct.comp* %cp, i8* %add.ptr.i, i8* %12) #10, !dbg !458
  br label %regoptail.exit, !dbg !458

regoptail.exit:                                   ; preds = %for.body, %lor.lhs.false.i, %if.end.i98
  %call34 = call fastcc i8* @regnext(i8* %br.0113) #11, !dbg !448
  call void @llvm.dbg.value(metadata !{i8* %call34}, i64 0, metadata !195), !dbg !448
  %cmp32 = icmp eq i8* %call34, null, !dbg !448
  br i1 %cmp32, label %for.end, label %for.body, !dbg !448

for.end:                                          ; preds = %regoptail.exit, %regnode.exit110
  %16 = load i8** %regparse, align 8, !dbg !459, !tbaa !270
  br i1 %tobool, label %land.lhs.true, label %land.lhs.true44, !dbg !459

land.lhs.true:                                    ; preds = %for.end
  %incdec.ptr37 = getelementptr inbounds i8* %16, i64 1, !dbg !459
  store i8* %incdec.ptr37, i8** %regparse, align 8, !dbg !459, !tbaa !270
  %17 = load i8* %16, align 1, !dbg !459, !tbaa !271
  %cmp39 = icmp eq i8 %17, 41, !dbg !459
  br i1 %cmp39, label %return, label %if.then41, !dbg !459

if.then41:                                        ; preds = %land.lhs.true
  call void @sqd_regerror(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #11, !dbg !460
  unreachable

land.lhs.true44:                                  ; preds = %for.end
  %18 = load i8* %16, align 1, !dbg !463, !tbaa !271
  switch i8 %18, label %if.else55 [
    i8 0, label %return
    i8 41, label %if.then54
  ], !dbg !463

if.then54:                                        ; preds = %land.lhs.true44
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0)) #11, !dbg !464
  unreachable

if.else55:                                        ; preds = %land.lhs.true44
  call void @sqd_regerror(i8* getelementptr inbounds ([28 x i8]* @.str18, i64 0, i64 0)) #11, !dbg !468
  unreachable

return:                                           ; preds = %while.body, %land.lhs.true, %land.lhs.true44, %if.end4
  %retval.0 = phi i8* [ null, %if.end4 ], [ %ret.1, %land.lhs.true44 ], [ %ret.1, %land.lhs.true ], [ null, %while.body ]
  ret i8* %retval.0, !dbg !470
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i8* @regnext(i8* %p) #6 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !127), !dbg !471
  %add.ptr = getelementptr inbounds i8* %p, i64 1, !dbg !472
  %0 = load i8* %add.ptr, align 1, !dbg !472, !tbaa !271
  %conv15 = zext i8 %0 to i32, !dbg !472
  %and = shl nuw nsw i32 %conv15, 8, !dbg !472
  %shl = and i32 %and, 32512, !dbg !472
  %add.ptr1 = getelementptr inbounds i8* %p, i64 2, !dbg !472
  %1 = load i8* %add.ptr1, align 1, !dbg !472, !tbaa !271
  %conv216 = zext i8 %1 to i32, !dbg !472
  %add = or i32 %shl, %conv216, !dbg !472
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !128), !dbg !472
  %cmp = icmp eq i32 %add, 0, !dbg !473
  br i1 %cmp, label %return, label %if.end, !dbg !473

if.end:                                           ; preds = %entry
  %2 = load i8* %p, align 1, !dbg !474, !tbaa !271
  %cmp6 = icmp eq i8 %2, 7, !dbg !474
  %idx.ext17 = zext i32 %add to i64, !dbg !474
  %idx.neg = sub i64 0, %idx.ext17, !dbg !474
  %idx.neg.sink = select i1 %cmp6, i64 %idx.neg, i64 %idx.ext17, !dbg !474
  %add.ptr8 = getelementptr inbounds i8* %p, i64 %idx.neg.sink, !dbg !474
  br label %return, !dbg !474

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %add.ptr8, %if.end ], [ null, %entry ]
  ret i8* %retval.0, !dbg !475
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @regtry(%struct.exec* %ep, %struct.sqd_regexp* %prog, i8* %string) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.exec* %ep}, i64 0, metadata !135), !dbg !476
  tail call void @llvm.dbg.value(metadata !{%struct.sqd_regexp* %prog}, i64 0, metadata !136), !dbg !477
  tail call void @llvm.dbg.value(metadata !{i8* %string}, i64 0, metadata !137), !dbg !478
  %reginput = getelementptr inbounds %struct.exec* %ep, i64 0, i32 0, !dbg !479
  store i8* %string, i8** %reginput, align 8, !dbg !479, !tbaa !270
  %arraydecay = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 0, i64 0, !dbg !480
  tail call void @llvm.dbg.value(metadata !{i8** %arraydecay}, i64 0, metadata !139), !dbg !480
  %arraydecay1 = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 1, i64 0, !dbg !481
  tail call void @llvm.dbg.value(metadata !{i8** %arraydecay1}, i64 0, metadata !140), !dbg !481
  tail call void @llvm.dbg.value(metadata !482, i64 0, metadata !138), !dbg !483
  br label %for.body, !dbg !483

for.body:                                         ; preds = %entry, %for.body
  %enp.018 = phi i8** [ %arraydecay1, %entry ], [ %incdec.ptr2, %for.body ]
  %stp.017 = phi i8** [ %arraydecay, %entry ], [ %incdec.ptr, %for.body ]
  %i.016 = phi i32 [ 10, %entry ], [ %dec, %for.body ]
  %incdec.ptr = getelementptr inbounds i8** %stp.017, i64 1, !dbg !485
  tail call void @llvm.dbg.value(metadata !{i8** %incdec.ptr}, i64 0, metadata !139), !dbg !485
  store i8* null, i8** %stp.017, align 8, !dbg !485, !tbaa !270
  %incdec.ptr2 = getelementptr inbounds i8** %enp.018, i64 1, !dbg !487
  tail call void @llvm.dbg.value(metadata !{i8** %incdec.ptr2}, i64 0, metadata !140), !dbg !487
  store i8* null, i8** %enp.018, align 8, !dbg !487, !tbaa !270
  %dec = add nsw i32 %i.016, -1, !dbg !483
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !138), !dbg !483
  %cmp = icmp sgt i32 %dec, 0, !dbg !483
  br i1 %cmp, label %for.body, label %for.end, !dbg !483

for.end:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 6, i64 1, !dbg !488
  %call = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %add.ptr) #11, !dbg !488
  %tobool = icmp eq i32 %call, 0, !dbg !488
  br i1 %tobool, label %return, label %if.then, !dbg !488

if.then:                                          ; preds = %for.end
  store i8* %string, i8** %arraydecay, align 8, !dbg !489, !tbaa !270
  %0 = load i8** %reginput, align 8, !dbg !491, !tbaa !270
  store i8* %0, i8** %arraydecay1, align 8, !dbg !491, !tbaa !270
  br label %return, !dbg !492

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0, !dbg !493
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind optsize uwtable
define void @sqd_regsub(%struct.sqd_regexp* %rp, i8* %source, i8* %dest) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.sqd_regexp* %rp}, i64 0, metadata !108), !dbg !494
  tail call void @llvm.dbg.value(metadata !{i8* %source}, i64 0, metadata !109), !dbg !495
  tail call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !110), !dbg !496
  tail call void @llvm.dbg.value(metadata !{%struct.sqd_regexp* %rp}, i64 0, metadata !111), !dbg !497
  tail call void @llvm.dbg.value(metadata !{i8* %source}, i64 0, metadata !113), !dbg !498
  tail call void @llvm.dbg.value(metadata !{i8* %dest}, i64 0, metadata !114), !dbg !499
  %cmp = icmp eq %struct.sqd_regexp* %rp, null, !dbg !500
  %cmp1 = icmp eq i8* %source, null, !dbg !500
  %or.cond = or i1 %cmp, %cmp1, !dbg !500
  %cmp3 = icmp eq i8* %dest, null, !dbg !500
  %or.cond113 = or i1 %or.cond, %cmp3, !dbg !500
  br i1 %or.cond113, label %if.then, label %if.end, !dbg !500

if.then:                                          ; preds = %entry
  tail call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0)) #11, !dbg !501
  unreachable

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.sqd_regexp* %rp, i64 0, i32 6, i64 0, !dbg !503
  %0 = load i8* %arraydecay, align 1, !dbg !503, !tbaa !271
  %cmp4 = icmp eq i8 %0, -100, !dbg !503
  br i1 %cmp4, label %while.cond.outer, label %if.then6, !dbg !503

if.then6:                                         ; preds = %if.end
  tail call void @sqd_regerror(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0)) #11, !dbg !504
  unreachable

while.cond:                                       ; preds = %land.lhs.true49, %if.else44, %while.cond.outer
  %src.0 = phi i8* [ %src.0.ph, %while.cond.outer ], [ %src.1120, %if.else44 ], [ %src.1120, %land.lhs.true49 ]
  %incdec.ptr = getelementptr inbounds i8* %src.0, i64 1, !dbg !506
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !113), !dbg !506
  %1 = load i8* %src.0, align 1, !dbg !506, !tbaa !271
  tail call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !115), !dbg !506
  switch i8 %1, label %if.end42 [
    i8 0, label %return
    i8 38, label %if.else44
    i8 92, label %land.lhs.true
  ], !dbg !506

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8* %incdec.ptr, align 1, !dbg !507, !tbaa !271
  %idxprom = sext i8 %2 to i64, !dbg !507
  %call = tail call i16** @__ctype_b_loc() #14, !dbg !507
  %3 = load i16** %call, align 8, !dbg !507, !tbaa !270
  %arrayidx = getelementptr inbounds i16* %3, i64 %idxprom, !dbg !507
  %4 = load i16* %arrayidx, align 2, !dbg !507, !tbaa !509
  %and = and i16 %4, 2048, !dbg !507
  %tobool = icmp eq i16 %and, 0, !dbg !507
  br i1 %tobool, label %land.lhs.true32, label %if.end25, !dbg !507

if.end25:                                         ; preds = %land.lhs.true
  %conv18 = sext i8 %2 to i32, !dbg !507
  %incdec.ptr21 = getelementptr inbounds i8* %src.0, i64 2, !dbg !510
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr21}, i64 0, metadata !113), !dbg !510
  %sub = add nsw i32 %conv18, -48, !dbg !510
  tail call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !116), !dbg !510
  %cmp26 = icmp slt i32 %sub, 0, !dbg !511
  br i1 %cmp26, label %if.end25.land.lhs.true32_crit_edge, label %if.else44, !dbg !511

if.end25.land.lhs.true32_crit_edge:               ; preds = %if.end25
  %.pre = load i8* %incdec.ptr21, align 1, !dbg !512, !tbaa !271
  br label %land.lhs.true32, !dbg !511

land.lhs.true32:                                  ; preds = %if.end25.land.lhs.true32_crit_edge, %land.lhs.true
  %5 = phi i8 [ %2, %land.lhs.true ], [ %.pre, %if.end25.land.lhs.true32_crit_edge ]
  %src.1116122 = phi i8* [ %incdec.ptr, %land.lhs.true ], [ %incdec.ptr21, %if.end25.land.lhs.true32_crit_edge ]
  switch i8 %5, label %if.end42 [
    i8 92, label %if.then40
    i8 38, label %if.then40
  ], !dbg !512

if.then40:                                        ; preds = %land.lhs.true32, %land.lhs.true32
  %incdec.ptr41 = getelementptr inbounds i8* %src.1116122, i64 1, !dbg !514
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr41}, i64 0, metadata !113), !dbg !514
  tail call void @llvm.dbg.value(metadata !{i8 %5}, i64 0, metadata !115), !dbg !514
  br label %if.end42, !dbg !514

if.end42:                                         ; preds = %while.cond, %land.lhs.true32, %if.then40
  %c.0 = phi i8 [ %5, %if.then40 ], [ 92, %land.lhs.true32 ], [ %1, %while.cond ]
  %src.2 = phi i8* [ %incdec.ptr41, %if.then40 ], [ %src.1116122, %land.lhs.true32 ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr43 = getelementptr inbounds i8* %dst.0.ph, i64 1, !dbg !515
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr43}, i64 0, metadata !114), !dbg !515
  store i8 %c.0, i8* %dst.0.ph, align 1, !dbg !515, !tbaa !271
  br label %while.cond.outer, !dbg !516

while.cond.outer:                                 ; preds = %if.then63, %if.end42, %if.end
  %dst.0.ph = phi i8* [ %dest, %if.end ], [ %incdec.ptr43, %if.end42 ], [ %add.ptr, %if.then63 ]
  %src.0.ph = phi i8* [ %source, %if.end ], [ %src.2, %if.end42 ], [ %src.1120, %if.then63 ]
  br label %while.cond

if.else44:                                        ; preds = %while.cond, %if.end25
  %src.1120 = phi i8* [ %incdec.ptr21, %if.end25 ], [ %incdec.ptr, %while.cond ]
  %no.0119 = phi i32 [ %sub, %if.end25 ], [ 0, %while.cond ]
  %idxprom45 = sext i32 %no.0119 to i64, !dbg !517
  %arrayidx46 = getelementptr inbounds %struct.sqd_regexp* %rp, i64 0, i32 0, i64 %idxprom45, !dbg !517
  %6 = load i8** %arrayidx46, align 8, !dbg !517, !tbaa !270
  %cmp47 = icmp eq i8* %6, null, !dbg !517
  br i1 %cmp47, label %while.cond, label %land.lhs.true49, !dbg !517

land.lhs.true49:                                  ; preds = %if.else44
  %arrayidx51 = getelementptr inbounds %struct.sqd_regexp* %rp, i64 0, i32 1, i64 %idxprom45, !dbg !517
  %7 = load i8** %arrayidx51, align 8, !dbg !517, !tbaa !270
  %cmp52 = icmp ne i8* %7, null, !dbg !517
  %cmp61 = icmp ugt i8* %7, %6, !dbg !517
  %or.cond114 = and i1 %cmp52, %cmp61, !dbg !517
  br i1 %or.cond114, label %if.then63, label %while.cond, !dbg !517

if.then63:                                        ; preds = %land.lhs.true49
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64, !dbg !518
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64, !dbg !518
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !518
  tail call void @llvm.dbg.value(metadata !{i64 %sub.ptr.sub}, i64 0, metadata !117), !dbg !518
  %call73 = tail call i8* @strncpy(i8* %dst.0.ph, i8* %6, i64 %sub.ptr.sub) #10, !dbg !520
  %add.ptr = getelementptr inbounds i8* %dst.0.ph, i64 %sub.ptr.sub, !dbg !521
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !114), !dbg !521
  %add.ptr.sum = add i64 %sub.ptr.sub, -1, !dbg !522
  %add.ptr74 = getelementptr inbounds i8* %dst.0.ph, i64 %add.ptr.sum, !dbg !522
  %8 = load i8* %add.ptr74, align 1, !dbg !522, !tbaa !271
  %cmp76 = icmp eq i8 %8, 0, !dbg !522
  br i1 %cmp76, label %if.then78, label %while.cond.outer, !dbg !522

if.then78:                                        ; preds = %if.then63
  tail call void @sqd_regerror(i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0)) #11, !dbg !523
  unreachable

return:                                           ; preds = %while.cond
  store i8 0, i8* %dst.0.ph, align 1, !dbg !525, !tbaa !271
  ret void, !dbg !525
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #8

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #9

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @regmatch(%struct.exec* %ep, i8* %prog) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.exec* %ep}, i64 0, metadata !145), !dbg !526
  tail call void @llvm.dbg.value(metadata !{i8* %prog}, i64 0, metadata !146), !dbg !527
  tail call void @llvm.dbg.value(metadata !{i8* %prog}, i64 0, metadata !147), !dbg !528
  %cmp237 = icmp eq i8* %prog, null, !dbg !528
  br i1 %cmp237, label %for.end159, label %for.body.lr.ph, !dbg !528

for.body.lr.ph:                                   ; preds = %entry
  %reginput = getelementptr inbounds %struct.exec* %ep, i64 0, i32 0, !dbg !529
  %regbol = getelementptr inbounds %struct.exec* %ep, i64 0, i32 1, !dbg !529
  br label %for.body, !dbg !528

for.body:                                         ; preds = %for.cond.backedge.thread, %for.body.lr.ph, %for.cond.backedge
  %scan.0238 = phi i8* [ %prog, %for.body.lr.ph ], [ %call, %for.cond.backedge ], [ %add.ptr105, %for.cond.backedge.thread ]
  %call = tail call fastcc i8* @regnext(i8* %scan.0238) #11, !dbg !530
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !148), !dbg !530
  %0 = load i8* %scan.0238, align 1, !dbg !531, !tbaa !271
  %conv = sext i8 %0 to i32, !dbg !531
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb10
    i32 8, label %sw.bb18
    i32 4, label %sw.bb37
    i32 5, label %sw.bb52
    i32 9, label %for.cond.backedge
    i32 7, label %for.cond.backedge
    i32 21, label %sw.bb68
    i32 22, label %sw.bb68
    i32 23, label %sw.bb68
    i32 24, label %sw.bb68
    i32 25, label %sw.bb68
    i32 26, label %sw.bb68
    i32 27, label %sw.bb68
    i32 28, label %sw.bb68
    i32 29, label %sw.bb68
    i32 31, label %sw.bb80
    i32 32, label %sw.bb80
    i32 33, label %sw.bb80
    i32 34, label %sw.bb80
    i32 35, label %sw.bb80
    i32 36, label %sw.bb80
    i32 37, label %sw.bb80
    i32 38, label %sw.bb80
    i32 39, label %sw.bb80
    i32 6, label %sw.bb99
    i32 10, label %sw.bb118
    i32 11, label %sw.bb118
    i32 0, label %return
  ], !dbg !531

sw.bb:                                            ; preds = %for.body
  %1 = load i8** %reginput, align 8, !dbg !529, !tbaa !270
  %2 = load i8** %regbol, align 8, !dbg !529, !tbaa !270
  %cmp1 = icmp eq i8* %1, %2, !dbg !529
  br i1 %cmp1, label %for.cond.backedge, label %return, !dbg !529

for.cond.backedge:                                ; preds = %sw.bb, %sw.bb3, %if.end16, %if.end34, %if.end49, %if.end65, %for.body, %for.body
  %cmp = icmp eq i8* %call, null, !dbg !528
  br i1 %cmp, label %for.end159, label %for.body, !dbg !528

sw.bb3:                                           ; preds = %for.body
  %3 = load i8** %reginput, align 8, !dbg !532, !tbaa !270
  %4 = load i8* %3, align 1, !dbg !532, !tbaa !271
  %cmp6 = icmp eq i8 %4, 0, !dbg !532
  br i1 %cmp6, label %for.cond.backedge, label %return, !dbg !532

sw.bb10:                                          ; preds = %for.body
  %5 = load i8** %reginput, align 8, !dbg !533, !tbaa !270
  %6 = load i8* %5, align 1, !dbg !533, !tbaa !271
  %cmp13 = icmp eq i8 %6, 0, !dbg !533
  br i1 %cmp13, label %return, label %if.end16, !dbg !533

if.end16:                                         ; preds = %sw.bb10
  %incdec.ptr = getelementptr inbounds i8* %5, i64 1, !dbg !534
  store i8* %incdec.ptr, i8** %reginput, align 8, !dbg !534, !tbaa !270
  br label %for.cond.backedge, !dbg !535

sw.bb18:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %scan.0238, i64 3, !dbg !536
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !154), !dbg !536
  %7 = load i8* %add.ptr, align 1, !dbg !537, !tbaa !271
  %8 = load i8** %reginput, align 8, !dbg !537, !tbaa !270
  %9 = load i8* %8, align 1, !dbg !537, !tbaa !271
  %cmp22 = icmp eq i8 %7, %9, !dbg !537
  br i1 %cmp22, label %if.end25, label %return, !dbg !537

if.end25:                                         ; preds = %sw.bb18
  %call26 = tail call i64 @strlen(i8* %add.ptr) #12, !dbg !538
  tail call void @llvm.dbg.value(metadata !{i64 %call26}, i64 0, metadata !149), !dbg !538
  %cmp27 = icmp ugt i64 %call26, 1, !dbg !539
  br i1 %cmp27, label %land.lhs.true, label %if.end34, !dbg !539

land.lhs.true:                                    ; preds = %if.end25
  %call30 = tail call i32 @strncmp(i8* %add.ptr, i8* %8, i64 %call26) #12, !dbg !539
  %cmp31 = icmp eq i32 %call30, 0, !dbg !539
  br i1 %cmp31, label %if.end34, label %return, !dbg !539

if.end34:                                         ; preds = %land.lhs.true, %if.end25
  %add.ptr36 = getelementptr inbounds i8* %8, i64 %call26, !dbg !540
  store i8* %add.ptr36, i8** %reginput, align 8, !dbg !540, !tbaa !270
  br label %for.cond.backedge, !dbg !541

sw.bb37:                                          ; preds = %for.body
  %10 = load i8** %reginput, align 8, !dbg !542, !tbaa !270
  %11 = load i8* %10, align 1, !dbg !542, !tbaa !271
  %cmp40 = icmp eq i8 %11, 0, !dbg !542
  br i1 %cmp40, label %return, label %lor.lhs.false, !dbg !542

lor.lhs.false:                                    ; preds = %sw.bb37
  %conv39 = sext i8 %11 to i32, !dbg !542
  %add.ptr42 = getelementptr inbounds i8* %scan.0238, i64 3, !dbg !543
  %call45 = tail call i8* @strchr(i8* %add.ptr42, i32 %conv39) #12, !dbg !543
  %cmp46 = icmp eq i8* %call45, null, !dbg !543
  br i1 %cmp46, label %return, label %if.end49, !dbg !543

if.end49:                                         ; preds = %lor.lhs.false
  %incdec.ptr51 = getelementptr inbounds i8* %10, i64 1, !dbg !544
  store i8* %incdec.ptr51, i8** %reginput, align 8, !dbg !544, !tbaa !270
  br label %for.cond.backedge, !dbg !545

sw.bb52:                                          ; preds = %for.body
  %12 = load i8** %reginput, align 8, !dbg !546, !tbaa !270
  %13 = load i8* %12, align 1, !dbg !546, !tbaa !271
  %cmp55 = icmp eq i8 %13, 0, !dbg !546
  br i1 %cmp55, label %return, label %lor.lhs.false57, !dbg !546

lor.lhs.false57:                                  ; preds = %sw.bb52
  %conv54 = sext i8 %13 to i32, !dbg !546
  %add.ptr58 = getelementptr inbounds i8* %scan.0238, i64 3, !dbg !547
  %call61 = tail call i8* @strchr(i8* %add.ptr58, i32 %conv54) #12, !dbg !547
  %cmp62 = icmp eq i8* %call61, null, !dbg !547
  br i1 %cmp62, label %if.end65, label %return, !dbg !547

if.end65:                                         ; preds = %lor.lhs.false57
  %incdec.ptr67 = getelementptr inbounds i8* %12, i64 1, !dbg !548
  store i8* %incdec.ptr67, i8** %reginput, align 8, !dbg !548, !tbaa !270
  br label %for.cond.backedge, !dbg !549

sw.bb68:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %14 = load i8** %reginput, align 8, !dbg !550, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !158), !dbg !550
  %call71 = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %call) #11, !dbg !551
  %tobool = icmp eq i32 %call71, 0, !dbg !551
  br i1 %tobool, label %return, label %if.then72, !dbg !551

if.then72:                                        ; preds = %sw.bb68
  %conv69 = sext i8 %0 to i64, !dbg !552
  %sub = add i64 %conv69, -20, !dbg !552
  %regstartp = getelementptr inbounds %struct.exec* %ep, i64 0, i32 2, !dbg !553
  %15 = load i8*** %regstartp, align 8, !dbg !553, !tbaa !270
  %arrayidx = getelementptr inbounds i8** %15, i64 %sub, !dbg !553
  %16 = load i8** %arrayidx, align 8, !dbg !553, !tbaa !270
  %cmp73 = icmp eq i8* %16, null, !dbg !553
  br i1 %cmp73, label %if.then75, label %return, !dbg !553

if.then75:                                        ; preds = %if.then72
  store i8* %14, i8** %arrayidx, align 8, !dbg !555, !tbaa !270
  br label %return, !dbg !555

sw.bb80:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %17 = load i8** %reginput, align 8, !dbg !556, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %17}, i64 0, metadata !161), !dbg !556
  %call86 = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %call) #11, !dbg !557
  %tobool87 = icmp eq i32 %call86, 0, !dbg !557
  br i1 %tobool87, label %return, label %if.then88, !dbg !557

if.then88:                                        ; preds = %sw.bb80
  %conv82 = sext i8 %0 to i64, !dbg !558
  %sub83 = add i64 %conv82, -30, !dbg !558
  %regendp = getelementptr inbounds %struct.exec* %ep, i64 0, i32 3, !dbg !559
  %18 = load i8*** %regendp, align 8, !dbg !559, !tbaa !270
  %arrayidx90 = getelementptr inbounds i8** %18, i64 %sub83, !dbg !559
  %19 = load i8** %arrayidx90, align 8, !dbg !559, !tbaa !270
  %cmp91 = icmp eq i8* %19, null, !dbg !559
  br i1 %cmp91, label %if.then93, label %return, !dbg !559

if.then93:                                        ; preds = %if.then88
  store i8* %17, i8** %arrayidx90, align 8, !dbg !561, !tbaa !270
  br label %return, !dbg !561

sw.bb99:                                          ; preds = %for.body
  %20 = load i8** %reginput, align 8, !dbg !562, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %20}, i64 0, metadata !162), !dbg !562
  %21 = load i8* %call, align 1, !dbg !563, !tbaa !271
  %cmp102 = icmp eq i8 %21, 6, !dbg !563
  br i1 %cmp102, label %while.cond.preheader, label %for.cond.backedge.thread, !dbg !563

while.cond.preheader:                             ; preds = %sw.bb99
  %cmp108217 = icmp eq i8 %0, 6, !dbg !564
  br i1 %cmp108217, label %while.body, label %return, !dbg !564

for.cond.backedge.thread:                         ; preds = %sw.bb99
  %add.ptr105 = getelementptr inbounds i8* %scan.0238, i64 3, !dbg !566
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr105}, i64 0, metadata !148), !dbg !566
  br label %for.body, !dbg !528

while.body:                                       ; preds = %while.cond.preheader, %if.end114
  %scan.1218 = phi i8* [ %call116, %if.end114 ], [ %scan.0238, %while.cond.preheader ]
  %add.ptr110 = getelementptr inbounds i8* %scan.1218, i64 3, !dbg !567
  %call111 = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %add.ptr110) #11, !dbg !567
  %tobool112 = icmp eq i32 %call111, 0, !dbg !567
  br i1 %tobool112, label %if.end114, label %return, !dbg !567

if.end114:                                        ; preds = %while.body
  store i8* %20, i8** %reginput, align 8, !dbg !569, !tbaa !270
  %call116 = tail call fastcc i8* @regnext(i8* %scan.1218) #11, !dbg !570
  tail call void @llvm.dbg.value(metadata !{i8* %call116}, i64 0, metadata !147), !dbg !570
  %22 = load i8* %call116, align 1, !dbg !564, !tbaa !271
  %cmp108 = icmp eq i8 %22, 6, !dbg !564
  br i1 %cmp108, label %while.body, label %return, !dbg !564

sw.bb118:                                         ; preds = %for.body, %for.body
  %23 = load i8* %call, align 1, !dbg !571, !tbaa !271
  %cmp120 = icmp eq i8 %23, 8, !dbg !571
  br i1 %cmp120, label %cond.true, label %cond.end, !dbg !571

cond.true:                                        ; preds = %sw.bb118
  %add.ptr122 = getelementptr inbounds i8* %call, i64 3, !dbg !571
  %24 = load i8* %add.ptr122, align 1, !dbg !571, !tbaa !271
  %phitmp = sext i8 %24 to i32, !dbg !571
  br label %cond.end, !dbg !571

cond.end:                                         ; preds = %sw.bb118, %cond.true
  %cond = phi i32 [ %phitmp, %cond.true ], [ 0, %sw.bb118 ]
  %25 = load i8** %reginput, align 8, !dbg !572, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !167), !dbg !572
  %not.cmp129 = icmp ne i8 %0, 10, !dbg !573
  %conv132 = zext i1 %not.cmp129 to i64, !dbg !573
  tail call void @llvm.dbg.value(metadata !{i64 %conv132}, i64 0, metadata !168), !dbg !573
  %add.ptr133 = getelementptr inbounds i8* %scan.0238, i64 3, !dbg !574
  tail call void @llvm.dbg.value(metadata !{%struct.exec* %ep}, i64 0, metadata !576) #4, !dbg !577
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr133}, i64 0, metadata !578) #4, !dbg !579
  %26 = load i8* %add.ptr133, align 1, !dbg !580, !tbaa !271
  %conv.i = sext i8 %26 to i32, !dbg !580
  switch i32 %conv.i, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 8, label %sw.bb1.i
    i32 4, label %sw.bb6.i
    i32 5, label %sw.bb10.i
  ], !dbg !580

sw.bb.i:                                          ; preds = %cond.end
  %call.i = tail call i64 @strlen(i8* %25) #12, !dbg !581
  br label %regrepeat.exit, !dbg !581

sw.bb1.i:                                         ; preds = %cond.end
  %add.ptr.i = getelementptr inbounds i8* %scan.0238, i64 6, !dbg !583
  %27 = load i8* %add.ptr.i, align 1, !dbg !583, !tbaa !271
  tail call void @llvm.dbg.value(metadata !{i8 %27}, i64 0, metadata !584) #4, !dbg !583
  tail call void @llvm.dbg.value(metadata !585, i64 0, metadata !586) #4, !dbg !587
  tail call void @llvm.dbg.value(metadata !{i8* %25}, i64 0, metadata !588) #4, !dbg !589
  %28 = load i8* %25, align 1, !dbg !589, !tbaa !271
  %cmp21.i = icmp eq i8 %28, %27, !dbg !589
  br i1 %cmp21.i, label %for.body.i, label %regrepeat.exit, !dbg !589

for.body.i:                                       ; preds = %sw.bb1.i, %for.body.i
  %scan.023.i = phi i8* [ %incdec.ptr.i, %for.body.i ], [ %25, %sw.bb1.i ]
  %count.022.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %sw.bb1.i ]
  %inc.i = add i64 %count.022.i, 1, !dbg !591
  tail call void @llvm.dbg.value(metadata !{i64 %inc.i}, i64 0, metadata !586) #4, !dbg !591
  %incdec.ptr.i = getelementptr inbounds i8* %scan.023.i, i64 1, !dbg !589
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !588) #4, !dbg !589
  %29 = load i8* %incdec.ptr.i, align 1, !dbg !589, !tbaa !271
  %cmp.i = icmp eq i8 %29, %27, !dbg !589
  br i1 %cmp.i, label %for.body.i, label %regrepeat.exit, !dbg !589

sw.bb6.i:                                         ; preds = %cond.end
  %add.ptr8.i = getelementptr inbounds i8* %scan.0238, i64 6, !dbg !592
  %call9.i = tail call i64 @strspn(i8* %25, i8* %add.ptr8.i) #12, !dbg !592
  br label %regrepeat.exit, !dbg !592

sw.bb10.i:                                        ; preds = %cond.end
  %add.ptr12.i = getelementptr inbounds i8* %scan.0238, i64 6, !dbg !593
  %call13.i = tail call i64 @strcspn(i8* %25, i8* %add.ptr12.i) #12, !dbg !593
  br label %regrepeat.exit, !dbg !593

sw.default.i:                                     ; preds = %cond.end
  tail call void @sqd_regerror(i8* getelementptr inbounds ([38 x i8]* @.str14, i64 0, i64 0)) #10, !dbg !594
  unreachable

regrepeat.exit:                                   ; preds = %for.body.i, %sw.bb.i, %sw.bb1.i, %sw.bb6.i, %sw.bb10.i
  %retval.0.i = phi i64 [ %call13.i, %sw.bb10.i ], [ %call9.i, %sw.bb6.i ], [ %call.i, %sw.bb.i ], [ 0, %sw.bb1.i ], [ %inc.i, %for.body.i ]
  %add = add i64 %retval.0.i, 1, !dbg !574
  tail call void @llvm.dbg.value(metadata !{i64 %add}, i64 0, metadata !166), !dbg !574
  %cmp136221 = icmp ugt i64 %add, %conv132, !dbg !574
  br i1 %cmp136221, label %for.body138.lr.ph, label %return, !dbg !574

for.body138.lr.ph:                                ; preds = %regrepeat.exit
  %cmp143 = icmp eq i32 %cond, 0, !dbg !595
  br label %for.body138, !dbg !574

for.body138:                                      ; preds = %for.body138.lr.ph, %for.cond135.backedge
  %no125.0222 = phi i64 [ %add, %for.body138.lr.ph ], [ %add.ptr139.sum, %for.cond135.backedge ]
  %add.ptr139.sum = add i64 %no125.0222, -1, !dbg !597
  %add.ptr140 = getelementptr inbounds i8* %25, i64 %add.ptr139.sum, !dbg !597
  store i8* %add.ptr140, i8** %reginput, align 8, !dbg !597, !tbaa !270
  br i1 %cmp143, label %if.then151, label %lor.lhs.false145, !dbg !595

lor.lhs.false145:                                 ; preds = %for.body138
  %30 = load i8* %add.ptr140, align 1, !dbg !595, !tbaa !271
  %conv147 = sext i8 %30 to i32, !dbg !595
  %cmp149 = icmp eq i32 %conv147, %cond, !dbg !595
  br i1 %cmp149, label %if.then151, label %for.cond135.backedge, !dbg !595

if.then151:                                       ; preds = %lor.lhs.false145, %for.body138
  %call152 = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %call) #11, !dbg !598
  %tobool153 = icmp eq i32 %call152, 0, !dbg !598
  br i1 %tobool153, label %for.cond135.backedge, label %return, !dbg !598

for.cond135.backedge:                             ; preds = %if.then151, %lor.lhs.false145
  %cmp136 = icmp ugt i64 %add.ptr139.sum, %conv132, !dbg !574
  br i1 %cmp136, label %for.body138, label %return, !dbg !574

sw.default:                                       ; preds = %for.body
  tail call void @sqd_regerror(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0)) #11, !dbg !599
  unreachable

for.end159:                                       ; preds = %for.cond.backedge, %entry
  tail call void @sqd_regerror(i8* getelementptr inbounds ([19 x i8]* @.str13, i64 0, i64 0)) #11, !dbg !600
  unreachable

return:                                           ; preds = %for.body, %sw.bb52, %lor.lhs.false57, %sw.bb37, %lor.lhs.false, %land.lhs.true, %sw.bb18, %sw.bb10, %sw.bb3, %sw.bb, %regrepeat.exit, %if.then151, %for.cond135.backedge, %while.cond.preheader, %while.body, %if.end114, %sw.bb80, %if.then88, %if.then93, %sw.bb68, %if.then72, %if.then75
  %retval.0 = phi i32 [ 1, %if.then75 ], [ 1, %if.then72 ], [ 0, %sw.bb68 ], [ 1, %if.then93 ], [ 1, %if.then88 ], [ 0, %sw.bb80 ], [ 0, %while.cond.preheader ], [ 1, %while.body ], [ 0, %if.end114 ], [ 0, %regrepeat.exit ], [ 1, %if.then151 ], [ 0, %for.cond135.backedge ], [ 1, %for.body ], [ 0, %sw.bb52 ], [ 0, %lor.lhs.false57 ], [ 0, %sw.bb37 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %sw.bb18 ], [ 0, %sw.bb10 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0, !dbg !601
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) #7

; Function Attrs: nounwind optsize readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @regbranch(%struct.comp* %cp, i32* nocapture %flagp) #0 {
entry:
  %flags.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !218), !dbg !602
  call void @llvm.dbg.value(metadata !{i32* %flagp}, i64 0, metadata !219), !dbg !603
  store i32 0, i32* %flagp, align 4, !dbg !604, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !605), !dbg !607
  %regcode.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !608
  %0 = load i8** %regcode.i, align 8, !dbg !608, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !609), !dbg !608
  %arraydecay.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !610
  %cmp.i = icmp eq i8* %0, %arraydecay.i, !dbg !610
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !610

if.then.i:                                        ; preds = %entry
  %regsize.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !611
  %1 = load i64* %regsize.i, align 8, !dbg !611, !tbaa !309
  %add.i = add nsw i64 %1, 3, !dbg !611
  store i64 %add.i, i64* %regsize.i, align 8, !dbg !611, !tbaa !309
  br label %while.cond.preheader, !dbg !612

if.end.i:                                         ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !613), !dbg !614
  %incdec.ptr.i = getelementptr inbounds i8* %0, i64 1, !dbg !615
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !613), !dbg !615
  store i8 6, i8* %0, align 1, !dbg !615, !tbaa !271
  %incdec.ptr2.i = getelementptr inbounds i8* %0, i64 2, !dbg !616
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i}, i64 0, metadata !613), !dbg !616
  store i8 0, i8* %incdec.ptr.i, align 1, !dbg !616, !tbaa !271
  %incdec.ptr3.i = getelementptr inbounds i8* %0, i64 3, !dbg !617
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i}, i64 0, metadata !613), !dbg !617
  store i8 0, i8* %incdec.ptr2.i, align 1, !dbg !617, !tbaa !271
  store i8* %incdec.ptr3.i, i8** %regcode.i, align 8, !dbg !618, !tbaa !270
  %regsize.i263.i.pre = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !619
  br label %while.cond.preheader, !dbg !625

while.cond.preheader:                             ; preds = %if.then.i, %if.end.i
  %regsize.i263.i.pre-phi = phi i64* [ %regsize.i, %if.then.i ], [ %regsize.i263.i.pre, %if.end.i ], !dbg !619
  %regparse = getelementptr inbounds %struct.comp* %cp, i64 0, i32 0, !dbg !626
  %2 = bitcast i32* %flags.i to i8*, !dbg !627
  br label %while.cond, !dbg !626

while.cond:                                       ; preds = %if.then11, %if.else, %while.cond.preheader
  %3 = phi i32 [ undef, %while.cond.preheader ], [ %48, %if.else ], [ %48, %if.then11 ]
  %chain.0 = phi i8* [ null, %while.cond.preheader ], [ %call.i, %if.else ], [ %call.i, %if.then11 ]
  %4 = load i8** %regparse, align 8, !dbg !626, !tbaa !270
  %5 = load i8* %4, align 1, !dbg !626, !tbaa !271
  switch i8 %5, label %while.body [
    i8 0, label %while.end
    i8 124, label %while.end
    i8 41, label %while.end
  ], !dbg !626

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 4, i8* %2) #4, !dbg !627
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !628) #4, !dbg !627
  call void @llvm.dbg.declare(metadata !{i32* %flags.i}, metadata !232) #4, !dbg !629
  %call.i = call fastcc i8* @regatom(%struct.comp* %cp, i32* %flags.i) #10, !dbg !630
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !631) #4, !dbg !630
  %cmp.i43 = icmp eq i8* %call.i, null, !dbg !632
  br i1 %cmp.i43, label %return, label %if.end.i44, !dbg !632

if.end.i44:                                       ; preds = %while.body
  %6 = load i8** %regparse, align 8, !dbg !633, !tbaa !270
  %7 = load i8* %6, align 1, !dbg !633, !tbaa !271
  call void @llvm.dbg.value(metadata !{i8 %7}, i64 0, metadata !634) #4, !dbg !633
  %conv.i = sext i8 %7 to i32, !dbg !635
  switch i8 %7, label %if.then10.i [
    i8 63, label %if.end11.i
    i8 43, label %if.end11.i
    i8 42, label %if.end11.i
  ], !dbg !635

if.then10.i:                                      ; preds = %if.end.i44
  call void @llvm.dbg.value(metadata !{i32* %flags.i}, i64 0, metadata !636) #4, !dbg !637
  call void @llvm.dbg.value(metadata !{i32* %flags.i}, i64 0, metadata !232), !dbg !637
  %8 = load i32* %flags.i, align 4, !dbg !637, !tbaa !300
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !223), !dbg !637
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !639), !dbg !640
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !223), !dbg !641
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !223), !dbg !642
  br label %if.end, !dbg !643

if.end11.i:                                       ; preds = %if.end.i44, %if.end.i44, %if.end.i44
  call void @llvm.dbg.value(metadata !{i32* %flags.i}, i64 0, metadata !636) #4, !dbg !644
  call void @llvm.dbg.value(metadata !{i32* %flags.i}, i64 0, metadata !232), !dbg !644
  %9 = load i32* %flags.i, align 4, !dbg !644, !tbaa !300
  %and.i = and i32 %9, 1, !dbg !644
  %tobool.i = icmp ne i32 %and.i, 0, !dbg !644
  %cmp13.i = icmp eq i8 %7, 63, !dbg !644
  %or.cond142.i = or i1 %tobool.i, %cmp13.i, !dbg !644
  br i1 %or.cond142.i, label %if.end16.i, label %if.then15.i, !dbg !644

if.then15.i:                                      ; preds = %if.end11.i
  call void @sqd_regerror(i8* getelementptr inbounds ([26 x i8]* @.str19, i64 0, i64 0)) #10, !dbg !645
  unreachable

if.end16.i:                                       ; preds = %if.end11.i
  switch i32 %conv.i, label %sw.epilog.i [
    i32 42, label %sw.bb.i
    i32 43, label %sw.bb18.i
    i32 63, label %sw.bb19.i
  ], !dbg !647

sw.bb.i:                                          ; preds = %if.end16.i
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !223), !dbg !649
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !639), !dbg !640
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !223), !dbg !641
  call void @llvm.dbg.value(metadata !648, i64 0, metadata !223), !dbg !642
  br label %sw.epilog.i, !dbg !649

sw.bb18.i:                                        ; preds = %if.end16.i
  call void @llvm.dbg.value(metadata !651, i64 0, metadata !223), !dbg !652
  call void @llvm.dbg.value(metadata !651, i64 0, metadata !639), !dbg !640
  call void @llvm.dbg.value(metadata !651, i64 0, metadata !223), !dbg !641
  call void @llvm.dbg.value(metadata !651, i64 0, metadata !223), !dbg !642
  br label %sw.epilog.i, !dbg !652

sw.bb19.i:                                        ; preds = %if.end16.i
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !223), !dbg !653
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !639), !dbg !640
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !223), !dbg !641
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !223), !dbg !642
  br label %sw.epilog.i, !dbg !653

sw.epilog.i:                                      ; preds = %sw.bb19.i, %sw.bb18.i, %sw.bb.i, %if.end16.i
  %10 = phi i32 [ 0, %sw.bb19.i ], [ 5, %sw.bb18.i ], [ 4, %sw.bb.i ], [ %3, %if.end16.i ]
  switch i8 %7, label %if.else51.i [
    i8 42, label %land.lhs.true23.i
    i8 43, label %land.lhs.true38.i
  ], !dbg !654

land.lhs.true23.i:                                ; preds = %sw.epilog.i
  call void @llvm.dbg.value(metadata !{i32* %flags.i}, i64 0, metadata !636) #4, !dbg !654
  call void @llvm.dbg.value(metadata !{i32* %flags.i}, i64 0, metadata !232), !dbg !654
  %and24.i = and i32 %9, 2, !dbg !654
  %tobool25.i = icmp eq i32 %and24.i, 0, !dbg !654
  %11 = load i8** %regcode.i, align 8, !dbg !655, !tbaa !270
  %cmp.i145.i = icmp eq i8* %11, %arraydecay.i, !dbg !655
  br i1 %tobool25.i, label %if.then30.i, label %if.then26.i, !dbg !654

if.then26.i:                                      ; preds = %land.lhs.true23.i
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !658) #4, !dbg !660
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !661) #4, !dbg !662
  br i1 %cmp.i145.i, label %if.then.i.i, label %if.end.i.i, !dbg !663

if.then.i.i:                                      ; preds = %if.then26.i
  %12 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !664, !tbaa !309
  %add.i.i = add nsw i64 %12, 3, !dbg !664
  store i64 %add.i.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !664, !tbaa !309
  br label %if.end62.i, !dbg !665

if.end.i.i:                                       ; preds = %if.then26.i
  %add.ptr.i.i = getelementptr inbounds i8* %call.i, i64 3, !dbg !666
  %sub.ptr.lhs.cast.i.i = ptrtoint i8* %11 to i64, !dbg !666
  %sub.ptr.rhs.cast.i.i = ptrtoint i8* %call.i to i64, !dbg !666
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i, !dbg !666
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr.i.i, i8* %call.i, i64 %sub.ptr.sub.i.i, i32 1, i1 false) #4, !dbg !666
  %13 = load i8** %regcode.i, align 8, !dbg !667, !tbaa !270
  %add.ptr3.i.i = getelementptr inbounds i8* %13, i64 3, !dbg !667
  store i8* %add.ptr3.i.i, i8** %regcode.i, align 8, !dbg !667, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !668) #4, !dbg !669
  %incdec.ptr.i.i = getelementptr inbounds i8* %call.i, i64 1, !dbg !670
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i.i}, i64 0, metadata !668) #4, !dbg !670
  store i8 10, i8* %call.i, align 1, !dbg !670, !tbaa !271
  %incdec.ptr4.i.i = getelementptr inbounds i8* %call.i, i64 2, !dbg !671
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4.i.i}, i64 0, metadata !668) #4, !dbg !671
  store i8 0, i8* %incdec.ptr.i.i, align 1, !dbg !671, !tbaa !271
  store i8 0, i8* %incdec.ptr4.i.i, align 1, !dbg !672, !tbaa !271
  br label %if.end62.i, !dbg !672

if.then30.i:                                      ; preds = %land.lhs.true23.i
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !673) #4, !dbg !674
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !675) #4, !dbg !676
  br i1 %cmp.i145.i, label %reginsert.exit157.i.thread, label %reginsert.exit157.i, !dbg !655

reginsert.exit157.i.thread:                       ; preds = %if.then30.i
  %14 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !677, !tbaa !309
  %add.i147.i = add nsw i64 %14, 3, !dbg !677
  store i64 %add.i147.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !677, !tbaa !309
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !678) #4, !dbg !680
  call void @llvm.dbg.value(metadata !{i8* %.pre54}, i64 0, metadata !681) #4, !dbg !682
  br label %regnode.exit.i.thread, !dbg !683

reginsert.exit157.i:                              ; preds = %if.then30.i
  %add.ptr.i149.i = getelementptr inbounds i8* %call.i, i64 3, !dbg !684
  %sub.ptr.lhs.cast.i150.i = ptrtoint i8* %11 to i64, !dbg !684
  %sub.ptr.rhs.cast.i151.i = ptrtoint i8* %call.i to i64, !dbg !684
  %sub.ptr.sub.i152.i = sub i64 %sub.ptr.lhs.cast.i150.i, %sub.ptr.rhs.cast.i151.i, !dbg !684
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr.i149.i, i8* %call.i, i64 %sub.ptr.sub.i152.i, i32 1, i1 false) #4, !dbg !684
  %15 = load i8** %regcode.i, align 8, !dbg !685, !tbaa !270
  %add.ptr3.i153.i = getelementptr inbounds i8* %15, i64 3, !dbg !685
  store i8* %add.ptr3.i153.i, i8** %regcode.i, align 8, !dbg !685, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !686) #4, !dbg !687
  %incdec.ptr.i154.i = getelementptr inbounds i8* %call.i, i64 1, !dbg !688
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i154.i}, i64 0, metadata !686) #4, !dbg !688
  store i8 6, i8* %call.i, align 1, !dbg !688, !tbaa !271
  %incdec.ptr4.i155.i = getelementptr inbounds i8* %call.i, i64 2, !dbg !689
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4.i155.i}, i64 0, metadata !686) #4, !dbg !689
  store i8 0, i8* %incdec.ptr.i154.i, align 1, !dbg !689, !tbaa !271
  store i8 0, i8* %incdec.ptr4.i155.i, align 1, !dbg !690, !tbaa !271
  %.pre54 = load i8** %regcode.i, align 8, !dbg !682, !tbaa !270
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !678) #4, !dbg !680
  call void @llvm.dbg.value(metadata !{i8* %.pre54}, i64 0, metadata !681) #4, !dbg !682
  %cmp.i160.i = icmp eq i8* %.pre54, %arraydecay.i, !dbg !683
  br i1 %cmp.i160.i, label %regnode.exit.i.thread, label %regnode.exit.i, !dbg !683

regnode.exit.i.thread:                            ; preds = %reginsert.exit157.i, %reginsert.exit157.i.thread
  %16 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !691, !tbaa !309
  %add.i162.i = add nsw i64 %16, 3, !dbg !691
  store i64 %add.i162.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !691, !tbaa !309
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !692) #4, !dbg !693
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !694) #4, !dbg !695
  call void @llvm.dbg.value(metadata !{i8* %.pre54}, i64 0, metadata !696) #4, !dbg !697
  br label %if.then.i184.i, !dbg !698

regnode.exit.i:                                   ; preds = %reginsert.exit157.i
  call void @llvm.dbg.value(metadata !{i8* %.pre54}, i64 0, metadata !699) #4, !dbg !700
  %incdec.ptr.i164.i = getelementptr inbounds i8* %.pre54, i64 1, !dbg !701
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i164.i}, i64 0, metadata !699) #4, !dbg !701
  store i8 7, i8* %.pre54, align 1, !dbg !701, !tbaa !271
  %incdec.ptr2.i.i = getelementptr inbounds i8* %.pre54, i64 2, !dbg !702
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i.i}, i64 0, metadata !699) #4, !dbg !702
  store i8 0, i8* %incdec.ptr.i164.i, align 1, !dbg !702, !tbaa !271
  %incdec.ptr3.i.i = getelementptr inbounds i8* %.pre54, i64 3, !dbg !703
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i.i}, i64 0, metadata !699) #4, !dbg !703
  store i8 0, i8* %incdec.ptr2.i.i, align 1, !dbg !703, !tbaa !271
  store i8* %incdec.ptr3.i.i, i8** %regcode.i, align 8, !dbg !704, !tbaa !270
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !692) #4, !dbg !693
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !694) #4, !dbg !695
  call void @llvm.dbg.value(metadata !{i8* %.pre54}, i64 0, metadata !696) #4, !dbg !697
  %cmp.i168.i = icmp eq i8* %incdec.ptr3.i.i, %arraydecay.i, !dbg !698
  br i1 %cmp.i168.i, label %if.then.i184.i, label %lor.lhs.false.i.i, !dbg !698

lor.lhs.false.i.i:                                ; preds = %regnode.exit.i
  %17 = load i8* %call.i, align 1, !dbg !698, !tbaa !271
  %cmp1.i.i = icmp eq i8 %17, 6, !dbg !698
  br i1 %cmp1.i.i, label %if.end.i170.i, label %regoptail.exit.i, !dbg !698

if.end.i170.i:                                    ; preds = %lor.lhs.false.i.i
  %add.ptr.i169.i = getelementptr inbounds i8* %call.i, i64 3, !dbg !705
  call fastcc void @regtail(%struct.comp* %cp, i8* %add.ptr.i169.i, i8* %.pre54) #10, !dbg !705
  %.pre55 = load i8** %regcode.i, align 8, !dbg !706, !tbaa !270
  br label %regoptail.exit.i, !dbg !705

regoptail.exit.i:                                 ; preds = %if.end.i170.i, %lor.lhs.false.i.i
  %18 = phi i8* [ %.pre55, %if.end.i170.i ], [ %incdec.ptr3.i.i, %lor.lhs.false.i.i ]
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !708) #4, !dbg !709
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !710) #4, !dbg !711
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !712) #4, !dbg !713
  %cmp.i173.i = icmp eq i8* %18, %arraydecay.i, !dbg !706
  br i1 %cmp.i173.i, label %if.then.i184.i, label %lor.lhs.false.i175.i, !dbg !706

lor.lhs.false.i175.i:                             ; preds = %regoptail.exit.i
  %19 = load i8* %call.i, align 1, !dbg !706, !tbaa !271
  %cmp1.i174.i = icmp eq i8 %19, 6, !dbg !706
  br i1 %cmp1.i174.i, label %if.end.i177.i, label %regoptail.exit178.i, !dbg !706

if.end.i177.i:                                    ; preds = %lor.lhs.false.i175.i
  %add.ptr.i176.i = getelementptr inbounds i8* %call.i, i64 3, !dbg !714
  call fastcc void @regtail(%struct.comp* %cp, i8* %add.ptr.i176.i, i8* %call.i) #10, !dbg !714
  %.pre56 = load i8** %regcode.i, align 8, !dbg !715, !tbaa !270
  br label %regoptail.exit178.i, !dbg !714

regoptail.exit178.i:                              ; preds = %if.end.i177.i, %lor.lhs.false.i175.i
  %20 = phi i8* [ %.pre56, %if.end.i177.i ], [ %18, %lor.lhs.false.i175.i ]
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !717) #4, !dbg !718
  call void @llvm.dbg.value(metadata !{i8* %23}, i64 0, metadata !719) #4, !dbg !715
  %cmp.i181.i = icmp eq i8* %20, %arraydecay.i, !dbg !720
  br i1 %cmp.i181.i, label %if.then.i184.i, label %if.end.i188.i, !dbg !720

if.then.i184.i:                                   ; preds = %regnode.exit.i.thread, %regnode.exit.i, %regoptail.exit.i, %regoptail.exit178.i
  %21 = phi i8* [ %20, %regoptail.exit178.i ], [ %arraydecay.i, %regoptail.exit.i ], [ %arraydecay.i, %regnode.exit.i ], [ %arraydecay.i, %regnode.exit.i.thread ]
  %22 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !721, !tbaa !309
  %add.i183.i = add nsw i64 %22, 3, !dbg !721
  store i64 %add.i183.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !721, !tbaa !309
  br label %regnode.exit189.i, !dbg !722

if.end.i188.i:                                    ; preds = %regoptail.exit178.i
  call void @llvm.dbg.value(metadata !{i8* %23}, i64 0, metadata !723) #4, !dbg !724
  %incdec.ptr.i185.i = getelementptr inbounds i8* %20, i64 1, !dbg !725
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i185.i}, i64 0, metadata !723) #4, !dbg !725
  store i8 6, i8* %20, align 1, !dbg !725, !tbaa !271
  %incdec.ptr2.i186.i = getelementptr inbounds i8* %20, i64 2, !dbg !726
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i186.i}, i64 0, metadata !723) #4, !dbg !726
  store i8 0, i8* %incdec.ptr.i185.i, align 1, !dbg !726, !tbaa !271
  %incdec.ptr3.i187.i = getelementptr inbounds i8* %20, i64 3, !dbg !727
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i187.i}, i64 0, metadata !723) #4, !dbg !727
  store i8 0, i8* %incdec.ptr2.i186.i, align 1, !dbg !727, !tbaa !271
  store i8* %incdec.ptr3.i187.i, i8** %regcode.i, align 8, !dbg !728, !tbaa !270
  br label %regnode.exit189.i, !dbg !729

regnode.exit189.i:                                ; preds = %if.end.i188.i, %if.then.i184.i
  %23 = phi i8* [ %20, %if.end.i188.i ], [ %21, %if.then.i184.i ]
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %23) #10, !dbg !716
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !730) #4, !dbg !732
  %24 = load i8** %regcode.i, align 8, !dbg !733, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %24}, i64 0, metadata !734) #4, !dbg !733
  %cmp.i192.i = icmp eq i8* %24, %arraydecay.i, !dbg !735
  br i1 %cmp.i192.i, label %if.then.i195.i, label %if.end.i199.i, !dbg !735

if.then.i195.i:                                   ; preds = %regnode.exit189.i
  %25 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !736, !tbaa !309
  %add.i194.i = add nsw i64 %25, 3, !dbg !736
  store i64 %add.i194.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !736, !tbaa !309
  br label %regnode.exit200.i, !dbg !737

if.end.i199.i:                                    ; preds = %regnode.exit189.i
  call void @llvm.dbg.value(metadata !{i8* %24}, i64 0, metadata !738) #4, !dbg !739
  %incdec.ptr.i196.i = getelementptr inbounds i8* %24, i64 1, !dbg !740
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i196.i}, i64 0, metadata !738) #4, !dbg !740
  store i8 9, i8* %24, align 1, !dbg !740, !tbaa !271
  %incdec.ptr2.i197.i = getelementptr inbounds i8* %24, i64 2, !dbg !741
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i197.i}, i64 0, metadata !738) #4, !dbg !741
  store i8 0, i8* %incdec.ptr.i196.i, align 1, !dbg !741, !tbaa !271
  %incdec.ptr3.i198.i = getelementptr inbounds i8* %24, i64 3, !dbg !742
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i198.i}, i64 0, metadata !738) #4, !dbg !742
  store i8 0, i8* %incdec.ptr2.i197.i, align 1, !dbg !742, !tbaa !271
  store i8* %incdec.ptr3.i198.i, i8** %regcode.i, align 8, !dbg !743, !tbaa !270
  br label %regnode.exit200.i, !dbg !744

regnode.exit200.i:                                ; preds = %if.end.i199.i, %if.then.i195.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %24) #10, !dbg !731
  br label %if.end62.i, !dbg !745

land.lhs.true38.i:                                ; preds = %sw.epilog.i
  call void @llvm.dbg.value(metadata !{i32* %flags.i}, i64 0, metadata !636) #4, !dbg !746
  call void @llvm.dbg.value(metadata !{i32* %flags.i}, i64 0, metadata !232), !dbg !746
  %and39.i = and i32 %9, 2, !dbg !746
  %tobool40.i = icmp eq i32 %and39.i, 0, !dbg !746
  %26 = load i8** %regcode.i, align 8, !dbg !747, !tbaa !270
  %cmp.i218.i = icmp eq i8* %26, %arraydecay.i, !dbg !750
  br i1 %tobool40.i, label %if.then46.i, label %if.then41.i, !dbg !746

if.then41.i:                                      ; preds = %land.lhs.true38.i
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !751) #4, !dbg !753
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !754) #4, !dbg !755
  br i1 %cmp.i218.i, label %if.then.i206.i, label %if.end.i214.i, !dbg !756

if.then.i206.i:                                   ; preds = %if.then41.i
  %27 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !757, !tbaa !309
  %add.i205.i = add nsw i64 %27, 3, !dbg !757
  store i64 %add.i205.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !757, !tbaa !309
  br label %if.end62.i, !dbg !758

if.end.i214.i:                                    ; preds = %if.then41.i
  %add.ptr.i207.i = getelementptr inbounds i8* %call.i, i64 3, !dbg !759
  %sub.ptr.lhs.cast.i208.i = ptrtoint i8* %26 to i64, !dbg !759
  %sub.ptr.rhs.cast.i209.i = ptrtoint i8* %call.i to i64, !dbg !759
  %sub.ptr.sub.i210.i = sub i64 %sub.ptr.lhs.cast.i208.i, %sub.ptr.rhs.cast.i209.i, !dbg !759
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr.i207.i, i8* %call.i, i64 %sub.ptr.sub.i210.i, i32 1, i1 false) #4, !dbg !759
  %28 = load i8** %regcode.i, align 8, !dbg !760, !tbaa !270
  %add.ptr3.i211.i = getelementptr inbounds i8* %28, i64 3, !dbg !760
  store i8* %add.ptr3.i211.i, i8** %regcode.i, align 8, !dbg !760, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !761) #4, !dbg !762
  %incdec.ptr.i212.i = getelementptr inbounds i8* %call.i, i64 1, !dbg !763
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i212.i}, i64 0, metadata !761) #4, !dbg !763
  store i8 11, i8* %call.i, align 1, !dbg !763, !tbaa !271
  %incdec.ptr4.i213.i = getelementptr inbounds i8* %call.i, i64 2, !dbg !764
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4.i213.i}, i64 0, metadata !761) #4, !dbg !764
  store i8 0, i8* %incdec.ptr.i212.i, align 1, !dbg !764, !tbaa !271
  store i8 0, i8* %incdec.ptr4.i213.i, align 1, !dbg !765, !tbaa !271
  br label %if.end62.i, !dbg !765

if.then46.i:                                      ; preds = %land.lhs.true38.i
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !766) #4, !dbg !767
  call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !768) #4, !dbg !747
  br i1 %cmp.i218.i, label %if.then.i221.i, label %if.end.i225.i, !dbg !750

if.then.i221.i:                                   ; preds = %if.then46.i
  %29 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !769, !tbaa !309
  %add.i220.i = add nsw i64 %29, 3, !dbg !769
  store i64 %add.i220.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !769, !tbaa !309
  br label %regnode.exit226.i, !dbg !770

if.end.i225.i:                                    ; preds = %if.then46.i
  call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !771) #4, !dbg !772
  %incdec.ptr.i222.i = getelementptr inbounds i8* %26, i64 1, !dbg !773
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i222.i}, i64 0, metadata !771) #4, !dbg !773
  store i8 6, i8* %26, align 1, !dbg !773, !tbaa !271
  %incdec.ptr2.i223.i = getelementptr inbounds i8* %26, i64 2, !dbg !774
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i223.i}, i64 0, metadata !771) #4, !dbg !774
  store i8 0, i8* %incdec.ptr.i222.i, align 1, !dbg !774, !tbaa !271
  %incdec.ptr3.i224.i = getelementptr inbounds i8* %26, i64 3, !dbg !775
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i224.i}, i64 0, metadata !771) #4, !dbg !775
  store i8 0, i8* %incdec.ptr2.i223.i, align 1, !dbg !775, !tbaa !271
  store i8* %incdec.ptr3.i224.i, i8** %regcode.i, align 8, !dbg !776, !tbaa !270
  br label %regnode.exit226.i, !dbg !777

regnode.exit226.i:                                ; preds = %if.end.i225.i, %if.then.i221.i
  call void @llvm.dbg.value(metadata !{i8* %26}, i64 0, metadata !778) #4, !dbg !748
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %26) #10, !dbg !779
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !780) #4, !dbg !782
  %30 = load i8** %regcode.i, align 8, !dbg !783, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %30}, i64 0, metadata !784) #4, !dbg !783
  %cmp.i229.i = icmp eq i8* %30, %arraydecay.i, !dbg !785
  br i1 %cmp.i229.i, label %if.then.i232.i, label %if.end.i236.i, !dbg !785

if.then.i232.i:                                   ; preds = %regnode.exit226.i
  %31 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !786, !tbaa !309
  %add.i231.i = add nsw i64 %31, 3, !dbg !786
  store i64 %add.i231.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !786, !tbaa !309
  br label %regnode.exit237.i, !dbg !787

if.end.i236.i:                                    ; preds = %regnode.exit226.i
  call void @llvm.dbg.value(metadata !{i8* %30}, i64 0, metadata !788) #4, !dbg !789
  %incdec.ptr.i233.i = getelementptr inbounds i8* %30, i64 1, !dbg !790
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i233.i}, i64 0, metadata !788) #4, !dbg !790
  store i8 7, i8* %30, align 1, !dbg !790, !tbaa !271
  %incdec.ptr2.i234.i = getelementptr inbounds i8* %30, i64 2, !dbg !791
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i234.i}, i64 0, metadata !788) #4, !dbg !791
  store i8 0, i8* %incdec.ptr.i233.i, align 1, !dbg !791, !tbaa !271
  %incdec.ptr3.i235.i = getelementptr inbounds i8* %30, i64 3, !dbg !792
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i235.i}, i64 0, metadata !788) #4, !dbg !792
  store i8 0, i8* %incdec.ptr2.i234.i, align 1, !dbg !792, !tbaa !271
  store i8* %incdec.ptr3.i235.i, i8** %regcode.i, align 8, !dbg !793, !tbaa !270
  br label %regnode.exit237.i, !dbg !794

regnode.exit237.i:                                ; preds = %if.end.i236.i, %if.then.i232.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %30, i8* %call.i) #10, !dbg !781
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !795) #4, !dbg !797
  %32 = load i8** %regcode.i, align 8, !dbg !798, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %32}, i64 0, metadata !799) #4, !dbg !798
  %cmp.i240.i = icmp eq i8* %32, %arraydecay.i, !dbg !800
  br i1 %cmp.i240.i, label %if.then.i243.i, label %if.end.i247.i, !dbg !800

if.then.i243.i:                                   ; preds = %regnode.exit237.i
  %33 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !801, !tbaa !309
  %add.i242.i = add nsw i64 %33, 3, !dbg !801
  store i64 %add.i242.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !801, !tbaa !309
  br label %regnode.exit248.i, !dbg !802

if.end.i247.i:                                    ; preds = %regnode.exit237.i
  call void @llvm.dbg.value(metadata !{i8* %32}, i64 0, metadata !803) #4, !dbg !804
  %incdec.ptr.i244.i = getelementptr inbounds i8* %32, i64 1, !dbg !805
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i244.i}, i64 0, metadata !803) #4, !dbg !805
  store i8 6, i8* %32, align 1, !dbg !805, !tbaa !271
  %incdec.ptr2.i245.i = getelementptr inbounds i8* %32, i64 2, !dbg !806
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i245.i}, i64 0, metadata !803) #4, !dbg !806
  store i8 0, i8* %incdec.ptr.i244.i, align 1, !dbg !806, !tbaa !271
  %incdec.ptr3.i246.i = getelementptr inbounds i8* %32, i64 3, !dbg !807
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i246.i}, i64 0, metadata !803) #4, !dbg !807
  store i8 0, i8* %incdec.ptr2.i245.i, align 1, !dbg !807, !tbaa !271
  store i8* %incdec.ptr3.i246.i, i8** %regcode.i, align 8, !dbg !808, !tbaa !270
  br label %regnode.exit248.i, !dbg !809

regnode.exit248.i:                                ; preds = %if.end.i247.i, %if.then.i243.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %26, i8* %32) #10, !dbg !796
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !810) #4, !dbg !812
  %34 = load i8** %regcode.i, align 8, !dbg !813, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %34}, i64 0, metadata !814) #4, !dbg !813
  %cmp.i251.i = icmp eq i8* %34, %arraydecay.i, !dbg !815
  br i1 %cmp.i251.i, label %if.then.i254.i, label %if.end.i258.i, !dbg !815

if.then.i254.i:                                   ; preds = %regnode.exit248.i
  %35 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !816, !tbaa !309
  %add.i253.i = add nsw i64 %35, 3, !dbg !816
  store i64 %add.i253.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !816, !tbaa !309
  br label %regnode.exit259.i, !dbg !817

if.end.i258.i:                                    ; preds = %regnode.exit248.i
  call void @llvm.dbg.value(metadata !{i8* %34}, i64 0, metadata !818) #4, !dbg !819
  %incdec.ptr.i255.i = getelementptr inbounds i8* %34, i64 1, !dbg !820
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i255.i}, i64 0, metadata !818) #4, !dbg !820
  store i8 9, i8* %34, align 1, !dbg !820, !tbaa !271
  %incdec.ptr2.i256.i = getelementptr inbounds i8* %34, i64 2, !dbg !821
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i256.i}, i64 0, metadata !818) #4, !dbg !821
  store i8 0, i8* %incdec.ptr.i255.i, align 1, !dbg !821, !tbaa !271
  %incdec.ptr3.i257.i = getelementptr inbounds i8* %34, i64 3, !dbg !822
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i257.i}, i64 0, metadata !818) #4, !dbg !822
  store i8 0, i8* %incdec.ptr2.i256.i, align 1, !dbg !822, !tbaa !271
  store i8* %incdec.ptr3.i257.i, i8** %regcode.i, align 8, !dbg !823, !tbaa !270
  br label %regnode.exit259.i, !dbg !824

regnode.exit259.i:                                ; preds = %if.end.i258.i, %if.then.i254.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %34) #10, !dbg !811
  br label %if.end62.i, !dbg !825

if.else51.i:                                      ; preds = %sw.epilog.i
  br i1 %cmp13.i, label %if.then55.i, label %if.end62.i, !dbg !826

if.then55.i:                                      ; preds = %if.else51.i
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !827) #4, !dbg !828
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !829) #4, !dbg !830
  %36 = load i8** %regcode.i, align 8, !dbg !831, !tbaa !270
  %cmp.i262.i = icmp eq i8* %36, %arraydecay.i, !dbg !831
  br i1 %cmp.i262.i, label %reginsert.exit274.i.thread, label %reginsert.exit274.i, !dbg !831

reginsert.exit274.i.thread:                       ; preds = %if.then55.i
  %37 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !619, !tbaa !309
  %add.i264.i = add nsw i64 %37, 3, !dbg !619
  store i64 %add.i264.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !619, !tbaa !309
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !832) #4, !dbg !834
  call void @llvm.dbg.value(metadata !{i8* %41}, i64 0, metadata !835) #4, !dbg !836
  br label %if.then.i280.i, !dbg !837

reginsert.exit274.i:                              ; preds = %if.then55.i
  %add.ptr.i266.i = getelementptr inbounds i8* %call.i, i64 3, !dbg !838
  %sub.ptr.lhs.cast.i267.i = ptrtoint i8* %36 to i64, !dbg !838
  %sub.ptr.rhs.cast.i268.i = ptrtoint i8* %call.i to i64, !dbg !838
  %sub.ptr.sub.i269.i = sub i64 %sub.ptr.lhs.cast.i267.i, %sub.ptr.rhs.cast.i268.i, !dbg !838
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr.i266.i, i8* %call.i, i64 %sub.ptr.sub.i269.i, i32 1, i1 false) #4, !dbg !838
  %38 = load i8** %regcode.i, align 8, !dbg !839, !tbaa !270
  %add.ptr3.i270.i = getelementptr inbounds i8* %38, i64 3, !dbg !839
  store i8* %add.ptr3.i270.i, i8** %regcode.i, align 8, !dbg !839, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !840) #4, !dbg !841
  %incdec.ptr.i271.i = getelementptr inbounds i8* %call.i, i64 1, !dbg !842
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i271.i}, i64 0, metadata !840) #4, !dbg !842
  store i8 6, i8* %call.i, align 1, !dbg !842, !tbaa !271
  %incdec.ptr4.i272.i = getelementptr inbounds i8* %call.i, i64 2, !dbg !843
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr4.i272.i}, i64 0, metadata !840) #4, !dbg !843
  store i8 0, i8* %incdec.ptr.i271.i, align 1, !dbg !843, !tbaa !271
  store i8 0, i8* %incdec.ptr4.i272.i, align 1, !dbg !844, !tbaa !271
  %.pre = load i8** %regcode.i, align 8, !dbg !836, !tbaa !270
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !832) #4, !dbg !834
  call void @llvm.dbg.value(metadata !{i8* %41}, i64 0, metadata !835) #4, !dbg !836
  %cmp.i277.i = icmp eq i8* %.pre, %arraydecay.i, !dbg !837
  br i1 %cmp.i277.i, label %if.then.i280.i, label %if.end.i284.i, !dbg !837

if.then.i280.i:                                   ; preds = %reginsert.exit274.i.thread, %reginsert.exit274.i
  %39 = phi i8* [ %arraydecay.i, %reginsert.exit274.i.thread ], [ %.pre, %reginsert.exit274.i ]
  %40 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !845, !tbaa !309
  %add.i279.i = add nsw i64 %40, 3, !dbg !845
  store i64 %add.i279.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !845, !tbaa !309
  br label %regnode.exit285.i, !dbg !846

if.end.i284.i:                                    ; preds = %reginsert.exit274.i
  call void @llvm.dbg.value(metadata !{i8* %41}, i64 0, metadata !847) #4, !dbg !848
  %incdec.ptr.i281.i = getelementptr inbounds i8* %.pre, i64 1, !dbg !849
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i281.i}, i64 0, metadata !847) #4, !dbg !849
  store i8 6, i8* %.pre, align 1, !dbg !849, !tbaa !271
  %incdec.ptr2.i282.i = getelementptr inbounds i8* %.pre, i64 2, !dbg !850
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i282.i}, i64 0, metadata !847) #4, !dbg !850
  store i8 0, i8* %incdec.ptr.i281.i, align 1, !dbg !850, !tbaa !271
  %incdec.ptr3.i283.i = getelementptr inbounds i8* %.pre, i64 3, !dbg !851
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i283.i}, i64 0, metadata !847) #4, !dbg !851
  store i8 0, i8* %incdec.ptr2.i282.i, align 1, !dbg !851, !tbaa !271
  store i8* %incdec.ptr3.i283.i, i8** %regcode.i, align 8, !dbg !852, !tbaa !270
  br label %regnode.exit285.i, !dbg !853

regnode.exit285.i:                                ; preds = %if.end.i284.i, %if.then.i280.i
  %41 = phi i8* [ %.pre, %if.end.i284.i ], [ %39, %if.then.i280.i ]
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %41) #10, !dbg !833
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !854) #4, !dbg !856
  %42 = load i8** %regcode.i, align 8, !dbg !857, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %42}, i64 0, metadata !858) #4, !dbg !857
  %cmp.i288.i = icmp eq i8* %42, %arraydecay.i, !dbg !859
  br i1 %cmp.i288.i, label %if.then.i291.i, label %if.end.i295.i, !dbg !859

if.then.i291.i:                                   ; preds = %regnode.exit285.i
  %43 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !860, !tbaa !309
  %add.i290.i = add nsw i64 %43, 3, !dbg !860
  store i64 %add.i290.i, i64* %regsize.i263.i.pre-phi, align 8, !dbg !860, !tbaa !309
  br label %regnode.exit296.i, !dbg !861

if.end.i295.i:                                    ; preds = %regnode.exit285.i
  call void @llvm.dbg.value(metadata !{i8* %42}, i64 0, metadata !862) #4, !dbg !863
  %incdec.ptr.i292.i = getelementptr inbounds i8* %42, i64 1, !dbg !864
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i292.i}, i64 0, metadata !862) #4, !dbg !864
  store i8 9, i8* %42, align 1, !dbg !864, !tbaa !271
  %incdec.ptr2.i293.i = getelementptr inbounds i8* %42, i64 2, !dbg !865
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i293.i}, i64 0, metadata !862) #4, !dbg !865
  store i8 0, i8* %incdec.ptr.i292.i, align 1, !dbg !865, !tbaa !271
  %incdec.ptr3.i294.i = getelementptr inbounds i8* %42, i64 3, !dbg !866
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i294.i}, i64 0, metadata !862) #4, !dbg !866
  store i8 0, i8* %incdec.ptr2.i293.i, align 1, !dbg !866, !tbaa !271
  store i8* %incdec.ptr3.i294.i, i8** %regcode.i, align 8, !dbg !867, !tbaa !270
  br label %regnode.exit296.i, !dbg !868

regnode.exit296.i:                                ; preds = %if.end.i295.i, %if.then.i291.i
  call void @llvm.dbg.value(metadata !{i8* %42}, i64 0, metadata !778) #4, !dbg !855
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %42) #10, !dbg !869
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !870) #4, !dbg !872
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !873) #4, !dbg !874
  call void @llvm.dbg.value(metadata !{i8* %42}, i64 0, metadata !875) #4, !dbg !876
  %44 = load i8** %regcode.i, align 8, !dbg !877, !tbaa !270
  %cmp.i299.i = icmp eq i8* %44, %arraydecay.i, !dbg !877
  br i1 %cmp.i299.i, label %if.end62.i, label %lor.lhs.false.i301.i, !dbg !877

lor.lhs.false.i301.i:                             ; preds = %regnode.exit296.i
  %45 = load i8* %call.i, align 1, !dbg !877, !tbaa !271
  %cmp1.i300.i = icmp eq i8 %45, 6, !dbg !877
  br i1 %cmp1.i300.i, label %if.end.i303.i, label %if.end62.i, !dbg !877

if.end.i303.i:                                    ; preds = %lor.lhs.false.i301.i
  %add.ptr.i302.i = getelementptr inbounds i8* %call.i, i64 3, !dbg !878
  call fastcc void @regtail(%struct.comp* %cp, i8* %add.ptr.i302.i, i8* %42) #10, !dbg !878
  br label %if.end62.i, !dbg !878

if.end62.i:                                       ; preds = %lor.lhs.false.i301.i, %regnode.exit296.i, %if.end.i303.i, %if.then.i206.i, %if.end.i214.i, %if.then.i.i, %if.end.i.i, %if.else51.i, %regnode.exit259.i, %regnode.exit200.i
  %46 = load i8** %regparse, align 8, !dbg !879, !tbaa !270
  %incdec.ptr.i45 = getelementptr inbounds i8* %46, i64 1, !dbg !879
  store i8* %incdec.ptr.i45, i8** %regparse, align 8, !dbg !879, !tbaa !270
  %47 = load i8* %incdec.ptr.i45, align 1, !dbg !880, !tbaa !271
  switch i8 %47, label %if.end [
    i8 42, label %if.then78.i
    i8 43, label %if.then78.i
    i8 63, label %if.then78.i
  ], !dbg !880

if.then78.i:                                      ; preds = %if.end62.i, %if.end62.i, %if.end62.i
  call void @sqd_regerror(i8* getelementptr inbounds ([11 x i8]* @.str20, i64 0, i64 0)) #10, !dbg !881
  unreachable

if.end:                                           ; preds = %if.end62.i, %if.then10.i
  %48 = phi i32 [ %8, %if.then10.i ], [ %10, %if.end62.i ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #4, !dbg !883
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !222), !dbg !623
  %and = and i32 %48, 1, !dbg !641
  %49 = load i32* %flagp, align 4, !dbg !641, !tbaa !300
  %or = or i32 %49, %and, !dbg !641
  store i32 %or, i32* %flagp, align 4, !dbg !641, !tbaa !300
  %cmp9 = icmp eq i8* %chain.0, null, !dbg !884
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !884

if.then11:                                        ; preds = %if.end
  %and12 = and i32 %48, 4, !dbg !642
  %or13 = or i32 %or, %and12, !dbg !642
  store i32 %or13, i32* %flagp, align 4, !dbg !642, !tbaa !300
  br label %while.cond, !dbg !642

if.else:                                          ; preds = %if.end
  call fastcc void @regtail(%struct.comp* %cp, i8* %chain.0, i8* %call.i) #11, !dbg !885
  br label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond, %while.cond
  %cmp15 = icmp eq i8* %chain.0, null, !dbg !886
  br i1 %cmp15, label %if.then17, label %return, !dbg !886

if.then17:                                        ; preds = %while.end
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !887), !dbg !889
  %50 = load i8** %regcode.i, align 8, !dbg !890, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %50}, i64 0, metadata !891), !dbg !890
  %cmp.i34 = icmp eq i8* %50, %arraydecay.i, !dbg !892
  br i1 %cmp.i34, label %if.then.i37, label %if.end.i41, !dbg !892

if.then.i37:                                      ; preds = %if.then17
  %51 = load i64* %regsize.i263.i.pre-phi, align 8, !dbg !893, !tbaa !309
  %add.i36 = add nsw i64 %51, 3, !dbg !893
  store i64 %add.i36, i64* %regsize.i263.i.pre-phi, align 8, !dbg !893, !tbaa !309
  br label %return, !dbg !894

if.end.i41:                                       ; preds = %if.then17
  tail call void @llvm.dbg.value(metadata !{i8* %50}, i64 0, metadata !895), !dbg !896
  %incdec.ptr.i38 = getelementptr inbounds i8* %50, i64 1, !dbg !897
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i38}, i64 0, metadata !895), !dbg !897
  store i8 9, i8* %50, align 1, !dbg !897, !tbaa !271
  %incdec.ptr2.i39 = getelementptr inbounds i8* %50, i64 2, !dbg !898
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i39}, i64 0, metadata !895), !dbg !898
  store i8 0, i8* %incdec.ptr.i38, align 1, !dbg !898, !tbaa !271
  %incdec.ptr3.i40 = getelementptr inbounds i8* %50, i64 3, !dbg !899
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i40}, i64 0, metadata !895), !dbg !899
  store i8 0, i8* %incdec.ptr2.i39, align 1, !dbg !899, !tbaa !271
  store i8* %incdec.ptr3.i40, i8** %regcode.i, align 8, !dbg !900, !tbaa !270
  br label %return, !dbg !901

return:                                           ; preds = %while.body, %if.end.i41, %if.then.i37, %while.end
  %retval.0 = phi i8* [ %0, %while.end ], [ %0, %if.then.i37 ], [ %0, %if.end.i41 ], [ null, %while.body ]
  ret i8* %retval.0, !dbg !902
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @regtail(%struct.comp* %cp, i8* %p, i8* %val) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !208), !dbg !903
  tail call void @llvm.dbg.value(metadata !{i8* %p}, i64 0, metadata !209), !dbg !904
  tail call void @llvm.dbg.value(metadata !{i8* %val}, i64 0, metadata !210), !dbg !905
  %regcode = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !906
  %0 = load i8** %regcode, align 8, !dbg !906, !tbaa !270
  %arraydecay = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !906
  %cmp = icmp eq i8* %0, %arraydecay, !dbg !906
  br i1 %cmp, label %return, label %for.cond, !dbg !906

for.cond:                                         ; preds = %entry, %for.cond
  %scan.0 = phi i8* [ %call, %for.cond ], [ %p, %entry ]
  %call = tail call fastcc i8* @regnext(i8* %scan.0) #11, !dbg !907
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !212), !dbg !907
  %cmp1 = icmp eq i8* %call, null, !dbg !907
  br i1 %cmp1, label %for.end, label %for.cond, !dbg !907

for.end:                                          ; preds = %for.cond
  %1 = load i8* %scan.0, align 1, !dbg !909, !tbaa !271
  %cmp2 = icmp eq i8 %1, 7, !dbg !909
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !909

cond.true:                                        ; preds = %for.end
  %sub.ptr.lhs.cast = ptrtoint i8* %scan.0 to i64, !dbg !909
  %sub.ptr.rhs.cast = ptrtoint i8* %val to i64, !dbg !909
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !909
  br label %cond.end, !dbg !909

cond.false:                                       ; preds = %for.end
  %sub.ptr.lhs.cast4 = ptrtoint i8* %val to i64, !dbg !909
  %sub.ptr.rhs.cast5 = ptrtoint i8* %scan.0 to i64, !dbg !909
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5, !dbg !909
  br label %cond.end, !dbg !909

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %sub.ptr.sub6, %cond.false ], !dbg !909
  %conv7 = trunc i64 %cond to i32, !dbg !909
  tail call void @llvm.dbg.value(metadata !{i32 %conv7}, i64 0, metadata !213), !dbg !909
  %shr20 = lshr i32 %conv7, 8, !dbg !910
  %shr20.tr = trunc i32 %shr20 to i8, !dbg !910
  %conv8 = and i8 %shr20.tr, 127, !dbg !910
  %add.ptr = getelementptr inbounds i8* %scan.0, i64 1, !dbg !910
  store i8 %conv8, i8* %add.ptr, align 1, !dbg !910, !tbaa !271
  %conv10 = trunc i64 %cond to i8, !dbg !911
  %add.ptr11 = getelementptr inbounds i8* %scan.0, i64 2, !dbg !911
  store i8 %conv10, i8* %add.ptr11, align 1, !dbg !911, !tbaa !271
  br label %return, !dbg !911

return:                                           ; preds = %entry, %cond.end
  ret void, !dbg !911
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @regatom(%struct.comp* %cp, i32* nocapture %flagp) #0 {
entry:
  %flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !243), !dbg !912
  call void @llvm.dbg.value(metadata !{i32* %flagp}, i64 0, metadata !244), !dbg !913
  call void @llvm.dbg.declare(metadata !{i32* %flags}, metadata !246), !dbg !914
  store i32 0, i32* %flagp, align 4, !dbg !915, !tbaa !300
  %regparse = getelementptr inbounds %struct.comp* %cp, i64 0, i32 0, !dbg !916
  %0 = load i8** %regparse, align 8, !dbg !916, !tbaa !270
  %incdec.ptr = getelementptr inbounds i8* %0, i64 1, !dbg !916
  store i8* %incdec.ptr, i8** %regparse, align 8, !dbg !916, !tbaa !270
  %1 = load i8* %0, align 1, !dbg !916, !tbaa !271
  %conv = sext i8 %1 to i32, !dbg !916
  switch i32 %conv, label %sw.default [
    i32 94, label %sw.bb
    i32 36, label %sw.bb1
    i32 46, label %sw.bb3
    i32 91, label %sw.bb5
    i32 40, label %sw.bb63
    i32 0, label %sw.bb70
    i32 124, label %sw.bb70
    i32 41, label %sw.bb70
    i32 63, label %sw.bb71
    i32 43, label %sw.bb71
    i32 42, label %sw.bb71
    i32 92, label %sw.bb72
  ], !dbg !916

sw.bb:                                            ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !917), !dbg !919
  %regcode.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !920
  %2 = load i8** %regcode.i, align 8, !dbg !920, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !921), !dbg !920
  %arraydecay.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !922
  %cmp.i = icmp eq i8* %2, %arraydecay.i, !dbg !922
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !922

if.then.i:                                        ; preds = %sw.bb
  %regsize.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !923
  %3 = load i64* %regsize.i, align 8, !dbg !923, !tbaa !309
  %add.i = add nsw i64 %3, 3, !dbg !923
  store i64 %add.i, i64* %regsize.i, align 8, !dbg !923, !tbaa !309
  br label %return, !dbg !924

if.end.i:                                         ; preds = %sw.bb
  tail call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !925), !dbg !926
  %incdec.ptr.i = getelementptr inbounds i8* %2, i64 1, !dbg !927
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !925), !dbg !927
  store i8 1, i8* %2, align 1, !dbg !927, !tbaa !271
  %incdec.ptr2.i = getelementptr inbounds i8* %2, i64 2, !dbg !928
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i}, i64 0, metadata !925), !dbg !928
  store i8 0, i8* %incdec.ptr.i, align 1, !dbg !928, !tbaa !271
  %incdec.ptr3.i = getelementptr inbounds i8* %2, i64 3, !dbg !929
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i}, i64 0, metadata !925), !dbg !929
  store i8 0, i8* %incdec.ptr2.i, align 1, !dbg !929, !tbaa !271
  store i8* %incdec.ptr3.i, i8** %regcode.i, align 8, !dbg !930, !tbaa !270
  br label %return, !dbg !931

sw.bb1:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !932), !dbg !934
  %regcode.i180 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !935
  %4 = load i8** %regcode.i180, align 8, !dbg !935, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !936), !dbg !935
  %arraydecay.i181 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !937
  %cmp.i182 = icmp eq i8* %4, %arraydecay.i181, !dbg !937
  br i1 %cmp.i182, label %if.then.i185, label %if.end.i189, !dbg !937

if.then.i185:                                     ; preds = %sw.bb1
  %regsize.i183 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !938
  %5 = load i64* %regsize.i183, align 8, !dbg !938, !tbaa !309
  %add.i184 = add nsw i64 %5, 3, !dbg !938
  store i64 %add.i184, i64* %regsize.i183, align 8, !dbg !938, !tbaa !309
  br label %return, !dbg !939

if.end.i189:                                      ; preds = %sw.bb1
  tail call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !940), !dbg !941
  %incdec.ptr.i186 = getelementptr inbounds i8* %4, i64 1, !dbg !942
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i186}, i64 0, metadata !940), !dbg !942
  store i8 2, i8* %4, align 1, !dbg !942, !tbaa !271
  %incdec.ptr2.i187 = getelementptr inbounds i8* %4, i64 2, !dbg !943
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i187}, i64 0, metadata !940), !dbg !943
  store i8 0, i8* %incdec.ptr.i186, align 1, !dbg !943, !tbaa !271
  %incdec.ptr3.i188 = getelementptr inbounds i8* %4, i64 3, !dbg !944
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i188}, i64 0, metadata !940), !dbg !944
  store i8 0, i8* %incdec.ptr2.i187, align 1, !dbg !944, !tbaa !271
  store i8* %incdec.ptr3.i188, i8** %regcode.i180, align 8, !dbg !945, !tbaa !270
  br label %return, !dbg !946

sw.bb3:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !947), !dbg !949
  %regcode.i191 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !950
  %6 = load i8** %regcode.i191, align 8, !dbg !950, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !951), !dbg !950
  %arraydecay.i192 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !952
  %cmp.i193 = icmp eq i8* %6, %arraydecay.i192, !dbg !952
  br i1 %cmp.i193, label %if.then.i196, label %if.end.i200, !dbg !952

if.then.i196:                                     ; preds = %sw.bb3
  %regsize.i194 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !953
  %7 = load i64* %regsize.i194, align 8, !dbg !953, !tbaa !309
  %add.i195 = add nsw i64 %7, 3, !dbg !953
  store i64 %add.i195, i64* %regsize.i194, align 8, !dbg !953, !tbaa !309
  br label %regnode.exit201, !dbg !954

if.end.i200:                                      ; preds = %sw.bb3
  tail call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !955), !dbg !956
  %incdec.ptr.i197 = getelementptr inbounds i8* %6, i64 1, !dbg !957
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i197}, i64 0, metadata !955), !dbg !957
  store i8 3, i8* %6, align 1, !dbg !957, !tbaa !271
  %incdec.ptr2.i198 = getelementptr inbounds i8* %6, i64 2, !dbg !958
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i198}, i64 0, metadata !955), !dbg !958
  store i8 0, i8* %incdec.ptr.i197, align 1, !dbg !958, !tbaa !271
  %incdec.ptr3.i199 = getelementptr inbounds i8* %6, i64 3, !dbg !959
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i199}, i64 0, metadata !955), !dbg !959
  store i8 0, i8* %incdec.ptr2.i198, align 1, !dbg !959, !tbaa !271
  store i8* %incdec.ptr3.i199, i8** %regcode.i191, align 8, !dbg !960, !tbaa !270
  %.pre344 = load i32* %flagp, align 4, !dbg !961, !tbaa !300
  %phitmp = or i32 %.pre344, 3, !dbg !962
  br label %regnode.exit201, !dbg !962

regnode.exit201:                                  ; preds = %if.then.i196, %if.end.i200
  %8 = phi i32 [ 3, %if.then.i196 ], [ %phitmp, %if.end.i200 ]
  call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !245), !dbg !948
  store i32 %8, i32* %flagp, align 4, !dbg !961, !tbaa !300
  br label %return, !dbg !963

sw.bb5:                                           ; preds = %entry
  %9 = load i8* %incdec.ptr, align 1, !dbg !964, !tbaa !271
  %cmp = icmp eq i8 %9, 94, !dbg !964
  %regcode.i202 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !965
  %10 = load i8** %regcode.i202, align 8, !dbg !965, !tbaa !270
  %arraydecay.i203 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !968
  %cmp.i204 = icmp eq i8* %10, %arraydecay.i203, !dbg !968
  br i1 %cmp, label %if.then, label %if.else, !dbg !964

if.then:                                          ; preds = %sw.bb5
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !969), !dbg !970
  tail call void @llvm.dbg.value(metadata !{i8* %10}, i64 0, metadata !971), !dbg !965
  br i1 %cmp.i204, label %if.then.i207, label %if.end.i211, !dbg !968

if.then.i207:                                     ; preds = %if.then
  %regsize.i205 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !972
  %11 = load i64* %regsize.i205, align 8, !dbg !972, !tbaa !309
  %add.i206 = add nsw i64 %11, 3, !dbg !972
  store i64 %add.i206, i64* %regsize.i205, align 8, !dbg !972, !tbaa !309
  br label %regnode.exit212, !dbg !973

if.end.i211:                                      ; preds = %if.then
  tail call void @llvm.dbg.value(metadata !{i8* %10}, i64 0, metadata !974), !dbg !975
  %incdec.ptr.i208 = getelementptr inbounds i8* %10, i64 1, !dbg !976
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i208}, i64 0, metadata !974), !dbg !976
  store i8 5, i8* %10, align 1, !dbg !976, !tbaa !271
  %incdec.ptr2.i209 = getelementptr inbounds i8* %10, i64 2, !dbg !977
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i209}, i64 0, metadata !974), !dbg !977
  store i8 0, i8* %incdec.ptr.i208, align 1, !dbg !977, !tbaa !271
  %incdec.ptr3.i210 = getelementptr inbounds i8* %10, i64 3, !dbg !978
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i210}, i64 0, metadata !974), !dbg !978
  store i8 0, i8* %incdec.ptr2.i209, align 1, !dbg !978, !tbaa !271
  store i8* %incdec.ptr3.i210, i8** %regcode.i202, align 8, !dbg !979, !tbaa !270
  %.pre345 = load i8** %regparse, align 8, !dbg !980, !tbaa !270
  br label %regnode.exit212, !dbg !981

regnode.exit212:                                  ; preds = %if.then.i207, %if.end.i211
  %12 = phi i8* [ %arraydecay.i203, %if.then.i207 ], [ %incdec.ptr3.i210, %if.end.i211 ]
  %13 = phi i8* [ %incdec.ptr, %if.then.i207 ], [ %.pre345, %if.end.i211 ]
  call void @llvm.dbg.value(metadata !{i8* %10}, i64 0, metadata !245), !dbg !966
  %incdec.ptr11 = getelementptr inbounds i8* %13, i64 1, !dbg !980
  store i8* %incdec.ptr11, i8** %regparse, align 8, !dbg !980, !tbaa !270
  br label %if.end, !dbg !982

if.else:                                          ; preds = %sw.bb5
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !983), !dbg !985
  tail call void @llvm.dbg.value(metadata !{i8* %10}, i64 0, metadata !986), !dbg !987
  br i1 %cmp.i204, label %if.then.i218, label %if.end.i222, !dbg !988

if.then.i218:                                     ; preds = %if.else
  %regsize.i216 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !989
  %14 = load i64* %regsize.i216, align 8, !dbg !989, !tbaa !309
  %add.i217 = add nsw i64 %14, 3, !dbg !989
  store i64 %add.i217, i64* %regsize.i216, align 8, !dbg !989, !tbaa !309
  br label %if.end, !dbg !990

if.end.i222:                                      ; preds = %if.else
  tail call void @llvm.dbg.value(metadata !{i8* %10}, i64 0, metadata !991), !dbg !992
  %incdec.ptr.i219 = getelementptr inbounds i8* %10, i64 1, !dbg !993
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i219}, i64 0, metadata !991), !dbg !993
  store i8 4, i8* %10, align 1, !dbg !993, !tbaa !271
  %incdec.ptr2.i220 = getelementptr inbounds i8* %10, i64 2, !dbg !994
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i220}, i64 0, metadata !991), !dbg !994
  store i8 0, i8* %incdec.ptr.i219, align 1, !dbg !994, !tbaa !271
  %incdec.ptr3.i221 = getelementptr inbounds i8* %10, i64 3, !dbg !995
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i221}, i64 0, metadata !991), !dbg !995
  store i8 0, i8* %incdec.ptr2.i220, align 1, !dbg !995, !tbaa !271
  store i8* %incdec.ptr3.i221, i8** %regcode.i202, align 8, !dbg !996, !tbaa !270
  %.pre346 = load i8** %regparse, align 8, !dbg !997, !tbaa !270
  br label %if.end, !dbg !998

if.end:                                           ; preds = %if.end.i222, %if.then.i218, %regnode.exit212
  %15 = phi i8* [ %incdec.ptr3.i221, %if.end.i222 ], [ %arraydecay.i203, %if.then.i218 ], [ %12, %regnode.exit212 ]
  %16 = phi i8* [ %.pre346, %if.end.i222 ], [ %incdec.ptr, %if.then.i218 ], [ %incdec.ptr11, %regnode.exit212 ]
  %17 = load i8* %16, align 1, !dbg !997, !tbaa !271
  switch i8 %17, label %while.cond.preheader [
    i8 93, label %if.then19
    i8 45, label %if.then19
  ], !dbg !997

if.then19:                                        ; preds = %if.end, %if.end
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !999), !dbg !1002
  %cmp.i226 = icmp eq i8* %15, %arraydecay.i203, !dbg !1003
  br i1 %cmp.i226, label %if.else.i, label %if.then.i228, !dbg !1003

if.then.i228:                                     ; preds = %if.then19
  %incdec.ptr.i227 = getelementptr inbounds i8* %15, i64 1, !dbg !1004
  store i8* %incdec.ptr.i227, i8** %regcode.i202, align 8, !dbg !1004, !tbaa !270
  store i8 %17, i8* %15, align 1, !dbg !1004, !tbaa !271
  %.pre347 = load i8** %regparse, align 8, !dbg !1005, !tbaa !270
  br label %regc.exit, !dbg !1004

if.else.i:                                        ; preds = %if.then19
  %regsize.i229 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !1006
  %18 = load i64* %regsize.i229, align 8, !dbg !1006, !tbaa !309
  %inc.i = add nsw i64 %18, 1, !dbg !1006
  store i64 %inc.i, i64* %regsize.i229, align 8, !dbg !1006, !tbaa !309
  br label %regc.exit

regc.exit:                                        ; preds = %if.then.i228, %if.else.i
  %19 = phi i8* [ %.pre347, %if.then.i228 ], [ %16, %if.else.i ]
  %incdec.ptr21 = getelementptr inbounds i8* %19, i64 1, !dbg !1005
  store i8* %incdec.ptr21, i8** %regparse, align 8, !dbg !1005, !tbaa !270
  br label %while.cond.preheader, !dbg !1007

while.cond.preheader:                             ; preds = %regc.exit, %if.end
  %20 = phi i8* [ %incdec.ptr21, %regc.exit ], [ %16, %if.end ]
  %regsize.i237 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !1008
  br label %while.cond, !dbg !1011

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %21 = phi i8* [ %.pre348, %while.cond.backedge ], [ %20, %while.cond.preheader ], !dbg !1011
  %incdec.ptr24 = getelementptr inbounds i8* %21, i64 1, !dbg !1011
  store i8* %incdec.ptr24, i8** %regparse, align 8, !dbg !1011, !tbaa !270
  %22 = load i8* %21, align 1, !dbg !1011, !tbaa !271
  switch i8 %22, label %if.then32 [
    i8 0, label %while.end
    i8 93, label %while.end
    i8 45, label %if.else33
  ], !dbg !1011

if.then32:                                        ; preds = %while.cond
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1012), !dbg !1013
  %23 = load i8** %regcode.i202, align 8, !dbg !1014, !tbaa !270
  %cmp.i233 = icmp eq i8* %23, %arraydecay.i203, !dbg !1014
  br i1 %cmp.i233, label %if.else.i239, label %if.then.i236, !dbg !1014

if.then.i236:                                     ; preds = %if.then32
  %incdec.ptr.i235 = getelementptr inbounds i8* %23, i64 1, !dbg !1015
  store i8* %incdec.ptr.i235, i8** %regcode.i202, align 8, !dbg !1015, !tbaa !270
  store i8 %22, i8* %23, align 1, !dbg !1015, !tbaa !271
  br label %while.cond.backedge, !dbg !1015

if.else.i239:                                     ; preds = %if.then32
  %24 = load i64* %regsize.i237, align 8, !dbg !1008, !tbaa !309
  %inc.i238 = add nsw i64 %24, 1, !dbg !1008
  store i64 %inc.i238, i64* %regsize.i237, align 8, !dbg !1008, !tbaa !309
  br label %while.cond.backedge

if.else33:                                        ; preds = %while.cond
  %25 = load i8* %incdec.ptr24, align 1, !dbg !1016, !tbaa !271
  switch i8 %25, label %if.else42 [
    i8 93, label %if.then41
    i8 0, label %if.then41
  ], !dbg !1016

if.then41:                                        ; preds = %if.else33, %if.else33
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1017), !dbg !1019
  %26 = load i8** %regcode.i202, align 8, !dbg !1020, !tbaa !270
  %cmp.i244 = icmp eq i8* %26, %arraydecay.i203, !dbg !1020
  br i1 %cmp.i244, label %if.else.i249, label %if.then.i246, !dbg !1020

if.then.i246:                                     ; preds = %if.then41
  %incdec.ptr.i245 = getelementptr inbounds i8* %26, i64 1, !dbg !1021
  store i8* %incdec.ptr.i245, i8** %regcode.i202, align 8, !dbg !1021, !tbaa !270
  store i8 45, i8* %26, align 1, !dbg !1021, !tbaa !271
  br label %while.cond.backedge, !dbg !1021

if.else.i249:                                     ; preds = %if.then41
  %27 = load i64* %regsize.i237, align 8, !dbg !1022, !tbaa !309
  %inc.i248 = add nsw i64 %27, 1, !dbg !1022
  store i64 %inc.i248, i64* %regsize.i237, align 8, !dbg !1022, !tbaa !309
  br label %while.cond.backedge

if.else42:                                        ; preds = %if.else33
  %add.ptr = getelementptr inbounds i8* %21, i64 -1, !dbg !1023
  %28 = load i8* %add.ptr, align 1, !dbg !1023, !tbaa !271
  call void @llvm.dbg.value(metadata !{i32 %conv44}, i64 0, metadata !247), !dbg !1023
  %conv46 = zext i8 %25 to i32, !dbg !1025
  call void @llvm.dbg.value(metadata !{i32 %conv46}, i64 0, metadata !250), !dbg !1025
  %cmp47 = icmp ugt i8 %28, %25, !dbg !1026
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !1026

if.then49:                                        ; preds = %if.else42
  call void @sqd_regerror(i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0)) #11, !dbg !1027
  unreachable

if.end50:                                         ; preds = %if.else42
  %cmp51340 = icmp ult i8 %28, %25, !dbg !1029
  br i1 %cmp51340, label %for.body.lr.ph, label %for.end, !dbg !1029

for.body.lr.ph:                                   ; preds = %if.end50
  %conv44 = zext i8 %28 to i32, !dbg !1023
  br label %for.body, !dbg !1029

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %range.0341.in = phi i32 [ %conv44, %for.body.lr.ph ], [ %range.0341, %for.cond.backedge ]
  %range.0341 = add nsw i32 %range.0341.in, 1, !dbg !1029
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1031), !dbg !1033
  %29 = load i8** %regcode.i202, align 8, !dbg !1034, !tbaa !270
  %cmp.i254 = icmp eq i8* %29, %arraydecay.i203, !dbg !1034
  br i1 %cmp.i254, label %if.else.i260, label %if.then.i257, !dbg !1034

if.then.i257:                                     ; preds = %for.body
  %b.i255 = trunc i32 %range.0341 to i8
  %incdec.ptr.i256 = getelementptr inbounds i8* %29, i64 1, !dbg !1035
  store i8* %incdec.ptr.i256, i8** %regcode.i202, align 8, !dbg !1035, !tbaa !270
  store i8 %b.i255, i8* %29, align 1, !dbg !1035, !tbaa !271
  br label %for.cond.backedge, !dbg !1035

for.cond.backedge:                                ; preds = %if.then.i257, %if.else.i260
  %cmp51 = icmp slt i32 %range.0341, %conv46, !dbg !1029
  br i1 %cmp51, label %for.body, label %for.cond.for.end_crit_edge, !dbg !1029

if.else.i260:                                     ; preds = %for.body
  %30 = load i64* %regsize.i237, align 8, !dbg !1036, !tbaa !309
  %inc.i259 = add nsw i64 %30, 1, !dbg !1036
  store i64 %inc.i259, i64* %regsize.i237, align 8, !dbg !1036, !tbaa !309
  br label %for.cond.backedge

for.cond.for.end_crit_edge:                       ; preds = %for.cond.backedge
  %.pre349 = load i8** %regparse, align 8, !dbg !1037, !tbaa !270
  br label %for.end, !dbg !1029

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end50
  %31 = phi i8* [ %.pre349, %for.cond.for.end_crit_edge ], [ %incdec.ptr24, %if.end50 ]
  %incdec.ptr55 = getelementptr inbounds i8* %31, i64 1, !dbg !1037
  store i8* %incdec.ptr55, i8** %regparse, align 8, !dbg !1037, !tbaa !270
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.end, %if.then.i236, %if.else.i239, %if.then.i246, %if.else.i249
  %.pre348 = load i8** %regparse, align 8, !dbg !1011, !tbaa !270
  br label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1038), !dbg !1040
  %32 = load i8** %regcode.i202, align 8, !dbg !1041, !tbaa !270
  %cmp.i265 = icmp eq i8* %32, %arraydecay.i203, !dbg !1041
  br i1 %cmp.i265, label %if.else.i270, label %if.then.i267, !dbg !1041

if.then.i267:                                     ; preds = %while.end
  %incdec.ptr.i266 = getelementptr inbounds i8* %32, i64 1, !dbg !1042
  store i8* %incdec.ptr.i266, i8** %regcode.i202, align 8, !dbg !1042, !tbaa !270
  store i8 0, i8* %32, align 1, !dbg !1042, !tbaa !271
  br label %regc.exit272, !dbg !1042

if.else.i270:                                     ; preds = %while.end
  %33 = load i64* %regsize.i237, align 8, !dbg !1043, !tbaa !309
  %inc.i269 = add nsw i64 %33, 1, !dbg !1043
  store i64 %inc.i269, i64* %regsize.i237, align 8, !dbg !1043, !tbaa !309
  br label %regc.exit272

regc.exit272:                                     ; preds = %if.then.i267, %if.else.i270
  %cmp58 = icmp eq i8 %22, 93, !dbg !1044
  br i1 %cmp58, label %if.end61, label %if.then60, !dbg !1044

if.then60:                                        ; preds = %regc.exit272
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0)) #11, !dbg !1045
  unreachable

if.end61:                                         ; preds = %regc.exit272
  %34 = load i32* %flagp, align 4, !dbg !1047, !tbaa !300
  %or62 = or i32 %34, 3, !dbg !1047
  store i32 %or62, i32* %flagp, align 4, !dbg !1047, !tbaa !300
  br label %return, !dbg !1048

sw.bb63:                                          ; preds = %entry
  %call64 = call fastcc i8* @reg(%struct.comp* %cp, i32 1, i32* %flags) #11, !dbg !1049
  call void @llvm.dbg.value(metadata !{i8* %call64}, i64 0, metadata !245), !dbg !1049
  %cmp65 = icmp eq i8* %call64, null, !dbg !1050
  br i1 %cmp65, label %return, label %if.end68, !dbg !1050

if.end68:                                         ; preds = %sw.bb63
  call void @llvm.dbg.value(metadata !{i32* %flags}, i64 0, metadata !246), !dbg !1051
  %35 = load i32* %flags, align 4, !dbg !1051, !tbaa !300
  %and = and i32 %35, 5, !dbg !1051
  %36 = load i32* %flagp, align 4, !dbg !1051, !tbaa !300
  %or69 = or i32 %36, %and, !dbg !1051
  store i32 %or69, i32* %flagp, align 4, !dbg !1051, !tbaa !300
  br label %return, !dbg !1052

sw.bb70:                                          ; preds = %entry, %entry, %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([32 x i8]* @.str23, i64 0, i64 0)) #11, !dbg !1053
  unreachable

sw.bb71:                                          ; preds = %entry, %entry, %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([20 x i8]* @.str24, i64 0, i64 0)) #11, !dbg !1055
  unreachable

sw.bb72:                                          ; preds = %entry
  %37 = load i8* %incdec.ptr, align 1, !dbg !1057, !tbaa !271
  %cmp75 = icmp eq i8 %37, 0, !dbg !1057
  br i1 %cmp75, label %if.then77, label %if.end78, !dbg !1057

if.then77:                                        ; preds = %sw.bb72
  call void @sqd_regerror(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0)) #11, !dbg !1058
  unreachable

if.end78:                                         ; preds = %sw.bb72
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1060), !dbg !1062
  %regcode.i273 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !1063
  %38 = load i8** %regcode.i273, align 8, !dbg !1063, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %38}, i64 0, metadata !1064), !dbg !1063
  %arraydecay.i274 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !1065
  %cmp.i275 = icmp eq i8* %38, %arraydecay.i274, !dbg !1065
  br i1 %cmp.i275, label %regnode.exit283.thread, label %regnode.exit283, !dbg !1065

regnode.exit283.thread:                           ; preds = %if.end78
  %regsize.i276 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !1066
  %39 = load i64* %regsize.i276, align 8, !dbg !1066, !tbaa !309
  %add.i277 = add nsw i64 %39, 3, !dbg !1066
  store i64 %add.i277, i64* %regsize.i276, align 8, !dbg !1066, !tbaa !309
  call void @llvm.dbg.value(metadata !{i8* %38}, i64 0, metadata !245), !dbg !1061
  %incdec.ptr81355 = getelementptr inbounds i8* %0, i64 2, !dbg !1067
  store i8* %incdec.ptr81355, i8** %regparse, align 8, !dbg !1067, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1068), !dbg !1069
  br label %regc.exit294.thread, !dbg !1070

regnode.exit283:                                  ; preds = %if.end78
  tail call void @llvm.dbg.value(metadata !{i8* %38}, i64 0, metadata !1071), !dbg !1072
  %incdec.ptr.i279 = getelementptr inbounds i8* %38, i64 1, !dbg !1073
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i279}, i64 0, metadata !1071), !dbg !1073
  store i8 8, i8* %38, align 1, !dbg !1073, !tbaa !271
  %incdec.ptr2.i280 = getelementptr inbounds i8* %38, i64 2, !dbg !1074
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i280}, i64 0, metadata !1071), !dbg !1074
  store i8 0, i8* %incdec.ptr.i279, align 1, !dbg !1074, !tbaa !271
  %incdec.ptr3.i281 = getelementptr inbounds i8* %38, i64 3, !dbg !1075
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i281}, i64 0, metadata !1071), !dbg !1075
  store i8 0, i8* %incdec.ptr2.i280, align 1, !dbg !1075, !tbaa !271
  store i8* %incdec.ptr3.i281, i8** %regcode.i273, align 8, !dbg !1076, !tbaa !270
  %.pre350 = load i8** %regparse, align 8, !dbg !1067, !tbaa !270
  call void @llvm.dbg.value(metadata !{i8* %38}, i64 0, metadata !245), !dbg !1061
  %incdec.ptr81 = getelementptr inbounds i8* %.pre350, i64 1, !dbg !1067
  store i8* %incdec.ptr81, i8** %regparse, align 8, !dbg !1067, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1068), !dbg !1069
  %cmp.i286 = icmp eq i8* %incdec.ptr3.i281, %arraydecay.i274, !dbg !1070
  br i1 %cmp.i286, label %regc.exit294.thread, label %regc.exit294, !dbg !1070

regc.exit294.thread:                              ; preds = %regnode.exit283, %regnode.exit283.thread
  %regsize.i290 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !1077
  %40 = load i64* %regsize.i290, align 8, !dbg !1077, !tbaa !309
  %inc.i291 = add nsw i64 %40, 1, !dbg !1077
  store i64 %inc.i291, i64* %regsize.i290, align 8, !dbg !1077, !tbaa !309
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1078), !dbg !1080
  br label %if.else.i302, !dbg !1081

regc.exit294:                                     ; preds = %regnode.exit283
  %41 = load i8* %.pre350, align 1, !dbg !1067, !tbaa !271
  %incdec.ptr.i288 = getelementptr inbounds i8* %38, i64 4, !dbg !1082
  store i8* %incdec.ptr.i288, i8** %regcode.i273, align 8, !dbg !1082, !tbaa !270
  store i8 %41, i8* %incdec.ptr3.i281, align 1, !dbg !1082, !tbaa !271
  %.pre351 = load i8** %regcode.i273, align 8, !dbg !1081, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1078), !dbg !1080
  %cmp.i297 = icmp eq i8* %.pre351, %arraydecay.i274, !dbg !1081
  br i1 %cmp.i297, label %if.else.i302, label %if.then.i299, !dbg !1081

if.then.i299:                                     ; preds = %regc.exit294
  %incdec.ptr.i298 = getelementptr inbounds i8* %.pre351, i64 1, !dbg !1083
  store i8* %incdec.ptr.i298, i8** %regcode.i273, align 8, !dbg !1083, !tbaa !270
  store i8 0, i8* %.pre351, align 1, !dbg !1083, !tbaa !271
  br label %regc.exit304, !dbg !1083

if.else.i302:                                     ; preds = %regc.exit294.thread, %regc.exit294
  %regsize.i300 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !1084
  %42 = load i64* %regsize.i300, align 8, !dbg !1084, !tbaa !309
  %inc.i301 = add nsw i64 %42, 1, !dbg !1084
  store i64 %inc.i301, i64* %regsize.i300, align 8, !dbg !1084, !tbaa !309
  br label %regc.exit304

regc.exit304:                                     ; preds = %if.then.i299, %if.else.i302
  %43 = load i32* %flagp, align 4, !dbg !1085, !tbaa !300
  %or83 = or i32 %43, 3, !dbg !1085
  store i32 %or83, i32* %flagp, align 4, !dbg !1085, !tbaa !300
  br label %return, !dbg !1086

sw.default:                                       ; preds = %entry
  store i8* %0, i8** %regparse, align 8, !dbg !1087, !tbaa !270
  %call87 = call i64 @strcspn(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0)) #12, !dbg !1088
  call void @llvm.dbg.value(metadata !{i64 %call87}, i64 0, metadata !252), !dbg !1088
  %cmp88 = icmp eq i64 %call87, 0, !dbg !1089
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !1089

if.then90:                                        ; preds = %sw.default
  call void @sqd_regerror(i8* getelementptr inbounds ([26 x i8]* @.str27, i64 0, i64 0)) #11, !dbg !1090
  unreachable

if.end91:                                         ; preds = %sw.default
  call void @llvm.dbg.value(metadata !{i8 %44}, i64 0, metadata !254), !dbg !1092
  %cmp94 = icmp ugt i64 %call87, 1, !dbg !1093
  br i1 %cmp94, label %land.lhs.true, label %if.end108, !dbg !1093

land.lhs.true:                                    ; preds = %if.end91
  %add.ptr93 = getelementptr inbounds i8* %0, i64 %call87, !dbg !1092
  %44 = load i8* %add.ptr93, align 1, !dbg !1092, !tbaa !271
  switch i8 %44, label %if.end108 [
    i8 42, label %if.then107
    i8 43, label %if.then107
    i8 63, label %if.then107
  ], !dbg !1093

if.then107:                                       ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %dec = add i64 %call87, -1, !dbg !1094
  call void @llvm.dbg.value(metadata !{i64 %dec}, i64 0, metadata !252), !dbg !1094
  br label %if.end108, !dbg !1094

if.end108:                                        ; preds = %land.lhs.true, %if.then107, %if.end91
  %len.0 = phi i64 [ %dec, %if.then107 ], [ 1, %if.end91 ], [ %call87, %land.lhs.true ]
  %cmp110 = icmp eq i64 %len.0, 1, !dbg !1095
  %or113.or109.v = select i1 %cmp110, i32 3, i32 1, !dbg !1095
  store i32 %or113.or109.v, i32* %flagp, align 4, !dbg !1096, !tbaa !300
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1097), !dbg !1099
  %regcode.i305 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2, !dbg !1100
  %45 = load i8** %regcode.i305, align 8, !dbg !1100, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{i8* %45}, i64 0, metadata !1101), !dbg !1100
  %arraydecay.i306 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0, !dbg !1102
  %cmp.i307 = icmp eq i8* %45, %arraydecay.i306, !dbg !1102
  br i1 %cmp.i307, label %if.then.i310, label %if.end.i314, !dbg !1102

if.then.i310:                                     ; preds = %if.end108
  %regsize.i308 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !1103
  %46 = load i64* %regsize.i308, align 8, !dbg !1103, !tbaa !309
  %add.i309 = add nsw i64 %46, 3, !dbg !1103
  store i64 %add.i309, i64* %regsize.i308, align 8, !dbg !1103, !tbaa !309
  br label %for.cond116.preheader, !dbg !1104

if.end.i314:                                      ; preds = %if.end108
  tail call void @llvm.dbg.value(metadata !{i8* %45}, i64 0, metadata !1105), !dbg !1106
  %incdec.ptr.i311 = getelementptr inbounds i8* %45, i64 1, !dbg !1107
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i311}, i64 0, metadata !1105), !dbg !1107
  store i8 8, i8* %45, align 1, !dbg !1107, !tbaa !271
  %incdec.ptr2.i312 = getelementptr inbounds i8* %45, i64 2, !dbg !1108
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr2.i312}, i64 0, metadata !1105), !dbg !1108
  store i8 0, i8* %incdec.ptr.i311, align 1, !dbg !1108, !tbaa !271
  %incdec.ptr3.i313 = getelementptr inbounds i8* %45, i64 3, !dbg !1109
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr3.i313}, i64 0, metadata !1105), !dbg !1109
  store i8 0, i8* %incdec.ptr2.i312, align 1, !dbg !1109, !tbaa !271
  store i8* %incdec.ptr3.i313, i8** %regcode.i305, align 8, !dbg !1110, !tbaa !270
  br label %for.cond116.preheader, !dbg !1111

for.cond116.preheader:                            ; preds = %if.then.i310, %if.end.i314
  %47 = phi i8* [ %45, %if.then.i310 ], [ %incdec.ptr3.i313, %if.end.i314 ]
  %cmp117337 = icmp eq i64 %len.0, 0, !dbg !1112
  br i1 %cmp117337, label %for.end125, label %for.body119.lr.ph, !dbg !1112

for.body119.lr.ph:                                ; preds = %for.cond116.preheader
  %regsize.i322 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !1114
  br label %for.body119, !dbg !1112

for.body119:                                      ; preds = %regc.exit326, %for.body119.lr.ph
  %48 = phi i8* [ %47, %for.body119.lr.ph ], [ %.pre, %regc.exit326 ], !dbg !1115
  %len.1338 = phi i64 [ %len.0, %for.body119.lr.ph ], [ %dec124, %regc.exit326 ]
  %49 = load i8** %regparse, align 8, !dbg !1115, !tbaa !270
  %incdec.ptr121 = getelementptr inbounds i8* %49, i64 1, !dbg !1115
  store i8* %incdec.ptr121, i8** %regparse, align 8, !dbg !1115, !tbaa !270
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1116), !dbg !1117
  %cmp.i318 = icmp eq i8* %48, %arraydecay.i306, !dbg !1118
  br i1 %cmp.i318, label %if.else.i324, label %if.then.i321, !dbg !1118

if.then.i321:                                     ; preds = %for.body119
  %50 = load i8* %49, align 1, !dbg !1115, !tbaa !271
  %incdec.ptr.i320 = getelementptr inbounds i8* %48, i64 1, !dbg !1119
  store i8* %incdec.ptr.i320, i8** %regcode.i305, align 8, !dbg !1119, !tbaa !270
  store i8 %50, i8* %48, align 1, !dbg !1119, !tbaa !271
  br label %regc.exit326, !dbg !1119

if.else.i324:                                     ; preds = %for.body119
  %51 = load i64* %regsize.i322, align 8, !dbg !1114, !tbaa !309
  %inc.i323 = add nsw i64 %51, 1, !dbg !1114
  store i64 %inc.i323, i64* %regsize.i322, align 8, !dbg !1114, !tbaa !309
  br label %regc.exit326

regc.exit326:                                     ; preds = %if.then.i321, %if.else.i324
  %dec124 = add i64 %len.1338, -1, !dbg !1112
  call void @llvm.dbg.value(metadata !{i64 %dec124}, i64 0, metadata !252), !dbg !1112
  %cmp117 = icmp eq i64 %dec124, 0, !dbg !1112
  %.pre = load i8** %regcode.i305, align 8, !dbg !1120, !tbaa !270
  br i1 %cmp117, label %for.end125, label %for.body119, !dbg !1112

for.end125:                                       ; preds = %regc.exit326, %for.cond116.preheader
  %52 = phi i8* [ %47, %for.cond116.preheader ], [ %.pre, %regc.exit326 ]
  tail call void @llvm.dbg.value(metadata !{%struct.comp* %cp}, i64 0, metadata !1122), !dbg !1123
  %cmp.i329 = icmp eq i8* %52, %arraydecay.i306, !dbg !1120
  br i1 %cmp.i329, label %if.else.i334, label %if.then.i331, !dbg !1120

if.then.i331:                                     ; preds = %for.end125
  %incdec.ptr.i330 = getelementptr inbounds i8* %52, i64 1, !dbg !1124
  store i8* %incdec.ptr.i330, i8** %regcode.i305, align 8, !dbg !1124, !tbaa !270
  store i8 0, i8* %52, align 1, !dbg !1124, !tbaa !271
  br label %return, !dbg !1124

if.else.i334:                                     ; preds = %for.end125
  %regsize.i332 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4, !dbg !1125
  %53 = load i64* %regsize.i332, align 8, !dbg !1125, !tbaa !309
  %inc.i333 = add nsw i64 %53, 1, !dbg !1125
  store i64 %inc.i333, i64* %regsize.i332, align 8, !dbg !1125, !tbaa !309
  br label %return

return:                                           ; preds = %if.else.i334, %if.then.i331, %if.end.i189, %if.then.i185, %if.end.i, %if.then.i, %regnode.exit201, %if.end61, %if.end68, %regc.exit304, %sw.bb63
  %retval.0 = phi i8* [ null, %sw.bb63 ], [ %38, %regc.exit304 ], [ %call64, %if.end68 ], [ %10, %if.end61 ], [ %6, %regnode.exit201 ], [ %arraydecay.i, %if.then.i ], [ %2, %if.end.i ], [ %arraydecay.i181, %if.then.i185 ], [ %4, %if.end.i189 ], [ %45, %if.then.i331 ], [ %45, %if.else.i334 ]
  ret i8* %retval.0, !dbg !1126
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize readonly }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !263, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 46, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 46, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"/usr/include/ctype.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17}
!6 = metadata !{i32 786472, metadata !"_ISupper", i64 256} ; [ DW_TAG_enumerator ] [_ISupper :: 256]
!7 = metadata !{i32 786472, metadata !"_ISlower", i64 512} ; [ DW_TAG_enumerator ] [_ISlower :: 512]
!8 = metadata !{i32 786472, metadata !"_ISalpha", i64 1024} ; [ DW_TAG_enumerator ] [_ISalpha :: 1024]
!9 = metadata !{i32 786472, metadata !"_ISdigit", i64 2048} ; [ DW_TAG_enumerator ] [_ISdigit :: 2048]
!10 = metadata !{i32 786472, metadata !"_ISxdigit", i64 4096} ; [ DW_TAG_enumerator ] [_ISxdigit :: 4096]
!11 = metadata !{i32 786472, metadata !"_ISspace", i64 8192} ; [ DW_TAG_enumerator ] [_ISspace :: 8192]
!12 = metadata !{i32 786472, metadata !"_ISprint", i64 16384} ; [ DW_TAG_enumerator ] [_ISprint :: 16384]
!13 = metadata !{i32 786472, metadata !"_ISgraph", i64 32768} ; [ DW_TAG_enumerator ] [_ISgraph :: 32768]
!14 = metadata !{i32 786472, metadata !"_ISblank", i64 1} ; [ DW_TAG_enumerator ] [_ISblank :: 1]
!15 = metadata !{i32 786472, metadata !"_IScntrl", i64 2} ; [ DW_TAG_enumerator ] [_IScntrl :: 2]
!16 = metadata !{i32 786472, metadata !"_ISpunct", i64 4} ; [ DW_TAG_enumerator ] [_ISpunct :: 4]
!17 = metadata !{i32 786472, metadata !"_ISalnum", i64 8} ; [ DW_TAG_enumerator ] [_ISalnum :: 8]
!18 = metadata !{i32 0}
!19 = metadata !{metadata !20, metadata !53, metadata !58, metadata !86, metadata !102, metadata !118, metadata !123, metadata !130, metadata !141, metadata !170, metadata !179, metadata !186, metadata !199, metadata !206, metadata !214, metadata !225, metadata !233, metadata !241, metadata !255}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Strparse", metadata !"Strparse", metadata !"", i32 92, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @Strparse, null, null, metadata !27, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [Strparse]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25, metadata !25, metadata !24}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{metadata !28, metadata !29, metadata !30, metadata !31, metadata !50, metadata !51, metadata !52}
!28 = metadata !{i32 786689, metadata !20, metadata !"rexp", metadata !21, i32 16777308, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rexp] [line 92]
!29 = metadata !{i32 786689, metadata !20, metadata !"s", metadata !21, i32 33554524, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 92]
!30 = metadata !{i32 786689, metadata !20, metadata !"ntok", metadata !21, i32 50331740, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ntok] [line 92]
!31 = metadata !{i32 786688, metadata !20, metadata !"pat", metadata !21, i32 94, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pat] [line 94]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from sqd_regexp]
!33 = metadata !{i32 786454, metadata !1, null, metadata !"sqd_regexp", i32 357, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [sqd_regexp] [line 357, size 0, align 0, offset 0] [from sqd_regexp]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"sqd_regexp", i32 349, i64 1472, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [sqd_regexp] [line 349, size 1472, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/squid.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"startp", i32 350, i64 640, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_member ] [startp] [line 350, size 640, align 64, offset 0] [from ]
!38 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 64, i32 0, i32 0, metadata !25, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 64, offset 0] [from ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!41 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"endp", i32 351, i64 640, i64 64, i64 640, i32 0, metadata !38} ; [ DW_TAG_member ] [endp] [line 351, size 640, align 64, offset 640] [from ]
!42 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"regstart", i32 352, i64 8, i64 8, i64 1280, i32 0, metadata !26} ; [ DW_TAG_member ] [regstart] [line 352, size 8, align 8, offset 1280] [from char]
!43 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"reganch", i32 353, i64 8, i64 8, i64 1288, i32 0, metadata !26} ; [ DW_TAG_member ] [reganch] [line 353, size 8, align 8, offset 1288] [from char]
!44 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"regmust", i32 354, i64 64, i64 64, i64 1344, i32 0, metadata !25} ; [ DW_TAG_member ] [regmust] [line 354, size 64, align 64, offset 1344] [from ]
!45 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"regmlen", i32 355, i64 32, i64 32, i64 1408, i32 0, metadata !24} ; [ DW_TAG_member ] [regmlen] [line 355, size 32, align 32, offset 1408] [from int]
!46 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"program", i32 356, i64 8, i64 8, i64 1440, i32 0, metadata !47} ; [ DW_TAG_member ] [program] [line 356, size 8, align 8, offset 1440] [from ]
!47 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !26, metadata !48, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!50 = metadata !{i32 786688, metadata !20, metadata !"code", metadata !21, i32 95, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 95]
!51 = metadata !{i32 786688, metadata !20, metadata !"len", metadata !21, i32 96, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 96]
!52 = metadata !{i32 786688, metadata !20, metadata !"i", metadata !21, i32 97, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 97]
!53 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"SqdClean", metadata !"SqdClean", metadata !"", i32 141, metadata !54, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @SqdClean, null, null, metadata !56, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [SqdClean]
!54 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!55 = metadata !{null}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786688, metadata !53, metadata !"i", metadata !21, i32 143, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 143]
!58 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sqd_regcomp", metadata !"sqd_regcomp", metadata !"", i32 334, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, %struct.sqd_regexp* (i8*)* @sqd_regcomp, null, null, metadata !63, i32 336} ; [ DW_TAG_subprogram ] [line 334] [def] [scope 336] [sqd_regcomp]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{metadata !32, metadata !61}
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!63 = metadata !{metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !80, metadata !83}
!64 = metadata !{i32 786689, metadata !58, metadata !"exp", metadata !21, i32 16777551, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [exp] [line 335]
!65 = metadata !{i32 786688, metadata !58, metadata !"r", metadata !21, i32 337, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 337]
!66 = metadata !{i32 786688, metadata !58, metadata !"scan", metadata !21, i32 338, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan] [line 338]
!67 = metadata !{i32 786688, metadata !58, metadata !"flags", metadata !21, i32 339, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 339]
!68 = metadata !{i32 786688, metadata !58, metadata !"co", metadata !21, i32 340, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [co] [line 340]
!69 = metadata !{i32 786451, metadata !1, null, metadata !"comp", i32 295, i64 320, i64 64, i32 0, i32 0, null, metadata !70, i32 0, null, null} ; [ DW_TAG_structure_type ] [comp] [line 295, size 320, align 64, offset 0] [from ]
!70 = metadata !{metadata !71, metadata !72, metadata !73, metadata !74, metadata !78}
!71 = metadata !{i32 786445, metadata !1, metadata !69, metadata !"regparse", i32 296, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [regparse] [line 296, size 64, align 64, offset 0] [from ]
!72 = metadata !{i32 786445, metadata !1, metadata !69, metadata !"regnpar", i32 297, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [regnpar] [line 297, size 32, align 32, offset 64] [from int]
!73 = metadata !{i32 786445, metadata !1, metadata !69, metadata !"regcode", i32 298, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [regcode] [line 298, size 64, align 64, offset 128] [from ]
!74 = metadata !{i32 786445, metadata !1, metadata !69, metadata !"regdummy", i32 299, i64 24, i64 8, i64 192, i32 0, metadata !75} ; [ DW_TAG_member ] [regdummy] [line 299, size 24, align 8, offset 192] [from ]
!75 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 24, i64 8, i32 0, i32 0, metadata !26, metadata !76, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 24, align 8, offset 0] [from char]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!78 = metadata !{i32 786445, metadata !1, metadata !69, metadata !"regsize", i32 300, i64 64, i64 64, i64 256, i32 0, metadata !79} ; [ DW_TAG_member ] [regsize] [line 300, size 64, align 64, offset 256] [from long int]
!79 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!80 = metadata !{i32 786688, metadata !81, metadata !"longest", metadata !21, i32 397, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [longest] [line 397]
!81 = metadata !{i32 786443, metadata !1, metadata !82, i32 396, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!82 = metadata !{i32 786443, metadata !1, metadata !58, i32 379, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!83 = metadata !{i32 786688, metadata !81, metadata !"len", metadata !21, i32 398, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 398]
!84 = metadata !{i32 786454, metadata !1, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!85 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!86 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sqd_regexec", metadata !"sqd_regexec", metadata !"", i32 845, metadata !87, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.sqd_regexp*, i8*)* @sqd_regexec, null, null, metadata !89, i32 848} ; [ DW_TAG_subprogram ] [line 845] [def] [scope 848] [sqd_regexec]
!87 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!88 = metadata !{metadata !24, metadata !32, metadata !61}
!89 = metadata !{metadata !90, metadata !91, metadata !92, metadata !93, metadata !94}
!90 = metadata !{i32 786689, metadata !86, metadata !"prog", metadata !21, i32 16778062, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prog] [line 846]
!91 = metadata !{i32 786689, metadata !86, metadata !"str", metadata !21, i32 33555279, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 847]
!92 = metadata !{i32 786688, metadata !86, metadata !"string", metadata !21, i32 849, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string] [line 849]
!93 = metadata !{i32 786688, metadata !86, metadata !"s", metadata !21, i32 850, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 850]
!94 = metadata !{i32 786688, metadata !86, metadata !"ex", metadata !21, i32 851, metadata !95, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ex] [line 851]
!95 = metadata !{i32 786451, metadata !1, null, metadata !"exec", i32 821, i64 256, i64 64, i32 0, i32 0, null, metadata !96, i32 0, null, null} ; [ DW_TAG_structure_type ] [exec] [line 821, size 256, align 64, offset 0] [from ]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !101}
!97 = metadata !{i32 786445, metadata !1, metadata !95, metadata !"reginput", i32 822, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_member ] [reginput] [line 822, size 64, align 64, offset 0] [from ]
!98 = metadata !{i32 786445, metadata !1, metadata !95, metadata !"regbol", i32 823, i64 64, i64 64, i64 64, i32 0, metadata !25} ; [ DW_TAG_member ] [regbol] [line 823, size 64, align 64, offset 64] [from ]
!99 = metadata !{i32 786445, metadata !1, metadata !95, metadata !"regstartp", i32 824, i64 64, i64 64, i64 128, i32 0, metadata !100} ; [ DW_TAG_member ] [regstartp] [line 824, size 64, align 64, offset 128] [from ]
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!101 = metadata !{i32 786445, metadata !1, metadata !95, metadata !"regendp", i32 825, i64 64, i64 64, i64 192, i32 0, metadata !100} ; [ DW_TAG_member ] [regendp] [line 825, size 64, align 64, offset 192] [from ]
!102 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sqd_regsub", metadata !"sqd_regsub", metadata !"", i32 1273, metadata !103, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (%struct.sqd_regexp*, i8*, i8*)* @sqd_regsub, null, null, metadata !107, i32 1277} ; [ DW_TAG_subprogram ] [line 1273] [def] [scope 1277] [sqd_regsub]
!103 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!104 = metadata !{null, metadata !105, metadata !61, metadata !25}
!105 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !106} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!106 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from sqd_regexp]
!107 = metadata !{metadata !108, metadata !109, metadata !110, metadata !111, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117}
!108 = metadata !{i32 786689, metadata !102, metadata !"rp", metadata !21, i32 16778490, metadata !105, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rp] [line 1274]
!109 = metadata !{i32 786689, metadata !102, metadata !"source", metadata !21, i32 33555707, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [source] [line 1275]
!110 = metadata !{i32 786689, metadata !102, metadata !"dest", metadata !21, i32 50332924, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dest] [line 1276]
!111 = metadata !{i32 786688, metadata !102, metadata !"prog", metadata !21, i32 1278, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prog] [line 1278]
!112 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{i32 786688, metadata !102, metadata !"src", metadata !21, i32 1279, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 1279]
!114 = metadata !{i32 786688, metadata !102, metadata !"dst", metadata !21, i32 1280, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 1280]
!115 = metadata !{i32 786688, metadata !102, metadata !"c", metadata !21, i32 1281, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1281]
!116 = metadata !{i32 786688, metadata !102, metadata !"no", metadata !21, i32 1282, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no] [line 1282]
!117 = metadata !{i32 786688, metadata !102, metadata !"len", metadata !21, i32 1283, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1283]
!118 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sqd_regerror", metadata !"sqd_regerror", metadata !"", i32 1322, metadata !119, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (i8*)* @sqd_regerror, null, null, metadata !121, i32 1324} ; [ DW_TAG_subprogram ] [line 1322] [def] [scope 1324] [sqd_regerror]
!119 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!120 = metadata !{null, metadata !25}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 786689, metadata !118, metadata !"s", metadata !21, i32 16778539, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 1323]
!123 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regnext", metadata !"regnext", metadata !"", i32 1127, metadata !124, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (i8*)* @regnext, null, null, metadata !126, i32 1129} ; [ DW_TAG_subprogram ] [line 1127] [local] [def] [scope 1129] [regnext]
!124 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!125 = metadata !{metadata !25, metadata !25}
!126 = metadata !{metadata !127, metadata !128}
!127 = metadata !{i32 786689, metadata !123, metadata !"p", metadata !21, i32 16778344, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 1128]
!128 = metadata !{i32 786688, metadata !123, metadata !"offset", metadata !21, i32 1130, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 1130]
!129 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!130 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regtry", metadata !"regtry", metadata !"", i32 899, metadata !131, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.exec*, %struct.sqd_regexp*, i8*)* @regtry, null, null, metadata !134, i32 903} ; [ DW_TAG_subprogram ] [line 899] [local] [def] [scope 903] [regtry]
!131 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!132 = metadata !{metadata !24, metadata !133, metadata !32, metadata !25}
!133 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from exec]
!134 = metadata !{metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140}
!135 = metadata !{i32 786689, metadata !130, metadata !"ep", metadata !21, i32 16778116, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 900]
!136 = metadata !{i32 786689, metadata !130, metadata !"prog", metadata !21, i32 33555333, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prog] [line 901]
!137 = metadata !{i32 786689, metadata !130, metadata !"string", metadata !21, i32 50332550, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [string] [line 902]
!138 = metadata !{i32 786688, metadata !130, metadata !"i", metadata !21, i32 904, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 904]
!139 = metadata !{i32 786688, metadata !130, metadata !"stp", metadata !21, i32 905, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stp] [line 905]
!140 = metadata !{i32 786688, metadata !130, metadata !"enp", metadata !21, i32 906, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enp] [line 906]
!141 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regmatch", metadata !"regmatch", metadata !"", i32 935, metadata !142, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (%struct.exec*, i8*)* @regmatch, null, null, metadata !144, i32 938} ; [ DW_TAG_subprogram ] [line 935] [local] [def] [scope 938] [regmatch]
!142 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!143 = metadata !{metadata !24, metadata !133, metadata !25}
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !154, metadata !156, metadata !158, metadata !159, metadata !161, metadata !162, metadata !164, metadata !166, metadata !167, metadata !168}
!145 = metadata !{i32 786689, metadata !141, metadata !"ep", metadata !21, i32 16778152, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 936]
!146 = metadata !{i32 786689, metadata !141, metadata !"prog", metadata !21, i32 33555369, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prog] [line 937]
!147 = metadata !{i32 786688, metadata !141, metadata !"scan", metadata !21, i32 939, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan] [line 939]
!148 = metadata !{i32 786688, metadata !141, metadata !"next", metadata !21, i32 940, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 940]
!149 = metadata !{i32 786688, metadata !150, metadata !"len", metadata !21, i32 968, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 968]
!150 = metadata !{i32 786443, metadata !1, metadata !151, i32 967, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!151 = metadata !{i32 786443, metadata !1, metadata !152, i32 953, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!152 = metadata !{i32 786443, metadata !1, metadata !153, i32 946, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!153 = metadata !{i32 786443, metadata !1, metadata !141, i32 946, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!154 = metadata !{i32 786688, metadata !150, metadata !"opnd", metadata !21, i32 969, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [opnd] [line 969]
!155 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!156 = metadata !{i32 786688, metadata !157, metadata !"no", metadata !21, i32 999, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no] [line 999]
!157 = metadata !{i32 786443, metadata !1, metadata !151, i32 998, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!158 = metadata !{i32 786688, metadata !157, metadata !"input", metadata !21, i32 1000, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input] [line 1000]
!159 = metadata !{i32 786688, metadata !160, metadata !"no", metadata !21, i32 1018, metadata !129, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no] [line 1018]
!160 = metadata !{i32 786443, metadata !1, metadata !151, i32 1017, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!161 = metadata !{i32 786688, metadata !160, metadata !"input", metadata !21, i32 1019, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [input] [line 1019]
!162 = metadata !{i32 786688, metadata !163, metadata !"save", metadata !21, i32 1035, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save] [line 1035]
!163 = metadata !{i32 786443, metadata !1, metadata !151, i32 1034, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!164 = metadata !{i32 786688, metadata !165, metadata !"nextch", metadata !21, i32 1052, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextch] [line 1052]
!165 = metadata !{i32 786443, metadata !1, metadata !151, i32 1051, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!166 = metadata !{i32 786688, metadata !165, metadata !"no", metadata !21, i32 1054, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [no] [line 1054]
!167 = metadata !{i32 786688, metadata !165, metadata !"save", metadata !21, i32 1055, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save] [line 1055]
!168 = metadata !{i32 786688, metadata !165, metadata !"min", metadata !21, i32 1056, metadata !169, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min] [line 1056]
!169 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from size_t]
!170 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regrepeat", metadata !"regrepeat", metadata !"", i32 1090, metadata !171, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !173, i32 1093} ; [ DW_TAG_subprogram ] [line 1090] [local] [def] [scope 1093] [regrepeat]
!171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !84, metadata !133, metadata !25}
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177, metadata !178}
!174 = metadata !{i32 786689, metadata !170, metadata !"ep", metadata !21, i32 16778307, metadata !133, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 1091]
!175 = metadata !{i32 786689, metadata !170, metadata !"node", metadata !21, i32 33555524, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 1092]
!176 = metadata !{i32 786688, metadata !170, metadata !"count", metadata !21, i32 1094, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 1094]
!177 = metadata !{i32 786688, metadata !170, metadata !"scan", metadata !21, i32 1095, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan] [line 1095]
!178 = metadata !{i32 786688, metadata !170, metadata !"ch", metadata !21, i32 1096, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 1096]
!179 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regc", metadata !"regc", metadata !"", i32 737, metadata !180, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !183, i32 740} ; [ DW_TAG_subprogram ] [line 737] [local] [def] [scope 740] [regc]
!180 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!181 = metadata !{null, metadata !182, metadata !26}
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from comp]
!183 = metadata !{metadata !184, metadata !185}
!184 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!185 = metadata !{i32 786689, metadata !179, metadata !"b", metadata !21, i32 33555171, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 739]
!186 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"reg", metadata !"reg", metadata !"", i32 423, metadata !187, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (%struct.comp*, i32, i32*)* @reg, null, null, metadata !190, i32 427} ; [ DW_TAG_subprogram ] [line 423] [local] [def] [scope 427] [reg]
!187 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!188 = metadata !{metadata !25, metadata !182, metadata !24, metadata !189}
!189 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!190 = metadata !{metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198}
!191 = metadata !{i32 786689, metadata !186, metadata !"cp", metadata !21, i32 16777640, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 424]
!192 = metadata !{i32 786689, metadata !186, metadata !"paren", metadata !21, i32 33554857, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [paren] [line 425]
!193 = metadata !{i32 786689, metadata !186, metadata !"flagp", metadata !21, i32 50332074, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flagp] [line 426]
!194 = metadata !{i32 786688, metadata !186, metadata !"ret", metadata !21, i32 428, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 428]
!195 = metadata !{i32 786688, metadata !186, metadata !"br", metadata !21, i32 429, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [br] [line 429]
!196 = metadata !{i32 786688, metadata !186, metadata !"ender", metadata !21, i32 430, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ender] [line 430]
!197 = metadata !{i32 786688, metadata !186, metadata !"parno", metadata !21, i32 431, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [parno] [line 431]
!198 = metadata !{i32 786688, metadata !186, metadata !"flags", metadata !21, i32 432, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 432]
!199 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regoptail", metadata !"regoptail", metadata !"", i32 803, metadata !200, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !202, i32 807} ; [ DW_TAG_subprogram ] [line 803] [local] [def] [scope 807] [regoptail]
!200 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{null, metadata !182, metadata !25, metadata !25}
!202 = metadata !{metadata !203, metadata !204, metadata !205}
!203 = metadata !{i32 786689, metadata !199, metadata !"cp", metadata !21, i32 16778020, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 804]
!204 = metadata !{i32 786689, metadata !199, metadata !"p", metadata !21, i32 33555237, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 805]
!205 = metadata !{i32 786689, metadata !199, metadata !"val", metadata !21, i32 50332454, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 806]
!206 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regtail", metadata !"regtail", metadata !"", i32 778, metadata !200, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (%struct.comp*, i8*, i8*)* @regtail, null, null, metadata !207, i32 782} ; [ DW_TAG_subprogram ] [line 778] [local] [def] [scope 782] [regtail]
!207 = metadata !{metadata !208, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213}
!208 = metadata !{i32 786689, metadata !206, metadata !"cp", metadata !21, i32 16777995, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 779]
!209 = metadata !{i32 786689, metadata !206, metadata !"p", metadata !21, i32 33555212, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 780]
!210 = metadata !{i32 786689, metadata !206, metadata !"val", metadata !21, i32 50332429, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 781]
!211 = metadata !{i32 786688, metadata !206, metadata !"scan", metadata !21, i32 783, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scan] [line 783]
!212 = metadata !{i32 786688, metadata !206, metadata !"temp", metadata !21, i32 784, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 784]
!213 = metadata !{i32 786688, metadata !206, metadata !"offset", metadata !21, i32 785, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [offset] [line 785]
!214 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regbranch", metadata !"regbranch", metadata !"", i32 493, metadata !215, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (%struct.comp*, i32*)* @regbranch, null, null, metadata !217, i32 496} ; [ DW_TAG_subprogram ] [line 493] [local] [def] [scope 496] [regbranch]
!215 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!216 = metadata !{metadata !25, metadata !182, metadata !189}
!217 = metadata !{metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224}
!218 = metadata !{i32 786689, metadata !214, metadata !"cp", metadata !21, i32 16777710, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 494]
!219 = metadata !{i32 786689, metadata !214, metadata !"flagp", metadata !21, i32 33554927, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flagp] [line 495]
!220 = metadata !{i32 786688, metadata !214, metadata !"ret", metadata !21, i32 497, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 497]
!221 = metadata !{i32 786688, metadata !214, metadata !"chain", metadata !21, i32 498, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chain] [line 498]
!222 = metadata !{i32 786688, metadata !214, metadata !"latest", metadata !21, i32 499, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [latest] [line 499]
!223 = metadata !{i32 786688, metadata !214, metadata !"flags", metadata !21, i32 500, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 500]
!224 = metadata !{i32 786688, metadata !214, metadata !"c", metadata !21, i32 501, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 501]
!225 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regpiece", metadata !"regpiece", metadata !"", i32 534, metadata !215, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !226, i32 537} ; [ DW_TAG_subprogram ] [line 534] [local] [def] [scope 537] [regpiece]
!226 = metadata !{metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232}
!227 = metadata !{i32 786689, metadata !225, metadata !"cp", metadata !21, i32 16777751, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 535]
!228 = metadata !{i32 786689, metadata !225, metadata !"flagp", metadata !21, i32 33554968, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flagp] [line 536]
!229 = metadata !{i32 786688, metadata !225, metadata !"ret", metadata !21, i32 538, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 538]
!230 = metadata !{i32 786688, metadata !225, metadata !"op", metadata !21, i32 539, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 539]
!231 = metadata !{i32 786688, metadata !225, metadata !"next", metadata !21, i32 540, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [next] [line 540]
!232 = metadata !{i32 786688, metadata !225, metadata !"flags", metadata !21, i32 541, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 541]
!233 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"reginsert", metadata !"reginsert", metadata !"", i32 753, metadata !234, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !236, i32 757} ; [ DW_TAG_subprogram ] [line 753] [local] [def] [scope 757] [reginsert]
!234 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!235 = metadata !{null, metadata !182, metadata !26, metadata !25}
!236 = metadata !{metadata !237, metadata !238, metadata !239, metadata !240}
!237 = metadata !{i32 786689, metadata !233, metadata !"cp", metadata !21, i32 16777970, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 754]
!238 = metadata !{i32 786689, metadata !233, metadata !"op", metadata !21, i32 33555187, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 755]
!239 = metadata !{i32 786689, metadata !233, metadata !"opnd", metadata !21, i32 50332404, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opnd] [line 756]
!240 = metadata !{i32 786688, metadata !233, metadata !"place", metadata !21, i32 758, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [place] [line 758]
!241 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regatom", metadata !"regatom", metadata !"", i32 603, metadata !215, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, i8* (%struct.comp*, i32*)* @regatom, null, null, metadata !242, i32 606} ; [ DW_TAG_subprogram ] [line 603] [local] [def] [scope 606] [regatom]
!242 = metadata !{metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !250, metadata !251, metadata !252, metadata !254}
!243 = metadata !{i32 786689, metadata !241, metadata !"cp", metadata !21, i32 16777820, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 604]
!244 = metadata !{i32 786689, metadata !241, metadata !"flagp", metadata !21, i32 33555037, metadata !189, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flagp] [line 605]
!245 = metadata !{i32 786688, metadata !241, metadata !"ret", metadata !21, i32 607, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 607]
!246 = metadata !{i32 786688, metadata !241, metadata !"flags", metadata !21, i32 608, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flags] [line 608]
!247 = metadata !{i32 786688, metadata !248, metadata !"range", metadata !21, i32 624, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 624]
!248 = metadata !{i32 786443, metadata !1, metadata !249, i32 623, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!249 = metadata !{i32 786443, metadata !1, metadata !241, i32 612, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!250 = metadata !{i32 786688, metadata !248, metadata !"rangeend", metadata !21, i32 625, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rangeend] [line 625]
!251 = metadata !{i32 786688, metadata !248, metadata !"c", metadata !21, i32 626, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 626]
!252 = metadata !{i32 786688, metadata !253, metadata !"len", metadata !21, i32 684, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 684]
!253 = metadata !{i32 786443, metadata !1, metadata !249, i32 683, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!254 = metadata !{i32 786688, metadata !253, metadata !"ender", metadata !21, i32 685, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ender] [line 685]
!255 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"regnode", metadata !"regnode", metadata !"", i32 712, metadata !256, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !258, i32 715} ; [ DW_TAG_subprogram ] [line 712] [local] [def] [scope 715] [regnode]
!256 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!257 = metadata !{metadata !25, metadata !182, metadata !26}
!258 = metadata !{metadata !259, metadata !260, metadata !261, metadata !262}
!259 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!260 = metadata !{i32 786689, metadata !255, metadata !"op", metadata !21, i32 33555146, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 714]
!261 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!262 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!263 = metadata !{metadata !264}
!264 = metadata !{i32 786484, i32 0, null, metadata !"sqd_parse", metadata !"sqd_parse", metadata !"", metadata !21, i32 41, metadata !38, i32 0, i32 1, [10 x i8*]* @sqd_parse, null} ; [ DW_TAG_variable ] [sqd_parse] [line 41] [def]
!265 = metadata !{i32 92, i32 0, metadata !20, null}
!266 = metadata !{i32 99, i32 0, metadata !20, null}
!267 = metadata !{i32 103, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !20, i32 103, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!269 = metadata !{i32 104, i32 0, metadata !268, null}
!270 = metadata !{metadata !"any pointer", metadata !271}
!271 = metadata !{metadata !"omnipotent char", metadata !272}
!272 = metadata !{metadata !"Simple C/C++ TBAA"}
!273 = metadata !{i32 106, i32 0, metadata !274, null}
!274 = metadata !{i32 786443, metadata !1, metadata !268, i32 105, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!275 = metadata !{i32 107, i32 0, metadata !274, null}
!276 = metadata !{i32 108, i32 0, metadata !274, null}
!277 = metadata !{i32 113, i32 0, metadata !20, null}
!278 = metadata !{i32 114, i32 0, metadata !20, null}
!279 = metadata !{i32 115, i32 0, metadata !20, null}
!280 = metadata !{i32 119, i32 0, metadata !20, null}
!281 = metadata !{i32 120, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !20, i32 120, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!283 = metadata !{i32 121, i32 0, metadata !282, null}
!284 = metadata !{i32 123, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !282, i32 122, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!286 = metadata !{i32 124, i32 0, metadata !285, null}
!287 = metadata !{i32 125, i32 0, metadata !285, null}
!288 = metadata !{i32 126, i32 0, metadata !285, null}
!289 = metadata !{i32 127, i32 0, metadata !285, null}
!290 = metadata !{i32 129, i32 0, metadata !20, null}
!291 = metadata !{i32 130, i32 0, metadata !20, null}
!292 = metadata !{i32 335, i32 0, metadata !58, null}
!293 = metadata !{i32 339, i32 0, metadata !58, null}
!294 = metadata !{i32 340, i32 0, metadata !58, null}
!295 = metadata !{i32 342, i32 0, metadata !58, null}
!296 = metadata !{i32 343, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !58, i32 343, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!298 = metadata !{i32 346, i32 0, metadata !58, null}
!299 = metadata !{i32 347, i32 0, metadata !58, null}
!300 = metadata !{metadata !"int", metadata !271}
!301 = metadata !{i32 348, i32 0, metadata !58, null}
!302 = metadata !{i32 349, i32 0, metadata !58, null}
!303 = metadata !{i32 350, i32 0, metadata !58, null}
!304 = metadata !{i32 351, i32 0, metadata !58, null}
!305 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !306} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!306 = metadata !{i32 352, i32 0, metadata !58, null}
!307 = metadata !{i32 738, i32 0, metadata !179, metadata !306}
!308 = metadata !{i32 744, i32 0, metadata !179, metadata !306}
!309 = metadata !{metadata !"long", metadata !271}
!310 = metadata !{i32 353, i32 0, metadata !58, null}
!311 = metadata !{i32 357, i32 0, metadata !58, null}
!312 = metadata !{i32 358, i32 0, metadata !313, null}
!313 = metadata !{i32 786443, metadata !1, metadata !58, i32 358, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!314 = metadata !{i32 361, i32 0, metadata !58, null}
!315 = metadata !{i32 362, i32 0, metadata !58, null}
!316 = metadata !{i32 363, i32 0, metadata !317, null}
!317 = metadata !{i32 786443, metadata !1, metadata !58, i32 363, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!318 = metadata !{i32 366, i32 0, metadata !58, null}
!319 = metadata !{i32 367, i32 0, metadata !58, null}
!320 = metadata !{i32 368, i32 0, metadata !58, null}
!321 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !322} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!322 = metadata !{i32 369, i32 0, metadata !58, null}
!323 = metadata !{i32 738, i32 0, metadata !179, metadata !322}
!324 = metadata !{i32 741, i32 0, metadata !179, metadata !322}
!325 = metadata !{i32 742, i32 0, metadata !179, metadata !322}
!326 = metadata !{i32 744, i32 0, metadata !179, metadata !322}
!327 = metadata !{i32 370, i32 0, metadata !58, null}
!328 = metadata !{i32 374, i32 0, metadata !58, null}
!329 = metadata !{i32 375, i32 0, metadata !58, null}
!330 = metadata !{i32 376, i32 0, metadata !58, null}
!331 = metadata !{i32 377, i32 0, metadata !58, null}
!332 = metadata !{i32 378, i32 0, metadata !58, null}
!333 = metadata !{i32 379, i32 0, metadata !58, null}
!334 = metadata !{i32 380, i32 0, metadata !82, null}
!335 = metadata !{i32 383, i32 0, metadata !82, null}
!336 = metadata !{i32 384, i32 0, metadata !82, null}
!337 = metadata !{i32 386, i32 0, metadata !82, null}
!338 = metadata !{i32 396, i32 0, metadata !82, null}
!339 = metadata !{i32 401, i32 0, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !81, i32 400, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!341 = metadata !{i32 402, i32 0, metadata !342, null}
!342 = metadata !{i32 786443, metadata !1, metadata !340, i32 401, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!343 = metadata !{i32 403, i32 0, metadata !342, null}
!344 = metadata !{i32 400, i32 0, metadata !340, null}
!345 = metadata !{i32 405, i32 0, metadata !81, null}
!346 = metadata !{i32 406, i32 0, metadata !81, null}
!347 = metadata !{i32 407, i32 0, metadata !81, null}
!348 = metadata !{i32 411, i32 0, metadata !58, null}
!349 = metadata !{i32 846, i32 0, metadata !86, null}
!350 = metadata !{i32 847, i32 0, metadata !86, null}
!351 = metadata !{i32 849, i32 0, metadata !86, null}
!352 = metadata !{i32 851, i32 0, metadata !86, null}
!353 = metadata !{i32 854, i32 0, metadata !86, null}
!354 = metadata !{i32 855, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !86, i32 854, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!356 = metadata !{i32 860, i32 0, metadata !86, null}
!357 = metadata !{i32 861, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !86, i32 860, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!359 = metadata !{i32 866, i32 0, metadata !86, null}
!360 = metadata !{i32 870, i32 0, metadata !86, null}
!361 = metadata !{i32 871, i32 0, metadata !86, null}
!362 = metadata !{i32 872, i32 0, metadata !86, null}
!363 = metadata !{i32 875, i32 0, metadata !86, null}
!364 = metadata !{i32 876, i32 0, metadata !86, null}
!365 = metadata !{i32 879, i32 0, metadata !86, null}
!366 = metadata !{i32 881, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !368, i32 881, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!368 = metadata !{i32 786443, metadata !1, metadata !86, i32 879, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!369 = metadata !{i32 887, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !371, i32 887, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!371 = metadata !{i32 786443, metadata !1, metadata !86, i32 885, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!372 = metadata !{i32 882, i32 0, metadata !367, null}
!373 = metadata !{i32 888, i32 0, metadata !370, null}
!374 = metadata !{i32 893, i32 0, metadata !86, null}
!375 = metadata !{i32 147, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !53, i32 147, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!377 = metadata !{i32 148, i32 0, metadata !376, null}
!378 = metadata !{i32 149, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !376, i32 148, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!380 = metadata !{i32 150, i32 0, metadata !379, null}
!381 = metadata !{i32 151, i32 0, metadata !379, null}
!382 = metadata !{i32 152, i32 0, metadata !53, null}
!383 = metadata !{i32 1323, i32 0, metadata !118, null}
!384 = metadata !{i32 1325, i32 0, metadata !118, null}
!385 = metadata !{i32 1326, i32 0, metadata !118, null}
!386 = metadata !{i32 424, i32 0, metadata !186, null}
!387 = metadata !{i32 425, i32 0, metadata !186, null}
!388 = metadata !{i32 426, i32 0, metadata !186, null}
!389 = metadata !{i8* null}
!390 = metadata !{i32 428, i32 0, metadata !186, null}
!391 = metadata !{i32 431, i32 0, metadata !186, null}
!392 = metadata !{i32 432, i32 0, metadata !186, null}
!393 = metadata !{i32 434, i32 0, metadata !186, null}
!394 = metadata !{i32 436, i32 0, metadata !186, null}
!395 = metadata !{i32 438, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !186, i32 436, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!397 = metadata !{i32 439, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !396, i32 439, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!399 = metadata !{i32 440, i32 0, metadata !396, null}
!400 = metadata !{i32 441, i32 0, metadata !396, null}
!401 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !402} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!402 = metadata !{i32 442, i32 0, metadata !396, null}
!403 = metadata !{i32 713, i32 0, metadata !255, metadata !402}
!404 = metadata !{i32 716, i32 0, metadata !255, metadata !402}
!405 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!406 = metadata !{i32 719, i32 0, metadata !255, metadata !402}
!407 = metadata !{i32 720, i32 0, metadata !408, metadata !402}
!408 = metadata !{i32 786443, metadata !1, metadata !255, i32 719, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!409 = metadata !{i32 721, i32 0, metadata !408, metadata !402}
!410 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !402} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!411 = metadata !{i32 724, i32 0, metadata !255, metadata !402}
!412 = metadata !{i32 725, i32 0, metadata !255, metadata !402}
!413 = metadata !{i32 726, i32 0, metadata !255, metadata !402}
!414 = metadata !{i32 727, i32 0, metadata !255, metadata !402}
!415 = metadata !{i32 728, i32 0, metadata !255, metadata !402}
!416 = metadata !{i32 730, i32 0, metadata !255, metadata !402}
!417 = metadata !{i32 443, i32 0, metadata !396, null}
!418 = metadata !{i32 446, i32 0, metadata !186, null}
!419 = metadata !{i32 447, i32 0, metadata !186, null}
!420 = metadata !{i32 449, i32 0, metadata !186, null}
!421 = metadata !{i32 450, i32 0, metadata !186, null}
!422 = metadata !{i32 453, i32 0, metadata !186, null}
!423 = metadata !{i32 454, i32 0, metadata !186, null}
!424 = metadata !{i32 462, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !186, i32 455, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!426 = metadata !{i32 455, i32 0, metadata !186, null}
!427 = metadata !{i32 456, i32 0, metadata !425, null}
!428 = metadata !{i32 457, i32 0, metadata !425, null}
!429 = metadata !{i32 458, i32 0, metadata !425, null}
!430 = metadata !{i32 460, i32 0, metadata !425, null}
!431 = metadata !{i32 461, i32 0, metadata !425, null}
!432 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !433} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!433 = metadata !{i32 466, i32 0, metadata !186, null}
!434 = metadata !{i32 713, i32 0, metadata !255, metadata !433}
!435 = metadata !{i32 716, i32 0, metadata !255, metadata !433}
!436 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !433} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!437 = metadata !{i32 719, i32 0, metadata !255, metadata !433}
!438 = metadata !{i32 720, i32 0, metadata !408, metadata !433}
!439 = metadata !{i32 721, i32 0, metadata !408, metadata !433}
!440 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !433} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!441 = metadata !{i32 724, i32 0, metadata !255, metadata !433}
!442 = metadata !{i32 725, i32 0, metadata !255, metadata !433}
!443 = metadata !{i32 726, i32 0, metadata !255, metadata !433}
!444 = metadata !{i32 727, i32 0, metadata !255, metadata !433}
!445 = metadata !{i32 728, i32 0, metadata !255, metadata !433}
!446 = metadata !{i32 730, i32 0, metadata !255, metadata !433}
!447 = metadata !{i32 467, i32 0, metadata !186, null}
!448 = metadata !{i32 470, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !186, i32 470, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!450 = metadata !{i32 786689, metadata !199, metadata !"cp", metadata !21, i32 16778020, metadata !182, i32 0, metadata !451} ; [ DW_TAG_arg_variable ] [cp] [line 804]
!451 = metadata !{i32 471, i32 0, metadata !449, null}
!452 = metadata !{i32 804, i32 0, metadata !199, metadata !451}
!453 = metadata !{i32 786689, metadata !199, metadata !"p", metadata !21, i32 33555237, metadata !25, i32 0, metadata !451} ; [ DW_TAG_arg_variable ] [p] [line 805]
!454 = metadata !{i32 805, i32 0, metadata !199, metadata !451}
!455 = metadata !{i32 786689, metadata !199, metadata !"val", metadata !21, i32 50332454, metadata !25, i32 0, metadata !451} ; [ DW_TAG_arg_variable ] [val] [line 806]
!456 = metadata !{i32 806, i32 0, metadata !199, metadata !451}
!457 = metadata !{i32 809, i32 0, metadata !199, metadata !451}
!458 = metadata !{i32 811, i32 0, metadata !199, metadata !451}
!459 = metadata !{i32 474, i32 0, metadata !186, null}
!460 = metadata !{i32 475, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !462, i32 475, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!462 = metadata !{i32 786443, metadata !1, metadata !186, i32 474, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!463 = metadata !{i32 476, i32 0, metadata !186, null}
!464 = metadata !{i32 478, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !466, i32 478, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!466 = metadata !{i32 786443, metadata !1, metadata !467, i32 477, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!467 = metadata !{i32 786443, metadata !1, metadata !186, i32 476, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!468 = metadata !{i32 480, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !1, metadata !467, i32 480, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!470 = metadata !{i32 485, i32 0, metadata !186, null}
!471 = metadata !{i32 1128, i32 0, metadata !123, null}
!472 = metadata !{i32 1130, i32 0, metadata !123, null}
!473 = metadata !{i32 1132, i32 0, metadata !123, null}
!474 = metadata !{i32 1135, i32 0, metadata !123, null}
!475 = metadata !{i32 1136, i32 0, metadata !123, null}
!476 = metadata !{i32 900, i32 0, metadata !130, null}
!477 = metadata !{i32 901, i32 0, metadata !130, null}
!478 = metadata !{i32 902, i32 0, metadata !130, null}
!479 = metadata !{i32 908, i32 0, metadata !130, null}
!480 = metadata !{i32 910, i32 0, metadata !130, null}
!481 = metadata !{i32 911, i32 0, metadata !130, null}
!482 = metadata !{i32 10}
!483 = metadata !{i32 912, i32 0, metadata !484, null}
!484 = metadata !{i32 786443, metadata !1, metadata !130, i32 912, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!485 = metadata !{i32 913, i32 0, metadata !486, null}
!486 = metadata !{i32 786443, metadata !1, metadata !484, i32 912, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!487 = metadata !{i32 914, i32 0, metadata !486, null}
!488 = metadata !{i32 916, i32 0, metadata !130, null}
!489 = metadata !{i32 917, i32 0, metadata !490, null}
!490 = metadata !{i32 786443, metadata !1, metadata !130, i32 916, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!491 = metadata !{i32 918, i32 0, metadata !490, null}
!492 = metadata !{i32 919, i32 0, metadata !490, null}
!493 = metadata !{i32 921, i32 0, metadata !130, null}
!494 = metadata !{i32 1274, i32 0, metadata !102, null}
!495 = metadata !{i32 1275, i32 0, metadata !102, null}
!496 = metadata !{i32 1276, i32 0, metadata !102, null}
!497 = metadata !{i32 1278, i32 0, metadata !102, null}
!498 = metadata !{i32 1279, i32 0, metadata !102, null}
!499 = metadata !{i32 1280, i32 0, metadata !102, null}
!500 = metadata !{i32 1285, i32 0, metadata !102, null}
!501 = metadata !{i32 1286, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !102, i32 1285, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!503 = metadata !{i32 1289, i32 0, metadata !102, null}
!504 = metadata !{i32 1290, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !102, i32 1289, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!506 = metadata !{i32 1294, i32 0, metadata !102, null}
!507 = metadata !{i32 1297, i32 0, metadata !508, null}
!508 = metadata !{i32 786443, metadata !1, metadata !102, i32 1294, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!509 = metadata !{metadata !"short", metadata !271}
!510 = metadata !{i32 1298, i32 0, metadata !508, null}
!511 = metadata !{i32 1302, i32 0, metadata !508, null}
!512 = metadata !{i32 1303, i32 0, metadata !513, null}
!513 = metadata !{i32 786443, metadata !1, metadata !508, i32 1302, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!514 = metadata !{i32 1304, i32 0, metadata !513, null}
!515 = metadata !{i32 1305, i32 0, metadata !513, null}
!516 = metadata !{i32 1306, i32 0, metadata !513, null}
!517 = metadata !{i32 1306, i32 0, metadata !508, null}
!518 = metadata !{i32 1308, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !508, i32 1307, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!520 = metadata !{i32 1309, i32 0, metadata !519, null}
!521 = metadata !{i32 1310, i32 0, metadata !519, null}
!522 = metadata !{i32 1311, i32 0, metadata !519, null}
!523 = metadata !{i32 1312, i32 0, metadata !524, null}
!524 = metadata !{i32 786443, metadata !1, metadata !519, i32 1311, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!525 = metadata !{i32 1317, i32 0, metadata !102, null}
!526 = metadata !{i32 936, i32 0, metadata !141, null}
!527 = metadata !{i32 937, i32 0, metadata !141, null}
!528 = metadata !{i32 946, i32 0, metadata !153, null}
!529 = metadata !{i32 955, i32 0, metadata !151, null}
!530 = metadata !{i32 951, i32 0, metadata !152, null}
!531 = metadata !{i32 953, i32 0, metadata !152, null}
!532 = metadata !{i32 959, i32 0, metadata !151, null}
!533 = metadata !{i32 963, i32 0, metadata !151, null}
!534 = metadata !{i32 965, i32 0, metadata !151, null}
!535 = metadata !{i32 966, i32 0, metadata !151, null}
!536 = metadata !{i32 969, i32 0, metadata !150, null}
!537 = metadata !{i32 972, i32 0, metadata !150, null}
!538 = metadata !{i32 974, i32 0, metadata !150, null}
!539 = metadata !{i32 975, i32 0, metadata !150, null}
!540 = metadata !{i32 977, i32 0, metadata !150, null}
!541 = metadata !{i32 978, i32 0, metadata !150, null}
!542 = metadata !{i32 981, i32 0, metadata !151, null}
!543 = metadata !{i32 982, i32 0, metadata !151, null}
!544 = metadata !{i32 984, i32 0, metadata !151, null}
!545 = metadata !{i32 985, i32 0, metadata !151, null}
!546 = metadata !{i32 987, i32 0, metadata !151, null}
!547 = metadata !{i32 988, i32 0, metadata !151, null}
!548 = metadata !{i32 990, i32 0, metadata !151, null}
!549 = metadata !{i32 991, i32 0, metadata !151, null}
!550 = metadata !{i32 1000, i32 0, metadata !157, null}
!551 = metadata !{i32 1002, i32 0, metadata !157, null}
!552 = metadata !{i32 999, i32 0, metadata !157, null}
!553 = metadata !{i32 1008, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !157, i32 1002, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!555 = metadata !{i32 1009, i32 0, metadata !554, null}
!556 = metadata !{i32 1019, i32 0, metadata !160, null}
!557 = metadata !{i32 1021, i32 0, metadata !160, null}
!558 = metadata !{i32 1018, i32 0, metadata !160, null}
!559 = metadata !{i32 1027, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !160, i32 1021, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!561 = metadata !{i32 1028, i32 0, metadata !560, null}
!562 = metadata !{i32 1035, i32 0, metadata !163, null}
!563 = metadata !{i32 1037, i32 0, metadata !163, null}
!564 = metadata !{i32 1040, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !163, i32 1039, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!566 = metadata !{i32 1038, i32 0, metadata !163, null}
!567 = metadata !{i32 1041, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !1, metadata !565, i32 1040, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!569 = metadata !{i32 1043, i32 0, metadata !568, null}
!570 = metadata !{i32 1044, i32 0, metadata !568, null}
!571 = metadata !{i32 1053, i32 0, metadata !165, null}
!572 = metadata !{i32 1055, i32 0, metadata !165, null}
!573 = metadata !{i32 1056, i32 0, metadata !165, null}
!574 = metadata !{i32 1058, i32 0, metadata !575, null}
!575 = metadata !{i32 786443, metadata !1, metadata !165, i32 1058, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!576 = metadata !{i32 786689, metadata !170, metadata !"ep", metadata !21, i32 16778307, metadata !133, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [ep] [line 1091]
!577 = metadata !{i32 1091, i32 0, metadata !170, metadata !574}
!578 = metadata !{i32 786689, metadata !170, metadata !"node", metadata !21, i32 33555524, metadata !25, i32 0, metadata !574} ; [ DW_TAG_arg_variable ] [node] [line 1092]
!579 = metadata !{i32 1092, i32 0, metadata !170, metadata !574}
!580 = metadata !{i32 1098, i32 0, metadata !170, metadata !574}
!581 = metadata !{i32 1100, i32 0, metadata !582, metadata !574}
!582 = metadata !{i32 786443, metadata !1, metadata !170, i32 1098, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!583 = metadata !{i32 1103, i32 0, metadata !582, metadata !574}
!584 = metadata !{i32 786688, metadata !170, metadata !"ch", metadata !21, i32 1096, metadata !26, i32 0, metadata !574} ; [ DW_TAG_auto_variable ] [ch] [line 1096]
!585 = metadata !{i64 0}
!586 = metadata !{i32 786688, metadata !170, metadata !"count", metadata !21, i32 1094, metadata !84, i32 0, metadata !574} ; [ DW_TAG_auto_variable ] [count] [line 1094]
!587 = metadata !{i32 1104, i32 0, metadata !582, metadata !574}
!588 = metadata !{i32 786688, metadata !170, metadata !"scan", metadata !21, i32 1095, metadata !25, i32 0, metadata !574} ; [ DW_TAG_auto_variable ] [scan] [line 1095]
!589 = metadata !{i32 1105, i32 0, metadata !590, metadata !574}
!590 = metadata !{i32 786443, metadata !1, metadata !582, i32 1105, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!591 = metadata !{i32 1106, i32 0, metadata !590, metadata !574}
!592 = metadata !{i32 1110, i32 0, metadata !582, metadata !574}
!593 = metadata !{i32 1113, i32 0, metadata !582, metadata !574}
!594 = metadata !{i32 1116, i32 0, metadata !582, metadata !574}
!595 = metadata !{i32 1061, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !575, i32 1058, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!597 = metadata !{i32 1059, i32 0, metadata !596, null}
!598 = metadata !{i32 1062, i32 0, metadata !596, null}
!599 = metadata !{i32 1072, i32 0, metadata !151, null}
!600 = metadata !{i32 1082, i32 0, metadata !141, null}
!601 = metadata !{i32 1083, i32 0, metadata !141, null}
!602 = metadata !{i32 494, i32 0, metadata !214, null}
!603 = metadata !{i32 495, i32 0, metadata !214, null}
!604 = metadata !{i32 503, i32 0, metadata !214, null}
!605 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !606} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!606 = metadata !{i32 505, i32 0, metadata !214, null}
!607 = metadata !{i32 713, i32 0, metadata !255, metadata !606}
!608 = metadata !{i32 716, i32 0, metadata !255, metadata !606}
!609 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !606} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!610 = metadata !{i32 719, i32 0, metadata !255, metadata !606}
!611 = metadata !{i32 720, i32 0, metadata !408, metadata !606}
!612 = metadata !{i32 721, i32 0, metadata !408, metadata !606}
!613 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !606} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!614 = metadata !{i32 724, i32 0, metadata !255, metadata !606}
!615 = metadata !{i32 725, i32 0, metadata !255, metadata !606}
!616 = metadata !{i32 726, i32 0, metadata !255, metadata !606}
!617 = metadata !{i32 727, i32 0, metadata !255, metadata !606}
!618 = metadata !{i32 728, i32 0, metadata !255, metadata !606}
!619 = metadata !{i32 761, i32 0, metadata !620, metadata !621}
!620 = metadata !{i32 786443, metadata !1, metadata !233, i32 760, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!621 = metadata !{i32 581, i32 0, metadata !622, metadata !623}
!622 = metadata !{i32 786443, metadata !1, metadata !225, i32 579, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!623 = metadata !{i32 508, i32 0, metadata !624, null}
!624 = metadata !{i32 786443, metadata !1, metadata !214, i32 507, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!625 = metadata !{i32 730, i32 0, metadata !255, metadata !606}
!626 = metadata !{i32 507, i32 0, metadata !214, null}
!627 = metadata !{i32 535, i32 0, metadata !225, metadata !623}
!628 = metadata !{i32 786689, metadata !225, metadata !"cp", metadata !21, i32 16777751, metadata !182, i32 0, metadata !623} ; [ DW_TAG_arg_variable ] [cp] [line 535]
!629 = metadata !{i32 541, i32 0, metadata !225, metadata !623}
!630 = metadata !{i32 543, i32 0, metadata !225, metadata !623}
!631 = metadata !{i32 786688, metadata !225, metadata !"ret", metadata !21, i32 538, metadata !25, i32 0, metadata !623} ; [ DW_TAG_auto_variable ] [ret] [line 538]
!632 = metadata !{i32 544, i32 0, metadata !225, metadata !623}
!633 = metadata !{i32 547, i32 0, metadata !225, metadata !623}
!634 = metadata !{i32 786688, metadata !225, metadata !"op", metadata !21, i32 539, metadata !26, i32 0, metadata !623} ; [ DW_TAG_auto_variable ] [op] [line 539]
!635 = metadata !{i32 548, i32 0, metadata !225, metadata !623}
!636 = metadata !{i32 786688, metadata !225, metadata !"flags", metadata !21, i32 541, metadata !24, i32 0, metadata !623} ; [ DW_TAG_auto_variable ] [flags] [line 541]
!637 = metadata !{i32 549, i32 0, metadata !638, metadata !623}
!638 = metadata !{i32 786443, metadata !1, metadata !225, i32 548, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!639 = metadata !{i32 786689, metadata !225, metadata !"flagp", metadata !21, i32 33554968, metadata !189, i32 0, metadata !623} ; [ DW_TAG_arg_variable ] [flagp] [line 536]
!640 = metadata !{i32 536, i32 0, metadata !225, metadata !623}
!641 = metadata !{i32 511, i32 0, metadata !624, null}
!642 = metadata !{i32 513, i32 0, metadata !624, null}
!643 = metadata !{i32 550, i32 0, metadata !638, metadata !623}
!644 = metadata !{i32 553, i32 0, metadata !225, metadata !623}
!645 = metadata !{i32 554, i32 0, metadata !646, metadata !623}
!646 = metadata !{i32 786443, metadata !1, metadata !225, i32 554, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!647 = metadata !{i32 555, i32 0, metadata !225, metadata !623}
!648 = metadata !{i32 4}
!649 = metadata !{i32 556, i32 0, metadata !650, metadata !623}
!650 = metadata !{i32 786443, metadata !1, metadata !225, i32 555, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!651 = metadata !{i32 5}
!652 = metadata !{i32 557, i32 0, metadata !650, metadata !623}
!653 = metadata !{i32 558, i32 0, metadata !650, metadata !623}
!654 = metadata !{i32 561, i32 0, metadata !225, metadata !623}
!655 = metadata !{i32 760, i32 0, metadata !233, metadata !656}
!656 = metadata !{i32 565, i32 0, metadata !657, metadata !623}
!657 = metadata !{i32 786443, metadata !1, metadata !225, i32 563, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!658 = metadata !{i32 786689, metadata !233, metadata !"cp", metadata !21, i32 16777970, metadata !182, i32 0, metadata !659} ; [ DW_TAG_arg_variable ] [cp] [line 754]
!659 = metadata !{i32 562, i32 0, metadata !225, metadata !623}
!660 = metadata !{i32 754, i32 0, metadata !233, metadata !659}
!661 = metadata !{i32 786689, metadata !233, metadata !"opnd", metadata !21, i32 50332404, metadata !25, i32 0, metadata !659} ; [ DW_TAG_arg_variable ] [opnd] [line 756]
!662 = metadata !{i32 756, i32 0, metadata !233, metadata !659}
!663 = metadata !{i32 760, i32 0, metadata !233, metadata !659}
!664 = metadata !{i32 761, i32 0, metadata !620, metadata !659}
!665 = metadata !{i32 762, i32 0, metadata !620, metadata !659}
!666 = metadata !{i32 765, i32 0, metadata !233, metadata !659}
!667 = metadata !{i32 766, i32 0, metadata !233, metadata !659}
!668 = metadata !{i32 786688, metadata !233, metadata !"place", metadata !21, i32 758, metadata !25, i32 0, metadata !659} ; [ DW_TAG_auto_variable ] [place] [line 758]
!669 = metadata !{i32 768, i32 0, metadata !233, metadata !659}
!670 = metadata !{i32 769, i32 0, metadata !233, metadata !659}
!671 = metadata !{i32 770, i32 0, metadata !233, metadata !659}
!672 = metadata !{i32 771, i32 0, metadata !233, metadata !659}
!673 = metadata !{i32 786689, metadata !233, metadata !"cp", metadata !21, i32 16777970, metadata !182, i32 0, metadata !656} ; [ DW_TAG_arg_variable ] [cp] [line 754]
!674 = metadata !{i32 754, i32 0, metadata !233, metadata !656}
!675 = metadata !{i32 786689, metadata !233, metadata !"opnd", metadata !21, i32 50332404, metadata !25, i32 0, metadata !656} ; [ DW_TAG_arg_variable ] [opnd] [line 756]
!676 = metadata !{i32 756, i32 0, metadata !233, metadata !656}
!677 = metadata !{i32 761, i32 0, metadata !620, metadata !656}
!678 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !679} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!679 = metadata !{i32 566, i32 0, metadata !657, metadata !623}
!680 = metadata !{i32 713, i32 0, metadata !255, metadata !679}
!681 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !679} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!682 = metadata !{i32 716, i32 0, metadata !255, metadata !679}
!683 = metadata !{i32 719, i32 0, metadata !255, metadata !679}
!684 = metadata !{i32 765, i32 0, metadata !233, metadata !656}
!685 = metadata !{i32 766, i32 0, metadata !233, metadata !656}
!686 = metadata !{i32 786688, metadata !233, metadata !"place", metadata !21, i32 758, metadata !25, i32 0, metadata !656} ; [ DW_TAG_auto_variable ] [place] [line 758]
!687 = metadata !{i32 768, i32 0, metadata !233, metadata !656}
!688 = metadata !{i32 769, i32 0, metadata !233, metadata !656}
!689 = metadata !{i32 770, i32 0, metadata !233, metadata !656}
!690 = metadata !{i32 771, i32 0, metadata !233, metadata !656}
!691 = metadata !{i32 720, i32 0, metadata !408, metadata !679}
!692 = metadata !{i32 786689, metadata !199, metadata !"cp", metadata !21, i32 16778020, metadata !182, i32 0, metadata !679} ; [ DW_TAG_arg_variable ] [cp] [line 804]
!693 = metadata !{i32 804, i32 0, metadata !199, metadata !679}
!694 = metadata !{i32 786689, metadata !199, metadata !"p", metadata !21, i32 33555237, metadata !25, i32 0, metadata !679} ; [ DW_TAG_arg_variable ] [p] [line 805]
!695 = metadata !{i32 805, i32 0, metadata !199, metadata !679}
!696 = metadata !{i32 786689, metadata !199, metadata !"val", metadata !21, i32 50332454, metadata !25, i32 0, metadata !679} ; [ DW_TAG_arg_variable ] [val] [line 806]
!697 = metadata !{i32 806, i32 0, metadata !199, metadata !679}
!698 = metadata !{i32 809, i32 0, metadata !199, metadata !679}
!699 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !679} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!700 = metadata !{i32 724, i32 0, metadata !255, metadata !679}
!701 = metadata !{i32 725, i32 0, metadata !255, metadata !679}
!702 = metadata !{i32 726, i32 0, metadata !255, metadata !679}
!703 = metadata !{i32 727, i32 0, metadata !255, metadata !679}
!704 = metadata !{i32 728, i32 0, metadata !255, metadata !679}
!705 = metadata !{i32 811, i32 0, metadata !199, metadata !679}
!706 = metadata !{i32 809, i32 0, metadata !199, metadata !707}
!707 = metadata !{i32 567, i32 0, metadata !657, metadata !623}
!708 = metadata !{i32 786689, metadata !199, metadata !"cp", metadata !21, i32 16778020, metadata !182, i32 0, metadata !707} ; [ DW_TAG_arg_variable ] [cp] [line 804]
!709 = metadata !{i32 804, i32 0, metadata !199, metadata !707}
!710 = metadata !{i32 786689, metadata !199, metadata !"p", metadata !21, i32 33555237, metadata !25, i32 0, metadata !707} ; [ DW_TAG_arg_variable ] [p] [line 805]
!711 = metadata !{i32 805, i32 0, metadata !199, metadata !707}
!712 = metadata !{i32 786689, metadata !199, metadata !"val", metadata !21, i32 50332454, metadata !25, i32 0, metadata !707} ; [ DW_TAG_arg_variable ] [val] [line 806]
!713 = metadata !{i32 806, i32 0, metadata !199, metadata !707}
!714 = metadata !{i32 811, i32 0, metadata !199, metadata !707}
!715 = metadata !{i32 716, i32 0, metadata !255, metadata !716}
!716 = metadata !{i32 568, i32 0, metadata !657, metadata !623}
!717 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !716} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!718 = metadata !{i32 713, i32 0, metadata !255, metadata !716}
!719 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !716} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!720 = metadata !{i32 719, i32 0, metadata !255, metadata !716}
!721 = metadata !{i32 720, i32 0, metadata !408, metadata !716}
!722 = metadata !{i32 721, i32 0, metadata !408, metadata !716}
!723 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !716} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!724 = metadata !{i32 724, i32 0, metadata !255, metadata !716}
!725 = metadata !{i32 725, i32 0, metadata !255, metadata !716}
!726 = metadata !{i32 726, i32 0, metadata !255, metadata !716}
!727 = metadata !{i32 727, i32 0, metadata !255, metadata !716}
!728 = metadata !{i32 728, i32 0, metadata !255, metadata !716}
!729 = metadata !{i32 730, i32 0, metadata !255, metadata !716}
!730 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !731} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!731 = metadata !{i32 569, i32 0, metadata !657, metadata !623}
!732 = metadata !{i32 713, i32 0, metadata !255, metadata !731}
!733 = metadata !{i32 716, i32 0, metadata !255, metadata !731}
!734 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !731} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!735 = metadata !{i32 719, i32 0, metadata !255, metadata !731}
!736 = metadata !{i32 720, i32 0, metadata !408, metadata !731}
!737 = metadata !{i32 721, i32 0, metadata !408, metadata !731}
!738 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !731} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!739 = metadata !{i32 724, i32 0, metadata !255, metadata !731}
!740 = metadata !{i32 725, i32 0, metadata !255, metadata !731}
!741 = metadata !{i32 726, i32 0, metadata !255, metadata !731}
!742 = metadata !{i32 727, i32 0, metadata !255, metadata !731}
!743 = metadata !{i32 728, i32 0, metadata !255, metadata !731}
!744 = metadata !{i32 730, i32 0, metadata !255, metadata !731}
!745 = metadata !{i32 570, i32 0, metadata !657, metadata !623}
!746 = metadata !{i32 570, i32 0, metadata !225, metadata !623}
!747 = metadata !{i32 716, i32 0, metadata !255, metadata !748}
!748 = metadata !{i32 574, i32 0, metadata !749, metadata !623}
!749 = metadata !{i32 786443, metadata !1, metadata !225, i32 572, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!750 = metadata !{i32 719, i32 0, metadata !255, metadata !748}
!751 = metadata !{i32 786689, metadata !233, metadata !"cp", metadata !21, i32 16777970, metadata !182, i32 0, metadata !752} ; [ DW_TAG_arg_variable ] [cp] [line 754]
!752 = metadata !{i32 571, i32 0, metadata !225, metadata !623}
!753 = metadata !{i32 754, i32 0, metadata !233, metadata !752}
!754 = metadata !{i32 786689, metadata !233, metadata !"opnd", metadata !21, i32 50332404, metadata !25, i32 0, metadata !752} ; [ DW_TAG_arg_variable ] [opnd] [line 756]
!755 = metadata !{i32 756, i32 0, metadata !233, metadata !752}
!756 = metadata !{i32 760, i32 0, metadata !233, metadata !752}
!757 = metadata !{i32 761, i32 0, metadata !620, metadata !752}
!758 = metadata !{i32 762, i32 0, metadata !620, metadata !752}
!759 = metadata !{i32 765, i32 0, metadata !233, metadata !752}
!760 = metadata !{i32 766, i32 0, metadata !233, metadata !752}
!761 = metadata !{i32 786688, metadata !233, metadata !"place", metadata !21, i32 758, metadata !25, i32 0, metadata !752} ; [ DW_TAG_auto_variable ] [place] [line 758]
!762 = metadata !{i32 768, i32 0, metadata !233, metadata !752}
!763 = metadata !{i32 769, i32 0, metadata !233, metadata !752}
!764 = metadata !{i32 770, i32 0, metadata !233, metadata !752}
!765 = metadata !{i32 771, i32 0, metadata !233, metadata !752}
!766 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !748} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!767 = metadata !{i32 713, i32 0, metadata !255, metadata !748}
!768 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !748} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!769 = metadata !{i32 720, i32 0, metadata !408, metadata !748}
!770 = metadata !{i32 721, i32 0, metadata !408, metadata !748}
!771 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !748} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!772 = metadata !{i32 724, i32 0, metadata !255, metadata !748}
!773 = metadata !{i32 725, i32 0, metadata !255, metadata !748}
!774 = metadata !{i32 726, i32 0, metadata !255, metadata !748}
!775 = metadata !{i32 727, i32 0, metadata !255, metadata !748}
!776 = metadata !{i32 728, i32 0, metadata !255, metadata !748}
!777 = metadata !{i32 730, i32 0, metadata !255, metadata !748}
!778 = metadata !{i32 786688, metadata !225, metadata !"next", metadata !21, i32 540, metadata !25, i32 0, metadata !623} ; [ DW_TAG_auto_variable ] [next] [line 540]
!779 = metadata !{i32 575, i32 0, metadata !749, metadata !623}
!780 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !781} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!781 = metadata !{i32 576, i32 0, metadata !749, metadata !623}
!782 = metadata !{i32 713, i32 0, metadata !255, metadata !781}
!783 = metadata !{i32 716, i32 0, metadata !255, metadata !781}
!784 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !781} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!785 = metadata !{i32 719, i32 0, metadata !255, metadata !781}
!786 = metadata !{i32 720, i32 0, metadata !408, metadata !781}
!787 = metadata !{i32 721, i32 0, metadata !408, metadata !781}
!788 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !781} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!789 = metadata !{i32 724, i32 0, metadata !255, metadata !781}
!790 = metadata !{i32 725, i32 0, metadata !255, metadata !781}
!791 = metadata !{i32 726, i32 0, metadata !255, metadata !781}
!792 = metadata !{i32 727, i32 0, metadata !255, metadata !781}
!793 = metadata !{i32 728, i32 0, metadata !255, metadata !781}
!794 = metadata !{i32 730, i32 0, metadata !255, metadata !781}
!795 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !796} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!796 = metadata !{i32 577, i32 0, metadata !749, metadata !623}
!797 = metadata !{i32 713, i32 0, metadata !255, metadata !796}
!798 = metadata !{i32 716, i32 0, metadata !255, metadata !796}
!799 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !796} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!800 = metadata !{i32 719, i32 0, metadata !255, metadata !796}
!801 = metadata !{i32 720, i32 0, metadata !408, metadata !796}
!802 = metadata !{i32 721, i32 0, metadata !408, metadata !796}
!803 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !796} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!804 = metadata !{i32 724, i32 0, metadata !255, metadata !796}
!805 = metadata !{i32 725, i32 0, metadata !255, metadata !796}
!806 = metadata !{i32 726, i32 0, metadata !255, metadata !796}
!807 = metadata !{i32 727, i32 0, metadata !255, metadata !796}
!808 = metadata !{i32 728, i32 0, metadata !255, metadata !796}
!809 = metadata !{i32 730, i32 0, metadata !255, metadata !796}
!810 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !811} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!811 = metadata !{i32 578, i32 0, metadata !749, metadata !623}
!812 = metadata !{i32 713, i32 0, metadata !255, metadata !811}
!813 = metadata !{i32 716, i32 0, metadata !255, metadata !811}
!814 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !811} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!815 = metadata !{i32 719, i32 0, metadata !255, metadata !811}
!816 = metadata !{i32 720, i32 0, metadata !408, metadata !811}
!817 = metadata !{i32 721, i32 0, metadata !408, metadata !811}
!818 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !811} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!819 = metadata !{i32 724, i32 0, metadata !255, metadata !811}
!820 = metadata !{i32 725, i32 0, metadata !255, metadata !811}
!821 = metadata !{i32 726, i32 0, metadata !255, metadata !811}
!822 = metadata !{i32 727, i32 0, metadata !255, metadata !811}
!823 = metadata !{i32 728, i32 0, metadata !255, metadata !811}
!824 = metadata !{i32 730, i32 0, metadata !255, metadata !811}
!825 = metadata !{i32 579, i32 0, metadata !749, metadata !623}
!826 = metadata !{i32 579, i32 0, metadata !225, metadata !623}
!827 = metadata !{i32 786689, metadata !233, metadata !"cp", metadata !21, i32 16777970, metadata !182, i32 0, metadata !621} ; [ DW_TAG_arg_variable ] [cp] [line 754]
!828 = metadata !{i32 754, i32 0, metadata !233, metadata !621}
!829 = metadata !{i32 786689, metadata !233, metadata !"opnd", metadata !21, i32 50332404, metadata !25, i32 0, metadata !621} ; [ DW_TAG_arg_variable ] [opnd] [line 756]
!830 = metadata !{i32 756, i32 0, metadata !233, metadata !621}
!831 = metadata !{i32 760, i32 0, metadata !233, metadata !621}
!832 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !833} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!833 = metadata !{i32 582, i32 0, metadata !622, metadata !623}
!834 = metadata !{i32 713, i32 0, metadata !255, metadata !833}
!835 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !833} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!836 = metadata !{i32 716, i32 0, metadata !255, metadata !833}
!837 = metadata !{i32 719, i32 0, metadata !255, metadata !833}
!838 = metadata !{i32 765, i32 0, metadata !233, metadata !621}
!839 = metadata !{i32 766, i32 0, metadata !233, metadata !621}
!840 = metadata !{i32 786688, metadata !233, metadata !"place", metadata !21, i32 758, metadata !25, i32 0, metadata !621} ; [ DW_TAG_auto_variable ] [place] [line 758]
!841 = metadata !{i32 768, i32 0, metadata !233, metadata !621}
!842 = metadata !{i32 769, i32 0, metadata !233, metadata !621}
!843 = metadata !{i32 770, i32 0, metadata !233, metadata !621}
!844 = metadata !{i32 771, i32 0, metadata !233, metadata !621}
!845 = metadata !{i32 720, i32 0, metadata !408, metadata !833}
!846 = metadata !{i32 721, i32 0, metadata !408, metadata !833}
!847 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !833} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!848 = metadata !{i32 724, i32 0, metadata !255, metadata !833}
!849 = metadata !{i32 725, i32 0, metadata !255, metadata !833}
!850 = metadata !{i32 726, i32 0, metadata !255, metadata !833}
!851 = metadata !{i32 727, i32 0, metadata !255, metadata !833}
!852 = metadata !{i32 728, i32 0, metadata !255, metadata !833}
!853 = metadata !{i32 730, i32 0, metadata !255, metadata !833}
!854 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !855} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!855 = metadata !{i32 583, i32 0, metadata !622, metadata !623}
!856 = metadata !{i32 713, i32 0, metadata !255, metadata !855}
!857 = metadata !{i32 716, i32 0, metadata !255, metadata !855}
!858 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !855} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!859 = metadata !{i32 719, i32 0, metadata !255, metadata !855}
!860 = metadata !{i32 720, i32 0, metadata !408, metadata !855}
!861 = metadata !{i32 721, i32 0, metadata !408, metadata !855}
!862 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !855} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!863 = metadata !{i32 724, i32 0, metadata !255, metadata !855}
!864 = metadata !{i32 725, i32 0, metadata !255, metadata !855}
!865 = metadata !{i32 726, i32 0, metadata !255, metadata !855}
!866 = metadata !{i32 727, i32 0, metadata !255, metadata !855}
!867 = metadata !{i32 728, i32 0, metadata !255, metadata !855}
!868 = metadata !{i32 730, i32 0, metadata !255, metadata !855}
!869 = metadata !{i32 584, i32 0, metadata !622, metadata !623}
!870 = metadata !{i32 786689, metadata !199, metadata !"cp", metadata !21, i32 16778020, metadata !182, i32 0, metadata !871} ; [ DW_TAG_arg_variable ] [cp] [line 804]
!871 = metadata !{i32 585, i32 0, metadata !622, metadata !623}
!872 = metadata !{i32 804, i32 0, metadata !199, metadata !871}
!873 = metadata !{i32 786689, metadata !199, metadata !"p", metadata !21, i32 33555237, metadata !25, i32 0, metadata !871} ; [ DW_TAG_arg_variable ] [p] [line 805]
!874 = metadata !{i32 805, i32 0, metadata !199, metadata !871}
!875 = metadata !{i32 786689, metadata !199, metadata !"val", metadata !21, i32 50332454, metadata !25, i32 0, metadata !871} ; [ DW_TAG_arg_variable ] [val] [line 806]
!876 = metadata !{i32 806, i32 0, metadata !199, metadata !871}
!877 = metadata !{i32 809, i32 0, metadata !199, metadata !871}
!878 = metadata !{i32 811, i32 0, metadata !199, metadata !871}
!879 = metadata !{i32 587, i32 0, metadata !225, metadata !623}
!880 = metadata !{i32 588, i32 0, metadata !225, metadata !623}
!881 = metadata !{i32 589, i32 0, metadata !882, metadata !623}
!882 = metadata !{i32 786443, metadata !1, metadata !225, i32 589, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!883 = metadata !{i32 592, i32 0, metadata !225, metadata !623}
!884 = metadata !{i32 512, i32 0, metadata !624, null}
!885 = metadata !{i32 515, i32 0, metadata !624, null}
!886 = metadata !{i32 518, i32 0, metadata !214, null}
!887 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !888} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!888 = metadata !{i32 519, i32 0, metadata !214, null}
!889 = metadata !{i32 713, i32 0, metadata !255, metadata !888}
!890 = metadata !{i32 716, i32 0, metadata !255, metadata !888}
!891 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !888} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!892 = metadata !{i32 719, i32 0, metadata !255, metadata !888}
!893 = metadata !{i32 720, i32 0, metadata !408, metadata !888}
!894 = metadata !{i32 721, i32 0, metadata !408, metadata !888}
!895 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !888} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!896 = metadata !{i32 724, i32 0, metadata !255, metadata !888}
!897 = metadata !{i32 725, i32 0, metadata !255, metadata !888}
!898 = metadata !{i32 726, i32 0, metadata !255, metadata !888}
!899 = metadata !{i32 727, i32 0, metadata !255, metadata !888}
!900 = metadata !{i32 728, i32 0, metadata !255, metadata !888}
!901 = metadata !{i32 730, i32 0, metadata !255, metadata !888}
!902 = metadata !{i32 522, i32 0, metadata !214, null}
!903 = metadata !{i32 779, i32 0, metadata !206, null}
!904 = metadata !{i32 780, i32 0, metadata !206, null}
!905 = metadata !{i32 781, i32 0, metadata !206, null}
!906 = metadata !{i32 787, i32 0, metadata !206, null}
!907 = metadata !{i32 791, i32 0, metadata !908, null}
!908 = metadata !{i32 786443, metadata !1, metadata !206, i32 791, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!909 = metadata !{i32 794, i32 0, metadata !206, null}
!910 = metadata !{i32 795, i32 0, metadata !206, null}
!911 = metadata !{i32 796, i32 0, metadata !206, null}
!912 = metadata !{i32 604, i32 0, metadata !241, null}
!913 = metadata !{i32 605, i32 0, metadata !241, null}
!914 = metadata !{i32 608, i32 0, metadata !241, null}
!915 = metadata !{i32 610, i32 0, metadata !241, null}
!916 = metadata !{i32 612, i32 0, metadata !241, null}
!917 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !918} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!918 = metadata !{i32 614, i32 0, metadata !249, null}
!919 = metadata !{i32 713, i32 0, metadata !255, metadata !918}
!920 = metadata !{i32 716, i32 0, metadata !255, metadata !918}
!921 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !918} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!922 = metadata !{i32 719, i32 0, metadata !255, metadata !918}
!923 = metadata !{i32 720, i32 0, metadata !408, metadata !918}
!924 = metadata !{i32 721, i32 0, metadata !408, metadata !918}
!925 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !918} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!926 = metadata !{i32 724, i32 0, metadata !255, metadata !918}
!927 = metadata !{i32 725, i32 0, metadata !255, metadata !918}
!928 = metadata !{i32 726, i32 0, metadata !255, metadata !918}
!929 = metadata !{i32 727, i32 0, metadata !255, metadata !918}
!930 = metadata !{i32 728, i32 0, metadata !255, metadata !918}
!931 = metadata !{i32 730, i32 0, metadata !255, metadata !918}
!932 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !933} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!933 = metadata !{i32 617, i32 0, metadata !249, null}
!934 = metadata !{i32 713, i32 0, metadata !255, metadata !933}
!935 = metadata !{i32 716, i32 0, metadata !255, metadata !933}
!936 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !933} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!937 = metadata !{i32 719, i32 0, metadata !255, metadata !933}
!938 = metadata !{i32 720, i32 0, metadata !408, metadata !933}
!939 = metadata !{i32 721, i32 0, metadata !408, metadata !933}
!940 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !933} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!941 = metadata !{i32 724, i32 0, metadata !255, metadata !933}
!942 = metadata !{i32 725, i32 0, metadata !255, metadata !933}
!943 = metadata !{i32 726, i32 0, metadata !255, metadata !933}
!944 = metadata !{i32 727, i32 0, metadata !255, metadata !933}
!945 = metadata !{i32 728, i32 0, metadata !255, metadata !933}
!946 = metadata !{i32 730, i32 0, metadata !255, metadata !933}
!947 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !948} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!948 = metadata !{i32 620, i32 0, metadata !249, null}
!949 = metadata !{i32 713, i32 0, metadata !255, metadata !948}
!950 = metadata !{i32 716, i32 0, metadata !255, metadata !948}
!951 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !948} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!952 = metadata !{i32 719, i32 0, metadata !255, metadata !948}
!953 = metadata !{i32 720, i32 0, metadata !408, metadata !948}
!954 = metadata !{i32 721, i32 0, metadata !408, metadata !948}
!955 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !948} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!956 = metadata !{i32 724, i32 0, metadata !255, metadata !948}
!957 = metadata !{i32 725, i32 0, metadata !255, metadata !948}
!958 = metadata !{i32 726, i32 0, metadata !255, metadata !948}
!959 = metadata !{i32 727, i32 0, metadata !255, metadata !948}
!960 = metadata !{i32 728, i32 0, metadata !255, metadata !948}
!961 = metadata !{i32 621, i32 0, metadata !249, null}
!962 = metadata !{i32 730, i32 0, metadata !255, metadata !948}
!963 = metadata !{i32 622, i32 0, metadata !249, null}
!964 = metadata !{i32 628, i32 0, metadata !248, null}
!965 = metadata !{i32 716, i32 0, metadata !255, metadata !966}
!966 = metadata !{i32 629, i32 0, metadata !967, null}
!967 = metadata !{i32 786443, metadata !1, metadata !248, i32 628, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!968 = metadata !{i32 719, i32 0, metadata !255, metadata !966}
!969 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !966} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!970 = metadata !{i32 713, i32 0, metadata !255, metadata !966}
!971 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !966} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!972 = metadata !{i32 720, i32 0, metadata !408, metadata !966}
!973 = metadata !{i32 721, i32 0, metadata !408, metadata !966}
!974 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !966} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!975 = metadata !{i32 724, i32 0, metadata !255, metadata !966}
!976 = metadata !{i32 725, i32 0, metadata !255, metadata !966}
!977 = metadata !{i32 726, i32 0, metadata !255, metadata !966}
!978 = metadata !{i32 727, i32 0, metadata !255, metadata !966}
!979 = metadata !{i32 728, i32 0, metadata !255, metadata !966}
!980 = metadata !{i32 630, i32 0, metadata !967, null}
!981 = metadata !{i32 730, i32 0, metadata !255, metadata !966}
!982 = metadata !{i32 631, i32 0, metadata !967, null}
!983 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !984} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!984 = metadata !{i32 632, i32 0, metadata !248, null}
!985 = metadata !{i32 713, i32 0, metadata !255, metadata !984}
!986 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !984} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!987 = metadata !{i32 716, i32 0, metadata !255, metadata !984}
!988 = metadata !{i32 719, i32 0, metadata !255, metadata !984}
!989 = metadata !{i32 720, i32 0, metadata !408, metadata !984}
!990 = metadata !{i32 721, i32 0, metadata !408, metadata !984}
!991 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !984} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!992 = metadata !{i32 724, i32 0, metadata !255, metadata !984}
!993 = metadata !{i32 725, i32 0, metadata !255, metadata !984}
!994 = metadata !{i32 726, i32 0, metadata !255, metadata !984}
!995 = metadata !{i32 727, i32 0, metadata !255, metadata !984}
!996 = metadata !{i32 728, i32 0, metadata !255, metadata !984}
!997 = metadata !{i32 633, i32 0, metadata !248, null}
!998 = metadata !{i32 730, i32 0, metadata !255, metadata !984}
!999 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1000} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1000 = metadata !{i32 634, i32 0, metadata !1001, null}
!1001 = metadata !{i32 786443, metadata !1, metadata !248, i32 633, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1002 = metadata !{i32 738, i32 0, metadata !179, metadata !1000}
!1003 = metadata !{i32 741, i32 0, metadata !179, metadata !1000}
!1004 = metadata !{i32 742, i32 0, metadata !179, metadata !1000}
!1005 = metadata !{i32 635, i32 0, metadata !1001, null}
!1006 = metadata !{i32 744, i32 0, metadata !179, metadata !1000}
!1007 = metadata !{i32 636, i32 0, metadata !1001, null}
!1008 = metadata !{i32 744, i32 0, metadata !179, metadata !1009}
!1009 = metadata !{i32 639, i32 0, metadata !1010, null}
!1010 = metadata !{i32 786443, metadata !1, metadata !248, i32 637, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1011 = metadata !{i32 637, i32 0, metadata !248, null}
!1012 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1009} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1013 = metadata !{i32 738, i32 0, metadata !179, metadata !1009}
!1014 = metadata !{i32 741, i32 0, metadata !179, metadata !1009}
!1015 = metadata !{i32 742, i32 0, metadata !179, metadata !1009}
!1016 = metadata !{i32 640, i32 0, metadata !1010, null}
!1017 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1018} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1018 = metadata !{i32 641, i32 0, metadata !1010, null}
!1019 = metadata !{i32 738, i32 0, metadata !179, metadata !1018}
!1020 = metadata !{i32 741, i32 0, metadata !179, metadata !1018}
!1021 = metadata !{i32 742, i32 0, metadata !179, metadata !1018}
!1022 = metadata !{i32 744, i32 0, metadata !179, metadata !1018}
!1023 = metadata !{i32 643, i32 0, metadata !1024, null}
!1024 = metadata !{i32 786443, metadata !1, metadata !1010, i32 642, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1025 = metadata !{i32 644, i32 0, metadata !1024, null}
!1026 = metadata !{i32 645, i32 0, metadata !1024, null}
!1027 = metadata !{i32 646, i32 0, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !1, metadata !1024, i32 646, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1029 = metadata !{i32 647, i32 0, metadata !1030, null}
!1030 = metadata !{i32 786443, metadata !1, metadata !1024, i32 647, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1031 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1032} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1032 = metadata !{i32 648, i32 0, metadata !1030, null}
!1033 = metadata !{i32 738, i32 0, metadata !179, metadata !1032}
!1034 = metadata !{i32 741, i32 0, metadata !179, metadata !1032}
!1035 = metadata !{i32 742, i32 0, metadata !179, metadata !1032}
!1036 = metadata !{i32 744, i32 0, metadata !179, metadata !1032}
!1037 = metadata !{i32 649, i32 0, metadata !1024, null}
!1038 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1039} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1039 = metadata !{i32 652, i32 0, metadata !248, null}
!1040 = metadata !{i32 738, i32 0, metadata !179, metadata !1039}
!1041 = metadata !{i32 741, i32 0, metadata !179, metadata !1039}
!1042 = metadata !{i32 742, i32 0, metadata !179, metadata !1039}
!1043 = metadata !{i32 744, i32 0, metadata !179, metadata !1039}
!1044 = metadata !{i32 653, i32 0, metadata !248, null}
!1045 = metadata !{i32 654, i32 0, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !1, metadata !248, i32 654, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1047 = metadata !{i32 655, i32 0, metadata !248, null}
!1048 = metadata !{i32 656, i32 0, metadata !248, null}
!1049 = metadata !{i32 659, i32 0, metadata !249, null}
!1050 = metadata !{i32 660, i32 0, metadata !249, null}
!1051 = metadata !{i32 662, i32 0, metadata !249, null}
!1052 = metadata !{i32 663, i32 0, metadata !249, null}
!1053 = metadata !{i32 668, i32 0, metadata !1054, null}
!1054 = metadata !{i32 786443, metadata !1, metadata !249, i32 668, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1055 = metadata !{i32 673, i32 0, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !1, metadata !249, i32 673, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1057 = metadata !{i32 676, i32 0, metadata !249, null}
!1058 = metadata !{i32 677, i32 0, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !1, metadata !249, i32 677, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1060 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !1061} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!1061 = metadata !{i32 678, i32 0, metadata !249, null}
!1062 = metadata !{i32 713, i32 0, metadata !255, metadata !1061}
!1063 = metadata !{i32 716, i32 0, metadata !255, metadata !1061}
!1064 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !1061} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!1065 = metadata !{i32 719, i32 0, metadata !255, metadata !1061}
!1066 = metadata !{i32 720, i32 0, metadata !408, metadata !1061}
!1067 = metadata !{i32 679, i32 0, metadata !249, null}
!1068 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1067} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1069 = metadata !{i32 738, i32 0, metadata !179, metadata !1067}
!1070 = metadata !{i32 741, i32 0, metadata !179, metadata !1067}
!1071 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !1061} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!1072 = metadata !{i32 724, i32 0, metadata !255, metadata !1061}
!1073 = metadata !{i32 725, i32 0, metadata !255, metadata !1061}
!1074 = metadata !{i32 726, i32 0, metadata !255, metadata !1061}
!1075 = metadata !{i32 727, i32 0, metadata !255, metadata !1061}
!1076 = metadata !{i32 728, i32 0, metadata !255, metadata !1061}
!1077 = metadata !{i32 744, i32 0, metadata !179, metadata !1067}
!1078 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1079} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1079 = metadata !{i32 680, i32 0, metadata !249, null}
!1080 = metadata !{i32 738, i32 0, metadata !179, metadata !1079}
!1081 = metadata !{i32 741, i32 0, metadata !179, metadata !1079}
!1082 = metadata !{i32 742, i32 0, metadata !179, metadata !1067}
!1083 = metadata !{i32 742, i32 0, metadata !179, metadata !1079}
!1084 = metadata !{i32 744, i32 0, metadata !179, metadata !1079}
!1085 = metadata !{i32 681, i32 0, metadata !249, null}
!1086 = metadata !{i32 682, i32 0, metadata !249, null}
!1087 = metadata !{i32 687, i32 0, metadata !253, null}
!1088 = metadata !{i32 688, i32 0, metadata !253, null}
!1089 = metadata !{i32 689, i32 0, metadata !253, null}
!1090 = metadata !{i32 690, i32 0, metadata !1091, null}
!1091 = metadata !{i32 786443, metadata !1, metadata !253, i32 690, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1092 = metadata !{i32 691, i32 0, metadata !253, null}
!1093 = metadata !{i32 692, i32 0, metadata !253, null}
!1094 = metadata !{i32 693, i32 0, metadata !253, null}
!1095 = metadata !{i32 695, i32 0, metadata !253, null}
!1096 = metadata !{i32 694, i32 0, metadata !253, null}
!1097 = metadata !{i32 786689, metadata !255, metadata !"cp", metadata !21, i32 16777929, metadata !182, i32 0, metadata !1098} ; [ DW_TAG_arg_variable ] [cp] [line 713]
!1098 = metadata !{i32 697, i32 0, metadata !253, null}
!1099 = metadata !{i32 713, i32 0, metadata !255, metadata !1098}
!1100 = metadata !{i32 716, i32 0, metadata !255, metadata !1098}
!1101 = metadata !{i32 786688, metadata !255, metadata !"ret", metadata !21, i32 716, metadata !155, i32 0, metadata !1098} ; [ DW_TAG_auto_variable ] [ret] [line 716]
!1102 = metadata !{i32 719, i32 0, metadata !255, metadata !1098}
!1103 = metadata !{i32 720, i32 0, metadata !408, metadata !1098}
!1104 = metadata !{i32 721, i32 0, metadata !408, metadata !1098}
!1105 = metadata !{i32 786688, metadata !255, metadata !"ptr", metadata !21, i32 717, metadata !25, i32 0, metadata !1098} ; [ DW_TAG_auto_variable ] [ptr] [line 717]
!1106 = metadata !{i32 724, i32 0, metadata !255, metadata !1098}
!1107 = metadata !{i32 725, i32 0, metadata !255, metadata !1098}
!1108 = metadata !{i32 726, i32 0, metadata !255, metadata !1098}
!1109 = metadata !{i32 727, i32 0, metadata !255, metadata !1098}
!1110 = metadata !{i32 728, i32 0, metadata !255, metadata !1098}
!1111 = metadata !{i32 730, i32 0, metadata !255, metadata !1098}
!1112 = metadata !{i32 698, i32 0, metadata !1113, null}
!1113 = metadata !{i32 786443, metadata !1, metadata !253, i32 698, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/hsregex.c]
!1114 = metadata !{i32 744, i32 0, metadata !179, metadata !1115}
!1115 = metadata !{i32 699, i32 0, metadata !1113, null}
!1116 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1115} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1117 = metadata !{i32 738, i32 0, metadata !179, metadata !1115}
!1118 = metadata !{i32 741, i32 0, metadata !179, metadata !1115}
!1119 = metadata !{i32 742, i32 0, metadata !179, metadata !1115}
!1120 = metadata !{i32 741, i32 0, metadata !179, metadata !1121}
!1121 = metadata !{i32 700, i32 0, metadata !253, null}
!1122 = metadata !{i32 786689, metadata !179, metadata !"cp", metadata !21, i32 16777954, metadata !182, i32 0, metadata !1121} ; [ DW_TAG_arg_variable ] [cp] [line 738]
!1123 = metadata !{i32 738, i32 0, metadata !179, metadata !1121}
!1124 = metadata !{i32 742, i32 0, metadata !179, metadata !1121}
!1125 = metadata !{i32 744, i32 0, metadata !179, metadata !1121}
!1126 = metadata !{i32 706, i32 0, metadata !241, null}

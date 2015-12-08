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
  %cmp = icmp sgt i32 %ntok, 9
  br i1 %cmp, label %if.then, label %for.cond.preheader

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([31 x i8]* @.str, i64 0, i64 0), i32 9) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %entry
  %cmp179 = icmp slt i32 %ntok, 0
  br i1 %cmp179, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %0 = add i32 %ntok, 1
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc ], [ 0, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds [10 x i8*]* @sqd_parse, i64 0, i64 %indvars.iv81
  %1 = load i8** %arrayidx, align 8, !tbaa !0
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %for.inc, label %if.then3

if.then3:                                         ; preds = %for.body
  tail call void @free(i8* %1) #9
  store i8* null, i8** %arrayidx, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then3
  %indvars.iv.next82 = add i64 %indvars.iv81, 1
  %lftr.wideiv83 = trunc i64 %indvars.iv.next82 to i32
  %exitcond84 = icmp eq i32 %lftr.wideiv83, %0
  br i1 %exitcond84, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call = tail call %struct.sqd_regexp* @sqd_regcomp(i8* %rexp) #10
  %cmp9 = icmp eq %struct.sqd_regexp* %call, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([27 x i8]* @.str1, i64 0, i64 0)) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %for.end
  %call12 = tail call i32 @sqd_regexec(%struct.sqd_regexp* %call, i8* %s) #10
  %cmp13.not = icmp ne i32 %call12, 1
  %brmerge = or i1 %cmp13.not, %cmp179
  br i1 %brmerge, label %if.end50, label %for.body17.lr.ph

for.body17.lr.ph:                                 ; preds = %if.end11
  %2 = add i32 %ntok, 1
  br label %for.body17

for.body17:                                       ; preds = %for.inc47, %for.body17.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc47 ], [ 0, %for.body17.lr.ph ]
  %arrayidx19 = getelementptr inbounds %struct.sqd_regexp* %call, i64 0, i32 0, i64 %indvars.iv
  %3 = load i8** %arrayidx19, align 8, !tbaa !0
  %cmp20 = icmp eq i8* %3, null
  br i1 %cmp20, label %for.inc47, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body17
  %arrayidx22 = getelementptr inbounds %struct.sqd_regexp* %call, i64 0, i32 1, i64 %indvars.iv
  %4 = load i8** %arrayidx22, align 8, !tbaa !0
  %cmp23 = icmp eq i8* %4, null
  br i1 %cmp23, label %for.inc47, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = shl i64 %sub.ptr.sub, 32
  %sext = add i64 %add, 4294967296
  %conv31 = ashr exact i64 %sext, 32
  %call32 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([53 x i8]* @.str2, i64 0, i64 0), i32 124, i64 %conv31) #9
  %arrayidx34 = getelementptr inbounds [10 x i8*]* @sqd_parse, i64 0, i64 %indvars.iv
  store i8* %call32, i8** %arrayidx34, align 8, !tbaa !0
  %5 = load i8** %arrayidx19, align 8, !tbaa !0
  %conv40 = ashr exact i64 %add, 32
  %call41 = tail call i8* @strncpy(i8* %call32, i8* %5, i64 %conv40) #9
  %6 = load i8** %arrayidx34, align 8, !tbaa !0
  %arrayidx45 = getelementptr inbounds i8* %6, i64 %conv40
  store i8 0, i8* %arrayidx45, align 1, !tbaa !1
  br label %for.inc47

for.inc47:                                        ; preds = %land.lhs.true, %for.body17, %if.then24
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %if.end50, label %for.body17

if.end50:                                         ; preds = %if.end11, %for.inc47
  %7 = bitcast %struct.sqd_regexp* %call to i8*
  tail call void @free(i8* %7) #9
  ret i32 %call12
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define %struct.sqd_regexp* @sqd_regcomp(i8* %exp) #0 {
entry:
  %flags = alloca i32, align 4
  %co = alloca %struct.comp, align 8
  %0 = bitcast %struct.comp* %co to i8*
  call void @llvm.lifetime.start(i64 40, i8* %0) #3
  %cmp = icmp eq i8* %exp, null
  br i1 %cmp, label %if.then, label %regc.exit

if.then:                                          ; preds = %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8]* @.str3, i64 0, i64 0)) #10
  unreachable

regc.exit:                                        ; preds = %entry
  %regparse = getelementptr inbounds %struct.comp* %co, i64 0, i32 0
  store i8* %exp, i8** %regparse, align 8, !tbaa !0
  %regnpar = getelementptr inbounds %struct.comp* %co, i64 0, i32 1
  store i32 1, i32* %regnpar, align 8, !tbaa !3
  %regsize = getelementptr inbounds %struct.comp* %co, i64 0, i32 4
  %arrayidx = getelementptr inbounds %struct.comp* %co, i64 0, i32 3, i64 0
  store i8 9, i8* %arrayidx, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds %struct.comp* %co, i64 0, i32 3, i64 2
  store i8 0, i8* %arrayidx2, align 2, !tbaa !1
  %arrayidx4 = getelementptr inbounds %struct.comp* %co, i64 0, i32 3, i64 1
  store i8 0, i8* %arrayidx4, align 1, !tbaa !1
  %regcode = getelementptr inbounds %struct.comp* %co, i64 0, i32 2
  store i8* %arrayidx, i8** %regcode, align 8, !tbaa !0
  store i64 1, i64* %regsize, align 8, !tbaa !4
  %call = call fastcc i8* @reg(%struct.comp* %co, i32 0, i32* %flags) #10
  %cmp6 = icmp eq i8* %call, null
  br i1 %cmp6, label %cleanup, label %if.end8

if.end8:                                          ; preds = %regc.exit
  %1 = load i64* %regsize, align 8, !tbaa !4
  %cmp10 = icmp sgt i64 %1, 32766
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @sqd_regerror(i8* getelementptr inbounds ([15 x i8]* @.str4, i64 0, i64 0)) #10
  unreachable

if.end12:                                         ; preds = %if.end8
  %add = add i64 %1, 184
  %call14 = call noalias i8* @malloc(i64 %add) #9
  %2 = bitcast i8* %call14 to %struct.sqd_regexp*
  %cmp15 = icmp eq i8* %call14, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0)) #10
  unreachable

if.end17:                                         ; preds = %if.end12
  store i8* %exp, i8** %regparse, align 8, !tbaa !0
  store i32 1, i32* %regnpar, align 8, !tbaa !3
  %program = getelementptr inbounds i8* %call14, i64 180
  store i8* %program, i8** %regcode, align 8, !tbaa !0
  %cmp.i92 = icmp eq i8* %program, %arrayidx
  br i1 %cmp.i92, label %if.else.i97, label %if.then.i94

if.then.i94:                                      ; preds = %if.end17
  %incdec.ptr.i93 = getelementptr inbounds i8* %call14, i64 181
  store i8* %incdec.ptr.i93, i8** %regcode, align 8, !tbaa !0
  store i8 -100, i8* %program, align 1, !tbaa !1
  br label %regc.exit98

if.else.i97:                                      ; preds = %if.end17
  %inc.i96 = add nsw i64 %1, 1
  store i64 %inc.i96, i64* %regsize, align 8, !tbaa !4
  br label %regc.exit98

regc.exit98:                                      ; preds = %if.then.i94, %if.else.i97
  %call22 = call fastcc i8* @reg(%struct.comp* %co, i32 0, i32* %flags) #10
  %cmp23 = icmp eq i8* %call22, null
  br i1 %cmp23, label %cleanup, label %if.end25

if.end25:                                         ; preds = %regc.exit98
  %3 = getelementptr inbounds i8* %call14, i64 160
  store i8 0, i8* %3, align 1, !tbaa !1
  %4 = getelementptr inbounds i8* %call14, i64 161
  store i8 0, i8* %4, align 1, !tbaa !1
  %regmust = getelementptr inbounds i8* %call14, i64 168
  %5 = bitcast i8* %regmust to i8**
  store i8* null, i8** %5, align 8, !tbaa !0
  %regmlen = getelementptr inbounds i8* %call14, i64 176
  %6 = bitcast i8* %regmlen to i32*
  store i32 0, i32* %6, align 4, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %call14, i64 181
  %call28 = call fastcc i8* @regnext(i8* %add.ptr) #10
  %7 = load i8* %call28, align 1, !tbaa !1
  %cmp29 = icmp eq i8 %7, 0
  br i1 %cmp29, label %if.then31, label %cleanup

if.then31:                                        ; preds = %if.end25
  %add.ptr32 = getelementptr inbounds i8* %call14, i64 184
  %8 = load i8* %add.ptr32, align 1, !tbaa !1
  switch i8 %8, label %if.end45 [
    i8 8, label %if.then36
    i8 1, label %if.then42
  ]

if.then36:                                        ; preds = %if.then31
  %add.ptr37 = getelementptr inbounds i8* %call14, i64 187
  %9 = load i8* %add.ptr37, align 1, !tbaa !1
  store i8 %9, i8* %3, align 1, !tbaa !1
  br label %if.end45

if.then42:                                        ; preds = %if.then31
  store i8 1, i8* %4, align 1, !tbaa !1
  br label %if.end45

if.end45:                                         ; preds = %if.then31, %if.then42, %if.then36
  %10 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %10, 4
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %cleanup, label %for.body

for.body:                                         ; preds = %if.end45, %for.inc.for.body_crit_edge
  %11 = phi i8 [ %.pre, %for.inc.for.body_crit_edge ], [ %8, %if.end45 ]
  %len.0102 = phi i64 [ %len.1, %for.inc.for.body_crit_edge ], [ 0, %if.end45 ]
  %longest.0101 = phi i8* [ %longest.1, %for.inc.for.body_crit_edge ], [ null, %if.end45 ]
  %scan.0100 = phi i8* [ %call61, %for.inc.for.body_crit_edge ], [ %add.ptr32, %if.end45 ]
  %cmp50 = icmp eq i8 %11, 8
  br i1 %cmp50, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %add.ptr52 = getelementptr inbounds i8* %scan.0100, i64 3
  %call53 = call i64 @strlen(i8* %add.ptr52) #11
  %cmp54 = icmp ult i64 %call53, %len.0102
  %longest.0.add.ptr52 = select i1 %cmp54, i8* %longest.0101, i8* %add.ptr52
  %len.0.call53 = select i1 %cmp54, i64 %len.0102, i64 %call53
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body
  %longest.1 = phi i8* [ %longest.0101, %for.body ], [ %longest.0.add.ptr52, %land.lhs.true ]
  %len.1 = phi i64 [ %len.0102, %for.body ], [ %len.0.call53, %land.lhs.true ]
  %call61 = call fastcc i8* @regnext(i8* %scan.0100) #10
  %cmp47 = icmp eq i8* %call61, null
  br i1 %cmp47, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %.pre = load i8* %call61, align 1, !tbaa !1
  br label %for.body

for.end:                                          ; preds = %for.inc
  store i8* %longest.1, i8** %5, align 8, !tbaa !0
  %conv63 = trunc i64 %len.1 to i32
  store i32 %conv63, i32* %6, align 4, !tbaa !3
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %for.end, %if.end45, %regc.exit98, %regc.exit
  %retval.0 = phi %struct.sqd_regexp* [ null, %regc.exit ], [ null, %regc.exit98 ], [ %2, %if.end45 ], [ %2, %for.end ], [ %2, %if.end25 ]
  call void @llvm.lifetime.end(i64 40, i8* %0) #3
  ret %struct.sqd_regexp* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @sqd_regexec(%struct.sqd_regexp* %prog, i8* %str) #0 {
entry:
  %ex = alloca %struct.exec, align 8
  %cmp = icmp eq %struct.sqd_regexp* %prog, null
  %cmp1 = icmp eq i8* %str, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 6, i64 0
  %0 = load i8* %arraydecay, align 1, !tbaa !1
  %cmp2 = icmp eq i8 %0, -100
  br i1 %cmp2, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @sqd_regerror(i8* getelementptr inbounds ([17 x i8]* @.str7, i64 0, i64 0)) #10
  unreachable

if.end5:                                          ; preds = %if.end
  %regmust = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 4
  %1 = load i8** %regmust, align 8, !tbaa !0
  %cmp6 = icmp eq i8* %1, null
  br i1 %cmp6, label %if.end12, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end5
  %call = call i8* @strstr(i8* %str, i8* %1) #11
  %cmp9 = icmp eq i8* %call, null
  br i1 %cmp9, label %return, label %if.end12

if.end12:                                         ; preds = %if.end5, %land.lhs.true
  %regbol = getelementptr inbounds %struct.exec* %ex, i64 0, i32 1
  store i8* %str, i8** %regbol, align 8, !tbaa !0
  %arraydecay13 = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 0, i64 0
  %regstartp = getelementptr inbounds %struct.exec* %ex, i64 0, i32 2
  store i8** %arraydecay13, i8*** %regstartp, align 8, !tbaa !0
  %arraydecay14 = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 1, i64 0
  %regendp = getelementptr inbounds %struct.exec* %ex, i64 0, i32 3
  store i8** %arraydecay14, i8*** %regendp, align 8, !tbaa !0
  %reganch = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 3
  %2 = load i8* %reganch, align 1, !tbaa !1
  %tobool = icmp eq i8 %2, 0
  br i1 %tobool, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = call fastcc i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %prog, i8* %str) #10
  br label %return

if.end17:                                         ; preds = %if.end12
  %regstart = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 2
  %3 = load i8* %regstart, align 1, !tbaa !1
  %cmp19 = icmp eq i8 %3, 0
  br i1 %cmp19, label %for.cond31.preheader, label %for.body

for.cond31.preheader:                             ; preds = %if.end17
  %call3261 = call fastcc i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %prog, i8* %str) #10
  %lnot62 = icmp eq i32 %call3261, 0
  br i1 %lnot62, label %for.body34, label %return

for.body:                                         ; preds = %if.end17, %for.inc
  %s.067 = phi i8* [ %call30, %for.inc ], [ %str, %if.end17 ]
  %call24 = call fastcc i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %prog, i8* %s.067) #10
  %tobool25 = icmp eq i32 %call24, 0
  br i1 %tobool25, label %for.inc, label %return

for.inc:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %s.067, i64 1
  %4 = load i8* %regstart, align 1, !tbaa !1
  %conv29 = sext i8 %4 to i32
  %call30 = call i8* @strchr(i8* %add.ptr, i32 %conv29) #11
  %cmp22 = icmp eq i8* %call30, null
  br i1 %cmp22, label %return, label %for.body

for.cond31:                                       ; preds = %for.body34
  %call32 = call fastcc i32 @regtry(%struct.exec* %ex, %struct.sqd_regexp* %prog, i8* %incdec.ptr) #10
  %lnot = icmp eq i32 %call32, 0
  br i1 %lnot, label %for.body34, label %return

for.body34:                                       ; preds = %for.cond31.preheader, %for.cond31
  %s.163 = phi i8* [ %incdec.ptr, %for.cond31 ], [ %str, %for.cond31.preheader ]
  %5 = load i8* %s.163, align 1, !tbaa !1
  %cmp36 = icmp eq i8 %5, 0
  %incdec.ptr = getelementptr inbounds i8* %s.163, i64 1
  br i1 %cmp36, label %return, label %for.cond31

return:                                           ; preds = %for.body, %for.inc, %for.cond31.preheader, %for.body34, %for.cond31, %land.lhs.true, %if.then15
  %retval.0 = phi i32 [ %call16, %if.then15 ], [ 0, %land.lhs.true ], [ 1, %for.cond31.preheader ], [ 0, %for.body34 ], [ 1, %for.cond31 ], [ 1, %for.body ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @SqdClean() #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [10 x i8*]* @sqd_parse, i64 0, i64 %indvars.iv
  %0 = load i8** %arrayidx, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  tail call void @free(i8* %0) #9
  store i8* null, i8** %arrayidx, align 8, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 10
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: noreturn nounwind optsize uwtable
define void @sqd_regerror(i8* %s) #4 {
entry:
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* %s) #9
  tail call void @exit(i32 1) #12
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @reg(%struct.comp* %cp, i32 %paren, i32* nocapture %flagp) #0 {
entry:
  %flags = alloca i32, align 4
  store i32 1, i32* %flagp, align 4, !tbaa !3
  %tobool = icmp ne i32 %paren, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %regnpar = getelementptr inbounds %struct.comp* %cp, i64 0, i32 1
  %0 = load i32* %regnpar, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, 9
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @sqd_regerror(i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0)) #10
  unreachable

if.end:                                           ; preds = %if.then
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %regnpar, align 4, !tbaa !3
  %regcode.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %1 = load i8** %regcode.i, align 8, !tbaa !0
  %arraydecay.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i = icmp eq i8* %1, %arraydecay.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  %regsize.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %2 = load i64* %regsize.i, align 8, !tbaa !4
  %add.i = add nsw i64 %2, 3
  store i64 %add.i, i64* %regsize.i, align 8, !tbaa !4
  br label %regnode.exit

if.end.i:                                         ; preds = %if.end
  %add = add nsw i32 %0, 20
  %op.i = trunc i32 %add to i8
  %incdec.ptr.i = getelementptr inbounds i8* %1, i64 1
  store i8 %op.i, i8* %1, align 1, !tbaa !1
  %incdec.ptr2.i = getelementptr inbounds i8* %1, i64 2
  store i8 0, i8* %incdec.ptr.i, align 1, !tbaa !1
  %incdec.ptr3.i = getelementptr inbounds i8* %1, i64 3
  store i8 0, i8* %incdec.ptr2.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit

regnode.exit:                                     ; preds = %if.then.i, %if.end.i
  %phitmp = add i32 %0, 30
  %phitmp111 = trunc i32 %phitmp to i8
  br label %if.end4

if.end4:                                          ; preds = %regnode.exit, %entry
  %ret.0 = phi i8* [ %1, %regnode.exit ], [ null, %entry ]
  %parno.0 = phi i8 [ %phitmp111, %regnode.exit ], [ 30, %entry ]
  %call5 = call fastcc i8* @regbranch(%struct.comp* %cp, i32* %flags) #10
  %cmp6 = icmp eq i8* %call5, null
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end4
  br i1 %tobool, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call fastcc void @regtail(%struct.comp* %cp, i8* %ret.0, i8* %call5) #10
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.then10
  %ret.1 = phi i8* [ %ret.0, %if.then10 ], [ %call5, %if.end8 ]
  %3 = load i32* %flags, align 4, !tbaa !3
  %neg1293 = or i32 %3, -2
  %4 = load i32* %flagp, align 4, !tbaa !3
  %and13 = and i32 %4, %neg1293
  %and14 = and i32 %3, 4
  %or = or i32 %and14, %and13
  store i32 %or, i32* %flagp, align 4, !tbaa !3
  %regparse = getelementptr inbounds %struct.comp* %cp, i64 0, i32 0
  %5 = load i8** %regparse, align 8, !tbaa !0
  %6 = load i8* %5, align 1, !tbaa !1
  %cmp15115 = icmp eq i8 %6, 124
  br i1 %cmp15115, label %while.body, label %while.end

while.body:                                       ; preds = %if.end11, %if.end22
  %7 = phi i8* [ %10, %if.end22 ], [ %5, %if.end11 ]
  %incdec.ptr = getelementptr inbounds i8* %7, i64 1
  store i8* %incdec.ptr, i8** %regparse, align 8, !tbaa !0
  %call18 = call fastcc i8* @regbranch(%struct.comp* %cp, i32* %flags) #10
  %cmp19 = icmp eq i8* %call18, null
  br i1 %cmp19, label %return, label %if.end22

if.end22:                                         ; preds = %while.body
  call fastcc void @regtail(%struct.comp* %cp, i8* %ret.1, i8* %call18) #10
  %8 = load i32* %flags, align 4, !tbaa !3
  %neg2594 = or i32 %8, -2
  %9 = load i32* %flagp, align 4, !tbaa !3
  %and26 = and i32 %9, %neg2594
  %and27 = and i32 %8, 4
  %or28 = or i32 %and27, %and26
  store i32 %or28, i32* %flagp, align 4, !tbaa !3
  %10 = load i8** %regparse, align 8, !tbaa !0
  %11 = load i8* %10, align 1, !tbaa !1
  %cmp15 = icmp eq i8 %11, 124
  br i1 %cmp15, label %while.body, label %while.end

while.end:                                        ; preds = %if.end22, %if.end11
  %regcode.i99 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %12 = load i8** %regcode.i99, align 8, !tbaa !0
  %arraydecay.i100 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i101 = icmp eq i8* %12, %arraydecay.i100
  br i1 %cmp.i101, label %if.then.i104, label %if.end.i109

if.then.i104:                                     ; preds = %while.end
  %regsize.i102 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %13 = load i64* %regsize.i102, align 8, !tbaa !4
  %add.i103 = add nsw i64 %13, 3
  store i64 %add.i103, i64* %regsize.i102, align 8, !tbaa !4
  br label %regnode.exit110

if.end.i109:                                      ; preds = %while.end
  %op.i105 = select i1 %tobool, i8 %parno.0, i8 0
  %incdec.ptr.i106 = getelementptr inbounds i8* %12, i64 1
  store i8 %op.i105, i8* %12, align 1, !tbaa !1
  %incdec.ptr2.i107 = getelementptr inbounds i8* %12, i64 2
  store i8 0, i8* %incdec.ptr.i106, align 1, !tbaa !1
  %incdec.ptr3.i108 = getelementptr inbounds i8* %12, i64 3
  store i8 0, i8* %incdec.ptr2.i107, align 1, !tbaa !1
  store i8* %incdec.ptr3.i108, i8** %regcode.i99, align 8, !tbaa !0
  br label %regnode.exit110

regnode.exit110:                                  ; preds = %if.then.i104, %if.end.i109
  call fastcc void @regtail(%struct.comp* %cp, i8* %ret.1, i8* %12) #10
  %cmp32112 = icmp eq i8* %ret.1, null
  br i1 %cmp32112, label %for.end, label %for.body

for.body:                                         ; preds = %regoptail.exit, %regnode.exit110
  %br.0113 = phi i8* [ %ret.1, %regnode.exit110 ], [ %call34, %regoptail.exit ]
  %14 = load i8** %regcode.i99, align 8, !tbaa !0
  %cmp.i97 = icmp eq i8* %14, %arraydecay.i100
  br i1 %cmp.i97, label %regoptail.exit, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body
  %15 = load i8* %br.0113, align 1, !tbaa !1
  %cmp1.i = icmp eq i8 %15, 6
  br i1 %cmp1.i, label %if.end.i98, label %regoptail.exit

if.end.i98:                                       ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr inbounds i8* %br.0113, i64 3
  call fastcc void @regtail(%struct.comp* %cp, i8* %add.ptr.i, i8* %12) #9
  br label %regoptail.exit

regoptail.exit:                                   ; preds = %for.body, %lor.lhs.false.i, %if.end.i98
  %call34 = call fastcc i8* @regnext(i8* %br.0113) #10
  %cmp32 = icmp eq i8* %call34, null
  br i1 %cmp32, label %for.end, label %for.body

for.end:                                          ; preds = %regoptail.exit, %regnode.exit110
  %16 = load i8** %regparse, align 8, !tbaa !0
  br i1 %tobool, label %land.lhs.true, label %land.lhs.true44

land.lhs.true:                                    ; preds = %for.end
  %incdec.ptr37 = getelementptr inbounds i8* %16, i64 1
  store i8* %incdec.ptr37, i8** %regparse, align 8, !tbaa !0
  %17 = load i8* %16, align 1, !tbaa !1
  %cmp39 = icmp eq i8 %17, 41
  br i1 %cmp39, label %return, label %if.then41

if.then41:                                        ; preds = %land.lhs.true
  call void @sqd_regerror(i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #10
  unreachable

land.lhs.true44:                                  ; preds = %for.end
  %18 = load i8* %16, align 1, !tbaa !1
  switch i8 %18, label %if.else55 [
    i8 0, label %return
    i8 41, label %if.then54
  ]

if.then54:                                        ; preds = %land.lhs.true44
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0)) #10
  unreachable

if.else55:                                        ; preds = %land.lhs.true44
  call void @sqd_regerror(i8* getelementptr inbounds ([28 x i8]* @.str18, i64 0, i64 0)) #10
  unreachable

return:                                           ; preds = %while.body, %land.lhs.true, %land.lhs.true44, %if.end4
  %retval.0 = phi i8* [ null, %if.end4 ], [ %ret.1, %land.lhs.true44 ], [ %ret.1, %land.lhs.true ], [ null, %while.body ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i8* @regnext(i8* %p) #5 {
entry:
  %add.ptr = getelementptr inbounds i8* %p, i64 1
  %0 = load i8* %add.ptr, align 1, !tbaa !1
  %conv15 = zext i8 %0 to i32
  %and = shl nuw nsw i32 %conv15, 8
  %shl = and i32 %and, 32512
  %add.ptr1 = getelementptr inbounds i8* %p, i64 2
  %1 = load i8* %add.ptr1, align 1, !tbaa !1
  %conv216 = zext i8 %1 to i32
  %add = or i32 %shl, %conv216
  %cmp = icmp eq i32 %add, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %2 = load i8* %p, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %2, 7
  %idx.ext17 = zext i32 %add to i64
  %idx.neg = sub i64 0, %idx.ext17
  %idx.neg.sink = select i1 %cmp6, i64 %idx.neg, i64 %idx.ext17
  %add.ptr8 = getelementptr inbounds i8* %p, i64 %idx.neg.sink
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ %add.ptr8, %if.end ], [ null, %entry ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @regtry(%struct.exec* %ep, %struct.sqd_regexp* %prog, i8* %string) #0 {
entry:
  %reginput = getelementptr inbounds %struct.exec* %ep, i64 0, i32 0
  store i8* %string, i8** %reginput, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 0, i64 0
  %arraydecay1 = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 1, i64 0
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %enp.018 = phi i8** [ %arraydecay1, %entry ], [ %incdec.ptr2, %for.body ]
  %stp.017 = phi i8** [ %arraydecay, %entry ], [ %incdec.ptr, %for.body ]
  %i.016 = phi i32 [ 10, %entry ], [ %dec, %for.body ]
  %incdec.ptr = getelementptr inbounds i8** %stp.017, i64 1
  store i8* null, i8** %stp.017, align 8, !tbaa !0
  %incdec.ptr2 = getelementptr inbounds i8** %enp.018, i64 1
  store i8* null, i8** %enp.018, align 8, !tbaa !0
  %dec = add nsw i32 %i.016, -1
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.sqd_regexp* %prog, i64 0, i32 6, i64 1
  %call = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %add.ptr) #10
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %for.end
  store i8* %string, i8** %arraydecay, align 8, !tbaa !0
  %0 = load i8** %reginput, align 8, !tbaa !0
  store i8* %0, i8** %arraydecay1, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind optsize uwtable
define void @sqd_regsub(%struct.sqd_regexp* %rp, i8* %source, i8* %dest) #0 {
entry:
  %cmp = icmp eq %struct.sqd_regexp* %rp, null
  %cmp1 = icmp eq i8* %source, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i8* %dest, null
  %or.cond113 = or i1 %or.cond, %cmp3
  br i1 %or.cond113, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @sqd_regerror(i8* getelementptr inbounds ([29 x i8]* @.str8, i64 0, i64 0)) #10
  unreachable

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds %struct.sqd_regexp* %rp, i64 0, i32 6, i64 0
  %0 = load i8* %arraydecay, align 1, !tbaa !1
  %cmp4 = icmp eq i8 %0, -100
  br i1 %cmp4, label %while.cond.outer, label %if.then6

if.then6:                                         ; preds = %if.end
  tail call void @sqd_regerror(i8* getelementptr inbounds ([15 x i8]* @.str9, i64 0, i64 0)) #10
  unreachable

while.cond:                                       ; preds = %land.lhs.true49, %if.else44, %while.cond.outer
  %src.0 = phi i8* [ %src.0.ph, %while.cond.outer ], [ %src.1120, %if.else44 ], [ %src.1120, %land.lhs.true49 ]
  %incdec.ptr = getelementptr inbounds i8* %src.0, i64 1
  %1 = load i8* %src.0, align 1, !tbaa !1
  switch i8 %1, label %if.end42 [
    i8 0, label %return
    i8 38, label %if.else44
    i8 92, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %idxprom = sext i8 %2 to i64
  %call = tail call i16** @__ctype_b_loc() #13
  %3 = load i16** %call, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i16* %3, i64 %idxprom
  %4 = load i16* %arrayidx, align 2, !tbaa !5
  %and = and i16 %4, 2048
  %tobool = icmp eq i16 %and, 0
  br i1 %tobool, label %land.lhs.true32, label %if.end25

if.end25:                                         ; preds = %land.lhs.true
  %conv18 = sext i8 %2 to i32
  %incdec.ptr21 = getelementptr inbounds i8* %src.0, i64 2
  %sub = add nsw i32 %conv18, -48
  %cmp26 = icmp slt i32 %sub, 0
  br i1 %cmp26, label %if.end25.land.lhs.true32_crit_edge, label %if.else44

if.end25.land.lhs.true32_crit_edge:               ; preds = %if.end25
  %.pre = load i8* %incdec.ptr21, align 1, !tbaa !1
  br label %land.lhs.true32

land.lhs.true32:                                  ; preds = %if.end25.land.lhs.true32_crit_edge, %land.lhs.true
  %5 = phi i8 [ %2, %land.lhs.true ], [ %.pre, %if.end25.land.lhs.true32_crit_edge ]
  %src.1116122 = phi i8* [ %incdec.ptr, %land.lhs.true ], [ %incdec.ptr21, %if.end25.land.lhs.true32_crit_edge ]
  switch i8 %5, label %if.end42 [
    i8 92, label %if.then40
    i8 38, label %if.then40
  ]

if.then40:                                        ; preds = %land.lhs.true32, %land.lhs.true32
  %incdec.ptr41 = getelementptr inbounds i8* %src.1116122, i64 1
  br label %if.end42

if.end42:                                         ; preds = %while.cond, %land.lhs.true32, %if.then40
  %c.0 = phi i8 [ %5, %if.then40 ], [ 92, %land.lhs.true32 ], [ %1, %while.cond ]
  %src.2 = phi i8* [ %incdec.ptr41, %if.then40 ], [ %src.1116122, %land.lhs.true32 ], [ %incdec.ptr, %while.cond ]
  %incdec.ptr43 = getelementptr inbounds i8* %dst.0.ph, i64 1
  store i8 %c.0, i8* %dst.0.ph, align 1, !tbaa !1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then63, %if.end42, %if.end
  %dst.0.ph = phi i8* [ %dest, %if.end ], [ %incdec.ptr43, %if.end42 ], [ %add.ptr, %if.then63 ]
  %src.0.ph = phi i8* [ %source, %if.end ], [ %src.2, %if.end42 ], [ %src.1120, %if.then63 ]
  br label %while.cond

if.else44:                                        ; preds = %while.cond, %if.end25
  %src.1120 = phi i8* [ %incdec.ptr21, %if.end25 ], [ %incdec.ptr, %while.cond ]
  %no.0119 = phi i32 [ %sub, %if.end25 ], [ 0, %while.cond ]
  %idxprom45 = sext i32 %no.0119 to i64
  %arrayidx46 = getelementptr inbounds %struct.sqd_regexp* %rp, i64 0, i32 0, i64 %idxprom45
  %6 = load i8** %arrayidx46, align 8, !tbaa !0
  %cmp47 = icmp eq i8* %6, null
  br i1 %cmp47, label %while.cond, label %land.lhs.true49

land.lhs.true49:                                  ; preds = %if.else44
  %arrayidx51 = getelementptr inbounds %struct.sqd_regexp* %rp, i64 0, i32 1, i64 %idxprom45
  %7 = load i8** %arrayidx51, align 8, !tbaa !0
  %cmp52 = icmp ne i8* %7, null
  %cmp61 = icmp ugt i8* %7, %6
  %or.cond114 = and i1 %cmp52, %cmp61
  br i1 %or.cond114, label %if.then63, label %while.cond

if.then63:                                        ; preds = %land.lhs.true49
  %sub.ptr.lhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call73 = tail call i8* @strncpy(i8* %dst.0.ph, i8* %6, i64 %sub.ptr.sub) #9
  %add.ptr = getelementptr inbounds i8* %dst.0.ph, i64 %sub.ptr.sub
  %add.ptr.sum = add i64 %sub.ptr.sub, -1
  %add.ptr74 = getelementptr inbounds i8* %dst.0.ph, i64 %add.ptr.sum
  %8 = load i8* %add.ptr74, align 1, !tbaa !1
  %cmp76 = icmp eq i8 %8, 0
  br i1 %cmp76, label %if.then78, label %while.cond.outer

if.then78:                                        ; preds = %if.then63
  tail call void @sqd_regerror(i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0)) #10
  unreachable

return:                                           ; preds = %while.cond
  store i8 0, i8* %dst.0.ph, align 1, !tbaa !1
  ret void
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #7

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @regmatch(%struct.exec* %ep, i8* %prog) #0 {
entry:
  %cmp237 = icmp eq i8* %prog, null
  br i1 %cmp237, label %for.end159, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %reginput = getelementptr inbounds %struct.exec* %ep, i64 0, i32 0
  %regbol = getelementptr inbounds %struct.exec* %ep, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.thread, %for.body.lr.ph, %for.cond.backedge
  %scan.0238 = phi i8* [ %prog, %for.body.lr.ph ], [ %call, %for.cond.backedge ], [ %add.ptr105, %for.cond.backedge.thread ]
  %call = tail call fastcc i8* @regnext(i8* %scan.0238) #10
  %0 = load i8* %scan.0238, align 1, !tbaa !1
  %conv = sext i8 %0 to i32
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
  ]

sw.bb:                                            ; preds = %for.body
  %1 = load i8** %reginput, align 8, !tbaa !0
  %2 = load i8** %regbol, align 8, !tbaa !0
  %cmp1 = icmp eq i8* %1, %2
  br i1 %cmp1, label %for.cond.backedge, label %return

for.cond.backedge:                                ; preds = %sw.bb, %sw.bb3, %if.end16, %if.end34, %if.end49, %if.end65, %for.body, %for.body
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %for.end159, label %for.body

sw.bb3:                                           ; preds = %for.body
  %3 = load i8** %reginput, align 8, !tbaa !0
  %4 = load i8* %3, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %4, 0
  br i1 %cmp6, label %for.cond.backedge, label %return

sw.bb10:                                          ; preds = %for.body
  %5 = load i8** %reginput, align 8, !tbaa !0
  %6 = load i8* %5, align 1, !tbaa !1
  %cmp13 = icmp eq i8 %6, 0
  br i1 %cmp13, label %return, label %if.end16

if.end16:                                         ; preds = %sw.bb10
  %incdec.ptr = getelementptr inbounds i8* %5, i64 1
  store i8* %incdec.ptr, i8** %reginput, align 8, !tbaa !0
  br label %for.cond.backedge

sw.bb18:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %scan.0238, i64 3
  %7 = load i8* %add.ptr, align 1, !tbaa !1
  %8 = load i8** %reginput, align 8, !tbaa !0
  %9 = load i8* %8, align 1, !tbaa !1
  %cmp22 = icmp eq i8 %7, %9
  br i1 %cmp22, label %if.end25, label %return

if.end25:                                         ; preds = %sw.bb18
  %call26 = tail call i64 @strlen(i8* %add.ptr) #11
  %cmp27 = icmp ugt i64 %call26, 1
  br i1 %cmp27, label %land.lhs.true, label %if.end34

land.lhs.true:                                    ; preds = %if.end25
  %call30 = tail call i32 @strncmp(i8* %add.ptr, i8* %8, i64 %call26) #11
  %cmp31 = icmp eq i32 %call30, 0
  br i1 %cmp31, label %if.end34, label %return

if.end34:                                         ; preds = %land.lhs.true, %if.end25
  %add.ptr36 = getelementptr inbounds i8* %8, i64 %call26
  store i8* %add.ptr36, i8** %reginput, align 8, !tbaa !0
  br label %for.cond.backedge

sw.bb37:                                          ; preds = %for.body
  %10 = load i8** %reginput, align 8, !tbaa !0
  %11 = load i8* %10, align 1, !tbaa !1
  %cmp40 = icmp eq i8 %11, 0
  br i1 %cmp40, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb37
  %conv39 = sext i8 %11 to i32
  %add.ptr42 = getelementptr inbounds i8* %scan.0238, i64 3
  %call45 = tail call i8* @strchr(i8* %add.ptr42, i32 %conv39) #11
  %cmp46 = icmp eq i8* %call45, null
  br i1 %cmp46, label %return, label %if.end49

if.end49:                                         ; preds = %lor.lhs.false
  %incdec.ptr51 = getelementptr inbounds i8* %10, i64 1
  store i8* %incdec.ptr51, i8** %reginput, align 8, !tbaa !0
  br label %for.cond.backedge

sw.bb52:                                          ; preds = %for.body
  %12 = load i8** %reginput, align 8, !tbaa !0
  %13 = load i8* %12, align 1, !tbaa !1
  %cmp55 = icmp eq i8 %13, 0
  br i1 %cmp55, label %return, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %sw.bb52
  %conv54 = sext i8 %13 to i32
  %add.ptr58 = getelementptr inbounds i8* %scan.0238, i64 3
  %call61 = tail call i8* @strchr(i8* %add.ptr58, i32 %conv54) #11
  %cmp62 = icmp eq i8* %call61, null
  br i1 %cmp62, label %if.end65, label %return

if.end65:                                         ; preds = %lor.lhs.false57
  %incdec.ptr67 = getelementptr inbounds i8* %12, i64 1
  store i8* %incdec.ptr67, i8** %reginput, align 8, !tbaa !0
  br label %for.cond.backedge

sw.bb68:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %14 = load i8** %reginput, align 8, !tbaa !0
  %call71 = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %call) #10
  %tobool = icmp eq i32 %call71, 0
  br i1 %tobool, label %return, label %if.then72

if.then72:                                        ; preds = %sw.bb68
  %conv69 = sext i8 %0 to i64
  %sub = add i64 %conv69, -20
  %regstartp = getelementptr inbounds %struct.exec* %ep, i64 0, i32 2
  %15 = load i8*** %regstartp, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8** %15, i64 %sub
  %16 = load i8** %arrayidx, align 8, !tbaa !0
  %cmp73 = icmp eq i8* %16, null
  br i1 %cmp73, label %if.then75, label %return

if.then75:                                        ; preds = %if.then72
  store i8* %14, i8** %arrayidx, align 8, !tbaa !0
  br label %return

sw.bb80:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %17 = load i8** %reginput, align 8, !tbaa !0
  %call86 = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %call) #10
  %tobool87 = icmp eq i32 %call86, 0
  br i1 %tobool87, label %return, label %if.then88

if.then88:                                        ; preds = %sw.bb80
  %conv82 = sext i8 %0 to i64
  %sub83 = add i64 %conv82, -30
  %regendp = getelementptr inbounds %struct.exec* %ep, i64 0, i32 3
  %18 = load i8*** %regendp, align 8, !tbaa !0
  %arrayidx90 = getelementptr inbounds i8** %18, i64 %sub83
  %19 = load i8** %arrayidx90, align 8, !tbaa !0
  %cmp91 = icmp eq i8* %19, null
  br i1 %cmp91, label %if.then93, label %return

if.then93:                                        ; preds = %if.then88
  store i8* %17, i8** %arrayidx90, align 8, !tbaa !0
  br label %return

sw.bb99:                                          ; preds = %for.body
  %20 = load i8** %reginput, align 8, !tbaa !0
  %21 = load i8* %call, align 1, !tbaa !1
  %cmp102 = icmp eq i8 %21, 6
  br i1 %cmp102, label %while.cond.preheader, label %for.cond.backedge.thread

while.cond.preheader:                             ; preds = %sw.bb99
  %cmp108217 = icmp eq i8 %0, 6
  br i1 %cmp108217, label %while.body, label %return

for.cond.backedge.thread:                         ; preds = %sw.bb99
  %add.ptr105 = getelementptr inbounds i8* %scan.0238, i64 3
  br label %for.body

while.body:                                       ; preds = %while.cond.preheader, %if.end114
  %scan.1218 = phi i8* [ %call116, %if.end114 ], [ %scan.0238, %while.cond.preheader ]
  %add.ptr110 = getelementptr inbounds i8* %scan.1218, i64 3
  %call111 = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %add.ptr110) #10
  %tobool112 = icmp eq i32 %call111, 0
  br i1 %tobool112, label %if.end114, label %return

if.end114:                                        ; preds = %while.body
  store i8* %20, i8** %reginput, align 8, !tbaa !0
  %call116 = tail call fastcc i8* @regnext(i8* %scan.1218) #10
  %22 = load i8* %call116, align 1, !tbaa !1
  %cmp108 = icmp eq i8 %22, 6
  br i1 %cmp108, label %while.body, label %return

sw.bb118:                                         ; preds = %for.body, %for.body
  %23 = load i8* %call, align 1, !tbaa !1
  %cmp120 = icmp eq i8 %23, 8
  br i1 %cmp120, label %cond.true, label %cond.end

cond.true:                                        ; preds = %sw.bb118
  %add.ptr122 = getelementptr inbounds i8* %call, i64 3
  %24 = load i8* %add.ptr122, align 1, !tbaa !1
  %phitmp = sext i8 %24 to i32
  br label %cond.end

cond.end:                                         ; preds = %sw.bb118, %cond.true
  %cond = phi i32 [ %phitmp, %cond.true ], [ 0, %sw.bb118 ]
  %25 = load i8** %reginput, align 8, !tbaa !0
  %not.cmp129 = icmp ne i8 %0, 10
  %conv132 = zext i1 %not.cmp129 to i64
  %add.ptr133 = getelementptr inbounds i8* %scan.0238, i64 3
  %26 = load i8* %add.ptr133, align 1, !tbaa !1
  %conv.i = sext i8 %26 to i32
  switch i32 %conv.i, label %sw.default.i [
    i32 3, label %sw.bb.i
    i32 8, label %sw.bb1.i
    i32 4, label %sw.bb6.i
    i32 5, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %cond.end
  %call.i = tail call i64 @strlen(i8* %25) #11
  br label %regrepeat.exit

sw.bb1.i:                                         ; preds = %cond.end
  %add.ptr.i = getelementptr inbounds i8* %scan.0238, i64 6
  %27 = load i8* %add.ptr.i, align 1, !tbaa !1
  %28 = load i8* %25, align 1, !tbaa !1
  %cmp21.i = icmp eq i8 %28, %27
  br i1 %cmp21.i, label %for.body.i, label %regrepeat.exit

for.body.i:                                       ; preds = %sw.bb1.i, %for.body.i
  %scan.023.i = phi i8* [ %incdec.ptr.i, %for.body.i ], [ %25, %sw.bb1.i ]
  %count.022.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %sw.bb1.i ]
  %inc.i = add i64 %count.022.i, 1
  %incdec.ptr.i = getelementptr inbounds i8* %scan.023.i, i64 1
  %29 = load i8* %incdec.ptr.i, align 1, !tbaa !1
  %cmp.i = icmp eq i8 %29, %27
  br i1 %cmp.i, label %for.body.i, label %regrepeat.exit

sw.bb6.i:                                         ; preds = %cond.end
  %add.ptr8.i = getelementptr inbounds i8* %scan.0238, i64 6
  %call9.i = tail call i64 @strspn(i8* %25, i8* %add.ptr8.i) #11
  br label %regrepeat.exit

sw.bb10.i:                                        ; preds = %cond.end
  %add.ptr12.i = getelementptr inbounds i8* %scan.0238, i64 6
  %call13.i = tail call i64 @strcspn(i8* %25, i8* %add.ptr12.i) #11
  br label %regrepeat.exit

sw.default.i:                                     ; preds = %cond.end
  tail call void @sqd_regerror(i8* getelementptr inbounds ([38 x i8]* @.str14, i64 0, i64 0)) #9
  unreachable

regrepeat.exit:                                   ; preds = %for.body.i, %sw.bb.i, %sw.bb1.i, %sw.bb6.i, %sw.bb10.i
  %retval.0.i = phi i64 [ %call13.i, %sw.bb10.i ], [ %call9.i, %sw.bb6.i ], [ %call.i, %sw.bb.i ], [ 0, %sw.bb1.i ], [ %inc.i, %for.body.i ]
  %add = add i64 %retval.0.i, 1
  %cmp136221 = icmp ugt i64 %add, %conv132
  br i1 %cmp136221, label %for.body138.lr.ph, label %return

for.body138.lr.ph:                                ; preds = %regrepeat.exit
  %cmp143 = icmp eq i32 %cond, 0
  br label %for.body138

for.body138:                                      ; preds = %for.body138.lr.ph, %for.cond135.backedge
  %no125.0222 = phi i64 [ %add, %for.body138.lr.ph ], [ %add.ptr139.sum, %for.cond135.backedge ]
  %add.ptr139.sum = add i64 %no125.0222, -1
  %add.ptr140 = getelementptr inbounds i8* %25, i64 %add.ptr139.sum
  store i8* %add.ptr140, i8** %reginput, align 8, !tbaa !0
  br i1 %cmp143, label %if.then151, label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %for.body138
  %30 = load i8* %add.ptr140, align 1, !tbaa !1
  %conv147 = sext i8 %30 to i32
  %cmp149 = icmp eq i32 %conv147, %cond
  br i1 %cmp149, label %if.then151, label %for.cond135.backedge

if.then151:                                       ; preds = %lor.lhs.false145, %for.body138
  %call152 = tail call fastcc i32 @regmatch(%struct.exec* %ep, i8* %call) #10
  %tobool153 = icmp eq i32 %call152, 0
  br i1 %tobool153, label %for.cond135.backedge, label %return

for.cond135.backedge:                             ; preds = %if.then151, %lor.lhs.false145
  %cmp136 = icmp ugt i64 %add.ptr139.sum, %conv132
  br i1 %cmp136, label %for.body138, label %return

sw.default:                                       ; preds = %for.body
  tail call void @sqd_regerror(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0)) #10
  unreachable

for.end159:                                       ; preds = %for.cond.backedge, %entry
  tail call void @sqd_regerror(i8* getelementptr inbounds ([19 x i8]* @.str13, i64 0, i64 0)) #10
  unreachable

return:                                           ; preds = %for.body, %sw.bb52, %lor.lhs.false57, %sw.bb37, %lor.lhs.false, %land.lhs.true, %sw.bb18, %sw.bb10, %sw.bb3, %sw.bb, %regrepeat.exit, %if.then151, %for.cond135.backedge, %while.cond.preheader, %while.body, %if.end114, %sw.bb80, %if.then88, %if.then93, %sw.bb68, %if.then72, %if.then75
  %retval.0 = phi i32 [ 1, %if.then75 ], [ 1, %if.then72 ], [ 0, %sw.bb68 ], [ 1, %if.then93 ], [ 1, %if.then88 ], [ 0, %sw.bb80 ], [ 0, %while.cond.preheader ], [ 1, %while.body ], [ 0, %if.end114 ], [ 0, %regrepeat.exit ], [ 1, %if.then151 ], [ 0, %for.cond135.backedge ], [ 1, %for.body ], [ 0, %sw.bb52 ], [ 0, %lor.lhs.false57 ], [ 0, %sw.bb37 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %sw.bb18 ], [ 0, %sw.bb10 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @regbranch(%struct.comp* %cp, i32* nocapture %flagp) #0 {
entry:
  %flags.i = alloca i32, align 4
  store i32 0, i32* %flagp, align 4, !tbaa !3
  %regcode.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %0 = load i8** %regcode.i, align 8, !tbaa !0
  %arraydecay.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i = icmp eq i8* %0, %arraydecay.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %regsize.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %1 = load i64* %regsize.i, align 8, !tbaa !4
  %add.i = add nsw i64 %1, 3
  store i64 %add.i, i64* %regsize.i, align 8, !tbaa !4
  br label %while.cond.preheader

if.end.i:                                         ; preds = %entry
  %incdec.ptr.i = getelementptr inbounds i8* %0, i64 1
  store i8 6, i8* %0, align 1, !tbaa !1
  %incdec.ptr2.i = getelementptr inbounds i8* %0, i64 2
  store i8 0, i8* %incdec.ptr.i, align 1, !tbaa !1
  %incdec.ptr3.i = getelementptr inbounds i8* %0, i64 3
  store i8 0, i8* %incdec.ptr2.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i, i8** %regcode.i, align 8, !tbaa !0
  %regsize.i263.i.pre = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then.i, %if.end.i
  %regsize.i263.i.pre-phi = phi i64* [ %regsize.i, %if.then.i ], [ %regsize.i263.i.pre, %if.end.i ]
  %regparse = getelementptr inbounds %struct.comp* %cp, i64 0, i32 0
  %2 = bitcast i32* %flags.i to i8*
  br label %while.cond

while.cond:                                       ; preds = %if.then11, %if.else, %while.cond.preheader
  %3 = phi i32 [ undef, %while.cond.preheader ], [ %48, %if.else ], [ %48, %if.then11 ]
  %chain.0 = phi i8* [ null, %while.cond.preheader ], [ %call.i, %if.else ], [ %call.i, %if.then11 ]
  %4 = load i8** %regparse, align 8, !tbaa !0
  %5 = load i8* %4, align 1, !tbaa !1
  switch i8 %5, label %while.body [
    i8 0, label %while.end
    i8 124, label %while.end
    i8 41, label %while.end
  ]

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 4, i8* %2) #3
  %call.i = call fastcc i8* @regatom(%struct.comp* %cp, i32* %flags.i) #9
  %cmp.i43 = icmp eq i8* %call.i, null
  br i1 %cmp.i43, label %return, label %if.end.i44

if.end.i44:                                       ; preds = %while.body
  %6 = load i8** %regparse, align 8, !tbaa !0
  %7 = load i8* %6, align 1, !tbaa !1
  %conv.i = sext i8 %7 to i32
  switch i8 %7, label %if.then10.i [
    i8 63, label %if.end11.i
    i8 43, label %if.end11.i
    i8 42, label %if.end11.i
  ]

if.then10.i:                                      ; preds = %if.end.i44
  %8 = load i32* %flags.i, align 4, !tbaa !3
  br label %if.end

if.end11.i:                                       ; preds = %if.end.i44, %if.end.i44, %if.end.i44
  %9 = load i32* %flags.i, align 4, !tbaa !3
  %and.i = and i32 %9, 1
  %tobool.i = icmp ne i32 %and.i, 0
  %cmp13.i = icmp eq i8 %7, 63
  %or.cond142.i = or i1 %tobool.i, %cmp13.i
  br i1 %or.cond142.i, label %if.end16.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @sqd_regerror(i8* getelementptr inbounds ([26 x i8]* @.str19, i64 0, i64 0)) #9
  unreachable

if.end16.i:                                       ; preds = %if.end11.i
  switch i32 %conv.i, label %sw.epilog.i [
    i32 42, label %sw.bb.i
    i32 43, label %sw.bb18.i
    i32 63, label %sw.bb19.i
  ]

sw.bb.i:                                          ; preds = %if.end16.i
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end16.i
  br label %sw.epilog.i

sw.bb19.i:                                        ; preds = %if.end16.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb19.i, %sw.bb18.i, %sw.bb.i, %if.end16.i
  %10 = phi i32 [ 0, %sw.bb19.i ], [ 5, %sw.bb18.i ], [ 4, %sw.bb.i ], [ %3, %if.end16.i ]
  switch i8 %7, label %if.else51.i [
    i8 42, label %land.lhs.true23.i
    i8 43, label %land.lhs.true38.i
  ]

land.lhs.true23.i:                                ; preds = %sw.epilog.i
  %and24.i = and i32 %9, 2
  %tobool25.i = icmp eq i32 %and24.i, 0
  %11 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i145.i = icmp eq i8* %11, %arraydecay.i
  br i1 %tobool25.i, label %if.then30.i, label %if.then26.i

if.then26.i:                                      ; preds = %land.lhs.true23.i
  br i1 %cmp.i145.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then26.i
  %12 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i.i = add nsw i64 %12, 3
  store i64 %add.i.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %if.end62.i

if.end.i.i:                                       ; preds = %if.then26.i
  %add.ptr.i.i = getelementptr inbounds i8* %call.i, i64 3
  %sub.ptr.lhs.cast.i.i = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i8* %call.i to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr.i.i, i8* %call.i, i64 %sub.ptr.sub.i.i, i32 1, i1 false) #3
  %13 = load i8** %regcode.i, align 8, !tbaa !0
  %add.ptr3.i.i = getelementptr inbounds i8* %13, i64 3
  store i8* %add.ptr3.i.i, i8** %regcode.i, align 8, !tbaa !0
  %incdec.ptr.i.i = getelementptr inbounds i8* %call.i, i64 1
  store i8 10, i8* %call.i, align 1, !tbaa !1
  %incdec.ptr4.i.i = getelementptr inbounds i8* %call.i, i64 2
  store i8 0, i8* %incdec.ptr.i.i, align 1, !tbaa !1
  store i8 0, i8* %incdec.ptr4.i.i, align 1, !tbaa !1
  br label %if.end62.i

if.then30.i:                                      ; preds = %land.lhs.true23.i
  br i1 %cmp.i145.i, label %reginsert.exit157.i.thread, label %reginsert.exit157.i

reginsert.exit157.i.thread:                       ; preds = %if.then30.i
  %14 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i147.i = add nsw i64 %14, 3
  store i64 %add.i147.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit.i.thread

reginsert.exit157.i:                              ; preds = %if.then30.i
  %add.ptr.i149.i = getelementptr inbounds i8* %call.i, i64 3
  %sub.ptr.lhs.cast.i150.i = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast.i151.i = ptrtoint i8* %call.i to i64
  %sub.ptr.sub.i152.i = sub i64 %sub.ptr.lhs.cast.i150.i, %sub.ptr.rhs.cast.i151.i
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr.i149.i, i8* %call.i, i64 %sub.ptr.sub.i152.i, i32 1, i1 false) #3
  %15 = load i8** %regcode.i, align 8, !tbaa !0
  %add.ptr3.i153.i = getelementptr inbounds i8* %15, i64 3
  store i8* %add.ptr3.i153.i, i8** %regcode.i, align 8, !tbaa !0
  %incdec.ptr.i154.i = getelementptr inbounds i8* %call.i, i64 1
  store i8 6, i8* %call.i, align 1, !tbaa !1
  %incdec.ptr4.i155.i = getelementptr inbounds i8* %call.i, i64 2
  store i8 0, i8* %incdec.ptr.i154.i, align 1, !tbaa !1
  store i8 0, i8* %incdec.ptr4.i155.i, align 1, !tbaa !1
  %.pre54 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i160.i = icmp eq i8* %.pre54, %arraydecay.i
  br i1 %cmp.i160.i, label %regnode.exit.i.thread, label %regnode.exit.i

regnode.exit.i.thread:                            ; preds = %reginsert.exit157.i, %reginsert.exit157.i.thread
  %16 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i162.i = add nsw i64 %16, 3
  store i64 %add.i162.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %if.then.i184.i

regnode.exit.i:                                   ; preds = %reginsert.exit157.i
  %incdec.ptr.i164.i = getelementptr inbounds i8* %.pre54, i64 1
  store i8 7, i8* %.pre54, align 1, !tbaa !1
  %incdec.ptr2.i.i = getelementptr inbounds i8* %.pre54, i64 2
  store i8 0, i8* %incdec.ptr.i164.i, align 1, !tbaa !1
  %incdec.ptr3.i.i = getelementptr inbounds i8* %.pre54, i64 3
  store i8 0, i8* %incdec.ptr2.i.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i.i, i8** %regcode.i, align 8, !tbaa !0
  %cmp.i168.i = icmp eq i8* %incdec.ptr3.i.i, %arraydecay.i
  br i1 %cmp.i168.i, label %if.then.i184.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %regnode.exit.i
  %17 = load i8* %call.i, align 1, !tbaa !1
  %cmp1.i.i = icmp eq i8 %17, 6
  br i1 %cmp1.i.i, label %if.end.i170.i, label %regoptail.exit.i

if.end.i170.i:                                    ; preds = %lor.lhs.false.i.i
  %add.ptr.i169.i = getelementptr inbounds i8* %call.i, i64 3
  call fastcc void @regtail(%struct.comp* %cp, i8* %add.ptr.i169.i, i8* %.pre54) #9
  %.pre55 = load i8** %regcode.i, align 8, !tbaa !0
  br label %regoptail.exit.i

regoptail.exit.i:                                 ; preds = %if.end.i170.i, %lor.lhs.false.i.i
  %18 = phi i8* [ %.pre55, %if.end.i170.i ], [ %incdec.ptr3.i.i, %lor.lhs.false.i.i ]
  %cmp.i173.i = icmp eq i8* %18, %arraydecay.i
  br i1 %cmp.i173.i, label %if.then.i184.i, label %lor.lhs.false.i175.i

lor.lhs.false.i175.i:                             ; preds = %regoptail.exit.i
  %19 = load i8* %call.i, align 1, !tbaa !1
  %cmp1.i174.i = icmp eq i8 %19, 6
  br i1 %cmp1.i174.i, label %if.end.i177.i, label %regoptail.exit178.i

if.end.i177.i:                                    ; preds = %lor.lhs.false.i175.i
  %add.ptr.i176.i = getelementptr inbounds i8* %call.i, i64 3
  call fastcc void @regtail(%struct.comp* %cp, i8* %add.ptr.i176.i, i8* %call.i) #9
  %.pre56 = load i8** %regcode.i, align 8, !tbaa !0
  br label %regoptail.exit178.i

regoptail.exit178.i:                              ; preds = %if.end.i177.i, %lor.lhs.false.i175.i
  %20 = phi i8* [ %.pre56, %if.end.i177.i ], [ %18, %lor.lhs.false.i175.i ]
  %cmp.i181.i = icmp eq i8* %20, %arraydecay.i
  br i1 %cmp.i181.i, label %if.then.i184.i, label %if.end.i188.i

if.then.i184.i:                                   ; preds = %regnode.exit.i.thread, %regnode.exit.i, %regoptail.exit.i, %regoptail.exit178.i
  %21 = phi i8* [ %20, %regoptail.exit178.i ], [ %arraydecay.i, %regoptail.exit.i ], [ %arraydecay.i, %regnode.exit.i ], [ %arraydecay.i, %regnode.exit.i.thread ]
  %22 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i183.i = add nsw i64 %22, 3
  store i64 %add.i183.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit189.i

if.end.i188.i:                                    ; preds = %regoptail.exit178.i
  %incdec.ptr.i185.i = getelementptr inbounds i8* %20, i64 1
  store i8 6, i8* %20, align 1, !tbaa !1
  %incdec.ptr2.i186.i = getelementptr inbounds i8* %20, i64 2
  store i8 0, i8* %incdec.ptr.i185.i, align 1, !tbaa !1
  %incdec.ptr3.i187.i = getelementptr inbounds i8* %20, i64 3
  store i8 0, i8* %incdec.ptr2.i186.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i187.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit189.i

regnode.exit189.i:                                ; preds = %if.end.i188.i, %if.then.i184.i
  %23 = phi i8* [ %20, %if.end.i188.i ], [ %21, %if.then.i184.i ]
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %23) #9
  %24 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i192.i = icmp eq i8* %24, %arraydecay.i
  br i1 %cmp.i192.i, label %if.then.i195.i, label %if.end.i199.i

if.then.i195.i:                                   ; preds = %regnode.exit189.i
  %25 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i194.i = add nsw i64 %25, 3
  store i64 %add.i194.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit200.i

if.end.i199.i:                                    ; preds = %regnode.exit189.i
  %incdec.ptr.i196.i = getelementptr inbounds i8* %24, i64 1
  store i8 9, i8* %24, align 1, !tbaa !1
  %incdec.ptr2.i197.i = getelementptr inbounds i8* %24, i64 2
  store i8 0, i8* %incdec.ptr.i196.i, align 1, !tbaa !1
  %incdec.ptr3.i198.i = getelementptr inbounds i8* %24, i64 3
  store i8 0, i8* %incdec.ptr2.i197.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i198.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit200.i

regnode.exit200.i:                                ; preds = %if.end.i199.i, %if.then.i195.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %24) #9
  br label %if.end62.i

land.lhs.true38.i:                                ; preds = %sw.epilog.i
  %and39.i = and i32 %9, 2
  %tobool40.i = icmp eq i32 %and39.i, 0
  %26 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i218.i = icmp eq i8* %26, %arraydecay.i
  br i1 %tobool40.i, label %if.then46.i, label %if.then41.i

if.then41.i:                                      ; preds = %land.lhs.true38.i
  br i1 %cmp.i218.i, label %if.then.i206.i, label %if.end.i214.i

if.then.i206.i:                                   ; preds = %if.then41.i
  %27 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i205.i = add nsw i64 %27, 3
  store i64 %add.i205.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %if.end62.i

if.end.i214.i:                                    ; preds = %if.then41.i
  %add.ptr.i207.i = getelementptr inbounds i8* %call.i, i64 3
  %sub.ptr.lhs.cast.i208.i = ptrtoint i8* %26 to i64
  %sub.ptr.rhs.cast.i209.i = ptrtoint i8* %call.i to i64
  %sub.ptr.sub.i210.i = sub i64 %sub.ptr.lhs.cast.i208.i, %sub.ptr.rhs.cast.i209.i
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr.i207.i, i8* %call.i, i64 %sub.ptr.sub.i210.i, i32 1, i1 false) #3
  %28 = load i8** %regcode.i, align 8, !tbaa !0
  %add.ptr3.i211.i = getelementptr inbounds i8* %28, i64 3
  store i8* %add.ptr3.i211.i, i8** %regcode.i, align 8, !tbaa !0
  %incdec.ptr.i212.i = getelementptr inbounds i8* %call.i, i64 1
  store i8 11, i8* %call.i, align 1, !tbaa !1
  %incdec.ptr4.i213.i = getelementptr inbounds i8* %call.i, i64 2
  store i8 0, i8* %incdec.ptr.i212.i, align 1, !tbaa !1
  store i8 0, i8* %incdec.ptr4.i213.i, align 1, !tbaa !1
  br label %if.end62.i

if.then46.i:                                      ; preds = %land.lhs.true38.i
  br i1 %cmp.i218.i, label %if.then.i221.i, label %if.end.i225.i

if.then.i221.i:                                   ; preds = %if.then46.i
  %29 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i220.i = add nsw i64 %29, 3
  store i64 %add.i220.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit226.i

if.end.i225.i:                                    ; preds = %if.then46.i
  %incdec.ptr.i222.i = getelementptr inbounds i8* %26, i64 1
  store i8 6, i8* %26, align 1, !tbaa !1
  %incdec.ptr2.i223.i = getelementptr inbounds i8* %26, i64 2
  store i8 0, i8* %incdec.ptr.i222.i, align 1, !tbaa !1
  %incdec.ptr3.i224.i = getelementptr inbounds i8* %26, i64 3
  store i8 0, i8* %incdec.ptr2.i223.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i224.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit226.i

regnode.exit226.i:                                ; preds = %if.end.i225.i, %if.then.i221.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %26) #9
  %30 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i229.i = icmp eq i8* %30, %arraydecay.i
  br i1 %cmp.i229.i, label %if.then.i232.i, label %if.end.i236.i

if.then.i232.i:                                   ; preds = %regnode.exit226.i
  %31 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i231.i = add nsw i64 %31, 3
  store i64 %add.i231.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit237.i

if.end.i236.i:                                    ; preds = %regnode.exit226.i
  %incdec.ptr.i233.i = getelementptr inbounds i8* %30, i64 1
  store i8 7, i8* %30, align 1, !tbaa !1
  %incdec.ptr2.i234.i = getelementptr inbounds i8* %30, i64 2
  store i8 0, i8* %incdec.ptr.i233.i, align 1, !tbaa !1
  %incdec.ptr3.i235.i = getelementptr inbounds i8* %30, i64 3
  store i8 0, i8* %incdec.ptr2.i234.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i235.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit237.i

regnode.exit237.i:                                ; preds = %if.end.i236.i, %if.then.i232.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %30, i8* %call.i) #9
  %32 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i240.i = icmp eq i8* %32, %arraydecay.i
  br i1 %cmp.i240.i, label %if.then.i243.i, label %if.end.i247.i

if.then.i243.i:                                   ; preds = %regnode.exit237.i
  %33 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i242.i = add nsw i64 %33, 3
  store i64 %add.i242.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit248.i

if.end.i247.i:                                    ; preds = %regnode.exit237.i
  %incdec.ptr.i244.i = getelementptr inbounds i8* %32, i64 1
  store i8 6, i8* %32, align 1, !tbaa !1
  %incdec.ptr2.i245.i = getelementptr inbounds i8* %32, i64 2
  store i8 0, i8* %incdec.ptr.i244.i, align 1, !tbaa !1
  %incdec.ptr3.i246.i = getelementptr inbounds i8* %32, i64 3
  store i8 0, i8* %incdec.ptr2.i245.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i246.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit248.i

regnode.exit248.i:                                ; preds = %if.end.i247.i, %if.then.i243.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %26, i8* %32) #9
  %34 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i251.i = icmp eq i8* %34, %arraydecay.i
  br i1 %cmp.i251.i, label %if.then.i254.i, label %if.end.i258.i

if.then.i254.i:                                   ; preds = %regnode.exit248.i
  %35 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i253.i = add nsw i64 %35, 3
  store i64 %add.i253.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit259.i

if.end.i258.i:                                    ; preds = %regnode.exit248.i
  %incdec.ptr.i255.i = getelementptr inbounds i8* %34, i64 1
  store i8 9, i8* %34, align 1, !tbaa !1
  %incdec.ptr2.i256.i = getelementptr inbounds i8* %34, i64 2
  store i8 0, i8* %incdec.ptr.i255.i, align 1, !tbaa !1
  %incdec.ptr3.i257.i = getelementptr inbounds i8* %34, i64 3
  store i8 0, i8* %incdec.ptr2.i256.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i257.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit259.i

regnode.exit259.i:                                ; preds = %if.end.i258.i, %if.then.i254.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %34) #9
  br label %if.end62.i

if.else51.i:                                      ; preds = %sw.epilog.i
  br i1 %cmp13.i, label %if.then55.i, label %if.end62.i

if.then55.i:                                      ; preds = %if.else51.i
  %36 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i262.i = icmp eq i8* %36, %arraydecay.i
  br i1 %cmp.i262.i, label %reginsert.exit274.i.thread, label %reginsert.exit274.i

reginsert.exit274.i.thread:                       ; preds = %if.then55.i
  %37 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i264.i = add nsw i64 %37, 3
  store i64 %add.i264.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %if.then.i280.i

reginsert.exit274.i:                              ; preds = %if.then55.i
  %add.ptr.i266.i = getelementptr inbounds i8* %call.i, i64 3
  %sub.ptr.lhs.cast.i267.i = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast.i268.i = ptrtoint i8* %call.i to i64
  %sub.ptr.sub.i269.i = sub i64 %sub.ptr.lhs.cast.i267.i, %sub.ptr.rhs.cast.i268.i
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %add.ptr.i266.i, i8* %call.i, i64 %sub.ptr.sub.i269.i, i32 1, i1 false) #3
  %38 = load i8** %regcode.i, align 8, !tbaa !0
  %add.ptr3.i270.i = getelementptr inbounds i8* %38, i64 3
  store i8* %add.ptr3.i270.i, i8** %regcode.i, align 8, !tbaa !0
  %incdec.ptr.i271.i = getelementptr inbounds i8* %call.i, i64 1
  store i8 6, i8* %call.i, align 1, !tbaa !1
  %incdec.ptr4.i272.i = getelementptr inbounds i8* %call.i, i64 2
  store i8 0, i8* %incdec.ptr.i271.i, align 1, !tbaa !1
  store i8 0, i8* %incdec.ptr4.i272.i, align 1, !tbaa !1
  %.pre = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i277.i = icmp eq i8* %.pre, %arraydecay.i
  br i1 %cmp.i277.i, label %if.then.i280.i, label %if.end.i284.i

if.then.i280.i:                                   ; preds = %reginsert.exit274.i.thread, %reginsert.exit274.i
  %39 = phi i8* [ %arraydecay.i, %reginsert.exit274.i.thread ], [ %.pre, %reginsert.exit274.i ]
  %40 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i279.i = add nsw i64 %40, 3
  store i64 %add.i279.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit285.i

if.end.i284.i:                                    ; preds = %reginsert.exit274.i
  %incdec.ptr.i281.i = getelementptr inbounds i8* %.pre, i64 1
  store i8 6, i8* %.pre, align 1, !tbaa !1
  %incdec.ptr2.i282.i = getelementptr inbounds i8* %.pre, i64 2
  store i8 0, i8* %incdec.ptr.i281.i, align 1, !tbaa !1
  %incdec.ptr3.i283.i = getelementptr inbounds i8* %.pre, i64 3
  store i8 0, i8* %incdec.ptr2.i282.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i283.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit285.i

regnode.exit285.i:                                ; preds = %if.end.i284.i, %if.then.i280.i
  %41 = phi i8* [ %.pre, %if.end.i284.i ], [ %39, %if.then.i280.i ]
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %41) #9
  %42 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i288.i = icmp eq i8* %42, %arraydecay.i
  br i1 %cmp.i288.i, label %if.then.i291.i, label %if.end.i295.i

if.then.i291.i:                                   ; preds = %regnode.exit285.i
  %43 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i290.i = add nsw i64 %43, 3
  store i64 %add.i290.i, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %regnode.exit296.i

if.end.i295.i:                                    ; preds = %regnode.exit285.i
  %incdec.ptr.i292.i = getelementptr inbounds i8* %42, i64 1
  store i8 9, i8* %42, align 1, !tbaa !1
  %incdec.ptr2.i293.i = getelementptr inbounds i8* %42, i64 2
  store i8 0, i8* %incdec.ptr.i292.i, align 1, !tbaa !1
  %incdec.ptr3.i294.i = getelementptr inbounds i8* %42, i64 3
  store i8 0, i8* %incdec.ptr2.i293.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i294.i, i8** %regcode.i, align 8, !tbaa !0
  br label %regnode.exit296.i

regnode.exit296.i:                                ; preds = %if.end.i295.i, %if.then.i291.i
  call fastcc void @regtail(%struct.comp* %cp, i8* %call.i, i8* %42) #9
  %44 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i299.i = icmp eq i8* %44, %arraydecay.i
  br i1 %cmp.i299.i, label %if.end62.i, label %lor.lhs.false.i301.i

lor.lhs.false.i301.i:                             ; preds = %regnode.exit296.i
  %45 = load i8* %call.i, align 1, !tbaa !1
  %cmp1.i300.i = icmp eq i8 %45, 6
  br i1 %cmp1.i300.i, label %if.end.i303.i, label %if.end62.i

if.end.i303.i:                                    ; preds = %lor.lhs.false.i301.i
  %add.ptr.i302.i = getelementptr inbounds i8* %call.i, i64 3
  call fastcc void @regtail(%struct.comp* %cp, i8* %add.ptr.i302.i, i8* %42) #9
  br label %if.end62.i

if.end62.i:                                       ; preds = %lor.lhs.false.i301.i, %regnode.exit296.i, %if.end.i303.i, %if.then.i206.i, %if.end.i214.i, %if.then.i.i, %if.end.i.i, %if.else51.i, %regnode.exit259.i, %regnode.exit200.i
  %46 = load i8** %regparse, align 8, !tbaa !0
  %incdec.ptr.i45 = getelementptr inbounds i8* %46, i64 1
  store i8* %incdec.ptr.i45, i8** %regparse, align 8, !tbaa !0
  %47 = load i8* %incdec.ptr.i45, align 1, !tbaa !1
  switch i8 %47, label %if.end [
    i8 42, label %if.then78.i
    i8 43, label %if.then78.i
    i8 63, label %if.then78.i
  ]

if.then78.i:                                      ; preds = %if.end62.i, %if.end62.i, %if.end62.i
  call void @sqd_regerror(i8* getelementptr inbounds ([11 x i8]* @.str20, i64 0, i64 0)) #9
  unreachable

if.end:                                           ; preds = %if.end62.i, %if.then10.i
  %48 = phi i32 [ %8, %if.then10.i ], [ %10, %if.end62.i ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #3
  %and = and i32 %48, 1
  %49 = load i32* %flagp, align 4, !tbaa !3
  %or = or i32 %49, %and
  store i32 %or, i32* %flagp, align 4, !tbaa !3
  %cmp9 = icmp eq i8* %chain.0, null
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %and12 = and i32 %48, 4
  %or13 = or i32 %or, %and12
  store i32 %or13, i32* %flagp, align 4, !tbaa !3
  br label %while.cond

if.else:                                          ; preds = %if.end
  call fastcc void @regtail(%struct.comp* %cp, i8* %chain.0, i8* %call.i) #10
  br label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond, %while.cond
  %cmp15 = icmp eq i8* %chain.0, null
  br i1 %cmp15, label %if.then17, label %return

if.then17:                                        ; preds = %while.end
  %50 = load i8** %regcode.i, align 8, !tbaa !0
  %cmp.i34 = icmp eq i8* %50, %arraydecay.i
  br i1 %cmp.i34, label %if.then.i37, label %if.end.i41

if.then.i37:                                      ; preds = %if.then17
  %51 = load i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  %add.i36 = add nsw i64 %51, 3
  store i64 %add.i36, i64* %regsize.i263.i.pre-phi, align 8, !tbaa !4
  br label %return

if.end.i41:                                       ; preds = %if.then17
  %incdec.ptr.i38 = getelementptr inbounds i8* %50, i64 1
  store i8 9, i8* %50, align 1, !tbaa !1
  %incdec.ptr2.i39 = getelementptr inbounds i8* %50, i64 2
  store i8 0, i8* %incdec.ptr.i38, align 1, !tbaa !1
  %incdec.ptr3.i40 = getelementptr inbounds i8* %50, i64 3
  store i8 0, i8* %incdec.ptr2.i39, align 1, !tbaa !1
  store i8* %incdec.ptr3.i40, i8** %regcode.i, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %while.body, %if.end.i41, %if.then.i37, %while.end
  %retval.0 = phi i8* [ %0, %while.end ], [ %0, %if.then.i37 ], [ %0, %if.end.i41 ], [ null, %while.body ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @regtail(%struct.comp* %cp, i8* %p, i8* %val) #0 {
entry:
  %regcode = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %0 = load i8** %regcode, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp = icmp eq i8* %0, %arraydecay
  br i1 %cmp, label %return, label %for.cond

for.cond:                                         ; preds = %entry, %for.cond
  %scan.0 = phi i8* [ %call, %for.cond ], [ %p, %entry ]
  %call = tail call fastcc i8* @regnext(i8* %scan.0) #10
  %cmp1 = icmp eq i8* %call, null
  br i1 %cmp1, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond
  %1 = load i8* %scan.0, align 1, !tbaa !1
  %cmp2 = icmp eq i8 %1, 7
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %sub.ptr.lhs.cast = ptrtoint i8* %scan.0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %val to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %sub.ptr.lhs.cast4 = ptrtoint i8* %val to i64
  %sub.ptr.rhs.cast5 = ptrtoint i8* %scan.0 to i64
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub.ptr.sub, %cond.true ], [ %sub.ptr.sub6, %cond.false ]
  %conv7 = trunc i64 %cond to i32
  %shr20 = lshr i32 %conv7, 8
  %shr20.tr = trunc i32 %shr20 to i8
  %conv8 = and i8 %shr20.tr, 127
  %add.ptr = getelementptr inbounds i8* %scan.0, i64 1
  store i8 %conv8, i8* %add.ptr, align 1, !tbaa !1
  %conv10 = trunc i64 %cond to i8
  %add.ptr11 = getelementptr inbounds i8* %scan.0, i64 2
  store i8 %conv10, i8* %add.ptr11, align 1, !tbaa !1
  br label %return

return:                                           ; preds = %entry, %cond.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @regatom(%struct.comp* %cp, i32* nocapture %flagp) #0 {
entry:
  %flags = alloca i32, align 4
  store i32 0, i32* %flagp, align 4, !tbaa !3
  %regparse = getelementptr inbounds %struct.comp* %cp, i64 0, i32 0
  %0 = load i8** %regparse, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i8* %0, i64 1
  store i8* %incdec.ptr, i8** %regparse, align 8, !tbaa !0
  %1 = load i8* %0, align 1, !tbaa !1
  %conv = sext i8 %1 to i32
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
  ]

sw.bb:                                            ; preds = %entry
  %regcode.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %2 = load i8** %regcode.i, align 8, !tbaa !0
  %arraydecay.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i = icmp eq i8* %2, %arraydecay.i
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  %regsize.i = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %3 = load i64* %regsize.i, align 8, !tbaa !4
  %add.i = add nsw i64 %3, 3
  store i64 %add.i, i64* %regsize.i, align 8, !tbaa !4
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %incdec.ptr.i = getelementptr inbounds i8* %2, i64 1
  store i8 1, i8* %2, align 1, !tbaa !1
  %incdec.ptr2.i = getelementptr inbounds i8* %2, i64 2
  store i8 0, i8* %incdec.ptr.i, align 1, !tbaa !1
  %incdec.ptr3.i = getelementptr inbounds i8* %2, i64 3
  store i8 0, i8* %incdec.ptr2.i, align 1, !tbaa !1
  store i8* %incdec.ptr3.i, i8** %regcode.i, align 8, !tbaa !0
  br label %return

sw.bb1:                                           ; preds = %entry
  %regcode.i180 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %4 = load i8** %regcode.i180, align 8, !tbaa !0
  %arraydecay.i181 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i182 = icmp eq i8* %4, %arraydecay.i181
  br i1 %cmp.i182, label %if.then.i185, label %if.end.i189

if.then.i185:                                     ; preds = %sw.bb1
  %regsize.i183 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %5 = load i64* %regsize.i183, align 8, !tbaa !4
  %add.i184 = add nsw i64 %5, 3
  store i64 %add.i184, i64* %regsize.i183, align 8, !tbaa !4
  br label %return

if.end.i189:                                      ; preds = %sw.bb1
  %incdec.ptr.i186 = getelementptr inbounds i8* %4, i64 1
  store i8 2, i8* %4, align 1, !tbaa !1
  %incdec.ptr2.i187 = getelementptr inbounds i8* %4, i64 2
  store i8 0, i8* %incdec.ptr.i186, align 1, !tbaa !1
  %incdec.ptr3.i188 = getelementptr inbounds i8* %4, i64 3
  store i8 0, i8* %incdec.ptr2.i187, align 1, !tbaa !1
  store i8* %incdec.ptr3.i188, i8** %regcode.i180, align 8, !tbaa !0
  br label %return

sw.bb3:                                           ; preds = %entry
  %regcode.i191 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %6 = load i8** %regcode.i191, align 8, !tbaa !0
  %arraydecay.i192 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i193 = icmp eq i8* %6, %arraydecay.i192
  br i1 %cmp.i193, label %if.then.i196, label %if.end.i200

if.then.i196:                                     ; preds = %sw.bb3
  %regsize.i194 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %7 = load i64* %regsize.i194, align 8, !tbaa !4
  %add.i195 = add nsw i64 %7, 3
  store i64 %add.i195, i64* %regsize.i194, align 8, !tbaa !4
  br label %regnode.exit201

if.end.i200:                                      ; preds = %sw.bb3
  %incdec.ptr.i197 = getelementptr inbounds i8* %6, i64 1
  store i8 3, i8* %6, align 1, !tbaa !1
  %incdec.ptr2.i198 = getelementptr inbounds i8* %6, i64 2
  store i8 0, i8* %incdec.ptr.i197, align 1, !tbaa !1
  %incdec.ptr3.i199 = getelementptr inbounds i8* %6, i64 3
  store i8 0, i8* %incdec.ptr2.i198, align 1, !tbaa !1
  store i8* %incdec.ptr3.i199, i8** %regcode.i191, align 8, !tbaa !0
  %.pre344 = load i32* %flagp, align 4, !tbaa !3
  %phitmp = or i32 %.pre344, 3
  br label %regnode.exit201

regnode.exit201:                                  ; preds = %if.then.i196, %if.end.i200
  %8 = phi i32 [ 3, %if.then.i196 ], [ %phitmp, %if.end.i200 ]
  store i32 %8, i32* %flagp, align 4, !tbaa !3
  br label %return

sw.bb5:                                           ; preds = %entry
  %9 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp = icmp eq i8 %9, 94
  %regcode.i202 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %10 = load i8** %regcode.i202, align 8, !tbaa !0
  %arraydecay.i203 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i204 = icmp eq i8* %10, %arraydecay.i203
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb5
  br i1 %cmp.i204, label %if.then.i207, label %if.end.i211

if.then.i207:                                     ; preds = %if.then
  %regsize.i205 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %11 = load i64* %regsize.i205, align 8, !tbaa !4
  %add.i206 = add nsw i64 %11, 3
  store i64 %add.i206, i64* %regsize.i205, align 8, !tbaa !4
  br label %regnode.exit212

if.end.i211:                                      ; preds = %if.then
  %incdec.ptr.i208 = getelementptr inbounds i8* %10, i64 1
  store i8 5, i8* %10, align 1, !tbaa !1
  %incdec.ptr2.i209 = getelementptr inbounds i8* %10, i64 2
  store i8 0, i8* %incdec.ptr.i208, align 1, !tbaa !1
  %incdec.ptr3.i210 = getelementptr inbounds i8* %10, i64 3
  store i8 0, i8* %incdec.ptr2.i209, align 1, !tbaa !1
  store i8* %incdec.ptr3.i210, i8** %regcode.i202, align 8, !tbaa !0
  %.pre345 = load i8** %regparse, align 8, !tbaa !0
  br label %regnode.exit212

regnode.exit212:                                  ; preds = %if.then.i207, %if.end.i211
  %12 = phi i8* [ %arraydecay.i203, %if.then.i207 ], [ %incdec.ptr3.i210, %if.end.i211 ]
  %13 = phi i8* [ %incdec.ptr, %if.then.i207 ], [ %.pre345, %if.end.i211 ]
  %incdec.ptr11 = getelementptr inbounds i8* %13, i64 1
  store i8* %incdec.ptr11, i8** %regparse, align 8, !tbaa !0
  br label %if.end

if.else:                                          ; preds = %sw.bb5
  br i1 %cmp.i204, label %if.then.i218, label %if.end.i222

if.then.i218:                                     ; preds = %if.else
  %regsize.i216 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %14 = load i64* %regsize.i216, align 8, !tbaa !4
  %add.i217 = add nsw i64 %14, 3
  store i64 %add.i217, i64* %regsize.i216, align 8, !tbaa !4
  br label %if.end

if.end.i222:                                      ; preds = %if.else
  %incdec.ptr.i219 = getelementptr inbounds i8* %10, i64 1
  store i8 4, i8* %10, align 1, !tbaa !1
  %incdec.ptr2.i220 = getelementptr inbounds i8* %10, i64 2
  store i8 0, i8* %incdec.ptr.i219, align 1, !tbaa !1
  %incdec.ptr3.i221 = getelementptr inbounds i8* %10, i64 3
  store i8 0, i8* %incdec.ptr2.i220, align 1, !tbaa !1
  store i8* %incdec.ptr3.i221, i8** %regcode.i202, align 8, !tbaa !0
  %.pre346 = load i8** %regparse, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.end.i222, %if.then.i218, %regnode.exit212
  %15 = phi i8* [ %incdec.ptr3.i221, %if.end.i222 ], [ %arraydecay.i203, %if.then.i218 ], [ %12, %regnode.exit212 ]
  %16 = phi i8* [ %.pre346, %if.end.i222 ], [ %incdec.ptr, %if.then.i218 ], [ %incdec.ptr11, %regnode.exit212 ]
  %17 = load i8* %16, align 1, !tbaa !1
  switch i8 %17, label %while.cond.preheader [
    i8 93, label %if.then19
    i8 45, label %if.then19
  ]

if.then19:                                        ; preds = %if.end, %if.end
  %cmp.i226 = icmp eq i8* %15, %arraydecay.i203
  br i1 %cmp.i226, label %if.else.i, label %if.then.i228

if.then.i228:                                     ; preds = %if.then19
  %incdec.ptr.i227 = getelementptr inbounds i8* %15, i64 1
  store i8* %incdec.ptr.i227, i8** %regcode.i202, align 8, !tbaa !0
  store i8 %17, i8* %15, align 1, !tbaa !1
  %.pre347 = load i8** %regparse, align 8, !tbaa !0
  br label %regc.exit

if.else.i:                                        ; preds = %if.then19
  %regsize.i229 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %18 = load i64* %regsize.i229, align 8, !tbaa !4
  %inc.i = add nsw i64 %18, 1
  store i64 %inc.i, i64* %regsize.i229, align 8, !tbaa !4
  br label %regc.exit

regc.exit:                                        ; preds = %if.then.i228, %if.else.i
  %19 = phi i8* [ %.pre347, %if.then.i228 ], [ %16, %if.else.i ]
  %incdec.ptr21 = getelementptr inbounds i8* %19, i64 1
  store i8* %incdec.ptr21, i8** %regparse, align 8, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %regc.exit, %if.end
  %20 = phi i8* [ %incdec.ptr21, %regc.exit ], [ %16, %if.end ]
  %regsize.i237 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %21 = phi i8* [ %.pre348, %while.cond.backedge ], [ %20, %while.cond.preheader ]
  %incdec.ptr24 = getelementptr inbounds i8* %21, i64 1
  store i8* %incdec.ptr24, i8** %regparse, align 8, !tbaa !0
  %22 = load i8* %21, align 1, !tbaa !1
  switch i8 %22, label %if.then32 [
    i8 0, label %while.end
    i8 93, label %while.end
    i8 45, label %if.else33
  ]

if.then32:                                        ; preds = %while.cond
  %23 = load i8** %regcode.i202, align 8, !tbaa !0
  %cmp.i233 = icmp eq i8* %23, %arraydecay.i203
  br i1 %cmp.i233, label %if.else.i239, label %if.then.i236

if.then.i236:                                     ; preds = %if.then32
  %incdec.ptr.i235 = getelementptr inbounds i8* %23, i64 1
  store i8* %incdec.ptr.i235, i8** %regcode.i202, align 8, !tbaa !0
  store i8 %22, i8* %23, align 1, !tbaa !1
  br label %while.cond.backedge

if.else.i239:                                     ; preds = %if.then32
  %24 = load i64* %regsize.i237, align 8, !tbaa !4
  %inc.i238 = add nsw i64 %24, 1
  store i64 %inc.i238, i64* %regsize.i237, align 8, !tbaa !4
  br label %while.cond.backedge

if.else33:                                        ; preds = %while.cond
  %25 = load i8* %incdec.ptr24, align 1, !tbaa !1
  switch i8 %25, label %if.else42 [
    i8 93, label %if.then41
    i8 0, label %if.then41
  ]

if.then41:                                        ; preds = %if.else33, %if.else33
  %26 = load i8** %regcode.i202, align 8, !tbaa !0
  %cmp.i244 = icmp eq i8* %26, %arraydecay.i203
  br i1 %cmp.i244, label %if.else.i249, label %if.then.i246

if.then.i246:                                     ; preds = %if.then41
  %incdec.ptr.i245 = getelementptr inbounds i8* %26, i64 1
  store i8* %incdec.ptr.i245, i8** %regcode.i202, align 8, !tbaa !0
  store i8 45, i8* %26, align 1, !tbaa !1
  br label %while.cond.backedge

if.else.i249:                                     ; preds = %if.then41
  %27 = load i64* %regsize.i237, align 8, !tbaa !4
  %inc.i248 = add nsw i64 %27, 1
  store i64 %inc.i248, i64* %regsize.i237, align 8, !tbaa !4
  br label %while.cond.backedge

if.else42:                                        ; preds = %if.else33
  %add.ptr = getelementptr inbounds i8* %21, i64 -1
  %28 = load i8* %add.ptr, align 1, !tbaa !1
  %conv46 = zext i8 %25 to i32
  %cmp47 = icmp ugt i8 %28, %25
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.else42
  call void @sqd_regerror(i8* getelementptr inbounds ([17 x i8]* @.str21, i64 0, i64 0)) #10
  unreachable

if.end50:                                         ; preds = %if.else42
  %cmp51340 = icmp ult i8 %28, %25
  br i1 %cmp51340, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end50
  %conv44 = zext i8 %28 to i32
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %range.0341.in = phi i32 [ %conv44, %for.body.lr.ph ], [ %range.0341, %for.cond.backedge ]
  %range.0341 = add nsw i32 %range.0341.in, 1
  %29 = load i8** %regcode.i202, align 8, !tbaa !0
  %cmp.i254 = icmp eq i8* %29, %arraydecay.i203
  br i1 %cmp.i254, label %if.else.i260, label %if.then.i257

if.then.i257:                                     ; preds = %for.body
  %b.i255 = trunc i32 %range.0341 to i8
  %incdec.ptr.i256 = getelementptr inbounds i8* %29, i64 1
  store i8* %incdec.ptr.i256, i8** %regcode.i202, align 8, !tbaa !0
  store i8 %b.i255, i8* %29, align 1, !tbaa !1
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then.i257, %if.else.i260
  %cmp51 = icmp slt i32 %range.0341, %conv46
  br i1 %cmp51, label %for.body, label %for.cond.for.end_crit_edge

if.else.i260:                                     ; preds = %for.body
  %30 = load i64* %regsize.i237, align 8, !tbaa !4
  %inc.i259 = add nsw i64 %30, 1
  store i64 %inc.i259, i64* %regsize.i237, align 8, !tbaa !4
  br label %for.cond.backedge

for.cond.for.end_crit_edge:                       ; preds = %for.cond.backedge
  %.pre349 = load i8** %regparse, align 8, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end50
  %31 = phi i8* [ %.pre349, %for.cond.for.end_crit_edge ], [ %incdec.ptr24, %if.end50 ]
  %incdec.ptr55 = getelementptr inbounds i8* %31, i64 1
  store i8* %incdec.ptr55, i8** %regparse, align 8, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %for.end, %if.then.i236, %if.else.i239, %if.then.i246, %if.else.i249
  %.pre348 = load i8** %regparse, align 8, !tbaa !0
  br label %while.cond

while.end:                                        ; preds = %while.cond, %while.cond
  %32 = load i8** %regcode.i202, align 8, !tbaa !0
  %cmp.i265 = icmp eq i8* %32, %arraydecay.i203
  br i1 %cmp.i265, label %if.else.i270, label %if.then.i267

if.then.i267:                                     ; preds = %while.end
  %incdec.ptr.i266 = getelementptr inbounds i8* %32, i64 1
  store i8* %incdec.ptr.i266, i8** %regcode.i202, align 8, !tbaa !0
  store i8 0, i8* %32, align 1, !tbaa !1
  br label %regc.exit272

if.else.i270:                                     ; preds = %while.end
  %33 = load i64* %regsize.i237, align 8, !tbaa !4
  %inc.i269 = add nsw i64 %33, 1
  store i64 %inc.i269, i64* %regsize.i237, align 8, !tbaa !4
  br label %regc.exit272

regc.exit272:                                     ; preds = %if.then.i267, %if.else.i270
  %cmp58 = icmp eq i8 %22, 93
  br i1 %cmp58, label %if.end61, label %if.then60

if.then60:                                        ; preds = %regc.exit272
  call void @sqd_regerror(i8* getelementptr inbounds ([13 x i8]* @.str22, i64 0, i64 0)) #10
  unreachable

if.end61:                                         ; preds = %regc.exit272
  %34 = load i32* %flagp, align 4, !tbaa !3
  %or62 = or i32 %34, 3
  store i32 %or62, i32* %flagp, align 4, !tbaa !3
  br label %return

sw.bb63:                                          ; preds = %entry
  %call64 = call fastcc i8* @reg(%struct.comp* %cp, i32 1, i32* %flags) #10
  %cmp65 = icmp eq i8* %call64, null
  br i1 %cmp65, label %return, label %if.end68

if.end68:                                         ; preds = %sw.bb63
  %35 = load i32* %flags, align 4, !tbaa !3
  %and = and i32 %35, 5
  %36 = load i32* %flagp, align 4, !tbaa !3
  %or69 = or i32 %36, %and
  store i32 %or69, i32* %flagp, align 4, !tbaa !3
  br label %return

sw.bb70:                                          ; preds = %entry, %entry, %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([32 x i8]* @.str23, i64 0, i64 0)) #10
  unreachable

sw.bb71:                                          ; preds = %entry, %entry, %entry
  call void @sqd_regerror(i8* getelementptr inbounds ([20 x i8]* @.str24, i64 0, i64 0)) #10
  unreachable

sw.bb72:                                          ; preds = %entry
  %37 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp75 = icmp eq i8 %37, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %sw.bb72
  call void @sqd_regerror(i8* getelementptr inbounds ([11 x i8]* @.str25, i64 0, i64 0)) #10
  unreachable

if.end78:                                         ; preds = %sw.bb72
  %regcode.i273 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %38 = load i8** %regcode.i273, align 8, !tbaa !0
  %arraydecay.i274 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i275 = icmp eq i8* %38, %arraydecay.i274
  br i1 %cmp.i275, label %regnode.exit283.thread, label %regnode.exit283

regnode.exit283.thread:                           ; preds = %if.end78
  %regsize.i276 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %39 = load i64* %regsize.i276, align 8, !tbaa !4
  %add.i277 = add nsw i64 %39, 3
  store i64 %add.i277, i64* %regsize.i276, align 8, !tbaa !4
  %incdec.ptr81355 = getelementptr inbounds i8* %0, i64 2
  store i8* %incdec.ptr81355, i8** %regparse, align 8, !tbaa !0
  br label %regc.exit294.thread

regnode.exit283:                                  ; preds = %if.end78
  %incdec.ptr.i279 = getelementptr inbounds i8* %38, i64 1
  store i8 8, i8* %38, align 1, !tbaa !1
  %incdec.ptr2.i280 = getelementptr inbounds i8* %38, i64 2
  store i8 0, i8* %incdec.ptr.i279, align 1, !tbaa !1
  %incdec.ptr3.i281 = getelementptr inbounds i8* %38, i64 3
  store i8 0, i8* %incdec.ptr2.i280, align 1, !tbaa !1
  store i8* %incdec.ptr3.i281, i8** %regcode.i273, align 8, !tbaa !0
  %.pre350 = load i8** %regparse, align 8, !tbaa !0
  %incdec.ptr81 = getelementptr inbounds i8* %.pre350, i64 1
  store i8* %incdec.ptr81, i8** %regparse, align 8, !tbaa !0
  %cmp.i286 = icmp eq i8* %incdec.ptr3.i281, %arraydecay.i274
  br i1 %cmp.i286, label %regc.exit294.thread, label %regc.exit294

regc.exit294.thread:                              ; preds = %regnode.exit283, %regnode.exit283.thread
  %regsize.i290 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %40 = load i64* %regsize.i290, align 8, !tbaa !4
  %inc.i291 = add nsw i64 %40, 1
  store i64 %inc.i291, i64* %regsize.i290, align 8, !tbaa !4
  br label %if.else.i302

regc.exit294:                                     ; preds = %regnode.exit283
  %41 = load i8* %.pre350, align 1, !tbaa !1
  %incdec.ptr.i288 = getelementptr inbounds i8* %38, i64 4
  store i8* %incdec.ptr.i288, i8** %regcode.i273, align 8, !tbaa !0
  store i8 %41, i8* %incdec.ptr3.i281, align 1, !tbaa !1
  %.pre351 = load i8** %regcode.i273, align 8, !tbaa !0
  %cmp.i297 = icmp eq i8* %.pre351, %arraydecay.i274
  br i1 %cmp.i297, label %if.else.i302, label %if.then.i299

if.then.i299:                                     ; preds = %regc.exit294
  %incdec.ptr.i298 = getelementptr inbounds i8* %.pre351, i64 1
  store i8* %incdec.ptr.i298, i8** %regcode.i273, align 8, !tbaa !0
  store i8 0, i8* %.pre351, align 1, !tbaa !1
  br label %regc.exit304

if.else.i302:                                     ; preds = %regc.exit294.thread, %regc.exit294
  %regsize.i300 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %42 = load i64* %regsize.i300, align 8, !tbaa !4
  %inc.i301 = add nsw i64 %42, 1
  store i64 %inc.i301, i64* %regsize.i300, align 8, !tbaa !4
  br label %regc.exit304

regc.exit304:                                     ; preds = %if.then.i299, %if.else.i302
  %43 = load i32* %flagp, align 4, !tbaa !3
  %or83 = or i32 %43, 3
  store i32 %or83, i32* %flagp, align 4, !tbaa !3
  br label %return

sw.default:                                       ; preds = %entry
  store i8* %0, i8** %regparse, align 8, !tbaa !0
  %call87 = call i64 @strcspn(i8* %0, i8* getelementptr inbounds ([12 x i8]* @.str26, i64 0, i64 0)) #11
  %cmp88 = icmp eq i64 %call87, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %sw.default
  call void @sqd_regerror(i8* getelementptr inbounds ([26 x i8]* @.str27, i64 0, i64 0)) #10
  unreachable

if.end91:                                         ; preds = %sw.default
  %cmp94 = icmp ugt i64 %call87, 1
  br i1 %cmp94, label %land.lhs.true, label %if.end108

land.lhs.true:                                    ; preds = %if.end91
  %add.ptr93 = getelementptr inbounds i8* %0, i64 %call87
  %44 = load i8* %add.ptr93, align 1, !tbaa !1
  switch i8 %44, label %if.end108 [
    i8 42, label %if.then107
    i8 43, label %if.then107
    i8 63, label %if.then107
  ]

if.then107:                                       ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true
  %dec = add i64 %call87, -1
  br label %if.end108

if.end108:                                        ; preds = %land.lhs.true, %if.then107, %if.end91
  %len.0 = phi i64 [ %dec, %if.then107 ], [ 1, %if.end91 ], [ %call87, %land.lhs.true ]
  %cmp110 = icmp eq i64 %len.0, 1
  %or113.or109.v = select i1 %cmp110, i32 3, i32 1
  store i32 %or113.or109.v, i32* %flagp, align 4, !tbaa !3
  %regcode.i305 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 2
  %45 = load i8** %regcode.i305, align 8, !tbaa !0
  %arraydecay.i306 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 3, i64 0
  %cmp.i307 = icmp eq i8* %45, %arraydecay.i306
  br i1 %cmp.i307, label %if.then.i310, label %if.end.i314

if.then.i310:                                     ; preds = %if.end108
  %regsize.i308 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %46 = load i64* %regsize.i308, align 8, !tbaa !4
  %add.i309 = add nsw i64 %46, 3
  store i64 %add.i309, i64* %regsize.i308, align 8, !tbaa !4
  br label %for.cond116.preheader

if.end.i314:                                      ; preds = %if.end108
  %incdec.ptr.i311 = getelementptr inbounds i8* %45, i64 1
  store i8 8, i8* %45, align 1, !tbaa !1
  %incdec.ptr2.i312 = getelementptr inbounds i8* %45, i64 2
  store i8 0, i8* %incdec.ptr.i311, align 1, !tbaa !1
  %incdec.ptr3.i313 = getelementptr inbounds i8* %45, i64 3
  store i8 0, i8* %incdec.ptr2.i312, align 1, !tbaa !1
  store i8* %incdec.ptr3.i313, i8** %regcode.i305, align 8, !tbaa !0
  br label %for.cond116.preheader

for.cond116.preheader:                            ; preds = %if.then.i310, %if.end.i314
  %47 = phi i8* [ %45, %if.then.i310 ], [ %incdec.ptr3.i313, %if.end.i314 ]
  %cmp117337 = icmp eq i64 %len.0, 0
  br i1 %cmp117337, label %for.end125, label %for.body119.lr.ph

for.body119.lr.ph:                                ; preds = %for.cond116.preheader
  %regsize.i322 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  br label %for.body119

for.body119:                                      ; preds = %regc.exit326, %for.body119.lr.ph
  %48 = phi i8* [ %47, %for.body119.lr.ph ], [ %.pre, %regc.exit326 ]
  %len.1338 = phi i64 [ %len.0, %for.body119.lr.ph ], [ %dec124, %regc.exit326 ]
  %49 = load i8** %regparse, align 8, !tbaa !0
  %incdec.ptr121 = getelementptr inbounds i8* %49, i64 1
  store i8* %incdec.ptr121, i8** %regparse, align 8, !tbaa !0
  %cmp.i318 = icmp eq i8* %48, %arraydecay.i306
  br i1 %cmp.i318, label %if.else.i324, label %if.then.i321

if.then.i321:                                     ; preds = %for.body119
  %50 = load i8* %49, align 1, !tbaa !1
  %incdec.ptr.i320 = getelementptr inbounds i8* %48, i64 1
  store i8* %incdec.ptr.i320, i8** %regcode.i305, align 8, !tbaa !0
  store i8 %50, i8* %48, align 1, !tbaa !1
  br label %regc.exit326

if.else.i324:                                     ; preds = %for.body119
  %51 = load i64* %regsize.i322, align 8, !tbaa !4
  %inc.i323 = add nsw i64 %51, 1
  store i64 %inc.i323, i64* %regsize.i322, align 8, !tbaa !4
  br label %regc.exit326

regc.exit326:                                     ; preds = %if.then.i321, %if.else.i324
  %dec124 = add i64 %len.1338, -1
  %cmp117 = icmp eq i64 %dec124, 0
  %.pre = load i8** %regcode.i305, align 8, !tbaa !0
  br i1 %cmp117, label %for.end125, label %for.body119

for.end125:                                       ; preds = %regc.exit326, %for.cond116.preheader
  %52 = phi i8* [ %47, %for.cond116.preheader ], [ %.pre, %regc.exit326 ]
  %cmp.i329 = icmp eq i8* %52, %arraydecay.i306
  br i1 %cmp.i329, label %if.else.i334, label %if.then.i331

if.then.i331:                                     ; preds = %for.end125
  %incdec.ptr.i330 = getelementptr inbounds i8* %52, i64 1
  store i8* %incdec.ptr.i330, i8** %regcode.i305, align 8, !tbaa !0
  store i8 0, i8* %52, align 1, !tbaa !1
  br label %return

if.else.i334:                                     ; preds = %for.end125
  %regsize.i332 = getelementptr inbounds %struct.comp* %cp, i64 0, i32 4
  %53 = load i64* %regsize.i332, align 8, !tbaa !4
  %inc.i333 = add nsw i64 %53, 1
  store i64 %inc.i333, i64* %regsize.i332, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.else.i334, %if.then.i331, %if.end.i189, %if.then.i185, %if.end.i, %if.then.i, %regnode.exit201, %if.end61, %if.end68, %regc.exit304, %sw.bb63
  %retval.0 = phi i8* [ null, %sw.bb63 ], [ %38, %regc.exit304 ], [ %call64, %if.end68 ], [ %10, %if.end61 ], [ %6, %regnode.exit201 ], [ %arraydecay.i, %if.then.i ], [ %2, %if.end.i ], [ %arraydecay.i181, %if.then.i185 ], [ %4, %if.end.i189 ], [ %45, %if.then.i331 ], [ %45, %if.else.i334 ]
  ret i8* %retval.0
}

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readonly }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}

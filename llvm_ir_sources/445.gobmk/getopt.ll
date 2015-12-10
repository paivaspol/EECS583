; ModuleID = '../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gg_option = type { i8*, i32, i32*, i32 }

@gg_optind = global i32 1, align 4
@gg_opterr = global i32 1, align 4
@gg_optopt = global i32 63, align 4
@gg_optarg = common global i8* null, align 8
@__getopt_initialized = common global i32 0, align 4
@nextchar = internal unnamed_addr global i8* null, align 8
@last_nonopt = internal unnamed_addr global i32 0, align 4
@first_nonopt = internal unnamed_addr global i32 0, align 4
@ordering = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@stderr = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [30 x i8] c"%s: option `%s' is ambiguous\0A\00", align 1
@.str2 = private unnamed_addr constant [45 x i8] c"%s: option `--%s' doesn't allow an argument\0A\00", align 1
@.str3 = private unnamed_addr constant [45 x i8] c"%s: option `%c%s' doesn't allow an argument\0A\00", align 1
@.str4 = private unnamed_addr constant [38 x i8] c"%s: option `%s' requires an argument\0A\00", align 1
@.str5 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `--%s'\0A\00", align 1
@.str6 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `%c%s'\0A\00", align 1
@.str7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@posixly_correct = internal unnamed_addr global i8* null, align 8
@.str8 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"%s: invalid option -- %c\0A\00", align 1
@.str10 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"%s: option `-W %s' is ambiguous\0A\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"%s: option `-W %s' doesn't allow an argument\0A\00", align 1
@.str13 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @getopt_internal(i32 %argc, i8** %argv, i8* %optstring, %struct.gg_option* %longopts, i32* %longind, i32 %long_only) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !32), !dbg !99
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !33), !dbg !100
  tail call void @llvm.dbg.value(metadata !{i8* %optstring}, i64 0, metadata !34), !dbg !101
  tail call void @llvm.dbg.value(metadata !{%struct.gg_option* %longopts}, i64 0, metadata !35), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i32* %longind}, i64 0, metadata !36), !dbg !103
  tail call void @llvm.dbg.value(metadata !{i32 %long_only}, i64 0, metadata !37), !dbg !104
  store i8* null, i8** @gg_optarg, align 8, !dbg !105, !tbaa !106
  %0 = load i32* @gg_optind, align 4, !dbg !109, !tbaa !110
  %cmp = icmp ne i32 %0, 0, !dbg !109
  %1 = load i32* @__getopt_initialized, align 4, !dbg !109, !tbaa !110
  %tobool = icmp ne i32 %1, 0, !dbg !109
  %or.cond = and i1 %cmp, %tobool, !dbg !109
  br i1 %or.cond, label %if.end3, label %if.then, !dbg !109

if.then:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %0, 0, !dbg !111
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !111

if.then2:                                         ; preds = %if.then
  store i32 1, i32* @gg_optind, align 4, !dbg !113, !tbaa !110
  br label %if.end, !dbg !113

if.end:                                           ; preds = %if.then2, %if.then
  %2 = phi i32 [ 1, %if.then2 ], [ %0, %if.then ]
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !114) #4, !dbg !116
  tail call void @llvm.dbg.value(metadata !117, i64 0, metadata !118) #4, !dbg !119
  store i32 %2, i32* @last_nonopt, align 4, !dbg !120, !tbaa !110
  store i32 %2, i32* @first_nonopt, align 4, !dbg !120, !tbaa !110
  store i8* null, i8** @nextchar, align 8, !dbg !121, !tbaa !106
  %call.i = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0)) #5, !dbg !122
  store i8* %call.i, i8** @posixly_correct, align 8, !dbg !122, !tbaa !106
  %3 = load i8* %optstring, align 1, !dbg !123, !tbaa !107
  switch i8 %3, label %if.else8.i [
    i8 45, label %if.then.i
    i8 43, label %if.then6.i
  ], !dbg !123

if.then.i:                                        ; preds = %if.end
  store i32 2, i32* @ordering, align 4, !dbg !124, !tbaa !126
  %incdec.ptr.i = getelementptr inbounds i8* %optstring, i64 1, !dbg !127
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !128) #4, !dbg !127
  br label %if.end3.thread, !dbg !129

if.then6.i:                                       ; preds = %if.end
  store i32 0, i32* @ordering, align 4, !dbg !130, !tbaa !126
  %incdec.ptr7.i = getelementptr inbounds i8* %optstring, i64 1, !dbg !132
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr7.i}, i64 0, metadata !128) #4, !dbg !132
  br label %if.end3.thread, !dbg !133

if.else8.i:                                       ; preds = %if.end
  %cmp9.i = icmp eq i8* %call.i, null, !dbg !134
  br i1 %cmp9.i, label %if.else12.i, label %if.then11.i, !dbg !134

if.then11.i:                                      ; preds = %if.else8.i
  store i32 0, i32* @ordering, align 4, !dbg !135, !tbaa !126
  br label %if.end3.thread, !dbg !135

if.else12.i:                                      ; preds = %if.else8.i
  store i32 1, i32* @ordering, align 4, !dbg !136, !tbaa !126
  br label %if.end3.thread

if.end3.thread:                                   ; preds = %if.else12.i, %if.then11.i, %if.then6.i, %if.then.i
  %optstring.addr.0.i = phi i8* [ %incdec.ptr.i, %if.then.i ], [ %incdec.ptr7.i, %if.then6.i ], [ %optstring, %if.then11.i ], [ %optstring, %if.else12.i ]
  tail call void @llvm.dbg.value(metadata !{i8* %optstring.addr.0.i}, i64 0, metadata !34), !dbg !115
  store i32 1, i32* @__getopt_initialized, align 4, !dbg !137, !tbaa !110
  br label %if.then8, !dbg !138

if.end3:                                          ; preds = %entry
  %.pre728 = load i8** @nextchar, align 8, !dbg !138, !tbaa !106
  %cmp4 = icmp eq i8* %.pre728, null, !dbg !138
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5, !dbg !138

lor.lhs.false5:                                   ; preds = %if.end3
  %4 = load i8* %.pre728, align 1, !dbg !138, !tbaa !107
  %cmp6 = icmp eq i8 %4, 0, !dbg !138
  br i1 %cmp6, label %if.then8, label %if.end108, !dbg !138

if.then8:                                         ; preds = %lor.lhs.false5, %if.end3, %if.end3.thread
  %optstring.addr.0732 = phi i8* [ %optstring.addr.0.i, %if.end3.thread ], [ %optstring, %if.end3 ], [ %optstring, %lor.lhs.false5 ]
  %5 = phi i32 [ %2, %if.end3.thread ], [ %0, %if.end3 ], [ %0, %lor.lhs.false5 ]
  %6 = load i32* @last_nonopt, align 4, !dbg !139, !tbaa !110
  %cmp9 = icmp sgt i32 %6, %5, !dbg !139
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !139

if.then11:                                        ; preds = %if.then8
  store i32 %5, i32* @last_nonopt, align 4, !dbg !141, !tbaa !110
  br label %if.end12, !dbg !141

if.end12:                                         ; preds = %if.then8, %if.then11
  %7 = phi i32 [ %5, %if.then11 ], [ %6, %if.then8 ]
  %8 = load i32* @first_nonopt, align 4, !dbg !142, !tbaa !110
  %cmp13 = icmp sgt i32 %8, %5, !dbg !142
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !142

if.then15:                                        ; preds = %if.end12
  store i32 %5, i32* @first_nonopt, align 4, !dbg !143, !tbaa !110
  br label %if.end16, !dbg !143

if.end16:                                         ; preds = %if.end12, %if.then15
  %9 = phi i32 [ %5, %if.then15 ], [ %8, %if.end12 ]
  %10 = load i32* @ordering, align 4, !dbg !144, !tbaa !126
  %cmp17 = icmp eq i32 %10, 1, !dbg !144
  br i1 %cmp17, label %if.then19, label %if.end42, !dbg !144

if.then19:                                        ; preds = %if.end16
  %cmp20 = icmp eq i32 %9, %7, !dbg !145
  %cmp22 = icmp eq i32 %7, %5, !dbg !145
  %or.cond670 = or i1 %cmp20, %cmp22, !dbg !145
  br i1 %or.cond670, label %if.else, label %if.then24, !dbg !145

if.then24:                                        ; preds = %if.then19
  tail call fastcc void @exchange(i8** %argv) #6, !dbg !147
  %.pre = load i32* @gg_optind, align 4, !dbg !148, !tbaa !110
  br label %while.cond.preheader, !dbg !147

if.else:                                          ; preds = %if.then19
  br i1 %cmp22, label %while.cond.preheader, label %if.then27, !dbg !149

if.then27:                                        ; preds = %if.else
  store i32 %5, i32* @first_nonopt, align 4, !dbg !150, !tbaa !110
  br label %while.cond.preheader, !dbg !150

while.cond.preheader:                             ; preds = %if.then27, %if.then24, %if.else
  %11 = phi i32 [ %5, %if.then27 ], [ %.pre, %if.then24 ], [ %5, %if.else ]
  %cmp30716 = icmp slt i32 %11, %argc, !dbg !148
  br i1 %cmp30716, label %land.rhs, label %while.end, !dbg !148

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %12 = phi i32 [ %inc, %while.body ], [ %11, %while.cond.preheader ]
  %idxprom = sext i32 %12 to i64, !dbg !148
  %arrayidx = getelementptr inbounds i8** %argv, i64 %idxprom, !dbg !148
  %13 = load i8** %arrayidx, align 8, !dbg !148, !tbaa !106
  %14 = load i8* %13, align 1, !dbg !148, !tbaa !107
  %cmp34 = icmp eq i8 %14, 45, !dbg !148
  br i1 %cmp34, label %land.end, label %while.body, !dbg !148

land.end:                                         ; preds = %land.rhs
  %arrayidx38 = getelementptr inbounds i8* %13, i64 1, !dbg !148
  %15 = load i8* %arrayidx38, align 1, !dbg !148, !tbaa !107
  %cmp40 = icmp eq i8 %15, 0, !dbg !148
  br i1 %cmp40, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs, %land.end
  %inc = add nsw i32 %12, 1, !dbg !151
  store i32 %inc, i32* @gg_optind, align 4, !dbg !151, !tbaa !110
  %cmp30 = icmp slt i32 %inc, %argc, !dbg !148
  br i1 %cmp30, label %land.rhs, label %while.end, !dbg !148

while.end:                                        ; preds = %land.end, %while.cond.preheader, %while.body
  %16 = phi i32 [ %11, %while.cond.preheader ], [ %inc, %while.body ], [ %12, %land.end ]
  store i32 %16, i32* @last_nonopt, align 4, !dbg !152, !tbaa !110
  br label %if.end42, !dbg !153

if.end42:                                         ; preds = %while.end, %if.end16
  %17 = phi i32 [ %16, %while.end ], [ %7, %if.end16 ]
  %18 = phi i32 [ %16, %while.end ], [ %5, %if.end16 ]
  %cmp43 = icmp eq i32 %18, %argc, !dbg !154
  br i1 %cmp43, label %if.then67, label %land.lhs.true45, !dbg !154

land.lhs.true45:                                  ; preds = %if.end42
  %idxprom46 = sext i32 %18 to i64, !dbg !154
  %arrayidx47 = getelementptr inbounds i8** %argv, i64 %idxprom46, !dbg !154
  %19 = load i8** %arrayidx47, align 8, !dbg !154, !tbaa !106
  %call48 = tail call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #7, !dbg !154
  %tobool49 = icmp eq i32 %call48, 0, !dbg !154
  br i1 %tobool49, label %if.then50, label %if.end64, !dbg !154

if.then50:                                        ; preds = %land.lhs.true45
  %inc51 = add nsw i32 %18, 1, !dbg !155
  store i32 %inc51, i32* @gg_optind, align 4, !dbg !155, !tbaa !110
  %20 = load i32* @first_nonopt, align 4, !dbg !157, !tbaa !110
  %cmp52 = icmp eq i32 %20, %17, !dbg !157
  %cmp55 = icmp eq i32 %17, %inc51, !dbg !157
  %or.cond671 = or i1 %cmp52, %cmp55, !dbg !157
  br i1 %or.cond671, label %if.else58, label %if.then57, !dbg !157

if.then57:                                        ; preds = %if.then50
  tail call fastcc void @exchange(i8** %argv) #6, !dbg !158
  br label %if.end63, !dbg !158

if.else58:                                        ; preds = %if.then50
  br i1 %cmp52, label %if.then61, label %if.end63, !dbg !159

if.then61:                                        ; preds = %if.else58
  store i32 %inc51, i32* @first_nonopt, align 4, !dbg !160, !tbaa !110
  br label %if.end63, !dbg !160

if.end63:                                         ; preds = %if.else58, %if.then61, %if.then57
  store i32 %argc, i32* @last_nonopt, align 4, !dbg !161, !tbaa !110
  store i32 %argc, i32* @gg_optind, align 4, !dbg !162, !tbaa !110
  br label %if.then67, !dbg !163

if.end64:                                         ; preds = %land.lhs.true45
  %cmp65 = icmp eq i32 %18, %argc, !dbg !164
  br i1 %cmp65, label %if.then67, label %if.end72, !dbg !164

if.then67:                                        ; preds = %if.end63, %if.end42, %if.end64
  %21 = phi i32 [ %17, %if.end64 ], [ %17, %if.end42 ], [ %argc, %if.end63 ]
  %22 = load i32* @first_nonopt, align 4, !dbg !165, !tbaa !110
  %cmp68 = icmp eq i32 %22, %21, !dbg !165
  br i1 %cmp68, label %return, label %if.then70, !dbg !165

if.then70:                                        ; preds = %if.then67
  store i32 %22, i32* @gg_optind, align 4, !dbg !167, !tbaa !110
  br label %return, !dbg !167

if.end72:                                         ; preds = %if.end64
  %idxprom73 = sext i32 %18 to i64, !dbg !168
  %arrayidx74 = getelementptr inbounds i8** %argv, i64 %idxprom73, !dbg !168
  %23 = load i8** %arrayidx74, align 8, !dbg !168, !tbaa !106
  %24 = load i8* %23, align 1, !dbg !168, !tbaa !107
  %cmp77 = icmp eq i8 %24, 45, !dbg !168
  br i1 %cmp77, label %lor.lhs.false79, label %if.then86, !dbg !168

lor.lhs.false79:                                  ; preds = %if.end72
  %arrayidx82 = getelementptr inbounds i8* %23, i64 1, !dbg !168
  %25 = load i8* %arrayidx82, align 1, !dbg !168, !tbaa !107
  %cmp84 = icmp eq i8 %25, 0, !dbg !168
  br i1 %cmp84, label %if.then86, label %if.end94, !dbg !168

if.then86:                                        ; preds = %lor.lhs.false79, %if.end72
  %26 = load i32* @ordering, align 4, !dbg !169, !tbaa !126
  %cmp87 = icmp eq i32 %26, 0, !dbg !169
  br i1 %cmp87, label %return, label %if.end90, !dbg !169

if.end90:                                         ; preds = %if.then86
  %inc91 = add nsw i32 %18, 1, !dbg !171
  store i32 %inc91, i32* @gg_optind, align 4, !dbg !171, !tbaa !110
  store i8* %23, i8** @gg_optarg, align 8, !dbg !171, !tbaa !106
  br label %return, !dbg !172

if.end94:                                         ; preds = %lor.lhs.false79
  %cmp97 = icmp eq %struct.gg_option* %longopts, null, !dbg !173
  br i1 %cmp97, label %land.end106, label %land.rhs99, !dbg !173

land.rhs99:                                       ; preds = %if.end94
  %cmp104 = icmp eq i8 %25, 45, !dbg !173
  %phitmp = select i1 %cmp104, i64 2, i64 1
  br label %land.end106

land.end106:                                      ; preds = %if.end94, %land.rhs99
  %27 = phi i64 [ 1, %if.end94 ], [ %phitmp, %land.rhs99 ]
  %add.ptr107 = getelementptr inbounds i8* %23, i64 %27
  store i8* %add.ptr107, i8** @nextchar, align 8, !tbaa !106
  br label %if.end108, !dbg !174

if.end108:                                        ; preds = %land.end106, %lor.lhs.false5
  %optstring.addr.0731 = phi i8* [ %optstring.addr.0732, %land.end106 ], [ %optstring, %lor.lhs.false5 ]
  %28 = phi i32 [ %18, %land.end106 ], [ %0, %lor.lhs.false5 ]
  %29 = phi i8* [ %add.ptr107, %land.end106 ], [ %.pre728, %lor.lhs.false5 ]
  %cmp109 = icmp eq %struct.gg_option* %longopts, null, !dbg !175
  br i1 %cmp109, label %if.end301, label %land.lhs.true111, !dbg !175

land.lhs.true111:                                 ; preds = %if.end108
  %idxprom112 = sext i32 %28 to i64, !dbg !175
  %arrayidx113 = getelementptr inbounds i8** %argv, i64 %idxprom112, !dbg !175
  %30 = load i8** %arrayidx113, align 8, !dbg !175, !tbaa !106
  %arrayidx114 = getelementptr inbounds i8* %30, i64 1, !dbg !175
  %31 = load i8* %arrayidx114, align 1, !dbg !175, !tbaa !107
  %conv115 = sext i8 %31 to i32, !dbg !175
  %cmp116 = icmp eq i8 %31, 45, !dbg !175
  br i1 %cmp116, label %for.cond, label %lor.lhs.false118, !dbg !175

lor.lhs.false118:                                 ; preds = %land.lhs.true111
  %tobool119 = icmp eq i32 %long_only, 0, !dbg !175
  br i1 %tobool119, label %if.end301, label %land.lhs.true120, !dbg !175

land.lhs.true120:                                 ; preds = %lor.lhs.false118
  %arrayidx123 = getelementptr inbounds i8* %30, i64 2, !dbg !175
  %32 = load i8* %arrayidx123, align 1, !dbg !175, !tbaa !107
  %tobool125 = icmp eq i8 %32, 0, !dbg !175
  br i1 %tobool125, label %lor.lhs.false126, label %for.cond, !dbg !175

lor.lhs.false126:                                 ; preds = %land.lhs.true120
  %call131 = tail call i8* @strchr(i8* %optstring.addr.0731, i32 %conv115) #7, !dbg !176
  %tobool132 = icmp eq i8* %call131, null, !dbg !176
  br i1 %tobool132, label %for.cond, label %if.end301, !dbg !176

for.cond:                                         ; preds = %land.lhs.true111, %land.lhs.true120, %lor.lhs.false126, %for.inc
  %nameend.0 = phi i8* [ %incdec.ptr, %for.inc ], [ %29, %lor.lhs.false126 ], [ %29, %land.lhs.true120 ], [ %29, %land.lhs.true111 ]
  %33 = load i8* %nameend.0, align 1, !dbg !177, !tbaa !107
  switch i8 %33, label %for.inc [
    i8 0, label %for.cond142.preheader
    i8 61, label %for.cond142.preheader
  ], !dbg !177

for.cond142.preheader:                            ; preds = %for.cond, %for.cond
  %name706 = getelementptr inbounds %struct.gg_option* %longopts, i64 0, i32 0, !dbg !179
  %34 = load i8** %name706, align 8, !dbg !179, !tbaa !106
  %tobool143707 = icmp eq i8* %34, null, !dbg !179
  br i1 %tobool143707, label %if.end264, label %for.body144.lr.ph, !dbg !179

for.body144.lr.ph:                                ; preds = %for.cond142.preheader
  %sub.ptr.lhs.cast = ptrtoint i8* %nameend.0 to i64, !dbg !181
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64, !dbg !181
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !181
  %conv152 = trunc i64 %sub.ptr.sub to i32, !dbg !182
  br label %for.body144, !dbg !179

for.inc:                                          ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i8* %nameend.0, i64 1, !dbg !177
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !38), !dbg !177
  br label %for.cond, !dbg !177

for.body144:                                      ; preds = %for.body144.lr.ph, %for.inc167
  %35 = phi i8* [ %34, %for.body144.lr.ph ], [ %36, %for.inc167 ]
  %option_index.0712 = phi i32 [ 0, %for.body144.lr.ph ], [ %inc169, %for.inc167 ]
  %indfound.0711 = phi i32 [ -1, %for.body144.lr.ph ], [ %indfound.1, %for.inc167 ]
  %ambig.0710 = phi i32 [ 0, %for.body144.lr.ph ], [ %ambig.1, %for.inc167 ]
  %pfound.0709 = phi %struct.gg_option* [ null, %for.body144.lr.ph ], [ %pfound.1, %for.inc167 ]
  %p.0708 = phi %struct.gg_option* [ %longopts, %for.body144.lr.ph ], [ %incdec.ptr168, %for.inc167 ]
  %call146 = tail call i32 @strncmp(i8* %35, i8* %29, i64 %sub.ptr.sub) #7, !dbg !181
  %tobool147 = icmp eq i32 %call146, 0, !dbg !181
  br i1 %tobool147, label %if.then148, label %for.inc167, !dbg !181

if.then148:                                       ; preds = %for.body144
  %call154 = tail call i64 @strlen(i8* %35) #7, !dbg !184
  %conv155 = trunc i64 %call154 to i32, !dbg !184
  %cmp156 = icmp eq i32 %conv152, %conv155, !dbg !184
  br i1 %cmp156, label %if.end185, label %if.else159, !dbg !184

if.else159:                                       ; preds = %if.then148
  %cmp160 = icmp eq %struct.gg_option* %pfound.0709, null, !dbg !185
  %p.0.pfound.0 = select i1 %cmp160, %struct.gg_option* %p.0708, %struct.gg_option* %pfound.0709, !dbg !186
  %ambig.0. = select i1 %cmp160, i32 %ambig.0710, i32 1, !dbg !186
  %option_index.0.indfound.0 = select i1 %cmp160, i32 %option_index.0712, i32 %indfound.0711, !dbg !186
  br label %for.inc167, !dbg !186

for.inc167:                                       ; preds = %if.else159, %for.body144
  %pfound.1 = phi %struct.gg_option* [ %pfound.0709, %for.body144 ], [ %p.0.pfound.0, %if.else159 ]
  %ambig.1 = phi i32 [ %ambig.0710, %for.body144 ], [ %ambig.0., %if.else159 ]
  %indfound.1 = phi i32 [ %indfound.0711, %for.body144 ], [ %option_index.0.indfound.0, %if.else159 ]
  %incdec.ptr168 = getelementptr inbounds %struct.gg_option* %p.0708, i64 1, !dbg !179
  tail call void @llvm.dbg.value(metadata !{%struct.gg_option* %incdec.ptr168}, i64 0, metadata !40), !dbg !179
  %inc169 = add nsw i32 %option_index.0712, 1, !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32 %inc169}, i64 0, metadata !45), !dbg !179
  %name = getelementptr inbounds %struct.gg_option* %incdec.ptr168, i64 0, i32 0, !dbg !179
  %36 = load i8** %name, align 8, !dbg !179, !tbaa !106
  %tobool143 = icmp eq i8* %36, null, !dbg !179
  br i1 %tobool143, label %for.end170, label %for.body144, !dbg !179

for.end170:                                       ; preds = %for.inc167
  %tobool171 = icmp eq i32 %ambig.1, 0, !dbg !188
  br i1 %tobool171, label %if.end185, label %if.then174, !dbg !188

if.then174:                                       ; preds = %for.end170
  %37 = load i32* @gg_opterr, align 4, !dbg !189, !tbaa !110
  %tobool175 = icmp eq i32 %37, 0, !dbg !189
  br i1 %tobool175, label %if.end181, label %if.then176, !dbg !189

if.then176:                                       ; preds = %if.then174
  %38 = load %struct._IO_FILE** @stderr, align 8, !dbg !191, !tbaa !106
  %39 = load i8** %argv, align 8, !dbg !191, !tbaa !106
  %call180 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0), i8* %39, i8* %30) #5, !dbg !191
  %.pre725 = load i8** @nextchar, align 8, !dbg !192, !tbaa !106
  %.pre726 = load i32* @gg_optind, align 4, !dbg !193, !tbaa !110
  br label %if.end181, !dbg !191

if.end181:                                        ; preds = %if.then174, %if.then176
  %40 = phi i32 [ %28, %if.then174 ], [ %.pre726, %if.then176 ]
  %41 = phi i8* [ %29, %if.then174 ], [ %.pre725, %if.then176 ]
  %call182 = tail call i64 @strlen(i8* %41) #7, !dbg !192
  %add.ptr183 = getelementptr inbounds i8* %41, i64 %call182, !dbg !192
  store i8* %add.ptr183, i8** @nextchar, align 8, !dbg !192, !tbaa !106
  %inc184 = add nsw i32 %40, 1, !dbg !193
  store i32 %inc184, i32* @gg_optind, align 4, !dbg !193, !tbaa !110
  store i32 0, i32* @gg_optopt, align 4, !dbg !194, !tbaa !110
  br label %return, !dbg !195

if.end185:                                        ; preds = %if.then148, %for.end170
  %indfound.2681 = phi i32 [ %indfound.1, %for.end170 ], [ %option_index.0712, %if.then148 ]
  %pfound.2680 = phi %struct.gg_option* [ %pfound.1, %for.end170 ], [ %p.0708, %if.then148 ]
  %cmp186 = icmp eq %struct.gg_option* %pfound.2680, null, !dbg !196
  br i1 %cmp186, label %if.end264, label %if.then188, !dbg !196

if.then188:                                       ; preds = %if.end185
  tail call void @llvm.dbg.value(metadata !{i32 %indfound.2681}, i64 0, metadata !45), !dbg !197
  %inc189 = add nsw i32 %28, 1, !dbg !199
  store i32 %inc189, i32* @gg_optind, align 4, !dbg !199, !tbaa !110
  %42 = load i8* %nameend.0, align 1, !dbg !200, !tbaa !107
  %tobool190 = icmp eq i8 %42, 0, !dbg !200
  %has_arg = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 1, !dbg !201
  %43 = load i32* %has_arg, align 4, !dbg !201, !tbaa !110
  br i1 %tobool190, label %if.else222, label %if.then191, !dbg !200

if.then191:                                       ; preds = %if.then188
  %tobool192 = icmp eq i32 %43, 0, !dbg !201
  br i1 %tobool192, label %if.else195, label %if.then193, !dbg !201

if.then193:                                       ; preds = %if.then191
  %add.ptr194 = getelementptr inbounds i8* %nameend.0, i64 1, !dbg !203
  store i8* %add.ptr194, i8** @gg_optarg, align 8, !dbg !203, !tbaa !106
  br label %if.end251, !dbg !204

if.else195:                                       ; preds = %if.then191
  %44 = load i32* @gg_opterr, align 4, !dbg !205, !tbaa !110
  %tobool196 = icmp eq i32 %44, 0, !dbg !205
  br i1 %tobool196, label %if.end218, label %if.then197, !dbg !205

if.then197:                                       ; preds = %if.else195
  %45 = load i8* %arrayidx114, align 1, !dbg !207, !tbaa !107
  %cmp202 = icmp eq i8 %45, 45, !dbg !207
  %46 = load %struct._IO_FILE** @stderr, align 8, !dbg !209, !tbaa !106
  %47 = load i8** %argv, align 8, !dbg !209, !tbaa !106
  br i1 %cmp202, label %if.then204, label %if.else208, !dbg !207

if.then204:                                       ; preds = %if.then197
  %name206 = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 0, !dbg !209
  %48 = load i8** %name206, align 8, !dbg !209, !tbaa !106
  %call207 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([45 x i8]* @.str2, i64 0, i64 0), i8* %47, i8* %48) #5, !dbg !209
  br label %if.end218, !dbg !209

if.else208:                                       ; preds = %if.then197
  %49 = load i8* %30, align 1, !dbg !210, !tbaa !107
  %conv214 = sext i8 %49 to i32, !dbg !210
  %name215 = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 0, !dbg !210
  %50 = load i8** %name215, align 8, !dbg !210, !tbaa !106
  %call216 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %47, i32 %conv214, i8* %50) #5, !dbg !210
  br label %if.end218

if.end218:                                        ; preds = %if.else195, %if.then204, %if.else208
  %51 = load i8** @nextchar, align 8, !dbg !211, !tbaa !106
  %call219 = tail call i64 @strlen(i8* %51) #7, !dbg !211
  %add.ptr220 = getelementptr inbounds i8* %51, i64 %call219, !dbg !211
  store i8* %add.ptr220, i8** @nextchar, align 8, !dbg !211, !tbaa !106
  %val = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 3, !dbg !212
  %52 = load i32* %val, align 4, !dbg !212, !tbaa !110
  store i32 %52, i32* @gg_optopt, align 4, !dbg !212, !tbaa !110
  br label %return, !dbg !213

if.else222:                                       ; preds = %if.then188
  %cmp224 = icmp eq i32 %43, 1, !dbg !214
  br i1 %cmp224, label %if.then226, label %if.end251, !dbg !214

if.then226:                                       ; preds = %if.else222
  %cmp227 = icmp slt i32 %inc189, %argc, !dbg !215
  br i1 %cmp227, label %if.then229, label %if.else233, !dbg !215

if.then229:                                       ; preds = %if.then226
  %inc230 = add nsw i32 %28, 2, !dbg !217
  store i32 %inc230, i32* @gg_optind, align 4, !dbg !217, !tbaa !110
  %idxprom231 = sext i32 %inc189 to i64, !dbg !217
  %arrayidx232 = getelementptr inbounds i8** %argv, i64 %idxprom231, !dbg !217
  %53 = load i8** %arrayidx232, align 8, !dbg !217, !tbaa !106
  store i8* %53, i8** @gg_optarg, align 8, !dbg !217, !tbaa !106
  br label %if.end251, !dbg !218

if.else233:                                       ; preds = %if.then226
  %54 = load i32* @gg_opterr, align 4, !dbg !219, !tbaa !110
  %tobool234 = icmp eq i32 %54, 0, !dbg !219
  br i1 %tobool234, label %if.end241, label %if.then235, !dbg !219

if.then235:                                       ; preds = %if.else233
  %55 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !106
  %56 = load i8** %argv, align 8, !dbg !221, !tbaa !106
  %call240 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %56, i8* %30) #5, !dbg !221
  %.pre727 = load i8** @nextchar, align 8, !dbg !222, !tbaa !106
  br label %if.end241, !dbg !221

if.end241:                                        ; preds = %if.else233, %if.then235
  %57 = phi i8* [ %29, %if.else233 ], [ %.pre727, %if.then235 ]
  %call242 = tail call i64 @strlen(i8* %57) #7, !dbg !222
  %add.ptr243 = getelementptr inbounds i8* %57, i64 %call242, !dbg !222
  store i8* %add.ptr243, i8** @nextchar, align 8, !dbg !222, !tbaa !106
  %val244 = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 3, !dbg !223
  %58 = load i32* %val244, align 4, !dbg !223, !tbaa !110
  store i32 %58, i32* @gg_optopt, align 4, !dbg !223, !tbaa !110
  %59 = load i8* %optstring.addr.0731, align 1, !dbg !224, !tbaa !107
  %cmp247 = icmp eq i8 %59, 58, !dbg !224
  %cond = select i1 %cmp247, i32 58, i32 63, !dbg !224
  br label %return, !dbg !224

if.end251:                                        ; preds = %if.else222, %if.then229, %if.then193
  %call252 = tail call i64 @strlen(i8* %29) #7, !dbg !225
  %add.ptr253 = getelementptr inbounds i8* %29, i64 %call252, !dbg !225
  store i8* %add.ptr253, i8** @nextchar, align 8, !dbg !225, !tbaa !106
  %cmp254 = icmp eq i32* %longind, null, !dbg !226
  br i1 %cmp254, label %if.end257, label %if.then256, !dbg !226

if.then256:                                       ; preds = %if.end251
  store i32 %indfound.2681, i32* %longind, align 4, !dbg !227, !tbaa !110
  br label %if.end257, !dbg !227

if.end257:                                        ; preds = %if.end251, %if.then256
  %flag = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 2, !dbg !228
  %60 = load i32** %flag, align 8, !dbg !228, !tbaa !106
  %tobool258 = icmp eq i32* %60, null, !dbg !228
  %val260 = getelementptr inbounds %struct.gg_option* %pfound.2680, i64 0, i32 3, !dbg !229
  %61 = load i32* %val260, align 4, !dbg !229, !tbaa !110
  br i1 %tobool258, label %return, label %if.then259, !dbg !228

if.then259:                                       ; preds = %if.end257
  store i32 %61, i32* %60, align 4, !dbg !229, !tbaa !110
  br label %return, !dbg !231

if.end264:                                        ; preds = %for.cond142.preheader, %if.end185
  %tobool265 = icmp eq i32 %long_only, 0, !dbg !232
  %brmerge = or i1 %tobool265, %cmp116, !dbg !232
  %.mux = select i1 %tobool265, i8 %31, i8 45, !dbg !232
  br i1 %brmerge, label %if.then278, label %lor.lhs.false273, !dbg !232

lor.lhs.false273:                                 ; preds = %if.end264
  %62 = load i8* %29, align 1, !dbg !233, !tbaa !107
  %conv274 = sext i8 %62 to i32, !dbg !233
  %call275 = tail call i8* @strchr(i8* %optstring.addr.0731, i32 %conv274) #7, !dbg !233
  %cmp276 = icmp eq i8* %call275, null, !dbg !233
  br i1 %cmp276, label %if.then278, label %if.end301, !dbg !233

if.then278:                                       ; preds = %if.end264, %lor.lhs.false273
  %63 = phi i8 [ %.mux, %if.end264 ], [ %31, %lor.lhs.false273 ]
  %64 = load i32* @gg_opterr, align 4, !dbg !234, !tbaa !110
  %tobool279 = icmp eq i32 %64, 0, !dbg !234
  br i1 %tobool279, label %if.end298, label %if.then280, !dbg !234

if.then280:                                       ; preds = %if.then278
  %cmp285 = icmp eq i8 %63, 45, !dbg !236
  %65 = load %struct._IO_FILE** @stderr, align 8, !dbg !238, !tbaa !106
  %66 = load i8** %argv, align 8, !dbg !238, !tbaa !106
  br i1 %cmp285, label %if.then287, label %if.else290, !dbg !236

if.then287:                                       ; preds = %if.then280
  %call289 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0), i8* %66, i8* %29) #5, !dbg !238
  br label %if.end298, !dbg !238

if.else290:                                       ; preds = %if.then280
  %67 = load i8* %30, align 1, !dbg !239, !tbaa !107
  %conv295 = sext i8 %67 to i32, !dbg !239
  %call296 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i8* %66, i32 %conv295, i8* %29) #5, !dbg !239
  br label %if.end298

if.end298:                                        ; preds = %if.then278, %if.then287, %if.else290
  store i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8** @nextchar, align 8, !dbg !240, !tbaa !106
  %68 = load i32* @gg_optind, align 4, !dbg !241, !tbaa !110
  %inc299 = add nsw i32 %68, 1, !dbg !241
  store i32 %inc299, i32* @gg_optind, align 4, !dbg !241, !tbaa !110
  store i32 0, i32* @gg_optopt, align 4, !dbg !242, !tbaa !110
  br label %return, !dbg !243

if.end301:                                        ; preds = %lor.lhs.false126, %lor.lhs.false118, %if.end108, %lor.lhs.false273
  %incdec.ptr302 = getelementptr inbounds i8* %29, i64 1, !dbg !244
  store i8* %incdec.ptr302, i8** @nextchar, align 8, !dbg !244, !tbaa !106
  %69 = load i8* %29, align 1, !dbg !244, !tbaa !107
  tail call void @llvm.dbg.value(metadata !{i8 %69}, i64 0, metadata !46), !dbg !244
  %conv303 = sext i8 %69 to i32, !dbg !245
  %call304 = tail call i8* @strchr(i8* %optstring.addr.0731, i32 %conv303) #7, !dbg !245
  tail call void @llvm.dbg.value(metadata !{i8* %call304}, i64 0, metadata !48), !dbg !245
  %70 = load i8* %incdec.ptr302, align 1, !dbg !246, !tbaa !107
  %cmp306 = icmp eq i8 %70, 0, !dbg !246
  br i1 %cmp306, label %if.then308, label %if.end310, !dbg !246

if.then308:                                       ; preds = %if.end301
  %inc309 = add nsw i32 %28, 1, !dbg !247
  store i32 %inc309, i32* @gg_optind, align 4, !dbg !247, !tbaa !110
  br label %if.end310, !dbg !247

if.end310:                                        ; preds = %if.then308, %if.end301
  %71 = phi i32 [ %inc309, %if.then308 ], [ %28, %if.end301 ]
  %cmp311 = icmp eq i8* %call304, null, !dbg !248
  %cmp315 = icmp eq i8 %69, 58, !dbg !248
  %or.cond673 = or i1 %cmp311, %cmp315, !dbg !248
  br i1 %or.cond673, label %if.then317, label %if.end332, !dbg !248

if.then317:                                       ; preds = %if.end310
  %72 = load i32* @gg_opterr, align 4, !dbg !249, !tbaa !110
  %tobool318 = icmp eq i32 %72, 0, !dbg !249
  br i1 %tobool318, label %if.end330, label %if.then319, !dbg !249

if.then319:                                       ; preds = %if.then317
  %73 = load i8** @posixly_correct, align 8, !dbg !251, !tbaa !106
  %tobool320 = icmp eq i8* %73, null, !dbg !251
  %74 = load %struct._IO_FILE** @stderr, align 8, !dbg !253, !tbaa !106
  %75 = load i8** %argv, align 8, !dbg !253, !tbaa !106
  br i1 %tobool320, label %if.else325, label %if.then321, !dbg !251

if.then321:                                       ; preds = %if.then319
  %call324 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i8* %75, i32 %conv303) #5, !dbg !253
  br label %if.end330, !dbg !253

if.else325:                                       ; preds = %if.then319
  %call328 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i8* %75, i32 %conv303) #5, !dbg !254
  br label %if.end330

if.end330:                                        ; preds = %if.then317, %if.then321, %if.else325
  store i32 %conv303, i32* @gg_optopt, align 4, !dbg !255, !tbaa !110
  br label %return, !dbg !256

if.end332:                                        ; preds = %if.end310
  %76 = load i8* %call304, align 1, !dbg !257, !tbaa !107
  %cmp335 = icmp eq i8 %76, 87, !dbg !257
  %arrayidx338 = getelementptr inbounds i8* %call304, i64 1, !dbg !257
  %77 = load i8* %arrayidx338, align 1, !dbg !257, !tbaa !107
  %cmp340 = icmp eq i8 %77, 59, !dbg !257
  %or.cond740 = and i1 %cmp335, %cmp340, !dbg !257
  br i1 %or.cond740, label %if.then342, label %if.end504, !dbg !257

if.then342:                                       ; preds = %if.end332
  tail call void @llvm.dbg.value(metadata !258, i64 0, metadata !52), !dbg !259
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !53), !dbg !260
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !54), !dbg !261
  tail call void @llvm.dbg.value(metadata !8, i64 0, metadata !55), !dbg !262
  %78 = load i8* %incdec.ptr302, align 1, !dbg !263, !tbaa !107
  %cmp351 = icmp eq i8 %78, 0, !dbg !263
  br i1 %cmp351, label %if.else355, label %if.then353, !dbg !263

if.then353:                                       ; preds = %if.then342
  store i8* %incdec.ptr302, i8** @gg_optarg, align 8, !dbg !264, !tbaa !106
  %inc354 = add nsw i32 %71, 1, !dbg !266
  store i32 %inc354, i32* @gg_optind, align 4, !dbg !266, !tbaa !110
  br label %if.end379, !dbg !267

if.else355:                                       ; preds = %if.then342
  %cmp356 = icmp eq i32 %71, %argc, !dbg !268
  br i1 %cmp356, label %if.then358, label %if.else374, !dbg !268

if.then358:                                       ; preds = %if.else355
  %79 = load i32* @gg_opterr, align 4, !dbg !269, !tbaa !110
  %tobool359 = icmp eq i32 %79, 0, !dbg !269
  br i1 %tobool359, label %if.end364, label %if.then360, !dbg !269

if.then360:                                       ; preds = %if.then358
  %80 = load %struct._IO_FILE** @stderr, align 8, !dbg !271, !tbaa !106
  %81 = load i8** %argv, align 8, !dbg !271, !tbaa !106
  %call363 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %81, i32 %conv303) #5, !dbg !271
  br label %if.end364, !dbg !273

if.end364:                                        ; preds = %if.then358, %if.then360
  store i32 %conv303, i32* @gg_optopt, align 4, !dbg !274, !tbaa !110
  %82 = load i8* %optstring.addr.0731, align 1, !dbg !275, !tbaa !107
  %cmp368 = icmp eq i8 %82, 58, !dbg !275
  %. = select i1 %cmp368, i32 58, i32 63, !dbg !276
  br label %return, !dbg !277

if.else374:                                       ; preds = %if.else355
  %inc375 = add nsw i32 %71, 1, !dbg !278
  store i32 %inc375, i32* @gg_optind, align 4, !dbg !278, !tbaa !110
  %idxprom376 = sext i32 %71 to i64, !dbg !278
  %arrayidx377 = getelementptr inbounds i8** %argv, i64 %idxprom376, !dbg !278
  %83 = load i8** %arrayidx377, align 8, !dbg !278, !tbaa !106
  store i8* %83, i8** @gg_optarg, align 8, !dbg !278, !tbaa !106
  br label %if.end379

if.end379:                                        ; preds = %if.else374, %if.then353
  %84 = phi i32 [ %inc375, %if.else374 ], [ %inc354, %if.then353 ]
  %85 = phi i8* [ %83, %if.else374 ], [ %incdec.ptr302, %if.then353 ]
  tail call void @llvm.dbg.value(metadata !{i8* %85}, i64 0, metadata !49), !dbg !279
  store i8* %85, i8** @nextchar, align 8, !dbg !279, !tbaa !106
  br label %for.cond380, !dbg !279

for.cond380:                                      ; preds = %for.inc390, %if.end379
  %nameend343.0 = phi i8* [ %85, %if.end379 ], [ %incdec.ptr391, %for.inc390 ]
  %86 = load i8* %nameend343.0, align 1, !dbg !279, !tbaa !107
  switch i8 %86, label %for.inc390 [
    i8 0, label %for.cond393.preheader
    i8 61, label %for.cond393.preheader
  ], !dbg !279

for.cond393.preheader:                            ; preds = %for.cond380, %for.cond380
  %name394692 = getelementptr inbounds %struct.gg_option* %longopts, i64 0, i32 0, !dbg !281
  %87 = load i8** %name394692, align 8, !dbg !281, !tbaa !106
  %tobool395693 = icmp eq i8* %87, null, !dbg !281
  br i1 %tobool395693, label %if.end503, label %for.body396.lr.ph, !dbg !281

for.body396.lr.ph:                                ; preds = %for.cond393.preheader
  %sub.ptr.lhs.cast398 = ptrtoint i8* %nameend343.0 to i64, !dbg !283
  %sub.ptr.rhs.cast399 = ptrtoint i8* %85 to i64, !dbg !283
  %sub.ptr.sub400 = sub i64 %sub.ptr.lhs.cast398, %sub.ptr.rhs.cast399, !dbg !283
  %conv408 = and i64 %sub.ptr.sub400, 4294967295, !dbg !284
  br label %for.body396, !dbg !281

for.inc390:                                       ; preds = %for.cond380
  %incdec.ptr391 = getelementptr inbounds i8* %nameend343.0, i64 1, !dbg !279
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr391}, i64 0, metadata !49), !dbg !279
  br label %for.cond380, !dbg !279

for.body396:                                      ; preds = %for.body396.lr.ph, %for.inc422
  %88 = phi i8* [ %87, %for.body396.lr.ph ], [ %89, %for.inc422 ]
  %option_index349.0698 = phi i32 [ 0, %for.body396.lr.ph ], [ %inc424, %for.inc422 ]
  %indfound348.0697 = phi i32 [ 0, %for.body396.lr.ph ], [ %indfound348.1, %for.inc422 ]
  %ambig347.0696 = phi i32 [ 0, %for.body396.lr.ph ], [ %ambig347.1, %for.inc422 ]
  %pfound345.0695 = phi %struct.gg_option* [ null, %for.body396.lr.ph ], [ %pfound345.1, %for.inc422 ]
  %p344.0694 = phi %struct.gg_option* [ %longopts, %for.body396.lr.ph ], [ %incdec.ptr423, %for.inc422 ]
  %call401 = tail call i32 @strncmp(i8* %88, i8* %85, i64 %sub.ptr.sub400) #7, !dbg !283
  %tobool402 = icmp eq i32 %call401, 0, !dbg !283
  br i1 %tobool402, label %if.then403, label %for.inc422, !dbg !283

if.then403:                                       ; preds = %for.body396
  %call410 = tail call i64 @strlen(i8* %88) #7, !dbg !284
  %cmp411 = icmp eq i64 %conv408, %call410, !dbg !284
  br i1 %cmp411, label %if.end440, label %if.else414, !dbg !284

if.else414:                                       ; preds = %if.then403
  %cmp415 = icmp eq %struct.gg_option* %pfound345.0695, null, !dbg !286
  %p344.0.pfound345.0 = select i1 %cmp415, %struct.gg_option* %p344.0694, %struct.gg_option* %pfound345.0695, !dbg !287
  %ambig347.0. = select i1 %cmp415, i32 %ambig347.0696, i32 1, !dbg !287
  %option_index349.0.indfound348.0 = select i1 %cmp415, i32 %option_index349.0698, i32 %indfound348.0697, !dbg !287
  br label %for.inc422, !dbg !287

for.inc422:                                       ; preds = %if.else414, %for.body396
  %pfound345.1 = phi %struct.gg_option* [ %pfound345.0695, %for.body396 ], [ %p344.0.pfound345.0, %if.else414 ]
  %ambig347.1 = phi i32 [ %ambig347.0696, %for.body396 ], [ %ambig347.0., %if.else414 ]
  %indfound348.1 = phi i32 [ %indfound348.0697, %for.body396 ], [ %option_index349.0.indfound348.0, %if.else414 ]
  %incdec.ptr423 = getelementptr inbounds %struct.gg_option* %p344.0694, i64 1, !dbg !281
  tail call void @llvm.dbg.value(metadata !{%struct.gg_option* %incdec.ptr423}, i64 0, metadata !51), !dbg !281
  %inc424 = add nsw i32 %option_index349.0698, 1, !dbg !281
  tail call void @llvm.dbg.value(metadata !{i32 %inc424}, i64 0, metadata !56), !dbg !281
  %name394 = getelementptr inbounds %struct.gg_option* %incdec.ptr423, i64 0, i32 0, !dbg !281
  %89 = load i8** %name394, align 8, !dbg !281, !tbaa !106
  %tobool395 = icmp eq i8* %89, null, !dbg !281
  br i1 %tobool395, label %for.end425, label %for.body396, !dbg !281

for.end425:                                       ; preds = %for.inc422
  %tobool426 = icmp eq i32 %ambig347.1, 0, !dbg !289
  br i1 %tobool426, label %if.end440, label %if.then429, !dbg !289

if.then429:                                       ; preds = %for.end425
  %90 = load i32* @gg_opterr, align 4, !dbg !290, !tbaa !110
  %tobool430 = icmp eq i32 %90, 0, !dbg !290
  br i1 %tobool430, label %if.end436, label %if.then431, !dbg !290

if.then431:                                       ; preds = %if.then429
  %91 = load %struct._IO_FILE** @stderr, align 8, !dbg !292, !tbaa !106
  %92 = load i8** %argv, align 8, !dbg !292, !tbaa !106
  %idxprom433 = sext i32 %84 to i64, !dbg !292
  %arrayidx434 = getelementptr inbounds i8** %argv, i64 %idxprom433, !dbg !292
  %93 = load i8** %arrayidx434, align 8, !dbg !292, !tbaa !106
  %call435 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i8* %92, i8* %93) #5, !dbg !292
  %.pre721 = load i8** @nextchar, align 8, !dbg !293, !tbaa !106
  %.pre722 = load i32* @gg_optind, align 4, !dbg !294, !tbaa !110
  br label %if.end436, !dbg !292

if.end436:                                        ; preds = %if.then429, %if.then431
  %94 = phi i32 [ %84, %if.then429 ], [ %.pre722, %if.then431 ]
  %95 = phi i8* [ %85, %if.then429 ], [ %.pre721, %if.then431 ]
  %call437 = tail call i64 @strlen(i8* %95) #7, !dbg !293
  %add.ptr438 = getelementptr inbounds i8* %95, i64 %call437, !dbg !293
  store i8* %add.ptr438, i8** @nextchar, align 8, !dbg !293, !tbaa !106
  %inc439 = add nsw i32 %94, 1, !dbg !294
  store i32 %inc439, i32* @gg_optind, align 4, !dbg !294, !tbaa !110
  br label %return, !dbg !295

if.end440:                                        ; preds = %if.then403, %for.end425
  %indfound348.2686 = phi i32 [ %indfound348.1, %for.end425 ], [ %option_index349.0698, %if.then403 ]
  %pfound345.2685 = phi %struct.gg_option* [ %pfound345.1, %for.end425 ], [ %p344.0694, %if.then403 ]
  %cmp441 = icmp eq %struct.gg_option* %pfound345.2685, null, !dbg !296
  br i1 %cmp441, label %if.end503, label %if.then443, !dbg !296

if.then443:                                       ; preds = %if.end440
  tail call void @llvm.dbg.value(metadata !{i32 %indfound348.2686}, i64 0, metadata !56), !dbg !297
  %tobool444 = icmp eq i8 %86, 0, !dbg !299
  %has_arg446 = getelementptr inbounds %struct.gg_option* %pfound345.2685, i64 0, i32 1, !dbg !300
  %96 = load i32* %has_arg446, align 4, !dbg !300, !tbaa !110
  br i1 %tobool444, label %if.else460, label %if.then445, !dbg !299

if.then445:                                       ; preds = %if.then443
  %tobool447 = icmp eq i32 %96, 0, !dbg !300
  br i1 %tobool447, label %if.else450, label %if.then448, !dbg !300

if.then448:                                       ; preds = %if.then445
  %add.ptr449 = getelementptr inbounds i8* %nameend343.0, i64 1, !dbg !302
  store i8* %add.ptr449, i8** @gg_optarg, align 8, !dbg !302, !tbaa !106
  br label %if.end489, !dbg !303

if.else450:                                       ; preds = %if.then445
  %97 = load i32* @gg_opterr, align 4, !dbg !304, !tbaa !110
  %tobool451 = icmp eq i32 %97, 0, !dbg !304
  br i1 %tobool451, label %if.end456, label %if.then452, !dbg !304

if.then452:                                       ; preds = %if.else450
  %98 = load %struct._IO_FILE** @stderr, align 8, !dbg !306, !tbaa !106
  %99 = load i8** %argv, align 8, !dbg !306, !tbaa !106
  %name454 = getelementptr inbounds %struct.gg_option* %pfound345.2685, i64 0, i32 0, !dbg !306
  %100 = load i8** %name454, align 8, !dbg !306, !tbaa !106
  %call455 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %99, i8* %100) #5, !dbg !306
  %.pre724 = load i8** @nextchar, align 8, !dbg !307, !tbaa !106
  br label %if.end456, !dbg !306

if.end456:                                        ; preds = %if.else450, %if.then452
  %101 = phi i8* [ %85, %if.else450 ], [ %.pre724, %if.then452 ]
  %call457 = tail call i64 @strlen(i8* %101) #7, !dbg !307
  %add.ptr458 = getelementptr inbounds i8* %101, i64 %call457, !dbg !307
  store i8* %add.ptr458, i8** @nextchar, align 8, !dbg !307, !tbaa !106
  br label %return, !dbg !308

if.else460:                                       ; preds = %if.then443
  %cmp462 = icmp eq i32 %96, 1, !dbg !309
  br i1 %cmp462, label %if.then464, label %if.end489, !dbg !309

if.then464:                                       ; preds = %if.else460
  %cmp465 = icmp slt i32 %84, %argc, !dbg !310
  br i1 %cmp465, label %if.then467, label %if.else471, !dbg !310

if.then467:                                       ; preds = %if.then464
  %inc468 = add nsw i32 %84, 1, !dbg !312
  store i32 %inc468, i32* @gg_optind, align 4, !dbg !312, !tbaa !110
  %idxprom469 = sext i32 %84 to i64, !dbg !312
  %arrayidx470 = getelementptr inbounds i8** %argv, i64 %idxprom469, !dbg !312
  %102 = load i8** %arrayidx470, align 8, !dbg !312, !tbaa !106
  store i8* %102, i8** @gg_optarg, align 8, !dbg !312, !tbaa !106
  br label %if.end489, !dbg !313

if.else471:                                       ; preds = %if.then464
  %103 = load i32* @gg_opterr, align 4, !dbg !314, !tbaa !110
  %tobool472 = icmp eq i32 %103, 0, !dbg !314
  br i1 %tobool472, label %if.end479, label %if.then473, !dbg !314

if.then473:                                       ; preds = %if.else471
  %104 = load %struct._IO_FILE** @stderr, align 8, !dbg !316, !tbaa !106
  %105 = load i8** %argv, align 8, !dbg !316, !tbaa !106
  %sub475 = add nsw i32 %84, -1, !dbg !316
  %idxprom476 = sext i32 %sub475 to i64, !dbg !316
  %arrayidx477 = getelementptr inbounds i8** %argv, i64 %idxprom476, !dbg !316
  %106 = load i8** %arrayidx477, align 8, !dbg !316, !tbaa !106
  %call478 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %105, i8* %106) #5, !dbg !316
  %.pre723 = load i8** @nextchar, align 8, !dbg !317, !tbaa !106
  br label %if.end479, !dbg !316

if.end479:                                        ; preds = %if.else471, %if.then473
  %107 = phi i8* [ %85, %if.else471 ], [ %.pre723, %if.then473 ]
  %call480 = tail call i64 @strlen(i8* %107) #7, !dbg !317
  %add.ptr481 = getelementptr inbounds i8* %107, i64 %call480, !dbg !317
  store i8* %add.ptr481, i8** @nextchar, align 8, !dbg !317, !tbaa !106
  %108 = load i8* %optstring.addr.0731, align 1, !dbg !318, !tbaa !107
  %cmp484 = icmp eq i8 %108, 58, !dbg !318
  %cond486 = select i1 %cmp484, i32 58, i32 63, !dbg !318
  br label %return, !dbg !318

if.end489:                                        ; preds = %if.else460, %if.then467, %if.then448
  %call490 = tail call i64 @strlen(i8* %85) #7, !dbg !319
  %add.ptr491 = getelementptr inbounds i8* %85, i64 %call490, !dbg !319
  store i8* %add.ptr491, i8** @nextchar, align 8, !dbg !319, !tbaa !106
  %cmp492 = icmp eq i32* %longind, null, !dbg !320
  br i1 %cmp492, label %if.end495, label %if.then494, !dbg !320

if.then494:                                       ; preds = %if.end489
  store i32 %indfound348.2686, i32* %longind, align 4, !dbg !321, !tbaa !110
  br label %if.end495, !dbg !321

if.end495:                                        ; preds = %if.end489, %if.then494
  %flag496 = getelementptr inbounds %struct.gg_option* %pfound345.2685, i64 0, i32 2, !dbg !322
  %109 = load i32** %flag496, align 8, !dbg !322, !tbaa !106
  %tobool497 = icmp eq i32* %109, null, !dbg !322
  %val499 = getelementptr inbounds %struct.gg_option* %pfound345.2685, i64 0, i32 3, !dbg !323
  %110 = load i32* %val499, align 4, !dbg !323, !tbaa !110
  br i1 %tobool497, label %return, label %if.then498, !dbg !322

if.then498:                                       ; preds = %if.end495
  store i32 %110, i32* %109, align 4, !dbg !323, !tbaa !110
  br label %return, !dbg !325

if.end503:                                        ; preds = %for.cond393.preheader, %if.end440
  store i8* null, i8** @nextchar, align 8, !dbg !326, !tbaa !106
  br label %return, !dbg !327

if.end504:                                        ; preds = %if.end332
  %cmp507 = icmp eq i8 %77, 58, !dbg !328
  br i1 %cmp507, label %if.then509, label %if.end553, !dbg !328

if.then509:                                       ; preds = %if.end504
  %arrayidx510 = getelementptr inbounds i8* %call304, i64 2, !dbg !329
  %111 = load i8* %arrayidx510, align 1, !dbg !329, !tbaa !107
  %cmp512 = icmp eq i8 %111, 58, !dbg !329
  %112 = load i8* %incdec.ptr302, align 1, !dbg !331, !tbaa !107
  %cmp516 = icmp ne i8 %112, 0, !dbg !331
  br i1 %cmp512, label %if.then514, label %if.else522, !dbg !329

if.then514:                                       ; preds = %if.then509
  br i1 %cmp516, label %if.then518, label %if.else520, !dbg !331

if.then518:                                       ; preds = %if.then514
  store i8* %incdec.ptr302, i8** @gg_optarg, align 8, !dbg !333, !tbaa !106
  %inc519 = add nsw i32 %71, 1, !dbg !335
  store i32 %inc519, i32* @gg_optind, align 4, !dbg !335, !tbaa !110
  br label %if.end521, !dbg !336

if.else520:                                       ; preds = %if.then514
  store i8* null, i8** @gg_optarg, align 8, !dbg !337, !tbaa !106
  br label %if.end521

if.end521:                                        ; preds = %if.else520, %if.then518
  store i8* null, i8** @nextchar, align 8, !dbg !338, !tbaa !106
  br label %if.end553, !dbg !339

if.else522:                                       ; preds = %if.then509
  br i1 %cmp516, label %if.then526, label %if.else528, !dbg !340

if.then526:                                       ; preds = %if.else522
  store i8* %incdec.ptr302, i8** @gg_optarg, align 8, !dbg !342, !tbaa !106
  %inc527 = add nsw i32 %71, 1, !dbg !344
  store i32 %inc527, i32* @gg_optind, align 4, !dbg !344, !tbaa !110
  br label %if.end551, !dbg !345

if.else528:                                       ; preds = %if.else522
  %cmp529 = icmp eq i32 %71, %argc, !dbg !346
  br i1 %cmp529, label %if.then531, label %if.else546, !dbg !346

if.then531:                                       ; preds = %if.else528
  %113 = load i32* @gg_opterr, align 4, !dbg !347, !tbaa !110
  %tobool532 = icmp eq i32 %113, 0, !dbg !347
  br i1 %tobool532, label %if.end537, label %if.then533, !dbg !347

if.then533:                                       ; preds = %if.then531
  %114 = load %struct._IO_FILE** @stderr, align 8, !dbg !349, !tbaa !106
  %115 = load i8** %argv, align 8, !dbg !349, !tbaa !106
  %call536 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %115, i32 %conv303) #5, !dbg !349
  br label %if.end537, !dbg !351

if.end537:                                        ; preds = %if.then531, %if.then533
  store i32 %conv303, i32* @gg_optopt, align 4, !dbg !352, !tbaa !110
  %116 = load i8* %optstring.addr.0731, align 1, !dbg !353, !tbaa !107
  %cmp541 = icmp eq i8 %116, 58, !dbg !353
  %.675 = select i1 %cmp541, i8 58, i8 63, !dbg !354
  br label %if.end551, !dbg !354

if.else546:                                       ; preds = %if.else528
  %inc547 = add nsw i32 %71, 1, !dbg !355
  store i32 %inc547, i32* @gg_optind, align 4, !dbg !355, !tbaa !110
  %idxprom548 = sext i32 %71 to i64, !dbg !355
  %arrayidx549 = getelementptr inbounds i8** %argv, i64 %idxprom548, !dbg !355
  %117 = load i8** %arrayidx549, align 8, !dbg !355, !tbaa !106
  store i8* %117, i8** @gg_optarg, align 8, !dbg !355, !tbaa !106
  br label %if.end551

if.end551:                                        ; preds = %if.end537, %if.else546, %if.then526
  %c.1 = phi i8 [ %69, %if.then526 ], [ %69, %if.else546 ], [ %.675, %if.end537 ]
  store i8* null, i8** @nextchar, align 8, !dbg !356, !tbaa !106
  br label %if.end553

if.end553:                                        ; preds = %if.end521, %if.end551, %if.end504
  %c.2 = phi i8 [ %69, %if.end521 ], [ %c.1, %if.end551 ], [ %69, %if.end504 ]
  %conv554 = sext i8 %c.2 to i32, !dbg !357
  br label %return, !dbg !357

return:                                           ; preds = %if.end495, %if.end257, %if.then86, %if.then70, %if.then67, %if.end553, %if.end503, %if.then498, %if.end479, %if.end456, %if.end436, %if.end364, %if.end330, %if.end298, %if.then259, %if.end241, %if.end218, %if.end181, %if.end90
  %retval.0 = phi i32 [ 1, %if.end90 ], [ 0, %if.then259 ], [ 63, %if.end218 ], [ %cond, %if.end241 ], [ 63, %if.end298 ], [ 63, %if.end330 ], [ 0, %if.then498 ], [ 63, %if.end456 ], [ %cond486, %if.end479 ], [ 87, %if.end503 ], [ 63, %if.end436 ], [ %., %if.end364 ], [ %conv554, %if.end553 ], [ 63, %if.end181 ], [ -1, %if.then67 ], [ -1, %if.then70 ], [ -1, %if.then86 ], [ %61, %if.end257 ], [ %110, %if.end495 ]
  ret i32 %retval.0, !dbg !358
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @exchange(i8** nocapture %argv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !69), !dbg !359
  %0 = load i32* @first_nonopt, align 4, !dbg !360, !tbaa !110
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !70), !dbg !360
  %1 = load i32* @last_nonopt, align 4, !dbg !361, !tbaa !110
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !71), !dbg !361
  %2 = load i32* @gg_optind, align 4, !dbg !362, !tbaa !110
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !72), !dbg !362
  %cmp96 = icmp sgt i32 %2, %1, !dbg !363
  %cmp19297 = icmp sgt i32 %1, %0, !dbg !363
  %or.cond9398 = and i1 %cmp96, %cmp19297, !dbg !363
  br i1 %or.cond9398, label %while.body.lr.ph.lr.ph, label %while.end, !dbg !363

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %3 = sext i32 %1 to i64, !dbg !363
  br label %while.body.lr.ph, !dbg !363

while.body.lr.ph:                                 ; preds = %while.body.lr.ph.lr.ph, %for.end
  %bottom.0.ph100 = phi i32 [ %0, %while.body.lr.ph.lr.ph ], [ %bottom.094, %for.end ]
  %top.0.ph99 = phi i32 [ %2, %while.body.lr.ph.lr.ph ], [ %sub7, %for.end ]
  %sub = sub nsw i32 %top.0.ph99, %1, !dbg !364
  %cmp2487 = icmp sgt i32 %sub, 0, !dbg !365
  %4 = sub i32 %top.0.ph99, %1, !dbg !363
  %5 = sext i32 %bottom.0.ph100 to i64
  %6 = sext i32 %4 to i64
  br label %while.body, !dbg !363

while.body:                                       ; preds = %while.body.lr.ph, %for.end40
  %indvars.iv109 = phi i64 [ %5, %while.body.lr.ph ], [ %indvars.iv.next110, %for.end40 ]
  %bottom.094 = phi i32 [ %bottom.0.ph100, %while.body.lr.ph ], [ %add41, %for.end40 ]
  %7 = trunc i64 %indvars.iv109 to i32, !dbg !364
  %sub2 = sub nsw i32 %1, %7, !dbg !364
  %cmp3 = icmp sgt i32 %sub, %sub2, !dbg !364
  br i1 %cmp3, label %for.cond.preheader, label %for.cond23.preheader, !dbg !364

for.cond.preheader:                               ; preds = %while.body
  %cmp589 = icmp sgt i32 %sub2, 0, !dbg !367
  %sub7 = sub i32 %top.0.ph99, %sub2, !dbg !369
  br i1 %cmp589, label %for.body.lr.ph, label %for.end, !dbg !367

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %8 = sext i32 %bottom.094 to i64, !dbg !367
  %9 = sext i32 %sub7 to i64, !dbg !367
  br label %for.body, !dbg !367

for.cond23.preheader:                             ; preds = %while.body
  br i1 %cmp2487, label %for.body25, label %for.end40, !dbg !365

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv111 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next112, %for.body ]
  %10 = add nsw i64 %indvars.iv111, %8, !dbg !371
  %arrayidx = getelementptr inbounds i8** %argv, i64 %10, !dbg !371
  %11 = load i8** %arrayidx, align 8, !dbg !371, !tbaa !106
  tail call void @llvm.dbg.value(metadata !{i8* %11}, i64 0, metadata !73), !dbg !371
  %12 = add nsw i64 %9, %indvars.iv111, !dbg !369
  %arrayidx10 = getelementptr inbounds i8** %argv, i64 %12, !dbg !369
  %13 = load i8** %arrayidx10, align 8, !dbg !369, !tbaa !106
  store i8* %13, i8** %arrayidx, align 8, !dbg !369, !tbaa !106
  store i8* %11, i8** %arrayidx10, align 8, !dbg !372, !tbaa !106
  %indvars.iv.next112 = add i64 %indvars.iv111, 1, !dbg !367
  %lftr.wideiv115 = trunc i64 %indvars.iv.next112 to i32, !dbg !367
  %exitcond116 = icmp eq i32 %lftr.wideiv115, %sub2, !dbg !367
  br i1 %exitcond116, label %for.end, label %for.body, !dbg !367

for.end:                                          ; preds = %for.cond.preheader, %for.body
  tail call void @llvm.dbg.value(metadata !{i32 %sub7}, i64 0, metadata !72), !dbg !373
  %cmp = icmp sgt i32 %sub7, %1, !dbg !363
  %cmp192 = icmp sgt i32 %1, %bottom.094, !dbg !363
  %or.cond93 = and i1 %cmp, %cmp192, !dbg !363
  br i1 %or.cond93, label %while.body.lr.ph, label %while.end, !dbg !363

for.body25:                                       ; preds = %for.cond23.preheader, %for.body25
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body25 ], [ 0, %for.cond23.preheader ]
  %14 = add nsw i64 %indvars.iv, %indvars.iv109, !dbg !374
  %arrayidx28 = getelementptr inbounds i8** %argv, i64 %14, !dbg !374
  %15 = load i8** %arrayidx28, align 8, !dbg !374, !tbaa !106
  tail call void @llvm.dbg.value(metadata !{i8* %15}, i64 0, metadata !73), !dbg !374
  %16 = add nsw i64 %indvars.iv, %3, !dbg !376
  %arrayidx31 = getelementptr inbounds i8** %argv, i64 %16, !dbg !376
  %17 = load i8** %arrayidx31, align 8, !dbg !376, !tbaa !106
  store i8* %17, i8** %arrayidx28, align 8, !dbg !376, !tbaa !106
  store i8* %15, i8** %arrayidx31, align 8, !dbg !377, !tbaa !106
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !365
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !365
  %exitcond = icmp eq i32 %lftr.wideiv, %4, !dbg !365
  br i1 %exitcond, label %for.end40, label %for.body25, !dbg !365

for.end40:                                        ; preds = %for.body25, %for.cond23.preheader
  %indvars.iv.next110 = add i64 %indvars.iv109, %6, !dbg !363
  %add41 = add nsw i32 %bottom.094, %sub, !dbg !378
  tail call void @llvm.dbg.value(metadata !{i32 %add41}, i64 0, metadata !70), !dbg !378
  %18 = trunc i64 %indvars.iv.next110 to i32, !dbg !363
  %cmp1 = icmp sgt i32 %1, %18, !dbg !363
  br i1 %cmp1, label %while.body, label %while.end, !dbg !363

while.end:                                        ; preds = %entry, %for.end, %for.end40
  %sub42 = sub i32 %2, %1, !dbg !379
  %add43 = add nsw i32 %sub42, %0, !dbg !379
  store i32 %add43, i32* @first_nonopt, align 4, !dbg !379, !tbaa !110
  store i32 %2, i32* @last_nonopt, align 4, !dbg !380, !tbaa !110
  ret void, !dbg !381
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @gg_getopt(i32 %argc, i8** %argv, i8* %optstring) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %argc}, i64 0, metadata !61), !dbg !382
  tail call void @llvm.dbg.value(metadata !{i8** %argv}, i64 0, metadata !62), !dbg !383
  tail call void @llvm.dbg.value(metadata !{i8* %optstring}, i64 0, metadata !63), !dbg !384
  %call = tail call i32 @getopt_internal(i32 %argc, i8** %argv, i8* %optstring, %struct.gg_option* null, i32* null, i32 0) #6, !dbg !385
  ret i32 %call, !dbg !385
}

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !8, metadata !9, metadata !88, metadata !8, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 183, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 183, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !5, metadata !6, metadata !7}
!5 = metadata !{i32 786472, metadata !"REQUIRE_ORDER", i64 0} ; [ DW_TAG_enumerator ] [REQUIRE_ORDER :: 0]
!6 = metadata !{i32 786472, metadata !"PERMUTE", i64 1} ; [ DW_TAG_enumerator ] [PERMUTE :: 1]
!7 = metadata !{i32 786472, metadata !"RETURN_IN_ORDER", i64 2} ; [ DW_TAG_enumerator ] [RETURN_IN_ORDER :: 2]
!8 = metadata !{i32 0}
!9 = metadata !{metadata !10, metadata !57, metadata !64, metadata !81}
!10 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"getopt_internal", metadata !"getopt_internal", metadata !"", i32 507, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i32, i8**, i8*, %struct.gg_option*, i32*, i32)* @getopt_internal, null, null, metadata !31, i32 514} ; [ DW_TAG_subprogram ] [line 507] [def] [scope 514] [getopt_internal]
!11 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !15, metadata !19, metadata !21, metadata !29, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!20 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!22 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from gg_option]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"gg_option", i32 84, i64 256, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [gg_option] [line 84, size 256, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/gg-getopt.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !30}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"name", i32 87, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [name] [line 87, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"has_arg", i32 93, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [has_arg] [line 93, size 32, align 32, offset 64] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"flag", i32 94, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [flag] [line 94, size 64, align 64, offset 128] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"val", i32 95, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [val] [line 95, size 32, align 32, offset 192] [from int]
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !48, metadata !49, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56}
!32 = metadata !{i32 786689, metadata !10, metadata !"argc", metadata !11, i32 16777724, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 508]
!33 = metadata !{i32 786689, metadata !10, metadata !"argv", metadata !11, i32 33554941, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 509]
!34 = metadata !{i32 786689, metadata !10, metadata !"optstring", metadata !11, i32 50332158, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [optstring] [line 510]
!35 = metadata !{i32 786689, metadata !10, metadata !"longopts", metadata !11, i32 67109375, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [longopts] [line 511]
!36 = metadata !{i32 786689, metadata !10, metadata !"longind", metadata !11, i32 83886592, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [longind] [line 512]
!37 = metadata !{i32 786689, metadata !10, metadata !"long_only", metadata !11, i32 100663809, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [long_only] [line 513]
!38 = metadata !{i32 786688, metadata !39, metadata !"nameend", metadata !11, i32 633, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nameend] [line 633]
!39 = metadata !{i32 786443, metadata !1, metadata !10, i32 632, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!40 = metadata !{i32 786688, metadata !39, metadata !"p", metadata !11, i32 634, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 634]
!41 = metadata !{i32 786688, metadata !39, metadata !"pfound", metadata !11, i32 635, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pfound] [line 635]
!42 = metadata !{i32 786688, metadata !39, metadata !"exact", metadata !11, i32 636, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [exact] [line 636]
!43 = metadata !{i32 786688, metadata !39, metadata !"ambig", metadata !11, i32 637, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ambig] [line 637]
!44 = metadata !{i32 786688, metadata !39, metadata !"indfound", metadata !11, i32 638, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indfound] [line 638]
!45 = metadata !{i32 786688, metadata !39, metadata !"option_index", metadata !11, i32 639, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [option_index] [line 639]
!46 = metadata !{i32 786688, metadata !47, metadata !"c", metadata !11, i32 766, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 766]
!47 = metadata !{i32 786443, metadata !1, metadata !10, i32 765, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!48 = metadata !{i32 786688, metadata !47, metadata !"temp", metadata !11, i32 767, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 767]
!49 = metadata !{i32 786688, metadata !50, metadata !"nameend", metadata !11, i32 791, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nameend] [line 791]
!50 = metadata !{i32 786443, metadata !1, metadata !47, i32 790, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!51 = metadata !{i32 786688, metadata !50, metadata !"p", metadata !11, i32 792, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 792]
!52 = metadata !{i32 786688, metadata !50, metadata !"pfound", metadata !11, i32 793, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pfound] [line 793]
!53 = metadata !{i32 786688, metadata !50, metadata !"exact", metadata !11, i32 794, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [exact] [line 794]
!54 = metadata !{i32 786688, metadata !50, metadata !"ambig", metadata !11, i32 795, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ambig] [line 795]
!55 = metadata !{i32 786688, metadata !50, metadata !"indfound", metadata !11, i32 796, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indfound] [line 796]
!56 = metadata !{i32 786688, metadata !50, metadata !"option_index", metadata !11, i32 797, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [option_index] [line 797]
!57 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"gg_getopt", metadata !"gg_getopt", metadata !"", i32 963, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 true, i32 (i32, i8**, i8*)* @gg_getopt, null, null, metadata !60, i32 967} ; [ DW_TAG_subprogram ] [line 963] [def] [scope 967] [gg_getopt]
!58 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{metadata !14, metadata !14, metadata !15, metadata !19}
!60 = metadata !{metadata !61, metadata !62, metadata !63}
!61 = metadata !{i32 786689, metadata !57, metadata !"argc", metadata !11, i32 16778180, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 964]
!62 = metadata !{i32 786689, metadata !57, metadata !"argv", metadata !11, i32 33555397, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 965]
!63 = metadata !{i32 786689, metadata !57, metadata !"optstring", metadata !11, i32 50332614, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [optstring] [line 966]
!64 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"exchange", metadata !"exchange", metadata !"", i32 300, metadata !65, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, void (i8**)* @exchange, null, null, metadata !68, i32 302} ; [ DW_TAG_subprogram ] [line 300] [local] [def] [scope 302] [exchange]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{null, metadata !67}
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!68 = metadata !{metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !77, metadata !78, metadata !80}
!69 = metadata !{i32 786689, metadata !64, metadata !"argv", metadata !11, i32 16777517, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 301]
!70 = metadata !{i32 786688, metadata !64, metadata !"bottom", metadata !11, i32 303, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bottom] [line 303]
!71 = metadata !{i32 786688, metadata !64, metadata !"middle", metadata !11, i32 304, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [middle] [line 304]
!72 = metadata !{i32 786688, metadata !64, metadata !"top", metadata !11, i32 305, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [top] [line 305]
!73 = metadata !{i32 786688, metadata !64, metadata !"tem", metadata !11, i32 306, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tem] [line 306]
!74 = metadata !{i32 786688, metadata !75, metadata !"len", metadata !11, i32 340, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 340]
!75 = metadata !{i32 786443, metadata !1, metadata !76, i32 338, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!76 = metadata !{i32 786443, metadata !1, metadata !64, i32 336, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!77 = metadata !{i32 786688, metadata !75, metadata !"i", metadata !11, i32 341, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 341]
!78 = metadata !{i32 786688, metadata !79, metadata !"len", metadata !11, i32 357, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 357]
!79 = metadata !{i32 786443, metadata !1, metadata !76, i32 355, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!80 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !11, i32 358, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 358]
!81 = metadata !{i32 786478, metadata !1, metadata !11, metadata !"_getopt_initialize", metadata !"_getopt_initialize", metadata !"", i32 385, metadata !82, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 true, null, null, null, metadata !84, i32 389} ; [ DW_TAG_subprogram ] [line 385] [local] [def] [scope 389] [_getopt_initialize]
!82 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!83 = metadata !{metadata !19, metadata !14, metadata !15, metadata !19}
!84 = metadata !{metadata !85, metadata !86, metadata !87}
!85 = metadata !{i32 786689, metadata !81, metadata !"argc", metadata !11, i32 16777602, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 386]
!86 = metadata !{i32 786689, metadata !81, metadata !"argv", metadata !11, i32 33554819, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 387]
!87 = metadata !{i32 786689, metadata !81, metadata !"optstring", metadata !11, i32 50332036, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [optstring] [line 388]
!88 = metadata !{metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!89 = metadata !{i32 786484, i32 0, null, metadata !"gg_optind", metadata !"gg_optind", metadata !"", metadata !11, i32 126, metadata !14, i32 0, i32 1, i32* @gg_optind, null} ; [ DW_TAG_variable ] [gg_optind] [line 126] [def]
!90 = metadata !{i32 786484, i32 0, null, metadata !"gg_opterr", metadata !"gg_opterr", metadata !"", metadata !11, i32 146, metadata !14, i32 0, i32 1, i32* @gg_opterr, null} ; [ DW_TAG_variable ] [gg_opterr] [line 146] [def]
!91 = metadata !{i32 786484, i32 0, null, metadata !"gg_optopt", metadata !"gg_optopt", metadata !"", metadata !11, i32 152, metadata !14, i32 0, i32 1, i32* @gg_optopt, null} ; [ DW_TAG_variable ] [gg_optopt] [line 152] [def]
!92 = metadata !{i32 786484, i32 0, null, metadata !"gg_optarg", metadata !"gg_optarg", metadata !"", metadata !11, i32 111, metadata !17, i32 0, i32 1, i8** @gg_optarg, null} ; [ DW_TAG_variable ] [gg_optarg] [line 111] [def]
!93 = metadata !{i32 786484, i32 0, null, metadata !"__getopt_initialized", metadata !"__getopt_initialized", metadata !"", metadata !11, i32 132, metadata !14, i32 0, i32 1, i32* @__getopt_initialized, null} ; [ DW_TAG_variable ] [__getopt_initialized] [line 132] [def]
!94 = metadata !{i32 786484, i32 0, null, metadata !"nextchar", metadata !"nextchar", metadata !"", metadata !11, i32 141, metadata !17, i32 1, i32 1, i8** @nextchar, null} ; [ DW_TAG_variable ] [nextchar] [line 141] [local] [def]
!95 = metadata !{i32 786484, i32 0, null, metadata !"ordering", metadata !"ordering", metadata !"", metadata !11, i32 186, metadata !3, i32 1, i32 1, i32* @ordering, null} ; [ DW_TAG_variable ] [ordering] [line 186] [local] [def]
!96 = metadata !{i32 786484, i32 0, null, metadata !"posixly_correct", metadata !"posixly_correct", metadata !"", metadata !11, i32 189, metadata !17, i32 1, i32 1, i8** @posixly_correct, null} ; [ DW_TAG_variable ] [posixly_correct] [line 189] [local] [def]
!97 = metadata !{i32 786484, i32 0, null, metadata !"first_nonopt", metadata !"first_nonopt", metadata !"", metadata !11, i32 243, metadata !14, i32 1, i32 1, i32* @first_nonopt, null} ; [ DW_TAG_variable ] [first_nonopt] [line 243] [local] [def]
!98 = metadata !{i32 786484, i32 0, null, metadata !"last_nonopt", metadata !"last_nonopt", metadata !"", metadata !11, i32 244, metadata !14, i32 1, i32 1, i32* @last_nonopt, null} ; [ DW_TAG_variable ] [last_nonopt] [line 244] [local] [def]
!99 = metadata !{i32 508, i32 0, metadata !10, null}
!100 = metadata !{i32 509, i32 0, metadata !10, null}
!101 = metadata !{i32 510, i32 0, metadata !10, null}
!102 = metadata !{i32 511, i32 0, metadata !10, null}
!103 = metadata !{i32 512, i32 0, metadata !10, null}
!104 = metadata !{i32 513, i32 0, metadata !10, null}
!105 = metadata !{i32 515, i32 0, metadata !10, null}
!106 = metadata !{metadata !"any pointer", metadata !107}
!107 = metadata !{metadata !"omnipotent char", metadata !108}
!108 = metadata !{metadata !"Simple C/C++ TBAA"}
!109 = metadata !{i32 517, i32 0, metadata !10, null}
!110 = metadata !{metadata !"int", metadata !107}
!111 = metadata !{i32 519, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !10, i32 518, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!113 = metadata !{i32 520, i32 0, metadata !112, null}
!114 = metadata !{i32 786689, metadata !81, metadata !"argc", metadata !11, i32 16777602, metadata !14, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [argc] [line 386]
!115 = metadata !{i32 521, i32 0, metadata !112, null}
!116 = metadata !{i32 386, i32 0, metadata !81, metadata !115}
!117 = metadata !{i8** null}
!118 = metadata !{i32 786689, metadata !81, metadata !"argv", metadata !11, i32 33554819, metadata !15, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [argv] [line 387]
!119 = metadata !{i32 387, i32 0, metadata !81, metadata !115}
!120 = metadata !{i32 394, i32 0, metadata !81, metadata !115}
!121 = metadata !{i32 396, i32 0, metadata !81, metadata !115}
!122 = metadata !{i32 398, i32 0, metadata !81, metadata !115}
!123 = metadata !{i32 402, i32 0, metadata !81, metadata !115}
!124 = metadata !{i32 404, i32 0, metadata !125, metadata !115}
!125 = metadata !{i32 786443, metadata !1, metadata !81, i32 403, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!126 = metadata !{metadata !"_ZTS3$_0", metadata !107}
!127 = metadata !{i32 405, i32 0, metadata !125, metadata !115}
!128 = metadata !{i32 786689, metadata !81, metadata !"optstring", metadata !11, i32 50332036, metadata !19, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [optstring] [line 388]
!129 = metadata !{i32 406, i32 0, metadata !125, metadata !115}
!130 = metadata !{i32 409, i32 0, metadata !131, metadata !115}
!131 = metadata !{i32 786443, metadata !1, metadata !81, i32 408, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!132 = metadata !{i32 410, i32 0, metadata !131, metadata !115}
!133 = metadata !{i32 411, i32 0, metadata !131, metadata !115}
!134 = metadata !{i32 412, i32 0, metadata !81, metadata !115}
!135 = metadata !{i32 413, i32 0, metadata !81, metadata !115}
!136 = metadata !{i32 415, i32 0, metadata !81, metadata !115}
!137 = metadata !{i32 522, i32 0, metadata !112, null}
!138 = metadata !{i32 537, i32 0, metadata !10, null}
!139 = metadata !{i32 543, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !10, i32 538, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!141 = metadata !{i32 544, i32 0, metadata !140, null}
!142 = metadata !{i32 545, i32 0, metadata !140, null}
!143 = metadata !{i32 546, i32 0, metadata !140, null}
!144 = metadata !{i32 548, i32 0, metadata !140, null}
!145 = metadata !{i32 553, i32 0, metadata !146, null}
!146 = metadata !{i32 786443, metadata !1, metadata !140, i32 549, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!147 = metadata !{i32 554, i32 0, metadata !146, null}
!148 = metadata !{i32 561, i32 0, metadata !146, null}
!149 = metadata !{i32 555, i32 0, metadata !146, null}
!150 = metadata !{i32 556, i32 0, metadata !146, null}
!151 = metadata !{i32 562, i32 0, metadata !146, null}
!152 = metadata !{i32 563, i32 0, metadata !146, null}
!153 = metadata !{i32 564, i32 0, metadata !146, null}
!154 = metadata !{i32 571, i32 0, metadata !140, null}
!155 = metadata !{i32 573, i32 0, metadata !156, null}
!156 = metadata !{i32 786443, metadata !1, metadata !140, i32 572, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!157 = metadata !{i32 575, i32 0, metadata !156, null}
!158 = metadata !{i32 576, i32 0, metadata !156, null}
!159 = metadata !{i32 577, i32 0, metadata !156, null}
!160 = metadata !{i32 578, i32 0, metadata !156, null}
!161 = metadata !{i32 579, i32 0, metadata !156, null}
!162 = metadata !{i32 581, i32 0, metadata !156, null}
!163 = metadata !{i32 582, i32 0, metadata !156, null}
!164 = metadata !{i32 587, i32 0, metadata !140, null}
!165 = metadata !{i32 591, i32 0, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !140, i32 588, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!167 = metadata !{i32 592, i32 0, metadata !166, null}
!168 = metadata !{i32 599, i32 0, metadata !140, null}
!169 = metadata !{i32 601, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !140, i32 600, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!171 = metadata !{i32 603, i32 0, metadata !170, null}
!172 = metadata !{i32 604, i32 0, metadata !170, null}
!173 = metadata !{i32 610, i32 0, metadata !140, null}
!174 = metadata !{i32 612, i32 0, metadata !140, null}
!175 = metadata !{i32 629, i32 0, metadata !10, null}
!176 = metadata !{i32 631, i32 0, metadata !10, null}
!177 = metadata !{i32 641, i32 0, metadata !178, null}
!178 = metadata !{i32 786443, metadata !1, metadata !39, i32 641, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!179 = metadata !{i32 646, i32 0, metadata !180, null}
!180 = metadata !{i32 786443, metadata !1, metadata !39, i32 646, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!181 = metadata !{i32 647, i32 0, metadata !180, null}
!182 = metadata !{i32 649, i32 0, metadata !183, null}
!183 = metadata !{i32 786443, metadata !1, metadata !180, i32 648, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!184 = metadata !{i32 650, i32 0, metadata !183, null}
!185 = metadata !{i32 658, i32 0, metadata !183, null}
!186 = metadata !{i32 663, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !183, i32 659, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!188 = metadata !{i32 669, i32 0, metadata !39, null}
!189 = metadata !{i32 671, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !39, i32 670, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!191 = metadata !{i32 672, i32 0, metadata !190, null}
!192 = metadata !{i32 674, i32 0, metadata !190, null}
!193 = metadata !{i32 675, i32 0, metadata !190, null}
!194 = metadata !{i32 676, i32 0, metadata !190, null}
!195 = metadata !{i32 677, i32 0, metadata !190, null}
!196 = metadata !{i32 680, i32 0, metadata !39, null}
!197 = metadata !{i32 682, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !39, i32 681, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!199 = metadata !{i32 683, i32 0, metadata !198, null}
!200 = metadata !{i32 684, i32 0, metadata !198, null}
!201 = metadata !{i32 688, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !198, i32 685, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!203 = metadata !{i32 689, i32 0, metadata !202, null}
!204 = metadata !{i32 711, i32 0, metadata !202, null}
!205 = metadata !{i32 692, i32 0, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !202, i32 691, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!207 = metadata !{i32 694, i32 0, metadata !208, null}
!208 = metadata !{i32 786443, metadata !1, metadata !206, i32 693, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!209 = metadata !{i32 696, i32 0, metadata !208, null}
!210 = metadata !{i32 701, i32 0, metadata !208, null}
!211 = metadata !{i32 706, i32 0, metadata !206, null}
!212 = metadata !{i32 708, i32 0, metadata !206, null}
!213 = metadata !{i32 709, i32 0, metadata !206, null}
!214 = metadata !{i32 712, i32 0, metadata !198, null}
!215 = metadata !{i32 714, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !198, i32 713, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!217 = metadata !{i32 715, i32 0, metadata !216, null}
!218 = metadata !{i32 726, i32 0, metadata !216, null}
!219 = metadata !{i32 718, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !216, i32 717, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!221 = metadata !{i32 719, i32 0, metadata !220, null}
!222 = metadata !{i32 722, i32 0, metadata !220, null}
!223 = metadata !{i32 723, i32 0, metadata !220, null}
!224 = metadata !{i32 724, i32 0, metadata !220, null}
!225 = metadata !{i32 727, i32 0, metadata !198, null}
!226 = metadata !{i32 728, i32 0, metadata !198, null}
!227 = metadata !{i32 729, i32 0, metadata !198, null}
!228 = metadata !{i32 730, i32 0, metadata !198, null}
!229 = metadata !{i32 732, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !198, i32 731, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!231 = metadata !{i32 733, i32 0, metadata !230, null}
!232 = metadata !{i32 742, i32 0, metadata !39, null}
!233 = metadata !{i32 743, i32 0, metadata !39, null}
!234 = metadata !{i32 745, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !39, i32 744, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!236 = metadata !{i32 747, i32 0, metadata !237, null}
!237 = metadata !{i32 786443, metadata !1, metadata !235, i32 746, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!238 = metadata !{i32 749, i32 0, metadata !237, null}
!239 = metadata !{i32 753, i32 0, metadata !237, null}
!240 = metadata !{i32 756, i32 0, metadata !235, null}
!241 = metadata !{i32 757, i32 0, metadata !235, null}
!242 = metadata !{i32 758, i32 0, metadata !235, null}
!243 = metadata !{i32 759, i32 0, metadata !235, null}
!244 = metadata !{i32 766, i32 0, metadata !47, null}
!245 = metadata !{i32 767, i32 0, metadata !47, null}
!246 = metadata !{i32 770, i32 0, metadata !47, null}
!247 = metadata !{i32 771, i32 0, metadata !47, null}
!248 = metadata !{i32 773, i32 0, metadata !47, null}
!249 = metadata !{i32 775, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !47, i32 774, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!251 = metadata !{i32 777, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !250, i32 776, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!253 = metadata !{i32 779, i32 0, metadata !252, null}
!254 = metadata !{i32 782, i32 0, metadata !252, null}
!255 = metadata !{i32 785, i32 0, metadata !250, null}
!256 = metadata !{i32 786, i32 0, metadata !250, null}
!257 = metadata !{i32 789, i32 0, metadata !47, null}
!258 = metadata !{%struct.gg_option* null}
!259 = metadata !{i32 793, i32 0, metadata !50, null}
!260 = metadata !{i32 794, i32 0, metadata !50, null}
!261 = metadata !{i32 795, i32 0, metadata !50, null}
!262 = metadata !{i32 796, i32 0, metadata !50, null}
!263 = metadata !{i32 800, i32 0, metadata !50, null}
!264 = metadata !{i32 802, i32 0, metadata !265, null}
!265 = metadata !{i32 786443, metadata !1, metadata !50, i32 801, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!266 = metadata !{i32 805, i32 0, metadata !265, null}
!267 = metadata !{i32 806, i32 0, metadata !265, null}
!268 = metadata !{i32 807, i32 0, metadata !50, null}
!269 = metadata !{i32 809, i32 0, metadata !270, null}
!270 = metadata !{i32 786443, metadata !1, metadata !50, i32 808, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!271 = metadata !{i32 812, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !270, i32 810, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!273 = metadata !{i32 814, i32 0, metadata !272, null}
!274 = metadata !{i32 815, i32 0, metadata !270, null}
!275 = metadata !{i32 816, i32 0, metadata !270, null}
!276 = metadata !{i32 817, i32 0, metadata !270, null}
!277 = metadata !{i32 820, i32 0, metadata !270, null}
!278 = metadata !{i32 825, i32 0, metadata !50, null}
!279 = metadata !{i32 830, i32 0, metadata !280, null}
!280 = metadata !{i32 786443, metadata !1, metadata !50, i32 830, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!281 = metadata !{i32 835, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !50, i32 835, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!283 = metadata !{i32 836, i32 0, metadata !282, null}
!284 = metadata !{i32 838, i32 0, metadata !285, null}
!285 = metadata !{i32 786443, metadata !1, metadata !282, i32 837, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!286 = metadata !{i32 846, i32 0, metadata !285, null}
!287 = metadata !{i32 851, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !285, i32 847, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!289 = metadata !{i32 856, i32 0, metadata !50, null}
!290 = metadata !{i32 858, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !50, i32 857, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!292 = metadata !{i32 859, i32 0, metadata !291, null}
!293 = metadata !{i32 861, i32 0, metadata !291, null}
!294 = metadata !{i32 862, i32 0, metadata !291, null}
!295 = metadata !{i32 863, i32 0, metadata !291, null}
!296 = metadata !{i32 865, i32 0, metadata !50, null}
!297 = metadata !{i32 867, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !50, i32 866, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!299 = metadata !{i32 868, i32 0, metadata !298, null}
!300 = metadata !{i32 872, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !298, i32 869, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!302 = metadata !{i32 873, i32 0, metadata !301, null}
!303 = metadata !{i32 884, i32 0, metadata !301, null}
!304 = metadata !{i32 876, i32 0, metadata !305, null}
!305 = metadata !{i32 786443, metadata !1, metadata !301, i32 875, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!306 = metadata !{i32 877, i32 0, metadata !305, null}
!307 = metadata !{i32 881, i32 0, metadata !305, null}
!308 = metadata !{i32 882, i32 0, metadata !305, null}
!309 = metadata !{i32 885, i32 0, metadata !298, null}
!310 = metadata !{i32 887, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !298, i32 886, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!312 = metadata !{i32 888, i32 0, metadata !311, null}
!313 = metadata !{i32 898, i32 0, metadata !311, null}
!314 = metadata !{i32 891, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !311, i32 890, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!316 = metadata !{i32 892, i32 0, metadata !315, null}
!317 = metadata !{i32 895, i32 0, metadata !315, null}
!318 = metadata !{i32 896, i32 0, metadata !315, null}
!319 = metadata !{i32 899, i32 0, metadata !298, null}
!320 = metadata !{i32 900, i32 0, metadata !298, null}
!321 = metadata !{i32 901, i32 0, metadata !298, null}
!322 = metadata !{i32 902, i32 0, metadata !298, null}
!323 = metadata !{i32 904, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !298, i32 903, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!325 = metadata !{i32 905, i32 0, metadata !324, null}
!326 = metadata !{i32 909, i32 0, metadata !50, null}
!327 = metadata !{i32 910, i32 0, metadata !50, null}
!328 = metadata !{i32 912, i32 0, metadata !47, null}
!329 = metadata !{i32 914, i32 0, metadata !330, null}
!330 = metadata !{i32 786443, metadata !1, metadata !47, i32 913, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!331 = metadata !{i32 917, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !330, i32 915, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!333 = metadata !{i32 919, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !332, i32 918, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!335 = metadata !{i32 920, i32 0, metadata !334, null}
!336 = metadata !{i32 921, i32 0, metadata !334, null}
!337 = metadata !{i32 923, i32 0, metadata !332, null}
!338 = metadata !{i32 924, i32 0, metadata !332, null}
!339 = metadata !{i32 925, i32 0, metadata !332, null}
!340 = metadata !{i32 929, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !330, i32 927, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!342 = metadata !{i32 931, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !341, i32 930, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!344 = metadata !{i32 934, i32 0, metadata !343, null}
!345 = metadata !{i32 935, i32 0, metadata !343, null}
!346 = metadata !{i32 936, i32 0, metadata !341, null}
!347 = metadata !{i32 938, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !341, i32 937, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!349 = metadata !{i32 941, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !348, i32 939, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!351 = metadata !{i32 944, i32 0, metadata !350, null}
!352 = metadata !{i32 945, i32 0, metadata !348, null}
!353 = metadata !{i32 946, i32 0, metadata !348, null}
!354 = metadata !{i32 947, i32 0, metadata !348, null}
!355 = metadata !{i32 954, i32 0, metadata !341, null}
!356 = metadata !{i32 955, i32 0, metadata !341, null}
!357 = metadata !{i32 958, i32 0, metadata !47, null}
!358 = metadata !{i32 960, i32 0, metadata !10, null}
!359 = metadata !{i32 301, i32 0, metadata !64, null}
!360 = metadata !{i32 303, i32 0, metadata !64, null}
!361 = metadata !{i32 304, i32 0, metadata !64, null}
!362 = metadata !{i32 305, i32 0, metadata !64, null}
!363 = metadata !{i32 335, i32 0, metadata !64, null}
!364 = metadata !{i32 337, i32 0, metadata !76, null}
!365 = metadata !{i32 361, i32 0, metadata !366, null}
!366 = metadata !{i32 786443, metadata !1, metadata !79, i32 361, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!367 = metadata !{i32 344, i32 0, metadata !368, null}
!368 = metadata !{i32 786443, metadata !1, metadata !75, i32 344, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!369 = metadata !{i32 347, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !368, i32 345, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!371 = metadata !{i32 346, i32 0, metadata !370, null}
!372 = metadata !{i32 348, i32 0, metadata !370, null}
!373 = metadata !{i32 352, i32 0, metadata !75, null}
!374 = metadata !{i32 363, i32 0, metadata !375, null}
!375 = metadata !{i32 786443, metadata !1, metadata !366, i32 362, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/445.gobmk/src/utils/getopt.c]
!376 = metadata !{i32 364, i32 0, metadata !375, null}
!377 = metadata !{i32 365, i32 0, metadata !375, null}
!378 = metadata !{i32 369, i32 0, metadata !79, null}
!379 = metadata !{i32 375, i32 0, metadata !64, null}
!380 = metadata !{i32 376, i32 0, metadata !64, null}
!381 = metadata !{i32 377, i32 0, metadata !64, null}
!382 = metadata !{i32 964, i32 0, metadata !57, null}
!383 = metadata !{i32 965, i32 0, metadata !57, null}
!384 = metadata !{i32 966, i32 0, metadata !57, null}
!385 = metadata !{i32 968, i32 0, metadata !57, null}

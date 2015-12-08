; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_listmanip.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [58 x i8] c"\0A fatal error in IVL_listAndSize(%p,%d,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [25 x i8] c"\0A ilist = %d, nlist = %d\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"\0A fatal error in IVL_firstInList(%p,%d)\0A bad input, ivl is NULL\0A\00", align 1
@.str3 = private unnamed_addr constant [84 x i8] c"\0A fatal error in IVL_firstInList(%p,%d)\0A bad input, ilist = %d, must be in [0,%d) \0A\00", align 1
@.str4 = private unnamed_addr constant [68 x i8] c"\0A fatal error in IVL_firstInList(%p,%d)\0A size > 0 but list is NULL\0A\00", align 1
@.str5 = private unnamed_addr constant [67 x i8] c"\0A fatal error in IVL_nextInList(%p,%d,%p)\0A bad input, ivl is NULL\0A\00", align 1
@.str6 = private unnamed_addr constant [86 x i8] c"\0A fatal error in IVL_nextInList(%p,%d,%p)\0A bad input, ilist = %d, must be in [0,%d) \0A\00", align 1
@.str7 = private unnamed_addr constant [56 x i8] c"\0A fatal error in IVL_nextInList(%p,%d,%p)\0A bad pointer\0A\00", align 1
@.str8 = private unnamed_addr constant [67 x i8] c"\0A fatal error in IVL_setList(%p,%d,%d,%p)\0A bad input, ivl is NULL\0A\00", align 1
@.str9 = private unnamed_addr constant [64 x i8] c"\0A fatal error in IVL_setList(%p,%d,%d,%p)\0A bad input, ilist < 0\00", align 1
@.str10 = private unnamed_addr constant [49 x i8] c"\0A ALLOCATE failure : bytes %zd, line %d, file %s\00", align 1
@.str11 = private unnamed_addr constant [78 x i8] c"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/IVL/src/IVL_listmanip.c\00", align 1
@.str12 = private unnamed_addr constant [134 x i8] c"\0A fatal error in IVL_setList(%p,%d,%d,%p)\0A you are trying to grow a list but type = %d\0A type must be IVL_CHUNKED = 1 or IVL_SOLO = 2\0A\00", align 1
@.str13 = private unnamed_addr constant [76 x i8] c"\0A fatal error in IVL_setPointerToList(%p,%d,%d,%p)\0A bad input, ivl is NULL\0A\00", align 1
@.str14 = private unnamed_addr constant [100 x i8] c"\0A fatal error in IVL_setPointerToList(%p,%d,%d,%p)\0A this method is only used with type IVL_CHUNKED\0A\00", align 1
@.str15 = private unnamed_addr constant [73 x i8] c"\0A fatal error in IVL_setPointerToList(%p,%d,%d,%p)\0A bad input, ilist < 0\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @IVL_listAndSize(%struct._IVL* %ivl, i32 %ilist, i32* %psize, i32** %pivec) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  %cmp1 = icmp slt i32 %ilist, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %entry
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %0 = load i32* %nlist, align 4, !tbaa !0
  %cmp3 = icmp sle i32 %0, %ilist
  %cmp5 = icmp eq i32* %psize, null
  %or.cond32 = or i1 %cmp3, %cmp5
  %cmp7 = icmp eq i32** %pivec, null
  %or.cond33 = or i1 %or.cond32, %cmp7
  br i1 %or.cond33, label %if.then, label %if.end13

if.then:                                          ; preds = %lor.lhs.false2, %entry
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8]* @.str, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist, i32* %psize, i32** %pivec) #4
  br i1 %cmp, label %if.end, label %if.then9

if.then9:                                         ; preds = %if.then
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %nlist10 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %3 = load i32* %nlist10, align 4, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([25 x i8]* @.str1, i64 0, i64 0), i32 %ilist, i32 %3) #4
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call12 = tail call i32 @IVL_writeForHumanEye(%struct._IVL* %ivl, %struct._IO_FILE* %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then9
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %lor.lhs.false2
  %idxprom = sext i32 %ilist to i64
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %5 = load i32** %sizes, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %5, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !0
  store i32 %6, i32* %psize, align 4, !tbaa !0
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %7 = load i32*** %p_vec, align 8, !tbaa !3
  %arrayidx15 = getelementptr inbounds i32** %7, i64 %idxprom
  %8 = load i32** %arrayidx15, align 8, !tbaa !3
  store i32* %8, i32** %pivec, align 8, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: optsize
declare i32 @IVL_writeForHumanEye(%struct._IVL*, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32* @IVL_firstInList(%struct._IVL* %ivl, i32 %ilist) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), %struct._IVL* null, i32 %ilist) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %ilist, -1
  %nlist4.phi.trans.insert = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %.pre = load i32* %nlist4.phi.trans.insert, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %.pre, %ilist
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([84 x i8]* @.str3, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist, i32 %ilist, i32 %.pre) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end6:                                          ; preds = %if.end
  %idxprom = sext i32 %ilist to i64
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %2 = load i32** %sizes, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %return, label %if.else

if.else:                                          ; preds = %if.end6
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %4 = load i32*** %p_vec, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i32** %4, i64 %idxprom
  %5 = load i32** %arrayidx10, align 8, !tbaa !3
  %cmp11 = icmp eq i32* %5, null
  br i1 %cmp11, label %if.else16, label %return

if.else16:                                        ; preds = %if.else
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([68 x i8]* @.str4, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist) #4
  tail call void @exit(i32 -1) #5
  unreachable

return:                                           ; preds = %if.else, %if.end6
  %retval.0 = phi i32* [ null, %if.end6 ], [ %5, %if.else ]
  ret i32* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32* @IVL_nextInList(%struct._IVL* %ivl, i32 %ilist, i32* %pi) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), %struct._IVL* null, i32 %ilist, i32* %pi) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp sgt i32 %ilist, -1
  %nlist4.phi.trans.insert = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %.pre = load i32* %nlist4.phi.trans.insert, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %.pre, %ilist
  %or.cond = and i1 %cmp1, %cmp2
  br i1 %or.cond, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([86 x i8]* @.str6, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist, i32* %pi, i32 %ilist, i32 %.pre) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq i32* %pi, null
  br i1 %cmp7, label %if.then16, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %if.end6
  %idxprom = sext i32 %ilist to i64
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %2 = load i32*** %p_vec, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32** %2, i64 %idxprom
  %3 = load i32** %arrayidx, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i32* %pi to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div47 = lshr exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div47 to i32
  %cmp9 = icmp slt i32 %conv, 0
  br i1 %cmp9, label %if.then16, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false8
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %4 = load i32** %sizes, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx13, align 4, !tbaa !0
  %cmp14 = icmp slt i32 %conv, %5
  br i1 %cmp14, label %if.else, label %if.then16

if.then16:                                        ; preds = %lor.lhs.false11, %lor.lhs.false8, %if.end6
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([56 x i8]* @.str7, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist, i32* %pi) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.else:                                          ; preds = %lor.lhs.false11
  %sub = add nsw i32 %5, -1
  %cmp21 = icmp eq i32 %conv, %sub
  %add.ptr = getelementptr inbounds i32* %pi, i64 1
  %retval.0 = select i1 %cmp21, i32* null, i32* %add.ptr
  ret i32* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @IVL_setList(%struct._IVL* %ivl, i32 %ilist, i32 %isize, i32* %ivec) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8]* @.str8, i64 0, i64 0), %struct._IVL* null, i32 %ilist, i32 %isize, i32* %ivec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %ilist, 0
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([64 x i8]* @.str9, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist, i32 %isize, i32* %ivec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end4:                                          ; preds = %if.end
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  %2 = load i32* %maxnlist, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %2, %ilist
  br i1 %cmp5, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.end4
  %cmp8 = icmp slt i32 %2, 10
  %.mul = select i1 %cmp8, i32 10, i32 %2
  %cmp11 = icmp sgt i32 %.mul, %ilist
  %add = add nsw i32 %ilist, 1
  %.mul.add = select i1 %cmp11, i32 %.mul, i32 %add
  tail call void @IVL_setMaxnlist(%struct._IVL* %ivl, i32 %.mul.add) #4
  br label %if.end14

if.end14:                                         ; preds = %if.end4, %if.then6
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %3 = load i32* %nlist, align 4, !tbaa !0
  %cmp15 = icmp sgt i32 %3, %ilist
  br i1 %cmp15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end14
  %add17 = add nsw i32 %ilist, 1
  store i32 %add17, i32* %nlist, align 4, !tbaa !0
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %if.then16
  %cmp20 = icmp eq i32 %isize, 0
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !0
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end19
  %cmp22 = icmp eq i32 %4, 2
  %idxprom = sext i32 %ilist to i64
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  br i1 %cmp22, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.then21
  %5 = load i32*** %p_vec, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32** %5, i64 %idxprom
  %6 = load i32** %arrayidx, align 8, !tbaa !3
  %cmp24 = icmp eq i32* %6, null
  br i1 %cmp24, label %if.end30, label %if.then25

if.then25:                                        ; preds = %if.then23
  tail call void @IVfree(i32* %6) #4
  br label %if.end30

if.end30:                                         ; preds = %if.then21, %if.then23, %if.then25
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %7 = load i32** %sizes, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds i32* %7, i64 %idxprom
  %8 = load i32* %arrayidx32, align 4, !tbaa !0
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %9 = load i32* %tsize, align 4, !tbaa !0
  %sub = sub nsw i32 %9, %8
  store i32 %sub, i32* %tsize, align 4, !tbaa !0
  store i32 0, i32* %arrayidx32, align 4, !tbaa !0
  %10 = load i32*** %p_vec, align 8, !tbaa !3
  %arrayidx38 = getelementptr inbounds i32** %10, i64 %idxprom
  store i32* null, i32** %arrayidx38, align 8, !tbaa !3
  br label %if.end128

if.else:                                          ; preds = %if.end19
  %cmp40 = icmp eq i32 %4, 3
  %idxprom42 = sext i32 %ilist to i64
  %sizes43 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %11 = load i32** %sizes43, align 8, !tbaa !3
  %arrayidx44 = getelementptr inbounds i32* %11, i64 %idxprom42
  %12 = load i32* %arrayidx44, align 4, !tbaa !0
  br i1 %cmp40, label %if.then41, label %if.else57

if.then41:                                        ; preds = %if.else
  %sub45 = sub i32 %isize, %12
  %tsize46 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %13 = load i32* %tsize46, align 4, !tbaa !0
  %add47 = add nsw i32 %sub45, %13
  store i32 %add47, i32* %tsize46, align 4, !tbaa !0
  store i32 %isize, i32* %arrayidx44, align 4, !tbaa !0
  %cmp51 = icmp eq i32* %ivec, null
  br i1 %cmp51, label %if.end128, label %if.then52

if.then52:                                        ; preds = %if.then41
  %p_vec54 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %14 = load i32*** %p_vec54, align 8, !tbaa !3
  %arrayidx55 = getelementptr inbounds i32** %14, i64 %idxprom42
  store i32* %ivec, i32** %arrayidx55, align 8, !tbaa !3
  br label %if.end128

if.else57:                                        ; preds = %if.else
  %cmp61 = icmp slt i32 %12, %isize
  br i1 %cmp61, label %if.then62, label %if.end111

if.then62:                                        ; preds = %if.else57
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb77
  ]

sw.bb:                                            ; preds = %if.then62
  %p_vec65 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %15 = load i32*** %p_vec65, align 8, !tbaa !3
  %arrayidx66 = getelementptr inbounds i32** %15, i64 %idxprom42
  %16 = load i32** %arrayidx66, align 8, !tbaa !3
  %cmp67 = icmp eq i32* %16, null
  br i1 %cmp67, label %if.end72, label %if.then68

if.then68:                                        ; preds = %sw.bb
  tail call void @IVfree(i32* %16) #4
  br label %if.end72

if.end72:                                         ; preds = %sw.bb, %if.then68
  %call73 = tail call i32* @IVinit(i32 %isize, i32 -1) #4
  %17 = load i32*** %p_vec65, align 8, !tbaa !3
  %arrayidx76 = getelementptr inbounds i32** %17, i64 %idxprom42
  store i32* %call73, i32** %arrayidx76, align 8, !tbaa !3
  br label %if.end111

sw.bb77:                                          ; preds = %if.then62
  %chunk78 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 7
  %18 = load %struct._Ichunk** %chunk78, align 8, !tbaa !3
  %cmp79 = icmp eq %struct._Ichunk* %18, null
  br i1 %cmp79, label %if.then82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb77
  %size = getelementptr inbounds %struct._Ichunk* %18, i64 0, i32 0
  %19 = load i32* %size, align 4, !tbaa !0
  %inuse = getelementptr inbounds %struct._Ichunk* %18, i64 0, i32 1
  %20 = load i32* %inuse, align 4, !tbaa !0
  %sub80 = sub nsw i32 %19, %20
  %cmp81 = icmp slt i32 %sub80, %isize
  br i1 %cmp81, label %if.then82, label %if.end101

if.then82:                                        ; preds = %lor.lhs.false, %sw.bb77
  %call83 = tail call noalias i8* @malloc(i64 24) #4
  %21 = bitcast i8* %call83 to %struct._Ichunk*
  %cmp84 = icmp eq i8* %call83, null
  br i1 %cmp84, label %if.then85, label %if.end88

if.then85:                                        ; preds = %if.then82
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call86 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([49 x i8]* @.str10, i64 0, i64 0), i64 24, i32 279, i8* getelementptr inbounds ([78 x i8]* @.str11, i64 0, i64 0)) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end88:                                         ; preds = %if.then82
  %incr = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 6
  %23 = load i32* %incr, align 4, !tbaa !0
  %cmp89 = icmp sgt i32 %23, %isize
  %size92 = bitcast i8* %call83 to i32*
  %.isize = select i1 %cmp89, i32 %23, i32 %isize
  store i32 %.isize, i32* %size92, align 4, !tbaa !0
  %inuse96 = getelementptr inbounds i8* %call83, i64 4
  %24 = bitcast i8* %inuse96 to i32*
  store i32 0, i32* %24, align 4, !tbaa !0
  %call98 = tail call i32* @IVinit(i32 %.isize, i32 -1) #4
  %base = getelementptr inbounds i8* %call83, i64 8
  %25 = bitcast i8* %base to i32**
  store i32* %call98, i32** %25, align 8, !tbaa !3
  %26 = load %struct._Ichunk** %chunk78, align 8, !tbaa !3
  %next = getelementptr inbounds i8* %call83, i64 16
  %27 = bitcast i8* %next to %struct._Ichunk**
  store %struct._Ichunk* %26, %struct._Ichunk** %27, align 8, !tbaa !3
  store %struct._Ichunk* %21, %struct._Ichunk** %chunk78, align 8, !tbaa !3
  %inuse103.phi.trans.insert = getelementptr inbounds i8* %call83, i64 4
  %28 = bitcast i8* %inuse103.phi.trans.insert to i32*
  %.pre = load i32* %28, align 4, !tbaa !0
  br label %if.end101

if.end101:                                        ; preds = %if.end88, %lor.lhs.false
  %29 = phi i32 [ %.pre, %if.end88 ], [ %20, %lor.lhs.false ]
  %chunk.0 = phi %struct._Ichunk* [ %21, %if.end88 ], [ %18, %lor.lhs.false ]
  %base102 = getelementptr inbounds %struct._Ichunk* %chunk.0, i64 0, i32 2
  %30 = load i32** %base102, align 8, !tbaa !3
  %inuse103 = getelementptr inbounds %struct._Ichunk* %chunk.0, i64 0, i32 1
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i32* %30, i64 %idx.ext
  %p_vec105 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %31 = load i32*** %p_vec105, align 8, !tbaa !3
  %arrayidx106 = getelementptr inbounds i32** %31, i64 %idxprom42
  store i32* %add.ptr, i32** %arrayidx106, align 8, !tbaa !3
  %add108 = add nsw i32 %29, %isize
  store i32 %add108, i32* %inuse103, align 4, !tbaa !0
  br label %if.end111

sw.default:                                       ; preds = %if.then62
  %32 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call110 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([134 x i8]* @.str12, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist, i32 %isize, i32* %ivec, i32 %4) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end111:                                        ; preds = %if.end72, %if.end101, %if.else57
  %33 = load i32** %sizes43, align 8, !tbaa !3
  %arrayidx114 = getelementptr inbounds i32* %33, i64 %idxprom42
  %34 = load i32* %arrayidx114, align 4, !tbaa !0
  %sub115 = sub i32 %isize, %34
  %tsize116 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %35 = load i32* %tsize116, align 4, !tbaa !0
  %add117 = add nsw i32 %sub115, %35
  store i32 %add117, i32* %tsize116, align 4, !tbaa !0
  store i32 %isize, i32* %arrayidx114, align 4, !tbaa !0
  %cmp121 = icmp eq i32* %ivec, null
  br i1 %cmp121, label %if.end128, label %if.then122

if.then122:                                       ; preds = %if.end111
  %p_vec124 = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  %36 = load i32*** %p_vec124, align 8, !tbaa !3
  %arrayidx125 = getelementptr inbounds i32** %36, i64 %idxprom42
  %37 = load i32** %arrayidx125, align 8, !tbaa !3
  tail call void @IVcopy(i32 %isize, i32* %37, i32* %ivec) #4
  br label %if.end128

if.end128:                                        ; preds = %if.then41, %if.end111, %if.then52, %if.then122, %if.end30
  ret void
}

; Function Attrs: optsize
declare void @IVL_setMaxnlist(%struct._IVL*, i32) #2

; Function Attrs: optsize
declare void @IVfree(i32*) #2

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #1

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #2

; Function Attrs: nounwind optsize uwtable
define void @IVL_setPointerToList(%struct._IVL* %ivl, i32 %ilist, i32 %isize, i32* %ivec) #0 {
entry:
  %cmp = icmp eq %struct._IVL* %ivl, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([76 x i8]* @.str13, i64 0, i64 0), %struct._IVL* null, i32 %ilist, i32 %isize, i32* %ivec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !0
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([100 x i8]* @.str14, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist, i32 %isize, i32* %ivec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %ilist, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([73 x i8]* @.str15, i64 0, i64 0), %struct._IVL* %ivl, i32 %ilist, i32 %isize, i32* %ivec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end4
  %maxnlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 1
  %4 = load i32* %maxnlist, align 4, !tbaa !0
  %cmp9 = icmp sgt i32 %4, %ilist
  br i1 %cmp9, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.end8
  %cmp12 = icmp slt i32 %4, 10
  %.mul = select i1 %cmp12, i32 10, i32 %4
  %cmp15 = icmp sgt i32 %.mul, %ilist
  %add = add nsw i32 %ilist, 1
  %.mul.add = select i1 %cmp15, i32 %.mul, i32 %add
  tail call void @IVL_setMaxnlist(%struct._IVL* %ivl, i32 %.mul.add) #4
  br label %if.end18

if.end18:                                         ; preds = %if.end8, %if.then10
  %nlist = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 2
  %5 = load i32* %nlist, align 4, !tbaa !0
  %cmp19 = icmp sgt i32 %5, %ilist
  br i1 %cmp19, label %if.end23, label %if.then20

if.then20:                                        ; preds = %if.end18
  %add21 = add nsw i32 %ilist, 1
  store i32 %add21, i32* %nlist, align 4, !tbaa !0
  br label %if.end23

if.end23:                                         ; preds = %if.end18, %if.then20
  %6 = load i32* %type, align 4, !tbaa !0
  %cmp25 = icmp eq i32 %6, 2
  %idxprom = sext i32 %ilist to i64
  %p_vec = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 5
  br i1 %cmp25, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end23
  %7 = load i32*** %p_vec, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32** %7, i64 %idxprom
  %8 = load i32** %arrayidx, align 8, !tbaa !3
  %cmp26 = icmp eq i32* %8, null
  br i1 %cmp26, label %if.end31, label %if.then27

if.then27:                                        ; preds = %land.lhs.true
  tail call void @IVfree(i32* %8) #4
  br label %if.end31

if.end31:                                         ; preds = %if.end23, %land.lhs.true, %if.then27
  %sizes = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 4
  %9 = load i32** %sizes, align 8, !tbaa !3
  %arrayidx33 = getelementptr inbounds i32* %9, i64 %idxprom
  %10 = load i32* %arrayidx33, align 4, !tbaa !0
  %sub = sub i32 %isize, %10
  %tsize = getelementptr inbounds %struct._IVL* %ivl, i64 0, i32 3
  %11 = load i32* %tsize, align 4, !tbaa !0
  %add34 = add nsw i32 %sub, %11
  store i32 %add34, i32* %tsize, align 4, !tbaa !0
  store i32 %isize, i32* %arrayidx33, align 4, !tbaa !0
  %12 = load i32*** %p_vec, align 8, !tbaa !3
  %arrayidx40 = getelementptr inbounds i32** %12, i64 %idxprom
  store i32* %ivec, i32** %arrayidx40, align 8, !tbaa !3
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

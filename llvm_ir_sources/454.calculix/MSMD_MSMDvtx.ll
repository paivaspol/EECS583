; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/MSMD/src/MSMD_MSMDvtx.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }
%struct._IP = type { i32, %struct._IP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A fatal error in MSMDvtx_print(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [55 x i8] c"\0A vertex %d, weight %d, mark %c, status %c, stage = %d\00", align 1
@.str2 = private unnamed_addr constant [17 x i8] c"\0A    edges(%d) :\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"\0A    subtrees :\00", align 1
@.str4 = private unnamed_addr constant [17 x i8] c"\0A    parent = %d\00", align 1
@.str5 = private unnamed_addr constant [28 x i8] c"\0A    bnd(%d), weight = %d :\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @MSMDvtx_print(%struct._MSMDvtx* %v, %struct._IO_FILE* %fp) #0 {
entry:
  %ierr = alloca i32, align 4
  %cmp = icmp eq %struct._MSMDvtx* %v, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._MSMDvtx* %v, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 0
  %1 = load i32* %id, align 4, !tbaa !3
  %wght = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 4
  %2 = load i32* %wght, align 4, !tbaa !3
  %mark = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 1
  %3 = load i8* %mark, align 1, !tbaa !1
  %conv = sext i8 %3 to i32
  %status = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 2
  %4 = load i8* %status, align 1, !tbaa !1
  %conv2 = sext i8 %4 to i32
  %stage = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 3
  %5 = load i32* %stage, align 4, !tbaa !3
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str1, i64 0, i64 0), i32 %1, i32 %2, i32 %conv, i32 %conv2, i32 %5) #5
  %6 = load i8* %status, align 1, !tbaa !1
  %conv5 = sext i8 %6 to i32
  switch i32 %conv5, label %sw.epilog [
    i32 79, label %sw.bb
    i32 68, label %sw.bb
    i32 82, label %sw.bb
    i32 66, label %sw.bb
    i32 76, label %sw.bb11
    i32 69, label %sw.bb11
    i32 73, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  %nadj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %7 = load i32* %nadj, align 4, !tbaa !3
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str2, i64 0, i64 0), i32 %7) #5
  %8 = load i32* %nadj, align 4, !tbaa !3
  %adj = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %9 = load i32** %adj, align 8, !tbaa !0
  %call8 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %8, i32* %9, i32 13, i32* %ierr) #5
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i64 15, i64 1, %struct._IO_FILE* %fp)
  %subtrees = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 9
  %11 = load %struct._IP** %subtrees, align 8, !tbaa !0
  %call10 = call i32 @IP_fp80(%struct._IO_FILE* %fp, %struct._IP* %11, i32 13) #5
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end, %if.end
  %par = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 8
  %12 = load %struct._MSMDvtx** %par, align 8, !tbaa !0
  %cmp12 = icmp eq %struct._MSMDvtx* %12, null
  br i1 %cmp12, label %cond.end, label %cond.false

cond.false:                                       ; preds = %sw.bb11
  %id15 = getelementptr inbounds %struct._MSMDvtx* %12, i64 0, i32 0
  %13 = load i32* %id15, align 4, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %sw.bb11, %cond.false
  %cond = phi i32 [ %13, %cond.false ], [ -1, %sw.bb11 ]
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %cond) #5
  %nadj17 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 5
  %14 = load i32* %nadj17, align 4, !tbaa !3
  %bndwght = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 7
  %15 = load i32* %bndwght, align 4, !tbaa !3
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0), i32 %14, i32 %15) #5
  %16 = load i32* %nadj17, align 4, !tbaa !3
  %adj20 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 6
  %17 = load i32** %adj20, align 8, !tbaa !0
  %call21 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %16, i32* %17, i32 10, i32* %ierr) #5
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %par23 = getelementptr inbounds %struct._MSMDvtx* %v, i64 0, i32 8
  %18 = load %struct._MSMDvtx** %par23, align 8, !tbaa !0
  %cmp24 = icmp eq %struct._MSMDvtx* %18, null
  br i1 %cmp24, label %cond.end30, label %cond.false27

cond.false27:                                     ; preds = %sw.bb22
  %id29 = getelementptr inbounds %struct._MSMDvtx* %18, i64 0, i32 0
  %19 = load i32* %id29, align 4, !tbaa !3
  br label %cond.end30

cond.end30:                                       ; preds = %sw.bb22, %cond.false27
  %cond31 = phi i32 [ %19, %cond.false27 ], [ -1, %sw.bb22 ]
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str4, i64 0, i64 0), i32 %cond31) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %cond.end30, %cond.end, %sw.bb
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @IP_fp80(%struct._IO_FILE*, %struct._IP*, i32) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}

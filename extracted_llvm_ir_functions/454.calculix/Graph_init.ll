; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Graph/src/Graph_init.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [67 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A graph is NULL\0A\00", align 1
@.str1 = private unnamed_addr constant [89 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid type = %d, must be in [0,3]\0A\00", align 1
@.str2 = private unnamed_addr constant [81 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nvtx = %d, must be positive\0A\00", align 1
@.str3 = private unnamed_addr constant [85 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nvbnd = %d, must be nonnegative\0A\00", align 1
@.str4 = private unnamed_addr constant [86 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A nedges = %d, must be nonnegative\0A\00", align 1
@.str5 = private unnamed_addr constant [74 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid adjType = %d\0A\00", align 1
@.str6 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Graph_init1(%p,%d,%d,%d,%d,%d,%d)\0A invalid ewghtType = %d\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str7 = private unnamed_addr constant [76 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A graph is NULL\0A\00", align 1
@.str8 = private unnamed_addr constant [98 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A invalid type = %d, must be in [0,3]\0A\00", align 1
@.str9 = private unnamed_addr constant [90 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nvtx = %d, must be positive\0A\00", align 1
@.str10 = private unnamed_addr constant [94 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nvbnd = %d, must be nonnegative\0A\00", align 1
@.str11 = private unnamed_addr constant [95 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A nedges = %d, must be nonnegative\0A\00", align 1
@.str12 = private unnamed_addr constant [77 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A adjIVL is NULL\0A\00", align 1
@.str13 = private unnamed_addr constant [87 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A type = %d, vwghts is NULL\00", align 1
@.str14 = private unnamed_addr constant [89 x i8] c"\0A fatal error in Graph_init2(%p,%d,%d,%d,%d,%d,%d,%p,%p,%p)\0A type = %d, ewghtIVL is NULL\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Graph_init1(%struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %g, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([67 x i8]* @.str, i64 0, i64 0), %struct._Graph* null, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = icmp ugt i32 %type, 3
  br i1 %1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([89 x i8]* @.str1, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp slt i32 %nvtx, 1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([81 x i8]* @.str2, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nvtx) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp slt i32 %nvbnd, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([85 x i8]* @.str3, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nvbnd) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp slt i32 %nedges, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([86 x i8]* @.str4, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %nedges) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end13
  %.off = add i32 %adjType, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([74 x i8]* @.str5, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %adjType) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog:                                        ; preds = %if.end17
  %.off51 = add i32 %ewghtType, -1
  %switch52 = icmp ult i32 %.off51, 3
  br i1 %switch52, label %sw.epilog22, label %sw.default20

sw.default20:                                     ; preds = %sw.epilog
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([76 x i8]* @.str6, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %adjType, i32 %ewghtType, i32 %ewghtType) #4
  tail call void @exit(i32 -1) #5
  unreachable

sw.epilog22:                                      ; preds = %sw.epilog
  tail call void @Graph_clearData(%struct._Graph* %g) #4
  %type23 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0
  store i32 %type, i32* %type23, align 4, !tbaa !3
  %nvtx24 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  store i32 %nvtx, i32* %nvtx24, align 4, !tbaa !3
  %nvbnd25 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2
  store i32 %nvbnd, i32* %nvbnd25, align 4, !tbaa !3
  %nedges26 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 3
  store i32 %nedges, i32* %nedges26, align 4, !tbaa !3
  %add = add nsw i32 %nvbnd, %nvtx
  %call27 = tail call %struct._IVL* @IVL_new() #4
  %adjIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6
  store %struct._IVL* %call27, %struct._IVL** %adjIVL, align 8, !tbaa !0
  %cmp28 = icmp eq i32 %nedges, 0
  %cmp30 = icmp eq i32 %adjType, 3
  %or.cond = or i1 %cmp28, %cmp30
  br i1 %or.cond, label %if.then31, label %if.else

if.then31:                                        ; preds = %sw.epilog22
  tail call void @IVL_init1(%struct._IVL* %call27, i32 %adjType, i32 %add) #4
  br label %if.end34

if.else:                                          ; preds = %sw.epilog22
  tail call void @IVL_init2(%struct._IVL* %call27, i32 %adjType, i32 %add, i32 %nedges) #4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then31
  %rem = srem i32 %type, 2
  %cmp35 = icmp eq i32 %rem, 1
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end34
  %call37 = tail call i32* @IVinit(i32 %add, i32 0) #4
  %vwghts = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  store i32* %call37, i32** %vwghts, align 8, !tbaa !0
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34
  %cmp39 = icmp sgt i32 %type, 1
  br i1 %cmp39, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.end38
  %call41 = tail call %struct._IVL* @IVL_new() #4
  %ewghtIVL = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8
  store %struct._IVL* %call41, %struct._IVL** %ewghtIVL, align 8, !tbaa !0
  %cmp44 = icmp eq i32 %ewghtType, 3
  %or.cond143 = or i1 %cmp28, %cmp44
  br i1 %or.cond143, label %if.then45, label %if.else47

if.then45:                                        ; preds = %if.then40
  tail call void @IVL_init1(%struct._IVL* %call41, i32 %ewghtType, i32 %add) #4
  br label %if.end50

if.else47:                                        ; preds = %if.then40
  tail call void @IVL_init2(%struct._IVL* %call41, i32 %ewghtType, i32 %add, i32 %nedges) #4
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.else47, %if.end38
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Graph_clearData(%struct._Graph*) #3

; Function Attrs: optsize
declare %struct._IVL* @IVL_new() #3

; Function Attrs: optsize
declare void @IVL_init1(%struct._IVL*, i32, i32) #3

; Function Attrs: optsize
declare void @IVL_init2(%struct._IVL*, i32, i32, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @Graph_init2(%struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %g, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([76 x i8]* @.str7, i64 0, i64 0), %struct._Graph* null, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = icmp ugt i32 %type, 3
  br i1 %1, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([98 x i8]* @.str8, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end5:                                          ; preds = %if.end
  %cmp6 = icmp slt i32 %nvtx, 1
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([90 x i8]* @.str9, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nvtx) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end9:                                          ; preds = %if.end5
  %cmp10 = icmp slt i32 %nvbnd, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([94 x i8]* @.str10, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nvbnd) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end13:                                         ; preds = %if.end9
  %cmp14 = icmp slt i32 %nedges, 0
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end13
  %5 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([95 x i8]* @.str11, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* %ewghtIVL, i32 %nedges) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end13
  %cmp18 = icmp eq %struct._IVL* %adjIVL, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %6 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([77 x i8]* @.str12, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* null, i32* %vwghts, %struct._IVL* %ewghtIVL) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end21:                                         ; preds = %if.end17
  %rem = srem i32 %type, 2
  %cmp22 = icmp eq i32 %rem, 1
  %cmp23 = icmp eq i32* %vwghts, null
  %or.cond = and i1 %cmp22, %cmp23
  br i1 %or.cond, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end21
  %7 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call25 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([87 x i8]* @.str13, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* null, %struct._IVL* %ewghtIVL, i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end26:                                         ; preds = %if.end21
  %cmp27 = icmp sgt i32 %type, 1
  %cmp29 = icmp eq %struct._IVL* %ewghtIVL, null
  %or.cond157 = and i1 %cmp27, %cmp29
  br i1 %or.cond157, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  %8 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([89 x i8]* @.str14, i64 0, i64 0), %struct._Graph* %g, i32 %type, i32 %nvtx, i32 %nvbnd, i32 %nedges, i32 %totvwght, i32 %totewght, %struct._IVL* %adjIVL, i32* %vwghts, %struct._IVL* null, i32 %type) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end32:                                         ; preds = %if.end26
  tail call void @Graph_clearData(%struct._Graph* %g) #4
  %type33 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 0
  store i32 %type, i32* %type33, align 4, !tbaa !3
  %nvtx34 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 1
  store i32 %nvtx, i32* %nvtx34, align 4, !tbaa !3
  %nvbnd35 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 2
  store i32 %nvbnd, i32* %nvbnd35, align 4, !tbaa !3
  %nedges36 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 3
  store i32 %nedges, i32* %nedges36, align 4, !tbaa !3
  %totvwght37 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 4
  store i32 %totvwght, i32* %totvwght37, align 4, !tbaa !3
  %totewght38 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 5
  store i32 %totewght, i32* %totewght38, align 4, !tbaa !3
  %adjIVL39 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 6
  store %struct._IVL* %adjIVL, %struct._IVL** %adjIVL39, align 8, !tbaa !0
  br i1 %cmp22, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end32
  %vwghts43 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 7
  store i32* %vwghts, i32** %vwghts43, align 8, !tbaa !0
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end32
  br i1 %cmp27, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.end44
  %ewghtIVL47 = getelementptr inbounds %struct._Graph* %g, i64 0, i32 8
  store %struct._IVL* %ewghtIVL, %struct._IVL** %ewghtIVL47, align 8, !tbaa !0
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end44
  ret void
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}

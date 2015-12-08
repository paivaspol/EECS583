; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

@debug = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [62 x i8] c"\0AXTC error: read/write of %s failed, source file %s, line %d\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"XTC read/write of %s failed, source file %s, line %d\0A\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str3 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"Frame contains more atoms (%d) than expected (%d)\00", align 1
@.str5 = private unnamed_addr constant [55 x i8] c"Magic Number Error in XTC file (read %d, should be %d)\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"natoms\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"time\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @open_xtc(i8* %fn, i8* %mode) #0 {
entry:
  %call = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #3
  ret i32 %call
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @close_xtc(i32 %fp) #0 {
entry:
  tail call void @gmx_fio_close(i32 %fp) #3
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @xtc_check(i8* %str, i32 %bResult, i8* %file, i32 %line) #0 {
entry:
  %tobool = icmp eq i32 %bResult, 0
  br i1 %tobool, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool1 = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool1, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* %str, i8* %file, i32 %line) #3
  br label %return

return:                                           ; preds = %entry, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize uwtable
define void @xtc_check_fat_err(i8* %str, i32 %bResult, i8* %file, i32 %line) #0 {
entry:
  %tobool = icmp eq i32 %bResult, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i8* %str, i8* %file, i32 %line) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @write_xtc(i32 %fp, i32 %natoms, i32 %step, float %time, [3 x float]* %box, [3 x float]* %x, float %prec) #0 {
entry:
  %natoms.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %time.addr = alloca float, align 4
  %prec.addr = alloca float, align 4
  %magic_number = alloca i32, align 4
  %bDum = alloca i32, align 4
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !3
  store i32 %step, i32* %step.addr, align 4, !tbaa !3
  store float %time, float* %time.addr, align 4, !tbaa !4
  store float %prec, float* %prec.addr, align 4, !tbaa !4
  store i32 1995, i32* %magic_number, align 4, !tbaa !3
  %call = call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #3
  %call1 = call fastcc i32 @xtc_header(%struct.XDR* %call, i32* %magic_number, i32* %natoms.addr, i32* %step.addr, float* %time.addr, i32* %bDum) #4
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @xtc_coord(%struct.XDR* %call, i32* %natoms.addr, [3 x float]* %box, [3 x float]* %x, float* %prec.addr) #4
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct.XDR* @gmx_fio_getxdr(i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @xtc_header(%struct.XDR* %xd, i32* %magic, i32* %natoms, i32* %step, float* %time, i32* nocapture %bOK) #0 {
entry:
  %call = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %magic) #3
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %natoms) #3
  %tobool.i = icmp eq i32 %call1, 0
  br i1 %tobool.i, label %if.then.i, label %if.then3

if.then.i:                                        ; preds = %if.end
  %0 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool1.i = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool1.i, label %if.end11, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 88) #3
  br label %if.end11

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %step) #3
  %tobool.i19 = icmp eq i32 %call4, 0
  br i1 %tobool.i19, label %if.then.i21, label %if.then8

if.then.i21:                                      ; preds = %if.then3
  %1 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool1.i20 = icmp eq %struct._IO_FILE* %1, null
  br i1 %tobool1.i20, label %if.end11, label %if.then2.i23

if.then2.i23:                                     ; preds = %if.then.i21
  %call.i22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 90) #3
  br label %if.end11

if.then8:                                         ; preds = %if.then3
  %call9 = tail call i32 @xdr_real(%struct.XDR* %xd, float* %time) #3
  %tobool.i26 = icmp eq i32 %call9, 0
  br i1 %tobool.i26, label %if.then.i28, label %if.end11

if.then.i28:                                      ; preds = %if.then8
  %2 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool1.i27 = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool1.i27, label %if.end11, label %if.then2.i30

if.then2.i30:                                     ; preds = %if.then.i28
  %call.i29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 92) #3
  br label %if.end11

if.end11:                                         ; preds = %if.then2.i, %if.then.i, %if.then2.i23, %if.then.i21, %if.then2.i30, %if.then.i28, %if.then8
  %result.1 = phi i32 [ 0, %if.then.i28 ], [ 0, %if.then2.i30 ], [ 1, %if.then8 ], [ 0, %if.then.i21 ], [ 0, %if.then2.i23 ], [ 0, %if.then.i ], [ 0, %if.then2.i ]
  store i32 %result.1, i32* %bOK, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %result.1, %if.end11 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @xtc_coord(%struct.XDR* %xd, i32* %natoms, [3 x float]* %box, [3 x float]* %x, float* %prec) #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv38 = phi i64 [ 0, %entry ], [ %indvars.iv.next39, %for.inc10 ]
  br i1 false, label %if.end, label %for.body6

for.body6:                                        ; preds = %for.cond1.preheader, %xtc_check.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %xtc_check.exit ], [ 0, %for.cond1.preheader ]
  %arrayidx8 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv38, i64 %indvars.iv
  %call = tail call i32 @xdr_real(%struct.XDR* %xd, float* %arrayidx8) #3
  %tobool.i = icmp eq i32 %call, 0
  br i1 %tobool.i, label %if.then.i, label %xtc_check.exit

if.then.i:                                        ; preds = %for.body6
  %0 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool1.i = icmp eq %struct._IO_FILE* %0, null
  br i1 %tobool1.i, label %if.end, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 106) #3
  br label %if.end

xtc_check.exit:                                   ; preds = %for.body6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %1 = trunc i64 %indvars.iv to i32
  %cmp2 = icmp sgt i32 %1, 1
  br i1 %cmp2, label %for.inc10, label %for.body6

for.inc10:                                        ; preds = %xtc_check.exit
  %indvars.iv.next39 = add i64 %indvars.iv38, 1
  %2 = trunc i64 %indvars.iv38 to i32
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %if.then, label %for.cond1.preheader

if.then:                                          ; preds = %for.inc10
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %call15 = tail call i32 @xdr3drcoord(%struct.XDR* %xd, float* %arraydecay, i32* %natoms, float* %prec) #3
  %tobool.i26 = icmp eq i32 %call15, 0
  br i1 %tobool.i26, label %if.then.i28, label %if.end

if.then.i28:                                      ; preds = %if.then
  %3 = load %struct._IO_FILE** @debug, align 8, !tbaa !0
  %tobool1.i27 = icmp eq %struct._IO_FILE* %3, null
  br i1 %tobool1.i27, label %if.end, label %if.then2.i30

if.then2.i30:                                     ; preds = %if.then.i28
  %call.i29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 110) #3
  br label %if.end

if.end:                                           ; preds = %for.cond1.preheader, %if.then.i, %if.then2.i, %if.then2.i30, %if.then.i28, %if.then
  %result.2 = phi i32 [ 0, %if.then.i28 ], [ 0, %if.then2.i30 ], [ 1, %if.then ], [ 0, %if.then2.i ], [ 0, %if.then.i ], [ 0, %for.cond1.preheader ]
  ret i32 %result.2
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_first_xtc(i32 %fp, i32* %natoms, i32* %step, float* %time, [3 x float]* %box, [3 x float]** nocapture %x, float* %prec, i32* nocapture %bOK) #0 {
entry:
  %magic = alloca i32, align 4
  store i32 1, i32* %bOK, align 4, !tbaa !3
  %call = call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #3
  %call1 = call fastcc i32 @xtc_header(%struct.XDR* %call, i32* %magic, i32* %natoms, i32* %step, float* %time, i32* %bOK) #4
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32* %magic, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %0, 1995
  br i1 %cmp.i, label %check_xtc_magic.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 %0, i32 1995) #3
  br label %check_xtc_magic.exit

check_xtc_magic.exit:                             ; preds = %if.end, %if.then.i
  %1 = load i32* %natoms, align 4, !tbaa !3
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 157, i32 %1, i32 12) #3
  %2 = bitcast i8* %call2 to [3 x float]*
  store [3 x float]* %2, [3 x float]** %x, align 8, !tbaa !0
  %call3 = call fastcc i32 @xtc_coord(%struct.XDR* %call, i32* %natoms, [3 x float]* %box, [3 x float]* %2, float* %prec) #4
  store i32 %call3, i32* %bOK, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %check_xtc_magic.exit
  %retval.0 = phi i32 [ %call3, %check_xtc_magic.exit ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @read_next_xtc(i32 %fp, i32 %natoms, i32* %step, float* %time, [3 x float]* %box, [3 x float]* %x, float* %prec, i32* nocapture %bOK) #0 {
entry:
  %natoms.addr = alloca i32, align 4
  %magic = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !3
  store i32 1, i32* %bOK, align 4, !tbaa !3
  %call = call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #3
  %call1 = call fastcc i32 @xtc_header(%struct.XDR* %call, i32* %magic, i32* %n, i32* %step, float* %time, i32* %bOK) #4
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %0 = load i32* %n, align 4, !tbaa !3
  %cmp = icmp sgt i32 %0, %natoms
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), i32 %0, i32 %natoms) #3
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %1 = load i32* %magic, align 4, !tbaa !3
  %cmp.i = icmp eq i32 %1, 1995
  br i1 %cmp.i, label %check_xtc_magic.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end3
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 %1, i32 1995) #3
  br label %check_xtc_magic.exit

check_xtc_magic.exit:                             ; preds = %if.end3, %if.then.i
  %call4 = call fastcc i32 @xtc_coord(%struct.XDR* %call, i32* %natoms.addr, [3 x float]* %box, [3 x float]* %x, float* %prec) #4
  store i32 %call4, i32* %bOK, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %check_xtc_magic.exit
  %retval.0 = phi i32 [ %call4, %check_xtc_magic.exit ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @xdr_real(%struct.XDR*, float*) #1

; Function Attrs: optsize
declare i32 @xdr3drcoord(%struct.XDR*, float*, i32*, float*) #1

; Function Attrs: nounwind optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}

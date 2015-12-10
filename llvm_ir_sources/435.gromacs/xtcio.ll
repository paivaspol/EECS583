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
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !19), !dbg !174
  tail call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !20), !dbg !174
  %call = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #4, !dbg !175
  ret i32 %call, !dbg !175
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @close_xtc(i32 %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !25), !dbg !176
  tail call void @gmx_fio_close(i32 %fp) #4, !dbg !177
  ret void, !dbg !178
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @xtc_check(i8* %str, i32 %bResult, i8* %file, i32 %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !30), !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32 %bResult}, i64 0, metadata !31), !dbg !179
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !32), !dbg !179
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !33), !dbg !179
  %tobool = icmp eq i32 %bResult, 0, !dbg !180
  br i1 %tobool, label %if.then, label %return, !dbg !180

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @debug, align 8, !dbg !181, !tbaa !183
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !181
  br i1 %tobool1, label %return, label %if.then2, !dbg !181

if.then2:                                         ; preds = %if.then
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* %str, i8* %file, i32 %line) #4, !dbg !186
  br label %return, !dbg !186

return:                                           ; preds = %entry, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 1, %entry ]
  ret i32 %retval.0, !dbg !187
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @xtc_check_fat_err(i8* %str, i32 %bResult, i8* %file, i32 %line) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %str}, i64 0, metadata !38), !dbg !188
  tail call void @llvm.dbg.value(metadata !{i32 %bResult}, i64 0, metadata !39), !dbg !188
  tail call void @llvm.dbg.value(metadata !{i8* %file}, i64 0, metadata !40), !dbg !188
  tail call void @llvm.dbg.value(metadata !{i32 %line}, i64 0, metadata !41), !dbg !188
  %tobool = icmp eq i32 %bResult, 0, !dbg !189
  br i1 %tobool, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i8* %str, i8* %file, i32 %line) #4, !dbg !190
  br label %if.end, !dbg !192

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !193
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @write_xtc(i32 %fp, i32 %natoms, i32 %step, float %time, [3 x float]* %box, [3 x float]* %x, float %prec) #0 {
entry:
  %natoms.addr = alloca i32, align 4
  %step.addr = alloca i32, align 4
  %time.addr = alloca float, align 4
  %prec.addr = alloca float, align 4
  %magic_number = alloca i32, align 4
  %bDum = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !54), !dbg !194
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !55), !dbg !195
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !196
  call void @llvm.dbg.declare(metadata !{i32* %natoms.addr}, metadata !55), !dbg !195
  call void @llvm.dbg.value(metadata !{i32 %step}, i64 0, metadata !56), !dbg !195
  store i32 %step, i32* %step.addr, align 4, !tbaa !196
  call void @llvm.dbg.declare(metadata !{i32* %step.addr}, metadata !56), !dbg !195
  call void @llvm.dbg.value(metadata !{float %time}, i64 0, metadata !57), !dbg !195
  store float %time, float* %time.addr, align 4, !tbaa !197
  call void @llvm.dbg.declare(metadata !{float* %time.addr}, metadata !57), !dbg !195
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !58), !dbg !198
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !59), !dbg !198
  call void @llvm.dbg.value(metadata !{float %prec}, i64 0, metadata !60), !dbg !198
  store float %prec, float* %prec.addr, align 4, !tbaa !197
  call void @llvm.dbg.declare(metadata !{float* %prec.addr}, metadata !60), !dbg !198
  call void @llvm.dbg.declare(metadata !{i32* %magic_number}, metadata !61), !dbg !199
  call void @llvm.dbg.value(metadata !200, i64 0, metadata !61), !dbg !199
  store i32 1995, i32* %magic_number, align 4, !dbg !199, !tbaa !196
  call void @llvm.dbg.declare(metadata !{i32* %bDum}, metadata !115), !dbg !201
  %call = call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #4, !dbg !202
  call void @llvm.dbg.value(metadata !{%struct.XDR* %call}, i64 0, metadata !62), !dbg !202
  %call1 = call fastcc i32 @xtc_header(%struct.XDR* %call, i32* %magic_number, i32* %natoms.addr, i32* %step.addr, float* %time.addr, i32* %bDum) #5, !dbg !203
  %tobool = icmp eq i32 %call1, 0, !dbg !203
  br i1 %tobool, label %return, label %if.end, !dbg !203

if.end:                                           ; preds = %entry
  %call2 = call fastcc i32 @xtc_coord(%struct.XDR* %call, i32* %natoms.addr, [3 x float]* %box, [3 x float]* %x, float* %prec.addr) #5, !dbg !204
  br label %return, !dbg !204

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !205
}

; Function Attrs: optsize
declare %struct.XDR* @gmx_fio_getxdr(i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @xtc_header(%struct.XDR* %xd, i32* %magic, i32* %natoms, i32* %step, float* %time, i32* nocapture %bOK) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xd}, i64 0, metadata !167), !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32* %magic}, i64 0, metadata !168), !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !169), !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !170), !dbg !206
  tail call void @llvm.dbg.value(metadata !{float* %time}, i64 0, metadata !171), !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !172), !dbg !207
  %call = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %magic) #4, !dbg !208
  %cmp = icmp eq i32 %call, 0, !dbg !208
  br i1 %cmp, label %return, label %if.end, !dbg !208

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %natoms) #4, !dbg !209
  tail call void @llvm.dbg.value(metadata !210, i64 0, metadata !211) #6, !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !213) #6, !dbg !212
  tail call void @llvm.dbg.value(metadata !214, i64 0, metadata !215) #6, !dbg !212
  tail call void @llvm.dbg.value(metadata !216, i64 0, metadata !217) #6, !dbg !212
  %tobool.i = icmp eq i32 %call1, 0, !dbg !218
  br i1 %tobool.i, label %if.then.i, label %if.then3, !dbg !218

if.then.i:                                        ; preds = %if.end
  %0 = load %struct._IO_FILE** @debug, align 8, !dbg !219, !tbaa !183
  %tobool1.i = icmp eq %struct._IO_FILE* %0, null, !dbg !219
  br i1 %tobool1.i, label %if.end11, label %if.then2.i, !dbg !219

if.then2.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 88) #4, !dbg !220
  br label %if.end11, !dbg !220

if.then3:                                         ; preds = %if.end
  %call4 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %step) #4, !dbg !221
  tail call void @llvm.dbg.value(metadata !222, i64 0, metadata !223) #6, !dbg !224
  tail call void @llvm.dbg.value(metadata !{i32 %call4}, i64 0, metadata !225) #6, !dbg !224
  tail call void @llvm.dbg.value(metadata !214, i64 0, metadata !226) #6, !dbg !224
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !228) #6, !dbg !224
  %tobool.i19 = icmp eq i32 %call4, 0, !dbg !229
  br i1 %tobool.i19, label %if.then.i21, label %if.then8, !dbg !229

if.then.i21:                                      ; preds = %if.then3
  %1 = load %struct._IO_FILE** @debug, align 8, !dbg !230, !tbaa !183
  %tobool1.i20 = icmp eq %struct._IO_FILE* %1, null, !dbg !230
  br i1 %tobool1.i20, label %if.end11, label %if.then2.i23, !dbg !230

if.then2.i23:                                     ; preds = %if.then.i21
  %call.i22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 90) #4, !dbg !231
  br label %if.end11, !dbg !231

if.then8:                                         ; preds = %if.then3
  %call9 = tail call i32 @xdr_real(%struct.XDR* %xd, float* %time) #4, !dbg !232
  tail call void @llvm.dbg.value(metadata !233, i64 0, metadata !234) #6, !dbg !235
  tail call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !236) #6, !dbg !235
  tail call void @llvm.dbg.value(metadata !214, i64 0, metadata !237) #6, !dbg !235
  tail call void @llvm.dbg.value(metadata !238, i64 0, metadata !239) #6, !dbg !235
  %tobool.i26 = icmp eq i32 %call9, 0, !dbg !240
  br i1 %tobool.i26, label %if.then.i28, label %if.end11, !dbg !240

if.then.i28:                                      ; preds = %if.then8
  %2 = load %struct._IO_FILE** @debug, align 8, !dbg !241, !tbaa !183
  %tobool1.i27 = icmp eq %struct._IO_FILE* %2, null, !dbg !241
  br i1 %tobool1.i27, label %if.end11, label %if.then2.i30, !dbg !241

if.then2.i30:                                     ; preds = %if.then.i28
  %call.i29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 92) #4, !dbg !242
  br label %if.end11, !dbg !242

if.end11:                                         ; preds = %if.then2.i, %if.then.i, %if.then2.i23, %if.then.i21, %if.then2.i30, %if.then.i28, %if.then8
  %result.1 = phi i32 [ 0, %if.then.i28 ], [ 0, %if.then2.i30 ], [ 1, %if.then8 ], [ 0, %if.then.i21 ], [ 0, %if.then2.i23 ], [ 0, %if.then.i ], [ 0, %if.then2.i ]
  store i32 %result.1, i32* %bOK, align 4, !dbg !243, !tbaa !196
  br label %return, !dbg !244

return:                                           ; preds = %entry, %if.end11
  %retval.0 = phi i32 [ %result.1, %if.end11 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !245
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @xtc_coord(%struct.XDR* %xd, i32* %natoms, [3 x float]* %box, [3 x float]* %x, float* %prec) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.XDR* %xd}, i64 0, metadata !155), !dbg !246
  tail call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !156), !dbg !246
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !157), !dbg !246
  tail call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !158), !dbg !246
  tail call void @llvm.dbg.value(metadata !{float* %prec}, i64 0, metadata !159), !dbg !246
  tail call void @llvm.dbg.value(metadata !247, i64 0, metadata !162), !dbg !248
  tail call void @llvm.dbg.value(metadata !9, i64 0, metadata !160), !dbg !249
  br label %for.cond1.preheader, !dbg !249

for.cond1.preheader:                              ; preds = %entry, %for.inc10
  %indvars.iv38 = phi i64 [ 0, %entry ], [ %indvars.iv.next39, %for.inc10 ]
  br i1 false, label %if.end, label %for.body6, !dbg !251

for.body6:                                        ; preds = %for.cond1.preheader, %xtc_check.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %xtc_check.exit ], [ 0, %for.cond1.preheader ]
  %arrayidx8 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv38, i64 %indvars.iv, !dbg !253
  %call = tail call i32 @xdr_real(%struct.XDR* %xd, float* %arrayidx8) #4, !dbg !253
  tail call void @llvm.dbg.value(metadata !254, i64 0, metadata !255) #6, !dbg !256
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !257) #6, !dbg !256
  tail call void @llvm.dbg.value(metadata !214, i64 0, metadata !258) #6, !dbg !256
  tail call void @llvm.dbg.value(metadata !259, i64 0, metadata !260) #6, !dbg !256
  %tobool.i = icmp eq i32 %call, 0, !dbg !261
  br i1 %tobool.i, label %if.then.i, label %xtc_check.exit, !dbg !261

if.then.i:                                        ; preds = %for.body6
  %0 = load %struct._IO_FILE** @debug, align 8, !dbg !262, !tbaa !183
  %tobool1.i = icmp eq %struct._IO_FILE* %0, null, !dbg !262
  br i1 %tobool1.i, label %if.end, label %if.then2.i, !dbg !262

if.then2.i:                                       ; preds = %if.then.i
  %call.i = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 106) #4, !dbg !263
  br label %if.end, !dbg !263

xtc_check.exit:                                   ; preds = %for.body6
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !251
  %1 = trunc i64 %indvars.iv to i32, !dbg !251
  %cmp2 = icmp sgt i32 %1, 1, !dbg !251
  br i1 %cmp2, label %for.inc10, label %for.body6, !dbg !251

for.inc10:                                        ; preds = %xtc_check.exit
  %indvars.iv.next39 = add i64 %indvars.iv38, 1, !dbg !249
  %2 = trunc i64 %indvars.iv38 to i32, !dbg !249
  %cmp = icmp sgt i32 %2, 1, !dbg !249
  br i1 %cmp, label %if.then, label %for.cond1.preheader, !dbg !249

if.then:                                          ; preds = %for.inc10
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 0, i64 0, !dbg !264
  %call15 = tail call i32 @xdr3drcoord(%struct.XDR* %xd, float* %arraydecay, i32* %natoms, float* %prec) #4, !dbg !264
  tail call void @llvm.dbg.value(metadata !265, i64 0, metadata !266) #6, !dbg !267
  tail call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !268) #6, !dbg !267
  tail call void @llvm.dbg.value(metadata !214, i64 0, metadata !269) #6, !dbg !267
  tail call void @llvm.dbg.value(metadata !270, i64 0, metadata !271) #6, !dbg !267
  %tobool.i26 = icmp eq i32 %call15, 0, !dbg !272
  br i1 %tobool.i26, label %if.then.i28, label %if.end, !dbg !272

if.then.i28:                                      ; preds = %if.then
  %3 = load %struct._IO_FILE** @debug, align 8, !dbg !273, !tbaa !183
  %tobool1.i27 = icmp eq %struct._IO_FILE* %3, null, !dbg !273
  br i1 %tobool1.i27, label %if.end, label %if.then2.i30, !dbg !273

if.then2.i30:                                     ; preds = %if.then.i28
  %call.i29 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 110) #4, !dbg !274
  br label %if.end, !dbg !274

if.end:                                           ; preds = %for.cond1.preheader, %if.then.i, %if.then2.i, %if.then2.i30, %if.then.i28, %if.then
  %result.2 = phi i32 [ 0, %if.then.i28 ], [ 0, %if.then2.i30 ], [ 1, %if.then ], [ 0, %if.then2.i ], [ 0, %if.then.i ], [ 0, %for.cond1.preheader ]
  ret i32 %result.2, !dbg !275
}

; Function Attrs: nounwind optsize uwtable
define i32 @read_first_xtc(i32 %fp, i32* %natoms, i32* %step, float* %time, [3 x float]* %box, [3 x float]** nocapture %x, float* %prec, i32* nocapture %bOK) #0 {
entry:
  %magic = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !123), !dbg !276
  call void @llvm.dbg.value(metadata !{i32* %natoms}, i64 0, metadata !124), !dbg !276
  call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !125), !dbg !276
  call void @llvm.dbg.value(metadata !{float* %time}, i64 0, metadata !126), !dbg !276
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !127), !dbg !277
  call void @llvm.dbg.value(metadata !{[3 x float]** %x}, i64 0, metadata !128), !dbg !277
  call void @llvm.dbg.value(metadata !{float* %prec}, i64 0, metadata !129), !dbg !277
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !130), !dbg !277
  call void @llvm.dbg.declare(metadata !{i32* %magic}, metadata !131), !dbg !278
  store i32 1, i32* %bOK, align 4, !dbg !279, !tbaa !196
  %call = call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #4, !dbg !280
  call void @llvm.dbg.value(metadata !{%struct.XDR* %call}, i64 0, metadata !132), !dbg !280
  %call1 = call fastcc i32 @xtc_header(%struct.XDR* %call, i32* %magic, i32* %natoms, i32* %step, float* %time, i32* %bOK) #5, !dbg !281
  %tobool = icmp eq i32 %call1, 0, !dbg !281
  br i1 %tobool, label %return, label %if.end, !dbg !281

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %magic}, i64 0, metadata !131), !dbg !282
  %0 = load i32* %magic, align 4, !dbg !282, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !283) #6, !dbg !284
  %cmp.i = icmp eq i32 %0, 1995, !dbg !285
  br i1 %cmp.i, label %check_xtc_magic.exit, label %if.then.i, !dbg !285

if.then.i:                                        ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 %0, i32 1995) #4, !dbg !286
  br label %check_xtc_magic.exit, !dbg !286

check_xtc_magic.exit:                             ; preds = %if.end, %if.then.i
  %1 = load i32* %natoms, align 4, !dbg !287, !tbaa !196
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0), i32 157, i32 %1, i32 12) #4, !dbg !287
  %2 = bitcast i8* %call2 to [3 x float]*, !dbg !287
  store [3 x float]* %2, [3 x float]** %x, align 8, !dbg !287, !tbaa !183
  %call3 = call fastcc i32 @xtc_coord(%struct.XDR* %call, i32* %natoms, [3 x float]* %box, [3 x float]* %2, float* %prec) #5, !dbg !288
  store i32 %call3, i32* %bOK, align 4, !dbg !288, !tbaa !196
  br label %return, !dbg !289

return:                                           ; preds = %entry, %check_xtc_magic.exit
  %retval.0 = phi i32 [ %call3, %check_xtc_magic.exit ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !290
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @read_next_xtc(i32 %fp, i32 %natoms, i32* %step, float* %time, [3 x float]* %box, [3 x float]* %x, float* %prec, i32* nocapture %bOK) #0 {
entry:
  %natoms.addr = alloca i32, align 4
  %magic = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !137), !dbg !291
  call void @llvm.dbg.value(metadata !{i32 %natoms}, i64 0, metadata !138), !dbg !292
  store i32 %natoms, i32* %natoms.addr, align 4, !tbaa !196
  call void @llvm.dbg.declare(metadata !{i32* %natoms.addr}, metadata !138), !dbg !292
  call void @llvm.dbg.value(metadata !{i32* %step}, i64 0, metadata !139), !dbg !292
  call void @llvm.dbg.value(metadata !{float* %time}, i64 0, metadata !140), !dbg !292
  call void @llvm.dbg.value(metadata !{[3 x float]* %box}, i64 0, metadata !141), !dbg !293
  call void @llvm.dbg.value(metadata !{[3 x float]* %x}, i64 0, metadata !142), !dbg !293
  call void @llvm.dbg.value(metadata !{float* %prec}, i64 0, metadata !143), !dbg !293
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !144), !dbg !293
  call void @llvm.dbg.declare(metadata !{i32* %magic}, metadata !145), !dbg !294
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !146), !dbg !295
  store i32 1, i32* %bOK, align 4, !dbg !296, !tbaa !196
  %call = call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #4, !dbg !297
  call void @llvm.dbg.value(metadata !{%struct.XDR* %call}, i64 0, metadata !147), !dbg !297
  %call1 = call fastcc i32 @xtc_header(%struct.XDR* %call, i32* %magic, i32* %n, i32* %step, float* %time, i32* %bOK) #5, !dbg !298
  %tobool = icmp eq i32 %call1, 0, !dbg !298
  br i1 %tobool, label %return, label %if.end, !dbg !298

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32* %n}, i64 0, metadata !146), !dbg !299
  %0 = load i32* %n, align 4, !dbg !299, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32* %natoms.addr}, i64 0, metadata !138), !dbg !299
  %cmp = icmp sgt i32 %0, %natoms, !dbg !299
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !299

if.then2:                                         ; preds = %if.end
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), i32 %0, i32 %natoms) #4, !dbg !300
  br label %if.end3, !dbg !300

if.end3:                                          ; preds = %if.then2, %if.end
  call void @llvm.dbg.value(metadata !{i32* %magic}, i64 0, metadata !145), !dbg !301
  %1 = load i32* %magic, align 4, !dbg !301, !tbaa !196
  call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !302) #6, !dbg !303
  %cmp.i = icmp eq i32 %1, 1995, !dbg !304
  br i1 %cmp.i, label %check_xtc_magic.exit, label %if.then.i, !dbg !304

if.then.i:                                        ; preds = %if.end3
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str5, i64 0, i64 0), i32 %1, i32 1995) #4, !dbg !305
  br label %check_xtc_magic.exit, !dbg !305

check_xtc_magic.exit:                             ; preds = %if.end3, %if.then.i
  %call4 = call fastcc i32 @xtc_coord(%struct.XDR* %call, i32* %natoms.addr, [3 x float]* %box, [3 x float]* %x, float* %prec) #5, !dbg !306
  store i32 %call4, i32* %bOK, align 4, !dbg !306, !tbaa !196
  br label %return, !dbg !307

return:                                           ; preds = %entry, %check_xtc_magic.exit
  %retval.0 = phi i32 [ %call4, %check_xtc_magic.exit ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !308
}

; Function Attrs: optsize
declare i32 @xdr_real(%struct.XDR*, float*) #2

; Function Attrs: optsize
declare i32 @xdr3drcoord(%struct.XDR*, float*, i32*, float*) #2

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !9, metadata !10, metadata !9, metadata !9, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"xdr_op", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [xdr_op] [line 119, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8}
!6 = metadata !{i32 786472, metadata !"XDR_ENCODE", i64 0} ; [ DW_TAG_enumerator ] [XDR_ENCODE :: 0]
!7 = metadata !{i32 786472, metadata !"XDR_DECODE", i64 1} ; [ DW_TAG_enumerator ] [XDR_DECODE :: 1]
!8 = metadata !{i32 786472, metadata !"XDR_FREE", i64 2} ; [ DW_TAG_enumerator ] [XDR_FREE :: 2]
!9 = metadata !{i32 0}
!10 = metadata !{metadata !11, metadata !21, metadata !26, metadata !34, metadata !42, metadata !116, metadata !133, metadata !148, metadata !151, metadata !163}
!11 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"open_xtc", metadata !"open_xtc", metadata !"", i32 45, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @open_xtc, null, null, metadata !18, i32 46} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 46] [open_xtc]
!12 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c]
!13 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15, metadata !16, metadata !16}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{metadata !19, metadata !20}
!19 = metadata !{i32 786689, metadata !11, metadata !"fn", metadata !12, i32 16777261, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 45]
!20 = metadata !{i32 786689, metadata !11, metadata !"mode", metadata !12, i32 33554477, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 45]
!21 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"close_xtc", metadata !"close_xtc", metadata !"", i32 50, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @close_xtc, null, null, metadata !24, i32 51} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 51] [close_xtc]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{null, metadata !15}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786689, metadata !21, metadata !"fp", metadata !12, i32 16777266, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 50]
!26 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xtc_check", metadata !"xtc_check", metadata !"", i32 62, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32, i8*, i32)* @xtc_check, null, null, metadata !29, i32 63} ; [ DW_TAG_subprogram ] [line 62] [def] [scope 63] [xtc_check]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !15, metadata !16, metadata !15, metadata !16, metadata !15}
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33}
!30 = metadata !{i32 786689, metadata !26, metadata !"str", metadata !12, i32 16777278, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 62]
!31 = metadata !{i32 786689, metadata !26, metadata !"bResult", metadata !12, i32 33554494, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bResult] [line 62]
!32 = metadata !{i32 786689, metadata !26, metadata !"file", metadata !12, i32 50331710, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 62]
!33 = metadata !{i32 786689, metadata !26, metadata !"line", metadata !12, i32 67108926, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 62]
!34 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xtc_check_fat_err", metadata !"xtc_check_fat_err", metadata !"", i32 73, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32, i8*, i32)* @xtc_check_fat_err, null, null, metadata !37, i32 74} ; [ DW_TAG_subprogram ] [line 73] [def] [scope 74] [xtc_check_fat_err]
!35 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!36 = metadata !{null, metadata !16, metadata !15, metadata !16, metadata !15}
!37 = metadata !{metadata !38, metadata !39, metadata !40, metadata !41}
!38 = metadata !{i32 786689, metadata !34, metadata !"str", metadata !12, i32 16777289, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 73]
!39 = metadata !{i32 786689, metadata !34, metadata !"bResult", metadata !12, i32 33554505, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bResult] [line 73]
!40 = metadata !{i32 786689, metadata !34, metadata !"file", metadata !12, i32 50331721, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [file] [line 73]
!41 = metadata !{i32 786689, metadata !34, metadata !"line", metadata !12, i32 67108937, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [line] [line 73]
!42 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"write_xtc", metadata !"write_xtc", metadata !"", i32 124, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32, float, [3 x float]*, [3 x float]*, float)* @write_xtc, null, null, metadata !53, i32 127} ; [ DW_TAG_subprogram ] [line 124] [def] [scope 127] [write_xtc]
!43 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!44 = metadata !{metadata !15, metadata !15, metadata !15, metadata !15, metadata !45, metadata !47, metadata !51, metadata !45}
!45 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!46 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !45, metadata !49, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from real]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from rvec]
!52 = metadata !{i32 786454, metadata !1, null, metadata !"rvec", i32 101, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [rvec] [line 101, size 0, align 0, offset 0] [from ]
!53 = metadata !{metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !115}
!54 = metadata !{i32 786689, metadata !42, metadata !"fp", metadata !12, i32 16777340, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 124]
!55 = metadata !{i32 786689, metadata !42, metadata !"natoms", metadata !12, i32 33554557, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 125]
!56 = metadata !{i32 786689, metadata !42, metadata !"step", metadata !12, i32 50331773, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 125]
!57 = metadata !{i32 786689, metadata !42, metadata !"time", metadata !12, i32 67108989, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 125]
!58 = metadata !{i32 786689, metadata !42, metadata !"box", metadata !12, i32 83886206, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 126]
!59 = metadata !{i32 786689, metadata !42, metadata !"x", metadata !12, i32 100663422, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 126]
!60 = metadata !{i32 786689, metadata !42, metadata !"prec", metadata !12, i32 117440638, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prec] [line 126]
!61 = metadata !{i32 786688, metadata !42, metadata !"magic_number", metadata !12, i32 128, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic_number] [line 128]
!62 = metadata !{i32 786688, metadata !42, metadata !"xd", metadata !12, i32 129, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xd] [line 129]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!64 = metadata !{i32 786454, metadata !1, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!65 = metadata !{i32 786451, metadata !4, null, metadata !"XDR", i32 145, i64 384, i64 64, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [XDR] [line 145, size 384, align 64, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !68, metadata !111, metadata !112, metadata !113, metadata !114}
!67 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"x_op", i32 147, i64 32, i64 32, i64 0, i32 0, metadata !3} ; [ DW_TAG_member ] [x_op] [line 147, size 32, align 32, offset 0] [from xdr_op]
!68 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"x_ops", i32 171, i64 64, i64 64, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [x_ops] [line 171, size 64, align 64, offset 64] [from ]
!69 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !70} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_ops]
!70 = metadata !{i32 786451, metadata !4, null, metadata !"xdr_ops", i32 148, i64 640, i64 64, i32 0, i32 0, null, metadata !71, i32 0, null, null} ; [ DW_TAG_structure_type ] [xdr_ops] [line 148, size 640, align 64, offset 0] [from ]
!71 = metadata !{metadata !72, metadata !81, metadata !82, metadata !87, metadata !88, metadata !92, metadata !96, metadata !102, metadata !106, metadata !110}
!72 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_getlong", i32 150, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_member ] [x_getlong] [line 150, size 64, align 64, offset 0] [from ]
!73 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !74} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!74 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!75 = metadata !{metadata !76, metadata !77, metadata !79}
!76 = metadata !{i32 786454, metadata !4, null, metadata !"bool_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [bool_t] [line 99, size 0, align 0, offset 0] [from int]
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!78 = metadata !{i32 786454, metadata !4, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!79 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!80 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!81 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_putlong", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !73} ; [ DW_TAG_member ] [x_putlong] [line 152, size 64, align 64, offset 64] [from ]
!82 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_getbytes", i32 154, i64 64, i64 64, i64 128, i32 0, metadata !83} ; [ DW_TAG_member ] [x_getbytes] [line 154, size 64, align 64, offset 128] [from ]
!83 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!85 = metadata !{metadata !76, metadata !77, metadata !16, metadata !86}
!86 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!87 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_putbytes", i32 156, i64 64, i64 64, i64 192, i32 0, metadata !83} ; [ DW_TAG_member ] [x_putbytes] [line 156, size 64, align 64, offset 192] [from ]
!88 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_getpostn", i32 158, i64 64, i64 64, i64 256, i32 0, metadata !89} ; [ DW_TAG_member ] [x_getpostn] [line 158, size 64, align 64, offset 256] [from ]
!89 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!90 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!91 = metadata !{metadata !86, metadata !77}
!92 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_setpostn", i32 160, i64 64, i64 64, i64 320, i32 0, metadata !93} ; [ DW_TAG_member ] [x_setpostn] [line 160, size 64, align 64, offset 320] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!94 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!95 = metadata !{metadata !76, metadata !77, metadata !86}
!96 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_inline", i32 162, i64 64, i64 64, i64 384, i32 0, metadata !97} ; [ DW_TAG_member ] [x_inline] [line 162, size 64, align 64, offset 384] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!98 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!99 = metadata !{metadata !100, metadata !77, metadata !15}
!100 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !101} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_int32_t]
!101 = metadata !{i32 786454, metadata !4, null, metadata !"xdr_int32_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [xdr_int32_t] [line 106, size 0, align 0, offset 0] [from int]
!102 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_destroy", i32 164, i64 64, i64 64, i64 448, i32 0, metadata !103} ; [ DW_TAG_member ] [x_destroy] [line 164, size 64, align 64, offset 448] [from ]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !104} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{null, metadata !77}
!106 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_getint32", i32 166, i64 64, i64 64, i64 512, i32 0, metadata !107} ; [ DW_TAG_member ] [x_getint32] [line 166, size 64, align 64, offset 512] [from ]
!107 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !108} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!108 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!109 = metadata !{metadata !76, metadata !77, metadata !100}
!110 = metadata !{i32 786445, metadata !4, metadata !70, metadata !"x_putint32", i32 168, i64 64, i64 64, i64 576, i32 0, metadata !107} ; [ DW_TAG_member ] [x_putint32] [line 168, size 64, align 64, offset 576] [from ]
!111 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"x_public", i32 172, i64 64, i64 64, i64 128, i32 0, metadata !16} ; [ DW_TAG_member ] [x_public] [line 172, size 64, align 64, offset 128] [from ]
!112 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"x_private", i32 173, i64 64, i64 64, i64 192, i32 0, metadata !16} ; [ DW_TAG_member ] [x_private] [line 173, size 64, align 64, offset 192] [from ]
!113 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"x_base", i32 174, i64 64, i64 64, i64 256, i32 0, metadata !16} ; [ DW_TAG_member ] [x_base] [line 174, size 64, align 64, offset 256] [from ]
!114 = metadata !{i32 786445, metadata !4, metadata !65, metadata !"x_handy", i32 175, i64 32, i64 32, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [x_handy] [line 175, size 32, align 32, offset 320] [from int]
!115 = metadata !{i32 786688, metadata !42, metadata !"bDum", metadata !12, i32 130, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDum] [line 130]
!116 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"read_first_xtc", metadata !"read_first_xtc", metadata !"", i32 141, metadata !117, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32*, i32*, float*, [3 x float]*, [3 x float]**, float*, i32*)* @read_first_xtc, null, null, metadata !122, i32 143} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 143] [read_first_xtc]
!117 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!118 = metadata !{metadata !15, metadata !15, metadata !119, metadata !119, metadata !120, metadata !47, metadata !121, metadata !120, metadata !119}
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!122 = metadata !{metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132}
!123 = metadata !{i32 786689, metadata !116, metadata !"fp", metadata !12, i32 16777357, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 141]
!124 = metadata !{i32 786689, metadata !116, metadata !"natoms", metadata !12, i32 33554573, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 141]
!125 = metadata !{i32 786689, metadata !116, metadata !"step", metadata !12, i32 50331789, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 141]
!126 = metadata !{i32 786689, metadata !116, metadata !"time", metadata !12, i32 67109005, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 141]
!127 = metadata !{i32 786689, metadata !116, metadata !"box", metadata !12, i32 83886222, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 142]
!128 = metadata !{i32 786689, metadata !116, metadata !"x", metadata !12, i32 100663438, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 142]
!129 = metadata !{i32 786689, metadata !116, metadata !"prec", metadata !12, i32 117440654, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prec] [line 142]
!130 = metadata !{i32 786689, metadata !116, metadata !"bOK", metadata !12, i32 134217870, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOK] [line 142]
!131 = metadata !{i32 786688, metadata !116, metadata !"magic", metadata !12, i32 144, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 144]
!132 = metadata !{i32 786688, metadata !116, metadata !"xd", metadata !12, i32 145, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xd] [line 145]
!133 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"read_next_xtc", metadata !"read_next_xtc", metadata !"", i32 164, metadata !134, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32, i32*, float*, [3 x float]*, [3 x float]*, float*, i32*)* @read_next_xtc, null, null, metadata !136, i32 167} ; [ DW_TAG_subprogram ] [line 164] [def] [scope 167] [read_next_xtc]
!134 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !15, metadata !15, metadata !15, metadata !119, metadata !120, metadata !47, metadata !51, metadata !120, metadata !119}
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147}
!137 = metadata !{i32 786689, metadata !133, metadata !"fp", metadata !12, i32 16777380, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 164]
!138 = metadata !{i32 786689, metadata !133, metadata !"natoms", metadata !12, i32 33554597, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 165]
!139 = metadata !{i32 786689, metadata !133, metadata !"step", metadata !12, i32 50331813, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 165]
!140 = metadata !{i32 786689, metadata !133, metadata !"time", metadata !12, i32 67109029, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 165]
!141 = metadata !{i32 786689, metadata !133, metadata !"box", metadata !12, i32 83886246, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 166]
!142 = metadata !{i32 786689, metadata !133, metadata !"x", metadata !12, i32 100663462, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 166]
!143 = metadata !{i32 786689, metadata !133, metadata !"prec", metadata !12, i32 117440678, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prec] [line 166]
!144 = metadata !{i32 786689, metadata !133, metadata !"bOK", metadata !12, i32 134217894, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOK] [line 166]
!145 = metadata !{i32 786688, metadata !133, metadata !"magic", metadata !12, i32 168, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [magic] [line 168]
!146 = metadata !{i32 786688, metadata !133, metadata !"n", metadata !12, i32 169, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 169]
!147 = metadata !{i32 786688, metadata !133, metadata !"xd", metadata !12, i32 170, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xd] [line 170]
!148 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"check_xtc_magic", metadata !"check_xtc_magic", metadata !"", i32 55, metadata !22, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !149, i32 56} ; [ DW_TAG_subprogram ] [line 55] [local] [def] [scope 56] [check_xtc_magic]
!149 = metadata !{metadata !150}
!150 = metadata !{i32 786689, metadata !148, metadata !"magic", metadata !12, i32 16777271, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [magic] [line 55]
!151 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xtc_coord", metadata !"xtc_coord", metadata !"", i32 98, metadata !152, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i32*, [3 x float]*, [3 x float]*, float*)* @xtc_coord, null, null, metadata !154, i32 99} ; [ DW_TAG_subprogram ] [line 98] [local] [def] [scope 99] [xtc_coord]
!152 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!153 = metadata !{metadata !15, metadata !63, metadata !119, metadata !47, metadata !51, metadata !120}
!154 = metadata !{metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162}
!155 = metadata !{i32 786689, metadata !151, metadata !"xd", metadata !12, i32 16777314, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xd] [line 98]
!156 = metadata !{i32 786689, metadata !151, metadata !"natoms", metadata !12, i32 33554530, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 98]
!157 = metadata !{i32 786689, metadata !151, metadata !"box", metadata !12, i32 50331746, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [box] [line 98]
!158 = metadata !{i32 786689, metadata !151, metadata !"x", metadata !12, i32 67108962, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 98]
!159 = metadata !{i32 786689, metadata !151, metadata !"prec", metadata !12, i32 83886178, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prec] [line 98]
!160 = metadata !{i32 786688, metadata !151, metadata !"i", metadata !12, i32 100, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 100]
!161 = metadata !{i32 786688, metadata !151, metadata !"j", metadata !12, i32 100, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 100]
!162 = metadata !{i32 786688, metadata !151, metadata !"result", metadata !12, i32 100, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 100]
!163 = metadata !{i32 786478, metadata !1, metadata !12, metadata !"xtc_header", metadata !"xtc_header", metadata !"", i32 81, metadata !164, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.XDR*, i32*, i32*, i32*, float*, i32*)* @xtc_header, null, null, metadata !166, i32 83} ; [ DW_TAG_subprogram ] [line 81] [local] [def] [scope 83] [xtc_header]
!164 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!165 = metadata !{metadata !15, metadata !63, metadata !119, metadata !119, metadata !119, metadata !120, metadata !119}
!166 = metadata !{metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173}
!167 = metadata !{i32 786689, metadata !163, metadata !"xd", metadata !12, i32 16777297, metadata !63, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [xd] [line 81]
!168 = metadata !{i32 786689, metadata !163, metadata !"magic", metadata !12, i32 33554513, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [magic] [line 81]
!169 = metadata !{i32 786689, metadata !163, metadata !"natoms", metadata !12, i32 50331729, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [natoms] [line 81]
!170 = metadata !{i32 786689, metadata !163, metadata !"step", metadata !12, i32 67108945, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [step] [line 81]
!171 = metadata !{i32 786689, metadata !163, metadata !"time", metadata !12, i32 83886161, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [time] [line 81]
!172 = metadata !{i32 786689, metadata !163, metadata !"bOK", metadata !12, i32 100663378, metadata !119, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOK] [line 82]
!173 = metadata !{i32 786688, metadata !163, metadata !"result", metadata !12, i32 84, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 84]
!174 = metadata !{i32 45, i32 0, metadata !11, null}
!175 = metadata !{i32 47, i32 0, metadata !11, null}
!176 = metadata !{i32 50, i32 0, metadata !21, null}
!177 = metadata !{i32 52, i32 0, metadata !21, null}
!178 = metadata !{i32 53, i32 0, metadata !21, null}
!179 = metadata !{i32 62, i32 0, metadata !26, null}
!180 = metadata !{i32 64, i32 0, metadata !26, null}
!181 = metadata !{i32 65, i32 0, metadata !182, null}
!182 = metadata !{i32 786443, metadata !1, metadata !26, i32 64, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c]
!183 = metadata !{metadata !"any pointer", metadata !184}
!184 = metadata !{metadata !"omnipotent char", metadata !185}
!185 = metadata !{metadata !"Simple C/C++ TBAA"}
!186 = metadata !{i32 66, i32 0, metadata !182, null}
!187 = metadata !{i32 70, i32 0, metadata !26, null}
!188 = metadata !{i32 73, i32 0, metadata !34, null}
!189 = metadata !{i32 75, i32 0, metadata !34, null}
!190 = metadata !{i32 76, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !34, i32 75, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c]
!192 = metadata !{i32 78, i32 0, metadata !191, null}
!193 = metadata !{i32 79, i32 0, metadata !34, null}
!194 = metadata !{i32 124, i32 0, metadata !42, null}
!195 = metadata !{i32 125, i32 0, metadata !42, null}
!196 = metadata !{metadata !"int", metadata !184}
!197 = metadata !{metadata !"float", metadata !184}
!198 = metadata !{i32 126, i32 0, metadata !42, null}
!199 = metadata !{i32 128, i32 0, metadata !42, null}
!200 = metadata !{i32 1995}
!201 = metadata !{i32 130, i32 0, metadata !42, null}
!202 = metadata !{i32 132, i32 0, metadata !42, null}
!203 = metadata !{i32 134, i32 0, metadata !42, null}
!204 = metadata !{i32 138, i32 0, metadata !42, null}
!205 = metadata !{i32 139, i32 0, metadata !42, null}
!206 = metadata !{i32 81, i32 0, metadata !163, null}
!207 = metadata !{i32 82, i32 0, metadata !163, null}
!208 = metadata !{i32 86, i32 0, metadata !163, null}
!209 = metadata !{i32 88, i32 0, metadata !163, null}
!210 = metadata !{i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)}
!211 = metadata !{i32 786689, metadata !26, metadata !"str", metadata !12, i32 16777278, metadata !16, i32 0, metadata !209} ; [ DW_TAG_arg_variable ] [str] [line 62]
!212 = metadata !{i32 62, i32 0, metadata !26, metadata !209}
!213 = metadata !{i32 786689, metadata !26, metadata !"bResult", metadata !12, i32 33554494, metadata !15, i32 0, metadata !209} ; [ DW_TAG_arg_variable ] [bResult] [line 62]
!214 = metadata !{i8* getelementptr inbounds ([53 x i8]* @.str3, i64 0, i64 0)}
!215 = metadata !{i32 786689, metadata !26, metadata !"file", metadata !12, i32 50331710, metadata !16, i32 0, metadata !209} ; [ DW_TAG_arg_variable ] [file] [line 62]
!216 = metadata !{i32 88}
!217 = metadata !{i32 786689, metadata !26, metadata !"line", metadata !12, i32 67108926, metadata !15, i32 0, metadata !209} ; [ DW_TAG_arg_variable ] [line] [line 62]
!218 = metadata !{i32 64, i32 0, metadata !26, metadata !209}
!219 = metadata !{i32 65, i32 0, metadata !182, metadata !209}
!220 = metadata !{i32 66, i32 0, metadata !182, metadata !209}
!221 = metadata !{i32 90, i32 0, metadata !163, null}
!222 = metadata !{i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)}
!223 = metadata !{i32 786689, metadata !26, metadata !"str", metadata !12, i32 16777278, metadata !16, i32 0, metadata !221} ; [ DW_TAG_arg_variable ] [str] [line 62]
!224 = metadata !{i32 62, i32 0, metadata !26, metadata !221}
!225 = metadata !{i32 786689, metadata !26, metadata !"bResult", metadata !12, i32 33554494, metadata !15, i32 0, metadata !221} ; [ DW_TAG_arg_variable ] [bResult] [line 62]
!226 = metadata !{i32 786689, metadata !26, metadata !"file", metadata !12, i32 50331710, metadata !16, i32 0, metadata !221} ; [ DW_TAG_arg_variable ] [file] [line 62]
!227 = metadata !{i32 90}
!228 = metadata !{i32 786689, metadata !26, metadata !"line", metadata !12, i32 67108926, metadata !15, i32 0, metadata !221} ; [ DW_TAG_arg_variable ] [line] [line 62]
!229 = metadata !{i32 64, i32 0, metadata !26, metadata !221}
!230 = metadata !{i32 65, i32 0, metadata !182, metadata !221}
!231 = metadata !{i32 66, i32 0, metadata !182, metadata !221}
!232 = metadata !{i32 92, i32 0, metadata !163, null}
!233 = metadata !{i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0)}
!234 = metadata !{i32 786689, metadata !26, metadata !"str", metadata !12, i32 16777278, metadata !16, i32 0, metadata !232} ; [ DW_TAG_arg_variable ] [str] [line 62]
!235 = metadata !{i32 62, i32 0, metadata !26, metadata !232}
!236 = metadata !{i32 786689, metadata !26, metadata !"bResult", metadata !12, i32 33554494, metadata !15, i32 0, metadata !232} ; [ DW_TAG_arg_variable ] [bResult] [line 62]
!237 = metadata !{i32 786689, metadata !26, metadata !"file", metadata !12, i32 50331710, metadata !16, i32 0, metadata !232} ; [ DW_TAG_arg_variable ] [file] [line 62]
!238 = metadata !{i32 92}
!239 = metadata !{i32 786689, metadata !26, metadata !"line", metadata !12, i32 67108926, metadata !15, i32 0, metadata !232} ; [ DW_TAG_arg_variable ] [line] [line 62]
!240 = metadata !{i32 64, i32 0, metadata !26, metadata !232}
!241 = metadata !{i32 65, i32 0, metadata !182, metadata !232}
!242 = metadata !{i32 66, i32 0, metadata !182, metadata !232}
!243 = metadata !{i32 93, i32 0, metadata !163, null}
!244 = metadata !{i32 95, i32 0, metadata !163, null}
!245 = metadata !{i32 96, i32 0, metadata !163, null}
!246 = metadata !{i32 98, i32 0, metadata !151, null}
!247 = metadata !{i32 1}
!248 = metadata !{i32 103, i32 0, metadata !151, null}
!249 = metadata !{i32 104, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !151, i32 104, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c]
!251 = metadata !{i32 105, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !250, i32 105, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/xtcio.c]
!253 = metadata !{i32 106, i32 0, metadata !252, null}
!254 = metadata !{i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)}
!255 = metadata !{i32 786689, metadata !26, metadata !"str", metadata !12, i32 16777278, metadata !16, i32 0, metadata !253} ; [ DW_TAG_arg_variable ] [str] [line 62]
!256 = metadata !{i32 62, i32 0, metadata !26, metadata !253}
!257 = metadata !{i32 786689, metadata !26, metadata !"bResult", metadata !12, i32 33554494, metadata !15, i32 0, metadata !253} ; [ DW_TAG_arg_variable ] [bResult] [line 62]
!258 = metadata !{i32 786689, metadata !26, metadata !"file", metadata !12, i32 50331710, metadata !16, i32 0, metadata !253} ; [ DW_TAG_arg_variable ] [file] [line 62]
!259 = metadata !{i32 106}
!260 = metadata !{i32 786689, metadata !26, metadata !"line", metadata !12, i32 67108926, metadata !15, i32 0, metadata !253} ; [ DW_TAG_arg_variable ] [line] [line 62]
!261 = metadata !{i32 64, i32 0, metadata !26, metadata !253}
!262 = metadata !{i32 65, i32 0, metadata !182, metadata !253}
!263 = metadata !{i32 66, i32 0, metadata !182, metadata !253}
!264 = metadata !{i32 110, i32 0, metadata !151, null}
!265 = metadata !{i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0)}
!266 = metadata !{i32 786689, metadata !26, metadata !"str", metadata !12, i32 16777278, metadata !16, i32 0, metadata !264} ; [ DW_TAG_arg_variable ] [str] [line 62]
!267 = metadata !{i32 62, i32 0, metadata !26, metadata !264}
!268 = metadata !{i32 786689, metadata !26, metadata !"bResult", metadata !12, i32 33554494, metadata !15, i32 0, metadata !264} ; [ DW_TAG_arg_variable ] [bResult] [line 62]
!269 = metadata !{i32 786689, metadata !26, metadata !"file", metadata !12, i32 50331710, metadata !16, i32 0, metadata !264} ; [ DW_TAG_arg_variable ] [file] [line 62]
!270 = metadata !{i32 110}
!271 = metadata !{i32 786689, metadata !26, metadata !"line", metadata !12, i32 67108926, metadata !15, i32 0, metadata !264} ; [ DW_TAG_arg_variable ] [line] [line 62]
!272 = metadata !{i32 64, i32 0, metadata !26, metadata !264}
!273 = metadata !{i32 65, i32 0, metadata !182, metadata !264}
!274 = metadata !{i32 66, i32 0, metadata !182, metadata !264}
!275 = metadata !{i32 112, i32 0, metadata !151, null}
!276 = metadata !{i32 141, i32 0, metadata !116, null}
!277 = metadata !{i32 142, i32 0, metadata !116, null}
!278 = metadata !{i32 144, i32 0, metadata !116, null}
!279 = metadata !{i32 147, i32 0, metadata !116, null}
!280 = metadata !{i32 148, i32 0, metadata !116, null}
!281 = metadata !{i32 151, i32 0, metadata !116, null}
!282 = metadata !{i32 155, i32 0, metadata !116, null}
!283 = metadata !{i32 786689, metadata !148, metadata !"magic", metadata !12, i32 16777271, metadata !15, i32 0, metadata !282} ; [ DW_TAG_arg_variable ] [magic] [line 55]
!284 = metadata !{i32 55, i32 0, metadata !148, metadata !282}
!285 = metadata !{i32 57, i32 0, metadata !148, metadata !282}
!286 = metadata !{i32 58, i32 0, metadata !148, metadata !282} ; [ DW_TAG_imported_module ]
!287 = metadata !{i32 157, i32 0, metadata !116, null}
!288 = metadata !{i32 159, i32 0, metadata !116, null}
!289 = metadata !{i32 161, i32 0, metadata !116, null}
!290 = metadata !{i32 162, i32 0, metadata !116, null}
!291 = metadata !{i32 164, i32 0, metadata !133, null}
!292 = metadata !{i32 165, i32 0, metadata !133, null}
!293 = metadata !{i32 166, i32 0, metadata !133, null}
!294 = metadata !{i32 168, i32 0, metadata !133, null}
!295 = metadata !{i32 169, i32 0, metadata !133, null}
!296 = metadata !{i32 172, i32 0, metadata !133, null}
!297 = metadata !{i32 173, i32 0, metadata !133, null}
!298 = metadata !{i32 176, i32 0, metadata !133, null}
!299 = metadata !{i32 178, i32 0, metadata !133, null}
!300 = metadata !{i32 179, i32 0, metadata !133, null}
!301 = metadata !{i32 183, i32 0, metadata !133, null}
!302 = metadata !{i32 786689, metadata !148, metadata !"magic", metadata !12, i32 16777271, metadata !15, i32 0, metadata !301} ; [ DW_TAG_arg_variable ] [magic] [line 55]
!303 = metadata !{i32 55, i32 0, metadata !148, metadata !301}
!304 = metadata !{i32 57, i32 0, metadata !148, metadata !301}
!305 = metadata !{i32 58, i32 0, metadata !148, metadata !301} ; [ DW_TAG_imported_module ]
!306 = metadata !{i32 185, i32 0, metadata !133, null}
!307 = metadata !{i32 187, i32 0, metadata !133, null}
!308 = metadata !{i32 188, i32 0, metadata !133, null}

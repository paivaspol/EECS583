; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_enxframe = type { float, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, %struct.t_energy*, float*, float*, float** }
%struct.t_energy = type { float, double, double, float }
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

@.str = private unnamed_addr constant [9 x i8] c"fr->ener\00", align 1
@.str1 = private unnamed_addr constant [53 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"fr->rav\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"fr->rt\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"fr->block[b]\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"fr->block\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"fr->b_alloc\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"fr->nr\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"fr\00", align 1
@stderr = external global %struct._IO_FILE*
@.str9 = private unnamed_addr constant [43 x i8] c"Opened %s as single precision energy file\0A\00", align 1
@.str10 = private unnamed_addr constant [6 x i8] c"nm[i]\00", align 1
@.str11 = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@.str12 = private unnamed_addr constant [43 x i8] c"Opened %s as double precision energy file\0A\00", align 1
@.str13 = private unnamed_addr constant [17 x i8] c"File %s is empty\00", align 1
@.str14 = private unnamed_addr constant [52 x i8] c"Energy file %s not recognized, maybe different CPU?\00", align 1
@framenr = internal unnamed_addr global i32 0, align 4
@.str15 = private unnamed_addr constant [46 x i8] c"\0DLast frame read %d                          \00", align 1
@.str16 = private unnamed_addr constant [47 x i8] c"\0AWARNING: Incomplete frame: nr %6d time %8.3f\0A\00", align 1
@.str17 = private unnamed_addr constant [41 x i8] c"\0DReading frame %6d time %8.3f           \00", align 1
@.str18 = private unnamed_addr constant [60 x i8] c"\0AWARNING: there may be something wrong with energy file %s\0A\00", align 1
@.str19 = private unnamed_addr constant [99 x i8] c"Found: step=%d, nre=%d, ndisre=%d, nblock=%d, time=%g.\0ATrying to skip frame expect a crash though\0A\00", align 1
@do_read = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str20 = private unnamed_addr constant [14 x i8] c"fr->ener[i].e\00", align 1
@do_write = external global i32 (i8*, i32, i32, i8*, i8*, i32)*
@.str21 = private unnamed_addr constant [5 x i8] c"tmp1\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"tmp2\00", align 1
@.str23 = private unnamed_addr constant [18 x i8] c"fr->ener[i].e2sum\00", align 1
@.str24 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str25 = private unnamed_addr constant [17 x i8] c"fr->block[block]\00", align 1
@.str26 = private unnamed_addr constant [51 x i8] c"\0ALast frame read %d                               \00", align 1
@.str27 = private unnamed_addr constant [52 x i8] c"\0AWARNING: Incomplete frame: nr %6d time %8.3f     \0A\00", align 1
@.str28 = private unnamed_addr constant [25 x i8] c"could not write energies\00", align 1
@.str29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str30 = private unnamed_addr constant [6 x i8] c"fr->t\00", align 1
@.str31 = private unnamed_addr constant [9 x i8] c"fr->step\00", align 1
@.str32 = private unnamed_addr constant [8 x i8] c"fr->nre\00", align 1
@.str33 = private unnamed_addr constant [11 x i8] c"fr->ndisre\00", align 1
@.str34 = private unnamed_addr constant [11 x i8] c"fr->nblock\00", align 1
@.str35 = private unnamed_addr constant [14 x i8] c"fr->nr[block]\00", align 1
@.str36 = private unnamed_addr constant [11 x i8] c"fr->e_size\00", align 1
@.str37 = private unnamed_addr constant [11 x i8] c"fr->d_size\00", align 1
@.str38 = private unnamed_addr constant [4 x i8] c"dum\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str42 = private unnamed_addr constant [6 x i8] c"(*nm)\00", align 1
@.str43 = private unnamed_addr constant [3 x i8] c"NM\00", align 1
@.str44 = private unnamed_addr constant [6 x i8] c"NM[i]\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @free_enxframe(%struct.t_enxframe* nocapture %fr) #0 {
entry:
  %e_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 9
  %0 = load i32* %e_alloc, align 4, !tbaa !0
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %ener = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12
  %1 = load %struct.t_energy** %ener, align 8, !tbaa !3
  %2 = bitcast %struct.t_energy* %1 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 45, i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %d_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 10
  %3 = load i32* %d_alloc, align 4, !tbaa !0
  %tobool1 = icmp eq i32 %3, 0
  br i1 %tobool1, label %for.cond.preheader, label %if.then2

if.then2:                                         ; preds = %if.end
  %rav = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13
  %4 = load float** %rav, align 8, !tbaa !3
  %5 = bitcast float* %4 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 47, i8* %5) #4
  %rt = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14
  %6 = load float** %rt, align 8, !tbaa !3
  %7 = bitcast float* %6 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 48, i8* %7) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end, %if.then2
  %nblock = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %8 = load i32* %nblock, align 4, !tbaa !0
  %cmp16 = icmp sgt i32 %8, 0
  %block = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %9 = load float*** %block, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds float** %9, i64 %indvars.iv
  %10 = load float** %arrayidx, align 8, !tbaa !3
  %11 = bitcast float* %10 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 51, i8* %11) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %12 = load i32* %nblock, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %13, %12
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.body
  %14 = load float*** %block, align 8, !tbaa !3
  %15 = bitcast float** %14 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 52, i8* %15) #4
  %b_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11
  %16 = load i32** %b_alloc, align 8, !tbaa !3
  %17 = bitcast i32* %16 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 53, i8* %17) #4
  %nr = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %18 = load i32** %nr, align 8, !tbaa !3
  %19 = bitcast i32* %18 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 54, i8* %19) #4
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @do_enxnms(i32 %fp, i32* %nre, i8*** nocapture %nms) #0 {
entry:
  %line.i = alloca [256 x i8], align 16
  %call = call i32 @gmx_fio_getread(i32 %fp) #4
  %call1 = call i32 @gmx_fio_getftp(i32 %fp) #4
  %cmp = icmp eq i32 %call1, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @gmx_fio_select(i32 %fp) #4
  %call.i = call i32 @gmx_fio_getread(i32 %fp) #4
  %call1.i = call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #4
  %0 = load i8*** %nms, align 8, !tbaa !3
  %call2.i = call i32 @xdr_int(%struct.XDR* %call1.i, i32* %nre) #4
  %tobool.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then
  store i32 0, i32* %nre, align 4, !tbaa !0
  br label %if.end6

if.end.i:                                         ; preds = %if.then
  %cmp.i = icmp eq i8** %0, null
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  %1 = load i32* %nre, align 4, !tbaa !0
  %call4.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 100, i32 %1, i32 8) #4
  %2 = bitcast i8* %call4.i to i8**
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i
  %NM.0.i = phi i8** [ %2, %if.then3.i ], [ %0, %if.end.i ]
  %3 = load i32* %nre, align 4, !tbaa !0
  %cmp634.i = icmp sgt i32 %3, 0
  br i1 %cmp634.i, label %for.body.lr.ph.i, label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %tobool7.i = icmp eq i32 %call.i, 0
  br label %for.body.i

for.body.i:                                       ; preds = %if.end14.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end14.i ]
  %arrayidx16.pre.i = getelementptr inbounds i8** %NM.0.i, i64 %indvars.iv.i
  br i1 %tobool7.i, label %if.end14.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %4 = load i8** %arrayidx16.pre.i, align 8, !tbaa !3
  %tobool8.i = icmp eq i8* %4, null
  br i1 %tobool8.i, label %if.end14.i, label %if.then9.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 104, i8* %4) #4
  store i8* null, i8** %arrayidx16.pre.i, align 8, !tbaa !3
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then9.i, %land.lhs.true.i, %for.body.i
  %call17.i = call i32 @xdr_string(%struct.XDR* %call1.i, i8** %arrayidx16.pre.i, i32 4096) #4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %5 = load i32* %nre, align 4, !tbaa !0
  %6 = trunc i64 %indvars.iv.next.i to i32
  %cmp6.i = icmp slt i32 %6, %5
  br i1 %cmp6.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %if.end14.i, %if.end5.i
  store i8** %NM.0.i, i8*** %nms, align 8, !tbaa !3
  br label %if.end6

if.else:                                          ; preds = %entry
  %tobool = icmp eq i32 %call, 0
  %call3 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fp) #4
  br i1 %tobool, label %if.else4, label %if.then2

if.then2:                                         ; preds = %if.else
  %7 = getelementptr inbounds [256 x i8]* %line.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 256, i8* %7) #3
  %call.i14 = call i8* @fgets2(i8* %7, i32 255, %struct._IO_FILE* %call3) #4
  %call2.i15 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8]* @.str41, i64 0, i64 0), i32* %nre) #4
  %cmp.i16 = icmp eq i32 %call2.i15, 0
  br i1 %cmp.i16, label %if.then.i17, label %if.end.i18

if.then.i17:                                      ; preds = %if.then2
  store i32 0, i32* %nre, align 4, !tbaa !0
  br label %if.end6

if.end.i18:                                       ; preds = %if.then2
  %8 = load i32* %nre, align 4, !tbaa !0
  %call3.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %8, i32 8) #4
  %9 = bitcast i8* %call3.i to i8**
  store i8** %9, i8*** %nms, align 8, !tbaa !3
  %10 = load i32* %nre, align 4, !tbaa !0
  %cmp416.i = icmp sgt i32 %10, 0
  br i1 %cmp416.i, label %for.body.i21, label %if.end6

for.body.i21:                                     ; preds = %if.end.i18, %for.body.i21
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i20, %for.body.i21 ], [ 0, %if.end.i18 ]
  %call6.i = call i8* @fgets2(i8* %7, i32 255, %struct._IO_FILE* %call3) #4
  call void @trim(i8* %7) #4
  %call9.i = call i8* @gmx_strdup(i8* %7) #4
  %11 = load i8*** %nms, align 8, !tbaa !3
  %arrayidx.i = getelementptr inbounds i8** %11, i64 %indvars.iv.i19
  store i8* %call9.i, i8** %arrayidx.i, align 8, !tbaa !3
  %indvars.iv.next.i20 = add i64 %indvars.iv.i19, 1
  %12 = load i32* %nre, align 4, !tbaa !0
  %13 = trunc i64 %indvars.iv.next.i20 to i32
  %cmp4.i = icmp slt i32 %13, %12
  br i1 %cmp4.i, label %for.body.i21, label %if.end6

if.else4:                                         ; preds = %if.else
  %14 = load i32* %nre, align 4, !tbaa !0
  %15 = load i8*** %nms, align 8, !tbaa !3
  %call.i22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call3, i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i32 %14) #4
  %cmp6.i23 = icmp sgt i32 %14, 0
  br i1 %cmp6.i23, label %for.body.i28, label %if.end6

for.body.i28:                                     ; preds = %if.else4, %for.body.i28
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i27, %for.body.i28 ], [ 0, %if.else4 ]
  %arrayidx.i25 = getelementptr inbounds i8** %15, i64 %indvars.iv.i24
  %16 = load i8** %arrayidx.i25, align 8, !tbaa !3
  %call1.i26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call3, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0), i8* %16) #4
  %indvars.iv.next.i27 = add i64 %indvars.iv.i24, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i27 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %14
  br i1 %exitcond, label %if.end6, label %for.body.i28

if.end6:                                          ; preds = %for.body.i21, %for.body.i28, %if.end.i18, %if.then.i17, %if.else4, %for.end.i, %if.then.i
  ret void
}

; Function Attrs: optsize
declare i32 @gmx_fio_getread(i32) #1

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #1

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #1

; Function Attrs: optsize
declare %struct._IO_FILE* @gmx_fio_getfp(i32) #1

; Function Attrs: nounwind optsize uwtable
define void @close_enx(i32 %fp) #0 {
entry:
  tail call void @gmx_fio_close(i32 %fp) #4
  ret void
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #1

; Function Attrs: nounwind optsize uwtable
define i32 @open_enx(i8* %fn, i8* %mode) #0 {
entry:
  %dum.i = alloca i8, align 1
  %nre = alloca i32, align 4
  %nm = alloca i8**, align 8
  %bDum = alloca i32, align 4
  store i8** null, i8*** %nm, align 8, !tbaa !3
  store i32 1, i32* %bDum, align 4, !tbaa !0
  %0 = load i8* %mode, align 1, !tbaa !1
  %cmp = icmp eq i8 %0, 114
  %call = call i32 @gmx_fio_open(i8* %fn, i8* %mode) #4
  br i1 %cmp, label %if.then, label %if.end76

if.then:                                          ; preds = %entry
  call void @gmx_fio_select(i32 %call) #4
  call void @gmx_fio_setprecision(i32 %call, i32 0) #4
  call void @do_enxnms(i32 %call, i32* %nre, i8*** %nm) #5
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 206, i32 1, i32 96) #4
  %1 = bitcast i8* %call2 to %struct.t_enxframe*
  %call3 = call fastcc i32 @do_eheader(i32 %call, %struct.t_enxframe* %1, i32* %bDum) #5
  %e_size = getelementptr inbounds i8* %call2, i64 32
  %2 = bitcast i8* %e_size to i32*
  %3 = load i32* %2, align 4, !tbaa !0
  %tobool = icmp eq i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %nre4 = getelementptr inbounds i8* %call2, i64 8
  %4 = bitcast i8* %nre4 to i32*
  %5 = load i32* %4, align 4, !tbaa !0
  %6 = load i32* %nre, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %5, %6
  br i1 %cmp5, label %land.lhs.true7, label %lor.lhs.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %mul = shl nsw i32 %5, 2
  %conv8 = sext i32 %mul to i64
  %mul9 = shl nsw i64 %conv8, 2
  %conv11 = sext i32 %3 to i64
  %cmp12 = icmp eq i64 %mul9, %conv11
  br i1 %cmp12, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then, %land.lhs.true7, %land.lhs.true
  %d_size = getelementptr inbounds i8* %call2, i64 36
  %7 = bitcast i8* %d_size to i32*
  %8 = load i32* %7, align 4, !tbaa !0
  %tobool14 = icmp eq i32 %8, 0
  br i1 %tobool14, label %if.else, label %land.lhs.true15

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %ndisre = getelementptr inbounds i8* %call2, i64 12
  %9 = bitcast i8* %ndisre to i32*
  %10 = load i32* %9, align 4, !tbaa !0
  %conv16 = sext i32 %10 to i64
  %mul18 = shl nsw i64 %conv16, 3
  %add113 = or i64 %mul18, 4
  %conv20 = sext i32 %8 to i64
  %cmp21 = icmp eq i64 %add113, %conv20
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %land.lhs.true15, %land.lhs.true7
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0), i8* %fn) #4
  %12 = load i32* %nre, align 4, !tbaa !0
  %cmp25116 = icmp sgt i32 %12, 0
  %13 = load i8*** %nm, align 8, !tbaa !3
  br i1 %cmp25116, label %for.body, label %for.end

for.body:                                         ; preds = %if.then23, %for.body
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.body ], [ 0, %if.then23 ]
  %arrayidx27 = getelementptr inbounds i8** %13, i64 %indvars.iv118
  %14 = load i8** %arrayidx27, align 8, !tbaa !3
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 216, i8* %14) #4
  %indvars.iv.next119 = add i64 %indvars.iv118, 1
  %15 = load i32* %nre, align 4, !tbaa !0
  %16 = trunc i64 %indvars.iv.next119 to i32
  %cmp25 = icmp slt i32 %16, %15
  br i1 %cmp25, label %for.body, label %for.end

for.end:                                          ; preds = %if.then23, %for.body
  %17 = bitcast i8** %13 to i8*
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 217, i8* %17) #4
  br label %if.end73

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true15
  call void @gmx_fio_rewind(i32 %call) #4
  call void @gmx_fio_select(i32 %call) #4
  call void @gmx_fio_setprecision(i32 %call, i32 1) #4
  call void @do_enxnms(i32 %call, i32* %nre, i8*** %nm) #5
  %call28 = call fastcc i32 @do_eheader(i32 %call, %struct.t_enxframe* %1, i32* %bDum) #5
  %18 = load i32* %2, align 4, !tbaa !0
  %tobool30 = icmp eq i32 %18, 0
  br i1 %tobool30, label %lor.lhs.false43, label %land.lhs.true31

land.lhs.true31:                                  ; preds = %if.else
  %nre32 = getelementptr inbounds i8* %call2, i64 8
  %19 = bitcast i8* %nre32 to i32*
  %20 = load i32* %19, align 4, !tbaa !0
  %21 = load i32* %nre, align 4, !tbaa !0
  %cmp33 = icmp eq i32 %20, %21
  br i1 %cmp33, label %land.lhs.true35, label %lor.lhs.false43

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %mul36 = shl nsw i32 %20, 2
  %conv37 = sext i32 %mul36 to i64
  %mul38 = shl nsw i64 %conv37, 3
  %conv40 = sext i32 %18 to i64
  %cmp41 = icmp eq i64 %mul38, %conv40
  br i1 %cmp41, label %if.then56, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %if.else, %land.lhs.true35, %land.lhs.true31
  %22 = load i32* %7, align 4, !tbaa !0
  %tobool45 = icmp eq i32 %22, 0
  br i1 %tobool45, label %if.else58, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %lor.lhs.false43
  %ndisre47 = getelementptr inbounds i8* %call2, i64 12
  %23 = bitcast i8* %ndisre47 to i32*
  %24 = load i32* %23, align 4, !tbaa !0
  %conv48 = sext i32 %24 to i64
  %mul50 = shl nsw i64 %conv48, 4
  %add51112 = or i64 %mul50, 4
  %conv53 = sext i32 %22 to i64
  %cmp54 = icmp eq i64 %add51112, %conv53
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %land.lhs.true46, %land.lhs.true35
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([43 x i8]* @.str12, i64 0, i64 0), i8* %fn) #4
  br label %for.cond64.preheader

if.else58:                                        ; preds = %lor.lhs.false43, %land.lhs.true46
  call void @llvm.lifetime.start(i64 1, i8* %dum.i) #3
  %call.i = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0)) #4
  %call1.i = call i64 @fread(i8* %dum.i, i64 1, i64 1, %struct._IO_FILE* %call.i) #4
  %call2.i = call i32 @feof(%struct._IO_FILE* %call.i) #4
  call void @ffclose(%struct._IO_FILE* %call.i) #4
  call void @llvm.lifetime.end(i64 1, i8* %dum.i) #3
  %tobool60 = icmp eq i32 %call2.i, 0
  br i1 %tobool60, label %if.else62, label %if.then61

if.then61:                                        ; preds = %if.else58
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str13, i64 0, i64 0), i8* %fn) #4
  br label %for.cond64.preheader

if.else62:                                        ; preds = %if.else58
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i8* %fn) #4
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %if.then61, %if.else62, %if.then56
  %26 = load i32* %nre, align 4, !tbaa !0
  %cmp65114 = icmp sgt i32 %26, 0
  %27 = load i8*** %nm, align 8, !tbaa !3
  br i1 %cmp65114, label %for.body67, label %for.end72

for.body67:                                       ; preds = %for.cond64.preheader, %for.body67
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body67 ], [ 0, %for.cond64.preheader ]
  %arrayidx69 = getelementptr inbounds i8** %27, i64 %indvars.iv
  %28 = load i8** %arrayidx69, align 8, !tbaa !3
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 238, i8* %28) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %29 = load i32* %nre, align 4, !tbaa !0
  %30 = trunc i64 %indvars.iv.next to i32
  %cmp65 = icmp slt i32 %30, %29
  br i1 %cmp65, label %for.body67, label %for.end72

for.end72:                                        ; preds = %for.cond64.preheader, %for.body67
  %31 = bitcast i8** %27 to i8*
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 239, i8* %31) #4
  br label %if.end73

if.end73:                                         ; preds = %for.end72, %for.end
  call void @free_enxframe(%struct.t_enxframe* %1) #5
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 242, i8* %call2) #4
  call void @gmx_fio_rewind(i32 %call) #4
  br label %if.end76

if.end76:                                         ; preds = %entry, %if.end73
  store i32 0, i32* @framenr, align 4, !tbaa !0
  ret i32 %call
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #1

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_eheader(i32 %fp, %struct.t_enxframe* %fr, i32* nocapture %bOK) #0 {
entry:
  %dum = alloca i32, align 4
  store i32 0, i32* %dum, align 4, !tbaa !0
  %call = call i32 @gmx_fio_getread(i32 %fp) #4
  store i32 1, i32* %bOK, align 4, !tbaa !0
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %0 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %1 = bitcast %struct.t_enxframe* %fr to i8*
  %call1 = call i32 %0(i8* %1, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 119) #4
  %tobool2 = icmp eq i32 %call1, 0
  br i1 %tobool2, label %return, label %cond.true7

cond.false:                                       ; preds = %entry
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %3 = bitcast %struct.t_enxframe* %fr to i8*
  %call4 = call i32 %2(i8* %3, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 119) #4
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %return, label %cond.false10

cond.true7:                                       ; preds = %cond.true
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %step = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1
  %5 = bitcast i32* %step to i8*
  %call8 = call i32 %4(i8* %5, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 120) #4
  %tobool9 = icmp eq i32 %call8, 0
  br i1 %tobool9, label %if.end15.thread206, label %cond.true17

if.end15.thread206:                               ; preds = %cond.true7
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %cond.true17

cond.false10:                                     ; preds = %cond.false
  %6 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %step11 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1
  %7 = bitcast i32* %step11 to i8*
  %call12 = call i32 %6(i8* %7, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 120) #4
  %tobool13 = icmp eq i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %cond.false20

if.end15:                                         ; preds = %cond.false10
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %cond.false20

cond.true17:                                      ; preds = %cond.true7, %if.end15.thread206
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %nre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  %9 = bitcast i32* %nre to i8*
  %call18 = call i32 %8(i8* %9, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 121) #4
  %tobool19 = icmp eq i32 %call18, 0
  br i1 %tobool19, label %if.then24, label %if.end25

cond.false20:                                     ; preds = %cond.false10, %if.end15
  %10 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %nre21 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  %11 = bitcast i32* %nre21 to i8*
  %call22 = call i32 %10(i8* %11, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 121) #4
  %tobool23 = icmp eq i32 %call22, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %cond.true17, %cond.false20
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %if.end25

if.end25:                                         ; preds = %cond.true17, %cond.false20, %if.then24
  br i1 %tobool, label %cond.true27, label %cond.false30

cond.true27:                                      ; preds = %if.end25
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %ndisre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %13 = bitcast i32* %ndisre to i8*
  %call28 = call i32 %12(i8* %13, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 122) #4
  %tobool29 = icmp eq i32 %call28, 0
  br i1 %tobool29, label %if.end35.thread208, label %cond.true37

if.end35.thread208:                               ; preds = %cond.true27
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %cond.true37

cond.false30:                                     ; preds = %if.end25
  %14 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %ndisre31 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %15 = bitcast i32* %ndisre31 to i8*
  %call32 = call i32 %14(i8* %15, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 122) #4
  %tobool33 = icmp eq i32 %call32, 0
  br i1 %tobool33, label %if.end35, label %cond.false40

if.end35:                                         ; preds = %cond.false30
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %cond.false40

cond.true37:                                      ; preds = %cond.true27, %if.end35.thread208
  %16 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %nblock = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %17 = bitcast i32* %nblock to i8*
  %call38 = call i32 %16(i8* %17, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 123) #4
  %tobool39 = icmp eq i32 %call38, 0
  br i1 %tobool39, label %if.then44, label %if.end45

cond.false40:                                     ; preds = %cond.false30, %if.end35
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %nblock41 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %19 = bitcast i32* %nblock41 to i8*
  %call42 = call i32 %18(i8* %19, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 123) #4
  %tobool43 = icmp eq i32 %call42, 0
  br i1 %tobool43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %cond.true37, %cond.false40
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %if.end45

if.end45:                                         ; preds = %cond.true37, %cond.false40, %if.then44
  %nblock47 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %20 = load i32* %nblock47, align 4, !tbaa !0
  br i1 %tobool, label %land.lhs.true, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %if.end45, %if.end84
  %21 = phi i32 [ %42, %if.end84 ], [ %20, %if.end45 ]
  %nblock90 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %cmp91216 = icmp sgt i32 %21, 0
  br i1 %cmp91216, label %for.body93.lr.ph, label %if.end112

for.body93.lr.ph:                                 ; preds = %for.cond89.preheader
  %nr97 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  br label %for.body93

land.lhs.true:                                    ; preds = %if.end45
  %cmp = icmp sgt i32 %20, 70
  br i1 %cmp, label %if.end51.thread212, label %land.lhs.true53

if.end51.thread212:                               ; preds = %land.lhs.true
  store i32 1, i32* %nblock47, align 4, !tbaa !0
  br label %land.lhs.true53

land.lhs.true53:                                  ; preds = %land.lhs.true, %if.end51.thread212
  %22 = phi i32 [ 1, %if.end51.thread212 ], [ %20, %land.lhs.true ]
  %tempfix_nr.0210 = phi i32 [ %20, %if.end51.thread212 ], [ 0, %land.lhs.true ]
  %nr_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 8
  %23 = load i32* %nr_alloc, align 4, !tbaa !0
  %cmp55 = icmp sgt i32 %22, %23
  br i1 %cmp55, label %if.then56, label %if.end84

if.then56:                                        ; preds = %land.lhs.true53
  %nr = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %24 = load i32** %nr, align 8, !tbaa !3
  %25 = bitcast i32* %24 to i8*
  %mul = shl i32 %22, 2
  %call59 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 130, i8* %25, i32 %mul) #4
  %26 = bitcast i8* %call59 to i32*
  store i32* %26, i32** %nr, align 8, !tbaa !3
  %b_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11
  %27 = load i32** %b_alloc, align 8, !tbaa !3
  %28 = bitcast i32* %27 to i8*
  %29 = load i32* %nblock47, align 4, !tbaa !0
  %mul63 = shl i32 %29, 2
  %call65 = call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 131, i8* %28, i32 %mul63) #4
  %30 = bitcast i8* %call65 to i32*
  store i32* %30, i32** %b_alloc, align 8, !tbaa !3
  %block67 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15
  %31 = load float*** %block67, align 8, !tbaa !3
  %32 = bitcast float** %31 to i8*
  %33 = load i32* %nblock47, align 4, !tbaa !0
  %mul70 = shl i32 %33, 3
  %call72 = call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 132, i8* %32, i32 %mul70) #4
  %34 = bitcast i8* %call72 to float**
  store float** %34, float*** %block67, align 8, !tbaa !3
  %35 = load i32* %nr_alloc, align 4, !tbaa !0
  %36 = load i32* %nblock47, align 4, !tbaa !0
  %cmp76218 = icmp slt i32 %35, %36
  br i1 %cmp76218, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.then56
  %37 = sext i32 %35 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %38 = phi float** [ %34, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv221 = phi i64 [ %37, %for.body.lr.ph ], [ %indvars.iv.next222, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds float** %38, i64 %indvars.iv221
  store float* null, float** %arrayidx, align 8, !tbaa !3
  %39 = load i32** %b_alloc, align 8, !tbaa !3
  %arrayidx81 = getelementptr inbounds i32* %39, i64 %indvars.iv221
  store i32 0, i32* %arrayidx81, align 4, !tbaa !0
  %indvars.iv.next222 = add i64 %indvars.iv221, 1
  %40 = load i32* %nblock47, align 4, !tbaa !0
  %41 = trunc i64 %indvars.iv.next222 to i32
  %cmp76 = icmp slt i32 %41, %40
  br i1 %cmp76, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load float*** %block67, align 8, !tbaa !3
  br label %for.body

for.end:                                          ; preds = %for.body, %if.then56
  %.lcssa = phi i32 [ %36, %if.then56 ], [ %40, %for.body ]
  store i32 %.lcssa, i32* %nr_alloc, align 4, !tbaa !0
  br label %if.end84

if.end84:                                         ; preds = %for.end, %land.lhs.true53
  %42 = phi i32 [ %.lcssa, %for.end ], [ %22, %land.lhs.true53 ]
  %tobool85 = icmp eq i32 %tempfix_nr.0210, 0
  br i1 %tobool85, label %for.cond89.preheader, label %if.then86

if.then86:                                        ; preds = %if.end84
  %nr87 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %43 = load i32** %nr87, align 8, !tbaa !3
  store i32 %tempfix_nr.0210, i32* %43, align 4, !tbaa !0
  br label %if.end112

for.body93:                                       ; preds = %for.body93.lr.ph, %for.inc109
  %indvars.iv = phi i64 [ 0, %for.body93.lr.ph ], [ %indvars.iv.next, %for.inc109 ]
  br i1 %tobool, label %cond.true95, label %cond.false101

cond.true95:                                      ; preds = %for.body93
  %44 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %45 = load i32** %nr97, align 8, !tbaa !3
  %arrayidx98 = getelementptr inbounds i32* %45, i64 %indvars.iv
  %46 = bitcast i32* %arrayidx98 to i8*
  %call99 = call i32 %44(i8* %46, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 143) #4
  %tobool100 = icmp eq i32 %call99, 0
  br i1 %tobool100, label %if.then107, label %for.inc109

cond.false101:                                    ; preds = %for.body93
  %47 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %48 = load i32** %nr97, align 8, !tbaa !3
  %arrayidx104 = getelementptr inbounds i32* %48, i64 %indvars.iv
  %49 = bitcast i32* %arrayidx104 to i8*
  %call105 = call i32 %47(i8* %49, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 143) #4
  %tobool106 = icmp eq i32 %call105, 0
  br i1 %tobool106, label %if.then107, label %for.inc109

if.then107:                                       ; preds = %cond.true95, %cond.false101
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %for.inc109

for.inc109:                                       ; preds = %cond.true95, %cond.false101, %if.then107
  %indvars.iv.next = add i64 %indvars.iv, 1
  %50 = load i32* %nblock90, align 4, !tbaa !0
  %51 = trunc i64 %indvars.iv.next to i32
  %cmp91 = icmp slt i32 %51, %50
  br i1 %cmp91, label %for.body93, label %if.end112

if.end112:                                        ; preds = %for.cond89.preheader, %for.inc109, %if.then86
  br i1 %tobool, label %cond.true114, label %cond.false117

cond.true114:                                     ; preds = %if.end112
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %e_size = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6
  %53 = bitcast i32* %e_size to i8*
  %call115 = call i32 %52(i8* %53, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 146) #4
  %tobool116 = icmp eq i32 %call115, 0
  br i1 %tobool116, label %if.end122.thread215, label %cond.true124

if.end122.thread215:                              ; preds = %cond.true114
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %cond.true124

cond.false117:                                    ; preds = %if.end112
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %e_size118 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6
  %55 = bitcast i32* %e_size118 to i8*
  %call119 = call i32 %54(i8* %55, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 146) #4
  %tobool120 = icmp eq i32 %call119, 0
  br i1 %tobool120, label %if.end122, label %cond.false127

if.end122:                                        ; preds = %cond.false117
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %cond.false127

cond.true124:                                     ; preds = %cond.true114, %if.end122.thread215
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %d_size = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7
  %57 = bitcast i32* %d_size to i8*
  %call125 = call i32 %56(i8* %57, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 147) #4
  %tobool126 = icmp eq i32 %call125, 0
  br i1 %tobool126, label %if.then131, label %if.end132

cond.false127:                                    ; preds = %cond.false117, %if.end122
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %d_size128 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7
  %59 = bitcast i32* %d_size128 to i8*
  %call129 = call i32 %58(i8* %59, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 147) #4
  %tobool130 = icmp eq i32 %call129, 0
  br i1 %tobool130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %cond.true124, %cond.false127
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %if.end132

if.end132:                                        ; preds = %cond.true124, %cond.false127, %if.then131
  br i1 %tobool, label %cond.true134, label %cond.false137

cond.true134:                                     ; preds = %if.end132
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %61 = bitcast i32* %dum to i8*
  %call135 = call i32 %60(i8* %61, i32 1, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 149) #4
  %tobool136 = icmp eq i32 %call135, 0
  br i1 %tobool136, label %if.then140, label %if.end141

cond.false137:                                    ; preds = %if.end132
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %63 = bitcast i32* %dum to i8*
  %call138 = call i32 %62(i8* %63, i32 1, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 149) #4
  %tobool139 = icmp eq i32 %call138, 0
  br i1 %tobool139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %cond.true134, %cond.false137
  store i32 0, i32* %bOK, align 4, !tbaa !0
  br label %if.end141

if.end141:                                        ; preds = %cond.false137, %cond.true134, %if.then140
  %64 = load i32* %bOK, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %cond.false, %cond.true, %if.end141
  %retval.0 = phi i32 [ %64, %if.end141 ], [ 0, %cond.true ], [ 0, %cond.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @gmx_fio_rewind(i32) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define i32 @do_enx(i32 %fp, %struct.t_enxframe* %fr) #0 {
entry:
  %bOK = alloca i32, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %buf = alloca [128 x i8], align 16
  %buf225 = alloca [128 x i8], align 16
  %buf299 = alloca [128 x i8], align 16
  store i32 1, i32* %bOK, align 4, !tbaa !0
  %call = call i32 @gmx_fio_getread(i32 %fp) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  %0 = load i32* %nre, align 4, !tbaa !0
  %mul1 = shl i32 %0, 4
  %e_size = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6
  store i32 %mul1, i32* %e_size, align 4, !tbaa !0
  %ndisre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %1 = load i32* %ndisre, align 4, !tbaa !0
  %mul4 = shl i32 %1, 3
  %d_size = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7
  store i32 %mul4, i32* %d_size, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @gmx_fio_select(i32 %fp) #4
  %call6 = call fastcc i32 @do_eheader(i32 %fp, %struct.t_enxframe* %fr, i32* %bOK) #5
  %tobool7 = icmp eq i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.end18

if.then8:                                         ; preds = %if.end
  br i1 %tobool, label %if.then10, label %return

if.then10:                                        ; preds = %if.then8
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %3 = load i32* @framenr, align 4, !tbaa !0
  %sub = add nsw i32 %3, -1
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([46 x i8]* @.str15, i64 0, i64 0), i32 %sub) #4
  %4 = load i32* %bOK, align 4, !tbaa !0
  %tobool12 = icmp eq i32 %4, 0
  br i1 %tobool12, label %if.then13, label %return

if.then13:                                        ; preds = %if.then10
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %6 = load i32* @framenr, align 4, !tbaa !0
  %t = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  %7 = load float* %t, align 4, !tbaa !4
  %conv14 = fpext float %7 to double
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([47 x i8]* @.str16, i64 0, i64 0), i32 %6, double %conv14) #4
  br label %return

if.end18:                                         ; preds = %if.end
  br i1 %tobool, label %if.then20, label %if.end29

if.then20:                                        ; preds = %if.end18
  %8 = load i32* @framenr, align 4, !tbaa !0
  %cmp = icmp slt i32 %8, 10
  %rem = srem i32 %8, 10
  %cmp22 = icmp eq i32 %rem, 0
  %or.cond = or i1 %cmp, %cmp22
  br i1 %or.cond, label %if.then24, label %if.end28

if.then24:                                        ; preds = %if.then20
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %t25 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  %10 = load float* %t25, align 4, !tbaa !4
  %conv26 = fpext float %10 to double
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([41 x i8]* @.str17, i64 0, i64 0), i32 %8, double %conv26) #4
  %.pre = load i32* @framenr, align 4, !tbaa !0
  br label %if.end28

if.end28:                                         ; preds = %if.then20, %if.then24
  %11 = phi i32 [ %8, %if.then20 ], [ %.pre, %if.then24 ]
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* @framenr, align 4, !tbaa !0
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end18
  %nre30 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2
  %12 = load i32* %nre30, align 4, !tbaa !0
  %cmp31 = icmp sgt i32 %12, 0
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end29
  %ndisre33 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %13 = load i32* %ndisre33, align 4, !tbaa !0
  %cmp34 = icmp sgt i32 %13, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end29
  %14 = phi i1 [ true, %if.end29 ], [ %cmp34, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32
  %nblock = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4
  %15 = load i32* %nblock, align 4, !tbaa !0
  %cmp36489 = icmp sgt i32 %15, 0
  br i1 %cmp36489, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %lor.end
  %nr = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %lor.end42
  %indvars.iv504 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next505, %lor.end42 ]
  %bSane.0491 = phi i32 [ %lor.ext, %for.body.lr.ph ], [ %lor.ext43, %lor.end42 ]
  %tobool38 = icmp eq i32 %bSane.0491, 0
  br i1 %tobool38, label %lor.rhs39, label %lor.end42

lor.rhs39:                                        ; preds = %for.body
  %16 = load i32** %nr, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %16, i64 %indvars.iv504
  %17 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp40 = icmp sgt i32 %17, 0
  br label %lor.end42

lor.end42:                                        ; preds = %for.body, %lor.rhs39
  %18 = phi i1 [ true, %for.body ], [ %cmp40, %lor.rhs39 ]
  %lor.ext43 = zext i1 %18 to i32
  %indvars.iv.next505 = add i64 %indvars.iv504, 1
  %19 = trunc i64 %indvars.iv.next505 to i32
  %cmp36 = icmp slt i32 %19, %15
  br i1 %cmp36, label %for.body, label %for.end

for.end:                                          ; preds = %lor.end42, %lor.end
  %bSane.0.lcssa = phi i32 [ %lor.ext, %lor.end ], [ %lor.ext43, %lor.end42 ]
  %step = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1
  %20 = load i32* %step, align 4, !tbaa !0
  %cmp45 = icmp slt i32 %20, 0
  %tobool47 = icmp eq i32 %bSane.0.lcssa, 0
  %or.cond469 = or i1 %cmp45, %tobool47
  br i1 %or.cond469, label %if.then48, label %if.end58

if.then48:                                        ; preds = %for.end
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %call49 = call i8* @gmx_fio_getname(i32 %fp) #4
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([60 x i8]* @.str18, i64 0, i64 0), i8* %call49) #4
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %23 = load i32* %step, align 4, !tbaa !0
  %24 = load i32* %nre30, align 4, !tbaa !0
  %ndisre53 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %25 = load i32* %ndisre53, align 4, !tbaa !0
  %26 = load i32* %nblock, align 4, !tbaa !0
  %t55 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  %27 = load float* %t55, align 4, !tbaa !4
  %conv56 = fpext float %27 to double
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([99 x i8]* @.str19, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, double %conv56) #4
  br label %if.end58

if.end58:                                         ; preds = %for.end, %if.then48
  %28 = load i32* %nre30, align 4, !tbaa !0
  br i1 %tobool, label %land.lhs.true60, label %for.cond74.preheader

land.lhs.true60:                                  ; preds = %if.end58
  %e_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 9
  %29 = load i32* %e_alloc, align 4, !tbaa !0
  %cmp62 = icmp sgt i32 %28, %29
  br i1 %cmp62, label %if.then64, label %for.cond74.preheader

if.then64:                                        ; preds = %land.lhs.true60
  %ener = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12
  %30 = load %struct.t_energy** %ener, align 8, !tbaa !3
  %31 = bitcast %struct.t_energy* %30 to i8*
  %mul67 = shl i32 %28, 5
  %call69 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 294, i8* %31, i32 %mul67) #4
  %32 = bitcast i8* %call69 to %struct.t_energy*
  store %struct.t_energy* %32, %struct.t_energy** %ener, align 8, !tbaa !3
  %33 = load i32* %nre30, align 4, !tbaa !0
  store i32 %33, i32* %e_alloc, align 4, !tbaa !0
  br label %for.cond74.preheader

for.cond74.preheader:                             ; preds = %if.end58, %if.then64, %land.lhs.true60
  %34 = phi i32 [ %33, %if.then64 ], [ %28, %land.lhs.true60 ], [ %28, %if.end58 ]
  %cmp76485 = icmp sgt i32 %34, 0
  br i1 %cmp76485, label %for.body78.lr.ph, label %for.end161

for.body78.lr.ph:                                 ; preds = %for.cond74.preheader
  %ener92 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12
  %35 = bitcast float* %tmp2 to i8*
  %36 = bitcast float* %tmp1 to i8*
  %bOK.promoted487 = load i32* %bOK, align 4, !tbaa !0
  br label %for.body78

for.body78:                                       ; preds = %for.body78.lr.ph, %land.end157
  %indvars.iv502 = phi i64 [ 0, %for.body78.lr.ph ], [ %indvars.iv.next503, %land.end157 ]
  %land.ext158488 = phi i32 [ %bOK.promoted487, %for.body78.lr.ph ], [ %land.ext158, %land.end157 ]
  %tobool79 = icmp eq i32 %land.ext158488, 0
  br i1 %tobool79, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.body78
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %38 = load %struct.t_energy** %ener92, align 8, !tbaa !3
  %e = getelementptr inbounds %struct.t_energy* %38, i64 %indvars.iv502, i32 0
  %39 = bitcast float* %e to i8*
  %call84 = call i32 %37(i8* %39, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298) #4
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %40 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %41 = load %struct.t_energy** %ener92, align 8, !tbaa !3
  %e88 = getelementptr inbounds %struct.t_energy* %41, i64 %indvars.iv502, i32 0
  %42 = bitcast float* %e88 to i8*
  %call89 = call i32 %40(i8* %42, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call84, %cond.true ], [ %call89, %cond.false ]
  %tobool90 = icmp ne i32 %cond, 0
  br label %land.end

land.end:                                         ; preds = %for.body78, %cond.end
  %43 = phi i1 [ %tobool90, %cond.end ], [ false, %for.body78 ]
  %44 = load %struct.t_energy** %ener92, align 8, !tbaa !3
  %eav = getelementptr inbounds %struct.t_energy* %44, i64 %indvars.iv502, i32 1
  %45 = load double* %eav, align 8, !tbaa !5
  %conv94 = fptrunc double %45 to float
  store float %conv94, float* %tmp1, align 4, !tbaa !4
  %46 = load i32* %step, align 4, !tbaa !0
  %add = add nsw i32 %46, 1
  %conv96 = sitofp i32 %add to float
  %div = fdiv float %conv94, %conv96
  %conv97 = fpext float %div to double
  %cmp98 = fcmp olt double %conv97, 1.200000e-07
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %land.end
  store float 0.000000e+00, float* %tmp1, align 4, !tbaa !4
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %land.end
  %47 = phi float [ 0.000000e+00, %if.then100 ], [ %conv94, %land.end ]
  br i1 %43, label %land.rhs103, label %land.end112

land.rhs103:                                      ; preds = %if.end101
  br i1 %tobool, label %cond.true105, label %cond.false107

cond.true105:                                     ; preds = %land.rhs103
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %call106 = call i32 %48(i8* %36, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 303) #4
  br label %cond.end109

cond.false107:                                    ; preds = %land.rhs103
  %49 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %call108 = call i32 %49(i8* %36, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 303) #4
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false107, %cond.true105
  %cond110 = phi i32 [ %call106, %cond.true105 ], [ %call108, %cond.false107 ]
  %tobool111 = icmp ne i32 %cond110, 0
  %.pre506 = load float* %tmp1, align 4, !tbaa !4
  %.pre507 = load %struct.t_energy** %ener92, align 8, !tbaa !3
  br label %land.end112

land.end112:                                      ; preds = %if.end101, %cond.end109
  %50 = phi %struct.t_energy* [ %44, %if.end101 ], [ %.pre507, %cond.end109 ]
  %51 = phi float [ %47, %if.end101 ], [ %.pre506, %cond.end109 ]
  %52 = phi i1 [ false, %if.end101 ], [ %tobool111, %cond.end109 ]
  %conv114 = fpext float %51 to double
  %eav118 = getelementptr inbounds %struct.t_energy* %50, i64 %indvars.iv502, i32 1
  store double %conv114, double* %eav118, align 8, !tbaa !5
  %esum = getelementptr inbounds %struct.t_energy* %50, i64 %indvars.iv502, i32 2
  %53 = load double* %esum, align 8, !tbaa !5
  %conv122 = fptrunc double %53 to float
  store float %conv122, float* %tmp2, align 4, !tbaa !4
  br i1 %52, label %land.rhs124, label %land.end133.thread

land.end133.thread:                               ; preds = %land.end112
  %conv135513 = fpext float %conv122 to double
  %esum139514 = getelementptr inbounds %struct.t_energy* %50, i64 %indvars.iv502, i32 2
  store double %conv135513, double* %esum139514, align 8, !tbaa !5
  br label %land.end157

land.rhs124:                                      ; preds = %land.end112
  br i1 %tobool, label %cond.true126, label %cond.false128

cond.true126:                                     ; preds = %land.rhs124
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %call127 = call i32 %54(i8* %35, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 308) #4
  br label %land.end133

cond.false128:                                    ; preds = %land.rhs124
  %55 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %call129 = call i32 %55(i8* %35, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 308) #4
  br label %land.end133

land.end133:                                      ; preds = %cond.true126, %cond.false128
  %cond131 = phi i32 [ %call127, %cond.true126 ], [ %call129, %cond.false128 ]
  %tobool132 = icmp eq i32 %cond131, 0
  %.pre508 = load float* %tmp2, align 4, !tbaa !4
  %.pre509 = load %struct.t_energy** %ener92, align 8, !tbaa !3
  %conv135 = fpext float %.pre508 to double
  %esum139 = getelementptr inbounds %struct.t_energy* %.pre509, i64 %indvars.iv502, i32 2
  store double %conv135, double* %esum139, align 8, !tbaa !5
  br i1 %tobool132, label %land.end157, label %land.rhs141

land.rhs141:                                      ; preds = %land.end133
  br i1 %tobool, label %cond.true143, label %cond.false148

cond.true143:                                     ; preds = %land.rhs141
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %e2sum = getelementptr inbounds %struct.t_energy* %.pre509, i64 %indvars.iv502, i32 3
  %57 = bitcast float* %e2sum to i8*
  %call147 = call i32 %56(i8* %57, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 311) #4
  br label %cond.end154

cond.false148:                                    ; preds = %land.rhs141
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %e2sum152 = getelementptr inbounds %struct.t_energy* %.pre509, i64 %indvars.iv502, i32 3
  %59 = bitcast float* %e2sum152 to i8*
  %call153 = call i32 %58(i8* %59, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 311) #4
  br label %cond.end154

cond.end154:                                      ; preds = %cond.false148, %cond.true143
  %cond155 = phi i32 [ %call147, %cond.true143 ], [ %call153, %cond.false148 ]
  %tobool156 = icmp ne i32 %cond155, 0
  br label %land.end157

land.end157:                                      ; preds = %land.end133, %land.end133.thread, %cond.end154
  %60 = phi i1 [ %tobool156, %cond.end154 ], [ false, %land.end133.thread ], [ false, %land.end133 ]
  %land.ext158 = zext i1 %60 to i32
  %indvars.iv.next503 = add i64 %indvars.iv502, 1
  %61 = load i32* %nre30, align 4, !tbaa !0
  %62 = trunc i64 %indvars.iv.next503 to i32
  %cmp76 = icmp slt i32 %62, %61
  br i1 %cmp76, label %for.body78, label %for.cond74.for.end161_crit_edge

for.cond74.for.end161_crit_edge:                  ; preds = %land.end157
  store i32 %land.ext158, i32* %bOK, align 4, !tbaa !0
  br label %for.end161

for.end161:                                       ; preds = %for.cond74.preheader, %for.cond74.for.end161_crit_edge
  %ndisre162 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3
  %63 = load i32* %ndisre162, align 4, !tbaa !0
  %tobool163 = icmp eq i32 %63, 0
  br i1 %tobool163, label %for.cond257.preheader, label %if.then164

if.then164:                                       ; preds = %for.end161
  br i1 %tobool, label %land.lhs.true166, label %for.cond186.preheader

land.lhs.true166:                                 ; preds = %if.then164
  %d_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 10
  %64 = load i32* %d_alloc, align 4, !tbaa !0
  %cmp168 = icmp sgt i32 %63, %64
  br i1 %cmp168, label %if.then170, label %for.cond186.preheader

if.then170:                                       ; preds = %land.lhs.true166
  %rav = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13
  %65 = load float** %rav, align 8, !tbaa !3
  %66 = bitcast float* %65 to i8*
  %mul173 = shl i32 %63, 2
  %call175 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 315, i8* %66, i32 %mul173) #4
  %67 = bitcast i8* %call175 to float*
  store float* %67, float** %rav, align 8, !tbaa !3
  %rt = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14
  %68 = load float** %rt, align 8, !tbaa !3
  %69 = bitcast float* %68 to i8*
  %70 = load i32* %ndisre162, align 4, !tbaa !0
  %mul179 = shl i32 %70, 2
  %call181 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 316, i8* %69, i32 %mul179) #4
  %71 = bitcast i8* %call181 to float*
  store float* %71, float** %rt, align 8, !tbaa !3
  %72 = load i32* %ndisre162, align 4, !tbaa !0
  store i32 %72, i32* %d_alloc, align 4, !tbaa !0
  br label %for.cond186.preheader

for.cond186.preheader:                            ; preds = %if.then170, %land.lhs.true166, %if.then164
  %73 = phi i32 [ %72, %if.then170 ], [ %63, %land.lhs.true166 ], [ %63, %if.then164 ]
  %cmp188481 = icmp sgt i32 %73, 0
  br i1 %cmp188481, label %for.body190.lr.ph, label %for.end214.thread

for.end214.thread:                                ; preds = %for.cond186.preheader
  %74 = load i32* %bOK, align 4, !tbaa !0
  %not.tobool215515 = icmp ne i32 %74, 0
  %land.ext219517 = zext i1 %not.tobool215515 to i32
  store i32 %land.ext219517, i32* %bOK, align 4, !tbaa !0
  br label %for.end250

for.body190.lr.ph:                                ; preds = %for.cond186.preheader
  %75 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  %rav197 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13
  br label %for.body190

for.body190:                                      ; preds = %for.body190.lr.ph, %land.end210
  %indvars.iv500 = phi i64 [ 0, %for.body190.lr.ph ], [ %indvars.iv.next501, %land.end210 ]
  %bOK1.0483 = phi i32 [ 1, %for.body190.lr.ph ], [ %land.ext211, %land.end210 ]
  call void @llvm.lifetime.start(i64 128, i8* %75) #3
  %76 = trunc i64 %indvars.iv500 to i32
  %call191 = call i32 (i8*, i8*, ...)* @sprintf(i8* %75, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 %76) #4
  %tobool192 = icmp eq i32 %bOK1.0483, 0
  br i1 %tobool192, label %land.end210, label %land.rhs193

land.rhs193:                                      ; preds = %for.body190
  br i1 %tobool, label %cond.true195, label %cond.false201

cond.true195:                                     ; preds = %land.rhs193
  %77 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %78 = load float** %rav197, align 8, !tbaa !3
  %arrayidx198 = getelementptr inbounds float* %78, i64 %indvars.iv500
  %79 = bitcast float* %arrayidx198 to i8*
  %call200 = call i32 %77(i8* %79, i32 1, i32 0, i8* %75, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 319) #4
  br label %cond.end207

cond.false201:                                    ; preds = %land.rhs193
  %80 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %81 = load float** %rav197, align 8, !tbaa !3
  %arrayidx204 = getelementptr inbounds float* %81, i64 %indvars.iv500
  %82 = bitcast float* %arrayidx204 to i8*
  %call206 = call i32 %80(i8* %82, i32 1, i32 0, i8* %75, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 319) #4
  br label %cond.end207

cond.end207:                                      ; preds = %cond.false201, %cond.true195
  %cond208 = phi i32 [ %call200, %cond.true195 ], [ %call206, %cond.false201 ]
  %tobool209 = icmp ne i32 %cond208, 0
  br label %land.end210

land.end210:                                      ; preds = %for.body190, %cond.end207
  %83 = phi i1 [ false, %for.body190 ], [ %tobool209, %cond.end207 ]
  %land.ext211 = zext i1 %83 to i32
  call void @llvm.lifetime.end(i64 128, i8* %75) #3
  %indvars.iv.next501 = add i64 %indvars.iv500, 1
  %84 = load i32* %ndisre162, align 4, !tbaa !0
  %85 = trunc i64 %indvars.iv.next501 to i32
  %cmp188 = icmp slt i32 %85, %84
  br i1 %cmp188, label %for.body190, label %for.end214

for.end214:                                       ; preds = %land.end210
  %86 = load i32* %bOK, align 4, !tbaa !0
  %not.tobool215 = icmp ne i32 %86, 0
  %.tobool217 = and i1 %83, %not.tobool215
  %land.ext219 = zext i1 %.tobool217 to i32
  store i32 %land.ext219, i32* %bOK, align 4, !tbaa !0
  %cmp222477 = icmp sgt i32 %84, 0
  br i1 %cmp222477, label %for.body224.lr.ph, label %for.end250

for.body224.lr.ph:                                ; preds = %for.end214
  %87 = getelementptr inbounds [128 x i8]* %buf225, i64 0, i64 0
  %rt233 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14
  br label %for.body224

for.body224:                                      ; preds = %for.body224.lr.ph, %land.end246
  %indvars.iv497 = phi i64 [ 0, %for.body224.lr.ph ], [ %indvars.iv.next498, %land.end246 ]
  %bOK1.1479 = phi i32 [ 1, %for.body224.lr.ph ], [ %land.ext247, %land.end246 ]
  call void @llvm.lifetime.start(i64 128, i8* %87) #3
  %88 = trunc i64 %indvars.iv497 to i32
  %call227 = call i32 (i8*, i8*, ...)* @sprintf(i8* %87, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i32 %88) #4
  %tobool228 = icmp eq i32 %bOK1.1479, 0
  br i1 %tobool228, label %land.end246, label %land.rhs229

land.rhs229:                                      ; preds = %for.body224
  br i1 %tobool, label %cond.true231, label %cond.false237

cond.true231:                                     ; preds = %land.rhs229
  %89 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %90 = load float** %rt233, align 8, !tbaa !3
  %arrayidx234 = getelementptr inbounds float* %90, i64 %indvars.iv497
  %91 = bitcast float* %arrayidx234 to i8*
  %call236 = call i32 %89(i8* %91, i32 1, i32 0, i8* %87, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 321) #4
  br label %cond.end243

cond.false237:                                    ; preds = %land.rhs229
  %92 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %93 = load float** %rt233, align 8, !tbaa !3
  %arrayidx240 = getelementptr inbounds float* %93, i64 %indvars.iv497
  %94 = bitcast float* %arrayidx240 to i8*
  %call242 = call i32 %92(i8* %94, i32 1, i32 0, i8* %87, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 321) #4
  br label %cond.end243

cond.end243:                                      ; preds = %cond.false237, %cond.true231
  %cond244 = phi i32 [ %call236, %cond.true231 ], [ %call242, %cond.false237 ]
  %tobool245 = icmp ne i32 %cond244, 0
  br label %land.end246

land.end246:                                      ; preds = %for.body224, %cond.end243
  %95 = phi i1 [ false, %for.body224 ], [ %tobool245, %cond.end243 ]
  %land.ext247 = zext i1 %95 to i32
  call void @llvm.lifetime.end(i64 128, i8* %87) #3
  %indvars.iv.next498 = add i64 %indvars.iv497, 1
  %96 = load i32* %ndisre162, align 4, !tbaa !0
  %97 = trunc i64 %indvars.iv.next498 to i32
  %cmp222 = icmp slt i32 %97, %96
  br i1 %cmp222, label %for.body224, label %for.end250

for.end250:                                       ; preds = %land.end246, %for.end214.thread, %for.end214
  %.tobool217519 = phi i1 [ %.tobool217, %for.end214 ], [ %not.tobool215515, %for.end214.thread ], [ %.tobool217, %land.end246 ]
  %bOK1.1.lcssa = phi i1 [ true, %for.end214 ], [ true, %for.end214.thread ], [ %95, %land.end246 ]
  %.tobool253 = and i1 %bOK1.1.lcssa, %.tobool217519
  %land.ext255 = zext i1 %.tobool253 to i32
  store i32 %land.ext255, i32* %bOK, align 4, !tbaa !0
  br label %for.cond257.preheader

for.cond257.preheader:                            ; preds = %for.end161, %for.end250
  %98 = load i32* %nblock, align 4, !tbaa !0
  %cmp259474 = icmp sgt i32 %98, 0
  br i1 %cmp259474, label %for.body261.lr.ph, label %for.cond257.preheader.for.end336_crit_edge

for.cond257.preheader.for.end336_crit_edge:       ; preds = %for.cond257.preheader
  %.pre511 = load i32* %bOK, align 4, !tbaa !0
  br label %for.end336

for.body261.lr.ph:                                ; preds = %for.cond257.preheader
  %nr265 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5
  %b_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11
  %block273 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15
  %99 = getelementptr inbounds [128 x i8]* %buf299, i64 0, i64 0
  %bOK.promoted = load i32* %bOK, align 4, !tbaa !0
  br label %for.body261

for.body261:                                      ; preds = %for.body261.lr.ph, %for.end328
  %indvars.iv494 = phi i64 [ 0, %for.body261.lr.ph ], [ %indvars.iv.next495, %for.end328 ]
  %land.ext333476 = phi i32 [ %bOK.promoted, %for.body261.lr.ph ], [ %land.ext333, %for.end328 ]
  %100 = load i32** %nr265, align 8, !tbaa !3
  br i1 %tobool, label %land.lhs.true263, label %for.cond292.preheader

land.lhs.true263:                                 ; preds = %for.body261
  %arrayidx266 = getelementptr inbounds i32* %100, i64 %indvars.iv494
  %101 = load i32* %arrayidx266, align 4, !tbaa !0
  %102 = load i32** %b_alloc, align 8, !tbaa !3
  %arrayidx268 = getelementptr inbounds i32* %102, i64 %indvars.iv494
  %103 = load i32* %arrayidx268, align 4, !tbaa !0
  %cmp269 = icmp sgt i32 %101, %103
  br i1 %cmp269, label %if.then271, label %for.cond292.preheader

if.then271:                                       ; preds = %land.lhs.true263
  %104 = load float*** %block273, align 8, !tbaa !3
  %arrayidx274 = getelementptr inbounds float** %104, i64 %indvars.iv494
  %105 = load float** %arrayidx274, align 8, !tbaa !3
  %106 = bitcast float* %105 to i8*
  %mul279 = shl i32 %101, 2
  %call281 = call i8* @save_realloc(i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 326, i8* %106, i32 %mul279) #4
  %107 = bitcast i8* %call281 to float*
  %108 = load float*** %block273, align 8, !tbaa !3
  %arrayidx284 = getelementptr inbounds float** %108, i64 %indvars.iv494
  store float* %107, float** %arrayidx284, align 8, !tbaa !3
  %109 = load i32** %nr265, align 8, !tbaa !3
  %arrayidx287 = getelementptr inbounds i32* %109, i64 %indvars.iv494
  %110 = load i32* %arrayidx287, align 4, !tbaa !0
  %111 = load i32** %b_alloc, align 8, !tbaa !3
  %arrayidx290 = getelementptr inbounds i32* %111, i64 %indvars.iv494
  store i32 %110, i32* %arrayidx290, align 4, !tbaa !0
  br label %for.cond292.preheader

for.cond292.preheader:                            ; preds = %for.body261, %if.then271, %land.lhs.true263
  %112 = phi i32* [ %109, %if.then271 ], [ %100, %land.lhs.true263 ], [ %100, %for.body261 ]
  %arrayidx295470 = getelementptr inbounds i32* %112, i64 %indvars.iv494
  %113 = load i32* %arrayidx295470, align 4, !tbaa !0
  %cmp296471 = icmp sgt i32 %113, 0
  br i1 %cmp296471, label %for.body298, label %for.end328

for.body298:                                      ; preds = %for.cond292.preheader, %land.end324
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.end324 ], [ 0, %for.cond292.preheader ]
  %bOK1.2473 = phi i32 [ %land.ext325, %land.end324 ], [ 1, %for.cond292.preheader ]
  call void @llvm.lifetime.start(i64 128, i8* %99) #3
  %114 = trunc i64 %indvars.iv to i32
  %call301 = call i32 (i8*, i8*, ...)* @sprintf(i8* %99, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i32 %114) #4
  %tobool302 = icmp eq i32 %bOK1.2473, 0
  br i1 %tobool302, label %land.end324, label %land.rhs303

land.rhs303:                                      ; preds = %for.body298
  br i1 %tobool, label %cond.true305, label %cond.false313

cond.true305:                                     ; preds = %land.rhs303
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !tbaa !3
  %116 = load float*** %block273, align 8, !tbaa !3
  %arrayidx309 = getelementptr inbounds float** %116, i64 %indvars.iv494
  %117 = load float** %arrayidx309, align 8, !tbaa !3
  %arrayidx310 = getelementptr inbounds float* %117, i64 %indvars.iv
  %118 = bitcast float* %arrayidx310 to i8*
  %call312 = call i32 %115(i8* %118, i32 1, i32 0, i8* %99, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 329) #4
  br label %cond.end321

cond.false313:                                    ; preds = %land.rhs303
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !tbaa !3
  %120 = load float*** %block273, align 8, !tbaa !3
  %arrayidx317 = getelementptr inbounds float** %120, i64 %indvars.iv494
  %121 = load float** %arrayidx317, align 8, !tbaa !3
  %arrayidx318 = getelementptr inbounds float* %121, i64 %indvars.iv
  %122 = bitcast float* %arrayidx318 to i8*
  %call320 = call i32 %119(i8* %122, i32 1, i32 0, i8* %99, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 329) #4
  br label %cond.end321

cond.end321:                                      ; preds = %cond.false313, %cond.true305
  %cond322 = phi i32 [ %call312, %cond.true305 ], [ %call320, %cond.false313 ]
  %tobool323 = icmp ne i32 %cond322, 0
  br label %land.end324

land.end324:                                      ; preds = %for.body298, %cond.end321
  %123 = phi i1 [ false, %for.body298 ], [ %tobool323, %cond.end321 ]
  %land.ext325 = zext i1 %123 to i32
  call void @llvm.lifetime.end(i64 128, i8* %99) #3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %124 = load i32** %nr265, align 8, !tbaa !3
  %arrayidx295 = getelementptr inbounds i32* %124, i64 %indvars.iv494
  %125 = load i32* %arrayidx295, align 4, !tbaa !0
  %126 = trunc i64 %indvars.iv.next to i32
  %cmp296 = icmp slt i32 %126, %125
  br i1 %cmp296, label %for.body298, label %for.end328

for.end328:                                       ; preds = %land.end324, %for.cond292.preheader
  %bOK1.2.lcssa = phi i1 [ true, %for.cond292.preheader ], [ %123, %land.end324 ]
  %not.tobool329 = icmp ne i32 %land.ext333476, 0
  %.tobool331 = and i1 %bOK1.2.lcssa, %not.tobool329
  %land.ext333 = zext i1 %.tobool331 to i32
  %indvars.iv.next495 = add i64 %indvars.iv494, 1
  %127 = load i32* %nblock, align 4, !tbaa !0
  %128 = trunc i64 %indvars.iv.next495 to i32
  %cmp259 = icmp slt i32 %128, %127
  br i1 %cmp259, label %for.body261, label %for.cond257.for.end336_crit_edge

for.cond257.for.end336_crit_edge:                 ; preds = %for.end328
  store i32 %land.ext333, i32* %bOK, align 4, !tbaa !0
  br label %for.end336

for.end336:                                       ; preds = %for.cond257.preheader.for.end336_crit_edge, %for.cond257.for.end336_crit_edge
  %129 = phi i32 [ %.pre511, %for.cond257.preheader.for.end336_crit_edge ], [ %land.ext333, %for.cond257.for.end336_crit_edge ]
  %tobool337 = icmp eq i32 %129, 0
  br i1 %tobool337, label %if.then338, label %return

if.then338:                                       ; preds = %for.end336
  br i1 %tobool, label %if.then340, label %if.else

if.then340:                                       ; preds = %if.then338
  %130 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %131 = load i32* @framenr, align 4, !tbaa !0
  %sub341 = add nsw i32 %131, -1
  %call342 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([51 x i8]* @.str26, i64 0, i64 0), i32 %sub341) #4
  %132 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %133 = load i32* @framenr, align 4, !tbaa !0
  %t343 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0
  %134 = load float* %t343, align 4, !tbaa !4
  %conv344 = fpext float %134 to double
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([52 x i8]* @.str27, i64 0, i64 0), i32 %133, double %conv344) #4
  br label %return

if.else:                                          ; preds = %if.then338
  call void (i32, i8*, ...)* @fatal_error(i32 -1, i8* getelementptr inbounds ([25 x i8]* @.str28, i64 0, i64 0)) #4
  br label %return

return:                                           ; preds = %for.end336, %if.then340, %if.else, %if.then8, %if.then13, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.then13 ], [ 0, %if.then8 ], [ 0, %if.else ], [ 0, %if.then340 ], [ 1, %for.end336 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i8* @gmx_fio_getname(i32) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #1

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #1

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: optsize
declare void @trim(i8*) #1

; Function Attrs: optsize
declare i8* @gmx_strdup(i8*) #1

; Function Attrs: optsize
declare %struct.XDR* @gmx_fio_getxdr(i32) #1

; Function Attrs: nounwind optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #2

; Function Attrs: nounwind optsize
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

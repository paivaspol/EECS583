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
  tail call void @llvm.dbg.value(metadata !{%struct.t_enxframe* %fr}, i64 0, metadata !115), !dbg !335
  %e_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 9, !dbg !336
  %0 = load i32* %e_alloc, align 4, !dbg !336, !tbaa !337
  %tobool = icmp eq i32 %0, 0, !dbg !336
  br i1 %tobool, label %if.end, label %if.then, !dbg !336

if.then:                                          ; preds = %entry
  %ener = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12, !dbg !340
  %1 = load %struct.t_energy** %ener, align 8, !dbg !340, !tbaa !341
  %2 = bitcast %struct.t_energy* %1 to i8*, !dbg !340
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 45, i8* %2) #5, !dbg !340
  br label %if.end, !dbg !340

if.end:                                           ; preds = %entry, %if.then
  %d_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 10, !dbg !342
  %3 = load i32* %d_alloc, align 4, !dbg !342, !tbaa !337
  %tobool1 = icmp eq i32 %3, 0, !dbg !342
  br i1 %tobool1, label %for.cond.preheader, label %if.then2, !dbg !342

if.then2:                                         ; preds = %if.end
  %rav = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13, !dbg !343
  %4 = load float** %rav, align 8, !dbg !343, !tbaa !341
  %5 = bitcast float* %4 to i8*, !dbg !343
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 47, i8* %5) #5, !dbg !343
  %rt = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14, !dbg !345
  %6 = load float** %rt, align 8, !dbg !345, !tbaa !341
  %7 = bitcast float* %6 to i8*, !dbg !345
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 48, i8* %7) #5, !dbg !345
  br label %for.cond.preheader, !dbg !346

for.cond.preheader:                               ; preds = %if.end, %if.then2
  %nblock = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !347
  %8 = load i32* %nblock, align 4, !dbg !347, !tbaa !337
  %cmp16 = icmp sgt i32 %8, 0, !dbg !347
  %block = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15, !dbg !349
  br i1 %cmp16, label %for.body, label %for.end, !dbg !347

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %9 = load float*** %block, align 8, !dbg !349, !tbaa !341
  %arrayidx = getelementptr inbounds float** %9, i64 %indvars.iv, !dbg !349
  %10 = load float** %arrayidx, align 8, !dbg !349, !tbaa !341
  %11 = bitcast float* %10 to i8*, !dbg !349
  tail call void @save_free(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 51, i8* %11) #5, !dbg !349
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !347
  %12 = load i32* %nblock, align 4, !dbg !347, !tbaa !337
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !347
  %cmp = icmp slt i32 %13, %12, !dbg !347
  br i1 %cmp, label %for.body, label %for.end, !dbg !347

for.end:                                          ; preds = %for.cond.preheader, %for.body
  %14 = load float*** %block, align 8, !dbg !350, !tbaa !341
  %15 = bitcast float** %14 to i8*, !dbg !350
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 52, i8* %15) #5, !dbg !350
  %b_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11, !dbg !351
  %16 = load i32** %b_alloc, align 8, !dbg !351, !tbaa !341
  %17 = bitcast i32* %16 to i8*, !dbg !351
  tail call void @save_free(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 53, i8* %17) #5, !dbg !351
  %nr = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !352
  %18 = load i32** %nr, align 8, !dbg !352, !tbaa !341
  %19 = bitcast i32* %18 to i8*, !dbg !352
  tail call void @save_free(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 54, i8* %19) #5, !dbg !352
  ret void, !dbg !353
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @do_enxnms(i32 %fp, i32* %nre, i8*** nocapture %nms) #0 {
entry:
  %line.i = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !125), !dbg !354
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !126), !dbg !354
  call void @llvm.dbg.value(metadata !{i8*** %nms}, i64 0, metadata !127), !dbg !354
  %call = call i32 @gmx_fio_getread(i32 %fp) #5, !dbg !355
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !128), !dbg !355
  %call1 = call i32 @gmx_fio_getftp(i32 %fp) #5, !dbg !356
  %cmp = icmp eq i32 %call1, 9, !dbg !356
  br i1 %cmp, label %if.then, label %if.else, !dbg !356

if.then:                                          ; preds = %entry
  call void @gmx_fio_select(i32 %fp) #5, !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !359) #4, !dbg !361
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !362) #4, !dbg !361
  call void @llvm.dbg.value(metadata !{i8*** %nms}, i64 0, metadata !363) #4, !dbg !361
  %call.i = call i32 @gmx_fio_getread(i32 %fp) #5, !dbg !364
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !365) #4, !dbg !364
  %call1.i = call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #5, !dbg !366
  call void @llvm.dbg.value(metadata !{%struct.XDR* %call1.i}, i64 0, metadata !367) #4, !dbg !366
  %0 = load i8*** %nms, align 8, !dbg !368, !tbaa !341
  call void @llvm.dbg.value(metadata !{i8** %0}, i64 0, metadata !369) #4, !dbg !368
  %call2.i = call i32 @xdr_int(%struct.XDR* %call1.i, i32* %nre) #5, !dbg !370
  %tobool.i = icmp eq i32 %call2.i, 0, !dbg !370
  br i1 %tobool.i, label %if.then.i, label %if.end.i, !dbg !370

if.then.i:                                        ; preds = %if.then
  store i32 0, i32* %nre, align 4, !dbg !371, !tbaa !337
  br label %if.end6, !dbg !373

if.end.i:                                         ; preds = %if.then
  %cmp.i = icmp eq i8** %0, null, !dbg !374
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i, !dbg !374

if.then3.i:                                       ; preds = %if.end.i
  %1 = load i32* %nre, align 4, !dbg !375, !tbaa !337
  %call4.i = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 100, i32 %1, i32 8) #5, !dbg !375
  %2 = bitcast i8* %call4.i to i8**, !dbg !375
  call void @llvm.dbg.value(metadata !{i8** %2}, i64 0, metadata !369) #4, !dbg !375
  br label %if.end5.i, !dbg !377

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i
  %NM.0.i = phi i8** [ %2, %if.then3.i ], [ %0, %if.end.i ]
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !378) #4, !dbg !379
  %3 = load i32* %nre, align 4, !dbg !379, !tbaa !337
  %cmp634.i = icmp sgt i32 %3, 0, !dbg !379
  br i1 %cmp634.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !379

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %tobool7.i = icmp eq i32 %call.i, 0, !dbg !381
  br label %for.body.i, !dbg !379

for.body.i:                                       ; preds = %if.end14.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end14.i ]
  %arrayidx16.pre.i = getelementptr inbounds i8** %NM.0.i, i64 %indvars.iv.i, !dbg !383
  br i1 %tobool7.i, label %if.end14.i, label %land.lhs.true.i, !dbg !381

land.lhs.true.i:                                  ; preds = %for.body.i
  %4 = load i8** %arrayidx16.pre.i, align 8, !dbg !381, !tbaa !341
  %tobool8.i = icmp eq i8* %4, null, !dbg !381
  br i1 %tobool8.i, label %if.end14.i, label %if.then9.i, !dbg !381

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str44, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 104, i8* %4) #5, !dbg !384
  store i8* null, i8** %arrayidx16.pre.i, align 8, !dbg !386, !tbaa !341
  br label %if.end14.i, !dbg !387

if.end14.i:                                       ; preds = %if.then9.i, %land.lhs.true.i, %for.body.i
  %call17.i = call i32 @xdr_string(%struct.XDR* %call1.i, i8** %arrayidx16.pre.i, i32 4096) #5, !dbg !383
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1, !dbg !379
  %5 = load i32* %nre, align 4, !dbg !379, !tbaa !337
  %6 = trunc i64 %indvars.iv.next.i to i32, !dbg !379
  %cmp6.i = icmp slt i32 %6, %5, !dbg !379
  br i1 %cmp6.i, label %for.body.i, label %for.end.i, !dbg !379

for.end.i:                                        ; preds = %if.end14.i, %if.end5.i
  store i8** %NM.0.i, i8*** %nms, align 8, !dbg !388, !tbaa !341
  br label %if.end6, !dbg !388

if.else:                                          ; preds = %entry
  %tobool = icmp eq i32 %call, 0, !dbg !389
  %call3 = call %struct._IO_FILE* @gmx_fio_getfp(i32 %fp) #5, !dbg !390
  br i1 %tobool, label %if.else4, label %if.then2, !dbg !389

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call3}, i64 0, metadata !391) #4, !dbg !392
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !393) #4, !dbg !392
  call void @llvm.dbg.value(metadata !{i8*** %nms}, i64 0, metadata !394) #4, !dbg !392
  %7 = getelementptr inbounds [256 x i8]* %line.i, i64 0, i64 0, !dbg !395
  call void @llvm.lifetime.start(i64 256, i8* %7) #4, !dbg !395
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %line.i}, metadata !268) #4, !dbg !395
  %call.i14 = call i8* @fgets2(i8* %7, i32 255, %struct._IO_FILE* %call3) #5, !dbg !396
  %call2.i15 = call i32 (i8*, i8*, ...)* @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8]* @.str41, i64 0, i64 0), i32* %nre) #5, !dbg !397
  %cmp.i16 = icmp eq i32 %call2.i15, 0, !dbg !397
  br i1 %cmp.i16, label %if.then.i17, label %if.end.i18, !dbg !397

if.then.i17:                                      ; preds = %if.then2
  store i32 0, i32* %nre, align 4, !dbg !398, !tbaa !337
  br label %if.end6, !dbg !400

if.end.i18:                                       ; preds = %if.then2
  %8 = load i32* %nre, align 4, !dbg !401, !tbaa !337
  %call3.i = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str42, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 76, i32 %8, i32 8) #5, !dbg !401
  %9 = bitcast i8* %call3.i to i8**, !dbg !401
  store i8** %9, i8*** %nms, align 8, !dbg !401, !tbaa !341
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !402) #4, !dbg !403
  %10 = load i32* %nre, align 4, !dbg !403, !tbaa !337
  %cmp416.i = icmp sgt i32 %10, 0, !dbg !403
  br i1 %cmp416.i, label %for.body.i21, label %if.end6, !dbg !403

for.body.i21:                                     ; preds = %if.end.i18, %for.body.i21
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i20, %for.body.i21 ], [ 0, %if.end.i18 ]
  %call6.i = call i8* @fgets2(i8* %7, i32 255, %struct._IO_FILE* %call3) #5, !dbg !405
  call void @trim(i8* %7) #5, !dbg !407
  %call9.i = call noalias i8* @strdup(i8* %7) #5, !dbg !408
  %11 = load i8*** %nms, align 8, !dbg !408, !tbaa !341
  %arrayidx.i = getelementptr inbounds i8** %11, i64 %indvars.iv.i19, !dbg !408
  store i8* %call9.i, i8** %arrayidx.i, align 8, !dbg !408, !tbaa !341
  %indvars.iv.next.i20 = add i64 %indvars.iv.i19, 1, !dbg !403
  %12 = load i32* %nre, align 4, !dbg !403, !tbaa !337
  %13 = trunc i64 %indvars.iv.next.i20 to i32, !dbg !403
  %cmp4.i = icmp slt i32 %13, %12, !dbg !403
  br i1 %cmp4.i, label %for.body.i21, label %if.end6, !dbg !403

if.else4:                                         ; preds = %if.else
  %14 = load i32* %nre, align 4, !dbg !409, !tbaa !337
  %15 = load i8*** %nms, align 8, !dbg !409, !tbaa !341
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call3}, i64 0, metadata !410) #4, !dbg !411
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !412) #4, !dbg !411
  call void @llvm.dbg.value(metadata !{i8** %15}, i64 0, metadata !413) #4, !dbg !411
  %call.i22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call3, i8* getelementptr inbounds ([4 x i8]* @.str39, i64 0, i64 0), i32 %14) #5, !dbg !414
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !415) #4, !dbg !416
  %cmp6.i23 = icmp sgt i32 %14, 0, !dbg !416
  br i1 %cmp6.i23, label %for.body.i28, label %if.end6, !dbg !416

for.body.i28:                                     ; preds = %if.else4, %for.body.i28
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i27, %for.body.i28 ], [ 0, %if.else4 ]
  %arrayidx.i25 = getelementptr inbounds i8** %15, i64 %indvars.iv.i24, !dbg !418
  %16 = load i8** %arrayidx.i25, align 8, !dbg !418, !tbaa !341
  %call1.i26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call3, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0), i8* %16) #5, !dbg !418
  %indvars.iv.next.i27 = add i64 %indvars.iv.i24, 1, !dbg !416
  %lftr.wideiv = trunc i64 %indvars.iv.next.i27 to i32, !dbg !416
  %exitcond = icmp eq i32 %lftr.wideiv, %14, !dbg !416
  br i1 %exitcond, label %if.end6, label %for.body.i28, !dbg !416

if.end6:                                          ; preds = %for.body.i21, %for.body.i28, %if.end.i18, %if.then.i17, %if.else4, %for.end.i, %if.then.i
  ret void, !dbg !419
}

; Function Attrs: optsize
declare i32 @gmx_fio_getread(i32) #2

; Function Attrs: optsize
declare i32 @gmx_fio_getftp(i32) #2

; Function Attrs: optsize
declare void @gmx_fio_select(i32) #2

; Function Attrs: optsize
declare %struct._IO_FILE* @gmx_fio_getfp(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @close_enx(i32 %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !133), !dbg !420
  tail call void @gmx_fio_close(i32 %fp) #5, !dbg !421
  ret void, !dbg !422
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @open_enx(i8* %fn, i8* %mode) #0 {
entry:
  %dum.i = alloca i8, align 1
  %nre = alloca i32, align 4
  %nm = alloca i8**, align 8
  %bDum = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !138), !dbg !423
  call void @llvm.dbg.value(metadata !{i8* %mode}, i64 0, metadata !139), !dbg !423
  call void @llvm.dbg.declare(metadata !{i32* %nre}, metadata !141), !dbg !424
  call void @llvm.dbg.declare(metadata !{i8*** %nm}, metadata !143), !dbg !425
  call void @llvm.dbg.value(metadata !426, i64 0, metadata !143), !dbg !425
  store i8** null, i8*** %nm, align 8, !dbg !425, !tbaa !341
  call void @llvm.dbg.declare(metadata !{i32* %bDum}, metadata !145), !dbg !427
  call void @llvm.dbg.value(metadata !428, i64 0, metadata !145), !dbg !427
  store i32 1, i32* %bDum, align 4, !dbg !427, !tbaa !337
  %0 = load i8* %mode, align 1, !dbg !429, !tbaa !338
  %cmp = icmp eq i8 %0, 114, !dbg !429
  %call = call i32 @gmx_fio_open(i8* %fn, i8* %mode) #5, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !140), !dbg !430
  br i1 %cmp, label %if.then, label %if.end76, !dbg !429

if.then:                                          ; preds = %entry
  call void @gmx_fio_select(i32 %call) #5, !dbg !432
  call void @gmx_fio_setprecision(i32 %call, i32 0) #5, !dbg !433
  call void @do_enxnms(i32 %call, i32* %nre, i8*** %nm) #6, !dbg !434
  %call2 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 206, i32 1, i32 96) #5, !dbg !435
  %1 = bitcast i8* %call2 to %struct.t_enxframe*, !dbg !435
  call void @llvm.dbg.value(metadata !{%struct.t_enxframe* %1}, i64 0, metadata !144), !dbg !435
  %call3 = call fastcc i32 @do_eheader(i32 %call, %struct.t_enxframe* %1, i32* %bDum) #6, !dbg !436
  %e_size = getelementptr inbounds i8* %call2, i64 32, !dbg !437
  %2 = bitcast i8* %e_size to i32*, !dbg !437
  %3 = load i32* %2, align 4, !dbg !437, !tbaa !337
  %tobool = icmp eq i32 %3, 0, !dbg !437
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !437

land.lhs.true:                                    ; preds = %if.then
  %nre4 = getelementptr inbounds i8* %call2, i64 8, !dbg !437
  %4 = bitcast i8* %nre4 to i32*, !dbg !437
  %5 = load i32* %4, align 4, !dbg !437, !tbaa !337
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !141), !dbg !437
  %6 = load i32* %nre, align 4, !dbg !437, !tbaa !337
  %cmp5 = icmp eq i32 %5, %6, !dbg !437
  br i1 %cmp5, label %land.lhs.true7, label %lor.lhs.false, !dbg !437

land.lhs.true7:                                   ; preds = %land.lhs.true
  %mul = shl nsw i32 %5, 2, !dbg !437
  %conv8 = sext i32 %mul to i64, !dbg !437
  %mul9 = shl nsw i64 %conv8, 2, !dbg !437
  %conv11 = sext i32 %3 to i64, !dbg !437
  %cmp12 = icmp eq i64 %mul9, %conv11, !dbg !437
  br i1 %cmp12, label %if.then23, label %lor.lhs.false, !dbg !437

lor.lhs.false:                                    ; preds = %if.then, %land.lhs.true7, %land.lhs.true
  %d_size = getelementptr inbounds i8* %call2, i64 36, !dbg !437
  %7 = bitcast i8* %d_size to i32*, !dbg !437
  %8 = load i32* %7, align 4, !dbg !437, !tbaa !337
  %tobool14 = icmp eq i32 %8, 0, !dbg !437
  br i1 %tobool14, label %if.else, label %land.lhs.true15, !dbg !437

land.lhs.true15:                                  ; preds = %lor.lhs.false
  %ndisre = getelementptr inbounds i8* %call2, i64 12, !dbg !437
  %9 = bitcast i8* %ndisre to i32*, !dbg !437
  %10 = load i32* %9, align 4, !dbg !437, !tbaa !337
  %conv16 = sext i32 %10 to i64, !dbg !437
  %mul18 = shl nsw i64 %conv16, 3, !dbg !437
  %add113 = or i64 %mul18, 4, !dbg !437
  %conv20 = sext i32 %8 to i64, !dbg !437
  %cmp21 = icmp eq i64 %add113, %conv20, !dbg !437
  br i1 %cmp21, label %if.then23, label %if.else, !dbg !437

if.then23:                                        ; preds = %land.lhs.true15, %land.lhs.true7
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !438, !tbaa !341
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([43 x i8]* @.str9, i64 0, i64 0), i8* %fn) #5, !dbg !438
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !142), !dbg !440
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !141), !dbg !440
  %12 = load i32* %nre, align 4, !dbg !440, !tbaa !337
  %cmp25116 = icmp sgt i32 %12, 0, !dbg !440
  call void @llvm.dbg.value(metadata !{i8*** %nm}, i64 0, metadata !143), !dbg !442
  %13 = load i8*** %nm, align 8, !dbg !442, !tbaa !341
  br i1 %cmp25116, label %for.body, label %for.end, !dbg !440

for.body:                                         ; preds = %if.then23, %for.body
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.body ], [ 0, %if.then23 ]
  call void @llvm.dbg.value(metadata !{i8*** %nm}, i64 0, metadata !143), !dbg !442
  %arrayidx27 = getelementptr inbounds i8** %13, i64 %indvars.iv118, !dbg !442
  %14 = load i8** %arrayidx27, align 8, !dbg !442, !tbaa !341
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 216, i8* %14) #5, !dbg !442
  %indvars.iv.next119 = add i64 %indvars.iv118, 1, !dbg !440
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !141), !dbg !440
  %15 = load i32* %nre, align 4, !dbg !440, !tbaa !337
  %16 = trunc i64 %indvars.iv.next119 to i32, !dbg !440
  %cmp25 = icmp slt i32 %16, %15, !dbg !440
  br i1 %cmp25, label %for.body, label %for.end, !dbg !440

for.end:                                          ; preds = %if.then23, %for.body
  call void @llvm.dbg.value(metadata !{i8*** %nm}, i64 0, metadata !143), !dbg !443
  %17 = bitcast i8** %13 to i8*, !dbg !443
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 217, i8* %17) #5, !dbg !443
  br label %if.end73, !dbg !444

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true15
  call void @gmx_fio_rewind(i32 %call) #5, !dbg !445
  call void @gmx_fio_select(i32 %call) #5, !dbg !447
  call void @gmx_fio_setprecision(i32 %call, i32 1) #5, !dbg !448
  call void @do_enxnms(i32 %call, i32* %nre, i8*** %nm) #6, !dbg !449
  %call28 = call fastcc i32 @do_eheader(i32 %call, %struct.t_enxframe* %1, i32* %bDum) #6, !dbg !450
  %18 = load i32* %2, align 4, !dbg !451, !tbaa !337
  %tobool30 = icmp eq i32 %18, 0, !dbg !451
  br i1 %tobool30, label %lor.lhs.false43, label %land.lhs.true31, !dbg !451

land.lhs.true31:                                  ; preds = %if.else
  %nre32 = getelementptr inbounds i8* %call2, i64 8, !dbg !451
  %19 = bitcast i8* %nre32 to i32*, !dbg !451
  %20 = load i32* %19, align 4, !dbg !451, !tbaa !337
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !141), !dbg !451
  %21 = load i32* %nre, align 4, !dbg !451, !tbaa !337
  %cmp33 = icmp eq i32 %20, %21, !dbg !451
  br i1 %cmp33, label %land.lhs.true35, label %lor.lhs.false43, !dbg !451

land.lhs.true35:                                  ; preds = %land.lhs.true31
  %mul36 = shl nsw i32 %20, 2, !dbg !451
  %conv37 = sext i32 %mul36 to i64, !dbg !451
  %mul38 = shl nsw i64 %conv37, 3, !dbg !451
  %conv40 = sext i32 %18 to i64, !dbg !451
  %cmp41 = icmp eq i64 %mul38, %conv40, !dbg !451
  br i1 %cmp41, label %if.then56, label %lor.lhs.false43, !dbg !451

lor.lhs.false43:                                  ; preds = %if.else, %land.lhs.true35, %land.lhs.true31
  %22 = load i32* %7, align 4, !dbg !451, !tbaa !337
  %tobool45 = icmp eq i32 %22, 0, !dbg !451
  br i1 %tobool45, label %if.else58, label %land.lhs.true46, !dbg !451

land.lhs.true46:                                  ; preds = %lor.lhs.false43
  %ndisre47 = getelementptr inbounds i8* %call2, i64 12, !dbg !451
  %23 = bitcast i8* %ndisre47 to i32*, !dbg !451
  %24 = load i32* %23, align 4, !dbg !451, !tbaa !337
  %conv48 = sext i32 %24 to i64, !dbg !451
  %mul50 = shl nsw i64 %conv48, 4, !dbg !451
  %add51112 = or i64 %mul50, 4, !dbg !451
  %conv53 = sext i32 %22 to i64, !dbg !451
  %cmp54 = icmp eq i64 %add51112, %conv53, !dbg !451
  br i1 %cmp54, label %if.then56, label %if.else58, !dbg !451

if.then56:                                        ; preds = %land.lhs.true46, %land.lhs.true35
  %25 = load %struct._IO_FILE** @stderr, align 8, !dbg !452, !tbaa !341
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([43 x i8]* @.str12, i64 0, i64 0), i8* %fn) #5, !dbg !452
  br label %for.cond64.preheader, !dbg !452

if.else58:                                        ; preds = %lor.lhs.false43, %land.lhs.true46
  call void @llvm.lifetime.start(i64 1, i8* %dum.i) #4, !dbg !453
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !456) #4, !dbg !453
  call void @llvm.dbg.declare(metadata !{i8* %dum.i}, metadata !239) #4, !dbg !457
  %call.i = call %struct._IO_FILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0)) #5, !dbg !458
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call.i}, i64 0, metadata !459) #4, !dbg !458
  %call1.i = call i64 @fread(i8* %dum.i, i64 1, i64 1, %struct._IO_FILE* %call.i) #5, !dbg !460
  %call2.i = call i32 @feof(%struct._IO_FILE* %call.i) #5, !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %call2.i}, i64 0, metadata !462) #4, !dbg !461
  call void @ffclose(%struct._IO_FILE* %call.i) #5, !dbg !463
  call void @llvm.lifetime.end(i64 1, i8* %dum.i) #4, !dbg !464
  %tobool60 = icmp eq i32 %call2.i, 0, !dbg !454
  br i1 %tobool60, label %if.else62, label %if.then61, !dbg !454

if.then61:                                        ; preds = %if.else58
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str13, i64 0, i64 0), i8* %fn) #5, !dbg !465
  br label %for.cond64.preheader, !dbg !465

if.else62:                                        ; preds = %if.else58
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str14, i64 0, i64 0), i8* %fn) #5, !dbg !466
  br label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %if.then61, %if.else62, %if.then56
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !141), !dbg !467
  %26 = load i32* %nre, align 4, !dbg !467, !tbaa !337
  %cmp65114 = icmp sgt i32 %26, 0, !dbg !467
  call void @llvm.dbg.value(metadata !{i8*** %nm}, i64 0, metadata !143), !dbg !469
  %27 = load i8*** %nm, align 8, !dbg !469, !tbaa !341
  br i1 %cmp65114, label %for.body67, label %for.end72, !dbg !467

for.body67:                                       ; preds = %for.cond64.preheader, %for.body67
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body67 ], [ 0, %for.cond64.preheader ]
  call void @llvm.dbg.value(metadata !{i8*** %nm}, i64 0, metadata !143), !dbg !469
  %arrayidx69 = getelementptr inbounds i8** %27, i64 %indvars.iv, !dbg !469
  %28 = load i8** %arrayidx69, align 8, !dbg !469, !tbaa !341
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 238, i8* %28) #5, !dbg !469
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !467
  call void @llvm.dbg.value(metadata !{i32* %nre}, i64 0, metadata !141), !dbg !467
  %29 = load i32* %nre, align 4, !dbg !467, !tbaa !337
  %30 = trunc i64 %indvars.iv.next to i32, !dbg !467
  %cmp65 = icmp slt i32 %30, %29, !dbg !467
  br i1 %cmp65, label %for.body67, label %for.end72, !dbg !467

for.end72:                                        ; preds = %for.cond64.preheader, %for.body67
  call void @llvm.dbg.value(metadata !{i8*** %nm}, i64 0, metadata !143), !dbg !470
  %31 = bitcast i8** %27 to i8*, !dbg !470
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 239, i8* %31) #5, !dbg !470
  br label %if.end73

if.end73:                                         ; preds = %for.end72, %for.end
  call void @free_enxframe(%struct.t_enxframe* %1) #6, !dbg !471
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 242, i8* %call2) #5, !dbg !472
  call void @gmx_fio_rewind(i32 %call) #5, !dbg !473
  br label %if.end76, !dbg !474

if.end76:                                         ; preds = %entry, %if.end73
  store i32 0, i32* @framenr, align 4, !dbg !475, !tbaa !337
  ret i32 %call, !dbg !476
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: optsize
declare void @gmx_fio_setprecision(i32, i32) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_eheader(i32 %fp, %struct.t_enxframe* %fr, i32* nocapture %bOK) #0 {
entry:
  %dum = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !245), !dbg !477
  call void @llvm.dbg.value(metadata !{%struct.t_enxframe* %fr}, i64 0, metadata !246), !dbg !477
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !247), !dbg !477
  call void @llvm.dbg.declare(metadata !{i32* %dum}, metadata !250), !dbg !478
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !250), !dbg !478
  store i32 0, i32* %dum, align 4, !dbg !478, !tbaa !337
  %call = call i32 @gmx_fio_getread(i32 %fp) #5, !dbg !479
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !251), !dbg !479
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !252), !dbg !480
  store i32 1, i32* %bOK, align 4, !dbg !481, !tbaa !337
  %tobool = icmp ne i32 %call, 0, !dbg !482
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !482

cond.true:                                        ; preds = %entry
  %0 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !482, !tbaa !341
  %1 = bitcast %struct.t_enxframe* %fr to i8*, !dbg !482
  %call1 = call i32 %0(i8* %1, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 119) #5, !dbg !482
  %tobool2 = icmp eq i32 %call1, 0, !dbg !482
  br i1 %tobool2, label %return, label %cond.true7, !dbg !482

cond.false:                                       ; preds = %entry
  %2 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !482, !tbaa !341
  %3 = bitcast %struct.t_enxframe* %fr to i8*, !dbg !482
  %call4 = call i32 %2(i8* %3, i32 1, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str30, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 119) #5, !dbg !482
  %tobool5 = icmp eq i32 %call4, 0, !dbg !482
  br i1 %tobool5, label %return, label %cond.false10, !dbg !482

cond.true7:                                       ; preds = %cond.true
  %4 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !483, !tbaa !341
  %step = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1, !dbg !483
  %5 = bitcast i32* %step to i8*, !dbg !483
  %call8 = call i32 %4(i8* %5, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 120) #5, !dbg !483
  %tobool9 = icmp eq i32 %call8, 0, !dbg !483
  br i1 %tobool9, label %if.end15.thread206, label %cond.true17, !dbg !483

if.end15.thread206:                               ; preds = %cond.true7
  store i32 0, i32* %bOK, align 4, !dbg !483, !tbaa !337
  br label %cond.true17, !dbg !484

cond.false10:                                     ; preds = %cond.false
  %6 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !483, !tbaa !341
  %step11 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1, !dbg !483
  %7 = bitcast i32* %step11 to i8*, !dbg !483
  %call12 = call i32 %6(i8* %7, i32 1, i32 1, i8* getelementptr inbounds ([9 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 120) #5, !dbg !483
  %tobool13 = icmp eq i32 %call12, 0, !dbg !483
  br i1 %tobool13, label %if.end15, label %cond.false20, !dbg !483

if.end15:                                         ; preds = %cond.false10
  store i32 0, i32* %bOK, align 4, !dbg !483, !tbaa !337
  br label %cond.false20

cond.true17:                                      ; preds = %cond.true7, %if.end15.thread206
  %8 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !484, !tbaa !341
  %nre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2, !dbg !484
  %9 = bitcast i32* %nre to i8*, !dbg !484
  %call18 = call i32 %8(i8* %9, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 121) #5, !dbg !484
  %tobool19 = icmp eq i32 %call18, 0, !dbg !484
  br i1 %tobool19, label %if.then24, label %if.end25, !dbg !484

cond.false20:                                     ; preds = %cond.false10, %if.end15
  %10 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !484, !tbaa !341
  %nre21 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2, !dbg !484
  %11 = bitcast i32* %nre21 to i8*, !dbg !484
  %call22 = call i32 %10(i8* %11, i32 1, i32 1, i8* getelementptr inbounds ([8 x i8]* @.str32, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 121) #5, !dbg !484
  %tobool23 = icmp eq i32 %call22, 0, !dbg !484
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !484

if.then24:                                        ; preds = %cond.true17, %cond.false20
  store i32 0, i32* %bOK, align 4, !dbg !484, !tbaa !337
  br label %if.end25, !dbg !484

if.end25:                                         ; preds = %cond.true17, %cond.false20, %if.then24
  br i1 %tobool, label %cond.true27, label %cond.false30, !dbg !485

cond.true27:                                      ; preds = %if.end25
  %12 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !485, !tbaa !341
  %ndisre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !485
  %13 = bitcast i32* %ndisre to i8*, !dbg !485
  %call28 = call i32 %12(i8* %13, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 122) #5, !dbg !485
  %tobool29 = icmp eq i32 %call28, 0, !dbg !485
  br i1 %tobool29, label %if.end35.thread208, label %cond.true37, !dbg !485

if.end35.thread208:                               ; preds = %cond.true27
  store i32 0, i32* %bOK, align 4, !dbg !485, !tbaa !337
  br label %cond.true37, !dbg !486

cond.false30:                                     ; preds = %if.end25
  %14 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !485, !tbaa !341
  %ndisre31 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !485
  %15 = bitcast i32* %ndisre31 to i8*, !dbg !485
  %call32 = call i32 %14(i8* %15, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 122) #5, !dbg !485
  %tobool33 = icmp eq i32 %call32, 0, !dbg !485
  br i1 %tobool33, label %if.end35, label %cond.false40, !dbg !485

if.end35:                                         ; preds = %cond.false30
  store i32 0, i32* %bOK, align 4, !dbg !485, !tbaa !337
  br label %cond.false40

cond.true37:                                      ; preds = %cond.true27, %if.end35.thread208
  %16 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !486, !tbaa !341
  %nblock = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !486
  %17 = bitcast i32* %nblock to i8*, !dbg !486
  %call38 = call i32 %16(i8* %17, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 123) #5, !dbg !486
  %tobool39 = icmp eq i32 %call38, 0, !dbg !486
  br i1 %tobool39, label %if.then44, label %if.end45, !dbg !486

cond.false40:                                     ; preds = %cond.false30, %if.end35
  %18 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !486, !tbaa !341
  %nblock41 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !486
  %19 = bitcast i32* %nblock41 to i8*, !dbg !486
  %call42 = call i32 %18(i8* %19, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str34, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 123) #5, !dbg !486
  %tobool43 = icmp eq i32 %call42, 0, !dbg !486
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !486

if.then44:                                        ; preds = %cond.true37, %cond.false40
  store i32 0, i32* %bOK, align 4, !dbg !486, !tbaa !337
  br label %if.end45, !dbg !486

if.end45:                                         ; preds = %cond.true37, %cond.false40, %if.then44
  %nblock47 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !487
  %20 = load i32* %nblock47, align 4, !dbg !487, !tbaa !337
  br i1 %tobool, label %land.lhs.true, label %for.cond89.preheader, !dbg !487

for.cond89.preheader:                             ; preds = %if.end45, %if.end84
  %21 = phi i32 [ %42, %if.end84 ], [ %20, %if.end45 ]
  %nblock90 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !488
  %cmp91216 = icmp sgt i32 %21, 0, !dbg !488
  br i1 %cmp91216, label %for.body93.lr.ph, label %if.end112, !dbg !488

for.body93.lr.ph:                                 ; preds = %for.cond89.preheader
  %nr97 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !491
  br label %for.body93, !dbg !488

land.lhs.true:                                    ; preds = %if.end45
  %cmp = icmp sgt i32 %20, 70, !dbg !487
  br i1 %cmp, label %if.end51.thread212, label %land.lhs.true53, !dbg !487

if.end51.thread212:                               ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !252), !dbg !492
  store i32 1, i32* %nblock47, align 4, !dbg !494, !tbaa !337
  br label %land.lhs.true53, !dbg !495

land.lhs.true53:                                  ; preds = %land.lhs.true, %if.end51.thread212
  %22 = phi i32 [ 1, %if.end51.thread212 ], [ %20, %land.lhs.true ]
  %tempfix_nr.0210 = phi i32 [ %20, %if.end51.thread212 ], [ 0, %land.lhs.true ]
  %nr_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 8, !dbg !495
  %23 = load i32* %nr_alloc, align 4, !dbg !495, !tbaa !337
  %cmp55 = icmp sgt i32 %22, %23, !dbg !495
  br i1 %cmp55, label %if.then56, label %if.end84, !dbg !495

if.then56:                                        ; preds = %land.lhs.true53
  %nr = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !496
  %24 = load i32** %nr, align 8, !dbg !496, !tbaa !341
  %25 = bitcast i32* %24 to i8*, !dbg !496
  %mul = shl i32 %22, 2, !dbg !496
  %call59 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 130, i8* %25, i32 %mul) #5, !dbg !496
  %26 = bitcast i8* %call59 to i32*, !dbg !496
  store i32* %26, i32** %nr, align 8, !dbg !496, !tbaa !341
  %b_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11, !dbg !498
  %27 = load i32** %b_alloc, align 8, !dbg !498, !tbaa !341
  %28 = bitcast i32* %27 to i8*, !dbg !498
  %29 = load i32* %nblock47, align 4, !dbg !498, !tbaa !337
  %mul63 = shl i32 %29, 2, !dbg !498
  %call65 = call i8* @save_realloc(i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 131, i8* %28, i32 %mul63) #5, !dbg !498
  %30 = bitcast i8* %call65 to i32*, !dbg !498
  store i32* %30, i32** %b_alloc, align 8, !dbg !498, !tbaa !341
  %block67 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15, !dbg !499
  %31 = load float*** %block67, align 8, !dbg !499, !tbaa !341
  %32 = bitcast float** %31 to i8*, !dbg !499
  %33 = load i32* %nblock47, align 4, !dbg !499, !tbaa !337
  %mul70 = shl i32 %33, 3, !dbg !499
  %call72 = call i8* @save_realloc(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 132, i8* %32, i32 %mul70) #5, !dbg !499
  %34 = bitcast i8* %call72 to float**, !dbg !499
  store float** %34, float*** %block67, align 8, !dbg !499, !tbaa !341
  %35 = load i32* %nr_alloc, align 4, !dbg !500, !tbaa !337
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !249), !dbg !500
  %36 = load i32* %nblock47, align 4, !dbg !500, !tbaa !337
  %cmp76218 = icmp slt i32 %35, %36, !dbg !500
  br i1 %cmp76218, label %for.body.lr.ph, label %for.end, !dbg !500

for.body.lr.ph:                                   ; preds = %if.then56
  %37 = sext i32 %35 to i64
  br label %for.body, !dbg !500

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %38 = phi float** [ %34, %for.body.lr.ph ], [ %.pre, %for.body.for.body_crit_edge ]
  %indvars.iv221 = phi i64 [ %37, %for.body.lr.ph ], [ %indvars.iv.next222, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr inbounds float** %38, i64 %indvars.iv221, !dbg !502
  store float* null, float** %arrayidx, align 8, !dbg !502, !tbaa !341
  %39 = load i32** %b_alloc, align 8, !dbg !504, !tbaa !341
  %arrayidx81 = getelementptr inbounds i32* %39, i64 %indvars.iv221, !dbg !504
  store i32 0, i32* %arrayidx81, align 4, !dbg !504, !tbaa !337
  %indvars.iv.next222 = add i64 %indvars.iv221, 1, !dbg !500
  %40 = load i32* %nblock47, align 4, !dbg !500, !tbaa !337
  %41 = trunc i64 %indvars.iv.next222 to i32, !dbg !500
  %cmp76 = icmp slt i32 %41, %40, !dbg !500
  br i1 %cmp76, label %for.body.for.body_crit_edge, label %for.end, !dbg !500

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load float*** %block67, align 8, !dbg !502, !tbaa !341
  br label %for.body, !dbg !500

for.end:                                          ; preds = %for.body, %if.then56
  %.lcssa = phi i32 [ %36, %if.then56 ], [ %40, %for.body ]
  store i32 %.lcssa, i32* %nr_alloc, align 4, !dbg !505, !tbaa !337
  br label %if.end84, !dbg !506

if.end84:                                         ; preds = %for.end, %land.lhs.true53
  %42 = phi i32 [ %.lcssa, %for.end ], [ %22, %land.lhs.true53 ]
  %tobool85 = icmp eq i32 %tempfix_nr.0210, 0, !dbg !507
  br i1 %tobool85, label %for.cond89.preheader, label %if.then86, !dbg !507

if.then86:                                        ; preds = %if.end84
  %nr87 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !508
  %43 = load i32** %nr87, align 8, !dbg !508, !tbaa !341
  store i32 %tempfix_nr.0210, i32* %43, align 4, !dbg !508, !tbaa !337
  br label %if.end112, !dbg !508

for.body93:                                       ; preds = %for.body93.lr.ph, %for.inc109
  %indvars.iv = phi i64 [ 0, %for.body93.lr.ph ], [ %indvars.iv.next, %for.inc109 ]
  br i1 %tobool, label %cond.true95, label %cond.false101, !dbg !491

cond.true95:                                      ; preds = %for.body93
  %44 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !491, !tbaa !341
  %45 = load i32** %nr97, align 8, !dbg !491, !tbaa !341
  %arrayidx98 = getelementptr inbounds i32* %45, i64 %indvars.iv, !dbg !491
  %46 = bitcast i32* %arrayidx98 to i8*, !dbg !491
  %call99 = call i32 %44(i8* %46, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 143) #5, !dbg !491
  %tobool100 = icmp eq i32 %call99, 0, !dbg !491
  br i1 %tobool100, label %if.then107, label %for.inc109, !dbg !491

cond.false101:                                    ; preds = %for.body93
  %47 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !491, !tbaa !341
  %48 = load i32** %nr97, align 8, !dbg !491, !tbaa !341
  %arrayidx104 = getelementptr inbounds i32* %48, i64 %indvars.iv, !dbg !491
  %49 = bitcast i32* %arrayidx104 to i8*, !dbg !491
  %call105 = call i32 %47(i8* %49, i32 1, i32 1, i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 143) #5, !dbg !491
  %tobool106 = icmp eq i32 %call105, 0, !dbg !491
  br i1 %tobool106, label %if.then107, label %for.inc109, !dbg !491

if.then107:                                       ; preds = %cond.true95, %cond.false101
  store i32 0, i32* %bOK, align 4, !dbg !509, !tbaa !337
  br label %for.inc109, !dbg !509

for.inc109:                                       ; preds = %cond.true95, %cond.false101, %if.then107
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !488
  %50 = load i32* %nblock90, align 4, !dbg !488, !tbaa !337
  %51 = trunc i64 %indvars.iv.next to i32, !dbg !488
  %cmp91 = icmp slt i32 %51, %50, !dbg !488
  br i1 %cmp91, label %for.body93, label %if.end112, !dbg !488

if.end112:                                        ; preds = %for.cond89.preheader, %for.inc109, %if.then86
  br i1 %tobool, label %cond.true114, label %cond.false117, !dbg !510

cond.true114:                                     ; preds = %if.end112
  %52 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !510, !tbaa !341
  %e_size = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6, !dbg !510
  %53 = bitcast i32* %e_size to i8*, !dbg !510
  %call115 = call i32 %52(i8* %53, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 146) #5, !dbg !510
  %tobool116 = icmp eq i32 %call115, 0, !dbg !510
  br i1 %tobool116, label %if.end122.thread215, label %cond.true124, !dbg !510

if.end122.thread215:                              ; preds = %cond.true114
  store i32 0, i32* %bOK, align 4, !dbg !510, !tbaa !337
  br label %cond.true124, !dbg !511

cond.false117:                                    ; preds = %if.end112
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !510, !tbaa !341
  %e_size118 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6, !dbg !510
  %55 = bitcast i32* %e_size118 to i8*, !dbg !510
  %call119 = call i32 %54(i8* %55, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str36, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 146) #5, !dbg !510
  %tobool120 = icmp eq i32 %call119, 0, !dbg !510
  br i1 %tobool120, label %if.end122, label %cond.false127, !dbg !510

if.end122:                                        ; preds = %cond.false117
  store i32 0, i32* %bOK, align 4, !dbg !510, !tbaa !337
  br label %cond.false127

cond.true124:                                     ; preds = %cond.true114, %if.end122.thread215
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !511, !tbaa !341
  %d_size = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7, !dbg !511
  %57 = bitcast i32* %d_size to i8*, !dbg !511
  %call125 = call i32 %56(i8* %57, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 147) #5, !dbg !511
  %tobool126 = icmp eq i32 %call125, 0, !dbg !511
  br i1 %tobool126, label %if.then131, label %if.end132, !dbg !511

cond.false127:                                    ; preds = %cond.false117, %if.end122
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !511, !tbaa !341
  %d_size128 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7, !dbg !511
  %59 = bitcast i32* %d_size128 to i8*, !dbg !511
  %call129 = call i32 %58(i8* %59, i32 1, i32 1, i8* getelementptr inbounds ([11 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 147) #5, !dbg !511
  %tobool130 = icmp eq i32 %call129, 0, !dbg !511
  br i1 %tobool130, label %if.then131, label %if.end132, !dbg !511

if.then131:                                       ; preds = %cond.true124, %cond.false127
  store i32 0, i32* %bOK, align 4, !dbg !511, !tbaa !337
  br label %if.end132, !dbg !511

if.end132:                                        ; preds = %cond.true124, %cond.false127, %if.then131
  br i1 %tobool, label %cond.true134, label %cond.false137, !dbg !512

cond.true134:                                     ; preds = %if.end132
  %60 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !512, !tbaa !341
  %61 = bitcast i32* %dum to i8*, !dbg !512
  %call135 = call i32 %60(i8* %61, i32 1, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 149) #5, !dbg !512
  %tobool136 = icmp eq i32 %call135, 0, !dbg !512
  br i1 %tobool136, label %if.then140, label %if.end141, !dbg !512

cond.false137:                                    ; preds = %if.end132
  %62 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !512, !tbaa !341
  %63 = bitcast i32* %dum to i8*, !dbg !512
  %call138 = call i32 %62(i8* %63, i32 1, i32 1, i8* getelementptr inbounds ([4 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 149) #5, !dbg !512
  %tobool139 = icmp eq i32 %call138, 0, !dbg !512
  br i1 %tobool139, label %if.then140, label %if.end141, !dbg !512

if.then140:                                       ; preds = %cond.true134, %cond.false137
  store i32 0, i32* %bOK, align 4, !dbg !512, !tbaa !337
  br label %if.end141, !dbg !512

if.end141:                                        ; preds = %cond.false137, %cond.true134, %if.then140
  %64 = load i32* %bOK, align 4, !dbg !513, !tbaa !337
  br label %return, !dbg !513

return:                                           ; preds = %cond.false, %cond.true, %if.end141
  %retval.0 = phi i32 [ %64, %if.end141 ], [ 0, %cond.true ], [ 0, %cond.false ]
  ret i32 %retval.0, !dbg !514
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @gmx_fio_rewind(i32) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @do_enx(i32 %fp, %struct.t_enxframe* %fr) #0 {
entry:
  %bOK = alloca i32, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %buf = alloca [128 x i8], align 16
  %buf225 = alloca [128 x i8], align 16
  %buf299 = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata !{i32 %fp}, i64 0, metadata !150), !dbg !515
  call void @llvm.dbg.value(metadata !{%struct.t_enxframe* %fr}, i64 0, metadata !151), !dbg !515
  call void @llvm.dbg.declare(metadata !{i32* %bOK}, metadata !155), !dbg !516
  call void @llvm.dbg.declare(metadata !{float* %tmp1}, metadata !158), !dbg !517
  call void @llvm.dbg.declare(metadata !{float* %tmp2}, metadata !159), !dbg !517
  call void @llvm.dbg.value(metadata !428, i64 0, metadata !155), !dbg !518
  store i32 1, i32* %bOK, align 4, !dbg !518, !tbaa !337
  %call = call i32 @gmx_fio_getread(i32 %fp) #5, !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !154), !dbg !519
  %tobool = icmp ne i32 %call, 0, !dbg !520
  br i1 %tobool, label %if.end, label %if.then, !dbg !520

if.then:                                          ; preds = %entry
  %nre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2, !dbg !521
  %0 = load i32* %nre, align 4, !dbg !521, !tbaa !337
  %mul1 = shl i32 %0, 4, !dbg !521
  %e_size = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 6, !dbg !521
  store i32 %mul1, i32* %e_size, align 4, !dbg !521, !tbaa !337
  %ndisre = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !523
  %1 = load i32* %ndisre, align 4, !dbg !523, !tbaa !337
  %mul4 = shl i32 %1, 3, !dbg !523
  %d_size = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 7, !dbg !523
  store i32 %mul4, i32* %d_size, align 4, !dbg !523, !tbaa !337
  br label %if.end, !dbg !524

if.end:                                           ; preds = %if.then, %entry
  call void @gmx_fio_select(i32 %fp) #5, !dbg !525
  %call6 = call fastcc i32 @do_eheader(i32 %fp, %struct.t_enxframe* %fr, i32* %bOK) #6, !dbg !526
  %tobool7 = icmp eq i32 %call6, 0, !dbg !526
  br i1 %tobool7, label %if.then8, label %if.end18, !dbg !526

if.then8:                                         ; preds = %if.end
  br i1 %tobool, label %if.then10, label %return, !dbg !527

if.then10:                                        ; preds = %if.then8
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !529, !tbaa !341
  %3 = load i32* @framenr, align 4, !dbg !529, !tbaa !337
  %sub = add nsw i32 %3, -1, !dbg !529
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([46 x i8]* @.str15, i64 0, i64 0), i32 %sub) #5, !dbg !529
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !531
  %4 = load i32* %bOK, align 4, !dbg !531, !tbaa !337
  %tobool12 = icmp eq i32 %4, 0, !dbg !531
  br i1 %tobool12, label %if.then13, label %return, !dbg !531

if.then13:                                        ; preds = %if.then10
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !532, !tbaa !341
  %6 = load i32* @framenr, align 4, !dbg !532, !tbaa !337
  %t = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0, !dbg !532
  %7 = load float* %t, align 4, !dbg !532, !tbaa !533
  %conv14 = fpext float %7 to double, !dbg !532
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([47 x i8]* @.str16, i64 0, i64 0), i32 %6, double %conv14) #5, !dbg !532
  br label %return, !dbg !532

if.end18:                                         ; preds = %if.end
  br i1 %tobool, label %if.then20, label %if.end29, !dbg !534

if.then20:                                        ; preds = %if.end18
  %8 = load i32* @framenr, align 4, !dbg !535, !tbaa !337
  %cmp = icmp slt i32 %8, 10, !dbg !535
  %rem = srem i32 %8, 10, !dbg !535
  %cmp22 = icmp eq i32 %rem, 0, !dbg !535
  %or.cond = or i1 %cmp, %cmp22, !dbg !535
  br i1 %or.cond, label %if.then24, label %if.end28, !dbg !535

if.then24:                                        ; preds = %if.then20
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !537, !tbaa !341
  %t25 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0, !dbg !537
  %10 = load float* %t25, align 4, !dbg !537, !tbaa !533
  %conv26 = fpext float %10 to double, !dbg !537
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([41 x i8]* @.str17, i64 0, i64 0), i32 %8, double %conv26) #5, !dbg !537
  %.pre = load i32* @framenr, align 4, !dbg !538, !tbaa !337
  br label %if.end28, !dbg !537

if.end28:                                         ; preds = %if.then20, %if.then24
  %11 = phi i32 [ %8, %if.then20 ], [ %.pre, %if.then24 ]
  %inc = add nsw i32 %11, 1, !dbg !538
  store i32 %inc, i32* @framenr, align 4, !dbg !538, !tbaa !337
  br label %if.end29, !dbg !539

if.end29:                                         ; preds = %if.end28, %if.end18
  %nre30 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 2, !dbg !540
  %12 = load i32* %nre30, align 4, !dbg !540, !tbaa !337
  %cmp31 = icmp sgt i32 %12, 0, !dbg !540
  br i1 %cmp31, label %lor.end, label %lor.rhs, !dbg !540

lor.rhs:                                          ; preds = %if.end29
  %ndisre33 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !540
  %13 = load i32* %ndisre33, align 4, !dbg !540, !tbaa !337
  %cmp34 = icmp sgt i32 %13, 0, !dbg !540
  br label %lor.end, !dbg !540

lor.end:                                          ; preds = %lor.rhs, %if.end29
  %14 = phi i1 [ true, %if.end29 ], [ %cmp34, %lor.rhs ]
  %lor.ext = zext i1 %14 to i32, !dbg !540
  call void @llvm.dbg.value(metadata !{i32 %lor.ext}, i64 0, metadata !157), !dbg !540
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !153), !dbg !541
  %nblock = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 4, !dbg !541
  %15 = load i32* %nblock, align 4, !dbg !541, !tbaa !337
  %cmp36489 = icmp sgt i32 %15, 0, !dbg !541
  br i1 %cmp36489, label %for.body.lr.ph, label %for.end, !dbg !541

for.body.lr.ph:                                   ; preds = %lor.end
  %nr = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !543
  br label %for.body, !dbg !541

for.body:                                         ; preds = %for.body.lr.ph, %lor.end42
  %indvars.iv504 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next505, %lor.end42 ]
  %bSane.0491 = phi i32 [ %lor.ext, %for.body.lr.ph ], [ %lor.ext43, %lor.end42 ]
  %tobool38 = icmp eq i32 %bSane.0491, 0, !dbg !543
  br i1 %tobool38, label %lor.rhs39, label %lor.end42, !dbg !543

lor.rhs39:                                        ; preds = %for.body
  %16 = load i32** %nr, align 8, !dbg !543, !tbaa !341
  %arrayidx = getelementptr inbounds i32* %16, i64 %indvars.iv504, !dbg !543
  %17 = load i32* %arrayidx, align 4, !dbg !543, !tbaa !337
  %cmp40 = icmp sgt i32 %17, 0, !dbg !543
  br label %lor.end42, !dbg !543

lor.end42:                                        ; preds = %for.body, %lor.rhs39
  %18 = phi i1 [ true, %for.body ], [ %cmp40, %lor.rhs39 ]
  %lor.ext43 = zext i1 %18 to i32, !dbg !543
  call void @llvm.dbg.value(metadata !{i32 %lor.ext43}, i64 0, metadata !157), !dbg !543
  %indvars.iv.next505 = add i64 %indvars.iv504, 1, !dbg !541
  %19 = trunc i64 %indvars.iv.next505 to i32, !dbg !541
  %cmp36 = icmp slt i32 %19, %15, !dbg !541
  br i1 %cmp36, label %for.body, label %for.end, !dbg !541

for.end:                                          ; preds = %lor.end42, %lor.end
  %bSane.0.lcssa = phi i32 [ %lor.ext, %lor.end ], [ %lor.ext43, %lor.end42 ]
  %step = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 1, !dbg !544
  %20 = load i32* %step, align 4, !dbg !544, !tbaa !337
  %cmp45 = icmp slt i32 %20, 0, !dbg !544
  %tobool47 = icmp eq i32 %bSane.0.lcssa, 0, !dbg !544
  %or.cond469 = or i1 %cmp45, %tobool47, !dbg !544
  br i1 %or.cond469, label %if.then48, label %if.end58, !dbg !544

if.then48:                                        ; preds = %for.end
  %21 = load %struct._IO_FILE** @stderr, align 8, !dbg !545, !tbaa !341
  %call49 = call i8* @gmx_fio_getname(i32 %fp) #5, !dbg !547
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([60 x i8]* @.str18, i64 0, i64 0), i8* %call49) #5, !dbg !547
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !548, !tbaa !341
  %23 = load i32* %step, align 4, !dbg !548, !tbaa !337
  %24 = load i32* %nre30, align 4, !dbg !548, !tbaa !337
  %ndisre53 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !548
  %25 = load i32* %ndisre53, align 4, !dbg !548, !tbaa !337
  %26 = load i32* %nblock, align 4, !dbg !548, !tbaa !337
  %t55 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0, !dbg !548
  %27 = load float* %t55, align 4, !dbg !548, !tbaa !533
  %conv56 = fpext float %27 to double, !dbg !548
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([99 x i8]* @.str19, i64 0, i64 0), i32 %23, i32 %24, i32 %25, i32 %26, double %conv56) #5, !dbg !548
  br label %if.end58, !dbg !549

if.end58:                                         ; preds = %for.end, %if.then48
  %28 = load i32* %nre30, align 4, !dbg !550, !tbaa !337
  br i1 %tobool, label %land.lhs.true60, label %for.cond74.preheader, !dbg !550

land.lhs.true60:                                  ; preds = %if.end58
  %e_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 9, !dbg !550
  %29 = load i32* %e_alloc, align 4, !dbg !550, !tbaa !337
  %cmp62 = icmp sgt i32 %28, %29, !dbg !550
  br i1 %cmp62, label %if.then64, label %for.cond74.preheader, !dbg !550

if.then64:                                        ; preds = %land.lhs.true60
  %ener = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12, !dbg !551
  %30 = load %struct.t_energy** %ener, align 8, !dbg !551, !tbaa !341
  %31 = bitcast %struct.t_energy* %30 to i8*, !dbg !551
  %mul67 = shl i32 %28, 5, !dbg !551
  %call69 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 294, i8* %31, i32 %mul67) #5, !dbg !551
  %32 = bitcast i8* %call69 to %struct.t_energy*, !dbg !551
  store %struct.t_energy* %32, %struct.t_energy** %ener, align 8, !dbg !551, !tbaa !341
  %33 = load i32* %nre30, align 4, !dbg !553, !tbaa !337
  store i32 %33, i32* %e_alloc, align 4, !dbg !553, !tbaa !337
  br label %for.cond74.preheader, !dbg !554

for.cond74.preheader:                             ; preds = %if.end58, %if.then64, %land.lhs.true60
  %34 = phi i32 [ %33, %if.then64 ], [ %28, %land.lhs.true60 ], [ %28, %if.end58 ]
  %cmp76485 = icmp sgt i32 %34, 0, !dbg !555
  br i1 %cmp76485, label %for.body78.lr.ph, label %for.end161, !dbg !555

for.body78.lr.ph:                                 ; preds = %for.cond74.preheader
  %ener92 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 12, !dbg !557
  %35 = bitcast float* %tmp2 to i8*, !dbg !559
  %36 = bitcast float* %tmp1 to i8*, !dbg !560
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !516
  %bOK.promoted487 = load i32* %bOK, align 4, !tbaa !337
  br label %for.body78, !dbg !555

for.body78:                                       ; preds = %for.body78.lr.ph, %land.end157
  %indvars.iv502 = phi i64 [ 0, %for.body78.lr.ph ], [ %indvars.iv.next503, %land.end157 ]
  %land.ext158488 = phi i32 [ %bOK.promoted487, %for.body78.lr.ph ], [ %land.ext158, %land.end157 ]
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !561
  %tobool79 = icmp eq i32 %land.ext158488, 0, !dbg !561
  br i1 %tobool79, label %land.end, label %land.rhs, !dbg !561

land.rhs:                                         ; preds = %for.body78
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !561

cond.true:                                        ; preds = %land.rhs
  %37 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !561, !tbaa !341
  %38 = load %struct.t_energy** %ener92, align 8, !dbg !561, !tbaa !341
  %e = getelementptr inbounds %struct.t_energy* %38, i64 %indvars.iv502, i32 0, !dbg !561
  %39 = bitcast float* %e to i8*, !dbg !561
  %call84 = call i32 %37(i8* %39, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298) #5, !dbg !561
  br label %cond.end, !dbg !561

cond.false:                                       ; preds = %land.rhs
  %40 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !561, !tbaa !341
  %41 = load %struct.t_energy** %ener92, align 8, !dbg !561, !tbaa !341
  %e88 = getelementptr inbounds %struct.t_energy* %41, i64 %indvars.iv502, i32 0, !dbg !561
  %42 = bitcast float* %e88 to i8*, !dbg !561
  %call89 = call i32 %40(i8* %42, i32 1, i32 0, i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 298) #5, !dbg !561
  br label %cond.end, !dbg !561

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call84, %cond.true ], [ %call89, %cond.false ], !dbg !561
  %tobool90 = icmp ne i32 %cond, 0, !dbg !561
  br label %land.end

land.end:                                         ; preds = %for.body78, %cond.end
  %43 = phi i1 [ %tobool90, %cond.end ], [ false, %for.body78 ]
  %44 = load %struct.t_energy** %ener92, align 8, !dbg !557, !tbaa !341
  %eav = getelementptr inbounds %struct.t_energy* %44, i64 %indvars.iv502, i32 1, !dbg !557
  %45 = load double* %eav, align 8, !dbg !557, !tbaa !562
  %conv94 = fptrunc double %45 to float, !dbg !557
  call void @llvm.dbg.value(metadata !{float %conv94}, i64 0, metadata !158), !dbg !557
  store float %conv94, float* %tmp1, align 4, !dbg !557, !tbaa !533
  %46 = load i32* %step, align 4, !dbg !563, !tbaa !337
  %add = add nsw i32 %46, 1, !dbg !563
  %conv96 = sitofp i32 %add to float, !dbg !563
  %div = fdiv float %conv94, %conv96, !dbg !563
  %conv97 = fpext float %div to double, !dbg !563
  %cmp98 = fcmp olt double %conv97, 1.200000e-07, !dbg !563
  br i1 %cmp98, label %if.then100, label %if.end101, !dbg !563

if.then100:                                       ; preds = %land.end
  call void @llvm.dbg.value(metadata !564, i64 0, metadata !158), !dbg !565
  store float 0.000000e+00, float* %tmp1, align 4, !dbg !565, !tbaa !533
  br label %if.end101, !dbg !565

if.end101:                                        ; preds = %if.then100, %land.end
  %47 = phi float [ 0.000000e+00, %if.then100 ], [ %conv94, %land.end ]
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !560
  br i1 %43, label %land.rhs103, label %land.end112, !dbg !560

land.rhs103:                                      ; preds = %if.end101
  br i1 %tobool, label %cond.true105, label %cond.false107, !dbg !560

cond.true105:                                     ; preds = %land.rhs103
  %48 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !560, !tbaa !341
  %call106 = call i32 %48(i8* %36, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 303) #5, !dbg !560
  br label %cond.end109, !dbg !560

cond.false107:                                    ; preds = %land.rhs103
  %49 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !560, !tbaa !341
  %call108 = call i32 %49(i8* %36, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 303) #5, !dbg !560
  br label %cond.end109, !dbg !560

cond.end109:                                      ; preds = %cond.false107, %cond.true105
  %cond110 = phi i32 [ %call106, %cond.true105 ], [ %call108, %cond.false107 ], !dbg !560
  %tobool111 = icmp ne i32 %cond110, 0, !dbg !560
  call void @llvm.dbg.value(metadata !{float* %tmp1}, i64 0, metadata !158), !dbg !566
  %.pre506 = load float* %tmp1, align 4, !dbg !566, !tbaa !533
  %.pre507 = load %struct.t_energy** %ener92, align 8, !dbg !566, !tbaa !341
  br label %land.end112

land.end112:                                      ; preds = %if.end101, %cond.end109
  %50 = phi %struct.t_energy* [ %44, %if.end101 ], [ %.pre507, %cond.end109 ]
  %51 = phi float [ %47, %if.end101 ], [ %.pre506, %cond.end109 ]
  %52 = phi i1 [ false, %if.end101 ], [ %tobool111, %cond.end109 ]
  call void @llvm.dbg.value(metadata !{float* %tmp1}, i64 0, metadata !158), !dbg !566
  %conv114 = fpext float %51 to double, !dbg !566
  %eav118 = getelementptr inbounds %struct.t_energy* %50, i64 %indvars.iv502, i32 1, !dbg !566
  store double %conv114, double* %eav118, align 8, !dbg !566, !tbaa !562
  %esum = getelementptr inbounds %struct.t_energy* %50, i64 %indvars.iv502, i32 2, !dbg !567
  %53 = load double* %esum, align 8, !dbg !567, !tbaa !562
  %conv122 = fptrunc double %53 to float, !dbg !567
  call void @llvm.dbg.value(metadata !{float %conv122}, i64 0, metadata !159), !dbg !567
  store float %conv122, float* %tmp2, align 4, !dbg !567, !tbaa !533
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !559
  br i1 %52, label %land.rhs124, label %land.end133.thread, !dbg !559

land.end133.thread:                               ; preds = %land.end112
  call void @llvm.dbg.value(metadata !{float* %tmp2}, i64 0, metadata !159), !dbg !568
  %conv135513 = fpext float %conv122 to double, !dbg !568
  %esum139514 = getelementptr inbounds %struct.t_energy* %50, i64 %indvars.iv502, i32 2, !dbg !568
  store double %conv135513, double* %esum139514, align 8, !dbg !568, !tbaa !562
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !569
  br label %land.end157, !dbg !569

land.rhs124:                                      ; preds = %land.end112
  br i1 %tobool, label %cond.true126, label %cond.false128, !dbg !559

cond.true126:                                     ; preds = %land.rhs124
  %54 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !559, !tbaa !341
  %call127 = call i32 %54(i8* %35, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 308) #5, !dbg !559
  br label %land.end133, !dbg !559

cond.false128:                                    ; preds = %land.rhs124
  %55 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !559, !tbaa !341
  %call129 = call i32 %55(i8* %35, i32 1, i32 0, i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 308) #5, !dbg !559
  br label %land.end133, !dbg !559

land.end133:                                      ; preds = %cond.true126, %cond.false128
  %cond131 = phi i32 [ %call127, %cond.true126 ], [ %call129, %cond.false128 ], !dbg !559
  %tobool132 = icmp eq i32 %cond131, 0, !dbg !559
  call void @llvm.dbg.value(metadata !{float* %tmp2}, i64 0, metadata !159), !dbg !568
  %.pre508 = load float* %tmp2, align 4, !dbg !568, !tbaa !533
  %.pre509 = load %struct.t_energy** %ener92, align 8, !dbg !568, !tbaa !341
  call void @llvm.dbg.value(metadata !{float* %tmp2}, i64 0, metadata !159), !dbg !568
  %conv135 = fpext float %.pre508 to double, !dbg !568
  %esum139 = getelementptr inbounds %struct.t_energy* %.pre509, i64 %indvars.iv502, i32 2, !dbg !568
  store double %conv135, double* %esum139, align 8, !dbg !568, !tbaa !562
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !569
  br i1 %tobool132, label %land.end157, label %land.rhs141, !dbg !569

land.rhs141:                                      ; preds = %land.end133
  br i1 %tobool, label %cond.true143, label %cond.false148, !dbg !569

cond.true143:                                     ; preds = %land.rhs141
  %56 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !569, !tbaa !341
  %e2sum = getelementptr inbounds %struct.t_energy* %.pre509, i64 %indvars.iv502, i32 3, !dbg !569
  %57 = bitcast float* %e2sum to i8*, !dbg !569
  %call147 = call i32 %56(i8* %57, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 311) #5, !dbg !569
  br label %cond.end154, !dbg !569

cond.false148:                                    ; preds = %land.rhs141
  %58 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !569, !tbaa !341
  %e2sum152 = getelementptr inbounds %struct.t_energy* %.pre509, i64 %indvars.iv502, i32 3, !dbg !569
  %59 = bitcast float* %e2sum152 to i8*, !dbg !569
  %call153 = call i32 %58(i8* %59, i32 1, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 311) #5, !dbg !569
  br label %cond.end154, !dbg !569

cond.end154:                                      ; preds = %cond.false148, %cond.true143
  %cond155 = phi i32 [ %call147, %cond.true143 ], [ %call153, %cond.false148 ], !dbg !569
  %tobool156 = icmp ne i32 %cond155, 0, !dbg !569
  br label %land.end157

land.end157:                                      ; preds = %land.end133, %land.end133.thread, %cond.end154
  %60 = phi i1 [ %tobool156, %cond.end154 ], [ false, %land.end133.thread ], [ false, %land.end133 ]
  %land.ext158 = zext i1 %60 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext158}, i64 0, metadata !155), !dbg !516
  %indvars.iv.next503 = add i64 %indvars.iv502, 1, !dbg !555
  %61 = load i32* %nre30, align 4, !dbg !555, !tbaa !337
  %62 = trunc i64 %indvars.iv.next503 to i32, !dbg !555
  %cmp76 = icmp slt i32 %62, %61, !dbg !555
  br i1 %cmp76, label %for.body78, label %for.cond74.for.end161_crit_edge, !dbg !555

for.cond74.for.end161_crit_edge:                  ; preds = %land.end157
  call void @llvm.dbg.value(metadata !{i32 %land.ext158}, i64 0, metadata !155), !dbg !516
  store i32 %land.ext158, i32* %bOK, align 4, !tbaa !337
  br label %for.end161, !dbg !555

for.end161:                                       ; preds = %for.cond74.preheader, %for.cond74.for.end161_crit_edge
  %ndisre162 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 3, !dbg !570
  %63 = load i32* %ndisre162, align 4, !dbg !570, !tbaa !337
  %tobool163 = icmp eq i32 %63, 0, !dbg !570
  br i1 %tobool163, label %for.cond257.preheader, label %if.then164, !dbg !570

if.then164:                                       ; preds = %for.end161
  br i1 %tobool, label %land.lhs.true166, label %for.cond186.preheader, !dbg !571

land.lhs.true166:                                 ; preds = %if.then164
  %d_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 10, !dbg !571
  %64 = load i32* %d_alloc, align 4, !dbg !571, !tbaa !337
  %cmp168 = icmp sgt i32 %63, %64, !dbg !571
  br i1 %cmp168, label %if.then170, label %for.cond186.preheader, !dbg !571

if.then170:                                       ; preds = %land.lhs.true166
  %rav = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13, !dbg !572
  %65 = load float** %rav, align 8, !dbg !572, !tbaa !341
  %66 = bitcast float* %65 to i8*, !dbg !572
  %mul173 = shl i32 %63, 2, !dbg !572
  %call175 = call i8* @save_realloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 315, i8* %66, i32 %mul173) #5, !dbg !572
  %67 = bitcast i8* %call175 to float*, !dbg !572
  store float* %67, float** %rav, align 8, !dbg !572, !tbaa !341
  %rt = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14, !dbg !574
  %68 = load float** %rt, align 8, !dbg !574, !tbaa !341
  %69 = bitcast float* %68 to i8*, !dbg !574
  %70 = load i32* %ndisre162, align 4, !dbg !574, !tbaa !337
  %mul179 = shl i32 %70, 2, !dbg !574
  %call181 = call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 316, i8* %69, i32 %mul179) #5, !dbg !574
  %71 = bitcast i8* %call181 to float*, !dbg !574
  store float* %71, float** %rt, align 8, !dbg !574, !tbaa !341
  %72 = load i32* %ndisre162, align 4, !dbg !575, !tbaa !337
  store i32 %72, i32* %d_alloc, align 4, !dbg !575, !tbaa !337
  br label %for.cond186.preheader, !dbg !576

for.cond186.preheader:                            ; preds = %if.then170, %land.lhs.true166, %if.then164
  %73 = phi i32 [ %72, %if.then170 ], [ %63, %land.lhs.true166 ], [ %63, %if.then164 ]
  %cmp188481 = icmp sgt i32 %73, 0, !dbg !577
  br i1 %cmp188481, label %for.body190.lr.ph, label %for.end214.thread, !dbg !577

for.end214.thread:                                ; preds = %for.cond186.preheader
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !578
  %74 = load i32* %bOK, align 4, !dbg !578, !tbaa !337
  %not.tobool215515 = icmp ne i32 %74, 0, !dbg !578
  %land.ext219517 = zext i1 %not.tobool215515 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext219}, i64 0, metadata !155), !dbg !516
  call void @llvm.dbg.value(metadata !{i32 %land.ext219517}, i64 0, metadata !155), !dbg !516
  store i32 %land.ext219517, i32* %bOK, align 4, !tbaa !337
  call void @llvm.dbg.value(metadata !428, i64 0, metadata !156), !dbg !579
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !152), !dbg !580
  br label %for.end250, !dbg !580

for.body190.lr.ph:                                ; preds = %for.cond186.preheader
  %75 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !581
  %rav197 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 13, !dbg !581
  br label %for.body190, !dbg !577

for.body190:                                      ; preds = %for.body190.lr.ph, %land.end210
  %indvars.iv500 = phi i64 [ 0, %for.body190.lr.ph ], [ %indvars.iv.next501, %land.end210 ]
  %bOK1.0483 = phi i32 [ 1, %for.body190.lr.ph ], [ %land.ext211, %land.end210 ]
  call void @llvm.lifetime.start(i64 128, i8* %75) #4, !dbg !581
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf}, metadata !160), !dbg !581
  %76 = trunc i64 %indvars.iv500 to i32, !dbg !581
  %call191 = call i32 (i8*, i8*, ...)* @sprintf(i8* %75, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i32 %76) #5, !dbg !581
  %tobool192 = icmp eq i32 %bOK1.0483, 0, !dbg !581
  br i1 %tobool192, label %land.end210, label %land.rhs193, !dbg !581

land.rhs193:                                      ; preds = %for.body190
  br i1 %tobool, label %cond.true195, label %cond.false201, !dbg !581

cond.true195:                                     ; preds = %land.rhs193
  %77 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !581, !tbaa !341
  %78 = load float** %rav197, align 8, !dbg !581, !tbaa !341
  %arrayidx198 = getelementptr inbounds float* %78, i64 %indvars.iv500, !dbg !581
  %79 = bitcast float* %arrayidx198 to i8*, !dbg !581
  %call200 = call i32 %77(i8* %79, i32 1, i32 0, i8* %75, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 319) #5, !dbg !581
  br label %cond.end207, !dbg !581

cond.false201:                                    ; preds = %land.rhs193
  %80 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !581, !tbaa !341
  %81 = load float** %rav197, align 8, !dbg !581, !tbaa !341
  %arrayidx204 = getelementptr inbounds float* %81, i64 %indvars.iv500, !dbg !581
  %82 = bitcast float* %arrayidx204 to i8*, !dbg !581
  %call206 = call i32 %80(i8* %82, i32 1, i32 0, i8* %75, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 319) #5, !dbg !581
  br label %cond.end207, !dbg !581

cond.end207:                                      ; preds = %cond.false201, %cond.true195
  %cond208 = phi i32 [ %call200, %cond.true195 ], [ %call206, %cond.false201 ], !dbg !581
  %tobool209 = icmp ne i32 %cond208, 0, !dbg !581
  br label %land.end210

land.end210:                                      ; preds = %for.body190, %cond.end207
  %83 = phi i1 [ false, %for.body190 ], [ %tobool209, %cond.end207 ]
  %land.ext211 = zext i1 %83 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext211}, i64 0, metadata !156), !dbg !516
  call void @llvm.lifetime.end(i64 128, i8* %75) #4, !dbg !581
  %indvars.iv.next501 = add i64 %indvars.iv500, 1, !dbg !577
  %84 = load i32* %ndisre162, align 4, !dbg !577, !tbaa !337
  %85 = trunc i64 %indvars.iv.next501 to i32, !dbg !577
  %cmp188 = icmp slt i32 %85, %84, !dbg !577
  br i1 %cmp188, label %for.body190, label %for.end214, !dbg !577

for.end214:                                       ; preds = %land.end210
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !578
  %86 = load i32* %bOK, align 4, !dbg !578, !tbaa !337
  %not.tobool215 = icmp ne i32 %86, 0, !dbg !578
  %.tobool217 = and i1 %83, %not.tobool215, !dbg !578
  %land.ext219 = zext i1 %.tobool217 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext219}, i64 0, metadata !155), !dbg !516
  store i32 %land.ext219, i32* %bOK, align 4, !tbaa !337
  call void @llvm.dbg.value(metadata !428, i64 0, metadata !156), !dbg !579
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !152), !dbg !580
  %cmp222477 = icmp sgt i32 %84, 0, !dbg !580
  br i1 %cmp222477, label %for.body224.lr.ph, label %for.end250, !dbg !580

for.body224.lr.ph:                                ; preds = %for.end214
  %87 = getelementptr inbounds [128 x i8]* %buf225, i64 0, i64 0, !dbg !582
  %rt233 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 14, !dbg !582
  br label %for.body224, !dbg !580

for.body224:                                      ; preds = %for.body224.lr.ph, %land.end246
  %indvars.iv497 = phi i64 [ 0, %for.body224.lr.ph ], [ %indvars.iv.next498, %land.end246 ]
  %bOK1.1479 = phi i32 [ 1, %for.body224.lr.ph ], [ %land.ext247, %land.end246 ]
  call void @llvm.lifetime.start(i64 128, i8* %87) #4, !dbg !582
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf225}, metadata !168), !dbg !582
  %88 = trunc i64 %indvars.iv497 to i32, !dbg !582
  %call227 = call i32 (i8*, i8*, ...)* @sprintf(i8* %87, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), i32 %88) #5, !dbg !582
  %tobool228 = icmp eq i32 %bOK1.1479, 0, !dbg !582
  br i1 %tobool228, label %land.end246, label %land.rhs229, !dbg !582

land.rhs229:                                      ; preds = %for.body224
  br i1 %tobool, label %cond.true231, label %cond.false237, !dbg !582

cond.true231:                                     ; preds = %land.rhs229
  %89 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !582, !tbaa !341
  %90 = load float** %rt233, align 8, !dbg !582, !tbaa !341
  %arrayidx234 = getelementptr inbounds float* %90, i64 %indvars.iv497, !dbg !582
  %91 = bitcast float* %arrayidx234 to i8*, !dbg !582
  %call236 = call i32 %89(i8* %91, i32 1, i32 0, i8* %87, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 321) #5, !dbg !582
  br label %cond.end243, !dbg !582

cond.false237:                                    ; preds = %land.rhs229
  %92 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !582, !tbaa !341
  %93 = load float** %rt233, align 8, !dbg !582, !tbaa !341
  %arrayidx240 = getelementptr inbounds float* %93, i64 %indvars.iv497, !dbg !582
  %94 = bitcast float* %arrayidx240 to i8*, !dbg !582
  %call242 = call i32 %92(i8* %94, i32 1, i32 0, i8* %87, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 321) #5, !dbg !582
  br label %cond.end243, !dbg !582

cond.end243:                                      ; preds = %cond.false237, %cond.true231
  %cond244 = phi i32 [ %call236, %cond.true231 ], [ %call242, %cond.false237 ], !dbg !582
  %tobool245 = icmp ne i32 %cond244, 0, !dbg !582
  br label %land.end246

land.end246:                                      ; preds = %for.body224, %cond.end243
  %95 = phi i1 [ false, %for.body224 ], [ %tobool245, %cond.end243 ]
  %land.ext247 = zext i1 %95 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext247}, i64 0, metadata !156), !dbg !516
  call void @llvm.lifetime.end(i64 128, i8* %87) #4, !dbg !582
  %indvars.iv.next498 = add i64 %indvars.iv497, 1, !dbg !580
  %96 = load i32* %ndisre162, align 4, !dbg !580, !tbaa !337
  %97 = trunc i64 %indvars.iv.next498 to i32, !dbg !580
  %cmp222 = icmp slt i32 %97, %96, !dbg !580
  br i1 %cmp222, label %for.body224, label %for.end250, !dbg !580

for.end250:                                       ; preds = %land.end246, %for.end214.thread, %for.end214
  %.tobool217519 = phi i1 [ %.tobool217, %for.end214 ], [ %not.tobool215515, %for.end214.thread ], [ %.tobool217, %land.end246 ]
  %bOK1.1.lcssa = phi i1 [ true, %for.end214 ], [ true, %for.end214.thread ], [ %95, %land.end246 ]
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !583
  %.tobool253 = and i1 %bOK1.1.lcssa, %.tobool217519, !dbg !583
  %land.ext255 = zext i1 %.tobool253 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext255}, i64 0, metadata !155), !dbg !516
  store i32 %land.ext255, i32* %bOK, align 4, !tbaa !337
  br label %for.cond257.preheader, !dbg !584

for.cond257.preheader:                            ; preds = %for.end161, %for.end250
  %98 = load i32* %nblock, align 4, !dbg !585, !tbaa !337
  %cmp259474 = icmp sgt i32 %98, 0, !dbg !585
  br i1 %cmp259474, label %for.body261.lr.ph, label %for.cond257.preheader.for.end336_crit_edge, !dbg !585

for.cond257.preheader.for.end336_crit_edge:       ; preds = %for.cond257.preheader
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !586
  %.pre511 = load i32* %bOK, align 4, !dbg !586, !tbaa !337
  br label %for.end336, !dbg !585

for.body261.lr.ph:                                ; preds = %for.cond257.preheader
  %nr265 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 5, !dbg !587
  %b_alloc = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 11, !dbg !587
  %block273 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 15, !dbg !588
  %99 = getelementptr inbounds [128 x i8]* %buf299, i64 0, i64 0, !dbg !590
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !516
  %bOK.promoted = load i32* %bOK, align 4, !tbaa !337
  br label %for.body261, !dbg !585

for.body261:                                      ; preds = %for.body261.lr.ph, %for.end328
  %indvars.iv494 = phi i64 [ 0, %for.body261.lr.ph ], [ %indvars.iv.next495, %for.end328 ]
  %land.ext333476 = phi i32 [ %bOK.promoted, %for.body261.lr.ph ], [ %land.ext333, %for.end328 ]
  %100 = load i32** %nr265, align 8, !dbg !587, !tbaa !341
  br i1 %tobool, label %land.lhs.true263, label %for.cond292.preheader, !dbg !587

land.lhs.true263:                                 ; preds = %for.body261
  %arrayidx266 = getelementptr inbounds i32* %100, i64 %indvars.iv494, !dbg !587
  %101 = load i32* %arrayidx266, align 4, !dbg !587, !tbaa !337
  %102 = load i32** %b_alloc, align 8, !dbg !587, !tbaa !341
  %arrayidx268 = getelementptr inbounds i32* %102, i64 %indvars.iv494, !dbg !587
  %103 = load i32* %arrayidx268, align 4, !dbg !587, !tbaa !337
  %cmp269 = icmp sgt i32 %101, %103, !dbg !587
  br i1 %cmp269, label %if.then271, label %for.cond292.preheader, !dbg !587

if.then271:                                       ; preds = %land.lhs.true263
  %104 = load float*** %block273, align 8, !dbg !588, !tbaa !341
  %arrayidx274 = getelementptr inbounds float** %104, i64 %indvars.iv494, !dbg !588
  %105 = load float** %arrayidx274, align 8, !dbg !588, !tbaa !341
  %106 = bitcast float* %105 to i8*, !dbg !588
  %mul279 = shl i32 %101, 2, !dbg !588
  %call281 = call i8* @save_realloc(i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 326, i8* %106, i32 %mul279) #5, !dbg !588
  %107 = bitcast i8* %call281 to float*, !dbg !588
  %108 = load float*** %block273, align 8, !dbg !588, !tbaa !341
  %arrayidx284 = getelementptr inbounds float** %108, i64 %indvars.iv494, !dbg !588
  store float* %107, float** %arrayidx284, align 8, !dbg !588, !tbaa !341
  %109 = load i32** %nr265, align 8, !dbg !591, !tbaa !341
  %arrayidx287 = getelementptr inbounds i32* %109, i64 %indvars.iv494, !dbg !591
  %110 = load i32* %arrayidx287, align 4, !dbg !591, !tbaa !337
  %111 = load i32** %b_alloc, align 8, !dbg !591, !tbaa !341
  %arrayidx290 = getelementptr inbounds i32* %111, i64 %indvars.iv494, !dbg !591
  store i32 %110, i32* %arrayidx290, align 4, !dbg !591, !tbaa !337
  br label %for.cond292.preheader, !dbg !592

for.cond292.preheader:                            ; preds = %for.body261, %if.then271, %land.lhs.true263
  %112 = phi i32* [ %109, %if.then271 ], [ %100, %land.lhs.true263 ], [ %100, %for.body261 ], !dbg !593
  %arrayidx295470 = getelementptr inbounds i32* %112, i64 %indvars.iv494, !dbg !593
  %113 = load i32* %arrayidx295470, align 4, !dbg !593, !tbaa !337
  %cmp296471 = icmp sgt i32 %113, 0, !dbg !593
  br i1 %cmp296471, label %for.body298, label %for.end328, !dbg !593

for.body298:                                      ; preds = %for.cond292.preheader, %land.end324
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.end324 ], [ 0, %for.cond292.preheader ]
  %bOK1.2473 = phi i32 [ %land.ext325, %land.end324 ], [ 1, %for.cond292.preheader ]
  call void @llvm.lifetime.start(i64 128, i8* %99) #4, !dbg !590
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buf299}, metadata !172), !dbg !590
  %114 = trunc i64 %indvars.iv to i32, !dbg !590
  %call301 = call i32 (i8*, i8*, ...)* @sprintf(i8* %99, i8* getelementptr inbounds ([7 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str25, i64 0, i64 0), i32 %114) #5, !dbg !590
  %tobool302 = icmp eq i32 %bOK1.2473, 0, !dbg !590
  br i1 %tobool302, label %land.end324, label %land.rhs303, !dbg !590

land.rhs303:                                      ; preds = %for.body298
  br i1 %tobool, label %cond.true305, label %cond.false313, !dbg !590

cond.true305:                                     ; preds = %land.rhs303
  %115 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_read, align 8, !dbg !590, !tbaa !341
  %116 = load float*** %block273, align 8, !dbg !590, !tbaa !341
  %arrayidx309 = getelementptr inbounds float** %116, i64 %indvars.iv494, !dbg !590
  %117 = load float** %arrayidx309, align 8, !dbg !590, !tbaa !341
  %arrayidx310 = getelementptr inbounds float* %117, i64 %indvars.iv, !dbg !590
  %118 = bitcast float* %arrayidx310 to i8*, !dbg !590
  %call312 = call i32 %115(i8* %118, i32 1, i32 0, i8* %99, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 329) #5, !dbg !590
  br label %cond.end321, !dbg !590

cond.false313:                                    ; preds = %land.rhs303
  %119 = load i32 (i8*, i32, i32, i8*, i8*, i32)** @do_write, align 8, !dbg !590, !tbaa !341
  %120 = load float*** %block273, align 8, !dbg !590, !tbaa !341
  %arrayidx317 = getelementptr inbounds float** %120, i64 %indvars.iv494, !dbg !590
  %121 = load float** %arrayidx317, align 8, !dbg !590, !tbaa !341
  %arrayidx318 = getelementptr inbounds float* %121, i64 %indvars.iv, !dbg !590
  %122 = bitcast float* %arrayidx318 to i8*, !dbg !590
  %call320 = call i32 %119(i8* %122, i32 1, i32 0, i8* %99, i8* getelementptr inbounds ([53 x i8]* @.str1, i64 0, i64 0), i32 329) #5, !dbg !590
  br label %cond.end321, !dbg !590

cond.end321:                                      ; preds = %cond.false313, %cond.true305
  %cond322 = phi i32 [ %call312, %cond.true305 ], [ %call320, %cond.false313 ], !dbg !590
  %tobool323 = icmp ne i32 %cond322, 0, !dbg !590
  br label %land.end324

land.end324:                                      ; preds = %for.body298, %cond.end321
  %123 = phi i1 [ false, %for.body298 ], [ %tobool323, %cond.end321 ]
  %land.ext325 = zext i1 %123 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext325}, i64 0, metadata !156), !dbg !516
  call void @llvm.lifetime.end(i64 128, i8* %99) #4, !dbg !590
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !593
  %124 = load i32** %nr265, align 8, !dbg !593, !tbaa !341
  %arrayidx295 = getelementptr inbounds i32* %124, i64 %indvars.iv494, !dbg !593
  %125 = load i32* %arrayidx295, align 4, !dbg !593, !tbaa !337
  %126 = trunc i64 %indvars.iv.next to i32, !dbg !593
  %cmp296 = icmp slt i32 %126, %125, !dbg !593
  br i1 %cmp296, label %for.body298, label %for.end328, !dbg !593

for.end328:                                       ; preds = %land.end324, %for.cond292.preheader
  %bOK1.2.lcssa = phi i1 [ true, %for.cond292.preheader ], [ %123, %land.end324 ]
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !594
  %not.tobool329 = icmp ne i32 %land.ext333476, 0, !dbg !594
  %.tobool331 = and i1 %bOK1.2.lcssa, %not.tobool329, !dbg !594
  %land.ext333 = zext i1 %.tobool331 to i32
  call void @llvm.dbg.value(metadata !{i32 %land.ext333}, i64 0, metadata !155), !dbg !516
  %indvars.iv.next495 = add i64 %indvars.iv494, 1, !dbg !585
  %127 = load i32* %nblock, align 4, !dbg !585, !tbaa !337
  %128 = trunc i64 %indvars.iv.next495 to i32, !dbg !585
  %cmp259 = icmp slt i32 %128, %127, !dbg !585
  br i1 %cmp259, label %for.body261, label %for.cond257.for.end336_crit_edge, !dbg !585

for.cond257.for.end336_crit_edge:                 ; preds = %for.end328
  call void @llvm.dbg.value(metadata !{i32 %land.ext333}, i64 0, metadata !155), !dbg !516
  store i32 %land.ext333, i32* %bOK, align 4, !tbaa !337
  br label %for.end336, !dbg !585

for.end336:                                       ; preds = %for.cond257.preheader.for.end336_crit_edge, %for.cond257.for.end336_crit_edge
  %129 = phi i32 [ %.pre511, %for.cond257.preheader.for.end336_crit_edge ], [ %land.ext333, %for.cond257.for.end336_crit_edge ]
  call void @llvm.dbg.value(metadata !{i32* %bOK}, i64 0, metadata !155), !dbg !586
  %tobool337 = icmp eq i32 %129, 0, !dbg !586
  br i1 %tobool337, label %if.then338, label %return, !dbg !586

if.then338:                                       ; preds = %for.end336
  br i1 %tobool, label %if.then340, label %if.else, !dbg !595

if.then340:                                       ; preds = %if.then338
  %130 = load %struct._IO_FILE** @stderr, align 8, !dbg !597, !tbaa !341
  %131 = load i32* @framenr, align 4, !dbg !597, !tbaa !337
  %sub341 = add nsw i32 %131, -1, !dbg !597
  %call342 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([51 x i8]* @.str26, i64 0, i64 0), i32 %sub341) #5, !dbg !597
  %132 = load %struct._IO_FILE** @stderr, align 8, !dbg !599, !tbaa !341
  %133 = load i32* @framenr, align 4, !dbg !599, !tbaa !337
  %t343 = getelementptr inbounds %struct.t_enxframe* %fr, i64 0, i32 0, !dbg !599
  %134 = load float* %t343, align 4, !dbg !599, !tbaa !533
  %conv344 = fpext float %134 to double, !dbg !599
  %call345 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([52 x i8]* @.str27, i64 0, i64 0), i32 %133, double %conv344) #5, !dbg !599
  br label %return, !dbg !600

if.else:                                          ; preds = %if.then338
  call void (i32, i8*, ...)* @fatal_error(i32 -1, i8* getelementptr inbounds ([25 x i8]* @.str28, i64 0, i64 0)) #5, !dbg !601
  br label %return

return:                                           ; preds = %for.end336, %if.then340, %if.else, %if.then8, %if.then13, %if.then10
  %retval.0 = phi i32 [ 0, %if.then10 ], [ 0, %if.then13 ], [ 0, %if.then8 ], [ 0, %if.else ], [ 0, %if.then340 ], [ 1, %for.end336 ]
  ret i32 %retval.0, !dbg !602
}

; Function Attrs: optsize
declare i8* @gmx_fio_getname(i32) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: optsize
declare %struct._IO_FILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #3

; Function Attrs: optsize
declare void @ffclose(%struct._IO_FILE*) #2

; Function Attrs: optsize
declare i8* @fgets2(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind optsize
declare i32 @__isoc99_sscanf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @trim(i8*) #2

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture) #3

; Function Attrs: optsize
declare %struct.XDR* @gmx_fio_getxdr(i32) #2

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #2

; Function Attrs: optsize
declare i32 @xdr_string(%struct.XDR*, i8**, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !71, metadata !72, metadata !333, metadata !71, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{metadata !3, metadata !53, metadata !65}
!3 = metadata !{i32 786436, metadata !4, null, metadata !"", i32 37, i64 32, i64 32, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 37, size 32, align 32, offset 0] [from ]
!4 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/filenm.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!5 = metadata !{metadata !6, metadata !7, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52}
!6 = metadata !{i32 786472, metadata !"efMDP", i64 0} ; [ DW_TAG_enumerator ] [efMDP :: 0]
!7 = metadata !{i32 786472, metadata !"efGCT", i64 1} ; [ DW_TAG_enumerator ] [efGCT :: 1]
!8 = metadata !{i32 786472, metadata !"efTRX", i64 2} ; [ DW_TAG_enumerator ] [efTRX :: 2]
!9 = metadata !{i32 786472, metadata !"efTRN", i64 3} ; [ DW_TAG_enumerator ] [efTRN :: 3]
!10 = metadata !{i32 786472, metadata !"efTRR", i64 4} ; [ DW_TAG_enumerator ] [efTRR :: 4]
!11 = metadata !{i32 786472, metadata !"efTRJ", i64 5} ; [ DW_TAG_enumerator ] [efTRJ :: 5]
!12 = metadata !{i32 786472, metadata !"efXTC", i64 6} ; [ DW_TAG_enumerator ] [efXTC :: 6]
!13 = metadata !{i32 786472, metadata !"efG87", i64 7} ; [ DW_TAG_enumerator ] [efG87 :: 7]
!14 = metadata !{i32 786472, metadata !"efENX", i64 8} ; [ DW_TAG_enumerator ] [efENX :: 8]
!15 = metadata !{i32 786472, metadata !"efEDR", i64 9} ; [ DW_TAG_enumerator ] [efEDR :: 9]
!16 = metadata !{i32 786472, metadata !"efENE", i64 10} ; [ DW_TAG_enumerator ] [efENE :: 10]
!17 = metadata !{i32 786472, metadata !"efSTX", i64 11} ; [ DW_TAG_enumerator ] [efSTX :: 11]
!18 = metadata !{i32 786472, metadata !"efSTO", i64 12} ; [ DW_TAG_enumerator ] [efSTO :: 12]
!19 = metadata !{i32 786472, metadata !"efGRO", i64 13} ; [ DW_TAG_enumerator ] [efGRO :: 13]
!20 = metadata !{i32 786472, metadata !"efG96", i64 14} ; [ DW_TAG_enumerator ] [efG96 :: 14]
!21 = metadata !{i32 786472, metadata !"efPDB", i64 15} ; [ DW_TAG_enumerator ] [efPDB :: 15]
!22 = metadata !{i32 786472, metadata !"efBRK", i64 16} ; [ DW_TAG_enumerator ] [efBRK :: 16]
!23 = metadata !{i32 786472, metadata !"efENT", i64 17} ; [ DW_TAG_enumerator ] [efENT :: 17]
!24 = metadata !{i32 786472, metadata !"efLOG", i64 18} ; [ DW_TAG_enumerator ] [efLOG :: 18]
!25 = metadata !{i32 786472, metadata !"efXVG", i64 19} ; [ DW_TAG_enumerator ] [efXVG :: 19]
!26 = metadata !{i32 786472, metadata !"efOUT", i64 20} ; [ DW_TAG_enumerator ] [efOUT :: 20]
!27 = metadata !{i32 786472, metadata !"efNDX", i64 21} ; [ DW_TAG_enumerator ] [efNDX :: 21]
!28 = metadata !{i32 786472, metadata !"efTOP", i64 22} ; [ DW_TAG_enumerator ] [efTOP :: 22]
!29 = metadata !{i32 786472, metadata !"efITP", i64 23} ; [ DW_TAG_enumerator ] [efITP :: 23]
!30 = metadata !{i32 786472, metadata !"efTPX", i64 24} ; [ DW_TAG_enumerator ] [efTPX :: 24]
!31 = metadata !{i32 786472, metadata !"efTPS", i64 25} ; [ DW_TAG_enumerator ] [efTPS :: 25]
!32 = metadata !{i32 786472, metadata !"efTPR", i64 26} ; [ DW_TAG_enumerator ] [efTPR :: 26]
!33 = metadata !{i32 786472, metadata !"efTPA", i64 27} ; [ DW_TAG_enumerator ] [efTPA :: 27]
!34 = metadata !{i32 786472, metadata !"efTPB", i64 28} ; [ DW_TAG_enumerator ] [efTPB :: 28]
!35 = metadata !{i32 786472, metadata !"efTEX", i64 29} ; [ DW_TAG_enumerator ] [efTEX :: 29]
!36 = metadata !{i32 786472, metadata !"efRTP", i64 30} ; [ DW_TAG_enumerator ] [efRTP :: 30]
!37 = metadata !{i32 786472, metadata !"efATP", i64 31} ; [ DW_TAG_enumerator ] [efATP :: 31]
!38 = metadata !{i32 786472, metadata !"efHDB", i64 32} ; [ DW_TAG_enumerator ] [efHDB :: 32]
!39 = metadata !{i32 786472, metadata !"efDAT", i64 33} ; [ DW_TAG_enumerator ] [efDAT :: 33]
!40 = metadata !{i32 786472, metadata !"efDLG", i64 34} ; [ DW_TAG_enumerator ] [efDLG :: 34]
!41 = metadata !{i32 786472, metadata !"efMAP", i64 35} ; [ DW_TAG_enumerator ] [efMAP :: 35]
!42 = metadata !{i32 786472, metadata !"efEPS", i64 36} ; [ DW_TAG_enumerator ] [efEPS :: 36]
!43 = metadata !{i32 786472, metadata !"efMAT", i64 37} ; [ DW_TAG_enumerator ] [efMAT :: 37]
!44 = metadata !{i32 786472, metadata !"efM2P", i64 38} ; [ DW_TAG_enumerator ] [efM2P :: 38]
!45 = metadata !{i32 786472, metadata !"efMTX", i64 39} ; [ DW_TAG_enumerator ] [efMTX :: 39]
!46 = metadata !{i32 786472, metadata !"efEDI", i64 40} ; [ DW_TAG_enumerator ] [efEDI :: 40]
!47 = metadata !{i32 786472, metadata !"efEDO", i64 41} ; [ DW_TAG_enumerator ] [efEDO :: 41]
!48 = metadata !{i32 786472, metadata !"efPPA", i64 42} ; [ DW_TAG_enumerator ] [efPPA :: 42]
!49 = metadata !{i32 786472, metadata !"efPDO", i64 43} ; [ DW_TAG_enumerator ] [efPDO :: 43]
!50 = metadata !{i32 786472, metadata !"efHAT", i64 44} ; [ DW_TAG_enumerator ] [efHAT :: 44]
!51 = metadata !{i32 786472, metadata !"efXPM", i64 45} ; [ DW_TAG_enumerator ] [efXPM :: 45]
!52 = metadata !{i32 786472, metadata !"efNR", i64 46} ; [ DW_TAG_enumerator ] [efNR :: 46]
!53 = metadata !{i32 786436, metadata !54, null, metadata !"", i32 52, i64 32, i64 32, i32 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [line 52, size 32, align 32, offset 0] [from ]
!54 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmxfio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!55 = metadata !{metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64}
!56 = metadata !{i32 786472, metadata !"eioREAL", i64 0} ; [ DW_TAG_enumerator ] [eioREAL :: 0]
!57 = metadata !{i32 786472, metadata !"eioINT", i64 1} ; [ DW_TAG_enumerator ] [eioINT :: 1]
!58 = metadata !{i32 786472, metadata !"eioNUCHAR", i64 2} ; [ DW_TAG_enumerator ] [eioNUCHAR :: 2]
!59 = metadata !{i32 786472, metadata !"eioUSHORT", i64 3} ; [ DW_TAG_enumerator ] [eioUSHORT :: 3]
!60 = metadata !{i32 786472, metadata !"eioRVEC", i64 4} ; [ DW_TAG_enumerator ] [eioRVEC :: 4]
!61 = metadata !{i32 786472, metadata !"eioNRVEC", i64 5} ; [ DW_TAG_enumerator ] [eioNRVEC :: 5]
!62 = metadata !{i32 786472, metadata !"eioIVEC", i64 6} ; [ DW_TAG_enumerator ] [eioIVEC :: 6]
!63 = metadata !{i32 786472, metadata !"eioSTRING", i64 7} ; [ DW_TAG_enumerator ] [eioSTRING :: 7]
!64 = metadata !{i32 786472, metadata !"eioNR", i64 8} ; [ DW_TAG_enumerator ] [eioNR :: 8]
!65 = metadata !{i32 786436, metadata !66, null, metadata !"xdr_op", i32 119, i64 32, i64 32, i32 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [xdr_op] [line 119, size 32, align 32, offset 0] [from ]
!66 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!67 = metadata !{metadata !68, metadata !69, metadata !70}
!68 = metadata !{i32 786472, metadata !"XDR_ENCODE", i64 0} ; [ DW_TAG_enumerator ] [XDR_ENCODE :: 0]
!69 = metadata !{i32 786472, metadata !"XDR_DECODE", i64 1} ; [ DW_TAG_enumerator ] [XDR_DECODE :: 1]
!70 = metadata !{i32 786472, metadata !"XDR_FREE", i64 2} ; [ DW_TAG_enumerator ] [XDR_FREE :: 2]
!71 = metadata !{i32 0}
!72 = metadata !{metadata !73, metadata !117, metadata !129, metadata !134, metadata !146, metadata !178, metadata !241, metadata !253, metadata !261, metadata !273}
!73 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"free_enxframe", metadata !"free_enxframe", metadata !"", i32 40, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.t_enxframe*)* @free_enxframe, null, null, metadata !114, i32 41} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 41] [free_enxframe]
!74 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{null, metadata !77}
!77 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !78} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_enxframe]
!78 = metadata !{i32 786454, metadata !1, null, metadata !"t_enxframe", i32 89, i64 0, i64 0, i64 0, i32 0, metadata !79} ; [ DW_TAG_typedef ] [t_enxframe] [line 89, size 0, align 0, offset 0] [from ]
!79 = metadata !{i32 786451, metadata !80, null, metadata !"", i32 72, i64 768, i64 64, i32 0, i32 0, null, metadata !81, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 72, size 768, align 64, offset 0] [from ]
!80 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!81 = metadata !{metadata !82, metadata !85, metadata !87, metadata !88, metadata !89, metadata !90, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98, metadata !109, metadata !111, metadata !112}
!82 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"t", i32 73, i64 32, i64 32, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [t] [line 73, size 32, align 32, offset 0] [from real]
!83 = metadata !{i32 786454, metadata !80, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!84 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!85 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"step", i32 74, i64 32, i64 32, i64 32, i32 0, metadata !86} ; [ DW_TAG_member ] [step] [line 74, size 32, align 32, offset 32] [from int]
!86 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!87 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"nre", i32 75, i64 32, i64 32, i64 64, i32 0, metadata !86} ; [ DW_TAG_member ] [nre] [line 75, size 32, align 32, offset 64] [from int]
!88 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"ndisre", i32 76, i64 32, i64 32, i64 96, i32 0, metadata !86} ; [ DW_TAG_member ] [ndisre] [line 76, size 32, align 32, offset 96] [from int]
!89 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"nblock", i32 77, i64 32, i64 32, i64 128, i32 0, metadata !86} ; [ DW_TAG_member ] [nblock] [line 77, size 32, align 32, offset 128] [from int]
!90 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"nr", i32 78, i64 64, i64 64, i64 192, i32 0, metadata !91} ; [ DW_TAG_member ] [nr] [line 78, size 64, align 64, offset 192] [from ]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!92 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"e_size", i32 79, i64 32, i64 32, i64 256, i32 0, metadata !86} ; [ DW_TAG_member ] [e_size] [line 79, size 32, align 32, offset 256] [from int]
!93 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"d_size", i32 80, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [d_size] [line 80, size 32, align 32, offset 288] [from int]
!94 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"nr_alloc", i32 81, i64 32, i64 32, i64 320, i32 0, metadata !86} ; [ DW_TAG_member ] [nr_alloc] [line 81, size 32, align 32, offset 320] [from int]
!95 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"e_alloc", i32 82, i64 32, i64 32, i64 352, i32 0, metadata !86} ; [ DW_TAG_member ] [e_alloc] [line 82, size 32, align 32, offset 352] [from int]
!96 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"d_alloc", i32 83, i64 32, i64 32, i64 384, i32 0, metadata !86} ; [ DW_TAG_member ] [d_alloc] [line 83, size 32, align 32, offset 384] [from int]
!97 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"b_alloc", i32 84, i64 64, i64 64, i64 448, i32 0, metadata !91} ; [ DW_TAG_member ] [b_alloc] [line 84, size 64, align 64, offset 448] [from ]
!98 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"ener", i32 85, i64 64, i64 64, i64 512, i32 0, metadata !99} ; [ DW_TAG_member ] [ener] [line 85, size 64, align 64, offset 512] [from ]
!99 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from t_energy]
!100 = metadata !{i32 786454, metadata !80, null, metadata !"t_energy", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [t_energy] [line 41, size 0, align 0, offset 0] [from ]
!101 = metadata !{i32 786451, metadata !102, null, metadata !"", i32 36, i64 256, i64 64, i32 0, i32 0, null, metadata !103, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 36, size 256, align 64, offset 0] [from ]
!102 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/types/energy.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!103 = metadata !{metadata !104, metadata !105, metadata !107, metadata !108}
!104 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"e", i32 37, i64 32, i64 32, i64 0, i32 0, metadata !83} ; [ DW_TAG_member ] [e] [line 37, size 32, align 32, offset 0] [from real]
!105 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"eav", i32 38, i64 64, i64 64, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [eav] [line 38, size 64, align 64, offset 64] [from double]
!106 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!107 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"esum", i32 39, i64 64, i64 64, i64 128, i32 0, metadata !106} ; [ DW_TAG_member ] [esum] [line 39, size 64, align 64, offset 128] [from double]
!108 = metadata !{i32 786445, metadata !102, metadata !101, metadata !"e2sum", i32 40, i64 32, i64 32, i64 192, i32 0, metadata !83} ; [ DW_TAG_member ] [e2sum] [line 40, size 32, align 32, offset 192] [from real]
!109 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"rav", i32 86, i64 64, i64 64, i64 576, i32 0, metadata !110} ; [ DW_TAG_member ] [rav] [line 86, size 64, align 64, offset 576] [from ]
!110 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !83} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!111 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"rt", i32 87, i64 64, i64 64, i64 640, i32 0, metadata !110} ; [ DW_TAG_member ] [rt] [line 87, size 64, align 64, offset 640] [from ]
!112 = metadata !{i32 786445, metadata !80, metadata !79, metadata !"block", i32 88, i64 64, i64 64, i64 704, i32 0, metadata !113} ; [ DW_TAG_member ] [block] [line 88, size 64, align 64, offset 704] [from ]
!113 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!114 = metadata !{metadata !115, metadata !116}
!115 = metadata !{i32 786689, metadata !73, metadata !"fr", metadata !74, i32 16777256, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 40]
!116 = metadata !{i32 786688, metadata !73, metadata !"b", metadata !74, i32 42, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 42]
!117 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"do_enxnms", metadata !"do_enxnms", metadata !"", i32 154, metadata !118, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32, i32*, i8***)* @do_enxnms, null, null, metadata !124, i32 155} ; [ DW_TAG_subprogram ] [line 154] [def] [scope 155] [do_enxnms]
!118 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!119 = metadata !{null, metadata !86, metadata !91, metadata !120}
!120 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!121 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !122} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!122 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !123} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!123 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!124 = metadata !{metadata !125, metadata !126, metadata !127, metadata !128}
!125 = metadata !{i32 786689, metadata !117, metadata !"fp", metadata !74, i32 16777370, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 154]
!126 = metadata !{i32 786689, metadata !117, metadata !"nre", metadata !74, i32 33554586, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nre] [line 154]
!127 = metadata !{i32 786689, metadata !117, metadata !"nms", metadata !74, i32 50331802, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nms] [line 154]
!128 = metadata !{i32 786688, metadata !117, metadata !"bRead", metadata !74, i32 156, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRead] [line 156]
!129 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"close_enx", metadata !"close_enx", metadata !"", i32 169, metadata !130, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32)* @close_enx, null, null, metadata !132, i32 170} ; [ DW_TAG_subprogram ] [line 169] [def] [scope 170] [close_enx]
!130 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !131, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!131 = metadata !{null, metadata !86}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 786689, metadata !129, metadata !"fp", metadata !74, i32 16777385, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 169]
!134 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"open_enx", metadata !"open_enx", metadata !"", i32 190, metadata !135, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @open_enx, null, null, metadata !137, i32 191} ; [ DW_TAG_subprogram ] [line 190] [def] [scope 191] [open_enx]
!135 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !136, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!136 = metadata !{metadata !86, metadata !122, metadata !122}
!137 = metadata !{metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145}
!138 = metadata !{i32 786689, metadata !134, metadata !"fn", metadata !74, i32 16777406, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 190]
!139 = metadata !{i32 786689, metadata !134, metadata !"mode", metadata !74, i32 33554622, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mode] [line 190]
!140 = metadata !{i32 786688, metadata !134, metadata !"fp", metadata !74, i32 192, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 192]
!141 = metadata !{i32 786688, metadata !134, metadata !"nre", metadata !74, i32 192, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nre] [line 192]
!142 = metadata !{i32 786688, metadata !134, metadata !"i", metadata !74, i32 192, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 192]
!143 = metadata !{i32 786688, metadata !134, metadata !"nm", metadata !74, i32 193, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nm] [line 193]
!144 = metadata !{i32 786688, metadata !134, metadata !"fr", metadata !74, i32 194, metadata !77, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fr] [line 194]
!145 = metadata !{i32 786688, metadata !134, metadata !"bDum", metadata !74, i32 195, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bDum] [line 195]
!146 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"do_enx", metadata !"do_enx", metadata !"", i32 253, metadata !147, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_enxframe*)* @do_enx, null, null, metadata !149, i32 254} ; [ DW_TAG_subprogram ] [line 253] [def] [scope 254] [do_enx]
!147 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!148 = metadata !{metadata !86, metadata !86, metadata !77}
!149 = metadata !{metadata !150, metadata !151, metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !168, metadata !172}
!150 = metadata !{i32 786689, metadata !146, metadata !"fp", metadata !74, i32 16777469, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 253]
!151 = metadata !{i32 786689, metadata !146, metadata !"fr", metadata !74, i32 33554685, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 253]
!152 = metadata !{i32 786688, metadata !146, metadata !"i", metadata !74, i32 255, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 255]
!153 = metadata !{i32 786688, metadata !146, metadata !"block", metadata !74, i32 255, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block] [line 255]
!154 = metadata !{i32 786688, metadata !146, metadata !"bRead", metadata !74, i32 256, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRead] [line 256]
!155 = metadata !{i32 786688, metadata !146, metadata !"bOK", metadata !74, i32 256, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK] [line 256]
!156 = metadata !{i32 786688, metadata !146, metadata !"bOK1", metadata !74, i32 256, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bOK1] [line 256]
!157 = metadata !{i32 786688, metadata !146, metadata !"bSane", metadata !74, i32 256, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bSane] [line 256]
!158 = metadata !{i32 786688, metadata !146, metadata !"tmp1", metadata !74, i32 257, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp1] [line 257]
!159 = metadata !{i32 786688, metadata !146, metadata !"tmp2", metadata !74, i32 257, metadata !83, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp2] [line 257]
!160 = metadata !{i32 786688, metadata !161, metadata !"buf", metadata !74, i32 319, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 319]
!161 = metadata !{i32 786443, metadata !1, metadata !162, i32 319, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!162 = metadata !{i32 786443, metadata !1, metadata !163, i32 319, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!163 = metadata !{i32 786443, metadata !1, metadata !164, i32 319, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!164 = metadata !{i32 786443, metadata !1, metadata !146, i32 313, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!165 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !123, metadata !166, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!166 = metadata !{metadata !167}
!167 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!168 = metadata !{i32 786688, metadata !169, metadata !"buf", metadata !74, i32 321, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 321]
!169 = metadata !{i32 786443, metadata !1, metadata !170, i32 321, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!170 = metadata !{i32 786443, metadata !1, metadata !171, i32 321, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!171 = metadata !{i32 786443, metadata !1, metadata !164, i32 321, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!172 = metadata !{i32 786688, metadata !173, metadata !"buf", metadata !74, i32 329, metadata !165, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 329]
!173 = metadata !{i32 786443, metadata !1, metadata !174, i32 329, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!174 = metadata !{i32 786443, metadata !1, metadata !175, i32 329, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!175 = metadata !{i32 786443, metadata !1, metadata !176, i32 329, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!176 = metadata !{i32 786443, metadata !1, metadata !177, i32 324, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!177 = metadata !{i32 786443, metadata !1, metadata !146, i32 324, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!178 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"empty_file", metadata !"empty_file", metadata !"", i32 174, metadata !179, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !181, i32 175} ; [ DW_TAG_subprogram ] [line 174] [local] [def] [scope 175] [empty_file]
!179 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!180 = metadata !{metadata !86, metadata !122}
!181 = metadata !{metadata !182, metadata !183, metadata !239, metadata !240}
!182 = metadata !{i32 786689, metadata !178, metadata !"fn", metadata !74, i32 16777390, metadata !122, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 174]
!183 = metadata !{i32 786688, metadata !178, metadata !"fp", metadata !74, i32 176, metadata !184, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 176]
!184 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !185} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!185 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !186} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!186 = metadata !{i32 786451, metadata !187, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !188, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!187 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!188 = metadata !{metadata !189, metadata !190, metadata !191, metadata !192, metadata !193, metadata !194, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !209, metadata !210, metadata !211, metadata !212, metadata !215, metadata !217, metadata !219, metadata !223, metadata !225, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !234, metadata !235}
!189 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!190 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!191 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!192 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!193 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!194 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!195 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!196 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!197 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!198 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!199 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!200 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !122} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!201 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !202} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!202 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !203} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!203 = metadata !{i32 786451, metadata !187, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !204, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!204 = metadata !{metadata !205, metadata !206, metadata !208}
!205 = metadata !{i32 786445, metadata !187, metadata !203, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !202} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!206 = metadata !{i32 786445, metadata !187, metadata !203, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !207} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!207 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !186} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!208 = metadata !{i32 786445, metadata !187, metadata !203, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !86} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!209 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !207} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!210 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !86} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!211 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !86} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!212 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !213} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!213 = metadata !{i32 786454, metadata !187, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!214 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!215 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !216} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!216 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!217 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !218} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!218 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!219 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !220} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!220 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !123, metadata !221, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!221 = metadata !{metadata !222}
!222 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!223 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !224} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!224 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!225 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !226} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!226 = metadata !{i32 786454, metadata !187, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !214} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!227 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !224} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!228 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !224} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!229 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !224} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!230 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !224} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!231 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !232} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!232 = metadata !{i32 786454, metadata !187, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !233} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!233 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!234 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !86} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!235 = metadata !{i32 786445, metadata !187, metadata !186, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !236} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!236 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !123, metadata !237, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!237 = metadata !{metadata !238}
!238 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!239 = metadata !{i32 786688, metadata !178, metadata !"dum", metadata !74, i32 177, metadata !123, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dum] [line 177]
!240 = metadata !{i32 786688, metadata !178, metadata !"bEmpty", metadata !74, i32 178, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bEmpty] [line 178]
!241 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"do_eheader", metadata !"do_eheader", metadata !"", i32 112, metadata !242, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, %struct.t_enxframe*, i32*)* @do_eheader, null, null, metadata !244, i32 113} ; [ DW_TAG_subprogram ] [line 112] [local] [def] [scope 113] [do_eheader]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !86, metadata !86, metadata !77, metadata !91}
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252}
!245 = metadata !{i32 786689, metadata !241, metadata !"fp", metadata !74, i32 16777328, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 112]
!246 = metadata !{i32 786689, metadata !241, metadata !"fr", metadata !74, i32 33554544, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fr] [line 112]
!247 = metadata !{i32 786689, metadata !241, metadata !"bOK", metadata !74, i32 50331760, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bOK] [line 112]
!248 = metadata !{i32 786688, metadata !241, metadata !"block", metadata !74, i32 114, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [block] [line 114]
!249 = metadata !{i32 786688, metadata !241, metadata !"i", metadata !74, i32 114, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 114]
!250 = metadata !{i32 786688, metadata !241, metadata !"dum", metadata !74, i32 114, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dum] [line 114]
!251 = metadata !{i32 786688, metadata !241, metadata !"bRead", metadata !74, i32 115, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRead] [line 115]
!252 = metadata !{i32 786688, metadata !241, metadata !"tempfix_nr", metadata !74, i32 116, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tempfix_nr] [line 116]
!253 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"wr_ener_nms", metadata !"wr_ener_nms", metadata !"", i32 57, metadata !254, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !256, i32 58} ; [ DW_TAG_subprogram ] [line 57] [local] [def] [scope 58] [wr_ener_nms]
!254 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !255, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!255 = metadata !{null, metadata !184, metadata !86, metadata !121}
!256 = metadata !{metadata !257, metadata !258, metadata !259, metadata !260}
!257 = metadata !{i32 786689, metadata !253, metadata !"out", metadata !74, i32 16777273, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [out] [line 57]
!258 = metadata !{i32 786689, metadata !253, metadata !"nre", metadata !74, i32 33554489, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nre] [line 57]
!259 = metadata !{i32 786689, metadata !253, metadata !"nms", metadata !74, i32 50331705, metadata !121, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nms] [line 57]
!260 = metadata !{i32 786688, metadata !253, metadata !"i", metadata !74, i32 59, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 59]
!261 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"rd_ener_nms", metadata !"rd_ener_nms", metadata !"", i32 66, metadata !262, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !264, i32 67} ; [ DW_TAG_subprogram ] [line 66] [local] [def] [scope 67] [rd_ener_nms]
!262 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !263, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!263 = metadata !{null, metadata !184, metadata !91, metadata !120}
!264 = metadata !{metadata !265, metadata !266, metadata !267, metadata !268, metadata !272}
!265 = metadata !{i32 786689, metadata !261, metadata !"in", metadata !74, i32 16777282, metadata !184, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 66]
!266 = metadata !{i32 786689, metadata !261, metadata !"nre", metadata !74, i32 33554498, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nre] [line 66]
!267 = metadata !{i32 786689, metadata !261, metadata !"nm", metadata !74, i32 50331714, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nm] [line 66]
!268 = metadata !{i32 786688, metadata !261, metadata !"line", metadata !74, i32 68, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 68]
!269 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !123, metadata !270, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from char]
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786465, i64 0, i64 256}     ; [ DW_TAG_subrange_type ] [0, 255]
!272 = metadata !{i32 786688, metadata !261, metadata !"i", metadata !74, i32 69, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 69]
!273 = metadata !{i32 786478, metadata !1, metadata !74, metadata !"edr_nms", metadata !"edr_nms", metadata !"", i32 84, metadata !118, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !274, i32 85} ; [ DW_TAG_subprogram ] [line 84] [local] [def] [scope 85] [edr_nms]
!274 = metadata !{metadata !275, metadata !276, metadata !277, metadata !278, metadata !330, metadata !331, metadata !332}
!275 = metadata !{i32 786689, metadata !273, metadata !"fp", metadata !74, i32 16777300, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 84]
!276 = metadata !{i32 786689, metadata !273, metadata !"nre", metadata !74, i32 33554516, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nre] [line 84]
!277 = metadata !{i32 786689, metadata !273, metadata !"nms", metadata !74, i32 50331732, metadata !120, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nms] [line 84]
!278 = metadata !{i32 786688, metadata !273, metadata !"xdr", metadata !74, i32 86, metadata !279, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xdr] [line 86]
!279 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !280} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!280 = metadata !{i32 786454, metadata !1, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!281 = metadata !{i32 786451, metadata !66, null, metadata !"XDR", i32 145, i64 384, i64 64, i32 0, i32 0, null, metadata !282, i32 0, null, null} ; [ DW_TAG_structure_type ] [XDR] [line 145, size 384, align 64, offset 0] [from ]
!282 = metadata !{metadata !283, metadata !284, metadata !326, metadata !327, metadata !328, metadata !329}
!283 = metadata !{i32 786445, metadata !66, metadata !281, metadata !"x_op", i32 147, i64 32, i64 32, i64 0, i32 0, metadata !65} ; [ DW_TAG_member ] [x_op] [line 147, size 32, align 32, offset 0] [from xdr_op]
!284 = metadata !{i32 786445, metadata !66, metadata !281, metadata !"x_ops", i32 171, i64 64, i64 64, i64 64, i32 0, metadata !285} ; [ DW_TAG_member ] [x_ops] [line 171, size 64, align 64, offset 64] [from ]
!285 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !286} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_ops]
!286 = metadata !{i32 786451, metadata !66, null, metadata !"xdr_ops", i32 148, i64 640, i64 64, i32 0, i32 0, null, metadata !287, i32 0, null, null} ; [ DW_TAG_structure_type ] [xdr_ops] [line 148, size 640, align 64, offset 0] [from ]
!287 = metadata !{metadata !288, metadata !296, metadata !297, metadata !302, metadata !303, metadata !307, metadata !311, metadata !317, metadata !321, metadata !325}
!288 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_getlong", i32 150, i64 64, i64 64, i64 0, i32 0, metadata !289} ; [ DW_TAG_member ] [x_getlong] [line 150, size 64, align 64, offset 0] [from ]
!289 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!290 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!291 = metadata !{metadata !292, metadata !293, metadata !295}
!292 = metadata !{i32 786454, metadata !66, null, metadata !"bool_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [bool_t] [line 99, size 0, align 0, offset 0] [from int]
!293 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !294} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from XDR]
!294 = metadata !{i32 786454, metadata !66, null, metadata !"XDR", i32 144, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [XDR] [line 144, size 0, align 0, offset 0] [from XDR]
!295 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from long int]
!296 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_putlong", i32 152, i64 64, i64 64, i64 64, i32 0, metadata !289} ; [ DW_TAG_member ] [x_putlong] [line 152, size 64, align 64, offset 64] [from ]
!297 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_getbytes", i32 154, i64 64, i64 64, i64 128, i32 0, metadata !298} ; [ DW_TAG_member ] [x_getbytes] [line 154, size 64, align 64, offset 128] [from ]
!298 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !299} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!299 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!300 = metadata !{metadata !292, metadata !293, metadata !122, metadata !301}
!301 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!302 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_putbytes", i32 156, i64 64, i64 64, i64 192, i32 0, metadata !298} ; [ DW_TAG_member ] [x_putbytes] [line 156, size 64, align 64, offset 192] [from ]
!303 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_getpostn", i32 158, i64 64, i64 64, i64 256, i32 0, metadata !304} ; [ DW_TAG_member ] [x_getpostn] [line 158, size 64, align 64, offset 256] [from ]
!304 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !305} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!305 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!306 = metadata !{metadata !301, metadata !293}
!307 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_setpostn", i32 160, i64 64, i64 64, i64 320, i32 0, metadata !308} ; [ DW_TAG_member ] [x_setpostn] [line 160, size 64, align 64, offset 320] [from ]
!308 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !309} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!309 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!310 = metadata !{metadata !292, metadata !293, metadata !301}
!311 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_inline", i32 162, i64 64, i64 64, i64 384, i32 0, metadata !312} ; [ DW_TAG_member ] [x_inline] [line 162, size 64, align 64, offset 384] [from ]
!312 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !313} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!313 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !314, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!314 = metadata !{metadata !315, metadata !293, metadata !86}
!315 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !316} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from xdr_int32_t]
!316 = metadata !{i32 786454, metadata !66, null, metadata !"xdr_int32_t", i32 106, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [xdr_int32_t] [line 106, size 0, align 0, offset 0] [from int]
!317 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_destroy", i32 164, i64 64, i64 64, i64 448, i32 0, metadata !318} ; [ DW_TAG_member ] [x_destroy] [line 164, size 64, align 64, offset 448] [from ]
!318 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !319} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!319 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!320 = metadata !{null, metadata !293}
!321 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_getint32", i32 166, i64 64, i64 64, i64 512, i32 0, metadata !322} ; [ DW_TAG_member ] [x_getint32] [line 166, size 64, align 64, offset 512] [from ]
!322 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !323} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!323 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!324 = metadata !{metadata !292, metadata !293, metadata !315}
!325 = metadata !{i32 786445, metadata !66, metadata !286, metadata !"x_putint32", i32 168, i64 64, i64 64, i64 576, i32 0, metadata !322} ; [ DW_TAG_member ] [x_putint32] [line 168, size 64, align 64, offset 576] [from ]
!326 = metadata !{i32 786445, metadata !66, metadata !281, metadata !"x_public", i32 172, i64 64, i64 64, i64 128, i32 0, metadata !122} ; [ DW_TAG_member ] [x_public] [line 172, size 64, align 64, offset 128] [from ]
!327 = metadata !{i32 786445, metadata !66, metadata !281, metadata !"x_private", i32 173, i64 64, i64 64, i64 192, i32 0, metadata !122} ; [ DW_TAG_member ] [x_private] [line 173, size 64, align 64, offset 192] [from ]
!328 = metadata !{i32 786445, metadata !66, metadata !281, metadata !"x_base", i32 174, i64 64, i64 64, i64 256, i32 0, metadata !122} ; [ DW_TAG_member ] [x_base] [line 174, size 64, align 64, offset 256] [from ]
!329 = metadata !{i32 786445, metadata !66, metadata !281, metadata !"x_handy", i32 175, i64 32, i64 32, i64 320, i32 0, metadata !86} ; [ DW_TAG_member ] [x_handy] [line 175, size 32, align 32, offset 320] [from int]
!330 = metadata !{i32 786688, metadata !273, metadata !"bRead", metadata !74, i32 87, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bRead] [line 87]
!331 = metadata !{i32 786688, metadata !273, metadata !"i", metadata !74, i32 88, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 88]
!332 = metadata !{i32 786688, metadata !273, metadata !"NM", metadata !74, i32 89, metadata !121, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NM] [line 89]
!333 = metadata !{metadata !334}
!334 = metadata !{i32 786484, i32 0, null, metadata !"framenr", metadata !"framenr", metadata !"", metadata !74, i32 188, metadata !86, i32 1, i32 1, i32* @framenr, null} ; [ DW_TAG_variable ] [framenr] [line 188] [local] [def]
!335 = metadata !{i32 40, i32 0, metadata !73, null}
!336 = metadata !{i32 44, i32 0, metadata !73, null}
!337 = metadata !{metadata !"int", metadata !338}
!338 = metadata !{metadata !"omnipotent char", metadata !339}
!339 = metadata !{metadata !"Simple C/C++ TBAA"}
!340 = metadata !{i32 45, i32 0, metadata !73, null}
!341 = metadata !{metadata !"any pointer", metadata !338}
!342 = metadata !{i32 46, i32 0, metadata !73, null}
!343 = metadata !{i32 47, i32 0, metadata !344, null}
!344 = metadata !{i32 786443, metadata !1, metadata !73, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!345 = metadata !{i32 48, i32 0, metadata !344, null}
!346 = metadata !{i32 49, i32 0, metadata !344, null}
!347 = metadata !{i32 50, i32 0, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !73, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!349 = metadata !{i32 51, i32 0, metadata !348, null}
!350 = metadata !{i32 52, i32 0, metadata !73, null}
!351 = metadata !{i32 53, i32 0, metadata !73, null}
!352 = metadata !{i32 54, i32 0, metadata !73, null}
!353 = metadata !{i32 55, i32 0, metadata !73, null}
!354 = metadata !{i32 154, i32 0, metadata !117, null}
!355 = metadata !{i32 158, i32 0, metadata !117, null}
!356 = metadata !{i32 159, i32 0, metadata !117, null}
!357 = metadata !{i32 160, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !117, i32 159, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!359 = metadata !{i32 786689, metadata !273, metadata !"fp", metadata !74, i32 16777300, metadata !86, i32 0, metadata !360} ; [ DW_TAG_arg_variable ] [fp] [line 84]
!360 = metadata !{i32 161, i32 0, metadata !358, null}
!361 = metadata !{i32 84, i32 0, metadata !273, metadata !360}
!362 = metadata !{i32 786689, metadata !273, metadata !"nre", metadata !74, i32 33554516, metadata !91, i32 0, metadata !360} ; [ DW_TAG_arg_variable ] [nre] [line 84]
!363 = metadata !{i32 786689, metadata !273, metadata !"nms", metadata !74, i32 50331732, metadata !120, i32 0, metadata !360} ; [ DW_TAG_arg_variable ] [nms] [line 84]
!364 = metadata !{i32 87, i32 0, metadata !273, metadata !360}
!365 = metadata !{i32 786688, metadata !273, metadata !"bRead", metadata !74, i32 87, metadata !86, i32 0, metadata !360} ; [ DW_TAG_auto_variable ] [bRead] [line 87]
!366 = metadata !{i32 91, i32 0, metadata !273, metadata !360}
!367 = metadata !{i32 786688, metadata !273, metadata !"xdr", metadata !74, i32 86, metadata !279, i32 0, metadata !360} ; [ DW_TAG_auto_variable ] [xdr] [line 86]
!368 = metadata !{i32 93, i32 0, metadata !273, metadata !360}
!369 = metadata !{i32 786688, metadata !273, metadata !"NM", metadata !74, i32 89, metadata !121, i32 0, metadata !360} ; [ DW_TAG_auto_variable ] [NM] [line 89]
!370 = metadata !{i32 95, i32 0, metadata !273, metadata !360}
!371 = metadata !{i32 96, i32 0, metadata !372, metadata !360}
!372 = metadata !{i32 786443, metadata !1, metadata !273, i32 95, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!373 = metadata !{i32 97, i32 0, metadata !372, metadata !360}
!374 = metadata !{i32 99, i32 0, metadata !273, metadata !360}
!375 = metadata !{i32 100, i32 0, metadata !376, metadata !360}
!376 = metadata !{i32 786443, metadata !1, metadata !273, i32 99, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!377 = metadata !{i32 101, i32 0, metadata !376, metadata !360}
!378 = metadata !{i32 786688, metadata !273, metadata !"i", metadata !74, i32 88, metadata !86, i32 0, metadata !360} ; [ DW_TAG_auto_variable ] [i] [line 88]
!379 = metadata !{i32 102, i32 0, metadata !380, metadata !360}
!380 = metadata !{i32 786443, metadata !1, metadata !273, i32 102, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!381 = metadata !{i32 103, i32 0, metadata !382, metadata !360}
!382 = metadata !{i32 786443, metadata !1, metadata !380, i32 102, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!383 = metadata !{i32 107, i32 0, metadata !382, metadata !360}
!384 = metadata !{i32 104, i32 0, metadata !385, metadata !360}
!385 = metadata !{i32 786443, metadata !1, metadata !382, i32 103, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!386 = metadata !{i32 105, i32 0, metadata !385, metadata !360}
!387 = metadata !{i32 106, i32 0, metadata !385, metadata !360}
!388 = metadata !{i32 109, i32 0, metadata !273, metadata !360}
!389 = metadata !{i32 163, i32 0, metadata !117, null}
!390 = metadata !{i32 164, i32 0, metadata !117, null}
!391 = metadata !{i32 786689, metadata !261, metadata !"in", metadata !74, i32 16777282, metadata !184, i32 0, metadata !390} ; [ DW_TAG_arg_variable ] [in] [line 66]
!392 = metadata !{i32 66, i32 0, metadata !261, metadata !390}
!393 = metadata !{i32 786689, metadata !261, metadata !"nre", metadata !74, i32 33554498, metadata !91, i32 0, metadata !390} ; [ DW_TAG_arg_variable ] [nre] [line 66]
!394 = metadata !{i32 786689, metadata !261, metadata !"nm", metadata !74, i32 50331714, metadata !120, i32 0, metadata !390} ; [ DW_TAG_arg_variable ] [nm] [line 66]
!395 = metadata !{i32 68, i32 0, metadata !261, metadata !390}
!396 = metadata !{i32 71, i32 0, metadata !261, metadata !390}
!397 = metadata !{i32 72, i32 0, metadata !261, metadata !390}
!398 = metadata !{i32 73, i32 0, metadata !399, metadata !390}
!399 = metadata !{i32 786443, metadata !1, metadata !261, i32 72, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!400 = metadata !{i32 74, i32 0, metadata !399, metadata !390}
!401 = metadata !{i32 76, i32 0, metadata !261, metadata !390}
!402 = metadata !{i32 786688, metadata !261, metadata !"i", metadata !74, i32 69, metadata !86, i32 0, metadata !390} ; [ DW_TAG_auto_variable ] [i] [line 69]
!403 = metadata !{i32 77, i32 0, metadata !404, metadata !390}
!404 = metadata !{i32 786443, metadata !1, metadata !261, i32 77, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!405 = metadata !{i32 78, i32 0, metadata !406, metadata !390}
!406 = metadata !{i32 786443, metadata !1, metadata !404, i32 77, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!407 = metadata !{i32 79, i32 0, metadata !406, metadata !390}
!408 = metadata !{i32 80, i32 0, metadata !406, metadata !390}
!409 = metadata !{i32 166, i32 0, metadata !117, null}
!410 = metadata !{i32 786689, metadata !253, metadata !"out", metadata !74, i32 16777273, metadata !184, i32 0, metadata !409} ; [ DW_TAG_arg_variable ] [out] [line 57]
!411 = metadata !{i32 57, i32 0, metadata !253, metadata !409}
!412 = metadata !{i32 786689, metadata !253, metadata !"nre", metadata !74, i32 33554489, metadata !86, i32 0, metadata !409} ; [ DW_TAG_arg_variable ] [nre] [line 57]
!413 = metadata !{i32 786689, metadata !253, metadata !"nms", metadata !74, i32 50331705, metadata !121, i32 0, metadata !409} ; [ DW_TAG_arg_variable ] [nms] [line 57]
!414 = metadata !{i32 61, i32 0, metadata !253, metadata !409}
!415 = metadata !{i32 786688, metadata !253, metadata !"i", metadata !74, i32 59, metadata !86, i32 0, metadata !409} ; [ DW_TAG_auto_variable ] [i] [line 59]
!416 = metadata !{i32 62, i32 0, metadata !417, metadata !409}
!417 = metadata !{i32 786443, metadata !1, metadata !253, i32 62, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!418 = metadata !{i32 63, i32 0, metadata !417, metadata !409}
!419 = metadata !{i32 167, i32 0, metadata !117, null}
!420 = metadata !{i32 169, i32 0, metadata !129, null}
!421 = metadata !{i32 171, i32 0, metadata !129, null}
!422 = metadata !{i32 172, i32 0, metadata !129, null}
!423 = metadata !{i32 190, i32 0, metadata !134, null}
!424 = metadata !{i32 192, i32 0, metadata !134, null}
!425 = metadata !{i32 193, i32 0, metadata !134, null}
!426 = metadata !{i8** null}
!427 = metadata !{i32 195, i32 0, metadata !134, null}
!428 = metadata !{i32 1}
!429 = metadata !{i32 201, i32 0, metadata !134, null}
!430 = metadata !{i32 202, i32 0, metadata !431, null}
!431 = metadata !{i32 786443, metadata !1, metadata !134, i32 201, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!432 = metadata !{i32 203, i32 0, metadata !431, null}
!433 = metadata !{i32 204, i32 0, metadata !431, null}
!434 = metadata !{i32 205, i32 0, metadata !431, null}
!435 = metadata !{i32 206, i32 0, metadata !431, null}
!436 = metadata !{i32 207, i32 0, metadata !431, null}
!437 = metadata !{i32 210, i32 0, metadata !431, null}
!438 = metadata !{i32 214, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !431, i32 213, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!440 = metadata !{i32 215, i32 0, metadata !441, null}
!441 = metadata !{i32 786443, metadata !1, metadata !439, i32 215, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!442 = metadata !{i32 216, i32 0, metadata !441, null}
!443 = metadata !{i32 217, i32 0, metadata !439, null}
!444 = metadata !{i32 218, i32 0, metadata !439, null}
!445 = metadata !{i32 220, i32 0, metadata !446, null}
!446 = metadata !{i32 786443, metadata !1, metadata !431, i32 219, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!447 = metadata !{i32 221, i32 0, metadata !446, null}
!448 = metadata !{i32 222, i32 0, metadata !446, null}
!449 = metadata !{i32 223, i32 0, metadata !446, null}
!450 = metadata !{i32 224, i32 0, metadata !446, null}
!451 = metadata !{i32 225, i32 0, metadata !446, null}
!452 = metadata !{i32 229, i32 0, metadata !446, null}
!453 = metadata !{i32 174, i32 0, metadata !178, metadata !454}
!454 = metadata !{i32 231, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !446, i32 230, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!456 = metadata !{i32 786689, metadata !178, metadata !"fn", metadata !74, i32 16777390, metadata !122, i32 0, metadata !454} ; [ DW_TAG_arg_variable ] [fn] [line 174]
!457 = metadata !{i32 177, i32 0, metadata !178, metadata !454}
!458 = metadata !{i32 180, i32 0, metadata !178, metadata !454}
!459 = metadata !{i32 786688, metadata !178, metadata !"fp", metadata !74, i32 176, metadata !184, i32 0, metadata !454} ; [ DW_TAG_auto_variable ] [fp] [line 176]
!460 = metadata !{i32 181, i32 0, metadata !178, metadata !454}
!461 = metadata !{i32 182, i32 0, metadata !178, metadata !454}
!462 = metadata !{i32 786688, metadata !178, metadata !"bEmpty", metadata !74, i32 178, metadata !86, i32 0, metadata !454} ; [ DW_TAG_auto_variable ] [bEmpty] [line 178]
!463 = metadata !{i32 183, i32 0, metadata !178, metadata !454}
!464 = metadata !{i32 185, i32 0, metadata !178, metadata !454}
!465 = metadata !{i32 232, i32 0, metadata !455, null}
!466 = metadata !{i32 234, i32 0, metadata !455, null}
!467 = metadata !{i32 237, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !446, i32 237, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!469 = metadata !{i32 238, i32 0, metadata !468, null}
!470 = metadata !{i32 239, i32 0, metadata !446, null}
!471 = metadata !{i32 241, i32 0, metadata !431, null}
!472 = metadata !{i32 242, i32 0, metadata !431, null}
!473 = metadata !{i32 243, i32 0, metadata !431, null}
!474 = metadata !{i32 244, i32 0, metadata !431, null}
!475 = metadata !{i32 248, i32 0, metadata !134, null}
!476 = metadata !{i32 250, i32 0, metadata !134, null}
!477 = metadata !{i32 112, i32 0, metadata !241, null}
!478 = metadata !{i32 114, i32 0, metadata !241, null}
!479 = metadata !{i32 115, i32 0, metadata !241, null}
!480 = metadata !{i32 116, i32 0, metadata !241, null}
!481 = metadata !{i32 118, i32 0, metadata !241, null}
!482 = metadata !{i32 119, i32 0, metadata !241, null}
!483 = metadata !{i32 120, i32 0, metadata !241, null}
!484 = metadata !{i32 121, i32 0, metadata !241, null}
!485 = metadata !{i32 122, i32 0, metadata !241, null}
!486 = metadata !{i32 123, i32 0, metadata !241, null}
!487 = metadata !{i32 124, i32 0, metadata !241, null}
!488 = metadata !{i32 142, i32 0, metadata !489, null}
!489 = metadata !{i32 786443, metadata !1, metadata !490, i32 142, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!490 = metadata !{i32 786443, metadata !1, metadata !241, i32 141, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!491 = metadata !{i32 143, i32 0, metadata !489, null}
!492 = metadata !{i32 126, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !241, i32 124, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!494 = metadata !{i32 127, i32 0, metadata !493, null}
!495 = metadata !{i32 129, i32 0, metadata !241, null}
!496 = metadata !{i32 130, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !241, i32 129, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!498 = metadata !{i32 131, i32 0, metadata !497, null}
!499 = metadata !{i32 132, i32 0, metadata !497, null}
!500 = metadata !{i32 133, i32 0, metadata !501, null}
!501 = metadata !{i32 786443, metadata !1, metadata !497, i32 133, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!502 = metadata !{i32 134, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !501, i32 133, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!504 = metadata !{i32 135, i32 0, metadata !503, null}
!505 = metadata !{i32 137, i32 0, metadata !497, null}
!506 = metadata !{i32 138, i32 0, metadata !497, null}
!507 = metadata !{i32 139, i32 0, metadata !241, null}
!508 = metadata !{i32 140, i32 0, metadata !241, null}
!509 = metadata !{i32 144, i32 0, metadata !489, null}
!510 = metadata !{i32 146, i32 0, metadata !241, null}
!511 = metadata !{i32 147, i32 0, metadata !241, null}
!512 = metadata !{i32 149, i32 0, metadata !241, null}
!513 = metadata !{i32 151, i32 0, metadata !241, null}
!514 = metadata !{i32 152, i32 0, metadata !241, null}
!515 = metadata !{i32 253, i32 0, metadata !146, null}
!516 = metadata !{i32 256, i32 0, metadata !146, null}
!517 = metadata !{i32 257, i32 0, metadata !146, null}
!518 = metadata !{i32 259, i32 0, metadata !146, null}
!519 = metadata !{i32 260, i32 0, metadata !146, null}
!520 = metadata !{i32 261, i32 0, metadata !146, null}
!521 = metadata !{i32 262, i32 0, metadata !522, null}
!522 = metadata !{i32 786443, metadata !1, metadata !146, i32 261, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!523 = metadata !{i32 263, i32 0, metadata !522, null}
!524 = metadata !{i32 265, i32 0, metadata !522, null}
!525 = metadata !{i32 266, i32 0, metadata !146, null}
!526 = metadata !{i32 268, i32 0, metadata !146, null}
!527 = metadata !{i32 269, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !146, i32 268, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!529 = metadata !{i32 270, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !528, i32 269, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!531 = metadata !{i32 271, i32 0, metadata !530, null}
!532 = metadata !{i32 272, i32 0, metadata !530, null}
!533 = metadata !{metadata !"float", metadata !338}
!534 = metadata !{i32 277, i32 0, metadata !146, null}
!535 = metadata !{i32 278, i32 0, metadata !536, null}
!536 = metadata !{i32 786443, metadata !1, metadata !146, i32 277, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!537 = metadata !{i32 279, i32 0, metadata !536, null}
!538 = metadata !{i32 280, i32 0, metadata !536, null}
!539 = metadata !{i32 281, i32 0, metadata !536, null}
!540 = metadata !{i32 283, i32 0, metadata !146, null}
!541 = metadata !{i32 284, i32 0, metadata !542, null}
!542 = metadata !{i32 786443, metadata !1, metadata !146, i32 284, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!543 = metadata !{i32 285, i32 0, metadata !542, null}
!544 = metadata !{i32 286, i32 0, metadata !146, null}
!545 = metadata !{i32 287, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !146, i32 286, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!547 = metadata !{i32 288, i32 0, metadata !546, null}
!548 = metadata !{i32 289, i32 0, metadata !546, null}
!549 = metadata !{i32 292, i32 0, metadata !546, null}
!550 = metadata !{i32 293, i32 0, metadata !146, null}
!551 = metadata !{i32 294, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !146, i32 293, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!553 = metadata !{i32 295, i32 0, metadata !552, null}
!554 = metadata !{i32 296, i32 0, metadata !552, null}
!555 = metadata !{i32 297, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !146, i32 297, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!557 = metadata !{i32 300, i32 0, metadata !558, null}
!558 = metadata !{i32 786443, metadata !1, metadata !556, i32 297, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!559 = metadata !{i32 308, i32 0, metadata !558, null}
!560 = metadata !{i32 303, i32 0, metadata !558, null}
!561 = metadata !{i32 298, i32 0, metadata !558, null}
!562 = metadata !{metadata !"double", metadata !338}
!563 = metadata !{i32 301, i32 0, metadata !558, null}
!564 = metadata !{float 0.000000e+00}
!565 = metadata !{i32 302, i32 0, metadata !558, null}
!566 = metadata !{i32 304, i32 0, metadata !558, null}
!567 = metadata !{i32 307, i32 0, metadata !558, null}
!568 = metadata !{i32 309, i32 0, metadata !558, null}
!569 = metadata !{i32 311, i32 0, metadata !558, null}
!570 = metadata !{i32 313, i32 0, metadata !146, null}
!571 = metadata !{i32 314, i32 0, metadata !164, null}
!572 = metadata !{i32 315, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !164, i32 314, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!574 = metadata !{i32 316, i32 0, metadata !573, null}
!575 = metadata !{i32 317, i32 0, metadata !573, null}
!576 = metadata !{i32 318, i32 0, metadata !573, null}
!577 = metadata !{i32 319, i32 0, metadata !162, null}
!578 = metadata !{i32 320, i32 0, metadata !164, null}
!579 = metadata !{i32 321, i32 0, metadata !171, null}
!580 = metadata !{i32 321, i32 0, metadata !170, null}
!581 = metadata !{i32 319, i32 0, metadata !161, null}
!582 = metadata !{i32 321, i32 0, metadata !169, null}
!583 = metadata !{i32 322, i32 0, metadata !164, null}
!584 = metadata !{i32 323, i32 0, metadata !164, null}
!585 = metadata !{i32 324, i32 0, metadata !177, null}
!586 = metadata !{i32 332, i32 0, metadata !146, null}
!587 = metadata !{i32 325, i32 0, metadata !176, null}
!588 = metadata !{i32 326, i32 0, metadata !589, null}
!589 = metadata !{i32 786443, metadata !1, metadata !176, i32 325, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!590 = metadata !{i32 329, i32 0, metadata !173, null}
!591 = metadata !{i32 327, i32 0, metadata !589, null}
!592 = metadata !{i32 328, i32 0, metadata !589, null}
!593 = metadata !{i32 329, i32 0, metadata !174, null}
!594 = metadata !{i32 330, i32 0, metadata !176, null}
!595 = metadata !{i32 333, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !146, i32 332, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!597 = metadata !{i32 334, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !1, metadata !596, i32 333, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/enxio.c]
!599 = metadata !{i32 336, i32 0, metadata !598, null}
!600 = metadata !{i32 338, i32 0, metadata !598, null}
!601 = metadata !{i32 339, i32 0, metadata !596, null}
!602 = metadata !{i32 343, i32 0, metadata !146, null}

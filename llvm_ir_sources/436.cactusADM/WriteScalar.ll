; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.anon.1 = type { double, double, double, double, double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%union.anon = type { i8* }
%union.anon.0 = type { %struct.cGH* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ioAdvertisedFileDesc = type { i8*, i8*, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.PNamedData = type { %struct.PNamedData*, %struct.PNamedData*, i8*, i8* }

@iobasicpriv_ = external global %struct.anon
@iorest_ = external global %struct.anon.1
@.str = private unnamed_addr constant [69 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"IOBasic_WriteScalarGA: No scalar output for '%s' (no storage)\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"%%%s\09%%%s\0A\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"gnuplot\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c".asc\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c".xg\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGA: Invalid reduction operator '%s'\00", align 1
@CCTK_MyProc = external global i32 (%struct.cGH*)*
@.str8 = private unnamed_addr constant [10 x i8] c"%s%s_%s%s\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str10 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"maximum\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str13 = private unnamed_addr constant [6 x i8] c"norm1\00", align 1
@.str14 = private unnamed_addr constant [4 x i8] c"nm1\00", align 1
@.str15 = private unnamed_addr constant [6 x i8] c"norm2\00", align 1
@.str16 = private unnamed_addr constant [4 x i8] c"nm2\00", align 1
@.str17 = private unnamed_addr constant [11 x i8] c"%s%s_%s.tl\00", align 1
@.str18 = private unnamed_addr constant [25 x i8] c"Reduction on Grid Arrays\00", align 1
@.str19 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGA: Could not open output file '%s'\00", align 1
@.str20 = private unnamed_addr constant [62 x i8] c"IOBasic_WriteScalarGS: No scalar output for '%s' (no storage)\00", align 1
@.str21 = private unnamed_addr constant [10 x i8] c"%%%s\09%%d\0A\00", align 1
@.str22 = private unnamed_addr constant [4 x i8] c".tl\00", align 1
@.str23 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str24 = private unnamed_addr constant [3 x i8] c"tl\00", align 1
@.str25 = private unnamed_addr constant [13 x i8] c"Scalar value\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"Unsupported data type\00", align 1
@.str27 = private unnamed_addr constant [55 x i8] c"IOBasic_WriteScalarGS: Could not open output file '%s'\00", align 1
@.str28 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str29 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str30 = private unnamed_addr constant [20 x i8] c"application/gnuplot\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"application/x-graph\00", align 1
@.str32 = private unnamed_addr constant [19 x i8] c"parameter filename\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str34 = private unnamed_addr constant [21 x i8] c"%cParameter file %s\0A\00", align 1
@.str35 = private unnamed_addr constant [14 x i8] c"creation date\00", align 1
@.str36 = private unnamed_addr constant [14 x i8] c"%cCreated %s \00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str38 = private unnamed_addr constant [12 x i8] c"axis labels\00", align 1
@.str39 = private unnamed_addr constant [16 x i8] c"%cx-label time\0A\00", align 1
@.str40 = private unnamed_addr constant [14 x i8] c"%cy-label %s\0A\00", align 1
@.str41 = private unnamed_addr constant [13 x i8] c"%c%s v time\0A\00", align 1
@.str42 = private unnamed_addr constant [93 x i8] c"$Header: /cactus/CactusBase/IOBasic/src/WriteScalar.c,v 1.7 2002/01/18 15:30:33 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_IOBasic_WriteScalar_c() #0 {
entry:
  ret i8* getelementptr inbounds ([93 x i8]* @.str42, i64 0, i64 0), !dbg !324
}

; Function Attrs: nounwind optsize uwtable
define i32 @IOBasic_WriteScalarGA(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
entry:
  %format_str = alloca [15 x i8], align 1
  %reduction_value = alloca double, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !70), !dbg !325
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !71), !dbg !325
  call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !72), !dbg !325
  call void @llvm.dbg.declare(metadata !{[15 x i8]* %format_str}, metadata !177), !dbg !326
  call void @llvm.dbg.declare(metadata !{double* %reduction_value}, metadata !183), !dbg !327
  call void @llvm.dbg.declare(metadata !328, metadata !184), !dbg !329
  call void @llvm.dbg.declare(metadata !330, metadata !189), !dbg !331
  %0 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 2), align 8, !dbg !332, !tbaa !333
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !197), !dbg !332
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !dbg !332, !tbaa !333
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !198), !dbg !332
  %2 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 5), align 8, !dbg !332, !tbaa !333
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !200), !dbg !332
  %3 = load i32* getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 28), align 4, !dbg !332, !tbaa !336
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !208), !dbg !332
  %call = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #8, !dbg !337
  %call2 = call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %call) #8, !dbg !337
  %tobool = icmp eq i32 %call2, 0, !dbg !337
  br i1 %tobool, label %if.then, label %if.end, !dbg !337

if.then:                                          ; preds = %entry
  %call3 = call i8* @CCTK_FullName(i32 %vindex) #8, !dbg !338
  call void @llvm.dbg.value(metadata !{i8* %call3}, i64 0, metadata !182), !dbg !338
  %call4 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 112, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), i8* %call3) #8, !dbg !340
  call void @free(i8* %call3) #8, !dbg !341
  br label %return, !dbg !342

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [15 x i8]* %format_str, i64 0, i64 0, !dbg !343
  %call5 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* %2, i8* %2) #8, !dbg !343
  %call6 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !344
  call void @llvm.dbg.value(metadata !{i8* %cond}, i64 0, metadata !181), !dbg !344
  %call8 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !345
  %call10 = call i64 @strlen(i8* %0) #9, !dbg !346
  %add = add i64 %call10, 1, !dbg !346
  %call11 = call noalias i8* @malloc(i64 %add) #8, !dbg !346
  call void @llvm.dbg.value(metadata !{i8* %call11}, i64 0, metadata !174), !dbg !346
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !175), !dbg !347
  %tobool12168170 = icmp eq i8* %0, null, !dbg !348
  br i1 %tobool12168170, label %while.end115, label %land.rhs.lr.ph.lr.ph, !dbg !348

land.rhs.lr.ph.lr.ph:                             ; preds = %if.end
  %tobool7 = icmp ne i32 %call6, 0, !dbg !344
  %cond = select i1 %tobool7, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), !dbg !344
  %4 = bitcast double* %reduction_value to i8*, !dbg !349
  %tobool56 = icmp eq i32 %3, 0, !dbg !351
  %outdirScalar94 = getelementptr inbounds i8* %call8, i64 24, !dbg !353
  %5 = bitcast i8* %outdirScalar94 to i8**, !dbg !353
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !355
  br label %land.rhs.lr.ph, !dbg !348

land.rhs.lr.ph:                                   ; preds = %if.end113, %land.rhs.lr.ph.lr.ph
  %string_start.0.ph172 = phi i8* [ %0, %land.rhs.lr.ph.lr.ph ], [ %string_end.0, %if.end113 ]
  %file_extension.0.ph171 = phi i8* [ %cond, %land.rhs.lr.ph.lr.ph ], [ %file_extension.2, %if.end113 ]
  br label %land.rhs, !dbg !348

land.rhs:                                         ; preds = %if.end47, %land.lhs.true, %if.then45, %land.rhs.lr.ph
  %string_start.0169 = phi i8* [ %string_start.0.ph172, %land.rhs.lr.ph ], [ %string_end.0, %if.then45 ], [ %string_end.0, %land.lhs.true ], [ %string_end.0, %if.end47 ]
  %6 = load i8* %string_start.0169, align 1, !dbg !348, !tbaa !334
  %tobool13 = icmp eq i8 %6, 0, !dbg !348
  br i1 %tobool13, label %while.end115, label %while.cond14.preheader

while.cond14.preheader:                           ; preds = %land.rhs
  %call16 = call i16** @__ctype_b_loc() #10, !dbg !357
  %7 = load i16** %call16, align 8, !dbg !357, !tbaa !333
  br label %while.cond14, !dbg !357

while.cond14:                                     ; preds = %while.cond14.while.cond14_crit_edge, %while.cond14.preheader
  %8 = phi i8 [ %.pre, %while.cond14.while.cond14_crit_edge ], [ %6, %while.cond14.preheader ]
  %string_start.1 = phi i8* [ %incdec.ptr, %while.cond14.while.cond14_crit_edge ], [ %string_start.0169, %while.cond14.preheader ]
  %idxprom = sext i8 %8 to i64, !dbg !357
  %arrayidx = getelementptr inbounds i16* %7, i64 %idxprom, !dbg !357
  %9 = load i16* %arrayidx, align 2, !dbg !357, !tbaa !358
  %and = and i16 %9, 8192, !dbg !357
  %tobool18 = icmp eq i16 %and, 0, !dbg !357
  %incdec.ptr = getelementptr inbounds i8* %string_start.1, i64 1, !dbg !359
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !175), !dbg !359
  br i1 %tobool18, label %while.end, label %while.cond14.while.cond14_crit_edge, !dbg !357

while.cond14.while.cond14_crit_edge:              ; preds = %while.cond14
  %.pre = load i8* %incdec.ptr, align 1, !dbg !357, !tbaa !334
  br label %while.cond14, !dbg !357

while.end:                                        ; preds = %while.cond14
  %tobool20 = icmp eq i8 %8, 0, !dbg !361
  br i1 %tobool20, label %while.end115, label %while.cond23, !dbg !361

while.cond23:                                     ; preds = %while.end, %land.rhs26
  %string_start.1.pn = phi i8* [ %string_end.0, %land.rhs26 ], [ %string_start.1, %while.end ]
  %string_end.0 = getelementptr inbounds i8* %string_start.1.pn, i64 1, !dbg !362
  %10 = load i8* %string_end.0, align 1, !dbg !363, !tbaa !334
  %tobool25 = icmp eq i8 %10, 0, !dbg !363
  br i1 %tobool25, label %while.end37, label %land.rhs26, !dbg !363

land.rhs26:                                       ; preds = %while.cond23
  %idxprom28 = sext i8 %10 to i64, !dbg !363
  %arrayidx30 = getelementptr inbounds i16* %7, i64 %idxprom28, !dbg !363
  %11 = load i16* %arrayidx30, align 2, !dbg !363, !tbaa !358
  %and32 = and i16 %11, 8192, !dbg !363
  %lnot = icmp eq i16 %and32, 0, !dbg !363
  br i1 %lnot, label %while.cond23, label %while.end37

while.end37:                                      ; preds = %while.cond23, %land.rhs26
  %sub.ptr.lhs.cast = ptrtoint i8* %string_end.0 to i64, !dbg !364
  %sub.ptr.rhs.cast = ptrtoint i8* %string_start.1 to i64, !dbg !364
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !364
  %call38 = call i8* @strncpy(i8* %call11, i8* %string_start.1, i64 %sub.ptr.sub) #8, !dbg !364
  %arrayidx42 = getelementptr inbounds i8* %call11, i64 %sub.ptr.sub, !dbg !365
  store i8 0, i8* %arrayidx42, align 1, !dbg !365, !tbaa !334
  call void @llvm.dbg.value(metadata !{i8* %string_end.0}, i64 0, metadata !175), !dbg !366
  %call43 = call i32 @CCTK_ReductionHandle(i8* %call11) #8, !dbg !367
  call void @llvm.dbg.value(metadata !{i32 %call43}, i64 0, metadata !74), !dbg !367
  %cmp = icmp slt i32 %call43, 0, !dbg !368
  br i1 %cmp, label %if.then45, label %if.end47, !dbg !368

if.then45:                                        ; preds = %while.end37
  %call46 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 161, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* %call11) #8, !dbg !369
  br label %land.rhs, !dbg !371

if.end47:                                         ; preds = %while.end37
  %call49 = call i32 (%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...)* @CCTK_Reduce(%struct.cGH* %GH, i32 0, i32 %call43, i32 1, i32 6, i8* %4, i32 1, i32 %vindex) #8, !dbg !349
  call void @llvm.dbg.value(metadata !{i32 %call49}, i64 0, metadata !73), !dbg !349
  %cmp50 = icmp eq i32 %call49, 0, !dbg !372
  br i1 %cmp50, label %land.lhs.true, label %land.rhs, !dbg !372

land.lhs.true:                                    ; preds = %if.end47
  %12 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !372, !tbaa !333
  %call52 = call i32 %12(%struct.cGH* %GH) #8, !dbg !372
  %cmp53 = icmp eq i32 %call52, 0, !dbg !372
  br i1 %cmp53, label %if.then55, label %land.rhs, !dbg !372

if.then55:                                        ; preds = %land.lhs.true
  br i1 %tobool56, label %if.else, label %if.then57, !dbg !351

if.then57:                                        ; preds = %if.then55
  %13 = load i8** %5, align 8, !dbg !373, !tbaa !333
  %call59 = call i64 @strlen(i8* %13) #9, !dbg !373
  %call60 = call i64 @strlen(i8* %alias) #9, !dbg !375
  %call62 = call i64 @strlen(i8* %call11) #9, !dbg !375
  %call64 = call i64 @strlen(i8* %file_extension.0.ph171) #9, !dbg !376
  %add61 = add i64 %call59, 2, !dbg !375
  %add63 = add i64 %add61, %call60, !dbg !375
  %add65 = add i64 %add63, %call62, !dbg !376
  %add66 = add i64 %add65, %call64, !dbg !376
  %call67 = call noalias i8* @malloc(i64 %add66) #8, !dbg !376
  call void @llvm.dbg.value(metadata !{i8* %call67}, i64 0, metadata !173), !dbg !376
  %14 = load i8** %5, align 8, !dbg !377, !tbaa !333
  %call69 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call67, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), i8* %14, i8* %alias, i8* %call11, i8* %file_extension.0.ph171) #8, !dbg !377
  br label %if.end104, !dbg !378

if.else:                                          ; preds = %if.then55
  %call70 = call i32 @strcmp(i8* %call11, i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0)) #9, !dbg !379
  %cmp71 = icmp eq i32 %call70, 0, !dbg !379
  br i1 %cmp71, label %if.end93, label %if.else74, !dbg !379

if.else74:                                        ; preds = %if.else
  %call75 = call i32 @strcmp(i8* %call11, i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0)) #9, !dbg !380
  %cmp76 = icmp eq i32 %call75, 0, !dbg !380
  br i1 %cmp76, label %if.end93, label %if.else79, !dbg !380

if.else79:                                        ; preds = %if.else74
  %call80 = call i32 @strcmp(i8* %call11, i8* getelementptr inbounds ([6 x i8]* @.str13, i64 0, i64 0)) #9, !dbg !381
  %cmp81 = icmp eq i32 %call80, 0, !dbg !381
  br i1 %cmp81, label %if.end93, label %if.else84, !dbg !381

if.else84:                                        ; preds = %if.else79
  %call85 = call i32 @strcmp(i8* %call11, i8* getelementptr inbounds ([6 x i8]* @.str15, i64 0, i64 0)) #9, !dbg !382
  %cmp86 = icmp eq i32 %call85, 0, !dbg !382
  %.call11 = select i1 %cmp86, i8* getelementptr inbounds ([4 x i8]* @.str16, i64 0, i64 0), i8* %call11, !dbg !383
  br label %if.end93, !dbg !383

if.end93:                                         ; preds = %if.else84, %if.else79, %if.else74, %if.else
  %file_extension.1 = phi i8* [ getelementptr inbounds ([4 x i8]* @.str10, i64 0, i64 0), %if.else ], [ getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0), %if.else74 ], [ getelementptr inbounds ([4 x i8]* @.str14, i64 0, i64 0), %if.else79 ], [ %.call11, %if.else84 ]
  %15 = load i8** %5, align 8, !dbg !353, !tbaa !333
  %call95 = call i64 @strlen(i8* %15) #9, !dbg !353
  %call96 = call i64 @strlen(i8* %alias) #9, !dbg !385
  %call98 = call i64 @strlen(i8* %file_extension.1) #9, !dbg !385
  %add97 = add i64 %call95, 5, !dbg !385
  %add99 = add i64 %add97, %call96, !dbg !385
  %add100 = add i64 %add99, %call98, !dbg !385
  %call101 = call noalias i8* @malloc(i64 %add100) #8, !dbg !385
  call void @llvm.dbg.value(metadata !{i8* %call101}, i64 0, metadata !173), !dbg !385
  %16 = load i8** %5, align 8, !dbg !386, !tbaa !333
  %call103 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call101, i8* getelementptr inbounds ([11 x i8]* @.str17, i64 0, i64 0), i8* %16, i8* %alias, i8* %file_extension.1) #8, !dbg !386
  br label %if.end104

if.end104:                                        ; preds = %if.end93, %if.then57
  %file_extension.2 = phi i8* [ %file_extension.0.ph171, %if.then57 ], [ %file_extension.1, %if.end93 ]
  %filename.0 = phi i8* [ %call67, %if.then57 ], [ %call101, %if.end93 ]
  %call105 = call fastcc %struct._IO_FILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %filename.0, i8* %call11, i8* getelementptr inbounds ([25 x i8]* @.str18, i64 0, i64 0), i8* %alias) #11, !dbg !387
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call105}, i64 0, metadata !118), !dbg !387
  %tobool106 = icmp eq %struct._IO_FILE* %call105, null, !dbg !388
  br i1 %tobool106, label %if.else111, label %if.then107, !dbg !388

if.then107:                                       ; preds = %if.end104
  %17 = load double* %cctk_time, align 8, !dbg !355, !tbaa !389
  call void @llvm.dbg.value(metadata !{double* %reduction_value}, i64 0, metadata !183), !dbg !355
  %18 = load double* %reduction_value, align 8, !dbg !355, !tbaa !389
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call105, i8* %arraydecay, double %17, double %18) #8, !dbg !355
  %call110 = call i32 @fclose(%struct._IO_FILE* %call105) #8, !dbg !390
  br label %if.end113, !dbg !391

if.else111:                                       ; preds = %if.end104
  %call112 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 225, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str19, i64 0, i64 0), i8* %filename.0) #8, !dbg !392
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then107
  call void @free(i8* %filename.0) #8, !dbg !394
  br label %land.rhs.lr.ph, !dbg !348

while.end115:                                     ; preds = %if.end, %while.end, %land.rhs
  call void @free(i8* %call11) #8, !dbg !395
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !210), !dbg !397
  br label %return, !dbg !397

return:                                           ; preds = %while.end115, %if.then
  %retval.0 = phi i32 [ 0, %while.end115 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !397
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorageI(%struct.cGH*, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #3

; Function Attrs: optsize
declare i8* @CCTK_FullName(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #4

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #3

; Function Attrs: optsize
declare i8* @CCTK_GHExtension(%struct.cGH*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #4

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind optsize
declare i8* @strncpy(i8*, i8* nocapture, i64) #4

; Function Attrs: optsize
declare i32 @CCTK_ReductionHandle(i8*) #3

; Function Attrs: optsize
declare i32 @CCTK_Reduce(%struct.cGH*, i32, i32, i32, i32, i8*, i32, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias %struct._IO_FILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %filename, i8* %slicename, i8* %description, i8* %aliasname) #1 {
entry:
  %buffer = alloca [128 x i8], align 16
  %advertised_file = alloca %struct.ioAdvertisedFileDesc, align 8
  %fileinfo = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !245), !dbg !398
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !246), !dbg !399
  call void @llvm.dbg.value(metadata !{i8* %filename}, i64 0, metadata !247), !dbg !400
  call void @llvm.dbg.value(metadata !{i8* %slicename}, i64 0, metadata !248), !dbg !401
  call void @llvm.dbg.value(metadata !{i8* %description}, i64 0, metadata !249), !dbg !402
  call void @llvm.dbg.value(metadata !{i8* %aliasname}, i64 0, metadata !250), !dbg !403
  %0 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !dbg !404, !tbaa !333
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !254), !dbg !404
  %1 = load i8** getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 14), align 8, !dbg !404, !tbaa !333
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !264), !dbg !404
  %2 = getelementptr inbounds [128 x i8]* %buffer, i64 0, i64 0, !dbg !405
  call void @llvm.lifetime.start(i64 128, i8* %2) #7, !dbg !405
  call void @llvm.dbg.declare(metadata !{[128 x i8]* %buffer}, metadata !268), !dbg !405
  %3 = bitcast %struct.ioAdvertisedFileDesc* %advertised_file to i8*, !dbg !406
  call void @llvm.lifetime.start(i64 40, i8* %3) #7, !dbg !406
  call void @llvm.dbg.declare(metadata !{%struct.ioAdvertisedFileDesc* %advertised_file}, metadata !272), !dbg !406
  %4 = bitcast %struct.stat* %fileinfo to i8*, !dbg !407
  call void @llvm.lifetime.start(i64 144, i8* %4) #7, !dbg !407
  call void @llvm.dbg.declare(metadata !{%struct.stat* %fileinfo}, metadata !285), !dbg !407
  %call = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !408
  %call1 = call i8* @CCTK_FullName(i32 %vindex) #8, !dbg !409
  call void @llvm.dbg.value(metadata !{i8* %call1}, i64 0, metadata !284), !dbg !409
  %filenameListScalar = getelementptr inbounds i8* %call, i64 56, !dbg !410
  %5 = bitcast i8* %filenameListScalar to %struct.PNamedData**, !dbg !410
  %6 = load %struct.PNamedData** %5, align 8, !dbg !410, !tbaa !333
  %call2 = call i8* @GetNamedData(%struct.PNamedData* %6, i8* %filename) #8, !dbg !410
  %cmp = icmp eq i8* %call2, null, !dbg !410
  br i1 %cmp, label %if.then, label %if.end8, !dbg !410

if.then:                                          ; preds = %entry
  %call3 = call i32 @IOUtil_RestartFromRecovery(%struct.cGH* %GH) #8, !dbg !411
  %tobool = icmp eq i32 %call3, 0, !dbg !411
  br i1 %tobool, label %if.end8, label %if.then4, !dbg !411

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @stat(i8* %filename, %struct.stat* %fileinfo) #8, !dbg !413
  %cmp6 = icmp eq i32 %call5, 0, !dbg !413
  %cond = select i1 %cmp6, i8* getelementptr inbounds ([2 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0), !dbg !413
  call void @llvm.dbg.value(metadata !{i8* %cond}, i64 0, metadata !283), !dbg !413
  br label %if.end8, !dbg !413

if.end8:                                          ; preds = %entry, %if.then, %if.then4
  %openmode.0 = phi i8* [ %cond, %if.then4 ], [ getelementptr inbounds ([2 x i8]* @.str29, i64 0, i64 0), %if.then ], [ getelementptr inbounds ([2 x i8]* @.str28, i64 0, i64 0), %entry ]
  %call9 = call %struct._IO_FILE* @fopen(i8* %filename, i8* %openmode.0) #8, !dbg !414
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call9}, i64 0, metadata !266), !dbg !414
  %tobool10 = icmp eq %struct._IO_FILE* %call9, null, !dbg !415
  br i1 %tobool10, label %if.end65, label %land.lhs.true, !dbg !415

land.lhs.true:                                    ; preds = %if.end8
  %7 = load i8* %openmode.0, align 1, !dbg !415, !tbaa !334
  %cmp11 = icmp eq i8 %7, 119, !dbg !415
  br i1 %cmp11, label %if.then13, label %if.end65, !dbg !415

if.then13:                                        ; preds = %land.lhs.true
  %call14 = call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !416
  %tobool15 = icmp eq i32 %call14, 0, !dbg !416
  %mimetype18 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 2, !dbg !418
  %. = select i1 %tobool15, i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str30, i64 0, i64 0)
  %.91 = select i1 %tobool15, i32 34, i32 35
  store i8* %., i8** %mimetype18, align 8, !dbg !418, !tbaa !333
  %call21 = call i32 @StoreNamedData(%struct.PNamedData** %5, i8* %filename, i8* inttoptr (i64 1 to i8*)) #8, !dbg !420
  %slice = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 3, !dbg !421
  store i8* %slicename, i8** %slice, align 8, !dbg !421, !tbaa !333
  %thorn = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 0, !dbg !422
  store i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8** %thorn, align 8, !dbg !422, !tbaa !333
  %varname = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 1, !dbg !423
  store i8* %call1, i8** %varname, align 8, !dbg !423, !tbaa !333
  %description22 = getelementptr inbounds %struct.ioAdvertisedFileDesc* %advertised_file, i64 0, i32 4, !dbg !424
  store i8* %description, i8** %description22, align 8, !dbg !424, !tbaa !333
  %call23 = call i32 @IOUtil_AdvertiseFile(%struct.cGH* %GH, i8* %filename, %struct.ioAdvertisedFileDesc* %advertised_file) #8, !dbg !425
  %call24 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([19 x i8]* @.str32, i64 0, i64 0)) #8, !dbg !426
  %tobool25 = icmp eq i32 %call24, 0, !dbg !426
  br i1 %tobool25, label %lor.lhs.false, label %if.then28, !dbg !426

lor.lhs.false:                                    ; preds = %if.then13
  %call26 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0)) #8, !dbg !427
  %tobool27 = icmp eq i32 %call26, 0, !dbg !427
  br i1 %tobool27, label %if.end33, label %if.then28, !dbg !427

if.then28:                                        ; preds = %lor.lhs.false, %if.then13
  store i8 0, i8* %2, align 16, !dbg !428, !tbaa !334
  %call29 = call i32 @CCTK_ParameterFilename(i32 128, i8* %2) #8, !dbg !430
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call9, i8* getelementptr inbounds ([21 x i8]* @.str34, i64 0, i64 0), i32 %.91, i8* %2) #8, !dbg !431
  br label %if.end33, !dbg !432

if.end33:                                         ; preds = %lor.lhs.false, %if.then28
  %call34 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([14 x i8]* @.str35, i64 0, i64 0)) #8, !dbg !433
  %tobool35 = icmp eq i32 %call34, 0, !dbg !433
  br i1 %tobool35, label %lor.lhs.false36, label %if.then39, !dbg !433

lor.lhs.false36:                                  ; preds = %if.end33
  %call37 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0)) #8, !dbg !434
  %tobool38 = icmp eq i32 %call37, 0, !dbg !434
  br i1 %tobool38, label %if.end50, label %if.then39, !dbg !434

if.then39:                                        ; preds = %lor.lhs.false36, %if.end33
  store i8 0, i8* %2, align 16, !dbg !435, !tbaa !334
  %call42 = call i32 @Util_CurrentDate(i32 128, i8* %2) #8, !dbg !437
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call9, i8* getelementptr inbounds ([14 x i8]* @.str36, i64 0, i64 0), i32 %.91, i8* %2) #8, !dbg !438
  %call47 = call i32 @Util_CurrentTime(i32 128, i8* %2) #8, !dbg !439
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call9, i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* %2) #8, !dbg !440
  br label %if.end50, !dbg !441

if.end50:                                         ; preds = %lor.lhs.false36, %if.then39
  %call51 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([12 x i8]* @.str38, i64 0, i64 0)) #8, !dbg !442
  %tobool52 = icmp eq i32 %call51, 0, !dbg !442
  br i1 %tobool52, label %lor.lhs.false53, label %if.then56, !dbg !442

lor.lhs.false53:                                  ; preds = %if.end50
  %call54 = call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str33, i64 0, i64 0)) #8, !dbg !443
  %tobool55 = icmp eq i32 %call54, 0, !dbg !443
  br i1 %tobool55, label %if.end62, label %if.then56, !dbg !443

if.then56:                                        ; preds = %lor.lhs.false53, %if.end50
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call9, i8* getelementptr inbounds ([16 x i8]* @.str39, i64 0, i64 0), i32 %.91) #8, !dbg !444
  %8 = load i8** %varname, align 8, !dbg !446, !tbaa !333
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call9, i8* getelementptr inbounds ([14 x i8]* @.str40, i64 0, i64 0), i32 %.91, i8* %8) #8, !dbg !446
  br label %if.end62, !dbg !447

if.end62:                                         ; preds = %lor.lhs.false53, %if.then56
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call9, i8* getelementptr inbounds ([13 x i8]* @.str41, i64 0, i64 0), i32 %.91, i8* %aliasname) #8, !dbg !448
  br label %if.end65, !dbg !449

if.end65:                                         ; preds = %if.end8, %if.end62, %land.lhs.true
  call void @free(i8* %call1) #8, !dbg !450
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !265), !dbg !451
  call void @llvm.lifetime.end(i64 144, i8* %4) #7, !dbg !452
  call void @llvm.lifetime.end(i64 40, i8* %3) #7, !dbg !452
  call void @llvm.lifetime.end(i64 128, i8* %2) #7, !dbg !452
  ret %struct._IO_FILE* %call9, !dbg !452
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #4

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i32 @IOBasic_WriteScalarGS(%struct.cGH* %GH, i32 %vindex, i8* %alias) #1 {
entry:
  %format_str_real = alloca [15 x i8], align 1
  %format_str_int = alloca [15 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !215), !dbg !453
  call void @llvm.dbg.value(metadata !{i32 %vindex}, i64 0, metadata !216), !dbg !453
  call void @llvm.dbg.value(metadata !{i8* %alias}, i64 0, metadata !217), !dbg !453
  %0 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 3), align 8, !dbg !454, !tbaa !333
  call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !221), !dbg !454
  %1 = load i8** getelementptr inbounds (%struct.anon* @iobasicpriv_, i64 0, i32 5), align 8, !dbg !454, !tbaa !333
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !223), !dbg !454
  %2 = load i32* getelementptr inbounds (%struct.anon.1* @iorest_, i64 0, i32 28), align 4, !dbg !454, !tbaa !336
  call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !230), !dbg !454
  call void @llvm.dbg.declare(metadata !{[15 x i8]* %format_str_real}, metadata !239), !dbg !455
  call void @llvm.dbg.declare(metadata !{[15 x i8]* %format_str_int}, metadata !240), !dbg !455
  %3 = load i32 (%struct.cGH*)** @CCTK_MyProc, align 8, !dbg !456, !tbaa !333
  %call = call i32 %3(%struct.cGH* %GH) #8, !dbg !456
  %cmp = icmp eq i32 %call, 0, !dbg !456
  br i1 %cmp, label %if.end, label %return, !dbg !456

if.end:                                           ; preds = %entry
  %call1 = call i32 @CCTK_GroupIndexFromVarI(i32 %vindex) #8, !dbg !457
  %call2 = call i32 @CCTK_QueryGroupStorageI(%struct.cGH* %GH, i32 %call1) #8, !dbg !457
  %tobool = icmp eq i32 %call2, 0, !dbg !457
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !457

if.then3:                                         ; preds = %if.end
  %call4 = call i8* @CCTK_FullName(i32 %vindex) #8, !dbg !458
  call void @llvm.dbg.value(metadata !{i8* %call4}, i64 0, metadata !236), !dbg !458
  %call5 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 2, i32 298, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8]* @.str20, i64 0, i64 0), i8* %call4) #8, !dbg !460
  call void @free(i8* %call4) #8, !dbg !461
  br label %return, !dbg !462

if.end6:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [15 x i8]* %format_str_real, i64 0, i64 0, !dbg !463
  %call7 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* %1, i8* %1) #8, !dbg !463
  %arraydecay8 = getelementptr inbounds [15 x i8]* %format_str_int, i64 0, i64 0, !dbg !464
  %call9 = call i32 (i8*, i8*, ...)* @sprintf(i8* %arraydecay8, i8* getelementptr inbounds ([10 x i8]* @.str21, i64 0, i64 0), i8* %1) #8, !dbg !464
  %call10 = call i8* @CCTK_GHExtension(%struct.cGH* %GH, i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #8, !dbg !465
  %tobool11 = icmp eq i32 %2, 0, !dbg !466
  br i1 %tobool11, label %if.end15, label %if.then12, !dbg !466

if.then12:                                        ; preds = %if.end6
  %call13 = call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #8, !dbg !467
  %tobool14 = icmp ne i32 %call13, 0, !dbg !467
  %cond = select i1 %tobool14, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), !dbg !467
  call void @llvm.dbg.value(metadata !{i8* %cond}, i64 0, metadata !238), !dbg !467
  br label %if.end15, !dbg !469

if.end15:                                         ; preds = %if.end6, %if.then12
  %file_extension.0 = phi i8* [ %cond, %if.then12 ], [ getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), %if.end6 ]
  %outdirScalar16 = getelementptr inbounds i8* %call10, i64 24, !dbg !470
  %4 = bitcast i8* %outdirScalar16 to i8**, !dbg !470
  %5 = load i8** %4, align 8, !dbg !470, !tbaa !333
  %call17 = call i64 @strlen(i8* %5) #9, !dbg !470
  %call18 = call i64 @strlen(i8* %alias) #9, !dbg !470
  %call19 = call i64 @strlen(i8* %file_extension.0) #9, !dbg !471
  %add = add i64 %call17, 1, !dbg !470
  %add20 = add i64 %add, %call18, !dbg !471
  %add21 = add i64 %add20, %call19, !dbg !471
  %call22 = call noalias i8* @malloc(i64 %add21) #8, !dbg !471
  call void @llvm.dbg.value(metadata !{i8* %call22}, i64 0, metadata !237), !dbg !471
  %6 = load i8** %4, align 8, !dbg !472, !tbaa !333
  %call24 = call i32 (i8*, i8*, ...)* @sprintf(i8* %call22, i8* getelementptr inbounds ([7 x i8]* @.str23, i64 0, i64 0), i8* %6, i8* %alias, i8* %file_extension.0) #8, !dbg !472
  %call25 = call fastcc %struct._IO_FILE* @OpenScalarFile(%struct.cGH* %GH, i32 %vindex, i8* %call22, i8* getelementptr inbounds ([3 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str25, i64 0, i64 0), i8* %alias) #11, !dbg !473
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call25}, i64 0, metadata !233), !dbg !473
  %tobool26 = icmp eq %struct._IO_FILE* %call25, null, !dbg !474
  br i1 %tobool26, label %if.else38, label %if.then27, !dbg !474

if.then27:                                        ; preds = %if.end15
  %call28 = call i8* @CCTK_VarDataPtrI(%struct.cGH* %GH, i32 0, i32 %vindex) #8, !dbg !475
  call void @llvm.dbg.value(metadata !{i8* %call28}, i64 0, metadata !234), !dbg !475
  %call29 = call i32 @CCTK_VarTypeI(i32 %vindex) #8, !dbg !477
  switch i32 %call29, label %sw.default [
    i32 6, label %sw.bb
    i32 2, label %sw.bb32
  ], !dbg !477

sw.bb:                                            ; preds = %if.then27
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !478
  %7 = load double* %cctk_time, align 8, !dbg !478, !tbaa !389
  %8 = bitcast i8* %call28 to double*, !dbg !478
  %9 = load double* %8, align 8, !dbg !478, !tbaa !389
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call25, i8* %arraydecay, double %7, double %9) #8, !dbg !478
  br label %sw.epilog, !dbg !480

sw.bb32:                                          ; preds = %if.then27
  %cctk_time34 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !481
  %10 = load double* %cctk_time34, align 8, !dbg !481, !tbaa !389
  %11 = bitcast i8* %call28 to i32*, !dbg !481
  %12 = load i32* %11, align 4, !dbg !481, !tbaa !336
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %call25, i8* %arraydecay8, double %10, i32 %12) #8, !dbg !481
  br label %sw.epilog, !dbg !482

sw.default:                                       ; preds = %if.then27
  %call36 = call i32 @CCTK_Warn(i32 3, i32 345, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0)) #8, !dbg !483
  br label %sw.epilog, !dbg !484

sw.epilog:                                        ; preds = %sw.default, %sw.bb32, %sw.bb
  %call37 = call i32 @fclose(%struct._IO_FILE* %call25) #8, !dbg !485
  br label %if.end40, !dbg !486

if.else38:                                        ; preds = %if.end15
  %call39 = call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 354, i8* getelementptr inbounds ([69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8]* @.str27, i64 0, i64 0), i8* %call22) #8, !dbg !487
  br label %if.end40

if.end40:                                         ; preds = %if.else38, %sw.epilog
  call void @free(i8* %call22) #8, !dbg !489
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  call void @llvm.dbg.value(metadata !396, i64 0, metadata !232), !dbg !490
  br label %return, !dbg !490

return:                                           ; preds = %entry, %if.end40, %if.then3
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -1, %if.then3 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !490
}

; Function Attrs: optsize
declare i8* @CCTK_VarDataPtrI(%struct.cGH*, i32, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_VarTypeI(i32) #3

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i8* @GetNamedData(%struct.PNamedData*, i8*) #3

; Function Attrs: optsize
declare i32 @IOUtil_RestartFromRecovery(%struct.cGH*) #3

; Function Attrs: nounwind optsize
declare i32 @stat(i8* nocapture, %struct.stat* nocapture) #4

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare i32 @StoreNamedData(%struct.PNamedData**, i8*, i8*) #3

; Function Attrs: optsize
declare i32 @IOUtil_AdvertiseFile(%struct.cGH*, i8*, %struct.ioAdvertisedFileDesc*) #3

; Function Attrs: optsize
declare i32 @CCTK_ParameterFilename(i32, i8*) #3

; Function Attrs: optsize
declare i32 @Util_CurrentDate(i32, i8*) #3

; Function Attrs: optsize
declare i32 @Util_CurrentTime(i32, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind optsize readonly }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !322, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !27, metadata !213, metadata !241}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"CCTKi_version_CactusBase_IOBasic_WriteScalar_c", metadata !"CCTKi_version_CactusBase_IOBasic_WriteScalar_c", metadata !"", i32 27, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_IOBasic_WriteScalar_c, null, null, metadata !18, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_CactusBase_IOBasic_WriteScalar_c]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"IOBasic_WriteScalarGA", metadata !"IOBasic_WriteScalarGA", metadata !"", i32 75, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i8*)* @IOBasic_WriteScalarGA, null, null, metadata !69, i32 76} ; [ DW_TAG_subprogram ] [line 75] [def] [scope 76] [IOBasic_WriteScalarGA]
!28 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !31, metadata !30, metadata !24}
!30 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!32 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!33 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !49, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !61, metadata !62}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!41 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!42 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!43 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!44 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!45 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!46 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!47 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !48} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!48 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!49 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !50} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!51 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !50} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!52 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!53 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!54 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !30} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!55 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!56 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !48} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!57 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !58} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!58 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!59 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!61 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !59} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!62 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !63} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!64 = metadata !{i32 786454, metadata !35, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !65} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!65 = metadata !{i32 786451, metadata !35, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !68}
!67 = metadata !{i32 786445, metadata !35, metadata !65, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!68 = metadata !{i32 786445, metadata !35, metadata !65, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !26} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !118, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !181, metadata !182, metadata !183, metadata !184, metadata !189, metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210}
!70 = metadata !{i32 786689, metadata !27, metadata !"GH", metadata !21, i32 16777291, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 75]
!71 = metadata !{i32 786689, metadata !27, metadata !"vindex", metadata !21, i32 33554507, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 75]
!72 = metadata !{i32 786689, metadata !27, metadata !"alias", metadata !21, i32 50331723, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alias] [line 75]
!73 = metadata !{i32 786688, metadata !27, metadata !"ierr", metadata !21, i32 77, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 77]
!74 = metadata !{i32 786688, metadata !27, metadata !"reduction_handle", metadata !21, i32 78, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reduction_handle] [line 78]
!75 = metadata !{i32 786688, metadata !27, metadata !"myGH", metadata !21, i32 79, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 79]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasicGH]
!77 = metadata !{i32 786454, metadata !1, null, metadata !"iobasicGH", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [iobasicGH] [line 52, size 0, align 0, offset 0] [from IOBASIC_GH]
!78 = metadata !{i32 786451, metadata !79, null, metadata !"IOBASIC_GH", i32 29, i64 512, i64 64, i32 0, i32 0, null, metadata !80, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_GH] [line 29, size 512, align 64, offset 0] [from ]
!79 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/iobasicGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!80 = metadata !{metadata !81, metadata !82, metadata !83, metadata !84, metadata !86, metadata !87, metadata !88, metadata !89, metadata !107}
!81 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"outScalar_every", i32 32, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [outScalar_every] [line 32, size 32, align 32, offset 0] [from int]
!82 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"outInfo_every", i32 33, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [outInfo_every] [line 33, size 32, align 32, offset 32] [from int]
!83 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"info_reductions_changed", i32 34, i64 8, i64 8, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [info_reductions_changed] [line 34, size 8, align 8, offset 64] [from char]
!84 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"do_outScalar", i32 37, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [do_outScalar] [line 37, size 64, align 64, offset 128] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!86 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"outdirScalar", i32 40, i64 64, i64 64, i64 192, i32 0, metadata !85} ; [ DW_TAG_member ] [outdirScalar] [line 40, size 64, align 64, offset 192] [from ]
!87 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"outInfo_last", i32 43, i64 64, i64 64, i64 256, i32 0, metadata !40} ; [ DW_TAG_member ] [outInfo_last] [line 43, size 64, align 64, offset 256] [from ]
!88 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"outScalar_last", i32 44, i64 64, i64 64, i64 320, i32 0, metadata !40} ; [ DW_TAG_member ] [outScalar_last] [line 44, size 64, align 64, offset 320] [from ]
!89 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"info_reductions", i32 47, i64 64, i64 64, i64 384, i32 0, metadata !90} ; [ DW_TAG_member ] [info_reductions] [line 47, size 64, align 64, offset 384] [from ]
!90 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasic_reductionlist_t]
!91 = metadata !{i32 786454, metadata !79, null, metadata !"iobasic_reductionlist_t", i32 27, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [iobasic_reductionlist_t] [line 27, size 0, align 0, offset 0] [from IOBASIC_REDUCTIONLIST]
!92 = metadata !{i32 786451, metadata !79, null, metadata !"IOBASIC_REDUCTIONLIST", i32 23, i64 128, i64 64, i32 0, i32 0, null, metadata !93, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_REDUCTIONLIST] [line 23, size 128, align 64, offset 0] [from ]
!93 = metadata !{metadata !94, metadata !96}
!94 = metadata !{i32 786445, metadata !79, metadata !92, metadata !"num_reductions", i32 25, i64 32, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [num_reductions] [line 25, size 32, align 32, offset 0] [from unsigned int]
!95 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!96 = metadata !{i32 786445, metadata !79, metadata !92, metadata !"reductions", i32 26, i64 64, i64 64, i64 64, i32 0, metadata !97} ; [ DW_TAG_member ] [reductions] [line 26, size 64, align 64, offset 64] [from ]
!97 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !98} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from iobasic_reduction_t]
!98 = metadata !{i32 786454, metadata !79, null, metadata !"iobasic_reduction_t", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [iobasic_reduction_t] [line 21, size 0, align 0, offset 0] [from IOBASIC_REDUCTION]
!99 = metadata !{i32 786451, metadata !79, null, metadata !"IOBASIC_REDUCTION", i32 14, i64 320, i64 64, i32 0, i32 0, null, metadata !100, i32 0, null, null} ; [ DW_TAG_structure_type ] [IOBASIC_REDUCTION] [line 14, size 320, align 64, offset 0] [from ]
!100 = metadata !{metadata !101, metadata !102, metadata !103, metadata !104, metadata !105}
!101 = metadata !{i32 786445, metadata !79, metadata !99, metadata !"handle", i32 16, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [handle] [line 16, size 32, align 32, offset 0] [from int]
!102 = metadata !{i32 786445, metadata !79, metadata !99, metadata !"name", i32 17, i64 64, i64 64, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [name] [line 17, size 64, align 64, offset 64] [from ]
!103 = metadata !{i32 786445, metadata !79, metadata !99, metadata !"is_valid", i32 18, i64 8, i64 8, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [is_valid] [line 18, size 8, align 8, offset 128] [from char]
!104 = metadata !{i32 786445, metadata !79, metadata !99, metadata !"value", i32 19, i64 64, i64 64, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [value] [line 19, size 64, align 64, offset 192] [from double]
!105 = metadata !{i32 786445, metadata !79, metadata !99, metadata !"next", i32 20, i64 64, i64 64, i64 256, i32 0, metadata !106} ; [ DW_TAG_member ] [next] [line 20, size 64, align 64, offset 256] [from ]
!106 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !99} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IOBASIC_REDUCTION]
!107 = metadata !{i32 786445, metadata !79, metadata !78, metadata !"filenameListScalar", i32 50, i64 64, i64 64, i64 448, i32 0, metadata !108} ; [ DW_TAG_member ] [filenameListScalar] [line 50, size 64, align 64, offset 448] [from ]
!108 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !109} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from pNamedData]
!109 = metadata !{i32 786454, metadata !79, null, metadata !"pNamedData", i32 26, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [pNamedData] [line 26, size 0, align 0, offset 0] [from PNamedData]
!110 = metadata !{i32 786451, metadata !111, null, metadata !"PNamedData", i32 18, i64 256, i64 64, i32 0, i32 0, null, metadata !112, i32 0, null, null} ; [ DW_TAG_structure_type ] [PNamedData] [line 18, size 256, align 64, offset 0] [from ]
!111 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/StoreNamedData.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!112 = metadata !{metadata !113, metadata !115, metadata !116, metadata !117}
!113 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"last", i32 20, i64 64, i64 64, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [last] [line 20, size 64, align 64, offset 0] [from ]
!114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !110} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from PNamedData]
!115 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"next", i32 21, i64 64, i64 64, i64 64, i32 0, metadata !114} ; [ DW_TAG_member ] [next] [line 21, size 64, align 64, offset 64] [from ]
!116 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"name", i32 23, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [name] [line 23, size 64, align 64, offset 128] [from ]
!117 = metadata !{i32 786445, metadata !111, metadata !110, metadata !"data", i32 25, i64 64, i64 64, i64 192, i32 0, metadata !60} ; [ DW_TAG_member ] [data] [line 25, size 64, align 64, offset 192] [from ]
!118 = metadata !{i32 786688, metadata !27, metadata !"file", metadata !21, i32 80, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 80]
!119 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !120} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!120 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!121 = metadata !{i32 786451, metadata !122, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !123, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!122 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !144, metadata !145, metadata !146, metadata !147, metadata !150, metadata !152, metadata !154, metadata !158, metadata !159, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !168, metadata !169}
!124 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!125 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!126 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!127 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!128 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!129 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!130 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!131 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!132 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!133 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!134 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!135 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !85} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!136 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !137} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!138 = metadata !{i32 786451, metadata !122, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !139, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!139 = metadata !{metadata !140, metadata !141, metadata !143}
!140 = metadata !{i32 786445, metadata !122, metadata !138, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !137} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!141 = metadata !{i32 786445, metadata !122, metadata !138, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !142} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!142 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !121} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!143 = metadata !{i32 786445, metadata !122, metadata !138, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!144 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !142} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!145 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!146 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!147 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !148} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!148 = metadata !{i32 786454, metadata !122, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!149 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!150 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !151} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!151 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!152 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !153} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!153 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!154 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !155} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!155 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !26, metadata !156, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!156 = metadata !{metadata !157}
!157 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!158 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !60} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!159 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !160} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!160 = metadata !{i32 786454, metadata !122, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!161 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !60} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!162 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !60} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!163 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !60} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!164 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !60} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!165 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !166} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!166 = metadata !{i32 786454, metadata !122, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!167 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!168 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!169 = metadata !{i32 786445, metadata !122, metadata !121, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !170} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!170 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !26, metadata !171, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!171 = metadata !{metadata !172}
!172 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!173 = metadata !{i32 786688, metadata !27, metadata !"filename", metadata !21, i32 81, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 81]
!174 = metadata !{i32 786688, metadata !27, metadata !"reduction_op", metadata !21, i32 82, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reduction_op] [line 82]
!175 = metadata !{i32 786688, metadata !27, metadata !"string_start", metadata !21, i32 83, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string_start] [line 83]
!176 = metadata !{i32 786688, metadata !27, metadata !"string_end", metadata !21, i32 84, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [string_end] [line 84]
!177 = metadata !{i32 786688, metadata !27, metadata !"format_str", metadata !21, i32 85, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format_str] [line 85]
!178 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 120, i64 8, i32 0, i32 0, metadata !26, metadata !179, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 120, align 8, offset 0] [from char]
!179 = metadata !{metadata !180}
!180 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 14]
!181 = metadata !{i32 786688, metadata !27, metadata !"file_extension", metadata !21, i32 86, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file_extension] [line 86]
!182 = metadata !{i32 786688, metadata !27, metadata !"fullname", metadata !21, i32 87, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 87]
!183 = metadata !{i32 786688, metadata !27, metadata !"reduction_value", metadata !21, i32 88, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reduction_value] [line 88]
!184 = metadata !{i32 786688, metadata !27, metadata !"reductions", metadata !21, i32 93, metadata !185, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [reductions] [line 93]
!185 = metadata !{i32 786455, metadata !1, metadata !27, metadata !"", i32 89, i64 64, i64 64, i64 0, i32 0, null, metadata !186, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 89, size 64, align 64, offset 0] [from ]
!186 = metadata !{metadata !187, metadata !188}
!187 = metadata !{i32 786445, metadata !1, metadata !185, metadata !"non_const_ptr", i32 91, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [non_const_ptr] [line 91, size 64, align 64, offset 0] [from ]
!188 = metadata !{i32 786445, metadata !1, metadata !185, metadata !"const_ptr", i32 92, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [const_ptr] [line 92, size 64, align 64, offset 0] [from ]
!189 = metadata !{i32 786688, metadata !27, metadata !"GH_fake_const", metadata !21, i32 99, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GH_fake_const] [line 99]
!190 = metadata !{i32 786455, metadata !1, metadata !27, metadata !"", i32 95, i64 64, i64 64, i64 0, i32 0, null, metadata !191, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 95, size 64, align 64, offset 0] [from ]
!191 = metadata !{metadata !192, metadata !193}
!192 = metadata !{i32 786445, metadata !1, metadata !190, metadata !"const_ptr", i32 97, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [const_ptr] [line 97, size 64, align 64, offset 0] [from ]
!193 = metadata !{i32 786445, metadata !1, metadata !190, metadata !"non_const_ptr", i32 98, i64 64, i64 64, i64 0, i32 0, metadata !194} ; [ DW_TAG_member ] [non_const_ptr] [line 98, size 64, align 64, offset 0] [from ]
!194 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!195 = metadata !{i32 786688, metadata !27, metadata !"outInfo_reductions", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_reductions] [line 100]
!196 = metadata !{i32 786688, metadata !27, metadata !"outInfo_vars", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_vars] [line 100]
!197 = metadata !{i32 786688, metadata !27, metadata !"outScalar_reductions", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_reductions] [line 100]
!198 = metadata !{i32 786688, metadata !27, metadata !"outScalar_style", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_style] [line 100]
!199 = metadata !{i32 786688, metadata !27, metadata !"outScalar_vars", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_vars] [line 100]
!200 = metadata !{i32 786688, metadata !27, metadata !"out_format", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_format] [line 100]
!201 = metadata !{i32 786688, metadata !27, metadata !"outdirScalar", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdirScalar] [line 100]
!202 = metadata !{i32 786688, metadata !27, metadata !"outInfo_every", metadata !21, i32 100, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_every] [line 100]
!203 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!204 = metadata !{i32 786688, metadata !27, metadata !"outScalar_every", metadata !21, i32 100, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_every] [line 100]
!205 = metadata !{i32 786688, metadata !27, metadata !"outdir", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 100]
!206 = metadata !{i32 786688, metadata !27, metadata !"out_every", metadata !21, i32 100, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 100]
!207 = metadata !{i32 786688, metadata !27, metadata !"newverbose", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 100]
!208 = metadata !{i32 786688, metadata !27, metadata !"new_filename_scheme", metadata !21, i32 100, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 100]
!209 = metadata !{i32 786688, metadata !27, metadata !"out_fileinfo", metadata !21, i32 100, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 100]
!210 = metadata !{i32 786688, metadata !27, metadata !"cctk_pdummy_pointer", metadata !21, i32 100, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 100]
!211 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!212 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"IOBasic_WriteScalarGS", metadata !"IOBasic_WriteScalarGS", metadata !"", i32 277, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i8*)* @IOBasic_WriteScalarGS, null, null, metadata !214, i32 278} ; [ DW_TAG_subprogram ] [line 277] [def] [scope 278] [IOBasic_WriteScalarGS]
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240}
!215 = metadata !{i32 786689, metadata !213, metadata !"GH", metadata !21, i32 16777493, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 277]
!216 = metadata !{i32 786689, metadata !213, metadata !"vindex", metadata !21, i32 33554709, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 277]
!217 = metadata !{i32 786689, metadata !213, metadata !"alias", metadata !21, i32 50331925, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alias] [line 277]
!218 = metadata !{i32 786688, metadata !213, metadata !"outInfo_reductions", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_reductions] [line 279]
!219 = metadata !{i32 786688, metadata !213, metadata !"outInfo_vars", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_vars] [line 279]
!220 = metadata !{i32 786688, metadata !213, metadata !"outScalar_reductions", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_reductions] [line 279]
!221 = metadata !{i32 786688, metadata !213, metadata !"outScalar_style", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_style] [line 279]
!222 = metadata !{i32 786688, metadata !213, metadata !"outScalar_vars", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_vars] [line 279]
!223 = metadata !{i32 786688, metadata !213, metadata !"out_format", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_format] [line 279]
!224 = metadata !{i32 786688, metadata !213, metadata !"outdirScalar", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdirScalar] [line 279]
!225 = metadata !{i32 786688, metadata !213, metadata !"outInfo_every", metadata !21, i32 279, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_every] [line 279]
!226 = metadata !{i32 786688, metadata !213, metadata !"outScalar_every", metadata !21, i32 279, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_every] [line 279]
!227 = metadata !{i32 786688, metadata !213, metadata !"outdir", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 279]
!228 = metadata !{i32 786688, metadata !213, metadata !"out_every", metadata !21, i32 279, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 279]
!229 = metadata !{i32 786688, metadata !213, metadata !"newverbose", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 279]
!230 = metadata !{i32 786688, metadata !213, metadata !"new_filename_scheme", metadata !21, i32 279, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 279]
!231 = metadata !{i32 786688, metadata !213, metadata !"out_fileinfo", metadata !21, i32 279, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 279]
!232 = metadata !{i32 786688, metadata !213, metadata !"cctk_pdummy_pointer", metadata !21, i32 279, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 279]
!233 = metadata !{i32 786688, metadata !213, metadata !"file", metadata !21, i32 280, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 280]
!234 = metadata !{i32 786688, metadata !213, metadata !"data", metadata !21, i32 281, metadata !60, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 281]
!235 = metadata !{i32 786688, metadata !213, metadata !"myGH", metadata !21, i32 282, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 282]
!236 = metadata !{i32 786688, metadata !213, metadata !"fullname", metadata !21, i32 283, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 283]
!237 = metadata !{i32 786688, metadata !213, metadata !"filename", metadata !21, i32 283, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [filename] [line 283]
!238 = metadata !{i32 786688, metadata !213, metadata !"file_extension", metadata !21, i32 284, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file_extension] [line 284]
!239 = metadata !{i32 786688, metadata !213, metadata !"format_str_real", metadata !21, i32 285, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format_str_real] [line 285]
!240 = metadata !{i32 786688, metadata !213, metadata !"format_str_int", metadata !21, i32 285, metadata !178, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [format_str_int] [line 285]
!241 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"OpenScalarFile", metadata !"OpenScalarFile", metadata !"", i32 366, metadata !242, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct._IO_FILE* (%struct.cGH*, i32, i8*, i8*, i8*, i8*)* @OpenScalarFile, null, null, metadata !244, i32 372} ; [ DW_TAG_subprogram ] [line 366] [local] [def] [scope 372] [OpenScalarFile]
!242 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !243, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!243 = metadata !{metadata !119, metadata !31, metadata !30, metadata !24, metadata !24, metadata !24, metadata !24}
!244 = metadata !{metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !272, metadata !282, metadata !283, metadata !284, metadata !285}
!245 = metadata !{i32 786689, metadata !241, metadata !"GH", metadata !21, i32 16777582, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 366]
!246 = metadata !{i32 786689, metadata !241, metadata !"vindex", metadata !21, i32 33554799, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vindex] [line 367]
!247 = metadata !{i32 786689, metadata !241, metadata !"filename", metadata !21, i32 50332016, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [filename] [line 368]
!248 = metadata !{i32 786689, metadata !241, metadata !"slicename", metadata !21, i32 67109233, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [slicename] [line 369]
!249 = metadata !{i32 786689, metadata !241, metadata !"description", metadata !21, i32 83886450, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [description] [line 370]
!250 = metadata !{i32 786689, metadata !241, metadata !"aliasname", metadata !21, i32 100663667, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [aliasname] [line 371]
!251 = metadata !{i32 786688, metadata !241, metadata !"outInfo_reductions", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_reductions] [line 373]
!252 = metadata !{i32 786688, metadata !241, metadata !"outInfo_vars", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_vars] [line 373]
!253 = metadata !{i32 786688, metadata !241, metadata !"outScalar_reductions", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_reductions] [line 373]
!254 = metadata !{i32 786688, metadata !241, metadata !"outScalar_style", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_style] [line 373]
!255 = metadata !{i32 786688, metadata !241, metadata !"outScalar_vars", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_vars] [line 373]
!256 = metadata !{i32 786688, metadata !241, metadata !"out_format", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_format] [line 373]
!257 = metadata !{i32 786688, metadata !241, metadata !"outdirScalar", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdirScalar] [line 373]
!258 = metadata !{i32 786688, metadata !241, metadata !"outInfo_every", metadata !21, i32 373, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outInfo_every] [line 373]
!259 = metadata !{i32 786688, metadata !241, metadata !"outScalar_every", metadata !21, i32 373, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outScalar_every] [line 373]
!260 = metadata !{i32 786688, metadata !241, metadata !"outdir", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outdir] [line 373]
!261 = metadata !{i32 786688, metadata !241, metadata !"out_every", metadata !21, i32 373, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_every] [line 373]
!262 = metadata !{i32 786688, metadata !241, metadata !"newverbose", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newverbose] [line 373]
!263 = metadata !{i32 786688, metadata !241, metadata !"new_filename_scheme", metadata !21, i32 373, metadata !203, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_filename_scheme] [line 373]
!264 = metadata !{i32 786688, metadata !241, metadata !"out_fileinfo", metadata !21, i32 373, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [out_fileinfo] [line 373]
!265 = metadata !{i32 786688, metadata !241, metadata !"cctk_pdummy_pointer", metadata !21, i32 373, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 373]
!266 = metadata !{i32 786688, metadata !241, metadata !"file", metadata !21, i32 374, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 374]
!267 = metadata !{i32 786688, metadata !241, metadata !"comment_char", metadata !21, i32 375, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [comment_char] [line 375]
!268 = metadata !{i32 786688, metadata !241, metadata !"buffer", metadata !21, i32 375, metadata !269, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 375]
!269 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 1024, i64 8, i32 0, i32 0, metadata !26, metadata !270, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1024, align 8, offset 0] [from char]
!270 = metadata !{metadata !271}
!271 = metadata !{i32 786465, i64 0, i64 128}     ; [ DW_TAG_subrange_type ] [0, 127]
!272 = metadata !{i32 786688, metadata !241, metadata !"advertised_file", metadata !21, i32 376, metadata !273, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [advertised_file] [line 376]
!273 = metadata !{i32 786454, metadata !1, null, metadata !"ioAdvertisedFileDesc", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [ioAdvertisedFileDesc] [line 36, size 0, align 0, offset 0] [from ]
!274 = metadata !{i32 786451, metadata !275, null, metadata !"", i32 29, i64 320, i64 64, i32 0, i32 0, null, metadata !276, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 29, size 320, align 64, offset 0] [from ]
!275 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/../include/ioutil_AdvertisedFiles.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!276 = metadata !{metadata !277, metadata !278, metadata !279, metadata !280, metadata !281}
!277 = metadata !{i32 786445, metadata !275, metadata !274, metadata !"thorn", i32 31, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [thorn] [line 31, size 64, align 64, offset 0] [from ]
!278 = metadata !{i32 786445, metadata !275, metadata !274, metadata !"varname", i32 32, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [varname] [line 32, size 64, align 64, offset 64] [from ]
!279 = metadata !{i32 786445, metadata !275, metadata !274, metadata !"mimetype", i32 33, i64 64, i64 64, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [mimetype] [line 33, size 64, align 64, offset 128] [from ]
!280 = metadata !{i32 786445, metadata !275, metadata !274, metadata !"slice", i32 34, i64 64, i64 64, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [slice] [line 34, size 64, align 64, offset 192] [from ]
!281 = metadata !{i32 786445, metadata !275, metadata !274, metadata !"description", i32 35, i64 64, i64 64, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [description] [line 35, size 64, align 64, offset 256] [from ]
!282 = metadata !{i32 786688, metadata !241, metadata !"myGH", metadata !21, i32 377, metadata !76, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [myGH] [line 377]
!283 = metadata !{i32 786688, metadata !241, metadata !"openmode", metadata !21, i32 378, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [openmode] [line 378]
!284 = metadata !{i32 786688, metadata !241, metadata !"fullname", metadata !21, i32 378, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fullname] [line 378]
!285 = metadata !{i32 786688, metadata !241, metadata !"fileinfo", metadata !21, i32 379, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fileinfo] [line 379]
!286 = metadata !{i32 786451, metadata !287, null, metadata !"stat", i32 46, i64 1152, i64 64, i32 0, i32 0, null, metadata !288, i32 0, null, null} ; [ DW_TAG_structure_type ] [stat] [line 46, size 1152, align 64, offset 0] [from ]
!287 = metadata !{metadata !"/usr/include/x86_64-linux-gnu/bits/stat.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!288 = metadata !{metadata !289, metadata !291, metadata !293, metadata !295, metadata !297, metadata !299, metadata !301, metadata !302, metadata !303, metadata !304, metadata !306, metadata !308, metadata !316, metadata !317, metadata !318}
!289 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_dev", i32 48, i64 64, i64 64, i64 0, i32 0, metadata !290} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 64, offset 0] [from __dev_t]
!290 = metadata !{i32 786454, metadata !287, null, metadata !"__dev_t", i32 124, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [__dev_t] [line 124, size 0, align 0, offset 0] [from long unsigned int]
!291 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_ino", i32 53, i64 64, i64 64, i64 64, i32 0, metadata !292} ; [ DW_TAG_member ] [st_ino] [line 53, size 64, align 64, offset 64] [from __ino_t]
!292 = metadata !{i32 786454, metadata !287, null, metadata !"__ino_t", i32 127, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [__ino_t] [line 127, size 0, align 0, offset 0] [from long unsigned int]
!293 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_nlink", i32 61, i64 64, i64 64, i64 128, i32 0, metadata !294} ; [ DW_TAG_member ] [st_nlink] [line 61, size 64, align 64, offset 128] [from __nlink_t]
!294 = metadata !{i32 786454, metadata !287, null, metadata !"__nlink_t", i32 130, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_typedef ] [__nlink_t] [line 130, size 0, align 0, offset 0] [from long unsigned int]
!295 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_mode", i32 62, i64 32, i64 32, i64 192, i32 0, metadata !296} ; [ DW_TAG_member ] [st_mode] [line 62, size 32, align 32, offset 192] [from __mode_t]
!296 = metadata !{i32 786454, metadata !287, null, metadata !"__mode_t", i32 129, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [__mode_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!297 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_uid", i32 64, i64 32, i64 32, i64 224, i32 0, metadata !298} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 224] [from __uid_t]
!298 = metadata !{i32 786454, metadata !287, null, metadata !"__uid_t", i32 125, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [__uid_t] [line 125, size 0, align 0, offset 0] [from unsigned int]
!299 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_gid", i32 65, i64 32, i64 32, i64 256, i32 0, metadata !300} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 256] [from __gid_t]
!300 = metadata !{i32 786454, metadata !287, null, metadata !"__gid_t", i32 126, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [__gid_t] [line 126, size 0, align 0, offset 0] [from unsigned int]
!301 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"__pad0", i32 67, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [__pad0] [line 67, size 32, align 32, offset 288] [from int]
!302 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_rdev", i32 69, i64 64, i64 64, i64 320, i32 0, metadata !290} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 64, offset 320] [from __dev_t]
!303 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_size", i32 74, i64 64, i64 64, i64 384, i32 0, metadata !148} ; [ DW_TAG_member ] [st_size] [line 74, size 64, align 64, offset 384] [from __off_t]
!304 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_blksize", i32 78, i64 64, i64 64, i64 448, i32 0, metadata !305} ; [ DW_TAG_member ] [st_blksize] [line 78, size 64, align 64, offset 448] [from __blksize_t]
!305 = metadata !{i32 786454, metadata !287, null, metadata !"__blksize_t", i32 153, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [__blksize_t] [line 153, size 0, align 0, offset 0] [from long int]
!306 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_blocks", i32 80, i64 64, i64 64, i64 512, i32 0, metadata !307} ; [ DW_TAG_member ] [st_blocks] [line 80, size 64, align 64, offset 512] [from __blkcnt_t]
!307 = metadata !{i32 786454, metadata !287, null, metadata !"__blkcnt_t", i32 158, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [__blkcnt_t] [line 158, size 0, align 0, offset 0] [from long int]
!308 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_atim", i32 91, i64 128, i64 64, i64 576, i32 0, metadata !309} ; [ DW_TAG_member ] [st_atim] [line 91, size 128, align 64, offset 576] [from timespec]
!309 = metadata !{i32 786451, metadata !310, null, metadata !"timespec", i32 120, i64 128, i64 64, i32 0, i32 0, null, metadata !311, i32 0, null, null} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 128, align 64, offset 0] [from ]
!310 = metadata !{metadata !"/usr/include/time.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!311 = metadata !{metadata !312, metadata !314}
!312 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"tv_sec", i32 122, i64 64, i64 64, i64 0, i32 0, metadata !313} ; [ DW_TAG_member ] [tv_sec] [line 122, size 64, align 64, offset 0] [from __time_t]
!313 = metadata !{i32 786454, metadata !310, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!314 = metadata !{i32 786445, metadata !310, metadata !309, metadata !"tv_nsec", i32 123, i64 64, i64 64, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 64, align 64, offset 64] [from __syscall_slong_t]
!315 = metadata !{i32 786454, metadata !310, null, metadata !"__syscall_slong_t", i32 175, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [__syscall_slong_t] [line 175, size 0, align 0, offset 0] [from long int]
!316 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_mtim", i32 92, i64 128, i64 64, i64 704, i32 0, metadata !309} ; [ DW_TAG_member ] [st_mtim] [line 92, size 128, align 64, offset 704] [from timespec]
!317 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"st_ctim", i32 93, i64 128, i64 64, i64 832, i32 0, metadata !309} ; [ DW_TAG_member ] [st_ctim] [line 93, size 128, align 64, offset 832] [from timespec]
!318 = metadata !{i32 786445, metadata !287, metadata !286, metadata !"__glibc_reserved", i32 106, i64 192, i64 64, i64 960, i32 0, metadata !319} ; [ DW_TAG_member ] [__glibc_reserved] [line 106, size 192, align 64, offset 960] [from ]
!319 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 64, i32 0, i32 0, metadata !315, metadata !320, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 64, offset 0] [from __syscall_slong_t]
!320 = metadata !{metadata !321}
!321 = metadata !{i32 786465, i64 0, i64 3}       ; [ DW_TAG_subrange_type ] [0, 2]
!322 = metadata !{metadata !323}
!323 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !21, i32 25, metadata !24, i32 1, i32 1, null, null}
!324 = metadata !{i32 27, i32 0, metadata !20, null}
!325 = metadata !{i32 75, i32 0, metadata !27, null}
!326 = metadata !{i32 85, i32 0, metadata !27, null}
!327 = metadata !{i32 88, i32 0, metadata !27, null}
!328 = metadata !{%union.anon* undef}
!329 = metadata !{i32 93, i32 0, metadata !27, null}
!330 = metadata !{%union.anon.0* undef}
!331 = metadata !{i32 99, i32 0, metadata !27, null}
!332 = metadata !{i32 100, i32 0, metadata !27, null}
!333 = metadata !{metadata !"any pointer", metadata !334}
!334 = metadata !{metadata !"omnipotent char", metadata !335}
!335 = metadata !{metadata !"Simple C/C++ TBAA"}
!336 = metadata !{metadata !"int", metadata !334}
!337 = metadata !{i32 109, i32 0, metadata !27, null}
!338 = metadata !{i32 111, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !27, i32 110, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!340 = metadata !{i32 112, i32 0, metadata !339, null}
!341 = metadata !{i32 115, i32 0, metadata !339, null}
!342 = metadata !{i32 116, i32 0, metadata !339, null}
!343 = metadata !{i32 120, i32 0, metadata !27, null}
!344 = metadata !{i32 123, i32 0, metadata !27, null}
!345 = metadata !{i32 126, i32 0, metadata !27, null}
!346 = metadata !{i32 129, i32 0, metadata !27, null}
!347 = metadata !{i32 132, i32 0, metadata !27, null}
!348 = metadata !{i32 133, i32 0, metadata !27, null}
!349 = metadata !{i32 168, i32 0, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !27, i32 134, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!351 = metadata !{i32 175, i32 0, metadata !352, null}
!352 = metadata !{i32 786443, metadata !1, metadata !350, i32 173, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!353 = metadata !{i32 209, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !352, i32 185, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!355 = metadata !{i32 220, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !352, i32 218, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!357 = metadata !{i32 136, i32 0, metadata !350, null}
!358 = metadata !{metadata !"short", metadata !334}
!359 = metadata !{i32 138, i32 0, metadata !360, null}
!360 = metadata !{i32 786443, metadata !1, metadata !350, i32 137, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!361 = metadata !{i32 140, i32 0, metadata !350, null}
!362 = metadata !{i32 146, i32 0, metadata !350, null}
!363 = metadata !{i32 147, i32 0, metadata !350, null}
!364 = metadata !{i32 153, i32 0, metadata !350, null}
!365 = metadata !{i32 154, i32 0, metadata !350, null}
!366 = metadata !{i32 155, i32 0, metadata !350, null}
!367 = metadata !{i32 158, i32 0, metadata !350, null}
!368 = metadata !{i32 159, i32 0, metadata !350, null}
!369 = metadata !{i32 161, i32 0, metadata !370, null}
!370 = metadata !{i32 786443, metadata !1, metadata !350, i32 160, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!371 = metadata !{i32 164, i32 0, metadata !370, null}
!372 = metadata !{i32 172, i32 0, metadata !350, null}
!373 = metadata !{i32 178, i32 0, metadata !374, null}
!374 = metadata !{i32 786443, metadata !1, metadata !352, i32 176, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!375 = metadata !{i32 179, i32 0, metadata !374, null}
!376 = metadata !{i32 180, i32 0, metadata !374, null}
!377 = metadata !{i32 181, i32 0, metadata !374, null}
!378 = metadata !{i32 183, i32 0, metadata !374, null}
!379 = metadata !{i32 187, i32 0, metadata !354, null}
!380 = metadata !{i32 191, i32 0, metadata !354, null}
!381 = metadata !{i32 195, i32 0, metadata !354, null}
!382 = metadata !{i32 199, i32 0, metadata !354, null}
!383 = metadata !{i32 202, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !354, i32 200, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!385 = metadata !{i32 210, i32 0, metadata !354, null}
!386 = metadata !{i32 211, i32 0, metadata !354, null}
!387 = metadata !{i32 215, i32 0, metadata !352, null}
!388 = metadata !{i32 217, i32 0, metadata !352, null}
!389 = metadata !{metadata !"double", metadata !334}
!390 = metadata !{i32 221, i32 0, metadata !356, null}
!391 = metadata !{i32 222, i32 0, metadata !356, null}
!392 = metadata !{i32 225, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !352, i32 224, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!394 = metadata !{i32 229, i32 0, metadata !352, null}
!395 = metadata !{i32 234, i32 0, metadata !27, null}
!396 = metadata !{i8* undef}
!397 = metadata !{i32 236, i32 0, metadata !27, null}
!398 = metadata !{i32 366, i32 0, metadata !241, null}
!399 = metadata !{i32 367, i32 0, metadata !241, null}
!400 = metadata !{i32 368, i32 0, metadata !241, null}
!401 = metadata !{i32 369, i32 0, metadata !241, null}
!402 = metadata !{i32 370, i32 0, metadata !241, null}
!403 = metadata !{i32 371, i32 0, metadata !241, null}
!404 = metadata !{i32 373, i32 0, metadata !241, null}
!405 = metadata !{i32 375, i32 0, metadata !241, null}
!406 = metadata !{i32 376, i32 0, metadata !241, null}
!407 = metadata !{i32 379, i32 0, metadata !241, null}
!408 = metadata !{i32 383, i32 0, metadata !241, null}
!409 = metadata !{i32 386, i32 0, metadata !241, null}
!410 = metadata !{i32 389, i32 0, metadata !241, null}
!411 = metadata !{i32 393, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !241, i32 390, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!413 = metadata !{i32 394, i32 0, metadata !412, null}
!414 = metadata !{i32 404, i32 0, metadata !241, null}
!415 = metadata !{i32 405, i32 0, metadata !241, null}
!416 = metadata !{i32 407, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !241, i32 406, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!418 = metadata !{i32 415, i32 0, metadata !419, null}
!419 = metadata !{i32 786443, metadata !1, metadata !417, i32 413, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!420 = metadata !{i32 419, i32 0, metadata !417, null}
!421 = metadata !{i32 422, i32 0, metadata !417, null}
!422 = metadata !{i32 423, i32 0, metadata !417, null}
!423 = metadata !{i32 424, i32 0, metadata !417, null}
!424 = metadata !{i32 425, i32 0, metadata !417, null}
!425 = metadata !{i32 427, i32 0, metadata !417, null}
!426 = metadata !{i32 430, i32 0, metadata !417, null}
!427 = metadata !{i32 431, i32 0, metadata !417, null}
!428 = metadata !{i32 433, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !417, i32 432, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!430 = metadata !{i32 434, i32 0, metadata !429, null}
!431 = metadata !{i32 435, i32 0, metadata !429, null}
!432 = metadata !{i32 436, i32 0, metadata !429, null}
!433 = metadata !{i32 437, i32 0, metadata !417, null}
!434 = metadata !{i32 438, i32 0, metadata !417, null}
!435 = metadata !{i32 440, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !417, i32 439, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!437 = metadata !{i32 441, i32 0, metadata !436, null}
!438 = metadata !{i32 442, i32 0, metadata !436, null}
!439 = metadata !{i32 443, i32 0, metadata !436, null}
!440 = metadata !{i32 444, i32 0, metadata !436, null}
!441 = metadata !{i32 445, i32 0, metadata !436, null}
!442 = metadata !{i32 446, i32 0, metadata !417, null}
!443 = metadata !{i32 447, i32 0, metadata !417, null}
!444 = metadata !{i32 449, i32 0, metadata !445, null}
!445 = metadata !{i32 786443, metadata !1, metadata !417, i32 448, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!446 = metadata !{i32 450, i32 0, metadata !445, null}
!447 = metadata !{i32 451, i32 0, metadata !445, null}
!448 = metadata !{i32 452, i32 0, metadata !417, null}
!449 = metadata !{i32 454, i32 0, metadata !417, null}
!450 = metadata !{i32 456, i32 0, metadata !241, null}
!451 = metadata !{i32 458, i32 0, metadata !241, null}
!452 = metadata !{i32 459, i32 0, metadata !241, null}
!453 = metadata !{i32 277, i32 0, metadata !213, null}
!454 = metadata !{i32 279, i32 0, metadata !213, null}
!455 = metadata !{i32 285, i32 0, metadata !213, null}
!456 = metadata !{i32 289, i32 0, metadata !213, null}
!457 = metadata !{i32 295, i32 0, metadata !213, null}
!458 = metadata !{i32 297, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !213, i32 296, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!460 = metadata !{i32 298, i32 0, metadata !459, null}
!461 = metadata !{i32 301, i32 0, metadata !459, null}
!462 = metadata !{i32 302, i32 0, metadata !459, null}
!463 = metadata !{i32 306, i32 0, metadata !213, null}
!464 = metadata !{i32 307, i32 0, metadata !213, null}
!465 = metadata !{i32 310, i32 0, metadata !213, null}
!466 = metadata !{i32 313, i32 0, metadata !213, null}
!467 = metadata !{i32 315, i32 0, metadata !468, null}
!468 = metadata !{i32 786443, metadata !1, metadata !213, i32 314, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!469 = metadata !{i32 316, i32 0, metadata !468, null}
!470 = metadata !{i32 323, i32 0, metadata !213, null}
!471 = metadata !{i32 324, i32 0, metadata !213, null}
!472 = metadata !{i32 325, i32 0, metadata !213, null}
!473 = metadata !{i32 328, i32 0, metadata !213, null}
!474 = metadata !{i32 329, i32 0, metadata !213, null}
!475 = metadata !{i32 332, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !213, i32 330, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!477 = metadata !{i32 334, i32 0, metadata !476, null}
!478 = metadata !{i32 337, i32 0, metadata !479, null}
!479 = metadata !{i32 786443, metadata !1, metadata !476, i32 335, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!480 = metadata !{i32 339, i32 0, metadata !479, null}
!481 = metadata !{i32 341, i32 0, metadata !479, null}
!482 = metadata !{i32 343, i32 0, metadata !479, null}
!483 = metadata !{i32 345, i32 0, metadata !479, null}
!484 = metadata !{i32 346, i32 0, metadata !479, null}
!485 = metadata !{i32 350, i32 0, metadata !476, null}
!486 = metadata !{i32 351, i32 0, metadata !476, null}
!487 = metadata !{i32 354, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !213, i32 353, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/IOBasic/WriteScalar.c]
!489 = metadata !{i32 360, i32 0, metadata !213, null}
!490 = metadata !{i32 362, i32 0, metadata !213, null}

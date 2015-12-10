; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/getopt.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.opt_s = type { i8*, i32, i32 }

@Getopt.optind = internal unnamed_addr global i32 1, align 4
@Getopt.optptr = internal unnamed_addr global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"Option \22%s\22 is ambiguous; please be more specific.\0A%s\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"No such option \22%s\22.\0A%s\00", align 1
@.str4 = private unnamed_addr constant [34 x i8] c"Option %s requires an argument\0A%s\00", align 1
@.str5 = private unnamed_addr constant [39 x i8] c"Option %s does not take an argument\0A%s\00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"No such option \22%c\22.\0A%s\00", align 1
@.str7 = private unnamed_addr constant [42 x i8] c"Option %s requires an integer argument\0A%s\00", align 1
@.str8 = private unnamed_addr constant [43 x i8] c"Option %s requires a numerical argument\0A%s\00", align 1
@.str9 = private unnamed_addr constant [50 x i8] c"Option %s requires a single-character argument\0A%s\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Getopt(i32 %argc, i8** nocapture readonly %argv, %struct.opt_s* nocapture readonly %opt, i32 %nopts, i8* %usage, i32* nocapture %ret_optind, i8** nocapture %ret_optname, i8** nocapture %ret_optarg) #0 {
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !22, metadata !41), !dbg !42
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !23, metadata !41), !dbg !43
  tail call void @llvm.dbg.value(metadata %struct.opt_s* %opt, i64 0, metadata !24, metadata !41), !dbg !44
  tail call void @llvm.dbg.value(metadata i32 %nopts, i64 0, metadata !25, metadata !41), !dbg !45
  tail call void @llvm.dbg.value(metadata i8* %usage, i64 0, metadata !26, metadata !41), !dbg !46
  tail call void @llvm.dbg.value(metadata i32* %ret_optind, i64 0, metadata !27, metadata !41), !dbg !47
  tail call void @llvm.dbg.value(metadata i8** %ret_optname, i64 0, metadata !28, metadata !41), !dbg !48
  tail call void @llvm.dbg.value(metadata i8** %ret_optarg, i64 0, metadata !29, metadata !41), !dbg !49
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !33, metadata !41), !dbg !50
  %1 = load i32* @Getopt.optind, align 4, !dbg !51, !tbaa !53
  %2 = icmp slt i32 %1, %argc, !dbg !57
  br i1 %2, label %3, label %12, !dbg !58

; <label>:3                                       ; preds = %0
  %4 = sext i32 %1 to i64, !dbg !59
  %5 = getelementptr inbounds i8** %argv, i64 %4, !dbg !59
  %6 = load i8** %5, align 8, !dbg !59, !tbaa !60
  %7 = load i8* %6, align 1, !dbg !59, !tbaa !62
  %8 = icmp eq i8 %7, 45, !dbg !63
  br i1 %8, label %9, label %12, !dbg !64

; <label>:9                                       ; preds = %3
  %10 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4, !dbg !65
  %11 = icmp eq i32 %10, 0, !dbg !66
  br i1 %11, label %12, label %13, !dbg !67

; <label>:12                                      ; preds = %3, %0, %9
  store i32 %1, i32* %ret_optind, align 4, !dbg !68, !tbaa !53
  store i8* null, i8** %ret_optarg, align 8, !dbg !70, !tbaa !60
  store i8* null, i8** %ret_optname, align 8, !dbg !71, !tbaa !60
  br label %197, !dbg !72

; <label>:13                                      ; preds = %9
  %14 = tail call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !73
  %15 = icmp eq i32 %14, 0, !dbg !75
  br i1 %15, label %16, label %18, !dbg !76

; <label>:16                                      ; preds = %13
  %17 = add nsw i32 %1, 1, !dbg !77
  store i32 %17, i32* @Getopt.optind, align 4, !dbg !77, !tbaa !53
  store i32 %17, i32* %ret_optind, align 4, !dbg !79, !tbaa !53
  store i8* null, i8** %ret_optname, align 8, !dbg !80, !tbaa !60
  store i8* null, i8** %ret_optarg, align 8, !dbg !81, !tbaa !60
  br label %197, !dbg !82

; <label>:18                                      ; preds = %13
  %19 = load i8** @Getopt.optptr, align 8, !dbg !83, !tbaa !60
  %20 = icmp eq i8* %19, null, !dbg !85
  br i1 %20, label %21, label %.thread2.preheader, !dbg !86

; <label>:21                                      ; preds = %18
  %22 = tail call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i64 2) #4, !dbg !87
  %23 = icmp eq i32 %22, 0, !dbg !88
  br i1 %23, label %24, label %100, !dbg !89

; <label>:24                                      ; preds = %21
  %25 = tail call i8* @strchr(i8* %6, i32 61) #4, !dbg !90
  store i8* %25, i8** @Getopt.optptr, align 8, !dbg !93, !tbaa !60
  %26 = icmp eq i8* %25, null, !dbg !94
  br i1 %26, label %30, label %27, !dbg !95

; <label>:27                                      ; preds = %24
  store i8 0, i8* %25, align 1, !dbg !96, !tbaa !62
  %28 = load i8** @Getopt.optptr, align 8, !dbg !98, !tbaa !60
  %29 = getelementptr inbounds i8* %28, i64 1, !dbg !98
  store i8* %29, i8** @Getopt.optptr, align 8, !dbg !98, !tbaa !60
  %.pre24 = load i32* @Getopt.optind, align 4, !dbg !99, !tbaa !53
  br label %30, !dbg !100

; <label>:30                                      ; preds = %24, %27
  %31 = phi i32 [ %1, %24 ], [ %.pre24, %27 ]
  %32 = sext i32 %31 to i64, !dbg !101
  %33 = getelementptr inbounds i8** %argv, i64 %32, !dbg !101
  %34 = load i8** %33, align 8, !dbg !101, !tbaa !60
  %35 = tail call i64 @strlen(i8* %34) #4, !dbg !102
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !32, metadata !41), !dbg !103
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !30, metadata !41), !dbg !104
  %36 = icmp sgt i32 %nopts, 0, !dbg !105
  br i1 %36, label %.lr.ph, label %.thread31, !dbg !108

.lr.ph:                                           ; preds = %30
  %sext1 = shl i64 %35, 32, !dbg !109
  %37 = ashr exact i64 %sext1, 32, !dbg !109
  %38 = sext i32 %nopts to i64, !dbg !108
  br label %39, !dbg !108

; <label>:39                                      ; preds = %.lr.ph, %53
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %53 ]
  %opti.010 = phi i32 [ 0, %.lr.ph ], [ %opti.1, %53 ]
  %nmatch.09 = phi i32 [ 0, %.lr.ph ], [ %nmatch.1, %53 ]
  %40 = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv, i32 1, !dbg !111
  %41 = load i32* %40, align 4, !dbg !111, !tbaa !112
  %42 = icmp eq i32 %41, 0, !dbg !114
  br i1 %42, label %43, label %53, !dbg !115

; <label>:43                                      ; preds = %39
  %44 = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv, i32 0, !dbg !116
  %45 = load i8** %44, align 8, !dbg !116, !tbaa !117
  %46 = tail call i32 @strncmp(i8* %45, i8* %34, i64 %37) #4, !dbg !118
  %47 = icmp eq i32 %46, 0, !dbg !119
  br i1 %47, label %48, label %53, !dbg !120

; <label>:48                                      ; preds = %43
  %49 = add nsw i32 %nmatch.09, 1, !dbg !121
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !32, metadata !41), !dbg !103
  %50 = tail call i64 @strlen(i8* %45) #4, !dbg !123
  %51 = icmp eq i64 %37, %50, !dbg !125
  %52 = trunc i64 %indvars.iv to i32, !dbg !126
  br i1 %51, label %._crit_edge, label %53, !dbg !126

; <label>:53                                      ; preds = %39, %43, %48
  %nmatch.1 = phi i32 [ %49, %48 ], [ %nmatch.09, %43 ], [ %nmatch.09, %39 ]
  %opti.1 = phi i32 [ %52, %48 ], [ %opti.010, %43 ], [ %opti.010, %39 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !108
  %54 = icmp slt i64 %indvars.iv.next, %38, !dbg !105
  br i1 %54, label %39, label %._crit_edge, !dbg !108

._crit_edge:                                      ; preds = %53, %48
  %i.0.lcssa = phi i64 [ %indvars.iv, %48 ], [ %indvars.iv.next, %53 ]
  %nmatch.2 = phi i32 [ %49, %48 ], [ %nmatch.1, %53 ]
  %opti.2 = phi i32 [ %52, %48 ], [ %opti.1, %53 ]
  %55 = icmp sgt i32 %nmatch.2, 1, !dbg !127
  br i1 %55, label %56, label %64, !dbg !129

; <label>:56                                      ; preds = %._crit_edge
  %sext = shl i64 %35, 32, !dbg !130
  %57 = ashr exact i64 %sext, 32, !dbg !130
  %sext27 = shl i64 %i.0.lcssa, 32, !dbg !131
  %58 = ashr exact i64 %sext27, 32, !dbg !131
  %59 = getelementptr inbounds %struct.opt_s* %opt, i64 %58, i32 0, !dbg !132
  %60 = load i8** %59, align 8, !dbg !132, !tbaa !117
  %61 = tail call i64 @strlen(i8* %60) #4, !dbg !133
  %62 = icmp eq i64 %57, %61, !dbg !134
  br i1 %62, label %.thread, label %63, !dbg !135

; <label>:63                                      ; preds = %56
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %34, i8* %usage) #4, !dbg !136
  br label %.thread, !dbg !136

; <label>:64                                      ; preds = %._crit_edge
  %65 = icmp eq i32 %nmatch.2, 0, !dbg !137
  br i1 %65, label %.thread31, label %.thread, !dbg !139

.thread31:                                        ; preds = %30, %64
  %opti.23032 = phi i32 [ %opti.2, %64 ], [ 0, %30 ]
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str3, i64 0, i64 0), i8* %34, i8* %usage) #4, !dbg !140
  br label %.thread, !dbg !140

.thread:                                          ; preds = %63, %56, %.thread31, %64
  %opti.229 = phi i32 [ %opti.2, %63 ], [ %opti.2, %56 ], [ %opti.23032, %.thread31 ], [ %opti.2, %64 ]
  %66 = sext i32 %opti.229 to i64, !dbg !141
  %67 = getelementptr inbounds %struct.opt_s* %opt, i64 %66, !dbg !141
  %68 = getelementptr inbounds %struct.opt_s* %67, i64 0, i32 0, !dbg !142
  %69 = bitcast %struct.opt_s* %67 to i64*, !dbg !142
  %70 = load i64* %69, align 8, !dbg !142, !tbaa !117
  %71 = bitcast i8** %ret_optname to i64*, !dbg !143
  store i64 %70, i64* %71, align 8, !dbg !143, !tbaa !60
  %72 = getelementptr inbounds %struct.opt_s* %opt, i64 %66, i32 2, !dbg !144
  %73 = load i32* %72, align 4, !dbg !144, !tbaa !146
  %74 = icmp eq i32 %73, 0, !dbg !147
  %75 = load i8** @Getopt.optptr, align 8, !dbg !148, !tbaa !60
  %76 = icmp ne i8* %75, null, !dbg !151
  br i1 %74, label %94, label %77, !dbg !152

; <label>:77                                      ; preds = %.thread
  br i1 %76, label %78, label %81, !dbg !153

; <label>:78                                      ; preds = %77
  store i8* %75, i8** %ret_optarg, align 8, !dbg !154, !tbaa !60
  store i8* null, i8** @Getopt.optptr, align 8, !dbg !156, !tbaa !60
  %79 = load i32* @Getopt.optind, align 4, !dbg !157, !tbaa !53
  %80 = add nsw i32 %79, 1, !dbg !157
  store i32 %80, i32* @Getopt.optind, align 4, !dbg !157, !tbaa !53
  br label %163, !dbg !158

; <label>:81                                      ; preds = %77
  %82 = load i32* @Getopt.optind, align 4, !dbg !159, !tbaa !53
  %83 = add nsw i32 %82, 1, !dbg !161
  %84 = icmp slt i32 %83, %argc, !dbg !162
  br i1 %84, label %87, label %85, !dbg !163

; <label>:85                                      ; preds = %81
  %86 = load i8** %68, align 8, !dbg !164, !tbaa !117
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i8* %86, i8* %usage) #4, !dbg !165
  br label %163, !dbg !165

; <label>:87                                      ; preds = %81
  %88 = sext i32 %83 to i64, !dbg !166
  %89 = getelementptr inbounds i8** %argv, i64 %88, !dbg !166
  %90 = bitcast i8** %89 to i64*, !dbg !166
  %91 = load i64* %90, align 8, !dbg !166, !tbaa !60
  %92 = bitcast i8** %ret_optarg to i64*, !dbg !168
  store i64 %91, i64* %92, align 8, !dbg !168, !tbaa !60
  %93 = add nsw i32 %82, 2, !dbg !169
  store i32 %93, i32* @Getopt.optind, align 4, !dbg !169, !tbaa !53
  br label %163

; <label>:94                                      ; preds = %.thread
  br i1 %76, label %95, label %97, !dbg !170

; <label>:95                                      ; preds = %94
  %96 = load i8** %68, align 8, !dbg !172, !tbaa !117
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([39 x i8]* @.str5, i64 0, i64 0), i8* %96, i8* %usage) #4, !dbg !174
  br label %97, !dbg !174

; <label>:97                                      ; preds = %95, %94
  store i8* null, i8** %ret_optarg, align 8, !dbg !175, !tbaa !60
  %98 = load i32* @Getopt.optind, align 4, !dbg !176, !tbaa !53
  %99 = add nsw i32 %98, 1, !dbg !176
  store i32 %99, i32* @Getopt.optind, align 4, !dbg !176, !tbaa !53
  br label %163

; <label>:100                                     ; preds = %21
  %101 = getelementptr inbounds i8* %6, i64 1, !dbg !177
  store i8* %101, i8** @Getopt.optptr, align 8, !dbg !180, !tbaa !60
  br label %.thread2.preheader, !dbg !181

.thread2.preheader:                               ; preds = %100, %18
  %102 = phi i8* [ %101, %100 ], [ %19, %18 ]
  %103 = icmp sgt i32 %nopts, 0, !dbg !182
  br i1 %103, label %.lr.ph18, label %.thread3.loopexit, !dbg !185

.lr.ph18:                                         ; preds = %.thread2.preheader
  %104 = sext i32 %nopts to i64, !dbg !185
  br label %105, !dbg !185

; <label>:105                                     ; preds = %.lr.ph18, %.thread2
  %indvars.iv22 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next23, %.thread2 ]
  %106 = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv22, i32 1, !dbg !186
  %107 = load i32* %106, align 4, !dbg !186, !tbaa !112
  %108 = icmp eq i32 %107, 1, !dbg !188
  br i1 %108, label %109, label %.thread2, !dbg !189

; <label>:109                                     ; preds = %105
  %110 = load i8* %102, align 1, !dbg !190, !tbaa !62
  %111 = getelementptr inbounds %struct.opt_s* %opt, i64 %indvars.iv22, i32 0, !dbg !191
  %112 = load i8** %111, align 8, !dbg !191, !tbaa !117
  %113 = getelementptr inbounds i8* %112, i64 1, !dbg !192
  %114 = load i8* %113, align 1, !dbg !192, !tbaa !62
  %115 = icmp eq i8 %110, %114, !dbg !193
  br i1 %115, label %117, label %.thread2, !dbg !194

.thread2:                                         ; preds = %105, %109
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !185
  %116 = icmp slt i64 %indvars.iv.next23, %104, !dbg !182
  br i1 %116, label %105, label %.thread3.loopexit, !dbg !185

; <label>:117                                     ; preds = %109
  %118 = trunc i64 %indvars.iv22 to i32, !dbg !195
  %119 = icmp eq i32 %118, -1, !dbg !195
  br i1 %119, label %.thread3, label %122, !dbg !197

.thread3.loopexit:                                ; preds = %.thread2, %.thread2.preheader
  %.pre = load i8* %102, align 1, !dbg !198, !tbaa !62
  br label %.thread3

.thread3:                                         ; preds = %.thread3.loopexit, %117
  %120 = phi i8 [ %.pre, %.thread3.loopexit ], [ %110, %117 ]
  %121 = sext i8 %120 to i32, !dbg !198
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str6, i64 0, i64 0), i32 %121, i8* %usage) #4, !dbg !199
  br label %122, !dbg !199

; <label>:122                                     ; preds = %.thread3, %117
  %opti.34 = phi i32 [ -1, %.thread3 ], [ %118, %117 ]
  %123 = sext i32 %opti.34 to i64, !dbg !200
  %124 = getelementptr inbounds %struct.opt_s* %opt, i64 %123, !dbg !200
  %125 = getelementptr inbounds %struct.opt_s* %124, i64 0, i32 0, !dbg !201
  %126 = bitcast %struct.opt_s* %124 to i64*, !dbg !201
  %127 = load i64* %126, align 8, !dbg !201, !tbaa !117
  %128 = bitcast i8** %ret_optname to i64*, !dbg !202
  store i64 %127, i64* %128, align 8, !dbg !202, !tbaa !60
  %129 = getelementptr inbounds %struct.opt_s* %opt, i64 %123, i32 2, !dbg !203
  %130 = load i32* %129, align 4, !dbg !203, !tbaa !146
  %131 = icmp eq i32 %130, 0, !dbg !205
  br i1 %131, label %154, label %132, !dbg !206

; <label>:132                                     ; preds = %122
  %133 = load i8** @Getopt.optptr, align 8, !dbg !207, !tbaa !60
  %134 = getelementptr inbounds i8* %133, i64 1, !dbg !210
  %135 = load i8* %134, align 1, !dbg !211, !tbaa !62
  %136 = icmp eq i8 %135, 0, !dbg !212
  br i1 %136, label %140, label %137, !dbg !213

; <label>:137                                     ; preds = %132
  store i8* %134, i8** %ret_optarg, align 8, !dbg !214, !tbaa !60
  %138 = load i32* @Getopt.optind, align 4, !dbg !216, !tbaa !53
  %139 = add nsw i32 %138, 1, !dbg !216
  store i32 %139, i32* @Getopt.optind, align 4, !dbg !216, !tbaa !53
  br label %153, !dbg !217

; <label>:140                                     ; preds = %132
  %141 = load i32* @Getopt.optind, align 4, !dbg !218, !tbaa !53
  %142 = add nsw i32 %141, 1, !dbg !220
  %143 = icmp slt i32 %142, %argc, !dbg !221
  br i1 %143, label %144, label %151, !dbg !222

; <label>:144                                     ; preds = %140
  %145 = sext i32 %142 to i64, !dbg !223
  %146 = getelementptr inbounds i8** %argv, i64 %145, !dbg !223
  %147 = bitcast i8** %146 to i64*, !dbg !223
  %148 = load i64* %147, align 8, !dbg !223, !tbaa !60
  %149 = bitcast i8** %ret_optarg to i64*, !dbg !225
  store i64 %148, i64* %149, align 8, !dbg !225, !tbaa !60
  %150 = add nsw i32 %141, 2, !dbg !226
  store i32 %150, i32* @Getopt.optind, align 4, !dbg !226, !tbaa !53
  br label %153, !dbg !227

; <label>:151                                     ; preds = %140
  %152 = load i8** %125, align 8, !dbg !228, !tbaa !117
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str4, i64 0, i64 0), i8* %152, i8* %usage) #4, !dbg !229
  br label %153

; <label>:153                                     ; preds = %144, %151, %137
  store i8* null, i8** @Getopt.optptr, align 8, !dbg !230, !tbaa !60
  br label %163, !dbg !231

; <label>:154                                     ; preds = %122
  store i8* null, i8** %ret_optarg, align 8, !dbg !232, !tbaa !60
  %155 = load i8** @Getopt.optptr, align 8, !dbg !234, !tbaa !60
  %156 = getelementptr inbounds i8* %155, i64 1, !dbg !236
  %157 = load i8* %156, align 1, !dbg !237, !tbaa !62
  %158 = icmp eq i8 %157, 0, !dbg !238
  br i1 %158, label %160, label %159, !dbg !239

; <label>:159                                     ; preds = %154
  store i8* %156, i8** @Getopt.optptr, align 8, !dbg !240, !tbaa !60
  br label %163, !dbg !241

; <label>:160                                     ; preds = %154
  %161 = load i32* @Getopt.optind, align 4, !dbg !242, !tbaa !53
  %162 = add nsw i32 %161, 1, !dbg !242
  store i32 %162, i32* @Getopt.optind, align 4, !dbg !242, !tbaa !53
  store i8* null, i8** @Getopt.optptr, align 8, !dbg !244, !tbaa !60
  br label %163

; <label>:163                                     ; preds = %153, %160, %159, %97, %85, %87, %78
  %opti.4 = phi i32 [ %opti.229, %78 ], [ %opti.229, %85 ], [ %opti.229, %87 ], [ %opti.229, %97 ], [ %opti.34, %153 ], [ %opti.34, %159 ], [ %opti.34, %160 ]
  %164 = sext i32 %opti.4 to i64, !dbg !245
  %165 = getelementptr inbounds %struct.opt_s* %opt, i64 %164, !dbg !245
  %166 = getelementptr inbounds %struct.opt_s* %opt, i64 %164, i32 2, !dbg !247
  %167 = load i32* %166, align 4, !dbg !247, !tbaa !146
  switch i32 %167, label %175 [
    i32 0, label %195
    i32 1, label %168
  ], !dbg !248

; <label>:168                                     ; preds = %163
  %169 = load i8** %ret_optarg, align 8, !dbg !249, !tbaa !60
  %170 = tail call i32 @IsInt(i8* %169) #4, !dbg !252
  %171 = icmp eq i32 %170, 0, !dbg !252
  br i1 %171, label %172, label %thread-pre-split, !dbg !253

; <label>:172                                     ; preds = %168
  %173 = getelementptr inbounds %struct.opt_s* %165, i64 0, i32 0, !dbg !254
  %174 = load i8** %173, align 8, !dbg !254, !tbaa !117
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([42 x i8]* @.str7, i64 0, i64 0), i8* %174, i8* %usage) #4, !dbg !255
  br label %195, !dbg !255

thread-pre-split:                                 ; preds = %168
  %.pr6 = load i32* %166, align 4, !dbg !256, !tbaa !146
  br label %175

; <label>:175                                     ; preds = %thread-pre-split, %163
  %176 = phi i32 [ %.pr6, %thread-pre-split ], [ %167, %163 ], !dbg !256
  %177 = icmp eq i32 %176, 2, !dbg !258
  br i1 %177, label %178, label %185, !dbg !259

; <label>:178                                     ; preds = %175
  %179 = load i8** %ret_optarg, align 8, !dbg !260, !tbaa !60
  %180 = tail call i32 @IsReal(i8* %179) #4, !dbg !261
  %181 = icmp eq i32 %180, 0, !dbg !261
  br i1 %181, label %182, label %._crit_edge25, !dbg !262

._crit_edge25:                                    ; preds = %178
  %.pre26 = load i32* %166, align 4, !dbg !263, !tbaa !146
  br label %185, !dbg !262

; <label>:182                                     ; preds = %178
  %183 = getelementptr inbounds %struct.opt_s* %165, i64 0, i32 0, !dbg !265
  %184 = load i8** %183, align 8, !dbg !265, !tbaa !117
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([43 x i8]* @.str8, i64 0, i64 0), i8* %184, i8* %usage) #4, !dbg !266
  br label %195, !dbg !266

; <label>:185                                     ; preds = %._crit_edge25, %175
  %186 = phi i32 [ %.pre26, %._crit_edge25 ], [ %176, %175 ]
  %187 = icmp eq i32 %186, 3, !dbg !267
  br i1 %187, label %188, label %195, !dbg !268

; <label>:188                                     ; preds = %185
  %189 = load i8** %ret_optarg, align 8, !dbg !269, !tbaa !60
  %190 = tail call i64 @strlen(i8* %189) #4, !dbg !270
  %191 = icmp eq i64 %190, 1, !dbg !271
  br i1 %191, label %195, label %192, !dbg !272

; <label>:192                                     ; preds = %188
  %193 = getelementptr inbounds %struct.opt_s* %165, i64 0, i32 0, !dbg !273
  %194 = load i8** %193, align 8, !dbg !273, !tbaa !117
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([50 x i8]* @.str9, i64 0, i64 0), i8* %194, i8* %usage) #4, !dbg !274
  br label %195, !dbg !274

; <label>:195                                     ; preds = %163, %188, %172, %185, %192, %182
  %196 = load i32* @Getopt.optind, align 4, !dbg !275, !tbaa !53
  store i32 %196, i32* %ret_optind, align 4, !dbg !276, !tbaa !53
  br label %197, !dbg !277

; <label>:197                                     ; preds = %195, %16, %12
  %.0 = phi i32 [ 0, %12 ], [ 0, %16 ], [ 1, %195 ]
  ret i32 %.0, !dbg !278
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i32 @IsInt(i8*) #2

; Function Attrs: optsize
declare i32 @IsReal(i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39}
!llvm.ident = !{!40}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !34, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/getopt.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6}
!6 = !DISubprogram(name: "Getopt", scope: !1, file: !1, line: 60, type: !7, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**, %struct.opt_s*, i32, i8*, i32*, i8**, i8**)* @Getopt, variables: !21)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !9, !10, !13, !9, !11, !20, !10, !10}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "opt_s", file: !15, line: 330, size: 128, align: 64, elements: !16)
!15 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!16 = !{!17, !18, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !15, line: 331, baseType: !11, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "single", scope: !14, file: !15, line: 332, baseType: !9, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "argtype", scope: !14, file: !15, line: 333, baseType: !9, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !6, file: !1, line: 60, type: !9)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !6, file: !1, line: 60, type: !10)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opt", arg: 3, scope: !6, file: !1, line: 60, type: !13)
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nopts", arg: 4, scope: !6, file: !1, line: 60, type: !9)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "usage", arg: 5, scope: !6, file: !1, line: 60, type: !11)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_optind", arg: 6, scope: !6, file: !1, line: 61, type: !20)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_optname", arg: 7, scope: !6, file: !1, line: 61, type: !10)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_optarg", arg: 8, scope: !6, file: !1, line: 61, type: !10)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !6, file: !1, line: 63, type: !9)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arglen", scope: !6, file: !1, line: 64, type: !9)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nmatch", scope: !6, file: !1, line: 65, type: !9)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opti", scope: !6, file: !1, line: 68, type: !9)
!34 = !{!35, !36}
!35 = !DIGlobalVariable(name: "optind", scope: !6, file: !1, line: 66, type: !9, isLocal: true, isDefinition: true, variable: i32* @Getopt.optind)
!36 = !DIGlobalVariable(name: "optptr", scope: !6, file: !1, line: 67, type: !11, isLocal: true, isDefinition: true, variable: i8** @Getopt.optptr)
!37 = !{i32 2, !"Dwarf Version", i32 2}
!38 = !{i32 2, !"Debug Info Version", i32 700000003}
!39 = !{i32 1, !"PIC Level", i32 2}
!40 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!41 = !DIExpression()
!42 = !DILocation(line: 60, column: 12, scope: !6)
!43 = !DILocation(line: 60, column: 25, scope: !6)
!44 = !DILocation(line: 60, column: 45, scope: !6)
!45 = !DILocation(line: 60, column: 54, scope: !6)
!46 = !DILocation(line: 60, column: 67, scope: !6)
!47 = !DILocation(line: 61, column: 13, scope: !6)
!48 = !DILocation(line: 61, column: 32, scope: !6)
!49 = !DILocation(line: 61, column: 52, scope: !6)
!50 = !DILocation(line: 68, column: 7, scope: !6)
!51 = !DILocation(line: 74, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !6, file: !1, line: 74, column: 7)
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !DILocation(line: 74, column: 14, scope: !52)
!58 = !DILocation(line: 74, column: 22, scope: !52)
!59 = !DILocation(line: 74, column: 25, scope: !52)
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !55, i64 0}
!62 = !{!55, !55, i64 0}
!63 = !DILocation(line: 74, column: 41, scope: !52)
!64 = !DILocation(line: 74, column: 48, scope: !52)
!65 = !DILocation(line: 74, column: 51, scope: !52)
!66 = !DILocation(line: 74, column: 77, scope: !52)
!67 = !DILocation(line: 74, column: 7, scope: !6)
!68 = !DILocation(line: 76, column: 20, scope: !69)
!69 = distinct !DILexicalBlock(scope: !52, file: !1, line: 75, column: 5)
!70 = !DILocation(line: 77, column: 20, scope: !69)
!71 = !DILocation(line: 78, column: 20, scope: !69)
!72 = !DILocation(line: 79, column: 7, scope: !69)
!73 = !DILocation(line: 85, column: 7, scope: !74)
!74 = distinct !DILexicalBlock(scope: !6, file: !1, line: 85, column: 7)
!75 = !DILocation(line: 85, column: 34, scope: !74)
!76 = !DILocation(line: 85, column: 7, scope: !6)
!77 = !DILocation(line: 87, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 86, column: 5)
!79 = !DILocation(line: 88, column: 20, scope: !78)
!80 = !DILocation(line: 89, column: 20, scope: !78)
!81 = !DILocation(line: 90, column: 20, scope: !78)
!82 = !DILocation(line: 91, column: 7, scope: !78)
!83 = !DILocation(line: 101, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !6, file: !1, line: 101, column: 7)
!85 = !DILocation(line: 101, column: 14, scope: !84)
!86 = !DILocation(line: 101, column: 22, scope: !84)
!87 = !DILocation(line: 101, column: 25, scope: !84)
!88 = !DILocation(line: 101, column: 56, scope: !84)
!89 = !DILocation(line: 101, column: 7, scope: !6)
!90 = !DILocation(line: 105, column: 21, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 105, column: 11)
!92 = distinct !DILexicalBlock(scope: !84, file: !1, line: 102, column: 5)
!93 = !DILocation(line: 105, column: 19, scope: !91)
!94 = !DILocation(line: 105, column: 48, scope: !91)
!95 = !DILocation(line: 105, column: 11, scope: !92)
!96 = !DILocation(line: 106, column: 12, scope: !97)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 106, column: 2)
!98 = !DILocation(line: 106, column: 26, scope: !97)
!99 = !DILocation(line: 108, column: 28, scope: !92)
!100 = !DILocation(line: 106, column: 30, scope: !97)
!101 = !DILocation(line: 108, column: 23, scope: !92)
!102 = !DILocation(line: 108, column: 16, scope: !92)
!103 = !DILocation(line: 65, column: 7, scope: !6)
!104 = !DILocation(line: 63, column: 7, scope: !6)
!105 = !DILocation(line: 110, column: 21, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 110, column: 7)
!107 = distinct !DILexicalBlock(scope: !92, file: !1, line: 110, column: 7)
!108 = !DILocation(line: 110, column: 7, scope: !107)
!109 = !DILocation(line: 112, column: 41, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 111, column: 6)
!111 = !DILocation(line: 111, column: 13, scope: !110)
!112 = !{!113, !54, i64 8}
!113 = !{!"opt_s", !61, i64 0, !54, i64 8, !54, i64 12}
!114 = !DILocation(line: 111, column: 20, scope: !110)
!115 = !DILocation(line: 111, column: 29, scope: !110)
!116 = !DILocation(line: 112, column: 21, scope: !110)
!117 = !{!113, !61, i64 0}
!118 = !DILocation(line: 112, column: 6, scope: !110)
!119 = !DILocation(line: 112, column: 49, scope: !110)
!120 = !DILocation(line: 111, column: 6, scope: !106)
!121 = !DILocation(line: 114, column: 12, scope: !122)
!122 = distinct !DILexicalBlock(scope: !110, file: !1, line: 113, column: 4)
!123 = !DILocation(line: 116, column: 20, scope: !124)
!124 = distinct !DILexicalBlock(scope: !122, file: !1, line: 116, column: 10)
!125 = !DILocation(line: 116, column: 17, scope: !124)
!126 = !DILocation(line: 116, column: 10, scope: !122)
!127 = !DILocation(line: 118, column: 18, scope: !128)
!128 = distinct !DILexicalBlock(scope: !92, file: !1, line: 118, column: 11)
!129 = !DILocation(line: 118, column: 22, scope: !128)
!130 = !DILocation(line: 118, column: 25, scope: !128)
!131 = !DILocation(line: 118, column: 42, scope: !128)
!132 = !DILocation(line: 118, column: 49, scope: !128)
!133 = !DILocation(line: 118, column: 35, scope: !128)
!134 = !DILocation(line: 118, column: 32, scope: !128)
!135 = !DILocation(line: 118, column: 11, scope: !92)
!136 = !DILocation(line: 119, column: 2, scope: !128)
!137 = !DILocation(line: 121, column: 18, scope: !138)
!138 = distinct !DILexicalBlock(scope: !92, file: !1, line: 121, column: 11)
!139 = !DILocation(line: 121, column: 11, scope: !92)
!140 = !DILocation(line: 122, column: 2, scope: !138)
!141 = !DILocation(line: 124, column: 22, scope: !92)
!142 = !DILocation(line: 124, column: 32, scope: !92)
!143 = !DILocation(line: 124, column: 20, scope: !92)
!144 = !DILocation(line: 128, column: 21, scope: !145)
!145 = distinct !DILexicalBlock(scope: !92, file: !1, line: 128, column: 11)
!146 = !{!113, !54, i64 12}
!147 = !DILocation(line: 128, column: 29, scope: !145)
!148 = !DILocation(line: 130, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 130, column: 8)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 129, column: 2)
!151 = !DILocation(line: 130, column: 15, scope: !149)
!152 = !DILocation(line: 128, column: 11, scope: !92)
!153 = !DILocation(line: 130, column: 8, scope: !150)
!154 = !DILocation(line: 132, column: 20, scope: !155)
!155 = distinct !DILexicalBlock(scope: !149, file: !1, line: 131, column: 6)
!156 = !DILocation(line: 133, column: 15, scope: !155)
!157 = !DILocation(line: 134, column: 14, scope: !155)
!158 = !DILocation(line: 135, column: 6, scope: !155)
!159 = !DILocation(line: 136, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !149, file: !1, line: 136, column: 13)
!161 = !DILocation(line: 136, column: 19, scope: !160)
!162 = !DILocation(line: 136, column: 22, scope: !160)
!163 = !DILocation(line: 136, column: 13, scope: !149)
!164 = !DILocation(line: 137, column: 58, scope: !160)
!165 = !DILocation(line: 137, column: 6, scope: !160)
!166 = !DILocation(line: 140, column: 22, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !1, line: 139, column: 6)
!168 = !DILocation(line: 140, column: 20, scope: !167)
!169 = !DILocation(line: 141, column: 14, scope: !167)
!170 = !DILocation(line: 146, column: 8, scope: !171)
!171 = distinct !DILexicalBlock(scope: !145, file: !1, line: 145, column: 2)
!172 = !DILocation(line: 147, column: 63, scope: !173)
!173 = distinct !DILexicalBlock(scope: !171, file: !1, line: 146, column: 8)
!174 = !DILocation(line: 147, column: 6, scope: !173)
!175 = !DILocation(line: 148, column: 16, scope: !171)
!176 = !DILocation(line: 149, column: 10, scope: !171)
!177 = !DILocation(line: 156, column: 23, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 155, column: 11)
!179 = distinct !DILexicalBlock(scope: !84, file: !1, line: 153, column: 5)
!180 = !DILocation(line: 156, column: 9, scope: !178)
!181 = !DILocation(line: 156, column: 2, scope: !178)
!182 = !DILocation(line: 157, column: 32, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 157, column: 7)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 157, column: 7)
!185 = !DILocation(line: 157, column: 7, scope: !184)
!186 = !DILocation(line: 158, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 158, column: 6)
!188 = !DILocation(line: 158, column: 20, scope: !187)
!189 = !DILocation(line: 158, column: 28, scope: !187)
!190 = !DILocation(line: 158, column: 31, scope: !187)
!191 = !DILocation(line: 158, column: 49, scope: !187)
!192 = !DILocation(line: 158, column: 42, scope: !187)
!193 = !DILocation(line: 158, column: 39, scope: !187)
!194 = !DILocation(line: 158, column: 6, scope: !183)
!195 = !DILocation(line: 160, column: 16, scope: !196)
!196 = distinct !DILexicalBlock(scope: !179, file: !1, line: 160, column: 11)
!197 = !DILocation(line: 160, column: 11, scope: !179)
!198 = !DILocation(line: 161, column: 36, scope: !196)
!199 = !DILocation(line: 161, column: 2, scope: !196)
!200 = !DILocation(line: 162, column: 22, scope: !179)
!201 = !DILocation(line: 162, column: 32, scope: !179)
!202 = !DILocation(line: 162, column: 20, scope: !179)
!203 = !DILocation(line: 165, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !179, file: !1, line: 165, column: 11)
!205 = !DILocation(line: 165, column: 29, scope: !204)
!206 = !DILocation(line: 165, column: 11, scope: !179)
!207 = !DILocation(line: 167, column: 10, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !1, line: 167, column: 8)
!209 = distinct !DILexicalBlock(scope: !204, file: !1, line: 166, column: 2)
!210 = !DILocation(line: 167, column: 16, scope: !208)
!211 = !DILocation(line: 167, column: 8, scope: !208)
!212 = !DILocation(line: 167, column: 20, scope: !208)
!213 = !DILocation(line: 167, column: 8, scope: !209)
!214 = !DILocation(line: 169, column: 20, scope: !215)
!215 = distinct !DILexicalBlock(scope: !208, file: !1, line: 168, column: 6)
!216 = !DILocation(line: 170, column: 14, scope: !215)
!217 = !DILocation(line: 171, column: 6, scope: !215)
!218 = !DILocation(line: 172, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !208, file: !1, line: 172, column: 13)
!220 = !DILocation(line: 172, column: 19, scope: !219)
!221 = !DILocation(line: 172, column: 22, scope: !219)
!222 = !DILocation(line: 172, column: 13, scope: !208)
!223 = !DILocation(line: 174, column: 22, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 173, column: 6)
!225 = !DILocation(line: 174, column: 20, scope: !224)
!226 = !DILocation(line: 175, column: 14, scope: !224)
!227 = !DILocation(line: 176, column: 6, scope: !224)
!228 = !DILocation(line: 177, column: 61, scope: !219)
!229 = !DILocation(line: 177, column: 9, scope: !219)
!230 = !DILocation(line: 179, column: 11, scope: !209)
!231 = !DILocation(line: 180, column: 2, scope: !209)
!232 = !DILocation(line: 183, column: 16, scope: !233)
!233 = distinct !DILexicalBlock(scope: !204, file: !1, line: 182, column: 2)
!234 = !DILocation(line: 184, column: 10, scope: !235)
!235 = distinct !DILexicalBlock(scope: !233, file: !1, line: 184, column: 8)
!236 = !DILocation(line: 184, column: 16, scope: !235)
!237 = !DILocation(line: 184, column: 8, scope: !235)
!238 = !DILocation(line: 184, column: 20, scope: !235)
!239 = !DILocation(line: 184, column: 8, scope: !233)
!240 = !DILocation(line: 185, column: 12, scope: !235)
!241 = !DILocation(line: 185, column: 6, scope: !235)
!242 = !DILocation(line: 188, column: 14, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !1, line: 187, column: 6)
!244 = !DILocation(line: 189, column: 15, scope: !243)
!245 = !DILocation(line: 197, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !6, file: !1, line: 197, column: 7)
!247 = !DILocation(line: 197, column: 17, scope: !246)
!248 = !DILocation(line: 197, column: 7, scope: !6)
!249 = !DILocation(line: 199, column: 54, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 199, column: 11)
!251 = distinct !DILexicalBlock(scope: !246, file: !1, line: 198, column: 5)
!252 = !DILocation(line: 199, column: 48, scope: !250)
!253 = !DILocation(line: 199, column: 11, scope: !251)
!254 = !DILocation(line: 201, column: 16, scope: !250)
!255 = !DILocation(line: 200, column: 2, scope: !250)
!256 = !DILocation(line: 202, column: 26, scope: !257)
!257 = distinct !DILexicalBlock(scope: !250, file: !1, line: 202, column: 16)
!258 = !DILocation(line: 202, column: 34, scope: !257)
!259 = !DILocation(line: 202, column: 50, scope: !257)
!260 = !DILocation(line: 202, column: 62, scope: !257)
!261 = !DILocation(line: 202, column: 55, scope: !257)
!262 = !DILocation(line: 202, column: 16, scope: !250)
!263 = !DILocation(line: 205, column: 26, scope: !264)
!264 = distinct !DILexicalBlock(scope: !257, file: !1, line: 205, column: 16)
!265 = !DILocation(line: 204, column: 16, scope: !257)
!266 = !DILocation(line: 203, column: 2, scope: !257)
!267 = !DILocation(line: 205, column: 34, scope: !264)
!268 = !DILocation(line: 205, column: 49, scope: !264)
!269 = !DILocation(line: 205, column: 59, scope: !264)
!270 = !DILocation(line: 205, column: 52, scope: !264)
!271 = !DILocation(line: 205, column: 72, scope: !264)
!272 = !DILocation(line: 205, column: 16, scope: !257)
!273 = !DILocation(line: 207, column: 16, scope: !264)
!274 = !DILocation(line: 206, column: 2, scope: !264)
!275 = !DILocation(line: 211, column: 17, scope: !6)
!276 = !DILocation(line: 211, column: 15, scope: !6)
!277 = !DILocation(line: 212, column: 3, scope: !6)
!278 = !DILocation(line: 213, column: 1, scope: !6)

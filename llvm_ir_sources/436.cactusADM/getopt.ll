; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/getopt.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }

@optind = global i32 1, align 4
@opterr = global i32 1, align 4
@optopt = global i32 63, align 4
@optarg = common global i8* null, align 8
@__getopt_initialized = common global i32 0, align 4
@nextchar = internal unnamed_addr global i8* null, align 8
@last_nonopt = internal unnamed_addr global i32 0, align 4
@first_nonopt = internal unnamed_addr global i32 0, align 4
@ordering = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@__stderrp = external global %struct.__sFILE*
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

; Function Attrs: nounwind optsize ssp uwtable
define i32 @_getopt_internal(i32 %argc, i8** %argv, i8* readonly %optstring, %struct.option* readonly %longopts, i32* %longind, i32 %long_only) #0 {
  store i8* null, i8** @optarg, align 8, !tbaa !2
  %1 = load i32* @optind, align 4, !tbaa !6
  %2 = icmp ne i32 %1, 0
  %3 = load i32* @__getopt_initialized, align 4
  %4 = icmp ne i32 %3, 0
  %or.cond = and i1 %2, %4
  br i1 %or.cond, label %20, label %5

; <label>:5                                       ; preds = %0
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %5
  store i32 1, i32* @optind, align 4, !tbaa !6
  br label %8

; <label>:8                                       ; preds = %7, %5
  %9 = phi i32 [ 1, %7 ], [ %1, %5 ]
  store i32 %9, i32* @last_nonopt, align 4, !tbaa !6
  store i32 %9, i32* @first_nonopt, align 4, !tbaa !6
  store i8* null, i8** @nextchar, align 8, !tbaa !2
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8]* @.str13, i64 0, i64 0)) #3
  store i8* %10, i8** @posixly_correct, align 8, !tbaa !2
  %11 = load i8* %optstring, align 1, !tbaa !8
  switch i8 %11, label %16 [
    i8 45, label %12
    i8 43, label %14
  ]

; <label>:12                                      ; preds = %8
  store i32 2, i32* @ordering, align 4, !tbaa !8
  %13 = getelementptr inbounds i8* %optstring, i64 1
  br label %.thread84

; <label>:14                                      ; preds = %8
  store i32 0, i32* @ordering, align 4, !tbaa !8
  %15 = getelementptr inbounds i8* %optstring, i64 1
  br label %.thread84

; <label>:16                                      ; preds = %8
  %17 = icmp eq i8* %10, null
  br i1 %17, label %19, label %18

; <label>:18                                      ; preds = %16
  store i32 0, i32* @ordering, align 4, !tbaa !8
  br label %.thread84

; <label>:19                                      ; preds = %16
  store i32 1, i32* @ordering, align 4, !tbaa !8
  br label %.thread84

.thread84:                                        ; preds = %19, %18, %14, %12
  %.0.i = phi i8* [ %13, %12 ], [ %15, %14 ], [ %optstring, %18 ], [ %optstring, %19 ]
  store i32 1, i32* @__getopt_initialized, align 4, !tbaa !6
  br label %25

; <label>:20                                      ; preds = %0
  %.pre = load i8** @nextchar, align 8, !tbaa !2
  %21 = icmp eq i8* %.pre, null
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %20
  %23 = load i8* %.pre, align 1, !tbaa !8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %104

; <label>:25                                      ; preds = %.thread84, %22, %20
  %.01486 = phi i8* [ %.0.i, %.thread84 ], [ %optstring, %22 ], [ %optstring, %20 ]
  %26 = phi i32 [ %9, %.thread84 ], [ %1, %22 ], [ %1, %20 ]
  %27 = load i32* @last_nonopt, align 4, !tbaa !6
  %28 = icmp sgt i32 %27, %26
  br i1 %28, label %29, label %30

; <label>:29                                      ; preds = %25
  store i32 %26, i32* @last_nonopt, align 4, !tbaa !6
  br label %30

; <label>:30                                      ; preds = %29, %25
  %31 = phi i32 [ %26, %29 ], [ %27, %25 ]
  %32 = load i32* @first_nonopt, align 4, !tbaa !6
  %33 = icmp sgt i32 %32, %26
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %30
  store i32 %26, i32* @first_nonopt, align 4, !tbaa !6
  br label %35

; <label>:35                                      ; preds = %34, %30
  %36 = phi i32 [ %26, %34 ], [ %32, %30 ]
  %37 = load i32* @ordering, align 4, !tbaa !8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %60

; <label>:39                                      ; preds = %35
  %40 = icmp eq i32 %36, %31
  %41 = icmp eq i32 %31, %26
  %or.cond16 = or i1 %40, %41
  br i1 %or.cond16, label %43, label %42

; <label>:42                                      ; preds = %39
  tail call fastcc void @exchange(i8** %argv) #4
  %.pre74 = load i32* @optind, align 4, !tbaa !6
  br label %.preheader

; <label>:43                                      ; preds = %39
  br i1 %41, label %.preheader, label %44

; <label>:44                                      ; preds = %43
  store i32 %26, i32* @first_nonopt, align 4, !tbaa !6
  br label %.preheader

.preheader:                                       ; preds = %44, %42, %43
  %45 = phi i32 [ %26, %44 ], [ %.pre74, %42 ], [ %26, %43 ]
  %46 = icmp slt i32 %45, %argc
  br i1 %46, label %.lr.ph67, label %.thread30

.lr.ph67:                                         ; preds = %.preheader, %.thread
  %47 = phi i32 [ %57, %.thread ], [ %45, %.preheader ]
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8** %argv, i64 %48
  %50 = load i8** %49, align 8, !tbaa !2
  %51 = load i8* %50, align 1, !tbaa !8
  %52 = icmp eq i8 %51, 45
  br i1 %52, label %53, label %.thread

; <label>:53                                      ; preds = %.lr.ph67
  %54 = getelementptr inbounds i8* %50, i64 1
  %55 = load i8* %54, align 1, !tbaa !8
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %.thread, label %.thread30

.thread:                                          ; preds = %.lr.ph67, %53
  %57 = add nsw i32 %47, 1
  store i32 %57, i32* @optind, align 4, !tbaa !6
  %58 = icmp slt i32 %57, %argc
  br i1 %58, label %.lr.ph67, label %.thread30

.thread30:                                        ; preds = %53, %.thread, %.preheader
  %59 = phi i32 [ %45, %.preheader ], [ %47, %53 ], [ %57, %.thread ]
  store i32 %59, i32* @last_nonopt, align 4, !tbaa !6
  br label %60

; <label>:60                                      ; preds = %.thread30, %35
  %61 = phi i32 [ %59, %.thread30 ], [ %31, %35 ]
  %62 = phi i32 [ %59, %.thread30 ], [ %26, %35 ]
  %63 = icmp eq i32 %62, %argc
  br i1 %63, label %.thread88, label %64

; <label>:64                                      ; preds = %60
  %65 = sext i32 %62 to i64
  %66 = getelementptr inbounds i8** %argv, i64 %65
  %67 = load i8** %66, align 8, !tbaa !2
  %68 = tail call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0)) #3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %79

; <label>:70                                      ; preds = %64
  %71 = add nsw i32 %62, 1
  store i32 %71, i32* @optind, align 4, !tbaa !6
  %72 = load i32* @first_nonopt, align 4, !tbaa !6
  %73 = icmp eq i32 %72, %61
  %74 = icmp eq i32 %61, %71
  %or.cond17 = or i1 %73, %74
  br i1 %or.cond17, label %76, label %75

; <label>:75                                      ; preds = %70
  tail call fastcc void @exchange(i8** %argv) #4
  br label %78

; <label>:76                                      ; preds = %70
  br i1 %73, label %77, label %78

; <label>:77                                      ; preds = %76
  store i32 %71, i32* @first_nonopt, align 4, !tbaa !6
  br label %78

; <label>:78                                      ; preds = %76, %77, %75
  store i32 %argc, i32* @last_nonopt, align 4, !tbaa !6
  store i32 %argc, i32* @optind, align 4, !tbaa !6
  br label %.thread88

; <label>:79                                      ; preds = %64
  %80 = icmp eq i32 %62, %argc
  br i1 %80, label %.thread88, label %85

.thread88:                                        ; preds = %78, %60, %79
  %81 = phi i32 [ %61, %79 ], [ %argc, %78 ], [ %61, %60 ]
  %82 = load i32* @first_nonopt, align 4, !tbaa !6
  %83 = icmp eq i32 %82, %81
  br i1 %83, label %473, label %84

; <label>:84                                      ; preds = %.thread88
  store i32 %82, i32* @optind, align 4, !tbaa !6
  br label %473

; <label>:85                                      ; preds = %79
  %86 = sext i32 %62 to i64
  %87 = getelementptr inbounds i8** %argv, i64 %86
  %88 = load i8** %87, align 8, !tbaa !2
  %89 = load i8* %88, align 1, !tbaa !8
  %90 = icmp eq i8 %89, 45
  %91 = ptrtoint i8* %88 to i64
  br i1 %90, label %92, label %96

; <label>:92                                      ; preds = %85
  %93 = getelementptr inbounds i8* %88, i64 1
  %94 = load i8* %93, align 1, !tbaa !8
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

; <label>:96                                      ; preds = %85, %92
  %97 = load i32* @ordering, align 4, !tbaa !8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %473, label %99

; <label>:99                                      ; preds = %96
  %100 = add nsw i32 %62, 1
  store i32 %100, i32* @optind, align 4, !tbaa !6
  store i64 %91, i64* bitcast (i8** @optarg to i64*), align 8, !tbaa !2
  br label %473

; <label>:101                                     ; preds = %92
  %102 = icmp eq i8 %94, 45
  %not. = icmp ne %struct.option* %longopts, null
  %. = and i1 %not., %102
  %.sum = select i1 %., i64 2, i64 1
  %103 = getelementptr inbounds i8* %88, i64 %.sum
  store i8* %103, i8** @nextchar, align 8, !tbaa !2
  br label %104

; <label>:104                                     ; preds = %101, %22
  %.01485 = phi i8* [ %.01486, %101 ], [ %optstring, %22 ]
  %105 = phi i8* [ %103, %101 ], [ %.pre, %22 ]
  %106 = phi i32 [ %62, %101 ], [ %1, %22 ]
  %107 = icmp eq %struct.option* %longopts, null
  br i1 %107, label %267, label %108

; <label>:108                                     ; preds = %104
  %109 = sext i32 %106 to i64
  %110 = getelementptr inbounds i8** %argv, i64 %109
  %111 = load i8** %110, align 8, !tbaa !2
  %112 = getelementptr inbounds i8* %111, i64 1
  %113 = load i8* %112, align 1, !tbaa !8
  %114 = icmp eq i8 %113, 45
  br i1 %114, label %my_index.exit.thread, label %115

; <label>:115                                     ; preds = %108
  %116 = icmp eq i32 %long_only, 0
  br i1 %116, label %267, label %117

; <label>:117                                     ; preds = %115
  %118 = getelementptr inbounds i8* %111, i64 2
  %119 = load i8* %118, align 1, !tbaa !8
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %my_index.exit.thread

; <label>:121                                     ; preds = %117
  %122 = load i8* %.01485, align 1, !tbaa !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %my_index.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %121, %126
  %124 = phi i8 [ %128, %126 ], [ %122, %121 ]
  %.012.i = phi i8* [ %127, %126 ], [ %.01485, %121 ]
  %125 = icmp eq i8 %124, %113
  br i1 %125, label %my_index.exit, label %126

; <label>:126                                     ; preds = %.lr.ph.i
  %127 = getelementptr inbounds i8* %.012.i, i64 1
  %128 = load i8* %127, align 1, !tbaa !8
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %my_index.exit.thread, label %.lr.ph.i

my_index.exit:                                    ; preds = %.lr.ph.i
  %130 = icmp eq i8* %.012.i, null
  br i1 %130, label %my_index.exit.thread, label %267

my_index.exit.thread:                             ; preds = %108, %117, %my_index.exit, %121, %126, %139
  %nameend.0 = phi i8* [ %140, %139 ], [ %105, %126 ], [ %105, %121 ], [ %105, %my_index.exit ], [ %105, %117 ], [ %105, %108 ]
  %131 = load i8* %nameend.0, align 1, !tbaa !8
  switch i8 %131, label %139 [
    i8 0, label %.critedge.preheader
    i8 61, label %.critedge.preheader
  ]

.critedge.preheader:                              ; preds = %my_index.exit.thread, %my_index.exit.thread
  %132 = getelementptr inbounds %struct.option* %longopts, i64 0, i32 0
  %133 = load i8** %132, align 8, !tbaa !9
  %134 = icmp eq i8* %133, null
  br i1 %134, label %.thread31.thread, label %.lr.ph63

.lr.ph63:                                         ; preds = %.critedge.preheader
  %135 = ptrtoint i8* %nameend.0 to i64
  %136 = ptrtoint i8* %105 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  br label %141

; <label>:139                                     ; preds = %my_index.exit.thread
  %140 = getelementptr inbounds i8* %nameend.0, i64 1
  br label %my_index.exit.thread

; <label>:141                                     ; preds = %.lr.ph63, %.critedge
  %142 = phi i8* [ %133, %.lr.ph63 ], [ %154, %.critedge ]
  %option_index.062 = phi i32 [ 0, %.lr.ph63 ], [ %152, %.critedge ]
  %indfound.061 = phi i32 [ -1, %.lr.ph63 ], [ %indfound.1, %.critedge ]
  %ambig.060 = phi i32 [ 0, %.lr.ph63 ], [ %ambig.1, %.critedge ]
  %pfound.059 = phi %struct.option* [ null, %.lr.ph63 ], [ %pfound.1, %.critedge ]
  %p.058 = phi %struct.option* [ %longopts, %.lr.ph63 ], [ %151, %.critedge ]
  %143 = tail call i32 @strncmp(i8* %142, i8* %105, i64 %137) #3
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %.critedge

; <label>:145                                     ; preds = %141
  %146 = tail call i64 @strlen(i8* %142) #3
  %147 = trunc i64 %146 to i32
  %148 = icmp eq i32 %138, %147
  br i1 %148, label %.thread31, label %149

; <label>:149                                     ; preds = %145
  %150 = icmp eq %struct.option* %pfound.059, null
  %p.0.pfound.0 = select i1 %150, %struct.option* %p.058, %struct.option* %pfound.059
  %ambig.0. = select i1 %150, i32 %ambig.060, i32 1
  %option_index.0.indfound.0 = select i1 %150, i32 %option_index.062, i32 %indfound.061
  br label %.critedge

.critedge:                                        ; preds = %149, %141
  %pfound.1 = phi %struct.option* [ %pfound.059, %141 ], [ %p.0.pfound.0, %149 ]
  %ambig.1 = phi i32 [ %ambig.060, %141 ], [ %ambig.0., %149 ]
  %indfound.1 = phi i32 [ %indfound.061, %141 ], [ %option_index.0.indfound.0, %149 ]
  %151 = getelementptr inbounds %struct.option* %p.058, i64 1
  %152 = add nuw nsw i32 %option_index.062, 1
  %153 = getelementptr inbounds %struct.option* %151, i64 0, i32 0
  %154 = load i8** %153, align 8, !tbaa !9
  %155 = icmp eq i8* %154, null
  br i1 %155, label %.critedge._crit_edge, label %141

.critedge._crit_edge:                             ; preds = %.critedge
  %156 = icmp eq i32 %ambig.1, 0
  br i1 %156, label %.thread31, label %157

; <label>:157                                     ; preds = %.critedge._crit_edge
  %158 = load i32* @opterr, align 4, !tbaa !6
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %164, label %160

; <label>:160                                     ; preds = %157
  %161 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %162 = load i8** %argv, align 8, !tbaa !2
  %163 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %161, i8* getelementptr inbounds ([30 x i8]* @.str1, i64 0, i64 0), i8* %162, i8* %111) #3
  %.pre75 = load i8** @nextchar, align 8, !tbaa !2
  %.pre76 = load i32* @optind, align 4, !tbaa !6
  br label %164

; <label>:164                                     ; preds = %157, %160
  %165 = phi i32 [ %106, %157 ], [ %.pre76, %160 ]
  %166 = phi i8* [ %105, %157 ], [ %.pre75, %160 ]
  %167 = tail call i64 @strlen(i8* %166) #3
  %168 = getelementptr inbounds i8* %166, i64 %167
  store i8* %168, i8** @nextchar, align 8, !tbaa !2
  %169 = add nsw i32 %165, 1
  store i32 %169, i32* @optind, align 4, !tbaa !6
  store i32 0, i32* @optopt, align 4, !tbaa !6
  br label %473

.thread31:                                        ; preds = %145, %.critedge._crit_edge
  %indfound.234 = phi i32 [ %indfound.1, %.critedge._crit_edge ], [ %option_index.062, %145 ]
  %pfound.233 = phi %struct.option* [ %pfound.1, %.critedge._crit_edge ], [ %p.058, %145 ]
  %170 = icmp eq %struct.option* %pfound.233, null
  br i1 %170, label %.thread31.thread, label %171

; <label>:171                                     ; preds = %.thread31
  %172 = add nsw i32 %106, 1
  store i32 %172, i32* @optind, align 4, !tbaa !6
  %173 = load i8* %nameend.0, align 1, !tbaa !8
  %174 = icmp eq i8 %173, 0
  %175 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 1
  %176 = load i32* %175, align 4, !tbaa !11
  br i1 %174, label %203, label %177

; <label>:177                                     ; preds = %171
  %178 = icmp eq i32 %176, 0
  br i1 %178, label %181, label %179

; <label>:179                                     ; preds = %177
  %180 = getelementptr inbounds i8* %nameend.0, i64 1
  store i8* %180, i8** @optarg, align 8, !tbaa !2
  br label %229

; <label>:181                                     ; preds = %177
  %182 = load i32* @opterr, align 4, !tbaa !6
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %197, label %184

; <label>:184                                     ; preds = %181
  %185 = load i8* %112, align 1, !tbaa !8
  %186 = icmp eq i8 %185, 45
  %187 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %188 = load i8** %argv, align 8, !tbaa !2
  %189 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 0
  %190 = load i8** %189, align 8
  br i1 %186, label %191, label %193

; <label>:191                                     ; preds = %184
  %192 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %187, i8* getelementptr inbounds ([45 x i8]* @.str2, i64 0, i64 0), i8* %188, i8* %190) #3
  br label %197

; <label>:193                                     ; preds = %184
  %194 = load i8* %111, align 1, !tbaa !8
  %195 = sext i8 %194 to i32
  %196 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %187, i8* getelementptr inbounds ([45 x i8]* @.str3, i64 0, i64 0), i8* %188, i32 %195, i8* %190) #3
  br label %197

; <label>:197                                     ; preds = %181, %191, %193
  %198 = load i8** @nextchar, align 8, !tbaa !2
  %199 = tail call i64 @strlen(i8* %198) #3
  %200 = getelementptr inbounds i8* %198, i64 %199
  store i8* %200, i8** @nextchar, align 8, !tbaa !2
  %201 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 3
  %202 = load i32* %201, align 4, !tbaa !12
  store i32 %202, i32* @optopt, align 4, !tbaa !6
  br label %473

; <label>:203                                     ; preds = %171
  %204 = icmp eq i32 %176, 1
  br i1 %204, label %205, label %229

; <label>:205                                     ; preds = %203
  %206 = icmp slt i32 %172, %argc
  br i1 %206, label %207, label %213

; <label>:207                                     ; preds = %205
  %208 = add nsw i32 %106, 2
  store i32 %208, i32* @optind, align 4, !tbaa !6
  %209 = sext i32 %172 to i64
  %210 = getelementptr inbounds i8** %argv, i64 %209
  %211 = bitcast i8** %210 to i64*
  %212 = load i64* %211, align 8, !tbaa !2
  store i64 %212, i64* bitcast (i8** @optarg to i64*), align 8, !tbaa !2
  br label %229

; <label>:213                                     ; preds = %205
  %214 = load i32* @opterr, align 4, !tbaa !6
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %216

; <label>:216                                     ; preds = %213
  %217 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %218 = load i8** %argv, align 8, !tbaa !2
  %219 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %217, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %218, i8* %111) #3
  %.pre77 = load i8** @nextchar, align 8, !tbaa !2
  br label %220

; <label>:220                                     ; preds = %213, %216
  %221 = phi i8* [ %105, %213 ], [ %.pre77, %216 ]
  %222 = tail call i64 @strlen(i8* %221) #3
  %223 = getelementptr inbounds i8* %221, i64 %222
  store i8* %223, i8** @nextchar, align 8, !tbaa !2
  %224 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 3
  %225 = load i32* %224, align 4, !tbaa !12
  store i32 %225, i32* @optopt, align 4, !tbaa !6
  %226 = load i8* %.01485, align 1, !tbaa !8
  %227 = icmp eq i8 %226, 58
  %228 = select i1 %227, i32 58, i32 63
  br label %473

; <label>:229                                     ; preds = %203, %207, %179
  %230 = tail call i64 @strlen(i8* %105) #3
  %231 = getelementptr inbounds i8* %105, i64 %230
  store i8* %231, i8** @nextchar, align 8, !tbaa !2
  %232 = icmp eq i32* %longind, null
  br i1 %232, label %234, label %233

; <label>:233                                     ; preds = %229
  store i32 %indfound.234, i32* %longind, align 4, !tbaa !6
  br label %234

; <label>:234                                     ; preds = %229, %233
  %235 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 2
  %236 = load i32** %235, align 8, !tbaa !13
  %237 = icmp eq i32* %236, null
  %238 = getelementptr inbounds %struct.option* %pfound.233, i64 0, i32 3
  %239 = load i32* %238, align 4, !tbaa !12
  br i1 %237, label %473, label %240

; <label>:240                                     ; preds = %234
  store i32 %239, i32* %236, align 4, !tbaa !6
  br label %473

.thread31.thread:                                 ; preds = %.critedge.preheader, %.thread31
  %241 = icmp eq i32 %long_only, 0
  %brmerge = or i1 %241, %114
  br i1 %brmerge, label %my_index.exit29.thread, label %242

; <label>:242                                     ; preds = %.thread31.thread
  %243 = load i8* %105, align 1, !tbaa !8
  %244 = load i8* %.01485, align 1, !tbaa !8
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %my_index.exit29.thread, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %242, %248
  %246 = phi i8 [ %250, %248 ], [ %244, %242 ]
  %.012.i26 = phi i8* [ %249, %248 ], [ %.01485, %242 ]
  %247 = icmp eq i8 %246, %243
  br i1 %247, label %my_index.exit29, label %248

; <label>:248                                     ; preds = %.lr.ph.i27
  %249 = getelementptr inbounds i8* %.012.i26, i64 1
  %250 = load i8* %249, align 1, !tbaa !8
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %my_index.exit29.thread, label %.lr.ph.i27

my_index.exit29:                                  ; preds = %.lr.ph.i27
  %252 = icmp eq i8* %.012.i26, null
  br i1 %252, label %my_index.exit29.thread, label %267

my_index.exit29.thread:                           ; preds = %248, %.thread31.thread, %242, %my_index.exit29
  %253 = load i32* @opterr, align 4, !tbaa !6
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %264, label %255

; <label>:255                                     ; preds = %my_index.exit29.thread
  %256 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %257 = load i8** %argv, align 8, !tbaa !2
  br i1 %114, label %258, label %260

; <label>:258                                     ; preds = %255
  %259 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %256, i8* getelementptr inbounds ([32 x i8]* @.str5, i64 0, i64 0), i8* %257, i8* %105) #3
  br label %264

; <label>:260                                     ; preds = %255
  %261 = load i8* %111, align 1, !tbaa !8
  %262 = sext i8 %261 to i32
  %263 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %256, i8* getelementptr inbounds ([32 x i8]* @.str6, i64 0, i64 0), i8* %257, i32 %262, i8* %105) #3
  br label %264

; <label>:264                                     ; preds = %my_index.exit29.thread, %258, %260
  store i8* getelementptr inbounds ([1 x i8]* @.str7, i64 0, i64 0), i8** @nextchar, align 8, !tbaa !2
  %265 = load i32* @optind, align 4, !tbaa !6
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* @optind, align 4, !tbaa !6
  store i32 0, i32* @optopt, align 4, !tbaa !6
  br label %473

; <label>:267                                     ; preds = %my_index.exit, %115, %104, %my_index.exit29
  %268 = getelementptr inbounds i8* %105, i64 1
  store i8* %268, i8** @nextchar, align 8, !tbaa !2
  %269 = load i8* %105, align 1, !tbaa !8
  %270 = sext i8 %269 to i32
  %271 = load i8* %.01485, align 1, !tbaa !8
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %my_index.exit25, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %267, %275
  %273 = phi i8 [ %277, %275 ], [ %271, %267 ]
  %.012.i22 = phi i8* [ %276, %275 ], [ %.01485, %267 ]
  %274 = icmp eq i8 %273, %269
  br i1 %274, label %my_index.exit25, label %275

; <label>:275                                     ; preds = %.lr.ph.i23
  %276 = getelementptr inbounds i8* %.012.i22, i64 1
  %277 = load i8* %276, align 1, !tbaa !8
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %my_index.exit25, label %.lr.ph.i23

my_index.exit25:                                  ; preds = %.lr.ph.i23, %275, %267
  %.0.i24 = phi i8* [ null, %267 ], [ null, %275 ], [ %.012.i22, %.lr.ph.i23 ]
  %279 = load i8* %268, align 1, !tbaa !8
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %281, label %283

; <label>:281                                     ; preds = %my_index.exit25
  %282 = add nsw i32 %106, 1
  store i32 %282, i32* @optind, align 4, !tbaa !6
  br label %283

; <label>:283                                     ; preds = %281, %my_index.exit25
  %284 = phi i32 [ %282, %281 ], [ %106, %my_index.exit25 ]
  %285 = icmp eq i8* %.0.i24, null
  %286 = icmp eq i8 %269, 58
  %or.cond18 = or i1 %286, %285
  br i1 %or.cond18, label %287, label %300

; <label>:287                                     ; preds = %283
  %288 = load i32* @opterr, align 4, !tbaa !6
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %299, label %290

; <label>:290                                     ; preds = %287
  %291 = load i8** @posixly_correct, align 8, !tbaa !2
  %292 = icmp eq i8* %291, null
  %293 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %294 = load i8** %argv, align 8, !tbaa !2
  br i1 %292, label %297, label %295

; <label>:295                                     ; preds = %290
  %296 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %293, i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i8* %294, i32 %270) #3
  br label %299

; <label>:297                                     ; preds = %290
  %298 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %293, i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i8* %294, i32 %270) #3
  br label %299

; <label>:299                                     ; preds = %287, %295, %297
  store i32 %270, i32* @optopt, align 4, !tbaa !6
  br label %473

; <label>:300                                     ; preds = %283
  %301 = load i8* %.0.i24, align 1, !tbaa !8
  %302 = icmp eq i8 %301, 87
  %303 = getelementptr inbounds i8* %.0.i24, i64 1
  %304 = load i8* %303, align 1, !tbaa !8
  %305 = icmp eq i8 %304, 59
  %or.cond89 = and i1 %302, %305
  br i1 %or.cond89, label %306, label %._crit_edge78

; <label>:306                                     ; preds = %300
  %307 = load i8* %268, align 1, !tbaa !8
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %311, label %309

; <label>:309                                     ; preds = %306
  store i8* %268, i8** @optarg, align 8, !tbaa !2
  %310 = add nsw i32 %284, 1
  store i32 %310, i32* @optind, align 4, !tbaa !6
  br label %330

; <label>:311                                     ; preds = %306
  %312 = icmp eq i32 %284, %argc
  br i1 %312, label %313, label %323

; <label>:313                                     ; preds = %311
  %314 = load i32* @opterr, align 4, !tbaa !6
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %320, label %316

; <label>:316                                     ; preds = %313
  %317 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %318 = load i8** %argv, align 8, !tbaa !2
  %319 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %317, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %318, i32 %270) #3
  br label %320

; <label>:320                                     ; preds = %313, %316
  store i32 %270, i32* @optopt, align 4, !tbaa !6
  %321 = load i8* %.01485, align 1, !tbaa !8
  %322 = icmp eq i8 %321, 58
  %.19 = select i1 %322, i32 58, i32 63
  br label %473

; <label>:323                                     ; preds = %311
  %324 = add nsw i32 %284, 1
  store i32 %324, i32* @optind, align 4, !tbaa !6
  %325 = sext i32 %284 to i64
  %326 = getelementptr inbounds i8** %argv, i64 %325
  %327 = bitcast i8** %326 to i64*
  %328 = load i64* %327, align 8, !tbaa !2
  store i64 %328, i64* bitcast (i8** @optarg to i64*), align 8, !tbaa !2
  %329 = inttoptr i64 %328 to i8*
  br label %330

; <label>:330                                     ; preds = %323, %309
  %331 = phi i32 [ %324, %323 ], [ %310, %309 ]
  %332 = phi i8* [ %329, %323 ], [ %268, %309 ]
  store i8* %332, i8** @nextchar, align 8, !tbaa !2
  br label %333

; <label>:333                                     ; preds = %342, %330
  %nameend1.0 = phi i8* [ %332, %330 ], [ %343, %342 ]
  %334 = load i8* %nameend1.0, align 1, !tbaa !8
  switch i8 %334, label %342 [
    i8 0, label %.critedge11.preheader
    i8 61, label %.critedge11.preheader
  ]

.critedge11.preheader:                            ; preds = %333, %333
  %335 = getelementptr inbounds %struct.option* %longopts, i64 0, i32 0
  %336 = load i8** %335, align 8, !tbaa !9
  %337 = icmp eq i8* %336, null
  br i1 %337, label %.thread35.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge11.preheader
  %338 = ptrtoint i8* %nameend1.0 to i64
  %339 = ptrtoint i8* %332 to i64
  %340 = sub i64 %338, %339
  %341 = and i64 %340, 4294967295
  br label %344

; <label>:342                                     ; preds = %333
  %343 = getelementptr inbounds i8* %nameend1.0, i64 1
  br label %333

; <label>:344                                     ; preds = %.lr.ph, %.critedge11
  %345 = phi i8* [ %336, %.lr.ph ], [ %356, %.critedge11 ]
  %option_index7.055 = phi i32 [ 0, %.lr.ph ], [ %354, %.critedge11 ]
  %indfound6.054 = phi i32 [ 0, %.lr.ph ], [ %indfound6.1, %.critedge11 ]
  %ambig5.053 = phi i32 [ 0, %.lr.ph ], [ %ambig5.1, %.critedge11 ]
  %pfound3.052 = phi %struct.option* [ null, %.lr.ph ], [ %pfound3.1, %.critedge11 ]
  %p2.051 = phi %struct.option* [ %longopts, %.lr.ph ], [ %353, %.critedge11 ]
  %346 = tail call i32 @strncmp(i8* %345, i8* %332, i64 %340) #3
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %.critedge11

; <label>:348                                     ; preds = %344
  %349 = tail call i64 @strlen(i8* %345) #3
  %350 = icmp eq i64 %341, %349
  br i1 %350, label %.thread35, label %351

; <label>:351                                     ; preds = %348
  %352 = icmp eq %struct.option* %pfound3.052, null
  %p2.0.pfound3.0 = select i1 %352, %struct.option* %p2.051, %struct.option* %pfound3.052
  %ambig5.0. = select i1 %352, i32 %ambig5.053, i32 1
  %option_index7.0.indfound6.0 = select i1 %352, i32 %option_index7.055, i32 %indfound6.054
  br label %.critedge11

.critedge11:                                      ; preds = %351, %344
  %pfound3.1 = phi %struct.option* [ %pfound3.052, %344 ], [ %p2.0.pfound3.0, %351 ]
  %ambig5.1 = phi i32 [ %ambig5.053, %344 ], [ %ambig5.0., %351 ]
  %indfound6.1 = phi i32 [ %indfound6.054, %344 ], [ %option_index7.0.indfound6.0, %351 ]
  %353 = getelementptr inbounds %struct.option* %p2.051, i64 1
  %354 = add nuw nsw i32 %option_index7.055, 1
  %355 = getelementptr inbounds %struct.option* %353, i64 0, i32 0
  %356 = load i8** %355, align 8, !tbaa !9
  %357 = icmp eq i8* %356, null
  br i1 %357, label %.critedge11._crit_edge, label %344

.critedge11._crit_edge:                           ; preds = %.critedge11
  %358 = icmp eq i32 %ambig5.1, 0
  br i1 %358, label %.thread35, label %359

; <label>:359                                     ; preds = %.critedge11._crit_edge
  %360 = load i32* @opterr, align 4, !tbaa !6
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %369, label %362

; <label>:362                                     ; preds = %359
  %363 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %364 = load i8** %argv, align 8, !tbaa !2
  %365 = sext i32 %331 to i64
  %366 = getelementptr inbounds i8** %argv, i64 %365
  %367 = load i8** %366, align 8, !tbaa !2
  %368 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %363, i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i8* %364, i8* %367) #3
  %.pre80 = load i8** @nextchar, align 8, !tbaa !2
  %.pre81 = load i32* @optind, align 4, !tbaa !6
  br label %369

; <label>:369                                     ; preds = %359, %362
  %370 = phi i32 [ %331, %359 ], [ %.pre81, %362 ]
  %371 = phi i8* [ %332, %359 ], [ %.pre80, %362 ]
  %372 = tail call i64 @strlen(i8* %371) #3
  %373 = getelementptr inbounds i8* %371, i64 %372
  store i8* %373, i8** @nextchar, align 8, !tbaa !2
  %374 = add nsw i32 %370, 1
  store i32 %374, i32* @optind, align 4, !tbaa !6
  br label %473

.thread35:                                        ; preds = %348, %.critedge11._crit_edge
  %indfound6.238 = phi i32 [ %indfound6.1, %.critedge11._crit_edge ], [ %option_index7.055, %348 ]
  %pfound3.237 = phi %struct.option* [ %pfound3.1, %.critedge11._crit_edge ], [ %p2.051, %348 ]
  %375 = icmp eq %struct.option* %pfound3.237, null
  br i1 %375, label %.thread35.thread, label %376

; <label>:376                                     ; preds = %.thread35
  %377 = icmp eq i8 %334, 0
  %378 = getelementptr inbounds %struct.option* %pfound3.237, i64 0, i32 1
  %379 = load i32* %378, align 4, !tbaa !11
  br i1 %377, label %397, label %380

; <label>:380                                     ; preds = %376
  %381 = icmp eq i32 %379, 0
  br i1 %381, label %384, label %382

; <label>:382                                     ; preds = %380
  %383 = getelementptr inbounds i8* %nameend1.0, i64 1
  store i8* %383, i8** @optarg, align 8, !tbaa !2
  br label %425

; <label>:384                                     ; preds = %380
  %385 = load i32* @opterr, align 4, !tbaa !6
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %393, label %387

; <label>:387                                     ; preds = %384
  %388 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %389 = load i8** %argv, align 8, !tbaa !2
  %390 = getelementptr inbounds %struct.option* %pfound3.237, i64 0, i32 0
  %391 = load i8** %390, align 8, !tbaa !9
  %392 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %388, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %389, i8* %391) #3
  %.pre82 = load i8** @nextchar, align 8, !tbaa !2
  br label %393

; <label>:393                                     ; preds = %384, %387
  %394 = phi i8* [ %332, %384 ], [ %.pre82, %387 ]
  %395 = tail call i64 @strlen(i8* %394) #3
  %396 = getelementptr inbounds i8* %394, i64 %395
  store i8* %396, i8** @nextchar, align 8, !tbaa !2
  br label %473

; <label>:397                                     ; preds = %376
  %398 = icmp eq i32 %379, 1
  br i1 %398, label %399, label %425

; <label>:399                                     ; preds = %397
  %400 = icmp slt i32 %331, %argc
  br i1 %400, label %401, label %407

; <label>:401                                     ; preds = %399
  %402 = add nsw i32 %331, 1
  store i32 %402, i32* @optind, align 4, !tbaa !6
  %403 = sext i32 %331 to i64
  %404 = getelementptr inbounds i8** %argv, i64 %403
  %405 = bitcast i8** %404 to i64*
  %406 = load i64* %405, align 8, !tbaa !2
  store i64 %406, i64* bitcast (i8** @optarg to i64*), align 8, !tbaa !2
  br label %425

; <label>:407                                     ; preds = %399
  %408 = load i32* @opterr, align 4, !tbaa !6
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %418, label %410

; <label>:410                                     ; preds = %407
  %411 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %412 = load i8** %argv, align 8, !tbaa !2
  %413 = add nsw i32 %331, -1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8** %argv, i64 %414
  %416 = load i8** %415, align 8, !tbaa !2
  %417 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %411, i8* getelementptr inbounds ([38 x i8]* @.str4, i64 0, i64 0), i8* %412, i8* %416) #3
  %.pre83 = load i8** @nextchar, align 8, !tbaa !2
  br label %418

; <label>:418                                     ; preds = %407, %410
  %419 = phi i8* [ %332, %407 ], [ %.pre83, %410 ]
  %420 = tail call i64 @strlen(i8* %419) #3
  %421 = getelementptr inbounds i8* %419, i64 %420
  store i8* %421, i8** @nextchar, align 8, !tbaa !2
  %422 = load i8* %.01485, align 1, !tbaa !8
  %423 = icmp eq i8 %422, 58
  %424 = select i1 %423, i32 58, i32 63
  br label %473

; <label>:425                                     ; preds = %397, %401, %382
  %426 = tail call i64 @strlen(i8* %332) #3
  %427 = getelementptr inbounds i8* %332, i64 %426
  store i8* %427, i8** @nextchar, align 8, !tbaa !2
  %428 = icmp eq i32* %longind, null
  br i1 %428, label %430, label %429

; <label>:429                                     ; preds = %425
  store i32 %indfound6.238, i32* %longind, align 4, !tbaa !6
  br label %430

; <label>:430                                     ; preds = %425, %429
  %431 = getelementptr inbounds %struct.option* %pfound3.237, i64 0, i32 2
  %432 = load i32** %431, align 8, !tbaa !13
  %433 = icmp eq i32* %432, null
  %434 = getelementptr inbounds %struct.option* %pfound3.237, i64 0, i32 3
  %435 = load i32* %434, align 4, !tbaa !12
  br i1 %433, label %473, label %436

; <label>:436                                     ; preds = %430
  store i32 %435, i32* %432, align 4, !tbaa !6
  br label %473

.thread35.thread:                                 ; preds = %.critedge11.preheader, %.thread35
  store i8* null, i8** @nextchar, align 8, !tbaa !2
  br label %473

._crit_edge78:                                    ; preds = %300
  %437 = icmp eq i8 %304, 58
  br i1 %437, label %438, label %471

; <label>:438                                     ; preds = %._crit_edge78
  %439 = getelementptr inbounds i8* %.0.i24, i64 2
  %440 = load i8* %439, align 1, !tbaa !8
  %441 = icmp eq i8 %440, 58
  %442 = load i8* %268, align 1, !tbaa !8
  %443 = icmp ne i8 %442, 0
  br i1 %441, label %444, label %449

; <label>:444                                     ; preds = %438
  br i1 %443, label %445, label %447

; <label>:445                                     ; preds = %444
  store i8* %268, i8** @optarg, align 8, !tbaa !2
  %446 = add nsw i32 %284, 1
  store i32 %446, i32* @optind, align 4, !tbaa !6
  br label %448

; <label>:447                                     ; preds = %444
  store i8* null, i8** @optarg, align 8, !tbaa !2
  br label %448

; <label>:448                                     ; preds = %447, %445
  store i8* null, i8** @nextchar, align 8, !tbaa !2
  br label %471

; <label>:449                                     ; preds = %438
  br i1 %443, label %450, label %452

; <label>:450                                     ; preds = %449
  store i8* %268, i8** @optarg, align 8, !tbaa !2
  %451 = add nsw i32 %284, 1
  store i32 %451, i32* @optind, align 4, !tbaa !6
  br label %470

; <label>:452                                     ; preds = %449
  %453 = icmp eq i32 %284, %argc
  br i1 %453, label %454, label %464

; <label>:454                                     ; preds = %452
  %455 = load i32* @opterr, align 4, !tbaa !6
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %461, label %457

; <label>:457                                     ; preds = %454
  %458 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !2
  %459 = load i8** %argv, align 8, !tbaa !2
  %460 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %458, i8* getelementptr inbounds ([39 x i8]* @.str10, i64 0, i64 0), i8* %459, i32 %270) #3
  br label %461

; <label>:461                                     ; preds = %454, %457
  store i32 %270, i32* @optopt, align 4, !tbaa !6
  %462 = load i8* %.01485, align 1, !tbaa !8
  %463 = icmp eq i8 %462, 58
  %.20 = select i1 %463, i8 58, i8 63
  br label %470

; <label>:464                                     ; preds = %452
  %465 = add nsw i32 %284, 1
  store i32 %465, i32* @optind, align 4, !tbaa !6
  %466 = sext i32 %284 to i64
  %467 = getelementptr inbounds i8** %argv, i64 %466
  %468 = bitcast i8** %467 to i64*
  %469 = load i64* %468, align 8, !tbaa !2
  store i64 %469, i64* bitcast (i8** @optarg to i64*), align 8, !tbaa !2
  br label %470

; <label>:470                                     ; preds = %461, %464, %450
  %c.1 = phi i8 [ %269, %450 ], [ %269, %464 ], [ %.20, %461 ]
  store i8* null, i8** @nextchar, align 8, !tbaa !2
  br label %471

; <label>:471                                     ; preds = %448, %470, %._crit_edge78
  %c.2 = phi i8 [ %269, %448 ], [ %c.1, %470 ], [ %269, %._crit_edge78 ]
  %472 = sext i8 %c.2 to i32
  br label %473

; <label>:473                                     ; preds = %430, %234, %96, %84, %.thread88, %471, %.thread35.thread, %436, %418, %393, %369, %320, %299, %264, %240, %220, %197, %164, %99
  %.0 = phi i32 [ 1, %99 ], [ 0, %240 ], [ 63, %197 ], [ %228, %220 ], [ 63, %264 ], [ 63, %299 ], [ 0, %436 ], [ 63, %393 ], [ %424, %418 ], [ 87, %.thread35.thread ], [ 63, %369 ], [ %.19, %320 ], [ %472, %471 ], [ 63, %164 ], [ -1, %.thread88 ], [ -1, %84 ], [ -1, %96 ], [ %239, %234 ], [ %435, %430 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @exchange(i8** nocapture %argv) #0 {
  %1 = load i32* @first_nonopt, align 4, !tbaa !6
  %2 = load i32* @last_nonopt, align 4, !tbaa !6
  %3 = load i32* @optind, align 4, !tbaa !6
  %4 = icmp sgt i32 %3, %2
  %5 = icmp sgt i32 %2, %1
  %or.cond714 = and i1 %4, %5
  br i1 %or.cond714, label %.lr.ph10.lr.ph, label %.critedge

.lr.ph10.lr.ph:                                   ; preds = %0
  %6 = sext i32 %2 to i64
  %7 = xor i32 %2, -1
  br label %.lr.ph10

.lr.ph10:                                         ; preds = %.lr.ph10.lr.ph, %.outer
  %bottom.0.ph16 = phi i32 [ %1, %.lr.ph10.lr.ph ], [ %18, %.outer ]
  %top.0.ph15 = phi i32 [ %3, %.lr.ph10.lr.ph ], [ %21, %.outer ]
  %8 = sub nsw i32 %top.0.ph15, %2
  %9 = icmp sgt i32 %8, 0
  %10 = add i32 %top.0.ph15, %7
  %11 = sext i32 %bottom.0.ph16 to i64
  %12 = sub i32 %top.0.ph15, %2
  %13 = sext i32 %12 to i64
  %14 = sext i32 %8 to i64
  br label %15

; <label>:15                                      ; preds = %.lr.ph10, %._crit_edge
  %indvars.iv22 = phi i64 [ %11, %.lr.ph10 ], [ %indvars.iv.next23, %._crit_edge ]
  %16 = sub nsw i64 %6, %indvars.iv22
  %17 = icmp sgt i64 %14, %16
  br i1 %17, label %.preheader, label %.preheader4

.preheader4:                                      ; preds = %15
  br i1 %9, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %15
  %18 = trunc i64 %indvars.iv22 to i32
  %19 = trunc i64 %16 to i32
  %20 = icmp sgt i32 %19, 0
  %21 = sub i32 %top.0.ph15, %19
  br i1 %20, label %.lr.ph12, label %.outer

.lr.ph12:                                         ; preds = %.preheader
  %sext = shl i64 %indvars.iv22, 32
  %22 = ashr exact i64 %sext, 32
  %23 = sext i32 %21 to i64
  %24 = add i32 %19, -1
  br label %25

; <label>:25                                      ; preds = %25, %.lr.ph12
  %indvars.iv24 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next25, %25 ]
  %26 = add nsw i64 %indvars.iv24, %22
  %27 = getelementptr inbounds i8** %argv, i64 %26
  %28 = bitcast i8** %27 to i64*
  %29 = load i64* %28, align 8, !tbaa !2
  %30 = add nsw i64 %23, %indvars.iv24
  %31 = getelementptr inbounds i8** %argv, i64 %30
  %32 = bitcast i8** %31 to i64*
  %33 = load i64* %32, align 8, !tbaa !2
  store i64 %33, i64* %28, align 8, !tbaa !2
  store i64 %29, i64* %32, align 8, !tbaa !2
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %24
  br i1 %exitcond27, label %.outer, label %25

.outer:                                           ; preds = %25, %.preheader
  %34 = icmp sgt i32 %21, %2
  %35 = icmp sgt i32 %2, %18
  %or.cond7 = and i1 %34, %35
  br i1 %or.cond7, label %.lr.ph10, label %.critedge

.lr.ph:                                           ; preds = %.preheader4, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader4 ]
  %36 = add nsw i64 %indvars.iv, %indvars.iv22
  %37 = getelementptr inbounds i8** %argv, i64 %36
  %38 = bitcast i8** %37 to i64*
  %39 = load i64* %38, align 8, !tbaa !2
  %40 = add nsw i64 %indvars.iv, %6
  %41 = getelementptr inbounds i8** %argv, i64 %40
  %42 = bitcast i8** %41 to i64*
  %43 = load i64* %42, align 8, !tbaa !2
  store i64 %43, i64* %38, align 8, !tbaa !2
  store i64 %39, i64* %42, align 8, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %10
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader4
  %indvars.iv.next23 = add i64 %indvars.iv22, %13
  %44 = icmp sgt i64 %6, %indvars.iv.next23
  br i1 %44, label %15, label %.critedge

.critedge:                                        ; preds = %.outer, %._crit_edge, %0
  %45 = sub i32 %3, %2
  %46 = add nsw i32 %45, %1
  store i32 %46, i32* @first_nonopt, align 4, !tbaa !6
  store i32 %3, i32* @last_nonopt, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @getopt(i32 %argc, i8** %argv, i8* readonly %optstring) #0 {
  %1 = tail call i32 @_getopt_internal(i32 %argc, i8** %argv, i8* %optstring, %struct.option* null, i32* null, i32 0) #4
  ret i32 %1
}

; Function Attrs: nounwind optsize readonly
declare i8* @getenv(i8* nocapture) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!10, !3, i64 0}
!10 = !{!"option", !3, i64 0, !7, i64 8, !3, i64 16, !7, i64 24}
!11 = !{!10, !7, i64 8}
!12 = !{!10, !7, i64 24}
!13 = !{!10, !3, i64 16}

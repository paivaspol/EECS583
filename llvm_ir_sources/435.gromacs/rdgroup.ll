; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rdgroup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [76 x i8] c"%s atom number (index[%d]=%d) is larger than the number of atoms in %s (%d)\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str2 = private unnamed_addr constant [15 x i8] c"the trajectory\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str5 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rdgroup.c\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"b->index\00", align 1
@.str7 = private unnamed_addr constant [9 x i8] c"*grpname\00", align 1
@.str8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"b->a\00", align 1
@.str10 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str12 = private unnamed_addr constant [46 x i8] c"Something wrong in your indexfile at group %s\00", align 1
@.str13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str14 = private unnamed_addr constant [6 x i8] c"grpnr\00", align 1
@.str15 = private unnamed_addr constant [24 x i8] c"No index file specified\00", align 1
@.str16 = private unnamed_addr constant [7 x i8] c"gnames\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"grps\00", align 1
@.str18 = private unnamed_addr constant [12 x i8] c"grps->index\00", align 1
@.str19 = private unnamed_addr constant [30 x i8] c"Error: no groups in indexfile\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str20 = private unnamed_addr constant [35 x i8] c"Group %5d (%12s) has %5d elements\0A\00", align 1
@.str21 = private unnamed_addr constant [27 x i8] c"Select between %d and %d.\0A\00", align 1
@.str22 = private unnamed_addr constant [33 x i8] c"There is one group in the index\0A\00", align 1
@.str23 = private unnamed_addr constant [9 x i8] c"index[i]\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"Select a group: \00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @check_index(i8* %gname, i32 %n, i32* nocapture readonly %index, i8* %traj, i32 %natoms) #3 {
  %1 = icmp sgt i32 %n, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = icmp ne i8* %gname, null
  %3 = select i1 %2, i8* %gname, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0)
  %4 = icmp ne i8* %traj, null
  %5 = select i1 %4, i8* %traj, i8* getelementptr inbounds ([15 x i8]* @.str2, i64 0, i64 0)
  %6 = add i32 %n, -1
  br label %7

; <label>:7                                       ; preds = %._crit_edge2, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %.pre, %._crit_edge2 ]
  %8 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %9 = load i32* %8, align 4, !tbaa !14
  %10 = icmp slt i32 %9, %natoms
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br i1 %10, label %._crit_edge2, label %11

; <label>:11                                      ; preds = %7
  %12 = add nsw i32 %9, 1
  %13 = trunc i64 %.pre to i32
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([76 x i8]* @.str, i64 0, i64 0), i8* %3, i32 %13, i32 %12, i8* %5, i32 %natoms) #7
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %7, %11
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %._crit_edge2, %0
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_block* @init_index(i8* %gfile, i8*** nocapture %grpname) #3 {
  %a = alloca i32, align 4
  %ng = alloca i32, align 4
  %line = alloca [4096 x i8], align 16
  %str = alloca [4096 x i8], align 16
  %1 = getelementptr inbounds [4096 x i8]* %line, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %1) #4
  %2 = getelementptr inbounds [4096 x i8]* %str, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #4
  %3 = tail call %struct.__sFILE* @ffopen(i8* %gfile, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 63, i32 1, i32 1056) #7
  %5 = bitcast i8* %4 to %struct.t_block*
  %6 = call i32 @get_a_line(%struct.__sFILE* %3, i8* %1, i32 4096) #7
  %7 = load i8* %1, align 16, !tbaa !13
  %8 = icmp eq i8 %7, 91
  %9 = getelementptr inbounds i8* %4, i64 1024
  %10 = bitcast i8* %9 to i32*
  br i1 %8, label %11, label %87

; <label>:11                                      ; preds = %0
  store i32 0, i32* %10, align 4, !tbaa !15
  %12 = getelementptr inbounds i8* %4, i64 1032
  %13 = bitcast i8* %12 to i32**
  store i32* null, i32** %13, align 8, !tbaa !17
  %14 = getelementptr inbounds i8* %4, i64 1040
  %15 = bitcast i8* %14 to i32*
  store i32 0, i32* %15, align 4, !tbaa !18
  %16 = getelementptr inbounds i8* %4, i64 1048
  %17 = bitcast i8* %16 to i32**
  store i32* null, i32** %17, align 8, !tbaa !19
  store i8** null, i8*** %grpname, align 8, !tbaa !20
  %18 = bitcast i8* %12 to i8**
  %19 = bitcast i8*** %grpname to i8**
  %20 = bitcast i8* %16 to i8**
  br label %21

; <label>:21                                      ; preds = %.loopexit, %11
  %maxentries.0 = phi i32 [ 0, %11 ], [ %maxentries.3, %.loopexit ]
  %22 = call i32 @get_header(i8* %1, i8* %2) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %.preheader, label %26

.preheader:                                       ; preds = %21
  %24 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* %2) #7
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %.lr.ph, label %.loopexit

; <label>:26                                      ; preds = %21
  %27 = load i32* %10, align 4, !tbaa !15
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4, !tbaa !15
  %29 = load i8** %18, align 8, !tbaa !17
  %30 = shl i32 %27, 2
  %31 = add i32 %30, 8
  %32 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 76, i8* %29, i32 %31) #7
  store i8* %32, i8** %18, align 8, !tbaa !17
  %33 = load i8** %19, align 8, !tbaa !20
  %34 = load i32* %10, align 4, !tbaa !15
  %35 = shl i32 %34, 3
  %36 = call i8* @save_realloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 77, i8* %33, i32 %35) #7
  store i8* %36, i8** %19, align 8, !tbaa !20
  %37 = load i32* %10, align 4, !tbaa !15
  %38 = icmp eq i32 %37, 1
  %39 = load i32** %13, align 8, !tbaa !17
  br i1 %38, label %40, label %._crit_edge

; <label>:40                                      ; preds = %26
  store i32 0, i32* %39, align 4, !tbaa !14
  %.pre = load i32* %10, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %26, %40
  %41 = phi i32 [ %.pre, %40 ], [ %37, %26 ]
  %42 = add nsw i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32* %39, i64 %43
  %45 = load i32* %44, align 4, !tbaa !14
  %46 = sext i32 %41 to i64
  %47 = getelementptr inbounds i32* %39, i64 %46
  store i32 %45, i32* %47, align 4, !tbaa !14
  %48 = call i8* @strdup(i8* %2) #7
  %49 = load i32* %10, align 4, !tbaa !15
  %50 = add nsw i32 %49, -1
  %51 = sext i32 %50 to i64
  %52 = load i8*** %grpname, align 8, !tbaa !20
  %53 = getelementptr inbounds i8** %52, i64 %51
  store i8* %48, i8** %53, align 8, !tbaa !20
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %66
  %maxentries.16 = phi i32 [ %maxentries.2, %66 ], [ %maxentries.0, %.preheader ]
  %pt.05 = phi i8* [ %82, %66 ], [ %1, %.preheader ]
  %54 = load i32* %10, align 4, !tbaa !15
  %55 = sext i32 %54 to i64
  %56 = load i32** %13, align 8, !tbaa !17
  %57 = getelementptr inbounds i32* %56, i64 %55
  %58 = load i32* %57, align 4, !tbaa !14
  %59 = icmp slt i32 %58, %maxentries.16
  br i1 %59, label %._crit_edge12, label %60

._crit_edge12:                                    ; preds = %.lr.ph
  %.pre13 = load i32** %17, align 8, !tbaa !19
  br label %66

; <label>:60                                      ; preds = %.lr.ph
  %61 = add nsw i32 %maxentries.16, 100
  %62 = load i8** %20, align 8, !tbaa !19
  %63 = shl i32 %61, 2
  %64 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 88, i8* %62, i32 %63) #7
  store i8* %64, i8** %20, align 8, !tbaa !19
  %65 = bitcast i8* %64 to i32*
  %.pre14 = load i32** %13, align 8, !tbaa !17
  br label %66

; <label>:66                                      ; preds = %._crit_edge12, %60
  %67 = phi i32* [ %.pre14, %60 ], [ %56, %._crit_edge12 ]
  %68 = phi i32* [ %65, %60 ], [ %.pre13, %._crit_edge12 ]
  %maxentries.2 = phi i32 [ %61, %60 ], [ %maxentries.16, %._crit_edge12 ]
  %69 = call i32 @atoi(i8* %2) #7
  %70 = add nsw i32 %69, -1
  %71 = sext i32 %58 to i64
  %72 = getelementptr inbounds i32* %68, i64 %71
  store i32 %70, i32* %72, align 4, !tbaa !14
  %73 = load i32* %10, align 4, !tbaa !15
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32* %67, i64 %74
  %76 = load i32* %75, align 4, !tbaa !14
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4, !tbaa !14
  %78 = load i32* %15, align 4, !tbaa !18
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4, !tbaa !18
  %80 = call i8* @strstr(i8* %pt.05, i8* %2) #7
  %81 = call i64 @strlen(i8* %2) #7
  %82 = getelementptr inbounds i8* %80, i64 %81
  %83 = call i32 (i8*, i8*, ...)* @sscanf(i8* %82, i8* getelementptr inbounds ([3 x i8]* @.str8, i64 0, i64 0), i8* %2) #7
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %66, %.preheader, %._crit_edge
  %maxentries.3 = phi i32 [ %maxentries.0, %._crit_edge ], [ %maxentries.0, %.preheader ], [ %maxentries.2, %66 ]
  %85 = call i32 @get_a_line(%struct.__sFILE* %3, i8* %1, i32 4096) #7
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %.loopexit1, label %21

; <label>:87                                      ; preds = %0
  %88 = getelementptr inbounds i8* %4, i64 1040
  %89 = bitcast i8* %88 to i32*
  %90 = call i32 (i8*, i8*, ...)* @sscanf(i8* %1, i8* getelementptr inbounds ([5 x i8]* @.str10, i64 0, i64 0), i8* %9, i8* %88) #7
  %91 = load i32* %10, align 4, !tbaa !15
  %92 = add nsw i32 %91, 1
  %93 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 101, i32 %92, i32 4) #7
  %94 = getelementptr inbounds i8* %4, i64 1032
  %95 = bitcast i8* %94 to i32**
  %96 = bitcast i8* %94 to i8**
  store i8* %93, i8** %96, align 8, !tbaa !17
  %97 = load i32* %10, align 4, !tbaa !15
  %98 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 102, i32 %97, i32 8) #7
  %99 = bitcast i8*** %grpname to i8**
  store i8* %98, i8** %99, align 8, !tbaa !20
  %100 = load i32** %95, align 8, !tbaa !17
  store i32 0, i32* %100, align 4, !tbaa !14
  %101 = load i32* %89, align 4, !tbaa !18
  %102 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 104, i32 %101, i32 4) #7
  %103 = getelementptr inbounds i8* %4, i64 1048
  %104 = bitcast i8* %103 to i32**
  %105 = bitcast i8* %103 to i8**
  store i8* %102, i8** %105, align 8, !tbaa !19
  %106 = load i32* %10, align 4, !tbaa !15
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %.lr.ph10, label %.loopexit1

.loopexit3:                                       ; preds = %.lr.ph8, %.preheader2
  %108 = load i32* %10, align 4, !tbaa !15
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %indvars.iv.next, %109
  br i1 %110, label %.lr.ph10, label %.loopexit1

.lr.ph10:                                         ; preds = %87, %.loopexit3
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit3 ], [ 0, %87 ]
  %111 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0), i8* %2, i32* %ng) #7
  %112 = call i8* @strdup(i8* %2) #7
  %113 = load i8*** %grpname, align 8, !tbaa !20
  %114 = getelementptr inbounds i8** %113, i64 %indvars.iv
  store i8* %112, i8** %114, align 8, !tbaa !20
  %115 = load i32** %95, align 8, !tbaa !17
  %116 = getelementptr inbounds i32* %115, i64 %indvars.iv
  %117 = load i32* %116, align 4, !tbaa !14
  %118 = load i32* %ng, align 4, !tbaa !14
  %119 = add nsw i32 %118, %117
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %120 = getelementptr inbounds i32* %115, i64 %indvars.iv.next
  store i32 %119, i32* %120, align 4, !tbaa !14
  %121 = load i32* %89, align 4, !tbaa !18
  %122 = icmp sgt i32 %119, %121
  br i1 %122, label %123, label %.preheader2

; <label>:123                                     ; preds = %.lr.ph10
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str12, i64 0, i64 0), i8* %2) #7
  br label %.preheader2

.preheader2:                                      ; preds = %123, %.lr.ph10
  %124 = load i32* %ng, align 4, !tbaa !14
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %.lr.ph8, label %.loopexit3

.lr.ph8:                                          ; preds = %.preheader2, %.lr.ph8
  %j.07 = phi i32 [ %135, %.lr.ph8 ], [ 0, %.preheader2 ]
  %126 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %3, i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* %a) #7
  %127 = load i32* %a, align 4, !tbaa !14
  %128 = load i32** %95, align 8, !tbaa !17
  %129 = getelementptr inbounds i32* %128, i64 %indvars.iv
  %130 = load i32* %129, align 4, !tbaa !14
  %131 = add nsw i32 %130, %j.07
  %132 = sext i32 %131 to i64
  %133 = load i32** %104, align 8, !tbaa !19
  %134 = getelementptr inbounds i32* %133, i64 %132
  store i32 %127, i32* %134, align 4, !tbaa !14
  %135 = add nuw nsw i32 %j.07, 1
  %136 = load i32* %ng, align 4, !tbaa !14
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %.lr.ph8, label %.loopexit3

.loopexit1:                                       ; preds = %.loopexit3, %.loopexit, %87
  call void @ffclose(%struct.__sFILE* %3) #7
  call void @llvm.lifetime.end(i64 4096, i8* %2) #4
  call void @llvm.lifetime.end(i64 4096, i8* %1) #4
  ret %struct.t_block* %5
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare i32 @get_a_line(%struct.__sFILE*, i8*, i32) #1

; Function Attrs: optsize
declare i32 @get_header(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #1

; Function Attrs: nounwind optsize
declare noalias i8* @strdup(i8* nocapture readonly) #5

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i8* @strstr(i8*, i8* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @rd_index(i8* %statfile, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames) #3 {
  %gnames = alloca i8**, align 8
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 204, i32 %ngrps, i32 4) #7
  %2 = bitcast i8* %1 to i32*
  %3 = icmp eq i8* %statfile, null
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0)) #7
  br label %5

; <label>:5                                       ; preds = %0, %4
  %6 = call %struct.t_block* @init_index(i8* %statfile, i8*** %gnames) #8
  %7 = load i8*** %gnames, align 8, !tbaa !20
  tail call fastcc void @rd_groups(%struct.t_block* %6, i8** %7, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %2) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @rd_groups(%struct.t_block* nocapture readonly %grps, i8** nocapture readonly %grpname, i8** nocapture %gnames, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i32* %grpnr) #3 {
  %1 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !15
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %.preheader1

; <label>:4                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([30 x i8]* @.str19, i64 0, i64 0)) #7
  %.pre = load i32* %1, align 4, !tbaa !15
  br label %.preheader1

.preheader1:                                      ; preds = %4, %0
  %5 = phi i32 [ %.pre, %4 ], [ %2, %0 ]
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph7, label %.preheader

.lr.ph7:                                          ; preds = %.preheader1
  %7 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 2
  br label %13

.preheader:                                       ; preds = %13, %.preheader1
  %8 = phi i32 [ %5, %.preheader1 ], [ %25, %13 ]
  %9 = icmp sgt i32 %ngrps, 0
  br i1 %9, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %.preheader
  %10 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 2
  %11 = getelementptr inbounds %struct.t_block* %grps, i64 0, i32 4
  %12 = add i32 %ngrps, -1
  br label %28

; <label>:13                                      ; preds = %.lr.ph7, %13
  %indvars.iv10 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next11, %13 ]
  %14 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !20
  %15 = getelementptr inbounds i8** %grpname, i64 %indvars.iv10
  %16 = load i8** %15, align 8, !tbaa !20
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %17 = load i32** %7, align 8, !tbaa !17
  %18 = getelementptr inbounds i32* %17, i64 %indvars.iv.next11
  %19 = load i32* %18, align 4, !tbaa !14
  %20 = getelementptr inbounds i32* %17, i64 %indvars.iv10
  %21 = load i32* %20, align 4, !tbaa !14
  %22 = sub nsw i32 %19, %21
  %23 = trunc i64 %indvars.iv10 to i32
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([35 x i8]* @.str20, i64 0, i64 0), i32 %23, i8* %16, i32 %22) #7
  %25 = load i32* %1, align 4, !tbaa !15
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %indvars.iv.next11, %26
  br i1 %27, label %13, label %.preheader

; <label>:28                                      ; preds = %._crit_edge12, %.lr.ph4
  %29 = phi i32 [ %8, %.lr.ph4 ], [ %.pre13, %._crit_edge12 ]
  %indvars.iv8 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next9, %._crit_edge12 ]
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %.critedge.preheader, label %49

.critedge.preheader:                              ; preds = %28
  %31 = getelementptr inbounds i32* %grpnr, i64 %indvars.iv8
  br label %.critedge

.critedge.critedge:                               ; preds = %.critedge
  %32 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !20
  %33 = load i32* %1, align 4, !tbaa !15
  %34 = add nsw i32 %33, -1
  %35 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %32, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 0, i32 %34) #7
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %.thread, %.critedge.preheader
  %36 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !20
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %36) #4
  %38 = tail call i32 (i8*, ...)* @scanf(i8* getelementptr inbounds ([3 x i8]* @.str13, i64 0, i64 0), i32* %31) #7
  %39 = load i32* %31, align 4, !tbaa !14
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %.critedge.critedge, label %41

; <label>:41                                      ; preds = %.critedge
  %42 = load i32* %1, align 4, !tbaa !15
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %.thread, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %41
  %44 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !20
  %45 = add nsw i32 %42, -1
  %46 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %44, i8* getelementptr inbounds ([27 x i8]* @.str21, i64 0, i64 0), i32 0, i32 %45) #7
  %.pre14 = load i32* %1, align 4, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %41
  %47 = phi i32 [ %.pre14, %..thread_crit_edge ], [ %42, %41 ]
  %48 = icmp slt i32 %39, %47
  br i1 %48, label %.loopexit, label %.critedge

; <label>:49                                      ; preds = %28
  %50 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !20
  %51 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str22, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %50)
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %49
  %gnr1.0 = phi i32 [ 0, %49 ], [ %39, %.thread ]
  %52 = sext i32 %gnr1.0 to i64
  %53 = getelementptr inbounds i8** %grpname, i64 %52
  %54 = load i8** %53, align 8, !tbaa !20
  %55 = tail call i8* @strdup(i8* %54) #7
  %56 = getelementptr inbounds i8** %gnames, i64 %indvars.iv8
  store i8* %55, i8** %56, align 8, !tbaa !20
  %57 = add nsw i32 %gnr1.0, 1
  %58 = sext i32 %57 to i64
  %59 = load i32** %10, align 8, !tbaa !17
  %60 = getelementptr inbounds i32* %59, i64 %58
  %61 = load i32* %60, align 4, !tbaa !14
  %62 = getelementptr inbounds i32* %59, i64 %52
  %63 = load i32* %62, align 4, !tbaa !14
  %64 = sub nsw i32 %61, %63
  %65 = getelementptr inbounds i32* %isize, i64 %indvars.iv8
  store i32 %64, i32* %65, align 4, !tbaa !14
  %66 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 191, i32 %64, i32 4) #7
  %67 = getelementptr inbounds i32** %index, i64 %indvars.iv8
  %68 = bitcast i32** %67 to i8**
  store i8* %66, i8** %68, align 8, !tbaa !20
  %69 = load i32* %65, align 4, !tbaa !14
  %70 = icmp sgt i32 %69, 0
  %71 = bitcast i8* %66 to i32*
  br i1 %70, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit
  %72 = load i32** %10, align 8, !tbaa !17
  %73 = getelementptr inbounds i32* %72, i64 %52
  %74 = load i32** %11, align 8, !tbaa !19
  br label %75

; <label>:75                                      ; preds = %.lr.ph, %75
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %75 ]
  %76 = load i32* %73, align 4, !tbaa !14
  %77 = trunc i64 %indvars.iv to i32
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32* %74, i64 %79
  %81 = load i32* %80, align 4, !tbaa !14
  %82 = getelementptr inbounds i32* %71, i64 %indvars.iv
  store i32 %81, i32* %82, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %83 = load i32* %65, align 4, !tbaa !14
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %indvars.iv.next, %84
  br i1 %85, label %75, label %._crit_edge

._crit_edge:                                      ; preds = %75, %.loopexit
  %lftr.wideiv = trunc i64 %indvars.iv8 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %12
  br i1 %exitcond, label %._crit_edge5, label %._crit_edge12

._crit_edge12:                                    ; preds = %._crit_edge
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %.pre13 = load i32* %1, align 4, !tbaa !15
  br label %28

._crit_edge5:                                     ; preds = %._crit_edge, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rd_index_nrs(i8* %statfile, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames, i32* %grpnr) #3 {
  %gnames = alloca i8**, align 8
  %1 = icmp eq i8* %statfile, null
  br i1 %1, label %2, label %3

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str15, i64 0, i64 0)) #7
  br label %3

; <label>:3                                       ; preds = %0, %2
  %4 = call %struct.t_block* @init_index(i8* %statfile, i8*** %gnames) #8
  %5 = load i8*** %gnames, align 8, !tbaa !20
  tail call fastcc void @rd_groups(%struct.t_block* %4, i8** %5, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %grpnr) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @get_index(%struct.t_atoms* %atoms, i8* %fnm, i32 %ngrps, i32* nocapture %isize, i32** nocapture %index, i8** nocapture %grpnames) #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 231, i32 %ngrps, i32 4) #7
  %2 = bitcast i8* %1 to i32*
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 232, i32 1, i32 8) #7
  %4 = bitcast i8* %3 to i8***
  %5 = icmp eq i8* %fnm, null
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %0
  %7 = tail call %struct.t_block* @init_index(i8* %fnm, i8*** %4) #8
  br label %14

; <label>:8                                       ; preds = %0
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 237, i32 1, i32 1056) #7
  %10 = bitcast i8* %9 to %struct.t_block*
  %11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str5, i64 0, i64 0), i32 238, i32 1, i32 4) #7
  %12 = getelementptr inbounds i8* %9, i64 1032
  %13 = bitcast i8* %12 to i8**
  store i8* %11, i8** %13, align 8, !tbaa !17
  tail call void @analyse(%struct.t_atoms* %atoms, %struct.t_block* %10, i8*** %4, i32 0, i32 0) #7
  br label %14

; <label>:14                                      ; preds = %8, %6
  %grps.0 = phi %struct.t_block* [ %7, %6 ], [ %10, %8 ]
  %15 = load i8*** %4, align 8, !tbaa !20
  tail call fastcc void @rd_groups(%struct.t_block* %grps.0, i8** %15, i8** %grpnames, i32 %ngrps, i32* %isize, i32** %index, i32* %2) #8
  ret void
}

; Function Attrs: optsize
declare void @analyse(%struct.t_atoms*, %struct.t_block*, i8***, i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize
declare i32 @scanf(i8* nocapture readonly, ...) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!16, !7, i64 1024}
!16 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!17 = !{!16, !4, i64 1032}
!18 = !{!16, !7, i64 1040}
!19 = !{!16, !4, i64 1048}
!20 = !{!4, !4, i64 0}

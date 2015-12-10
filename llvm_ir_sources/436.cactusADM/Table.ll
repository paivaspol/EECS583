; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Table.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.table_entry = type { %struct.table_entry*, i8*, i32, i32, i8* }
%struct.table_header = type { %struct.table_entry*, i32, i32 }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.iterator = type { %struct.table_header*, %struct.table_entry* }

@thp_array = global i8** null, align 8
@ip_array = global i8** null, align 8
@N_tables = internal unnamed_addr global i32 0, align 4
@N_thp_array = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"; \09\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str2 = private unnamed_addr constant [13 x i8] c"-+0123456789\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@N_iterators = internal unnamed_addr global i32 0, align 4
@N_ip_array = internal global i32 0, align 4
@.str5 = private unnamed_addr constant [81 x i8] c"$Header: /cactus/Cactus/src/util/Table.c,v 1.6 2002/01/21 14:31:22 rideout Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_util_Table_c() #0 {
  ret i8* getelementptr inbounds ([81 x i8]* @.str5, i64 0, i64 0)
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableCreate(i32 %flags) #1 {
  %1 = icmp slt i32 %flags, 0
  br i1 %1, label %31, label %2

; <label>:2                                       ; preds = %0
  %3 = load i32* @N_tables, align 4, !tbaa !2
  %4 = load i32* @N_thp_array, align 4, !tbaa !2
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %.preheader

; <label>:6                                       ; preds = %2
  %7 = tail call fastcc i32 @grow_pointer_array(i32* @N_thp_array, i8*** @thp_array) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %31, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %6
  %.pre = load i32* @N_thp_array, align 4, !tbaa !2
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %2
  %9 = phi i32 [ %.pre, %..preheader_crit_edge ], [ %4, %2 ]
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %11 = load i8*** @thp_array, align 8, !tbaa !6
  %12 = sext i32 %9 to i64
  br label %13

; <label>:13                                      ; preds = %.lr.ph, %29
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %29 ]
  %14 = getelementptr inbounds i8** %11, i64 %indvars.iv
  %15 = load i8** %14, align 8, !tbaa !6
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %29

; <label>:17                                      ; preds = %13
  %18 = trunc i64 %indvars.iv to i32
  %19 = tail call i8* @malloc(i64 16) #10
  %20 = icmp eq i8* %19, null
  br i1 %20, label %31, label %21

; <label>:21                                      ; preds = %17
  %22 = bitcast i8* %19 to %struct.table_entry**
  store %struct.table_entry* null, %struct.table_entry** %22, align 8, !tbaa !8
  %23 = getelementptr inbounds i8* %19, i64 8
  %24 = bitcast i8* %23 to i32*
  store i32 %flags, i32* %24, align 4, !tbaa !10
  %25 = getelementptr inbounds i8* %19, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %18, i32* %26, align 4, !tbaa !11
  %27 = load i32* @N_tables, align 4, !tbaa !2
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @N_tables, align 4, !tbaa !2
  store i8* %19, i8** %14, align 8, !tbaa !6
  br label %31

; <label>:29                                      ; preds = %13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %30 = icmp slt i64 %indvars.iv.next, %12
  br i1 %30, label %13, label %._crit_edge

._crit_edge:                                      ; preds = %29, %.preheader
  tail call void @abort() #11
  unreachable

; <label>:31                                      ; preds = %17, %6, %0, %21
  %.0 = phi i32 [ %18, %21 ], [ -100, %0 ], [ -1, %6 ], [ -1, %17 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @grow_pointer_array(i32* nocapture %pN, i8*** nocapture %pvp_array) #1 {
  %1 = load i32* %pN, align 4, !tbaa !2
  %2 = bitcast i8*** %pvp_array to i8**
  %3 = load i8** %2, align 8, !tbaa !6
  %4 = shl nsw i32 %1, 1
  %5 = add nsw i32 %4, 10
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call i8* @realloc(i8* %3, i64 %7) #10
  %9 = icmp eq i8* %8, null
  br i1 %9, label %18, label %.preheader

.preheader:                                       ; preds = %0
  %10 = icmp slt i32 %1, %5
  br i1 %10, label %.lr.ph, label %17

.lr.ph:                                           ; preds = %.preheader
  %11 = sext i32 %1 to i64
  %12 = shl nsw i64 %11, 3
  %scevgep = getelementptr i8* %8, i64 %12
  %13 = add i32 %1, 9
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = add nuw nsw i64 %15, 8
  call void @llvm.memset.p0i8.i64(i8* %scevgep, i8 0, i64 %16, i32 8, i1 false)
  br label %17

; <label>:17                                      ; preds = %.lr.ph, %.preheader
  store i8* %8, i8** %2, align 8, !tbaa !6
  store i32 %5, i32* %pN, align 4, !tbaa !2
  br label %18

; <label>:18                                      ; preds = %0, %17
  %.0 = phi i32 [ 0, %17 ], [ -1, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn optsize
declare void @abort() #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableDestroy(i32 %handle) #1 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = getelementptr inbounds %struct.table_header* %8, i64 0, i32 0
  %12 = load %struct.table_entry** %11, align 8, !tbaa !8
  %13 = icmp eq %struct.table_entry* %12, null
  br i1 %13, label %22, label %.lr.ph

.lr.ph:                                           ; preds = %10, %.lr.ph
  %tep.01 = phi %struct.table_entry* [ %15, %.lr.ph ], [ %12, %10 ]
  %14 = getelementptr inbounds %struct.table_entry* %tep.01, i64 0, i32 0
  %15 = load %struct.table_entry** %14, align 8, !tbaa !12
  %16 = getelementptr inbounds %struct.table_entry* %tep.01, i64 0, i32 1
  %17 = load i8** %16, align 8, !tbaa !14
  tail call void @free(i8* %17) #10
  %18 = getelementptr inbounds %struct.table_entry* %tep.01, i64 0, i32 4
  %19 = load i8** %18, align 8, !tbaa !15
  tail call void @free(i8* %19) #10
  %20 = bitcast %struct.table_entry* %tep.01 to i8*
  tail call void @free(i8* %20) #10
  %21 = icmp eq %struct.table_entry* %15, null
  br i1 %21, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.pre = load i8*** @thp_array, align 8, !tbaa !6
  br label %22

; <label>:22                                      ; preds = %._crit_edge, %10
  %23 = phi i8** [ %.pre, %._crit_edge ], [ %5, %10 ]
  %24 = load i32* @N_tables, align 4, !tbaa !2
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* @N_tables, align 4, !tbaa !2
  %26 = getelementptr inbounds i8** %23, i64 %4
  store i8* null, i8** %26, align 8, !tbaa !6
  %27 = bitcast %struct.table_header* %8 to i8*
  tail call void @free(i8* %27) #9
  br label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit.thread:                 ; preds = %0, %get_table_header_ptr.exit, %22
  %.0 = phi i32 [ 0, %22 ], [ -2, %get_table_header_ptr.exit ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Util_TableQueryFlags(i32 %handle) #4 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = getelementptr inbounds %struct.table_header* %8, i64 0, i32 1
  %12 = load i32* %11, align 4, !tbaa !10
  br label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit.thread:                 ; preds = %0, %get_table_header_ptr.exit, %10
  %.0 = phi i32 [ %12, %10 ], [ -2, %get_table_header_ptr.exit ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Util_TableQueryNKeys(i32 %handle) #4 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = getelementptr inbounds %struct.table_header* %8, i64 0, i32 0
  %tep.01 = load %struct.table_entry** %11, align 8
  %12 = icmp eq %struct.table_entry* %tep.01, null
  br i1 %12, label %get_table_header_ptr.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %10, %.lr.ph
  %tep.03 = phi %struct.table_entry* [ %tep.0, %.lr.ph ], [ %tep.01, %10 ]
  %N.02 = phi i32 [ %13, %.lr.ph ], [ 0, %10 ]
  %13 = add nuw nsw i32 %N.02, 1
  %14 = getelementptr inbounds %struct.table_entry* %tep.03, i64 0, i32 0
  %tep.0 = load %struct.table_entry** %14, align 8
  %15 = icmp eq %struct.table_entry* %tep.0, null
  br i1 %15, label %get_table_header_ptr.exit.thread, label %.lr.ph

get_table_header_ptr.exit.thread:                 ; preds = %.lr.ph, %10, %0, %get_table_header_ptr.exit
  %.0 = phi i32 [ -2, %get_table_header_ptr.exit ], [ -2, %0 ], [ 0, %10 ], [ %13, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Util_TableQueryMaxKeyLength(i32 %handle) #4 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = getelementptr inbounds %struct.table_header* %8, i64 0, i32 0
  %tep.01 = load %struct.table_entry** %11, align 8
  %12 = icmp eq %struct.table_entry* %tep.01, null
  br i1 %12, label %get_table_header_ptr.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %10, %.lr.ph
  %tep.03 = phi %struct.table_entry* [ %tep.0, %.lr.ph ], [ %tep.01, %10 ]
  %max_length.02 = phi i32 [ %.max_length.0, %.lr.ph ], [ 0, %10 ]
  %13 = getelementptr inbounds %struct.table_entry* %tep.03, i64 0, i32 1
  %14 = load i8** %13, align 8, !tbaa !14
  %15 = tail call i64 @strlen(i8* %14) #10
  %16 = trunc i64 %15 to i32
  %17 = icmp sgt i32 %16, %max_length.02
  %.max_length.0 = select i1 %17, i32 %16, i32 %max_length.02
  %18 = getelementptr inbounds %struct.table_entry* %tep.03, i64 0, i32 0
  %tep.0 = load %struct.table_entry** %18, align 8
  %19 = icmp eq %struct.table_entry* %tep.0, null
  br i1 %19, label %get_table_header_ptr.exit.thread, label %.lr.ph

get_table_header_ptr.exit.thread:                 ; preds = %.lr.ph, %10, %0, %get_table_header_ptr.exit
  %.0 = phi i32 [ -2, %get_table_header_ptr.exit ], [ -2, %0 ], [ 0, %10 ], [ %.max_length.0, %.lr.ph ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableQueryValueInfo(i32 %handle, i32* %type_code, i32* %N_elements, i8* %key) #1 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = tail call i8* @strchr(i8* %key, i32 47) #10
  %not..i = icmp eq i8* %11, null
  br i1 %not..i, label %12, label %get_table_header_ptr.exit.thread

; <label>:12                                      ; preds = %10
  %13 = tail call fastcc %struct.table_entry* @find_table_entry(%struct.table_header* %8, i8* %key, %struct.table_entry** null) #9
  %14 = icmp eq %struct.table_entry* %13, null
  br i1 %14, label %get_table_header_ptr.exit.thread, label %15

; <label>:15                                      ; preds = %12
  %16 = icmp eq i32* %type_code, null
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %15
  %18 = getelementptr inbounds %struct.table_entry* %13, i64 0, i32 2
  %19 = load i32* %18, align 4, !tbaa !16
  store i32 %19, i32* %type_code, align 4, !tbaa !2
  br label %20

; <label>:20                                      ; preds = %15, %17
  %21 = icmp eq i32* %N_elements, null
  br i1 %21, label %get_table_header_ptr.exit.thread, label %22

; <label>:22                                      ; preds = %20
  %23 = getelementptr inbounds %struct.table_entry* %13, i64 0, i32 3
  %24 = load i32* %23, align 4, !tbaa !17
  store i32 %24, i32* %N_elements, align 4, !tbaa !2
  br label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit.thread:                 ; preds = %10, %0, %22, %20, %12, %get_table_header_ptr.exit
  %.0 = phi i32 [ -2, %get_table_header_ptr.exit ], [ -101, %10 ], [ 0, %12 ], [ 1, %20 ], [ 1, %22 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc %struct.table_entry* @find_table_entry(%struct.table_header* nocapture readonly %thp, i8* %key, %struct.table_entry** %prev_tep_ptr) #1 {
  %1 = getelementptr inbounds %struct.table_header* %thp, i64 0, i32 0
  %tep.03 = load %struct.table_entry** %1, align 8
  %2 = icmp eq %struct.table_entry* %tep.03, null
  br i1 %2, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %0
  %3 = getelementptr inbounds %struct.table_header* %thp, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !10
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br label %7

; <label>:7                                       ; preds = %.lr.ph, %19
  %tep.05 = phi %struct.table_entry* [ %tep.03, %.lr.ph ], [ %tep.0, %19 ]
  %prev_tep.04 = phi %struct.table_entry* [ null, %.lr.ph ], [ %tep.05, %19 ]
  %8 = getelementptr inbounds %struct.table_entry* %tep.05, i64 0, i32 1
  %9 = load i8** %8, align 8, !tbaa !14
  br i1 %6, label %13, label %10

; <label>:10                                      ; preds = %7
  %11 = tail call i32 @Util_StrCmpi(i8* %key, i8* %9) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %19

; <label>:13                                      ; preds = %7
  %14 = tail call i32 @strcmp(i8* %key, i8* %9) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %13, %10
  %17 = icmp eq %struct.table_entry** %prev_tep_ptr, null
  br i1 %17, label %.loopexit, label %18

; <label>:18                                      ; preds = %16
  store %struct.table_entry* %prev_tep.04, %struct.table_entry** %prev_tep_ptr, align 8, !tbaa !6
  br label %.loopexit

; <label>:19                                      ; preds = %10, %13
  %20 = getelementptr inbounds %struct.table_entry* %tep.05, i64 0, i32 0
  %tep.0 = load %struct.table_entry** %20, align 8
  %21 = icmp eq %struct.table_entry* %tep.0, null
  br i1 %21, label %.loopexit, label %7

.loopexit:                                        ; preds = %19, %0, %18, %16
  %.0 = phi %struct.table_entry* [ %tep.05, %16 ], [ %tep.05, %18 ], [ null, %0 ], [ null, %19 ]
  ret %struct.table_entry* %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableDeleteKey(i32 %handle, i8* %key) #1 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = tail call i8* @strchr(i8* %key, i32 47) #10
  %not..i = icmp eq i8* %11, null
  br i1 %not..i, label %12, label %get_table_header_ptr.exit.thread

; <label>:12                                      ; preds = %10
  %13 = tail call fastcc i32 @delete_key(%struct.table_header* %8, i8* %key) #9
  br label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit.thread:                 ; preds = %10, %0, %get_table_header_ptr.exit, %12
  %.0 = phi i32 [ %13, %12 ], [ -2, %get_table_header_ptr.exit ], [ -101, %10 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @delete_key(%struct.table_header* nocapture %thp, i8* %key) #1 {
  %prev_tep = alloca %struct.table_entry*, align 8
  %1 = call fastcc %struct.table_entry* @find_table_entry(%struct.table_header* %thp, i8* %key, %struct.table_entry** %prev_tep) #9
  %2 = icmp eq %struct.table_entry* %1, null
  br i1 %2, label %18, label %3

; <label>:3                                       ; preds = %0
  %4 = bitcast %struct.table_entry* %1 to i64*
  %5 = load i64* %4, align 8, !tbaa !12
  %6 = load %struct.table_entry** %prev_tep, align 8, !tbaa !6
  %7 = icmp eq %struct.table_entry* %6, null
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %3
  %9 = bitcast %struct.table_header* %thp to i64*
  store i64 %5, i64* %9, align 8, !tbaa !8
  br label %12

; <label>:10                                      ; preds = %3
  %11 = bitcast %struct.table_entry* %6 to i64*
  store i64 %5, i64* %11, align 8, !tbaa !12
  br label %12

; <label>:12                                      ; preds = %10, %8
  %13 = getelementptr inbounds %struct.table_entry* %1, i64 0, i32 1
  %14 = load i8** %13, align 8, !tbaa !14
  call void @free(i8* %14) #10
  %15 = getelementptr inbounds %struct.table_entry* %1, i64 0, i32 4
  %16 = load i8** %15, align 8, !tbaa !15
  call void @free(i8* %16) #10
  %17 = bitcast %struct.table_entry* %1 to i8*
  call void @free(i8* %17) #10
  br label %18

; <label>:18                                      ; preds = %0, %12
  %.0 = phi i32 [ 0, %12 ], [ -103, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableCreateFromString(i8* %string) #1 {
  %1 = tail call i32 @Util_TableCreate(i32 1) #9
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %6, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @Util_TableSetFromString(i32 %1, i8* %string) #9
  %5 = icmp slt i32 %4, 0
  %. = select i1 %5, i32 %4, i32 %1
  br label %6

; <label>:6                                       ; preds = %3, %0
  %.0 = phi i32 [ %1, %0 ], [ %., %3 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetFromString(i32 %handle, i8* %string) #1 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %value_int = alloca i32, align 4
  %value_double = alloca double, align 8
  %3 = tail call i8* @Util_Strdup(i8* %string) #10
  %4 = icmp eq i8* %3, null
  br i1 %4, label %50, label %.preheader

.preheader:                                       ; preds = %0
  %5 = load i8* %3, align 1, !tbaa !18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %7 = bitcast i32* %2 to i8*
  %8 = bitcast double* %value_double to i64*
  %9 = bitcast double* %1 to i8*
  %10 = bitcast double* %1 to i64*
  br label %11

; <label>:11                                      ; preds = %.lr.ph, %46
  %Set_count.010 = phi i32 [ 0, %.lr.ph ], [ %47, %46 ]
  %p.09 = phi i8* [ %3, %.lr.ph ], [ %q.0, %46 ]
  %12 = call i64 @strspn(i8* %p.09, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) #10
  %13 = getelementptr inbounds i8* %p.09, i64 %12
  %14 = call i8* @strchr(i8* %13, i32 61) #10
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %11
  call void @free(i8* %3) #9
  br label %50

; <label>:17                                      ; preds = %11
  %18 = getelementptr inbounds i8* %14, i64 1
  store i8 0, i8* %14, align 1, !tbaa !18
  %19 = call i64 @strcspn(i8* %18, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0)) #10
  %.sum = add i64 %19, 1
  %20 = getelementptr inbounds i8* %14, i64 %.sum
  %21 = load i8* %20, align 1, !tbaa !18
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

; <label>:23                                      ; preds = %17
  %.sum2 = add i64 %19, 2
  %24 = getelementptr inbounds i8* %14, i64 %.sum2
  store i8 0, i8* %20, align 1, !tbaa !18
  br label %25

; <label>:25                                      ; preds = %17, %23
  %q.0 = phi i8* [ %24, %23 ], [ %20, %17 ]
  %26 = call i64 @strspn(i8* %18, i8* getelementptr inbounds ([13 x i8]* @.str2, i64 0, i64 0)) #10
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %28, label %37

; <label>:28                                      ; preds = %25
  %29 = call i32 (i8*, i8*, ...)* @sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8]* @.str3, i64 0, i64 0), i32* %value_int) #10
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %32, label %31

; <label>:31                                      ; preds = %28
  call void @free(i8* %3) #9
  br label %50

; <label>:32                                      ; preds = %28
  %33 = load i32* %value_int, align 4, !tbaa !2
  call void @llvm.lifetime.start(i64 4, i8* %7)
  store i32 %33, i32* %2, align 4, !tbaa !2
  %34 = call fastcc i32 @internal_set(i32 %handle, i32 2, i32 1, i8* %7, i8* %13) #10
  call void @llvm.lifetime.end(i64 4, i8* %7)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

; <label>:36                                      ; preds = %32
  call void @free(i8* %3) #9
  br label %50

; <label>:37                                      ; preds = %25
  %38 = call i32 (i8*, i8*, ...)* @sscanf(i8* %18, i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), double* %value_double) #10
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %41, label %40

; <label>:40                                      ; preds = %37
  call void @free(i8* %3) #9
  br label %50

; <label>:41                                      ; preds = %37
  %42 = load i64* %8, align 8, !tbaa !19
  call void @llvm.lifetime.start(i64 8, i8* %9)
  store i64 %42, i64* %10, align 8, !tbaa !19
  %43 = call fastcc i32 @internal_set(i32 %handle, i32 6, i32 1, i8* %9, i8* %13) #10
  call void @llvm.lifetime.end(i64 8, i8* %9)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45                                      ; preds = %41
  call void @free(i8* %3) #9
  br label %50

; <label>:46                                      ; preds = %41, %32
  %47 = add nuw nsw i32 %Set_count.010, 1
  %48 = load i8* %q.0, align 1, !tbaa !18
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %._crit_edge, label %11

._crit_edge:                                      ; preds = %46, %.preheader
  %Set_count.0.lcssa = phi i32 [ 0, %.preheader ], [ %47, %46 ]
  call void @free(i8* %3) #9
  br label %50

; <label>:50                                      ; preds = %0, %._crit_edge, %45, %40, %36, %31, %16
  %.0 = phi i32 [ -3, %16 ], [ -3, %31 ], [ %34, %36 ], [ -3, %40 ], [ %43, %45 ], [ %Set_count.0.lcssa, %._crit_edge ], [ -1, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i8* @Util_Strdup(i8*) #6

; Function Attrs: nounwind optsize readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strcspn(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetInt(i32 %handle, i32 %value, i8* %key) #1 {
  %1 = alloca i32, align 4
  store i32 %value, i32* %1, align 4, !tbaa !2
  %2 = bitcast i32* %1 to i8*
  %3 = call fastcc i32 @internal_set(i32 %handle, i32 2, i32 1, i8* %2, i8* %key) #10
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetReal(i32 %handle, double %value, i8* %key) #1 {
  %1 = alloca double, align 8
  store double %value, double* %1, align 8, !tbaa !19
  %2 = bitcast double* %1 to i8*
  %3 = call fastcc i32 @internal_set(i32 %handle, i32 6, i32 1, i8* %2, i8* %key) #10
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetString(i32 %handle, i8* %string, i8* %key) #1 {
  %1 = tail call i64 @strlen(i8* %string) #10
  %2 = trunc i64 %1 to i32
  %3 = tail call fastcc i32 @internal_set(i32 %handle, i32 1, i32 %2, i8* %string, i8* %key) #9
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @internal_set(i32 %handle, i32 %type_code, i32 %N_elements, i8* %value, i8* %key) #1 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = tail call i8* @strchr(i8* %key, i32 47) #10
  %not..i = icmp eq i8* %11, null
  br i1 %not..i, label %12, label %get_table_header_ptr.exit.thread

; <label>:12                                      ; preds = %10
  %13 = icmp slt i32 %N_elements, 0
  br i1 %13, label %get_table_header_ptr.exit.thread, label %14

; <label>:14                                      ; preds = %12
  %15 = tail call fastcc i32 @delete_key(%struct.table_header* %8, i8* %key) #9
  switch i32 %15, label %17 [
    i32 0, label %18
    i32 -103, label %16
  ]

; <label>:16                                      ; preds = %14
  br label %18

; <label>:17                                      ; preds = %14
  tail call void @abort() #11
  unreachable

; <label>:18                                      ; preds = %14, %16
  %return_value.0 = phi i32 [ 0, %16 ], [ 1, %14 ]
  %19 = tail call i8* @malloc(i64 32) #10
  %20 = icmp eq i8* %19, null
  br i1 %20, label %get_table_header_ptr.exit.thread, label %21

; <label>:21                                      ; preds = %18
  %22 = tail call i8* @Util_Strdup(i8* %key) #10
  %23 = getelementptr inbounds i8* %19, i64 8
  %24 = bitcast i8* %23 to i8**
  store i8* %22, i8** %24, align 8, !tbaa !14
  %25 = icmp eq i8* %22, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %21
  tail call void @free(i8* %19) #9
  br label %get_table_header_ptr.exit.thread

; <label>:27                                      ; preds = %21
  %28 = getelementptr inbounds i8* %19, i64 16
  %29 = bitcast i8* %28 to i32*
  store i32 %type_code, i32* %29, align 4, !tbaa !16
  %30 = getelementptr inbounds i8* %19, i64 20
  %31 = bitcast i8* %30 to i32*
  store i32 %N_elements, i32* %31, align 4, !tbaa !17
  %32 = tail call i32 @CCTK_VarTypeSize(i32 %type_code) #10
  %33 = mul nsw i32 %32, %N_elements
  %34 = sext i32 %33 to i64
  %35 = tail call i8* @malloc(i64 %34) #10
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

; <label>:37                                      ; preds = %27
  tail call void @free(i8* %22) #9
  tail call void @free(i8* %19) #9
  br label %get_table_header_ptr.exit.thread

; <label>:38                                      ; preds = %27
  %39 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %35, i1 false)
  %40 = tail call i8* @__memcpy_chk(i8* %35, i8* %value, i64 %34, i64 %39) #10
  %41 = getelementptr inbounds i8* %19, i64 24
  %42 = bitcast i8* %41 to i8**
  store i8* %35, i8** %42, align 8, !tbaa !15
  %43 = bitcast %struct.table_header* %8 to i64*
  %44 = load i64* %43, align 8, !tbaa !8
  %45 = bitcast i8* %19 to i64*
  store i64 %44, i64* %45, align 8, !tbaa !12
  %46 = bitcast %struct.table_header* %8 to i8**
  store i8* %19, i8** %46, align 8, !tbaa !8
  br label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit.thread:                 ; preds = %10, %0, %18, %12, %get_table_header_ptr.exit, %38, %37, %26
  %.0 = phi i32 [ -1, %26 ], [ -1, %37 ], [ %return_value.0, %38 ], [ -2, %get_table_header_ptr.exit ], [ -101, %10 ], [ -3, %12 ], [ -1, %18 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetString(i32 %handle, i32 %buffer_length, i8* %buffer, i8* %key) #1 {
  %1 = add nsw i32 %buffer_length, -1
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 1, i32 %1, i8* %buffer, i8* %key) #9
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %11, label %4

; <label>:4                                       ; preds = %0
  %5 = icmp eq i8* %buffer, null
  br i1 %5, label %.critedge, label %6

; <label>:6                                       ; preds = %4
  %7 = icmp slt i32 %2, %1
  %. = select i1 %7, i32 %2, i32 %1
  %8 = sext i32 %. to i64
  %9 = getelementptr inbounds i8* %buffer, i64 %8
  store i8 0, i8* %9, align 1, !tbaa !18
  %10 = icmp sgt i32 %2, %1
  br i1 %10, label %11, label %.critedge

.critedge:                                        ; preds = %4, %6
  br label %11

; <label>:11                                      ; preds = %.critedge, %6, %0
  %.0 = phi i32 [ %2, %0 ], [ %2, %.critedge ], [ -102, %6 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @internal_get(i32 %handle, i32 %type_code, i32 %N_value_buffer, i8* %value_buffer, i8* %key) #1 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = tail call i8* @strchr(i8* %key, i32 47) #10
  %not..i = icmp eq i8* %11, null
  br i1 %not..i, label %12, label %get_table_header_ptr.exit.thread

; <label>:12                                      ; preds = %10
  %13 = tail call fastcc %struct.table_entry* @find_table_entry(%struct.table_header* %8, i8* %key, %struct.table_entry** null) #9
  %14 = icmp eq %struct.table_entry* %13, null
  br i1 %14, label %get_table_header_ptr.exit.thread, label %15

; <label>:15                                      ; preds = %12
  %16 = getelementptr inbounds %struct.table_entry* %13, i64 0, i32 2
  %17 = load i32* %16, align 4, !tbaa !16
  %18 = icmp eq i32 %17, %type_code
  br i1 %18, label %19, label %get_table_header_ptr.exit.thread

; <label>:19                                      ; preds = %15
  %20 = icmp eq i8* %value_buffer, null
  br i1 %20, label %._crit_edge, label %21

._crit_edge:                                      ; preds = %19
  %.pre = getelementptr inbounds %struct.table_entry* %13, i64 0, i32 3
  br label %34

; <label>:21                                      ; preds = %19
  %22 = icmp slt i32 %N_value_buffer, 0
  br i1 %22, label %get_table_header_ptr.exit.thread, label %23

; <label>:23                                      ; preds = %21
  %24 = getelementptr inbounds %struct.table_entry* %13, i64 0, i32 3
  %25 = load i32* %24, align 4, !tbaa !17
  %26 = icmp sgt i32 %25, %N_value_buffer
  %N_value_buffer. = select i1 %26, i32 %N_value_buffer, i32 %25
  %27 = tail call i32 @CCTK_VarTypeSize(i32 %type_code) #10
  %28 = mul nsw i32 %N_value_buffer., %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.table_entry* %13, i64 0, i32 4
  %31 = load i8** %30, align 8, !tbaa !15
  %32 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %value_buffer, i1 false)
  %33 = tail call i8* @__memcpy_chk(i8* %value_buffer, i8* %31, i64 %29, i64 %32) #10
  br label %34

; <label>:34                                      ; preds = %._crit_edge, %23
  %.pre-phi = phi i32* [ %.pre, %._crit_edge ], [ %24, %23 ]
  %35 = load i32* %.pre-phi, align 4, !tbaa !17
  br label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit.thread:                 ; preds = %10, %0, %21, %15, %12, %get_table_header_ptr.exit, %34
  %.0 = phi i32 [ %35, %34 ], [ -2, %get_table_header_ptr.exit ], [ -101, %10 ], [ -103, %12 ], [ -104, %15 ], [ -3, %21 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetPointer(i32 %handle, i8* %value, i8* %key) #1 {
  %1 = alloca i8*, align 8
  store i8* %value, i8** %1, align 8, !tbaa !6
  %2 = bitcast i8** %1 to i8*
  %3 = call fastcc i32 @internal_set(i32 %handle, i32 15, i32 1, i8* %2, i8* %key) #10
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetPointerArray(i32 %handle, i32 %N_elements, i8** %array, i8* %key) #1 {
  %1 = bitcast i8** %array to i8*
  %2 = tail call fastcc i32 @internal_set(i32 %handle, i32 15, i32 %N_elements, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetFnPointer(i32 %handle, void ()* %value, i8* %key) #1 {
  %1 = alloca void ()*, align 8
  store void ()* %value, void ()** %1, align 8, !tbaa !6
  %2 = bitcast void ()** %1 to i8*
  %3 = call fastcc i32 @internal_set(i32 %handle, i32 16, i32 1, i8* %2, i8* %key) #10
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetFnPointerArray(i32 %handle, i32 %N_elements, void ()** %array, i8* %key) #1 {
  %1 = bitcast void ()** %array to i8*
  %2 = tail call fastcc i32 @internal_set(i32 %handle, i32 16, i32 %N_elements, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetChar(i32 %handle, i8 zeroext %value, i8* %key) #1 {
  %1 = alloca i8, align 1
  store i8 %value, i8* %1, align 1, !tbaa !18
  %2 = call fastcc i32 @internal_set(i32 %handle, i32 1, i32 1, i8* %1, i8* %key) #10
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetCharArray(i32 %handle, i32 %N_elements, i8* %array, i8* %key) #1 {
  %1 = tail call fastcc i32 @internal_set(i32 %handle, i32 1, i32 %N_elements, i8* %array, i8* %key) #9
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetIntArray(i32 %handle, i32 %N_elements, i32* %array, i8* %key) #1 {
  %1 = bitcast i32* %array to i8*
  %2 = tail call fastcc i32 @internal_set(i32 %handle, i32 2, i32 %N_elements, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetInt4(i32 %handle, i32 %value, i8* %key) #1 {
  %1 = alloca i32, align 4
  store i32 %value, i32* %1, align 4, !tbaa !2
  %2 = bitcast i32* %1 to i8*
  %3 = call fastcc i32 @internal_set(i32 %handle, i32 4, i32 1, i8* %2, i8* %key) #10
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetInt4Array(i32 %handle, i32 %N_elements, i32* %array, i8* %key) #1 {
  %1 = bitcast i32* %array to i8*
  %2 = tail call fastcc i32 @internal_set(i32 %handle, i32 4, i32 %N_elements, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetRealArray(i32 %handle, i32 %N_elements, double* %array, i8* %key) #1 {
  %1 = bitcast double* %array to i8*
  %2 = tail call fastcc i32 @internal_set(i32 %handle, i32 6, i32 %N_elements, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetReal8(i32 %handle, double %value, i8* %key) #1 {
  %1 = alloca double, align 8
  store double %value, double* %1, align 8, !tbaa !19
  %2 = bitcast double* %1 to i8*
  %3 = call fastcc i32 @internal_set(i32 %handle, i32 8, i32 1, i8* %2, i8* %key) #10
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetReal8Array(i32 %handle, i32 %N_elements, double* %array, i8* %key) #1 {
  %1 = bitcast double* %array to i8*
  %2 = tail call fastcc i32 @internal_set(i32 %handle, i32 8, i32 %N_elements, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetComplex(i32 %handle, double %value.coerce0, double %value.coerce1, i8* %key) #1 {
  %value = alloca %struct.CCTK_COMPLEX16, align 8
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX16* %value, i64 0, i32 0
  store double %value.coerce0, double* %1, align 8
  %2 = getelementptr %struct.CCTK_COMPLEX16* %value, i64 0, i32 1
  store double %value.coerce1, double* %2, align 8
  %3 = bitcast %struct.CCTK_COMPLEX16* %value to i8*
  %4 = call fastcc i32 @internal_set(i32 %handle, i32 10, i32 1, i8* %3, i8* %key) #10
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableSetComplexArray(i32 %handle, i32 %N_elements, %struct.CCTK_COMPLEX16* %array, i8* %key) #1 {
  %1 = bitcast %struct.CCTK_COMPLEX16* %array to i8*
  %2 = tail call fastcc i32 @internal_set(i32 %handle, i32 10, i32 %N_elements, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetPointer(i32 %handle, i8** %value, i8* %key) #1 {
  %1 = bitcast i8** %value to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 15, i32 1, i8* %1, i8* %key) #10
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 -105, i32 %2
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetPointerArray(i32 %handle, i32 %N_array, i8** %array, i8* %key) #1 {
  %1 = bitcast i8** %array to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 15, i32 %N_array, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetFnPointer(i32 %handle, void ()** %value, i8* %key) #1 {
  %1 = bitcast void ()** %value to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 16, i32 1, i8* %1, i8* %key) #10
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 -105, i32 %2
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetFnPointerArray(i32 %handle, i32 %N_array, void ()** %array, i8* %key) #1 {
  %1 = bitcast void ()** %array to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 16, i32 %N_array, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetChar(i32 %handle, i8* %value, i8* %key) #1 {
  %1 = tail call fastcc i32 @internal_get(i32 %handle, i32 1, i32 1, i8* %value, i8* %key) #10
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i32 -105, i32 %1
  ret i32 %3
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetCharArray(i32 %handle, i32 %N_array, i8* %array, i8* %key) #1 {
  %1 = tail call fastcc i32 @internal_get(i32 %handle, i32 1, i32 %N_array, i8* %array, i8* %key) #9
  ret i32 %1
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetInt(i32 %handle, i32* %value, i8* %key) #1 {
  %1 = bitcast i32* %value to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 2, i32 1, i8* %1, i8* %key) #10
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 -105, i32 %2
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetIntArray(i32 %handle, i32 %N_array, i32* %array, i8* %key) #1 {
  %1 = bitcast i32* %array to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 2, i32 %N_array, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetInt4(i32 %handle, i32* %value, i8* %key) #1 {
  %1 = bitcast i32* %value to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 4, i32 1, i8* %1, i8* %key) #10
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 -105, i32 %2
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetInt4Array(i32 %handle, i32 %N_array, i32* %array, i8* %key) #1 {
  %1 = bitcast i32* %array to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 4, i32 %N_array, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetReal(i32 %handle, double* %value, i8* %key) #1 {
  %1 = bitcast double* %value to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 6, i32 1, i8* %1, i8* %key) #10
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 -105, i32 %2
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetRealArray(i32 %handle, i32 %N_array, double* %array, i8* %key) #1 {
  %1 = bitcast double* %array to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 6, i32 %N_array, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetReal8(i32 %handle, double* %value, i8* %key) #1 {
  %1 = bitcast double* %value to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 8, i32 1, i8* %1, i8* %key) #10
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 -105, i32 %2
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetReal8Array(i32 %handle, i32 %N_array, double* %array, i8* %key) #1 {
  %1 = bitcast double* %array to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 8, i32 %N_array, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetComplex(i32 %handle, %struct.CCTK_COMPLEX16* %value, i8* %key) #1 {
  %1 = bitcast %struct.CCTK_COMPLEX16* %value to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 10, i32 1, i8* %1, i8* %key) #10
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 -105, i32 %2
  ret i32 %4
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableGetComplexArray(i32 %handle, i32 %N_array, %struct.CCTK_COMPLEX16* %array, i8* %key) #1 {
  %1 = bitcast %struct.CCTK_COMPLEX16* %array to i8*
  %2 = tail call fastcc i32 @internal_get(i32 %handle, i32 10, i32 %N_array, i8* %1, i8* %key) #9
  ret i32 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableItCreate(i32 %handle) #1 {
  %1 = icmp sgt i32 %handle, -1
  %2 = load i32* @N_thp_array, align 4
  %3 = icmp sgt i32 %2, %handle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_table_header_ptr.exit, label %get_table_header_ptr.exit.thread

get_table_header_ptr.exit:                        ; preds = %0
  %4 = sext i32 %handle to i64
  %5 = load i8*** @thp_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.table_header**
  %8 = load %struct.table_header** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.table_header* %8, null
  br i1 %9, label %get_table_header_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_table_header_ptr.exit
  %11 = load i32* @N_iterators, align 4, !tbaa !2
  %12 = load i32* @N_ip_array, align 4, !tbaa !2
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %.preheader

; <label>:14                                      ; preds = %10
  %15 = tail call fastcc i32 @grow_pointer_array(i32* @N_ip_array, i8*** @ip_array) #9
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %get_table_header_ptr.exit.thread, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %14
  %.pre = load i32* @N_ip_array, align 4, !tbaa !2
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %10
  %17 = phi i32 [ %.pre, %..preheader_crit_edge ], [ %12, %10 ]
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %19 = load i8*** @ip_array, align 8, !tbaa !6
  %20 = sext i32 %17 to i64
  br label %21

; <label>:21                                      ; preds = %.lr.ph, %37
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %37 ]
  %22 = getelementptr inbounds i8** %19, i64 %indvars.iv
  %23 = load i8** %22, align 8, !tbaa !6
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %37

; <label>:25                                      ; preds = %21
  %26 = tail call i8* @malloc(i64 16) #10
  %27 = icmp eq i8* %26, null
  br i1 %27, label %get_table_header_ptr.exit.thread, label %28

; <label>:28                                      ; preds = %25
  %29 = trunc i64 %indvars.iv to i32
  %30 = bitcast i8* %26 to %struct.table_header**
  store %struct.table_header* %8, %struct.table_header** %30, align 8, !tbaa !21
  %31 = bitcast %struct.table_header* %8 to i64*
  %32 = load i64* %31, align 8, !tbaa !8
  %33 = getelementptr inbounds i8* %26, i64 8
  %34 = bitcast i8* %33 to i64*
  store i64 %32, i64* %34, align 8, !tbaa !23
  %35 = load i32* @N_iterators, align 4, !tbaa !2
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @N_iterators, align 4, !tbaa !2
  store i8* %26, i8** %22, align 8, !tbaa !6
  br label %get_table_header_ptr.exit.thread

; <label>:37                                      ; preds = %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %38 = icmp slt i64 %indvars.iv.next, %20
  br i1 %38, label %21, label %._crit_edge

._crit_edge:                                      ; preds = %37, %.preheader
  tail call void @abort() #11
  unreachable

get_table_header_ptr.exit.thread:                 ; preds = %0, %25, %14, %get_table_header_ptr.exit, %28
  %.0 = phi i32 [ %29, %28 ], [ -2, %get_table_header_ptr.exit ], [ -1, %14 ], [ -1, %25 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableItDestroy(i32 %ihandle) #1 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = load i32* @N_iterators, align 4, !tbaa !2
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* @N_iterators, align 4, !tbaa !2
  store i8* null, i8** %6, align 8, !tbaa !6
  %13 = bitcast %struct.iterator* %8 to i8*
  tail call void @free(i8* %13) #9
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %0, %get_iterator_ptr.exit, %10
  %.0 = phi i32 [ 0, %10 ], [ -2, %get_iterator_ptr.exit ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Util_TableItQueryIsNull(i32 %ihandle) #4 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 1
  %12 = load %struct.table_entry** %11, align 8, !tbaa !23
  %13 = icmp eq %struct.table_entry* %12, null
  %14 = zext i1 %13 to i32
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %0, %get_iterator_ptr.exit, %10
  %.0 = phi i32 [ %14, %10 ], [ -2, %get_iterator_ptr.exit ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Util_TableItQueryIsNonNull(i32 %ihandle) #4 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 1
  %12 = load %struct.table_entry** %11, align 8, !tbaa !23
  %not. = icmp ne %struct.table_entry* %12, null
  %13 = zext i1 %not. to i32
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %0, %get_iterator_ptr.exit, %10
  %.0 = phi i32 [ %13, %10 ], [ -2, %get_iterator_ptr.exit ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @Util_TableItQueryTableHandle(i32 %ihandle) #4 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 0
  %12 = load %struct.table_header** %11, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.table_header* %12, i64 0, i32 2
  %14 = load i32* %13, align 4, !tbaa !11
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %0, %get_iterator_ptr.exit, %10
  %.0 = phi i32 [ %14, %10 ], [ -2, %get_iterator_ptr.exit ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableItQueryKeyValueInfo(i32 %ihandle, i32 %key_buffer_length, i8* %key_buffer, i32* %type_code, i32* %N_elements) #1 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 1
  %12 = load %struct.table_entry** %11, align 8, !tbaa !23
  %13 = icmp eq %struct.table_entry* %12, null
  br i1 %13, label %get_iterator_ptr.exit.thread, label %14

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.table_entry* %12, i64 0, i32 1
  %16 = load i8** %15, align 8, !tbaa !14
  %17 = tail call i64 @strlen(i8* %16) #10
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32* %type_code, null
  br i1 %19, label %23, label %20

; <label>:20                                      ; preds = %14
  %21 = getelementptr inbounds %struct.table_entry* %12, i64 0, i32 2
  %22 = load i32* %21, align 4, !tbaa !16
  store i32 %22, i32* %type_code, align 4, !tbaa !2
  br label %23

; <label>:23                                      ; preds = %14, %20
  %24 = icmp eq i32* %N_elements, null
  br i1 %24, label %28, label %25

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds %struct.table_entry* %12, i64 0, i32 3
  %27 = load i32* %26, align 4, !tbaa !17
  store i32 %27, i32* %N_elements, align 4, !tbaa !2
  br label %28

; <label>:28                                      ; preds = %23, %25
  %29 = icmp eq i8* %key_buffer, null
  br i1 %29, label %41, label %30

; <label>:30                                      ; preds = %28
  %31 = icmp slt i32 %18, %key_buffer_length
  %32 = add nsw i32 %key_buffer_length, -1
  %33 = select i1 %31, i32 %18, i32 %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %get_iterator_ptr.exit.thread, label %35

; <label>:35                                      ; preds = %30
  %36 = sext i32 %33 to i64
  %37 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %key_buffer, i1 false)
  %38 = tail call i8* @__memcpy_chk(i8* %key_buffer, i8* %16, i64 %36, i64 %37) #10
  %39 = getelementptr inbounds i8* %key_buffer, i64 %36
  store i8 0, i8* %39, align 1, !tbaa !18
  %40 = icmp slt i32 %33, %18
  br i1 %40, label %get_iterator_ptr.exit.thread, label %41

; <label>:41                                      ; preds = %28, %35
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %0, %35, %30, %10, %get_iterator_ptr.exit, %41
  %.0 = phi i32 [ %18, %41 ], [ -2, %get_iterator_ptr.exit ], [ -106, %10 ], [ -102, %30 ], [ -102, %35 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #7

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableItAdvance(i32 %ihandle) #1 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 1
  %12 = load %struct.table_entry** %11, align 8, !tbaa !23
  %13 = icmp eq %struct.table_entry* %12, null
  br i1 %13, label %get_iterator_ptr.exit.thread, label %14

; <label>:14                                      ; preds = %10
  %15 = getelementptr inbounds %struct.table_entry* %12, i64 0, i32 0
  %16 = load %struct.table_entry** %15, align 8, !tbaa !12
  store %struct.table_entry* %16, %struct.table_entry** %11, align 8, !tbaa !23
  %not. = icmp ne %struct.table_entry* %16, null
  %17 = zext i1 %not. to i32
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %0, %10, %get_iterator_ptr.exit, %14
  %.0 = phi i32 [ %17, %14 ], [ -2, %get_iterator_ptr.exit ], [ 0, %10 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableItResetToStart(i32 %ihandle) #1 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 0
  %12 = load %struct.table_header** %11, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.table_header* %12, i64 0, i32 0
  %14 = load %struct.table_entry** %13, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 1
  store %struct.table_entry* %14, %struct.table_entry** %15, align 8, !tbaa !23
  %not. = icmp ne %struct.table_entry* %14, null
  %16 = zext i1 %not. to i32
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %0, %get_iterator_ptr.exit, %10
  %.0 = phi i32 [ %16, %10 ], [ -2, %get_iterator_ptr.exit ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableItSetToNull(i32 %ihandle) #1 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 1
  store %struct.table_entry* null, %struct.table_entry** %11, align 8, !tbaa !23
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %0, %get_iterator_ptr.exit, %10
  %.0 = phi i32 [ 0, %10 ], [ -2, %get_iterator_ptr.exit ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @Util_TableItSetToKey(i32 %ihandle, i8* %key) #1 {
  %1 = icmp sgt i32 %ihandle, -1
  %2 = load i32* @N_ip_array, align 4
  %3 = icmp sgt i32 %2, %ihandle
  %or.cond.i = and i1 %1, %3
  br i1 %or.cond.i, label %get_iterator_ptr.exit, label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit:                            ; preds = %0
  %4 = sext i32 %ihandle to i64
  %5 = load i8*** @ip_array, align 8, !tbaa !6
  %6 = getelementptr inbounds i8** %5, i64 %4
  %7 = bitcast i8** %6 to %struct.iterator**
  %8 = load %struct.iterator** %7, align 8, !tbaa !6
  %9 = icmp eq %struct.iterator* %8, null
  br i1 %9, label %get_iterator_ptr.exit.thread, label %10

; <label>:10                                      ; preds = %get_iterator_ptr.exit
  %11 = tail call i8* @strchr(i8* %key, i32 47) #10
  %not..i = icmp eq i8* %11, null
  br i1 %not..i, label %12, label %get_iterator_ptr.exit.thread

; <label>:12                                      ; preds = %10
  %13 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 0
  %14 = load %struct.table_header** %13, align 8, !tbaa !21
  %15 = tail call fastcc %struct.table_entry* @find_table_entry(%struct.table_header* %14, i8* %key, %struct.table_entry** null) #9
  %16 = getelementptr inbounds %struct.iterator* %8, i64 0, i32 1
  store %struct.table_entry* %15, %struct.table_entry** %16, align 8, !tbaa !23
  %17 = icmp eq %struct.table_entry* %15, null
  %. = select i1 %17, i32 -103, i32 0
  br label %get_iterator_ptr.exit.thread

get_iterator_ptr.exit.thread:                     ; preds = %10, %0, %12, %get_iterator_ptr.exit
  %.0 = phi i32 [ -2, %get_iterator_ptr.exit ], [ -101, %10 ], [ %., %12 ], [ -2, %0 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @CCTK_VarTypeSize(i32) #6

; Function Attrs: optsize
declare i32 @Util_StrCmpi(i8*, i8*) #6

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !7, i64 0}
!9 = !{!"table_header", !7, i64 0, !3, i64 8, !3, i64 12}
!10 = !{!9, !3, i64 8}
!11 = !{!9, !3, i64 12}
!12 = !{!13, !7, i64 0}
!13 = !{!"table_entry", !7, i64 0, !7, i64 8, !3, i64 16, !3, i64 20, !7, i64 24}
!14 = !{!13, !7, i64 8}
!15 = !{!13, !7, i64 24}
!16 = !{!13, !3, i64 16}
!17 = !{!13, !3, i64 20}
!18 = !{!4, !4, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !4, i64 0}
!21 = !{!22, !7, i64 0}
!22 = !{!"iterator", !7, i64 0, !7, i64 8}
!23 = !{!22, !7, i64 8}

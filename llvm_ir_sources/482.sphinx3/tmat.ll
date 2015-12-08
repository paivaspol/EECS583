; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/tmat.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmat_t = type { i32***, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"TMAT %d = %d x %d\0A\00", align 1
@.str1 = private unnamed_addr constant [6 x i8] c" %12d\00", align 1
@.str3 = private unnamed_addr constant [52 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/tmat.c\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str5 = private unnamed_addr constant [49 x i8] c"Reading HMM transition probability matrices: %s\0A\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"SYSTEM_ERROR\00", align 1
@.str8 = private unnamed_addr constant [21 x i8] c"fopen(%s,rb) failed\0A\00", align 1
@.str9 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str10 = private unnamed_addr constant [24 x i8] c"bio_readhdr(%s) failed\0A\00", align 1
@.str11 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str13 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str14 = private unnamed_addr constant [40 x i8] c"Version mismatch(%s): %s, expecting %s\0A\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"chksum0\00", align 1
@.str16 = private unnamed_addr constant [34 x i8] c"bio_fread(%s) (arraysize) failed\0A\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"%s: #tmat (%d) exceeds limit (%d)\0A\00", align 1
@.str18 = private unnamed_addr constant [42 x i8] c"%s: #from-states(%d) != #to-states(%d)-1\0A\00", align 1
@.str19 = private unnamed_addr constant [58 x i8] c"%s: #float32s(%d) doesn't match dimensions: %d x %d x %d\0A\00", align 1
@.str20 = private unnamed_addr constant [30 x i8] c"fread(%s) (arraydata) failed\0A\00", align 1
@.str21 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str22 = private unnamed_addr constant [35 x i8] c"Non-empty file beyond end of data\0A\00", align 1
@.str23 = private unnamed_addr constant [43 x i8] c"Read %d transition matrices of size %dx%d\0A\00", align 1
@.str24 = private unnamed_addr constant [27 x i8] c"Tmat not upper triangular\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @tmat_dump(%struct.tmat_t* nocapture %tmat, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %n_tmat = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 1
  %0 = load i32* %n_tmat, align 4, !tbaa !0
  %cmp45 = icmp sgt i32 %0, 0
  br i1 %cmp45, label %for.body.lr.ph, label %for.end22

for.body.lr.ph:                                   ; preds = %entry
  %n_state = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 2
  %tp = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end18
  %indvars.iv49 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next50, %for.end18 ]
  %1 = load i32* %n_state, align 4, !tbaa !0
  %add = add nsw i32 %1, 1
  %2 = trunc i64 %indvars.iv49 to i32
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %1, i32 %add) #6
  %3 = load i32* %n_state, align 4, !tbaa !0
  %cmp443 = icmp sgt i32 %3, 0
  br i1 %cmp443, label %for.cond6.preheader, label %for.end18

for.cond6.preheader:                              ; preds = %for.body, %for.end
  %4 = phi i32 [ %11, %for.end ], [ %3, %for.body ]
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.end ], [ 0, %for.body ]
  %cmp841 = icmp slt i32 %4, 0
  br i1 %cmp841, label %for.end, label %for.body9

for.body9:                                        ; preds = %for.cond6.preheader, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.cond6.preheader ]
  %5 = load i32**** %tp, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32*** %5, i64 %indvars.iv49
  %6 = load i32*** %arrayidx, align 8, !tbaa !3
  %arrayidx12 = getelementptr inbounds i32** %6, i64 %indvars.iv47
  %7 = load i32** %arrayidx12, align 8, !tbaa !3
  %arrayidx13 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %8 = load i32* %arrayidx13, align 4, !tbaa !0
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([6 x i8]* @.str1, i64 0, i64 0), i32 %8) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = load i32* %n_state, align 4, !tbaa !0
  %10 = trunc i64 %indvars.iv to i32
  %cmp8 = icmp slt i32 %10, %9
  br i1 %cmp8, label %for.body9, label %for.end

for.end:                                          ; preds = %for.body9, %for.cond6.preheader
  %fputc40 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next48 = add i64 %indvars.iv47, 1
  %11 = load i32* %n_state, align 4, !tbaa !0
  %12 = trunc i64 %indvars.iv.next48 to i32
  %cmp4 = icmp slt i32 %12, %11
  br i1 %cmp4, label %for.cond6.preheader, label %for.end18

for.end18:                                        ; preds = %for.end, %for.body
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %indvars.iv.next50 = add i64 %indvars.iv49, 1
  %13 = load i32* %n_tmat, align 4, !tbaa !0
  %14 = trunc i64 %indvars.iv.next50 to i32
  %cmp = icmp slt i32 %14, %13
  br i1 %cmp, label %for.body, label %for.end22

for.end22:                                        ; preds = %for.end18, %entry
  %call23 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @tmat_chk_uppertri(%struct.tmat_t* nocapture %tmat) #2 {
entry:
  %n_tmat = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 1
  %0 = load i32* %n_tmat, align 4, !tbaa !0
  %cmp33 = icmp sgt i32 %0, 0
  br i1 %cmp33, label %for.cond1.preheader.lr.ph, label %return

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %n_state = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 2
  %1 = load i32* %n_state, align 4, !tbaa !0
  %cmp230 = icmp sgt i32 %1, 0
  %tp = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc16
  %indvars.iv40 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next41, %for.inc16 ]
  br i1 %cmp230, label %for.body3, label %for.inc16

for.cond1.loopexit:                               ; preds = %for.cond4
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp628, label %for.body3, label %for.inc16

for.body3:                                        ; preds = %for.cond1.preheader, %for.cond1.loopexit
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.cond1.loopexit ], [ 0, %for.cond1.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond1.loopexit ], [ 1, %for.cond1.preheader ]
  %dst.031 = phi i32 [ %add, %for.cond1.loopexit ], [ 0, %for.cond1.preheader ]
  %indvars.iv.next39 = add i64 %indvars.iv38, 1
  %add = add nsw i32 %dst.031, 1
  %2 = trunc i64 %indvars.iv.next39 to i32
  %cmp628 = icmp slt i32 %2, %1
  br i1 %cmp628, label %for.body7.lr.ph, label %for.inc16

for.body7.lr.ph:                                  ; preds = %for.body3
  %3 = load i32**** %tp, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32*** %3, i64 %indvars.iv40
  %4 = load i32*** %arrayidx, align 8, !tbaa !3
  br label %for.body7

for.cond4:                                        ; preds = %for.body7
  %cmp6 = icmp slt i32 %inc, %1
  %indvars.iv.next36 = add i64 %indvars.iv35, 1
  br i1 %cmp6, label %for.body7, label %for.cond1.loopexit

for.body7:                                        ; preds = %for.body7.lr.ph, %for.cond4
  %indvars.iv35 = phi i64 [ %indvars.iv, %for.body7.lr.ph ], [ %indvars.iv.next36, %for.cond4 ]
  %src.029 = phi i32 [ %add, %for.body7.lr.ph ], [ %inc, %for.cond4 ]
  %arrayidx10 = getelementptr inbounds i32** %4, i64 %indvars.iv35
  %5 = load i32** %arrayidx10, align 8, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %5, i64 %indvars.iv38
  %6 = load i32* %arrayidx11, align 4, !tbaa !0
  %cmp12 = icmp sgt i32 %6, -939524096
  %inc = add nsw i32 %src.029, 1
  br i1 %cmp12, label %return, label %for.cond4

for.inc16:                                        ; preds = %for.cond1.loopexit, %for.body3, %for.cond1.preheader
  %indvars.iv.next41 = add i64 %indvars.iv40, 1
  %7 = trunc i64 %indvars.iv.next41 to i32
  %cmp = icmp slt i32 %7, %0
  br i1 %cmp, label %for.cond1.preheader, label %return

return:                                           ; preds = %entry, %for.inc16, %for.body7
  %retval.0 = phi i32 [ -1, %for.body7 ], [ 0, %for.inc16 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @tmat_chk_1skip(%struct.tmat_t* nocapture %tmat) #2 {
entry:
  %n_tmat = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 1
  %0 = load i32* %n_tmat, align 4, !tbaa !0
  %cmp34 = icmp sgt i32 %0, 0
  br i1 %cmp34, label %for.cond1.preheader.lr.ph, label %return

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %n_state = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 2
  %1 = load i32* %n_state, align 4, !tbaa !0
  %cmp231 = icmp sgt i32 %1, 0
  %tp = getelementptr inbounds %struct.tmat_t* %tmat, i64 0, i32 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.inc16
  %indvars.iv42 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next43, %for.inc16 ]
  br i1 %cmp231, label %for.body3, label %for.inc16

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc13
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc13 ], [ 0, %for.cond1.preheader ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc13 ], [ 3, %for.cond1.preheader ]
  %2 = add nsw i64 %indvars.iv39, 3
  %3 = trunc i64 %2 to i32
  %cmp629 = icmp sgt i32 %3, %1
  br i1 %cmp629, label %for.inc13, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.body3
  %4 = sext i32 %indvars.iv to i64
  %5 = load i32**** %tp, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32*** %5, i64 %indvars.iv42
  %6 = load i32*** %arrayidx, align 8, !tbaa !3
  %arrayidx10 = getelementptr inbounds i32** %6, i64 %indvars.iv39
  %7 = load i32** %arrayidx10, align 8, !tbaa !3
  br label %for.body7

for.cond4:                                        ; preds = %for.body7
  %8 = trunc i64 %indvars.iv36 to i32
  %cmp6 = icmp slt i32 %8, %1
  %indvars.iv.next37 = add i64 %indvars.iv36, 1
  br i1 %cmp6, label %for.body7, label %for.inc13

for.body7:                                        ; preds = %for.cond4, %for.body7.lr.ph
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.cond4 ], [ %4, %for.body7.lr.ph ]
  %arrayidx11 = getelementptr inbounds i32* %7, i64 %indvars.iv36
  %9 = load i32* %arrayidx11, align 4, !tbaa !0
  %cmp12 = icmp sgt i32 %9, -939524096
  br i1 %cmp12, label %return, label %for.cond4

for.inc13:                                        ; preds = %for.cond4, %for.body3
  %indvars.iv.next40 = add i64 %indvars.iv39, 1
  %10 = trunc i64 %indvars.iv.next40 to i32
  %cmp2 = icmp slt i32 %10, %1
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %cmp2, label %for.body3, label %for.inc16

for.inc16:                                        ; preds = %for.inc13, %for.cond1.preheader
  %indvars.iv.next43 = add i64 %indvars.iv42, 1
  %11 = trunc i64 %indvars.iv.next43 to i32
  %cmp = icmp slt i32 %11, %0
  br i1 %cmp, label %for.cond1.preheader, label %return

return:                                           ; preds = %entry, %for.inc16, %for.body7
  %retval.0 = phi i32 [ -1, %for.body7 ], [ 0, %for.inc16 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.tmat_t* @tmat_init(i8* %file_name, double %tpfloor) #0 {
entry:
  %tmp = alloca i8, align 1
  %n_src = alloca i32, align 4
  %n_dst = alloca i32, align 4
  %byteswap = alloca i32, align 4
  %chksum = alloca i32, align 4
  %i = alloca i32, align 4
  %argname = alloca i8**, align 8
  %argval = alloca i8**, align 8
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 135, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([49 x i8]* @.str5, i64 0, i64 0), i8* %file_name) #6
  %call = call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 137) #6
  %0 = bitcast i8* %call to %struct.tmat_t*
  %call15 = call %struct._IO_FILE* @fopen(i8* %file_name, i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0)) #6
  %cmp = icmp eq %struct._IO_FILE* %call15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 140, i8* getelementptr inbounds ([13 x i8]* @.str7, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__fatal_sys_error(i8* getelementptr inbounds ([21 x i8]* @.str8, i64 0, i64 0), i8* %file_name) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call16 = call i32 @bio_readhdr(%struct._IO_FILE* %call15, i8*** %argname, i8*** %argval, i32* %byteswap) #6
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %for.cond.preheader

if.then18:                                        ; preds = %if.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 144, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([24 x i8]* @.str10, i64 0, i64 0), i8* %file_name) #6
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then18, %if.end
  store i32 0, i32* %i, align 4, !tbaa !0
  %1 = load i8*** %argname, align 8, !tbaa !3
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool193 = icmp eq i8* %2, null
  br i1 %tobool193, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %3 = phi i8** [ %11, %for.inc ], [ %1, %for.cond.preheader ]
  %4 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %5 = phi i8* [ %13, %for.inc ], [ %2, %for.cond.preheader ]
  %idxprom195 = phi i64 [ %idxprom, %for.inc ], [ 0, %for.cond.preheader ]
  %chksum_present.0194 = phi i32 [ %chksum_present.1, %for.inc ], [ 0, %for.cond.preheader ]
  %call22 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([8 x i8]* @.str11, i64 0, i64 0)) #7
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.body
  %6 = load i8*** %argval, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds i8** %6, i64 %idxprom195
  %7 = load i8** %arrayidx26, align 8, !tbaa !3
  %call27 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #7
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %for.inc, label %if.then29

if.then29:                                        ; preds = %if.then24
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 151, i8* getelementptr inbounds ([8 x i8]* @.str13, i64 0, i64 0)) #6
  %8 = load i32* %i, align 4, !tbaa !0
  %idxprom30 = sext i32 %8 to i64
  %9 = load i8*** %argval, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds i8** %9, i64 %idxprom30
  %10 = load i8** %arrayidx31, align 8, !tbaa !3
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([40 x i8]* @.str14, i64 0, i64 0), i8* %file_name, i8* %10, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #6
  %.pre204 = load i32* %i, align 4, !tbaa !0
  %.pre205 = load i8*** %argname, align 8, !tbaa !3
  br label %for.inc

if.else:                                          ; preds = %for.body
  %call35 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0)) #7
  %cmp36 = icmp eq i32 %call35, 0
  %.chksum_present.0 = select i1 %cmp36, i32 1, i32 %chksum_present.0194
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then24, %if.then29
  %11 = phi i8** [ %.pre205, %if.then29 ], [ %3, %if.then24 ], [ %3, %if.else ]
  %12 = phi i32 [ %.pre204, %if.then29 ], [ %4, %if.then24 ], [ %4, %if.else ]
  %chksum_present.1 = phi i32 [ %chksum_present.0194, %if.then29 ], [ %chksum_present.0194, %if.then24 ], [ %.chksum_present.0, %if.else ]
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !0
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds i8** %11, i64 %idxprom
  %13 = load i8** %arrayidx, align 8, !tbaa !3
  %tobool = icmp eq i8* %13, null
  br i1 %tobool, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %.lcssa = phi i8** [ %1, %for.cond.preheader ], [ %11, %for.inc ]
  %chksum_present.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %chksum_present.1, %for.inc ]
  %14 = load i8*** %argval, align 8, !tbaa !3
  call void @bio_hdrarg_free(i8** %.lcssa, i8** %14) #6
  store i8** null, i8*** %argval, align 8, !tbaa !3
  store i8** null, i8*** %argname, align 8, !tbaa !3
  store i32 0, i32* %chksum, align 4, !tbaa !0
  %n_tmat = getelementptr inbounds i8* %call, i64 8
  %15 = bitcast i8* %n_tmat to i32*
  %16 = load i32* %byteswap, align 4, !tbaa !0
  %call40 = call i32 @bio_fread(i8* %n_tmat, i32 4, i32 1, %struct._IO_FILE* %call15, i32 %16, i32* %chksum) #6
  %cmp41 = icmp eq i32 %call40, 1
  br i1 %cmp41, label %lor.lhs.false, label %if.then50

lor.lhs.false:                                    ; preds = %for.end
  %17 = bitcast i32* %n_src to i8*
  %18 = load i32* %byteswap, align 4, !tbaa !0
  %call42 = call i32 @bio_fread(i8* %17, i32 4, i32 1, %struct._IO_FILE* %call15, i32 %18, i32* %chksum) #6
  %cmp43 = icmp eq i32 %call42, 1
  br i1 %cmp43, label %lor.lhs.false44, label %if.then50

lor.lhs.false44:                                  ; preds = %lor.lhs.false
  %19 = bitcast i32* %n_dst to i8*
  %20 = load i32* %byteswap, align 4, !tbaa !0
  %call45 = call i32 @bio_fread(i8* %19, i32 4, i32 1, %struct._IO_FILE* %call15, i32 %20, i32* %chksum) #6
  %cmp46 = icmp eq i32 %call45, 1
  br i1 %cmp46, label %lor.lhs.false47, label %if.then50

lor.lhs.false47:                                  ; preds = %lor.lhs.false44
  %21 = bitcast i32* %i to i8*
  %22 = load i32* %byteswap, align 4, !tbaa !0
  %call48 = call i32 @bio_fread(i8* %21, i32 4, i32 1, %struct._IO_FILE* %call15, i32 %22, i32* %chksum) #6
  %cmp49 = icmp eq i32 %call48, 1
  br i1 %cmp49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %lor.lhs.false47, %lor.lhs.false44, %lor.lhs.false, %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 167, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([34 x i8]* @.str16, i64 0, i64 0), i8* %file_name) #6
  br label %if.end51

if.end51:                                         ; preds = %lor.lhs.false47, %if.then50
  %23 = load i32* %15, align 4, !tbaa !0
  %cmp53 = icmp sgt i32 %23, 2147483645
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.end51
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 170, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #6
  %24 = load i32* %15, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i8* %file_name, i32 %24, i32 2147483646) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51
  %25 = load i32* %n_dst, align 4, !tbaa !0
  %26 = load i32* %n_src, align 4, !tbaa !0
  %add = add nsw i32 %26, 1
  %cmp57 = icmp eq i32 %25, %add
  br i1 %cmp57, label %if.end59, label %if.then58

if.then58:                                        ; preds = %if.end56
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 172, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #6
  %27 = load i32* %n_src, align 4, !tbaa !0
  %28 = load i32* %n_dst, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([42 x i8]* @.str18, i64 0, i64 0), i8* %file_name, i32 %27, i32 %28) #6
  %.pre = load i32* %n_src, align 4, !tbaa !0
  br label %if.end59

if.end59:                                         ; preds = %if.end56, %if.then58
  %29 = phi i32 [ %.pre, %if.then58 ], [ %26, %if.end56 ]
  %n_state = getelementptr inbounds i8* %call, i64 12
  %30 = bitcast i8* %n_state to i32*
  store i32 %29, i32* %30, align 4, !tbaa !0
  %31 = load i32* %i, align 4, !tbaa !0
  %32 = load i32* %15, align 4, !tbaa !0
  %33 = load i32* %n_src, align 4, !tbaa !0
  %mul = mul nsw i32 %33, %32
  %34 = load i32* %n_dst, align 4, !tbaa !0
  %mul61 = mul nsw i32 %mul, %34
  %cmp62 = icmp eq i32 %31, %mul61
  br i1 %cmp62, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.end59
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 176, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #6
  %35 = load i32* %i, align 4, !tbaa !0
  %36 = load i32* %15, align 4, !tbaa !0
  %37 = load i32* %n_src, align 4, !tbaa !0
  %38 = load i32* %n_dst, align 4, !tbaa !0
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([58 x i8]* @.str19, i64 0, i64 0), i8* %file_name, i32 %35, i32 %36, i32 %37, i32 %38) #6
  %.pre200 = load i32* %15, align 4, !tbaa !0
  %.pre201 = load i32* %n_src, align 4, !tbaa !0
  %.pre202 = load i32* %n_dst, align 4, !tbaa !0
  br label %if.end65

if.end65:                                         ; preds = %if.end59, %if.then63
  %39 = phi i32 [ %34, %if.end59 ], [ %.pre202, %if.then63 ]
  %40 = phi i32 [ %33, %if.end59 ], [ %.pre201, %if.then63 ]
  %41 = phi i32 [ %32, %if.end59 ], [ %.pre200, %if.then63 ]
  %call67 = call i8*** @__ckd_calloc_3d__(i32 %41, i32 %40, i32 %39, i32 4, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 181) #6
  %42 = bitcast i8*** %call67 to i32***
  %tp68 = bitcast i8* %call to i32****
  store i32*** %42, i32**** %tp68, align 8, !tbaa !3
  %43 = load i32* %n_src, align 4, !tbaa !0
  %44 = load i32* %n_dst, align 4, !tbaa !0
  %call69 = call i8** @__ckd_calloc_2d__(i32 %43, i32 %44, i32 4, i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i32 184) #6
  %45 = load i32* %n_src, align 4, !tbaa !0
  %46 = load i32* %n_dst, align 4, !tbaa !0
  %mul70 = mul nsw i32 %46, %45
  store i32 0, i32* %i, align 4, !tbaa !0
  %47 = load i32* %15, align 4, !tbaa !0
  %cmp73192 = icmp sgt i32 %47, 0
  br i1 %cmp73192, label %for.body74, label %for.end118

for.body74:                                       ; preds = %if.end65, %for.inc116
  %48 = load i8** %call69, align 8
  %49 = load i32* %byteswap, align 4, !tbaa !0
  %call76 = call i32 @bio_fread(i8* %48, i32 4, i32 %mul70, %struct._IO_FILE* %call15, i32 %49, i32* %chksum) #6
  %cmp77 = icmp eq i32 %call76, %mul70
  br i1 %cmp77, label %for.cond80.preheader, label %if.then78

if.then78:                                        ; preds = %for.body74
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 191, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([30 x i8]* @.str20, i64 0, i64 0), i8* %file_name) #6
  br label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %for.body74, %if.then78
  %50 = load i32* %n_src, align 4, !tbaa !0
  %cmp81190 = icmp sgt i32 %50, 0
  br i1 %cmp81190, label %for.body82.lr.ph, label %for.inc116

for.body82.lr.ph:                                 ; preds = %for.cond80.preheader
  %.pre203 = load i32* %n_dst, align 4, !tbaa !0
  br label %for.body82

for.body82:                                       ; preds = %for.body82.lr.ph, %for.inc113
  %51 = phi i32 [ %.pre203, %for.body82.lr.ph ], [ %64, %for.inc113 ]
  %indvars.iv197 = phi i64 [ 0, %for.body82.lr.ph ], [ %indvars.iv.next198, %for.inc113 ]
  %arrayidx84184 = getelementptr inbounds i8** %call69, i64 %indvars.iv197
  %arrayidx84185 = load i8** %arrayidx84184, align 8
  %52 = bitcast i8* %arrayidx84185 to float*
  call void @vector_nz_floor(float* %52, i32 %51, double %tpfloor) #6
  %arrayidx84186 = load i8** %arrayidx84184, align 8
  %53 = bitcast i8* %arrayidx84186 to float*
  %54 = load i32* %n_dst, align 4, !tbaa !0
  %call87 = call double @vector_sum_norm(float* %53, i32 %54) #6
  %55 = load i32* %n_dst, align 4, !tbaa !0
  %cmp89188 = icmp sgt i32 %55, 0
  br i1 %cmp89188, label %for.body90, label %for.inc113

for.body90:                                       ; preds = %for.body82, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %cond.end ], [ 0, %for.body82 ]
  %arrayidx84187 = load i8** %arrayidx84184, align 8
  %56 = bitcast i8* %arrayidx84187 to float*
  %arrayidx94 = getelementptr inbounds float* %56, i64 %indvars.iv
  %57 = load float* %arrayidx94, align 4, !tbaa !4
  %cmp95 = fcmp oeq float %57, 0.000000e+00
  br i1 %cmp95, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body90
  %conv = fpext float %57 to double
  %call102 = call i32 @logs3(double %conv) #6
  br label %cond.end

cond.end:                                         ; preds = %for.body90, %cond.false
  %cond = phi i32 [ %call102, %cond.false ], [ -939524096, %for.body90 ]
  %58 = load i32* %i, align 4, !tbaa !0
  %idxprom105 = sext i32 %58 to i64
  %59 = load i32**** %tp68, align 8, !tbaa !3
  %arrayidx107 = getelementptr inbounds i32*** %59, i64 %idxprom105
  %60 = load i32*** %arrayidx107, align 8, !tbaa !3
  %arrayidx108 = getelementptr inbounds i32** %60, i64 %indvars.iv197
  %61 = load i32** %arrayidx108, align 8, !tbaa !3
  %arrayidx109 = getelementptr inbounds i32* %61, i64 %indvars.iv
  store i32 %cond, i32* %arrayidx109, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %62 = load i32* %n_dst, align 4, !tbaa !0
  %63 = trunc i64 %indvars.iv.next to i32
  %cmp89 = icmp slt i32 %63, %62
  br i1 %cmp89, label %for.body90, label %for.inc113

for.inc113:                                       ; preds = %cond.end, %for.body82
  %64 = phi i32 [ %55, %for.body82 ], [ %62, %cond.end ]
  %indvars.iv.next198 = add i64 %indvars.iv197, 1
  %65 = load i32* %n_src, align 4, !tbaa !0
  %66 = trunc i64 %indvars.iv.next198 to i32
  %cmp81 = icmp slt i32 %66, %65
  br i1 %cmp81, label %for.body82, label %for.inc116

for.inc116:                                       ; preds = %for.inc113, %for.cond80.preheader
  %67 = load i32* %i, align 4, !tbaa !0
  %inc117 = add nsw i32 %67, 1
  store i32 %inc117, i32* %i, align 4, !tbaa !0
  %68 = load i32* %15, align 4, !tbaa !0
  %cmp73 = icmp slt i32 %inc117, %68
  br i1 %cmp73, label %for.body74, label %for.end118

for.end118:                                       ; preds = %for.inc116, %if.end65
  call void @ckd_free_2d(i8** %call69) #6
  %tobool119 = icmp eq i32 %chksum_present.0.lcssa, 0
  br i1 %tobool119, label %if.end121, label %if.then120

if.then120:                                       ; preds = %for.end118
  %69 = load i32* %byteswap, align 4, !tbaa !0
  %70 = load i32* %chksum, align 4, !tbaa !0
  call void @bio_verify_chksum(%struct._IO_FILE* %call15, i32 %69, i32 %70) #6
  br label %if.end121

if.end121:                                        ; preds = %for.end118, %if.then120
  %call122 = call i64 @fread(i8* %tmp, i64 1, i64 1, %struct._IO_FILE* %call15) #6
  %cmp123 = icmp eq i64 %call122, 1
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end121
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 213, i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([35 x i8]* @.str22, i64 0, i64 0)) #6
  br label %if.end126

if.end126:                                        ; preds = %if.then125, %if.end121
  %call127 = call i32 @fclose(%struct._IO_FILE* %call15) #6
  call void @_E__pr_info_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 217, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #6
  %71 = load i32* %15, align 4, !tbaa !0
  %72 = load i32* %30, align 4, !tbaa !0
  %add131 = add nsw i32 %72, 1
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([43 x i8]* @.str23, i64 0, i64 0), i32 %71, i32 %72, i32 %add131) #6
  %call132 = call i32 @tmat_chk_uppertri(%struct.tmat_t* %0) #8
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %if.then135, label %if.end136

if.then135:                                       ; preds = %if.end126
  call void @_E__pr_header(i8* getelementptr inbounds ([52 x i8]* @.str3, i64 0, i64 0), i64 221, i8* getelementptr inbounds ([12 x i8]* @.str9, i64 0, i64 0)) #6
  call void (i8*, ...)* @_E__die_error(i8* getelementptr inbounds ([27 x i8]* @.str24, i64 0, i64 0)) #6
  br label %if.end136

if.end136:                                        ; preds = %if.then135, %if.end126
  ret %struct.tmat_t* %0
}

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #3

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #3

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #3

; Function Attrs: optsize
declare void @_E__fatal_sys_error(i8*, ...) #3

; Function Attrs: optsize
declare i32 @bio_readhdr(%struct._IO_FILE*, i8***, i8***, i32*) #3

; Function Attrs: optsize
declare void @_E__die_error(i8*, ...) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #3

; Function Attrs: optsize
declare void @bio_hdrarg_free(i8**, i8**) #3

; Function Attrs: optsize
declare i32 @bio_fread(i8*, i32, i32, %struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare i8*** @__ckd_calloc_3d__(i32, i32, i32, i32, i8*, i32) #3

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @vector_nz_floor(float*, i32, double) #3

; Function Attrs: optsize
declare double @vector_sum_norm(float*, i32) #3

; Function Attrs: optsize
declare i32 @logs3(double) #3

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #3

; Function Attrs: optsize
declare void @bio_verify_chksum(%struct._IO_FILE*, i32, i32) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @tmat_free(%struct.tmat_t* %t) #0 {
entry:
  %tobool = icmp eq %struct.tmat_t* %t, null
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %tp = getelementptr inbounds %struct.tmat_t* %t, i64 0, i32 0
  %0 = load i32**** %tp, align 8, !tbaa !3
  %tobool1 = icmp eq i32*** %0, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %1 = bitcast i32*** %0 to i8***
  tail call void @ckd_free_3d(i8*** %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %2 = bitcast %struct.tmat_t* %t to i8*
  tail call void @ckd_free(i8* %2) #6
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: optsize
declare void @ckd_free_3d(i8***) #3

; Function Attrs: optsize
declare void @ckd_free(i8*) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}

; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/FrontMtx/src/FrontMtx_update.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._FrontMtx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._Tree*, %struct._ETree*, %struct._IV*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._IVL*, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._SubMtx**, %struct._I2Ohash*, %struct._I2Ohash*, %struct._SubMtxManager*, %struct._Lock*, %struct._PatchAndGoInfo*, i32 }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._I2Ohash = type { i32, i32, i32, %struct._I2OP*, %struct._I2OP*, %struct._I2OP** }
%struct._I2OP = type { i32, i32, i8*, %struct._I2OP* }
%struct._SubMtxManager = type { %struct._SubMtx*, %struct._Lock*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._Lock = type { i8*, i32, i32 }
%struct._PatchAndGoInfo = type { i32, double, double, %struct._IV*, %struct._DV* }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._IP = type { i32, %struct._IP* }

@.str = private unnamed_addr constant [30 x i8] c"\0A\0A inside FrontMtx_update(%d)\00", align 1
@stdout = external global %struct._IO_FILE*
@.str1 = private unnamed_addr constant [32 x i8] c"\0A   update from I %d, mtxD = %p\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"\0A   mtxU = %p\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"\0A   mtxL = %p\00", align 1
@.str4 = private unnamed_addr constant [33 x i8] c"\0A   update from I %d is finished\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"\0A\0A leaving FrontMtx_update(%d)\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @FrontMtx_update(%struct._FrontMtx* %frontmtx, %struct._Chv* %frontJ, %struct._IP** nocapture %heads, i8* %status, %struct._DV* %tempDV, i32 %msglvl, %struct._IO_FILE* nocapture %msgFile) #0 {
entry:
  %cmp = icmp sgt i32 %msglvl, 3
  %id = getelementptr inbounds %struct._Chv* %frontJ, i64 0, i32 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i32* %id, align 4, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str, i64 0, i64 0), i32 %0) #3
  %1 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call1 = tail call i32 @fflush(%struct._IO_FILE* %1) #3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = load i32* %id, align 4, !tbaa !0
  %nfront3 = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 0
  %3 = load i32* %nfront3, align 4, !tbaa !0
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct._IP** %heads, i64 %idxprom
  %4 = load %struct._IP** %arrayidx, align 8, !tbaa !3
  store %struct._IP* null, %struct._IP** %arrayidx, align 8, !tbaa !3
  %cmp6157163 = icmp eq %struct._IP* %4, null
  br i1 %cmp6157163, label %if.end87, label %for.body.lr.ph.lr.ph

for.body.lr.ph.lr.ph:                             ; preds = %if.end
  %cmp7 = icmp eq i8* %status, null
  %symmetryflag = getelementptr inbounds %struct._FrontMtx* %frontmtx, i64 0, i32 3
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.body.lr.ph.lr.ph, %for.cond.outer.backedge
  %first.0.ph166 = phi %struct._IP* [ null, %for.body.lr.ph.lr.ph ], [ %ip.0158, %for.cond.outer.backedge ]
  %last.0.ph165 = phi %struct._IP* [ null, %for.body.lr.ph.lr.ph ], [ %ip.0.last.0, %for.cond.outer.backedge ]
  %ip.0.ph164 = phi %struct._IP* [ %4, %for.body.lr.ph.lr.ph ], [ %5, %for.cond.outer.backedge ]
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.else72
  %ip.0158 = phi %struct._IP* [ %ip.0.ph164, %for.body.lr.ph ], [ %5, %if.else72 ]
  %next = getelementptr inbounds %struct._IP* %ip.0158, i64 0, i32 1
  %5 = load %struct._IP** %next, align 8, !tbaa !3
  %val = getelementptr inbounds %struct._IP* %ip.0158, i64 0, i32 0
  %6 = load i32* %val, align 4, !tbaa !0
  br i1 %cmp7, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds i8* %status, i64 %idxprom8
  %7 = load i8* %arrayidx9, align 1, !tbaa !1
  %cmp10 = icmp eq i8 %7, 70
  br i1 %cmp10, label %if.then12, label %if.else72

if.then12:                                        ; preds = %lor.lhs.false, %for.body
  %call13 = tail call %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx* %frontmtx, i32 %6) #3
  br i1 %cmp, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.then12
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([32 x i8]* @.str1, i64 0, i64 0), i32 %6, %struct._SubMtx* %call13) #3
  %8 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call18 = tail call i32 @fflush(%struct._IO_FILE* %8) #3
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then12
  %cmp20 = icmp eq %struct._SubMtx* %call13, null
  br i1 %cmp20, label %if.end60, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = tail call %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx* %frontmtx, i32 %6, i32 %3) #3
  br i1 %cmp, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.then22
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %call23) #3
  %9 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call28 = tail call i32 @fflush(%struct._IO_FILE* %9) #3
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then22
  %cmp30 = icmp eq %struct._SubMtx* %call23, null
  br i1 %cmp30, label %if.end60, label %if.then32

if.then32:                                        ; preds = %if.end29
  %10 = load i32* %symmetryflag, align 4, !tbaa !0
  switch i32 %10, label %if.end60 [
    i32 0, label %if.then35
    i32 1, label %if.then39
    i32 2, label %if.then44
  ]

if.then35:                                        ; preds = %if.then32
  tail call void @Chv_updateS(%struct._Chv* %frontJ, %struct._SubMtx* %call13, %struct._SubMtx* %call23, %struct._DV* %tempDV) #3
  br label %if.end60

if.then39:                                        ; preds = %if.then32
  tail call void @Chv_updateH(%struct._Chv* %frontJ, %struct._SubMtx* %call13, %struct._SubMtx* %call23, %struct._DV* %tempDV) #3
  br label %if.end60

if.then44:                                        ; preds = %if.then32
  %call45 = tail call %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx* %frontmtx, i32 %3, i32 %6) #3
  br i1 %cmp, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.then44
  %call49 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0), %struct._SubMtx* %call45) #3
  %11 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call50 = tail call i32 @fflush(%struct._IO_FILE* %11) #3
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.then44
  %cmp52 = icmp eq %struct._SubMtx* %call45, null
  br i1 %cmp52, label %if.end60, label %if.then54

if.then54:                                        ; preds = %if.end51
  tail call void @Chv_updateN(%struct._Chv* %frontJ, %struct._SubMtx* %call45, %struct._SubMtx* %call13, %struct._SubMtx* %call23, %struct._DV* %tempDV) #3
  br label %if.end60

if.end60:                                         ; preds = %if.then32, %if.end51, %if.end29, %if.end19, %if.then39, %if.then54, %if.then35
  %cmp61 = icmp eq %struct._IP* %last.0.ph165, null
  %ip.0.last.0 = select i1 %cmp61, %struct._IP* %ip.0158, %struct._IP* %last.0.ph165
  store %struct._IP* %first.0.ph166, %struct._IP** %next, align 8, !tbaa !3
  br i1 %cmp, label %if.then68, label %for.cond.outer.backedge

if.then68:                                        ; preds = %if.end60
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([33 x i8]* @.str4, i64 0, i64 0), i32 %6) #3
  %12 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call70 = tail call i32 @fflush(%struct._IO_FILE* %12) #3
  br label %for.cond.outer.backedge

for.cond.outer.backedge:                          ; preds = %if.then68, %if.end60
  %cmp6157 = icmp eq %struct._IP* %5, null
  br i1 %cmp6157, label %for.end, label %for.body.lr.ph

if.else72:                                        ; preds = %lor.lhs.false
  %13 = load %struct._IP** %arrayidx, align 8, !tbaa !3
  store %struct._IP* %13, %struct._IP** %next, align 8, !tbaa !3
  store %struct._IP* %ip.0158, %struct._IP** %arrayidx, align 8, !tbaa !3
  %cmp6 = icmp eq %struct._IP* %5, null
  br i1 %cmp6, label %for.end, label %for.body

for.end:                                          ; preds = %for.cond.outer.backedge, %if.else72
  %first.0.ph162 = phi %struct._IP* [ %first.0.ph166, %if.else72 ], [ %ip.0158, %for.cond.outer.backedge ]
  %last.0.ph160 = phi %struct._IP* [ %last.0.ph165, %if.else72 ], [ %ip.0.last.0, %for.cond.outer.backedge ]
  %cmp79 = icmp eq %struct._IP* %last.0.ph160, null
  br i1 %cmp79, label %if.end87, label %if.then81

if.then81:                                        ; preds = %for.end
  %idxprom82 = sext i32 %3 to i64
  %arrayidx83 = getelementptr inbounds %struct._IP** %heads, i64 %idxprom82
  %14 = load %struct._IP** %arrayidx83, align 8, !tbaa !3
  %next84 = getelementptr inbounds %struct._IP* %last.0.ph160, i64 0, i32 1
  store %struct._IP* %14, %struct._IP** %next84, align 8, !tbaa !3
  store %struct._IP* %first.0.ph162, %struct._IP** %arrayidx83, align 8, !tbaa !3
  br label %if.end87

if.end87:                                         ; preds = %if.end, %for.end, %if.then81
  br i1 %cmp, label %if.then90, label %if.end94

if.then90:                                        ; preds = %if.end87
  %15 = load i32* %id, align 4, !tbaa !0
  %call92 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i32 %15) #3
  %16 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %call93 = tail call i32 @fflush(%struct._IO_FILE* %16) #3
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end87
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_diagMtx(%struct._FrontMtx*, i32) #2

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_upperMtx(%struct._FrontMtx*, i32, i32) #2

; Function Attrs: optsize
declare void @Chv_updateS(%struct._Chv*, %struct._SubMtx*, %struct._SubMtx*, %struct._DV*) #2

; Function Attrs: optsize
declare void @Chv_updateH(%struct._Chv*, %struct._SubMtx*, %struct._SubMtx*, %struct._DV*) #2

; Function Attrs: optsize
declare %struct._SubMtx* @FrontMtx_lowerMtx(%struct._FrontMtx*, i32, i32) #2

; Function Attrs: optsize
declare void @Chv_updateN(%struct._Chv*, %struct._SubMtx*, %struct._SubMtx*, %struct._SubMtx*, %struct._DV*) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}

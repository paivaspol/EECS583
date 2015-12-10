; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@squid_errno = external global i32
@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"0X\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IsInt(i8* %s) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !28), !dbg !74
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !29), !dbg !75
  %cmp = icmp eq i8* %s, null, !dbg !76
  br i1 %cmp, label %if.then, label %while.cond.preheader, !dbg !76

while.cond.preheader:                             ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #6, !dbg !77
  %0 = load i16** %call, align 8, !dbg !77, !tbaa !78
  br label %while.cond, !dbg !77

if.then:                                          ; preds = %entry
  store i32 6, i32* @squid_errno, align 4, !dbg !81, !tbaa !83
  br label %return, !dbg !81

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %s.addr.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %s, %while.cond.preheader ]
  %1 = load i8* %s.addr.0, align 1, !dbg !77, !tbaa !79
  %idxprom = sext i8 %1 to i64, !dbg !77
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom, !dbg !77
  %2 = load i16* %arrayidx, align 2, !dbg !77, !tbaa !84
  %and = and i16 %2, 8192, !dbg !77
  %tobool = icmp eq i16 %and, 0, !dbg !77
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i64 1, !dbg !77
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !28), !dbg !77
  br i1 %tobool, label %while.end, label %while.cond, !dbg !77

while.end:                                        ; preds = %while.cond
  switch i8 %1, label %if.end10 [
    i8 45, label %if.then8
    i8 43, label %if.then8
  ], !dbg !85

if.then8:                                         ; preds = %while.end, %while.end
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !28), !dbg !85
  br label %if.end10, !dbg !85

if.end10:                                         ; preds = %while.end, %if.then8
  %s.addr.1 = phi i8* [ %incdec.ptr, %if.then8 ], [ %s.addr.0, %while.end ]
  %call11 = tail call i32 @strncmp(i8* %s.addr.1, i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i64 2) #7, !dbg !86
  %cmp12 = icmp eq i32 %call11, 0, !dbg !86
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false18, !dbg !86

land.lhs.true:                                    ; preds = %if.end10
  %call14 = tail call i64 @strlen(i8* %s.addr.1) #7, !dbg !86
  %conv15 = trunc i64 %call14 to i32, !dbg !86
  %cmp16 = icmp sgt i32 %conv15, 2, !dbg !86
  br i1 %cmp16, label %if.end39, label %lor.lhs.false18, !dbg !86

lor.lhs.false18:                                  ; preds = %land.lhs.true, %if.end10
  %call19 = tail call i32 @strncmp(i8* %s.addr.1, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0), i64 2) #7, !dbg !87
  %cmp20 = icmp eq i32 %call19, 0, !dbg !87
  br i1 %cmp20, label %land.lhs.true22, label %if.else, !dbg !87

land.lhs.true22:                                  ; preds = %lor.lhs.false18
  %call23 = tail call i64 @strlen(i8* %s.addr.1) #7, !dbg !87
  %conv24 = trunc i64 %call23 to i32, !dbg !87
  %cmp25 = icmp sgt i32 %conv24, 2, !dbg !87
  br i1 %cmp25, label %if.end39, label %if.else, !dbg !87

if.else:                                          ; preds = %land.lhs.true22, %lor.lhs.false18
  %3 = load i8* %s.addr.1, align 1, !dbg !88, !tbaa !79
  %cmp29 = icmp eq i8 %3, 48, !dbg !88
  br i1 %cmp29, label %land.lhs.true31, label %while.cond42.preheader, !dbg !88

land.lhs.true31:                                  ; preds = %if.else
  %call32 = tail call i64 @strlen(i8* %s.addr.1) #7, !dbg !88
  %conv33 = trunc i64 %call32 to i32, !dbg !88
  %cmp34 = icmp sgt i32 %conv33, 1, !dbg !88
  %incdec.ptr37 = getelementptr inbounds i8* %s.addr.1, i64 1, !dbg !89
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr37}, i64 0, metadata !28), !dbg !89
  %incdec.ptr37.s.addr.1 = select i1 %cmp34, i8* %incdec.ptr37, i8* %s.addr.1, !dbg !88
  %.pre = load i8* %incdec.ptr37.s.addr.1, align 1, !dbg !90, !tbaa !79
  br label %while.cond42.preheader, !dbg !88

while.cond42.preheader:                           ; preds = %if.else, %land.lhs.true31
  %4 = phi i8 [ %.pre, %land.lhs.true31 ], [ %3, %if.else ]
  %s.addr.3.ph = phi i8* [ %incdec.ptr37.s.addr.1, %land.lhs.true31 ], [ %s.addr.1, %if.else ]
  %cmp4498 = icmp eq i8 %4, 0, !dbg !90
  br i1 %cmp4498, label %return, label %while.body46, !dbg !90

if.end39:                                         ; preds = %land.lhs.true, %land.lhs.true22
  %add.ptr = getelementptr inbounds i8* %s.addr.1, i64 2, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !28), !dbg !91
  tail call void @llvm.dbg.value(metadata !93, i64 0, metadata !29), !dbg !94
  %5 = load i8* %add.ptr, align 1, !dbg !95, !tbaa !79
  %cmp6194 = icmp eq i8 %5, 0, !dbg !95
  br i1 %cmp6194, label %return, label %while.body63, !dbg !95

while.cond42:                                     ; preds = %while.body46
  %6 = load i8* %incdec.ptr56, align 1, !dbg !90, !tbaa !79
  %cmp44 = icmp eq i8 %6, 0, !dbg !90
  br i1 %cmp44, label %return, label %while.body46, !dbg !90

while.body46:                                     ; preds = %while.cond42.preheader, %while.cond42
  %7 = phi i8 [ %6, %while.cond42 ], [ %4, %while.cond42.preheader ]
  %s.addr.399 = phi i8* [ %incdec.ptr56, %while.cond42 ], [ %s.addr.3.ph, %while.cond42.preheader ]
  %idxprom48 = sext i8 %7 to i64, !dbg !96
  %arrayidx50 = getelementptr inbounds i16* %0, i64 %idxprom48, !dbg !96
  %8 = load i16* %arrayidx50, align 2, !dbg !96, !tbaa !84
  %and52 = and i16 %8, 2048, !dbg !96
  %tobool53 = icmp eq i16 %and52, 0, !dbg !96
  %incdec.ptr56 = getelementptr inbounds i8* %s.addr.399, i64 1, !dbg !98
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr56}, i64 0, metadata !28), !dbg !98
  br i1 %tobool53, label %return, label %while.cond42, !dbg !96

while.cond59:                                     ; preds = %while.body63
  %9 = load i8* %incdec.ptr73, align 1, !dbg !95, !tbaa !79
  %cmp61 = icmp eq i8 %9, 0, !dbg !95
  br i1 %cmp61, label %return, label %while.body63, !dbg !95

while.body63:                                     ; preds = %if.end39, %while.cond59
  %10 = phi i8 [ %9, %while.cond59 ], [ %5, %if.end39 ]
  %s.addr.495 = phi i8* [ %incdec.ptr73, %while.cond59 ], [ %add.ptr, %if.end39 ]
  %idxprom65 = sext i8 %10 to i64, !dbg !99
  %arrayidx67 = getelementptr inbounds i16* %0, i64 %idxprom65, !dbg !99
  %11 = load i16* %arrayidx67, align 2, !dbg !99, !tbaa !84
  %and69 = and i16 %11, 4096, !dbg !99
  %tobool70 = icmp eq i16 %and69, 0, !dbg !99
  %incdec.ptr73 = getelementptr inbounds i8* %s.addr.495, i64 1, !dbg !101
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr73}, i64 0, metadata !28), !dbg !101
  br i1 %tobool70, label %return, label %while.cond59, !dbg !99

return:                                           ; preds = %while.cond42.preheader, %while.body46, %while.cond42, %if.end39, %while.body63, %while.cond59, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end39 ], [ 0, %while.body63 ], [ 1, %while.cond59 ], [ 1, %while.cond42.preheader ], [ 0, %while.body46 ], [ 1, %while.cond42 ]
  ret i32 %retval.0, !dbg !102
}

; Function Attrs: nounwind optsize readnone
declare i16** @__ctype_b_loc() #1

; Function Attrs: nounwind optsize readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IsReal(i8* %s) #3 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %s}, i64 0, metadata !32), !dbg !103
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !33), !dbg !104
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !34), !dbg !105
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !35), !dbg !106
  %cmp = icmp eq i8* %s, null, !dbg !107
  br i1 %cmp, label %return, label %while.cond.preheader, !dbg !107

while.cond.preheader:                             ; preds = %entry
  %call = tail call i16** @__ctype_b_loc() #6, !dbg !108
  %0 = load i16** %call, align 8, !dbg !108, !tbaa !78
  br label %while.cond, !dbg !108

while.cond:                                       ; preds = %while.cond, %while.cond.preheader
  %s.addr.0 = phi i8* [ %incdec.ptr, %while.cond ], [ %s, %while.cond.preheader ]
  %1 = load i8* %s.addr.0, align 1, !dbg !108, !tbaa !79
  %idxprom = sext i8 %1 to i64, !dbg !108
  %arrayidx = getelementptr inbounds i16* %0, i64 %idxprom, !dbg !108
  %2 = load i16* %arrayidx, align 2, !dbg !108, !tbaa !84
  %and = and i16 %2, 8192, !dbg !108
  %tobool = icmp eq i16 %and, 0, !dbg !108
  %incdec.ptr = getelementptr inbounds i8* %s.addr.0, i64 1, !dbg !108
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !32), !dbg !108
  br i1 %tobool, label %while.end, label %while.cond, !dbg !108

while.end:                                        ; preds = %while.cond
  switch i8 %1, label %while.cond11.preheader [
    i8 45, label %if.then8
    i8 43, label %if.then8
  ], !dbg !109

if.then8:                                         ; preds = %while.end, %while.end
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !32), !dbg !109
  %.pre = load i8* %incdec.ptr, align 1, !dbg !110, !tbaa !79
  br label %while.cond11.preheader, !dbg !109

while.cond11.preheader:                           ; preds = %if.then8, %while.end
  %3 = phi i8 [ %1, %while.end ], [ %.pre, %if.then8 ]
  %s.addr.1.ph = phi i8* [ %s.addr.0, %while.end ], [ %incdec.ptr, %if.then8 ]
  %cmp13102 = icmp eq i8 %3, 0, !dbg !110
  br i1 %cmp13102, label %while.cond65.preheader, label %while.body15, !dbg !110

while.body15:                                     ; preds = %while.cond11.preheader, %if.end62
  %4 = phi i8 [ %9, %if.end62 ], [ %3, %while.cond11.preheader ]
  %gotreal.0106 = phi i32 [ %gotreal.1, %if.end62 ], [ 0, %while.cond11.preheader ]
  %gotexp.0105 = phi i32 [ %gotexp.1, %if.end62 ], [ 0, %while.cond11.preheader ]
  %gotdecimal.0104 = phi i32 [ %gotdecimal.1, %if.end62 ], [ 0, %while.cond11.preheader ]
  %s.addr.1103 = phi i8* [ %incdec.ptr63, %if.end62 ], [ %s.addr.1.ph, %while.cond11.preheader ]
  %idxprom17 = sext i8 %4 to i64, !dbg !111
  %arrayidx19 = getelementptr inbounds i16* %0, i64 %idxprom17, !dbg !111
  %5 = load i16* %arrayidx19, align 2, !dbg !111, !tbaa !84
  %conv20 = zext i16 %5 to i32, !dbg !111
  %and21 = and i32 %conv20, 2048, !dbg !111
  %tobool22 = icmp eq i32 %and21, 0, !dbg !111
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !111

if.then23:                                        ; preds = %while.body15
  %inc = add nsw i32 %gotreal.0106, 1, !dbg !113
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !35), !dbg !113
  br label %if.end62, !dbg !113

if.else:                                          ; preds = %while.body15
  switch i8 %4, label %if.else50 [
    i8 46, label %if.then27
    i8 101, label %if.then44
    i8 69, label %if.then44
  ], !dbg !114

if.then27:                                        ; preds = %if.else
  %6 = or i32 %gotexp.0105, %gotdecimal.0104, !dbg !115
  %7 = icmp eq i32 %6, 0, !dbg !115
  br i1 %7, label %if.else33, label %return, !dbg !115

if.else33:                                        ; preds = %if.then27
  %inc34 = add nsw i32 %gotdecimal.0104, 1, !dbg !117
  tail call void @llvm.dbg.value(metadata !{i32 %inc34}, i64 0, metadata !33), !dbg !117
  br label %if.end62, !dbg !118

if.then44:                                        ; preds = %if.else, %if.else
  %tobool45 = icmp eq i32 %gotexp.0105, 0, !dbg !119
  br i1 %tobool45, label %if.end62, label %return, !dbg !119

if.else50:                                        ; preds = %if.else
  %and56 = and i32 %conv20, 8192, !dbg !121
  %tobool57 = icmp eq i32 %and56, 0, !dbg !121
  br i1 %tobool57, label %if.end62, label %while.cond65.preheader, !dbg !121

while.cond65.preheader:                           ; preds = %if.end62, %if.else50, %while.cond11.preheader
  %8 = phi i8 [ 0, %while.cond11.preheader ], [ %4, %if.else50 ], [ 0, %if.end62 ]
  %gotreal.0.lcssa = phi i32 [ 0, %while.cond11.preheader ], [ %gotreal.0106, %if.else50 ], [ %gotreal.1, %if.end62 ]
  %s.addr.1.lcssa = phi i8* [ %s.addr.1.ph, %while.cond11.preheader ], [ %s.addr.1103, %if.else50 ], [ %incdec.ptr63, %if.end62 ]
  br label %while.cond65, !dbg !122

if.end62:                                         ; preds = %if.then44, %if.else50, %if.else33, %if.then23
  %gotdecimal.1 = phi i32 [ %gotdecimal.0104, %if.then23 ], [ %inc34, %if.else33 ], [ %gotdecimal.0104, %if.else50 ], [ %gotdecimal.0104, %if.then44 ]
  %gotexp.1 = phi i32 [ %gotexp.0105, %if.then23 ], [ %gotexp.0105, %if.else33 ], [ %gotexp.0105, %if.else50 ], [ 1, %if.then44 ]
  %gotreal.1 = phi i32 [ %inc, %if.then23 ], [ %gotreal.0106, %if.else33 ], [ %gotreal.0106, %if.else50 ], [ %gotreal.0106, %if.then44 ]
  %incdec.ptr63 = getelementptr inbounds i8* %s.addr.1103, i64 1, !dbg !123
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr63}, i64 0, metadata !32), !dbg !123
  %9 = load i8* %incdec.ptr63, align 1, !dbg !110, !tbaa !79
  %cmp13 = icmp eq i8 %9, 0, !dbg !110
  br i1 %cmp13, label %while.cond65.preheader, label %while.body15, !dbg !110

while.cond65:                                     ; preds = %while.cond65.while.cond65_crit_edge, %while.cond65.preheader
  %10 = phi i8 [ %.pre114, %while.cond65.while.cond65_crit_edge ], [ %8, %while.cond65.preheader ]
  %s.addr.2 = phi i8* [ %incdec.ptr74, %while.cond65.while.cond65_crit_edge ], [ %s.addr.1.lcssa, %while.cond65.preheader ]
  %idxprom67 = sext i8 %10 to i64, !dbg !122
  %arrayidx69 = getelementptr inbounds i16* %0, i64 %idxprom67, !dbg !122
  %11 = load i16* %arrayidx69, align 2, !dbg !122, !tbaa !84
  %and71 = and i16 %11, 8192, !dbg !122
  %tobool72 = icmp eq i16 %and71, 0, !dbg !122
  %incdec.ptr74 = getelementptr inbounds i8* %s.addr.2, i64 1, !dbg !122
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr74}, i64 0, metadata !32), !dbg !122
  br i1 %tobool72, label %while.end75, label %while.cond65.while.cond65_crit_edge, !dbg !122

while.cond65.while.cond65_crit_edge:              ; preds = %while.cond65
  %.pre114 = load i8* %incdec.ptr74, align 1, !dbg !122, !tbaa !79
  br label %while.cond65, !dbg !122

while.end75:                                      ; preds = %while.cond65
  %cmp77 = icmp ne i8 %10, 0, !dbg !124
  %tobool79 = icmp eq i32 %gotreal.0.lcssa, 0, !dbg !124
  %or.cond = or i1 %cmp77, %tobool79, !dbg !124
  %12 = zext i1 %or.cond to i32, !dbg !124
  %. = xor i32 %12, 1, !dbg !124
  ret i32 %., !dbg !124

return:                                           ; preds = %if.then44, %if.then27, %entry
  ret i32 0, !dbg !125
}

; Function Attrs: nounwind optsize uwtable
define void @Byteswap(i8* nocapture %swap, i32 %nbytes) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %swap}, i64 0, metadata !40), !dbg !126
  tail call void @llvm.dbg.value(metadata !{i32 %nbytes}, i64 0, metadata !41), !dbg !126
  tail call void @llvm.dbg.value(metadata !18, i64 0, metadata !42), !dbg !127
  %div = sdiv i32 %nbytes, 2, !dbg !127
  %cmp20 = icmp sgt i32 %nbytes, 1, !dbg !127
  br i1 %cmp20, label %for.body.lr.ph, label %for.end, !dbg !127

for.body.lr.ph:                                   ; preds = %entry
  %sub = add i32 %nbytes, -1, !dbg !129
  br label %for.body, !dbg !127

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %0 = trunc i64 %indvars.iv to i32, !dbg !129
  %sub1 = sub i32 %sub, %0, !dbg !129
  %idxprom = sext i32 %sub1 to i64, !dbg !129
  %arrayidx = getelementptr inbounds i8* %swap, i64 %idxprom, !dbg !129
  %1 = load i8* %arrayidx, align 1, !dbg !129, !tbaa !79
  tail call void @llvm.dbg.value(metadata !{i8 %1}, i64 0, metadata !43), !dbg !129
  %arrayidx3 = getelementptr inbounds i8* %swap, i64 %indvars.iv, !dbg !131
  %2 = load i8* %arrayidx3, align 1, !dbg !131, !tbaa !79
  store i8 %2, i8* %arrayidx, align 1, !dbg !131, !tbaa !79
  store i8 %1, i8* %arrayidx3, align 1, !dbg !132, !tbaa !79
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !127
  %3 = trunc i64 %indvars.iv.next to i32, !dbg !127
  %cmp = icmp slt i32 %3, %div, !dbg !127
  br i1 %cmp, label %for.body, label %for.end, !dbg !127

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !133
}

; Function Attrs: nounwind optsize readnone uwtable
define zeroext i16 @sre_ntoh16(i16 zeroext %netshort) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16 %netshort}, i64 0, metadata !50), !dbg !134
  ret i16 %netshort, !dbg !135
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @sre_ntoh32(i32 %netlong) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %netlong}, i64 0, metadata !57), !dbg !136
  ret i32 %netlong, !dbg !137
}

; Function Attrs: nounwind optsize readnone uwtable
define zeroext i16 @sre_hton16(i16 zeroext %hostshort) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i16 %hostshort}, i64 0, metadata !60), !dbg !138
  ret i16 %hostshort, !dbg !139
}

; Function Attrs: nounwind optsize readnone uwtable
define i32 @sre_hton32(i32 %hostlong) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %hostlong}, i64 0, metadata !63), !dbg !140
  ret i32 %hostlong, !dbg !141
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @sre_ntoh64(i64 %net_int64) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %net_int64}, i64 0, metadata !70), !dbg !142
  ret i64 %net_int64, !dbg !143
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @sre_hton64(i64 %host_int64) #4 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %host_int64}, i64 0, metadata !73), !dbg !144
  ret i64 %host_int64, !dbg !145
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { nounwind optsize readonly }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !18, metadata !19, metadata !18, metadata !18, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
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
!19 = metadata !{metadata !20, metadata !30, metadata !36, metadata !44, metadata !51, metadata !58, metadata !61, metadata !64, metadata !71}
!20 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"IsInt", metadata !"IsInt", metadata !"", i32 31, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @IsInt, null, null, metadata !27, i32 32} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 32] [IsInt]
!21 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!22 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!23 = metadata !{metadata !24, metadata !25}
!24 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{metadata !28, metadata !29}
!28 = metadata !{i32 786689, metadata !20, metadata !"s", metadata !21, i32 16777247, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 31]
!29 = metadata !{i32 786688, metadata !20, metadata !"hex", metadata !21, i32 33, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hex] [line 33]
!30 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"IsReal", metadata !"IsReal", metadata !"", i32 74, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @IsReal, null, null, metadata !31, i32 75} ; [ DW_TAG_subprogram ] [line 74] [def] [scope 75] [IsReal]
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786689, metadata !30, metadata !"s", metadata !21, i32 16777290, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 74]
!33 = metadata !{i32 786688, metadata !30, metadata !"gotdecimal", metadata !21, i32 76, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gotdecimal] [line 76]
!34 = metadata !{i32 786688, metadata !30, metadata !"gotexp", metadata !21, i32 77, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gotexp] [line 77]
!35 = metadata !{i32 786688, metadata !30, metadata !"gotreal", metadata !21, i32 78, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [gotreal] [line 78]
!36 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"Byteswap", metadata !"Byteswap", metadata !"", i32 133, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i32)* @Byteswap, null, null, metadata !39, i32 134} ; [ DW_TAG_subprogram ] [line 133] [def] [scope 134] [Byteswap]
!37 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!38 = metadata !{null, metadata !25, metadata !24}
!39 = metadata !{metadata !40, metadata !41, metadata !42, metadata !43}
!40 = metadata !{i32 786689, metadata !36, metadata !"swap", metadata !21, i32 16777349, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [swap] [line 133]
!41 = metadata !{i32 786689, metadata !36, metadata !"nbytes", metadata !21, i32 33554565, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nbytes] [line 133]
!42 = metadata !{i32 786688, metadata !36, metadata !"x", metadata !21, i32 135, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 135]
!43 = metadata !{i32 786688, metadata !36, metadata !"byte", metadata !21, i32 136, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [byte] [line 136]
!44 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_ntoh16", metadata !"sre_ntoh16", metadata !"", i32 166, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16 (i16)* @sre_ntoh16, null, null, metadata !49, i32 167} ; [ DW_TAG_subprogram ] [line 166] [def] [scope 167] [sre_ntoh16]
!45 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{metadata !47, metadata !47}
!47 = metadata !{i32 786454, metadata !1, null, metadata !"sqd_uint16", i32 40, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [sqd_uint16] [line 40, size 0, align 0, offset 0] [from unsigned short]
!48 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!49 = metadata !{metadata !50}
!50 = metadata !{i32 786689, metadata !44, metadata !"netshort", metadata !21, i32 16777382, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [netshort] [line 166]
!51 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_ntoh32", metadata !"sre_ntoh32", metadata !"", i32 176, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @sre_ntoh32, null, null, metadata !56, i32 177} ; [ DW_TAG_subprogram ] [line 176] [def] [scope 177] [sre_ntoh32]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{metadata !54, metadata !54}
!54 = metadata !{i32 786454, metadata !1, null, metadata !"sqd_uint32", i32 41, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [sqd_uint32] [line 41, size 0, align 0, offset 0] [from unsigned int]
!55 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786689, metadata !51, metadata !"netlong", metadata !21, i32 16777392, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [netlong] [line 176]
!58 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_hton16", metadata !"sre_hton16", metadata !"", i32 186, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i16 (i16)* @sre_hton16, null, null, metadata !59, i32 187} ; [ DW_TAG_subprogram ] [line 186] [def] [scope 187] [sre_hton16]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786689, metadata !58, metadata !"hostshort", metadata !21, i32 16777402, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hostshort] [line 186]
!61 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_hton32", metadata !"sre_hton32", metadata !"", i32 196, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32)* @sre_hton32, null, null, metadata !62, i32 197} ; [ DW_TAG_subprogram ] [line 196] [def] [scope 197] [sre_hton32]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786689, metadata !61, metadata !"hostlong", metadata !21, i32 16777412, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hostlong] [line 196]
!64 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_ntoh64", metadata !"sre_ntoh64", metadata !"", i32 208, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i64)* @sre_ntoh64, null, null, metadata !69, i32 209} ; [ DW_TAG_subprogram ] [line 208] [def] [scope 209] [sre_ntoh64]
!65 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!66 = metadata !{metadata !67, metadata !67}
!67 = metadata !{i32 786454, metadata !1, null, metadata !"sqd_uint64", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [sqd_uint64] [line 42, size 0, align 0, offset 0] [from long long unsigned int]
!68 = metadata !{i32 786468, null, null, metadata !"long long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786689, metadata !64, metadata !"net_int64", metadata !21, i32 16777424, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [net_int64] [line 208]
!71 = metadata !{i32 786478, metadata !1, metadata !21, metadata !"sre_hton64", metadata !"sre_hton64", metadata !"", i32 218, metadata !65, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i64 (i64)* @sre_hton64, null, null, metadata !72, i32 219} ; [ DW_TAG_subprogram ] [line 218] [def] [scope 219] [sre_hton64]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786689, metadata !71, metadata !"host_int64", metadata !21, i32 16777434, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [host_int64] [line 218]
!74 = metadata !{i32 31, i32 0, metadata !20, null}
!75 = metadata !{i32 33, i32 0, metadata !20, null}
!76 = metadata !{i32 35, i32 0, metadata !20, null}
!77 = metadata !{i32 38, i32 0, metadata !20, null}
!78 = metadata !{metadata !"any pointer", metadata !79}
!79 = metadata !{metadata !"omnipotent char", metadata !80}
!80 = metadata !{metadata !"Simple C/C++ TBAA"}
!81 = metadata !{i32 35, i32 0, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !20, i32 35, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!83 = metadata !{metadata !"int", metadata !79}
!84 = metadata !{metadata !"short", metadata !79}
!85 = metadata !{i32 40, i32 0, metadata !20, null}
!86 = metadata !{i32 42, i32 0, metadata !20, null}
!87 = metadata !{i32 43, i32 0, metadata !20, null}
!88 = metadata !{i32 48, i32 0, metadata !20, null}
!89 = metadata !{i32 49, i32 0, metadata !20, null}
!90 = metadata !{i32 52, i32 0, metadata !20, null}
!91 = metadata !{i32 45, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !20, i32 44, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!93 = metadata !{i32 1}
!94 = metadata !{i32 46, i32 0, metadata !92, null}
!95 = metadata !{i32 58, i32 0, metadata !20, null} ; [ DW_TAG_imported_module ]
!96 = metadata !{i32 54, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !20, i32 53, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!98 = metadata !{i32 55, i32 0, metadata !97, null}
!99 = metadata !{i32 60, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !20, i32 59, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!101 = metadata !{i32 61, i32 0, metadata !100, null}
!102 = metadata !{i32 64, i32 0, metadata !20, null}
!103 = metadata !{i32 74, i32 0, metadata !30, null}
!104 = metadata !{i32 76, i32 0, metadata !30, null}
!105 = metadata !{i32 77, i32 0, metadata !30, null}
!106 = metadata !{i32 78, i32 0, metadata !30, null}
!107 = metadata !{i32 80, i32 0, metadata !30, null}
!108 = metadata !{i32 82, i32 0, metadata !30, null}
!109 = metadata !{i32 83, i32 0, metadata !30, null}
!110 = metadata !{i32 89, i32 0, metadata !30, null}
!111 = metadata !{i32 91, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !30, i32 90, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!113 = metadata !{i32 92, i32 0, metadata !112, null}
!114 = metadata !{i32 93, i32 0, metadata !112, null}
!115 = metadata !{i32 95, i32 0, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !112, i32 94, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!117 = metadata !{i32 97, i32 0, metadata !116, null}
!118 = metadata !{i32 98, i32 0, metadata !116, null}
!119 = metadata !{i32 101, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !112, i32 100, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!121 = metadata !{i32 104, i32 0, metadata !112, null}
!122 = metadata !{i32 110, i32 0, metadata !30, null}
!123 = metadata !{i32 107, i32 0, metadata !112, null}
!124 = metadata !{i32 111, i32 0, metadata !30, null}
!125 = metadata !{i32 112, i32 0, metadata !30, null}
!126 = metadata !{i32 133, i32 0, metadata !36, null}
!127 = metadata !{i32 138, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !36, i32 138, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!129 = metadata !{i32 140, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !128, i32 139, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/types.c]
!131 = metadata !{i32 141, i32 0, metadata !130, null}
!132 = metadata !{i32 142, i32 0, metadata !130, null}
!133 = metadata !{i32 144, i32 0, metadata !36, null}
!134 = metadata !{i32 166, i32 0, metadata !44, null}
!135 = metadata !{i32 169, i32 0, metadata !44, null}
!136 = metadata !{i32 176, i32 0, metadata !51, null}
!137 = metadata !{i32 179, i32 0, metadata !51, null}
!138 = metadata !{i32 186, i32 0, metadata !58, null}
!139 = metadata !{i32 189, i32 0, metadata !58, null}
!140 = metadata !{i32 196, i32 0, metadata !61, null}
!141 = metadata !{i32 199, i32 0, metadata !61, null}
!142 = metadata !{i32 208, i32 0, metadata !64, null}
!143 = metadata !{i32 211, i32 0, metadata !64, null}
!144 = metadata !{i32 218, i32 0, metadata !71, null}
!145 = metadata !{i32 221, i32 0, metadata !71, null}

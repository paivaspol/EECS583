; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CCTK_COMPLEX16 = type { double, double }
%struct.CCTK_COMPLEX8 = type { float, float }
%struct.CCTK_COMPLEX32 = type { x86_fp80, x86_fp80 }

@.str = private unnamed_addr constant [65 x i8] c"$Id: DatatypeConversion.c,v 1.7 2001/12/03 22:10:04 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c() #0 {
entry:
  ret i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), !dbg !153
}

; Function Attrs: nounwind optsize readnone uwtable
define void (i8*, i8*, i32, i32, i32)* @PUGHSlabi_GetDatatypeConversionFn(i32 %src_type, i32 %dst_type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 %src_type}, i64 0, metadata !23), !dbg !154
  tail call void @llvm.dbg.value(metadata !{i32 %dst_type}, i64 0, metadata !24), !dbg !155
  tail call void @llvm.dbg.value(metadata !{i32 %src_type}, i64 0, metadata !156), !dbg !158
  switch i32 %src_type, label %if.else3.i [
    i32 2, label %PUGHSlabi_PrecisionVarType.exit
    i32 6, label %if.then2.i
  ], !dbg !159

if.then2.i:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata !160, i64 0, metadata !156), !dbg !161
  br label %PUGHSlabi_PrecisionVarType.exit, !dbg !163

if.else3.i:                                       ; preds = %entry
  %cmp4.i = icmp eq i32 %src_type, 10, !dbg !164
  tail call void @llvm.dbg.value(metadata !165, i64 0, metadata !156), !dbg !166
  %.type.i = select i1 %cmp4.i, i32 12, i32 %src_type, !dbg !164
  br label %PUGHSlabi_PrecisionVarType.exit, !dbg !164

PUGHSlabi_PrecisionVarType.exit:                  ; preds = %entry, %if.then2.i, %if.else3.i
  %call78 = phi i32 [ %.type.i, %if.else3.i ], [ 8, %if.then2.i ], [ 4, %entry ]
  tail call void @llvm.dbg.value(metadata !{i32 %call78}, i64 0, metadata !23), !dbg !157
  tail call void @llvm.dbg.value(metadata !{i32 %dst_type}, i64 0, metadata !168), !dbg !170
  switch i32 %dst_type, label %PUGHSlabi_PrecisionVarType.exit85 [
    i32 2, label %if.else.thread
    i32 6, label %if.then2.i79
  ], !dbg !171

if.then2.i79:                                     ; preds = %PUGHSlabi_PrecisionVarType.exit
  tail call void @llvm.dbg.value(metadata !160, i64 0, metadata !168), !dbg !172
  br label %if.else.thread, !dbg !173

if.else.thread:                                   ; preds = %PUGHSlabi_PrecisionVarType.exit, %if.then2.i79
  %call286.ph = phi i32 [ 8, %if.then2.i79 ], [ 4, %PUGHSlabi_PrecisionVarType.exit ]
  tail call void @llvm.dbg.value(metadata !{i32 %call2869094}, i64 0, metadata !24), !dbg !169
  %cmp492 = icmp eq i32 %call78, 5, !dbg !174
  br label %if.else8, !dbg !174

PUGHSlabi_PrecisionVarType.exit85:                ; preds = %PUGHSlabi_PrecisionVarType.exit
  %cmp4.i80 = icmp eq i32 %dst_type, 10, !dbg !175
  tail call void @llvm.dbg.value(metadata !165, i64 0, metadata !168), !dbg !176
  %.type.i81 = select i1 %cmp4.i80, i32 12, i32 %dst_type, !dbg !175
  tail call void @llvm.dbg.value(metadata !{i32 %call2869094}, i64 0, metadata !24), !dbg !169
  %cmp = icmp eq i32 %call78, 4, !dbg !177
  %cmp3 = icmp eq i32 %.type.i81, 3, !dbg !177
  %or.cond = and i1 %cmp, %cmp3, !dbg !177
  br i1 %or.cond, label %if.end51, label %if.else, !dbg !177

if.else:                                          ; preds = %PUGHSlabi_PrecisionVarType.exit85
  %cmp4 = icmp eq i32 %call78, 5, !dbg !174
  %or.cond70 = and i1 %cmp4, %cmp3, !dbg !174
  br i1 %or.cond70, label %if.end51, label %if.else8, !dbg !174

if.else8:                                         ; preds = %if.else.thread, %if.else
  %cmp495 = phi i1 [ %cmp492, %if.else.thread ], [ %cmp4, %if.else ]
  %call2869094 = phi i32 [ %call286.ph, %if.else.thread ], [ %.type.i81, %if.else ]
  %cmp11 = icmp eq i32 %call2869094, 4, !dbg !178
  %or.cond71 = and i1 %cmp495, %cmp11, !dbg !178
  br i1 %or.cond71, label %if.end51, label %if.else13, !dbg !178

if.else13:                                        ; preds = %if.else8
  %cmp14 = icmp eq i32 %call78, 8, !dbg !179
  %cmp16 = icmp eq i32 %call2869094, 7, !dbg !179
  %or.cond72 = and i1 %cmp14, %cmp16, !dbg !179
  br i1 %or.cond72, label %if.end51, label %if.else18, !dbg !179

if.else18:                                        ; preds = %if.else13
  %cmp19 = icmp eq i32 %call78, 9, !dbg !180
  %or.cond73 = and i1 %cmp19, %cmp16, !dbg !180
  br i1 %or.cond73, label %if.end51, label %if.else23, !dbg !180

if.else23:                                        ; preds = %if.else18
  %cmp26 = icmp eq i32 %call2869094, 8, !dbg !181
  %or.cond74 = and i1 %cmp19, %cmp26, !dbg !181
  br i1 %or.cond74, label %if.end51, label %if.else28, !dbg !181

if.else28:                                        ; preds = %if.else23
  %cmp29 = icmp eq i32 %call78, 12, !dbg !182
  %cmp31 = icmp eq i32 %call2869094, 11, !dbg !182
  %or.cond75 = and i1 %cmp29, %cmp31, !dbg !182
  br i1 %or.cond75, label %if.end51, label %if.else33, !dbg !182

if.else33:                                        ; preds = %if.else28
  %cmp34 = icmp eq i32 %call78, 13, !dbg !183
  %or.cond76 = and i1 %cmp34, %cmp31, !dbg !183
  br i1 %or.cond76, label %if.end51, label %if.else38, !dbg !183

if.else38:                                        ; preds = %if.else33
  %cmp41 = icmp eq i32 %call2869094, 12, !dbg !184
  %or.cond77 = and i1 %cmp34, %cmp41, !dbg !184
  tail call void @llvm.dbg.value(metadata !185, i64 0, metadata !25), !dbg !186
  %Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16. = select i1 %or.cond77, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16, void (i8*, i8*, i32, i32, i32)* null, !dbg !184
  ret void (i8*, i8*, i32, i32, i32)* %Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16., !dbg !184

if.end51:                                         ; preds = %if.else33, %if.else28, %if.else23, %if.else18, %if.else13, %if.else8, %if.else, %PUGHSlabi_PrecisionVarType.exit85
  %retval1.0 = phi void (i8*, i8*, i32, i32, i32)* [ @Convert_CCTK_INT4_to_CCTK_INT2, %PUGHSlabi_PrecisionVarType.exit85 ], [ @Convert_CCTK_INT8_to_CCTK_INT2, %if.else ], [ @Convert_CCTK_INT8_to_CCTK_INT4, %if.else8 ], [ @Convert_CCTK_REAL8_to_CCTK_REAL4, %if.else13 ], [ @Convert_CCTK_REAL16_to_CCTK_REAL4, %if.else18 ], [ @Convert_CCTK_REAL16_to_CCTK_REAL8, %if.else23 ], [ @Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8, %if.else28 ], [ @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8, %if.else33 ]
  ret void (i8*, i8*, i32, i32, i32)* %retval1.0, !dbg !188
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_INT4_to_CCTK_INT2(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !142), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !143), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !144), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !145), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !146), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i16* %1}, i64 0, metadata !147), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !148), !dbg !189
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !144), !dbg !189
  %tobool5 = icmp eq i32 %nelems, 0, !dbg !189
  br i1 %tobool5, label %while.end, label %while.body.lr.ph, !dbg !189

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to i32*, !dbg !189
  %1 = bitcast i8* %dst to i16*, !dbg !189
  %idx.ext = sext i32 %src_stride to i64, !dbg !190
  %idx.ext1 = sext i32 %dst_stride to i64, !dbg !190
  br label %while.body, !dbg !189

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.08 = phi i32* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.07 = phi i16* [ %1, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %nelems.addr.06 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.06, -1, !dbg !189
  %2 = load i32* %_src.08, align 4, !dbg !190, !tbaa !192
  %conv = trunc i32 %2 to i16, !dbg !190
  store i16 %conv, i16* %_dst.07, align 2, !dbg !190, !tbaa !195
  %add.ptr = getelementptr inbounds i32* %_src.08, i64 %idx.ext, !dbg !190
  tail call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !148), !dbg !190
  %add.ptr2 = getelementptr inbounds i16* %_dst.07, i64 %idx.ext1, !dbg !190
  tail call void @llvm.dbg.value(metadata !{i16* %add.ptr2}, i64 0, metadata !147), !dbg !190
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !144), !dbg !189
  %tobool = icmp eq i32 %dec, 0, !dbg !189
  br i1 %tobool, label %while.end, label %while.body, !dbg !189

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !189
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_INT8_to_CCTK_INT2(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !131), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !132), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !133), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !134), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !135), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i16* %1}, i64 0, metadata !136), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i64* %0}, i64 0, metadata !139), !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !133), !dbg !196
  %tobool5 = icmp eq i32 %nelems, 0, !dbg !196
  br i1 %tobool5, label %while.end, label %while.body.lr.ph, !dbg !196

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to i64*, !dbg !196
  %1 = bitcast i8* %dst to i16*, !dbg !196
  %idx.ext = sext i32 %src_stride to i64, !dbg !197
  %idx.ext1 = sext i32 %dst_stride to i64, !dbg !197
  br label %while.body, !dbg !196

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.08 = phi i64* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.07 = phi i16* [ %1, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %nelems.addr.06 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.06, -1, !dbg !196
  %2 = load i64* %_src.08, align 8, !dbg !197, !tbaa !199
  %conv = trunc i64 %2 to i16, !dbg !197
  store i16 %conv, i16* %_dst.07, align 2, !dbg !197, !tbaa !195
  %add.ptr = getelementptr inbounds i64* %_src.08, i64 %idx.ext, !dbg !197
  tail call void @llvm.dbg.value(metadata !{i64* %add.ptr}, i64 0, metadata !139), !dbg !197
  %add.ptr2 = getelementptr inbounds i16* %_dst.07, i64 %idx.ext1, !dbg !197
  tail call void @llvm.dbg.value(metadata !{i16* %add.ptr2}, i64 0, metadata !136), !dbg !197
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !133), !dbg !196
  %tobool = icmp eq i32 %dec, 0, !dbg !196
  br i1 %tobool, label %while.end, label %while.body, !dbg !196

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !196
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_INT8_to_CCTK_INT4(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !118), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !119), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !120), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !121), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !122), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !123), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i64* %0}, i64 0, metadata !125), !dbg !200
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !120), !dbg !200
  %tobool5 = icmp eq i32 %nelems, 0, !dbg !200
  br i1 %tobool5, label %while.end, label %while.body.lr.ph, !dbg !200

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to i64*, !dbg !200
  %1 = bitcast i8* %dst to i32*, !dbg !200
  %idx.ext = sext i32 %src_stride to i64, !dbg !201
  %idx.ext1 = sext i32 %dst_stride to i64, !dbg !201
  br label %while.body, !dbg !200

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.08 = phi i64* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.07 = phi i32* [ %1, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %nelems.addr.06 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.06, -1, !dbg !200
  %2 = load i64* %_src.08, align 8, !dbg !201, !tbaa !199
  %conv = trunc i64 %2 to i32, !dbg !201
  store i32 %conv, i32* %_dst.07, align 4, !dbg !201, !tbaa !192
  %add.ptr = getelementptr inbounds i64* %_src.08, i64 %idx.ext, !dbg !201
  tail call void @llvm.dbg.value(metadata !{i64* %add.ptr}, i64 0, metadata !125), !dbg !201
  %add.ptr2 = getelementptr inbounds i32* %_dst.07, i64 %idx.ext1, !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32* %add.ptr2}, i64 0, metadata !123), !dbg !201
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !120), !dbg !200
  %tobool = icmp eq i32 %dec, 0, !dbg !200
  br i1 %tobool, label %while.end, label %while.body, !dbg !200

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !200
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_REAL8_to_CCTK_REAL4(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !107), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !108), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !109), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !110), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !111), !dbg !203
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !112), !dbg !203
  tail call void @llvm.dbg.value(metadata !{double* %0}, i64 0, metadata !113), !dbg !203
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !109), !dbg !203
  %tobool5 = icmp eq i32 %nelems, 0, !dbg !203
  br i1 %tobool5, label %while.end, label %while.body.lr.ph, !dbg !203

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to double*, !dbg !203
  %1 = bitcast i8* %dst to float*, !dbg !203
  %idx.ext = sext i32 %src_stride to i64, !dbg !204
  %idx.ext1 = sext i32 %dst_stride to i64, !dbg !204
  br label %while.body, !dbg !203

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.08 = phi double* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.07 = phi float* [ %1, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %nelems.addr.06 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.06, -1, !dbg !203
  %2 = load double* %_src.08, align 8, !dbg !204, !tbaa !206
  %conv = fptrunc double %2 to float, !dbg !204
  store float %conv, float* %_dst.07, align 4, !dbg !204, !tbaa !207
  %add.ptr = getelementptr inbounds double* %_src.08, i64 %idx.ext, !dbg !204
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr}, i64 0, metadata !113), !dbg !204
  %add.ptr2 = getelementptr inbounds float* %_dst.07, i64 %idx.ext1, !dbg !204
  tail call void @llvm.dbg.value(metadata !{float* %add.ptr2}, i64 0, metadata !112), !dbg !204
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !109), !dbg !203
  %tobool = icmp eq i32 %dec, 0, !dbg !203
  br i1 %tobool, label %while.end, label %while.body, !dbg !203

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !203
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_REAL16_to_CCTK_REAL4(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !97), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !98), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !99), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !100), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !101), !dbg !208
  tail call void @llvm.dbg.value(metadata !{float* %1}, i64 0, metadata !102), !dbg !208
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %0}, i64 0, metadata !104), !dbg !208
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !99), !dbg !208
  %tobool5 = icmp eq i32 %nelems, 0, !dbg !208
  br i1 %tobool5, label %while.end, label %while.body.lr.ph, !dbg !208

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to x86_fp80*, !dbg !208
  %1 = bitcast i8* %dst to float*, !dbg !208
  %idx.ext = sext i32 %src_stride to i64, !dbg !209
  %idx.ext1 = sext i32 %dst_stride to i64, !dbg !209
  br label %while.body, !dbg !208

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.08 = phi x86_fp80* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.07 = phi float* [ %1, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %nelems.addr.06 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.06, -1, !dbg !208
  %2 = load x86_fp80* %_src.08, align 16, !dbg !209, !tbaa !211
  %conv = fptrunc x86_fp80 %2 to float, !dbg !209
  store float %conv, float* %_dst.07, align 4, !dbg !209, !tbaa !207
  %add.ptr = getelementptr inbounds x86_fp80* %_src.08, i64 %idx.ext, !dbg !209
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %add.ptr}, i64 0, metadata !104), !dbg !209
  %add.ptr2 = getelementptr inbounds float* %_dst.07, i64 %idx.ext1, !dbg !209
  tail call void @llvm.dbg.value(metadata !{float* %add.ptr2}, i64 0, metadata !102), !dbg !209
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !99), !dbg !208
  %tobool = icmp eq i32 %dec, 0, !dbg !208
  br i1 %tobool, label %while.end, label %while.body, !dbg !208

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !208
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_REAL16_to_CCTK_REAL8(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !85), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !86), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !87), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !88), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !89), !dbg !212
  tail call void @llvm.dbg.value(metadata !{double* %1}, i64 0, metadata !90), !dbg !212
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %0}, i64 0, metadata !92), !dbg !212
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !87), !dbg !212
  %tobool5 = icmp eq i32 %nelems, 0, !dbg !212
  br i1 %tobool5, label %while.end, label %while.body.lr.ph, !dbg !212

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to x86_fp80*, !dbg !212
  %1 = bitcast i8* %dst to double*, !dbg !212
  %idx.ext = sext i32 %src_stride to i64, !dbg !213
  %idx.ext1 = sext i32 %dst_stride to i64, !dbg !213
  br label %while.body, !dbg !212

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.08 = phi x86_fp80* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.07 = phi double* [ %1, %while.body.lr.ph ], [ %add.ptr2, %while.body ]
  %nelems.addr.06 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.06, -1, !dbg !212
  %2 = load x86_fp80* %_src.08, align 16, !dbg !213, !tbaa !211
  %conv = fptrunc x86_fp80 %2 to double, !dbg !213
  store double %conv, double* %_dst.07, align 8, !dbg !213, !tbaa !206
  %add.ptr = getelementptr inbounds x86_fp80* %_src.08, i64 %idx.ext, !dbg !213
  tail call void @llvm.dbg.value(metadata !{x86_fp80* %add.ptr}, i64 0, metadata !92), !dbg !213
  %add.ptr2 = getelementptr inbounds double* %_dst.07, i64 %idx.ext1, !dbg !213
  tail call void @llvm.dbg.value(metadata !{double* %add.ptr2}, i64 0, metadata !90), !dbg !213
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !87), !dbg !212
  %tobool = icmp eq i32 %dec, 0, !dbg !212
  br i1 %tobool, label %while.end, label %while.body, !dbg !212

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !212
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !74), !dbg !215
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !75), !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !76), !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !77), !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !78), !dbg !215
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX8* %1}, i64 0, metadata !79), !dbg !215
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %0}, i64 0, metadata !80), !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !76), !dbg !215
  %tobool10 = icmp eq i32 %nelems, 0, !dbg !215
  br i1 %tobool10, label %while.end, label %while.body.lr.ph, !dbg !215

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to %struct.CCTK_COMPLEX16*, !dbg !215
  %1 = bitcast i8* %dst to %struct.CCTK_COMPLEX8*, !dbg !215
  %idx.ext = sext i32 %src_stride to i64, !dbg !216
  %idx.ext4 = sext i32 %dst_stride to i64, !dbg !216
  br label %while.body, !dbg !215

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.013 = phi %struct.CCTK_COMPLEX16* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.012 = phi %struct.CCTK_COMPLEX8* [ %1, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  %nelems.addr.011 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.011, -1, !dbg !215
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.013, i64 0, i32 0, !dbg !216
  %2 = load double* %Re, align 8, !dbg !216, !tbaa !206
  %conv = fptrunc double %2 to float, !dbg !216
  %Re1 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.012, i64 0, i32 0, !dbg !216
  store float %conv, float* %Re1, align 4, !dbg !216, !tbaa !207
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.013, i64 0, i32 1, !dbg !216
  %3 = load double* %Im, align 8, !dbg !216, !tbaa !206
  %conv2 = fptrunc double %3 to float, !dbg !216
  %Im3 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.012, i64 0, i32 1, !dbg !216
  store float %conv2, float* %Im3, align 4, !dbg !216, !tbaa !207
  %add.ptr = getelementptr inbounds %struct.CCTK_COMPLEX16* %_src.013, i64 %idx.ext, !dbg !216
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %add.ptr}, i64 0, metadata !80), !dbg !216
  %add.ptr5 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.012, i64 %idx.ext4, !dbg !216
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX8* %add.ptr5}, i64 0, metadata !79), !dbg !216
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !76), !dbg !215
  %tobool = icmp eq i32 %dec, 0, !dbg !215
  br i1 %tobool, label %while.end, label %while.body, !dbg !215

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !215
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !58), !dbg !218
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !59), !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !60), !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !61), !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !62), !dbg !218
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX8* %1}, i64 0, metadata !63), !dbg !218
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX32* %0}, i64 0, metadata !71), !dbg !218
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !60), !dbg !218
  %tobool10 = icmp eq i32 %nelems, 0, !dbg !218
  br i1 %tobool10, label %while.end, label %while.body.lr.ph, !dbg !218

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to %struct.CCTK_COMPLEX32*, !dbg !218
  %1 = bitcast i8* %dst to %struct.CCTK_COMPLEX8*, !dbg !218
  %idx.ext = sext i32 %src_stride to i64, !dbg !219
  %idx.ext4 = sext i32 %dst_stride to i64, !dbg !219
  br label %while.body, !dbg !218

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.013 = phi %struct.CCTK_COMPLEX32* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.012 = phi %struct.CCTK_COMPLEX8* [ %1, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  %nelems.addr.011 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.011, -1, !dbg !218
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.013, i64 0, i32 0, !dbg !219
  %2 = load x86_fp80* %Re, align 16, !dbg !219, !tbaa !211
  %conv = fptrunc x86_fp80 %2 to float, !dbg !219
  %Re1 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.012, i64 0, i32 0, !dbg !219
  store float %conv, float* %Re1, align 4, !dbg !219, !tbaa !207
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.013, i64 0, i32 1, !dbg !219
  %3 = load x86_fp80* %Im, align 16, !dbg !219, !tbaa !211
  %conv2 = fptrunc x86_fp80 %3 to float, !dbg !219
  %Im3 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.012, i64 0, i32 1, !dbg !219
  store float %conv2, float* %Im3, align 4, !dbg !219, !tbaa !207
  %add.ptr = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.013, i64 %idx.ext, !dbg !219
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX32* %add.ptr}, i64 0, metadata !71), !dbg !219
  %add.ptr5 = getelementptr inbounds %struct.CCTK_COMPLEX8* %_dst.012, i64 %idx.ext4, !dbg !219
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX8* %add.ptr5}, i64 0, metadata !63), !dbg !219
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !60), !dbg !218
  %tobool = icmp eq i32 %dec, 0, !dbg !218
  br i1 %tobool, label %while.end, label %while.body, !dbg !218

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !218
}

; Function Attrs: nounwind optsize uwtable
define internal void @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16(i8* nocapture %src, i8* nocapture %dst, i32 %nelems, i32 %src_stride, i32 %dst_stride) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !33), !dbg !221
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !34), !dbg !221
  tail call void @llvm.dbg.value(metadata !{i32 %nelems}, i64 0, metadata !35), !dbg !221
  tail call void @llvm.dbg.value(metadata !{i32 %src_stride}, i64 0, metadata !36), !dbg !221
  tail call void @llvm.dbg.value(metadata !{i32 %dst_stride}, i64 0, metadata !37), !dbg !221
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %1}, i64 0, metadata !38), !dbg !221
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX32* %0}, i64 0, metadata !47), !dbg !221
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !35), !dbg !221
  %tobool10 = icmp eq i32 %nelems, 0, !dbg !221
  br i1 %tobool10, label %while.end, label %while.body.lr.ph, !dbg !221

while.body.lr.ph:                                 ; preds = %entry
  %0 = bitcast i8* %src to %struct.CCTK_COMPLEX32*, !dbg !221
  %1 = bitcast i8* %dst to %struct.CCTK_COMPLEX16*, !dbg !221
  %idx.ext = sext i32 %src_stride to i64, !dbg !222
  %idx.ext4 = sext i32 %dst_stride to i64, !dbg !222
  br label %while.body, !dbg !221

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %_src.013 = phi %struct.CCTK_COMPLEX32* [ %0, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %_dst.012 = phi %struct.CCTK_COMPLEX16* [ %1, %while.body.lr.ph ], [ %add.ptr5, %while.body ]
  %nelems.addr.011 = phi i32 [ %nelems, %while.body.lr.ph ], [ %dec, %while.body ]
  %dec = add nsw i32 %nelems.addr.011, -1, !dbg !221
  %Re = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.013, i64 0, i32 0, !dbg !222
  %2 = load x86_fp80* %Re, align 16, !dbg !222, !tbaa !211
  %conv = fptrunc x86_fp80 %2 to double, !dbg !222
  %Re1 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.012, i64 0, i32 0, !dbg !222
  store double %conv, double* %Re1, align 8, !dbg !222, !tbaa !206
  %Im = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.013, i64 0, i32 1, !dbg !222
  %3 = load x86_fp80* %Im, align 16, !dbg !222, !tbaa !211
  %conv2 = fptrunc x86_fp80 %3 to double, !dbg !222
  %Im3 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.012, i64 0, i32 1, !dbg !222
  store double %conv2, double* %Im3, align 8, !dbg !222, !tbaa !206
  %add.ptr = getelementptr inbounds %struct.CCTK_COMPLEX32* %_src.013, i64 %idx.ext, !dbg !222
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX32* %add.ptr}, i64 0, metadata !47), !dbg !222
  %add.ptr5 = getelementptr inbounds %struct.CCTK_COMPLEX16* %_dst.012, i64 %idx.ext4, !dbg !222
  tail call void @llvm.dbg.value(metadata !{%struct.CCTK_COMPLEX16* %add.ptr5}, i64 0, metadata !38), !dbg !222
  tail call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !35), !dbg !221
  %tobool = icmp eq i32 %dec, 0, !dbg !221
  br i1 %tobool, label %while.end, label %while.body, !dbg !221

while.end:                                        ; preds = %while.body, %entry
  ret void, !dbg !221
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !151, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !26, metadata !31, metadata !56, metadata !72, metadata !83, metadata !95, metadata !105, metadata !116, metadata !129, metadata !140}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c", metadata !"CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [CCTKi_version_CactusPUGH_PUGHSlab_DatatypeConversion_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGHSlabi_GetDatatypeConversionFn", metadata !"PUGHSlabi_GetDatatypeConversionFn", metadata !"", i32 126, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* (i32, i32)* @PUGHSlabi_GetDatatypeConversionFn, null, null, metadata !22, i32 128} ; [ DW_TAG_subprogram ] [line 126] [def] [scope 128] [PUGHSlabi_GetDatatypeConversionFn]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !21, metadata !21}
!14 = metadata !{i32 786454, metadata !1, null, metadata !"t_hslabConversionFn", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [t_hslabConversionFn] [line 21, size 0, align 0, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!16 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{null, metadata !18, metadata !20, metadata !21, metadata !21, metadata !21}
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!19 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{metadata !23, metadata !24, metadata !25}
!23 = metadata !{i32 786689, metadata !11, metadata !"src_type", metadata !5, i32 16777342, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_type] [line 126]
!24 = metadata !{i32 786689, metadata !11, metadata !"dst_type", metadata !5, i32 33554559, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_type] [line 127]
!25 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 129, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 129]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PUGHSlabi_PrecisionVarType", metadata !"PUGHSlabi_PrecisionVarType", metadata !"", i32 208, metadata !27, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !29, i32 209} ; [ DW_TAG_subprogram ] [line 208] [local] [def] [scope 209] [PUGHSlabi_PrecisionVarType]
!27 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !21, metadata !21}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786689, metadata !26, metadata !"type", metadata !5, i32 16777424, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [type] [line 208]
!31 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16", metadata !"Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16", metadata !"", i32 88, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16, null, null, metadata !32, i32 88} ; [ DW_TAG_subprogram ] [line 88] [local] [def] [Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX16]
!32 = metadata !{metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !47}
!33 = metadata !{i32 786689, metadata !31, metadata !"src", metadata !5, i32 16777304, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 88]
!34 = metadata !{i32 786689, metadata !31, metadata !"dst", metadata !5, i32 33554520, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 88]
!35 = metadata !{i32 786689, metadata !31, metadata !"nelems", metadata !5, i32 50331736, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 88]
!36 = metadata !{i32 786689, metadata !31, metadata !"src_stride", metadata !5, i32 67108952, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 88]
!37 = metadata !{i32 786689, metadata !31, metadata !"dst_stride", metadata !5, i32 83886168, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 88]
!38 = metadata !{i32 786688, metadata !31, metadata !"_dst", metadata !5, i32 88, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 88]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_COMPLEX16]
!40 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX16", i32 44, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [CCTK_COMPLEX16] [line 44, size 0, align 0, offset 0] [from ]
!41 = metadata !{i32 786451, metadata !42, null, metadata !"", i32 40, i64 128, i64 64, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 40, size 128, align 64, offset 0] [from ]
!42 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/../include/cctk_Types.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!43 = metadata !{metadata !44, metadata !46}
!44 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"Re", i32 42, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [Re] [line 42, size 64, align 64, offset 0] [from double]
!45 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!46 = metadata !{i32 786445, metadata !42, metadata !41, metadata !"Im", i32 43, i64 64, i64 64, i64 64, i32 0, metadata !45} ; [ DW_TAG_member ] [Im] [line 43, size 64, align 64, offset 64] [from double]
!47 = metadata !{i32 786688, metadata !31, metadata !"_src", metadata !5, i32 88, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 88]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CCTK_COMPLEX32]
!50 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX32", i32 36, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [CCTK_COMPLEX32] [line 36, size 0, align 0, offset 0] [from ]
!51 = metadata !{i32 786451, metadata !42, null, metadata !"", i32 32, i64 256, i64 128, i32 0, i32 0, null, metadata !52, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 32, size 256, align 128, offset 0] [from ]
!52 = metadata !{metadata !53, metadata !55}
!53 = metadata !{i32 786445, metadata !42, metadata !51, metadata !"Re", i32 34, i64 128, i64 128, i64 0, i32 0, metadata !54} ; [ DW_TAG_member ] [Re] [line 34, size 128, align 128, offset 0] [from long double]
!54 = metadata !{i32 786468, null, null, metadata !"long double", i32 0, i64 128, i64 128, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [long double] [line 0, size 128, align 128, offset 0, enc DW_ATE_float]
!55 = metadata !{i32 786445, metadata !42, metadata !51, metadata !"Im", i32 35, i64 128, i64 128, i64 128, i32 0, metadata !54} ; [ DW_TAG_member ] [Im] [line 35, size 128, align 128, offset 128] [from long double]
!56 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8", metadata !"Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8", metadata !"", i32 91, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8, null, null, metadata !57, i32 91} ; [ DW_TAG_subprogram ] [line 91] [local] [def] [Convert_CCTK_COMPLEX32_to_CCTK_COMPLEX8]
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !71}
!58 = metadata !{i32 786689, metadata !56, metadata !"src", metadata !5, i32 16777307, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 91]
!59 = metadata !{i32 786689, metadata !56, metadata !"dst", metadata !5, i32 33554523, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 91]
!60 = metadata !{i32 786689, metadata !56, metadata !"nelems", metadata !5, i32 50331739, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 91]
!61 = metadata !{i32 786689, metadata !56, metadata !"src_stride", metadata !5, i32 67108955, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 91]
!62 = metadata !{i32 786689, metadata !56, metadata !"dst_stride", metadata !5, i32 83886171, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 91]
!63 = metadata !{i32 786688, metadata !56, metadata !"_dst", metadata !5, i32 91, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 91]
!64 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from CCTK_COMPLEX8]
!65 = metadata !{i32 786454, metadata !1, null, metadata !"CCTK_COMPLEX8", i32 52, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ] [CCTK_COMPLEX8] [line 52, size 0, align 0, offset 0] [from ]
!66 = metadata !{i32 786451, metadata !42, null, metadata !"", i32 48, i64 64, i64 32, i32 0, i32 0, null, metadata !67, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 48, size 64, align 32, offset 0] [from ]
!67 = metadata !{metadata !68, metadata !70}
!68 = metadata !{i32 786445, metadata !42, metadata !66, metadata !"Re", i32 50, i64 32, i64 32, i64 0, i32 0, metadata !69} ; [ DW_TAG_member ] [Re] [line 50, size 32, align 32, offset 0] [from float]
!69 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!70 = metadata !{i32 786445, metadata !42, metadata !66, metadata !"Im", i32 51, i64 32, i64 32, i64 32, i32 0, metadata !69} ; [ DW_TAG_member ] [Im] [line 51, size 32, align 32, offset 32] [from float]
!71 = metadata !{i32 786688, metadata !56, metadata !"_src", metadata !5, i32 91, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 91]
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8", metadata !"Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8", metadata !"", i32 85, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8, null, null, metadata !73, i32 85} ; [ DW_TAG_subprogram ] [line 85] [local] [def] [Convert_CCTK_COMPLEX16_to_CCTK_COMPLEX8]
!73 = metadata !{metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80}
!74 = metadata !{i32 786689, metadata !72, metadata !"src", metadata !5, i32 16777301, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 85]
!75 = metadata !{i32 786689, metadata !72, metadata !"dst", metadata !5, i32 33554517, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 85]
!76 = metadata !{i32 786689, metadata !72, metadata !"nelems", metadata !5, i32 50331733, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 85]
!77 = metadata !{i32 786689, metadata !72, metadata !"src_stride", metadata !5, i32 67108949, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 85]
!78 = metadata !{i32 786689, metadata !72, metadata !"dst_stride", metadata !5, i32 83886165, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 85]
!79 = metadata !{i32 786688, metadata !72, metadata !"_dst", metadata !5, i32 85, metadata !64, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 85]
!80 = metadata !{i32 786688, metadata !72, metadata !"_src", metadata !5, i32 85, metadata !81, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 85]
!81 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!82 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from CCTK_COMPLEX16]
!83 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_REAL16_to_CCTK_REAL8", metadata !"Convert_CCTK_REAL16_to_CCTK_REAL8", metadata !"", i32 75, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_REAL16_to_CCTK_REAL8, null, null, metadata !84, i32 75} ; [ DW_TAG_subprogram ] [line 75] [local] [def] [Convert_CCTK_REAL16_to_CCTK_REAL8]
!84 = metadata !{metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90, metadata !92}
!85 = metadata !{i32 786689, metadata !83, metadata !"src", metadata !5, i32 16777291, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 75]
!86 = metadata !{i32 786689, metadata !83, metadata !"dst", metadata !5, i32 33554507, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 75]
!87 = metadata !{i32 786689, metadata !83, metadata !"nelems", metadata !5, i32 50331723, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 75]
!88 = metadata !{i32 786689, metadata !83, metadata !"src_stride", metadata !5, i32 67108939, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 75]
!89 = metadata !{i32 786689, metadata !83, metadata !"dst_stride", metadata !5, i32 83886155, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 75]
!90 = metadata !{i32 786688, metadata !83, metadata !"_dst", metadata !5, i32 75, metadata !91, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 75]
!91 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!92 = metadata !{i32 786688, metadata !83, metadata !"_src", metadata !5, i32 75, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 75]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !94} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!94 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from long double]
!95 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_REAL16_to_CCTK_REAL4", metadata !"Convert_CCTK_REAL16_to_CCTK_REAL4", metadata !"", i32 72, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_REAL16_to_CCTK_REAL4, null, null, metadata !96, i32 72} ; [ DW_TAG_subprogram ] [line 72] [local] [def] [Convert_CCTK_REAL16_to_CCTK_REAL4]
!96 = metadata !{metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !104}
!97 = metadata !{i32 786689, metadata !95, metadata !"src", metadata !5, i32 16777288, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 72]
!98 = metadata !{i32 786689, metadata !95, metadata !"dst", metadata !5, i32 33554504, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 72]
!99 = metadata !{i32 786689, metadata !95, metadata !"nelems", metadata !5, i32 50331720, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 72]
!100 = metadata !{i32 786689, metadata !95, metadata !"src_stride", metadata !5, i32 67108936, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 72]
!101 = metadata !{i32 786689, metadata !95, metadata !"dst_stride", metadata !5, i32 83886152, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 72]
!102 = metadata !{i32 786688, metadata !95, metadata !"_dst", metadata !5, i32 72, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 72]
!103 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!104 = metadata !{i32 786688, metadata !95, metadata !"_src", metadata !5, i32 72, metadata !93, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 72]
!105 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_REAL8_to_CCTK_REAL4", metadata !"Convert_CCTK_REAL8_to_CCTK_REAL4", metadata !"", i32 69, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_REAL8_to_CCTK_REAL4, null, null, metadata !106, i32 69} ; [ DW_TAG_subprogram ] [line 69] [local] [def] [Convert_CCTK_REAL8_to_CCTK_REAL4]
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113}
!107 = metadata !{i32 786689, metadata !105, metadata !"src", metadata !5, i32 16777285, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 69]
!108 = metadata !{i32 786689, metadata !105, metadata !"dst", metadata !5, i32 33554501, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 69]
!109 = metadata !{i32 786689, metadata !105, metadata !"nelems", metadata !5, i32 50331717, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 69]
!110 = metadata !{i32 786689, metadata !105, metadata !"src_stride", metadata !5, i32 67108933, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 69]
!111 = metadata !{i32 786689, metadata !105, metadata !"dst_stride", metadata !5, i32 83886149, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 69]
!112 = metadata !{i32 786688, metadata !105, metadata !"_dst", metadata !5, i32 69, metadata !103, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 69]
!113 = metadata !{i32 786688, metadata !105, metadata !"_src", metadata !5, i32 69, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 69]
!114 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !115} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!115 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!116 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_INT8_to_CCTK_INT4", metadata !"Convert_CCTK_INT8_to_CCTK_INT4", metadata !"", i32 64, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_INT8_to_CCTK_INT4, null, null, metadata !117, i32 64} ; [ DW_TAG_subprogram ] [line 64] [local] [def] [Convert_CCTK_INT8_to_CCTK_INT4]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !125}
!118 = metadata !{i32 786689, metadata !116, metadata !"src", metadata !5, i32 16777280, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 64]
!119 = metadata !{i32 786689, metadata !116, metadata !"dst", metadata !5, i32 33554496, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 64]
!120 = metadata !{i32 786689, metadata !116, metadata !"nelems", metadata !5, i32 50331712, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 64]
!121 = metadata !{i32 786689, metadata !116, metadata !"src_stride", metadata !5, i32 67108928, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 64]
!122 = metadata !{i32 786689, metadata !116, metadata !"dst_stride", metadata !5, i32 83886144, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 64]
!123 = metadata !{i32 786688, metadata !116, metadata !"_dst", metadata !5, i32 64, metadata !124, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 64]
!124 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!125 = metadata !{i32 786688, metadata !116, metadata !"_src", metadata !5, i32 64, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 64]
!126 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!127 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from long int]
!128 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_INT8_to_CCTK_INT2", metadata !"Convert_CCTK_INT8_to_CCTK_INT2", metadata !"", i32 61, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_INT8_to_CCTK_INT2, null, null, metadata !130, i32 61} ; [ DW_TAG_subprogram ] [line 61] [local] [def] [Convert_CCTK_INT8_to_CCTK_INT2]
!130 = metadata !{metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !139}
!131 = metadata !{i32 786689, metadata !129, metadata !"src", metadata !5, i32 16777277, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 61]
!132 = metadata !{i32 786689, metadata !129, metadata !"dst", metadata !5, i32 33554493, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 61]
!133 = metadata !{i32 786689, metadata !129, metadata !"nelems", metadata !5, i32 50331709, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 61]
!134 = metadata !{i32 786689, metadata !129, metadata !"src_stride", metadata !5, i32 67108925, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 61]
!135 = metadata !{i32 786689, metadata !129, metadata !"dst_stride", metadata !5, i32 83886141, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 61]
!136 = metadata !{i32 786688, metadata !129, metadata !"_dst", metadata !5, i32 61, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 61]
!137 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from short]
!138 = metadata !{i32 786468, null, null, metadata !"short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [short] [line 0, size 16, align 16, offset 0, enc DW_ATE_signed]
!139 = metadata !{i32 786688, metadata !129, metadata !"_src", metadata !5, i32 61, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 61]
!140 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Convert_CCTK_INT4_to_CCTK_INT2", metadata !"Convert_CCTK_INT4_to_CCTK_INT2", metadata !"", i32 58, metadata !16, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*, i32, i32, i32)* @Convert_CCTK_INT4_to_CCTK_INT2, null, null, metadata !141, i32 58} ; [ DW_TAG_subprogram ] [line 58] [local] [def] [Convert_CCTK_INT4_to_CCTK_INT2]
!141 = metadata !{metadata !142, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!142 = metadata !{i32 786689, metadata !140, metadata !"src", metadata !5, i32 16777274, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 58]
!143 = metadata !{i32 786689, metadata !140, metadata !"dst", metadata !5, i32 33554490, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 58]
!144 = metadata !{i32 786689, metadata !140, metadata !"nelems", metadata !5, i32 50331706, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [nelems] [line 58]
!145 = metadata !{i32 786689, metadata !140, metadata !"src_stride", metadata !5, i32 67108922, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src_stride] [line 58]
!146 = metadata !{i32 786689, metadata !140, metadata !"dst_stride", metadata !5, i32 83886138, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst_stride] [line 58]
!147 = metadata !{i32 786688, metadata !140, metadata !"_dst", metadata !5, i32 58, metadata !137, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_dst] [line 58]
!148 = metadata !{i32 786688, metadata !140, metadata !"_src", metadata !5, i32 58, metadata !149, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [_src] [line 58]
!149 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !150} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!150 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!151 = metadata !{metadata !152}
!152 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 20, metadata !8, i32 1, i32 1, null, null}
!153 = metadata !{i32 21, i32 0, metadata !4, null}
!154 = metadata !{i32 126, i32 0, metadata !11, null}
!155 = metadata !{i32 127, i32 0, metadata !11, null}
!156 = metadata !{i32 786689, metadata !26, metadata !"type", metadata !5, i32 16777424, metadata !21, i32 0, metadata !157} ; [ DW_TAG_arg_variable ] [type] [line 208]
!157 = metadata !{i32 133, i32 0, metadata !11, null}
!158 = metadata !{i32 208, i32 0, metadata !26, metadata !157}
!159 = metadata !{i32 210, i32 0, metadata !26, metadata !157}
!160 = metadata !{i32 8}
!161 = metadata !{i32 225, i32 0, metadata !162, metadata !157}
!162 = metadata !{i32 786443, metadata !1, metadata !26, i32 221, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!163 = metadata !{i32 229, i32 0, metadata !162, metadata !157}
!164 = metadata !{i32 230, i32 0, metadata !26, metadata !157}
!165 = metadata !{i32 12}
!166 = metadata !{i32 235, i32 0, metadata !167, metadata !157}
!167 = metadata !{i32 786443, metadata !1, metadata !26, i32 231, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!168 = metadata !{i32 786689, metadata !26, metadata !"type", metadata !5, i32 16777424, metadata !21, i32 0, metadata !169} ; [ DW_TAG_arg_variable ] [type] [line 208]
!169 = metadata !{i32 134, i32 0, metadata !11, null}
!170 = metadata !{i32 208, i32 0, metadata !26, metadata !169}
!171 = metadata !{i32 210, i32 0, metadata !26, metadata !169}
!172 = metadata !{i32 225, i32 0, metadata !162, metadata !169}
!173 = metadata !{i32 229, i32 0, metadata !162, metadata !169}
!174 = metadata !{i32 148, i32 0, metadata !11, null}
!175 = metadata !{i32 230, i32 0, metadata !26, metadata !169}
!176 = metadata !{i32 235, i32 0, metadata !167, metadata !169}
!177 = metadata !{i32 142, i32 0, metadata !11, null}
!178 = metadata !{i32 154, i32 0, metadata !11, null}
!179 = metadata !{i32 160, i32 0, metadata !11, null}
!180 = metadata !{i32 166, i32 0, metadata !11, null}
!181 = metadata !{i32 172, i32 0, metadata !11, null}
!182 = metadata !{i32 178, i32 0, metadata !11, null}
!183 = metadata !{i32 184, i32 0, metadata !11, null}
!184 = metadata !{i32 190, i32 0, metadata !11, null}
!185 = metadata !{void (i8*, i8*, i32, i32, i32)* null}
!186 = metadata !{i32 197, i32 0, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !11, i32 196, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!188 = metadata !{i32 200, i32 0, metadata !11, null}
!189 = metadata !{i32 58, i32 0, metadata !140, null} ; [ DW_TAG_imported_module ]
!190 = metadata !{i32 58, i32 0, metadata !191, null} ; [ DW_TAG_imported_module ]
!191 = metadata !{i32 786443, metadata !1, metadata !140, i32 58, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!192 = metadata !{metadata !"int", metadata !193}
!193 = metadata !{metadata !"omnipotent char", metadata !194}
!194 = metadata !{metadata !"Simple C/C++ TBAA"}
!195 = metadata !{metadata !"short", metadata !193}
!196 = metadata !{i32 61, i32 0, metadata !129, null}
!197 = metadata !{i32 61, i32 0, metadata !198, null}
!198 = metadata !{i32 786443, metadata !1, metadata !129, i32 61, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!199 = metadata !{metadata !"long", metadata !193}
!200 = metadata !{i32 64, i32 0, metadata !116, null}
!201 = metadata !{i32 64, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !116, i32 64, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!203 = metadata !{i32 69, i32 0, metadata !105, null}
!204 = metadata !{i32 69, i32 0, metadata !205, null}
!205 = metadata !{i32 786443, metadata !1, metadata !105, i32 69, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!206 = metadata !{metadata !"double", metadata !193}
!207 = metadata !{metadata !"float", metadata !193}
!208 = metadata !{i32 72, i32 0, metadata !95, null}
!209 = metadata !{i32 72, i32 0, metadata !210, null}
!210 = metadata !{i32 786443, metadata !1, metadata !95, i32 72, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!211 = metadata !{metadata !"long double", metadata !193}
!212 = metadata !{i32 75, i32 0, metadata !83, null}
!213 = metadata !{i32 75, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !83, i32 75, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!215 = metadata !{i32 85, i32 0, metadata !72, null}
!216 = metadata !{i32 85, i32 0, metadata !217, null}
!217 = metadata !{i32 786443, metadata !1, metadata !72, i32 85, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!218 = metadata !{i32 91, i32 0, metadata !56, null}
!219 = metadata !{i32 91, i32 0, metadata !220, null}
!220 = metadata !{i32 786443, metadata !1, metadata !56, i32 91, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]
!221 = metadata !{i32 88, i32 0, metadata !31, null}
!222 = metadata !{i32 88, i32 0, metadata !223, null}
!223 = metadata !{i32 786443, metadata !1, metadata !31, i32 88, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/PUGHSlab/DatatypeConversion.c]

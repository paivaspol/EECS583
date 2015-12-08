; ModuleID = '../../SPEC/benchspec/CPU2006/403.gcc/src/md5.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [128 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@fillbuf = internal unnamed_addr constant [64 x i8] c"\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16

; Function Attrs: nounwind optsize uwtable
define void @md5_init_ctx(%struct.md5_ctx* nocapture %ctx) #0 {
entry:
  %A = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 0
  store i32 1732584193, i32* %A, align 4, !tbaa !0
  %B = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 1
  store i32 -271733879, i32* %B, align 4, !tbaa !0
  %C = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 2
  store i32 -1732584194, i32* %C, align 4, !tbaa !0
  %D = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 3
  store i32 271733878, i32* %D, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 1
  store i32 0, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 0
  store i32 0, i32* %arrayidx2, align 4, !tbaa !0
  %buflen = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 5
  store i32 0, i32* %buflen, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i8* @md5_read_ctx(%struct.md5_ctx* nocapture %ctx, i8* %resbuf) #0 {
entry:
  %A = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 0
  %0 = load i32* %A, align 4, !tbaa !0
  %1 = bitcast i8* %resbuf to i32*
  store i32 %0, i32* %1, align 4, !tbaa !0
  %B = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 1
  %2 = load i32* %B, align 4, !tbaa !0
  %arrayidx1 = getelementptr inbounds i8* %resbuf, i64 4
  %3 = bitcast i8* %arrayidx1 to i32*
  store i32 %2, i32* %3, align 4, !tbaa !0
  %C = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 2
  %4 = load i32* %C, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds i8* %resbuf, i64 8
  %5 = bitcast i8* %arrayidx2 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !0
  %D = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 3
  %6 = load i32* %D, align 4, !tbaa !0
  %arrayidx3 = getelementptr inbounds i8* %resbuf, i64 12
  %7 = bitcast i8* %arrayidx3 to i32*
  store i32 %6, i32* %7, align 4, !tbaa !0
  ret i8* %resbuf
}

; Function Attrs: nounwind optsize uwtable
define i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %resbuf) #0 {
entry:
  %buflen = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 5
  %0 = load i32* %buflen, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 0
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %uadd = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %0)
  %2 = extractvalue { i32, i1 } %uadd, 0
  store i32 %2, i32* %arrayidx, align 4, !tbaa !0
  %cmp = extractvalue { i32, i1 } %uadd, 1
  %arrayidx4 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32* %arrayidx4, align 4, !tbaa !0
  %inc = add i32 %3, 1
  store i32 %inc, i32* %arrayidx4, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp5 = icmp ugt i32 %0, 55
  %cond.v = select i1 %cmp5, i32 120, i32 56
  %cond = sub i32 %cond.v, %0
  %conv = zext i32 %cond to i64
  %idxprom = zext i32 %0 to i64
  %arrayidx7 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 6, i64 %idxprom
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx7, i8* getelementptr inbounds ([64 x i8]* @fillbuf, i64 0, i64 0), i64 %conv, i32 1, i1 false)
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %shl = shl i32 %4, 3
  %add11 = add i64 %conv, %idxprom
  %arrayidx13 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 6, i64 %add11
  %5 = bitcast i8* %arrayidx13 to i32*
  store i32 %shl, i32* %5, align 4, !tbaa !0
  %6 = load i32* %arrayidx4, align 4, !tbaa !0
  %shl16 = shl i32 %6, 3
  %7 = load i32* %arrayidx, align 4, !tbaa !0
  %shr = lshr i32 %7, 29
  %or = or i32 %shr, %shl16
  %add21 = add i64 %add11, 4
  %arrayidx23 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 6, i64 %add21
  %8 = bitcast i8* %arrayidx23 to i32*
  store i32 %or, i32* %8, align 4, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 6, i64 0
  %add27 = add i64 %add11, 8
  tail call void @md5_process_block(i8* %arraydecay, i64 %add27, %struct.md5_ctx* %ctx) #5
  %A.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 0
  %9 = load i32* %A.i, align 4, !tbaa !0
  %10 = bitcast i8* %resbuf to i32*
  store i32 %9, i32* %10, align 4, !tbaa !0
  %B.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 1
  %11 = load i32* %B.i, align 4, !tbaa !0
  %arrayidx1.i = getelementptr inbounds i8* %resbuf, i64 4
  %12 = bitcast i8* %arrayidx1.i to i32*
  store i32 %11, i32* %12, align 4, !tbaa !0
  %C.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 2
  %13 = load i32* %C.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds i8* %resbuf, i64 8
  %14 = bitcast i8* %arrayidx2.i to i32*
  store i32 %13, i32* %14, align 4, !tbaa !0
  %D.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 3
  %15 = load i32* %D.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds i8* %resbuf, i64 12
  %16 = bitcast i8* %arrayidx3.i to i32*
  store i32 %15, i32* %16, align 4, !tbaa !0
  ret i8* %resbuf
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: nounwind optsize uwtable
define void @md5_process_block(i8* %buffer, i64 %len, %struct.md5_ctx* nocapture %ctx) #0 {
entry:
  %0 = bitcast i8* %buffer to i32*
  %div = lshr i64 %len, 2
  %add.ptr = getelementptr inbounds i32* %0, i64 %div
  %A1 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 0
  %1 = load i32* %A1, align 4, !tbaa !0
  %B2 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 1
  %2 = load i32* %B2, align 4, !tbaa !0
  %C3 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 2
  %3 = load i32* %C3, align 4, !tbaa !0
  %D4 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 3
  %4 = load i32* %D4, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 0
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %conv = zext i32 %5 to i64
  %add = add i64 %conv, %len
  %conv5 = trunc i64 %add to i32
  store i32 %conv5, i32* %arrayidx, align 4, !tbaa !0
  %conv8 = and i64 %add, 4294967295
  %cmp = icmp ult i64 %conv8, %len
  br i1 %cmp, label %if.then, label %while.cond.preheader

if.then:                                          ; preds = %entry
  %arrayidx11 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 1
  %6 = load i32* %arrayidx11, align 4, !tbaa !0
  %inc = add i32 %6, 1
  store i32 %inc, i32* %arrayidx11, align 4, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %entry
  %cmp121568 = icmp ult i32* %0, %add.ptr
  br i1 %cmp121568, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %words.01573 = phi i32* [ %incdec.ptr238, %while.body ], [ %0, %while.cond.preheader ]
  %A.01572 = phi i32 [ %add900, %while.body ], [ %1, %while.cond.preheader ]
  %B.01571 = phi i32 [ %add901, %while.body ], [ %2, %while.cond.preheader ]
  %C.01570 = phi i32 [ %add902, %while.body ], [ %3, %while.cond.preheader ]
  %D.01569 = phi i32 [ %add903, %while.body ], [ %4, %while.cond.preheader ]
  %xor = xor i32 %C.01570, %D.01569
  %and = and i32 %B.01571, %xor
  %xor14 = xor i32 %and, %D.01569
  %7 = load i32* %words.01573, align 4, !tbaa !0
  %add15 = add i32 %A.01572, -680876936
  %add16 = add i32 %add15, %xor14
  %add17 = add i32 %add16, %7
  %incdec.ptr18 = getelementptr inbounds i32* %words.01573, i64 1
  %shl = shl i32 %add17, 7
  %shr = lshr i32 %add17, 25
  %or = or i32 %shl, %shr
  %add19 = add i32 %or, %B.01571
  %xor21 = xor i32 %B.01571, %C.01570
  %and22 = and i32 %add19, %xor21
  %xor23 = xor i32 %and22, %C.01570
  %8 = load i32* %incdec.ptr18, align 4, !tbaa !0
  %add25 = add i32 %D.01569, -389564586
  %add26 = add i32 %add25, %8
  %add27 = add i32 %add26, %xor23
  %incdec.ptr28 = getelementptr inbounds i32* %words.01573, i64 2
  %shl29 = shl i32 %add27, 12
  %shr30 = lshr i32 %add27, 20
  %or31 = or i32 %shl29, %shr30
  %add32 = add i32 %or31, %add19
  %xor36 = xor i32 %add19, %B.01571
  %and37 = and i32 %add32, %xor36
  %xor38 = xor i32 %and37, %B.01571
  %9 = load i32* %incdec.ptr28, align 4, !tbaa !0
  %add40 = add i32 %C.01570, 606105819
  %add41 = add i32 %add40, %9
  %add42 = add i32 %add41, %xor38
  %incdec.ptr43 = getelementptr inbounds i32* %words.01573, i64 3
  %shl44 = shl i32 %add42, 17
  %shr45 = lshr i32 %add42, 15
  %or46 = or i32 %shl44, %shr45
  %add47 = add i32 %or46, %add32
  %xor51 = xor i32 %add32, %add19
  %and52 = and i32 %add47, %xor51
  %xor53 = xor i32 %and52, %add19
  %10 = load i32* %incdec.ptr43, align 4, !tbaa !0
  %add55 = add i32 %B.01571, -1044525330
  %add56 = add i32 %add55, %10
  %add57 = add i32 %add56, %xor53
  %incdec.ptr58 = getelementptr inbounds i32* %words.01573, i64 4
  %shl59 = shl i32 %add57, 22
  %shr60 = lshr i32 %add57, 10
  %or61 = or i32 %shl59, %shr60
  %add62 = add i32 %or61, %add47
  %xor66 = xor i32 %add47, %add32
  %and67 = and i32 %add62, %xor66
  %xor68 = xor i32 %and67, %add32
  %11 = load i32* %incdec.ptr58, align 4, !tbaa !0
  %add70 = add i32 %11, -176418897
  %add71 = add i32 %add70, %add19
  %add72 = add i32 %add71, %xor68
  %incdec.ptr73 = getelementptr inbounds i32* %words.01573, i64 5
  %shl74 = shl i32 %add72, 7
  %shr75 = lshr i32 %add72, 25
  %or76 = or i32 %shl74, %shr75
  %add77 = add i32 %or76, %add62
  %xor81 = xor i32 %add62, %add47
  %and82 = and i32 %add77, %xor81
  %xor83 = xor i32 %and82, %add47
  %12 = load i32* %incdec.ptr73, align 4, !tbaa !0
  %add85 = add i32 %12, 1200080426
  %add86 = add i32 %add85, %add32
  %add87 = add i32 %add86, %xor83
  %incdec.ptr88 = getelementptr inbounds i32* %words.01573, i64 6
  %shl89 = shl i32 %add87, 12
  %shr90 = lshr i32 %add87, 20
  %or91 = or i32 %shl89, %shr90
  %add92 = add i32 %or91, %add77
  %xor96 = xor i32 %add77, %add62
  %and97 = and i32 %add92, %xor96
  %xor98 = xor i32 %and97, %add62
  %13 = load i32* %incdec.ptr88, align 4, !tbaa !0
  %add100 = add i32 %13, -1473231341
  %add101 = add i32 %add100, %add47
  %add102 = add i32 %add101, %xor98
  %incdec.ptr103 = getelementptr inbounds i32* %words.01573, i64 7
  %shl104 = shl i32 %add102, 17
  %shr105 = lshr i32 %add102, 15
  %or106 = or i32 %shl104, %shr105
  %add107 = add i32 %or106, %add92
  %xor111 = xor i32 %add92, %add77
  %and112 = and i32 %add107, %xor111
  %xor113 = xor i32 %and112, %add77
  %14 = load i32* %incdec.ptr103, align 4, !tbaa !0
  %add115 = add i32 %14, -45705983
  %add116 = add i32 %add115, %add62
  %add117 = add i32 %add116, %xor113
  %incdec.ptr118 = getelementptr inbounds i32* %words.01573, i64 8
  %shl119 = shl i32 %add117, 22
  %shr120 = lshr i32 %add117, 10
  %or121 = or i32 %shl119, %shr120
  %add122 = add i32 %or121, %add107
  %xor126 = xor i32 %add107, %add92
  %and127 = and i32 %add122, %xor126
  %xor128 = xor i32 %and127, %add92
  %15 = load i32* %incdec.ptr118, align 4, !tbaa !0
  %add130 = add i32 %15, 1770035416
  %add131 = add i32 %add130, %add77
  %add132 = add i32 %add131, %xor128
  %incdec.ptr133 = getelementptr inbounds i32* %words.01573, i64 9
  %shl134 = shl i32 %add132, 7
  %shr135 = lshr i32 %add132, 25
  %or136 = or i32 %shl134, %shr135
  %add137 = add i32 %or136, %add122
  %xor141 = xor i32 %add122, %add107
  %and142 = and i32 %add137, %xor141
  %xor143 = xor i32 %and142, %add107
  %16 = load i32* %incdec.ptr133, align 4, !tbaa !0
  %add145 = add i32 %16, -1958414417
  %add146 = add i32 %add145, %add92
  %add147 = add i32 %add146, %xor143
  %incdec.ptr148 = getelementptr inbounds i32* %words.01573, i64 10
  %shl149 = shl i32 %add147, 12
  %shr150 = lshr i32 %add147, 20
  %or151 = or i32 %shl149, %shr150
  %add152 = add i32 %or151, %add137
  %xor156 = xor i32 %add137, %add122
  %and157 = and i32 %add152, %xor156
  %xor158 = xor i32 %and157, %add122
  %17 = load i32* %incdec.ptr148, align 4, !tbaa !0
  %add160 = add i32 %17, -42063
  %add161 = add i32 %add160, %add107
  %add162 = add i32 %add161, %xor158
  %incdec.ptr163 = getelementptr inbounds i32* %words.01573, i64 11
  %shl164 = shl i32 %add162, 17
  %shr165 = lshr i32 %add162, 15
  %or166 = or i32 %shl164, %shr165
  %add167 = add i32 %or166, %add152
  %xor171 = xor i32 %add152, %add137
  %and172 = and i32 %add167, %xor171
  %xor173 = xor i32 %and172, %add137
  %18 = load i32* %incdec.ptr163, align 4, !tbaa !0
  %add175 = add i32 %18, -1990404162
  %add176 = add i32 %add175, %add122
  %add177 = add i32 %add176, %xor173
  %incdec.ptr178 = getelementptr inbounds i32* %words.01573, i64 12
  %shl179 = shl i32 %add177, 22
  %shr180 = lshr i32 %add177, 10
  %or181 = or i32 %shl179, %shr180
  %add182 = add i32 %or181, %add167
  %xor186 = xor i32 %add167, %add152
  %and187 = and i32 %add182, %xor186
  %xor188 = xor i32 %and187, %add152
  %19 = load i32* %incdec.ptr178, align 4, !tbaa !0
  %add190 = add i32 %19, 1804603682
  %add191 = add i32 %add190, %add137
  %add192 = add i32 %add191, %xor188
  %incdec.ptr193 = getelementptr inbounds i32* %words.01573, i64 13
  %shl194 = shl i32 %add192, 7
  %shr195 = lshr i32 %add192, 25
  %or196 = or i32 %shl194, %shr195
  %add197 = add i32 %or196, %add182
  %xor201 = xor i32 %add182, %add167
  %and202 = and i32 %add197, %xor201
  %xor203 = xor i32 %and202, %add167
  %20 = load i32* %incdec.ptr193, align 4, !tbaa !0
  %add205 = add i32 %20, -40341101
  %add206 = add i32 %add205, %add152
  %add207 = add i32 %add206, %xor203
  %incdec.ptr208 = getelementptr inbounds i32* %words.01573, i64 14
  %shl209 = shl i32 %add207, 12
  %shr210 = lshr i32 %add207, 20
  %or211 = or i32 %shl209, %shr210
  %add212 = add i32 %or211, %add197
  %xor216 = xor i32 %add197, %add182
  %and217 = and i32 %add212, %xor216
  %xor218 = xor i32 %and217, %add182
  %21 = load i32* %incdec.ptr208, align 4, !tbaa !0
  %add220 = add i32 %21, -1502002290
  %add221 = add i32 %add220, %add167
  %add222 = add i32 %add221, %xor218
  %incdec.ptr223 = getelementptr inbounds i32* %words.01573, i64 15
  %shl224 = shl i32 %add222, 17
  %shr225 = lshr i32 %add222, 15
  %or226 = or i32 %shl224, %shr225
  %add227 = add i32 %or226, %add212
  %xor231 = xor i32 %add212, %add197
  %and232 = and i32 %add227, %xor231
  %xor233 = xor i32 %and232, %add197
  %22 = load i32* %incdec.ptr223, align 4, !tbaa !0
  %add235 = add i32 %22, 1236535329
  %add236 = add i32 %add235, %add182
  %add237 = add i32 %add236, %xor233
  %incdec.ptr238 = getelementptr inbounds i32* %words.01573, i64 16
  %shl239 = shl i32 %add237, 22
  %shr240 = lshr i32 %add237, 10
  %or241 = or i32 %shl239, %shr240
  %add242 = add i32 %or241, %add227
  %xor246 = xor i32 %add242, %add227
  %and247 = and i32 %xor246, %add212
  %xor248 = xor i32 %and247, %add227
  %add250 = add i32 %8, -165796510
  %add251 = add i32 %add250, %add197
  %add252 = add i32 %add251, %xor248
  %shl253 = shl i32 %add252, 5
  %shr254 = lshr i32 %add252, 27
  %or255 = or i32 %shl253, %shr254
  %add256 = add i32 %or255, %add242
  %xor260 = xor i32 %add256, %add242
  %and261 = and i32 %xor260, %add227
  %xor262 = xor i32 %and261, %add242
  %add264 = add i32 %13, -1069501632
  %add265 = add i32 %add264, %add212
  %add266 = add i32 %add265, %xor262
  %shl267 = shl i32 %add266, 9
  %shr268 = lshr i32 %add266, 23
  %or269 = or i32 %shl267, %shr268
  %add270 = add i32 %or269, %add256
  %xor274 = xor i32 %add270, %add256
  %and275 = and i32 %xor274, %add242
  %xor276 = xor i32 %and275, %add256
  %add278 = add i32 %18, 643717713
  %add279 = add i32 %add278, %add227
  %add280 = add i32 %add279, %xor276
  %shl281 = shl i32 %add280, 14
  %shr282 = lshr i32 %add280, 18
  %or283 = or i32 %shl281, %shr282
  %add284 = add i32 %or283, %add270
  %xor288 = xor i32 %add284, %add270
  %and289 = and i32 %xor288, %add256
  %xor290 = xor i32 %and289, %add270
  %add292 = add i32 %7, -373897302
  %add293 = add i32 %add292, %add242
  %add294 = add i32 %add293, %xor290
  %shl295 = shl i32 %add294, 20
  %shr296 = lshr i32 %add294, 12
  %or297 = or i32 %shl295, %shr296
  %add298 = add i32 %or297, %add284
  %xor302 = xor i32 %add298, %add284
  %and303 = and i32 %xor302, %add270
  %xor304 = xor i32 %and303, %add284
  %add306 = add i32 %12, -701558691
  %add307 = add i32 %add306, %add256
  %add308 = add i32 %add307, %xor304
  %shl309 = shl i32 %add308, 5
  %shr310 = lshr i32 %add308, 27
  %or311 = or i32 %shl309, %shr310
  %add312 = add i32 %or311, %add298
  %xor316 = xor i32 %add312, %add298
  %and317 = and i32 %xor316, %add284
  %xor318 = xor i32 %and317, %add298
  %add320 = add i32 %17, 38016083
  %add321 = add i32 %add320, %add270
  %add322 = add i32 %add321, %xor318
  %shl323 = shl i32 %add322, 9
  %shr324 = lshr i32 %add322, 23
  %or325 = or i32 %shl323, %shr324
  %add326 = add i32 %or325, %add312
  %xor330 = xor i32 %add326, %add312
  %and331 = and i32 %xor330, %add298
  %xor332 = xor i32 %and331, %add312
  %add334 = add i32 %22, -660478335
  %add335 = add i32 %add334, %add284
  %add336 = add i32 %add335, %xor332
  %shl337 = shl i32 %add336, 14
  %shr338 = lshr i32 %add336, 18
  %or339 = or i32 %shl337, %shr338
  %add340 = add i32 %or339, %add326
  %xor344 = xor i32 %add340, %add326
  %and345 = and i32 %xor344, %add312
  %xor346 = xor i32 %and345, %add326
  %add348 = add i32 %11, -405537848
  %add349 = add i32 %add348, %add298
  %add350 = add i32 %add349, %xor346
  %shl351 = shl i32 %add350, 20
  %shr352 = lshr i32 %add350, 12
  %or353 = or i32 %shl351, %shr352
  %add354 = add i32 %or353, %add340
  %xor358 = xor i32 %add354, %add340
  %and359 = and i32 %xor358, %add326
  %xor360 = xor i32 %and359, %add340
  %add362 = add i32 %16, 568446438
  %add363 = add i32 %add362, %add312
  %add364 = add i32 %add363, %xor360
  %shl365 = shl i32 %add364, 5
  %shr366 = lshr i32 %add364, 27
  %or367 = or i32 %shl365, %shr366
  %add368 = add i32 %or367, %add354
  %xor372 = xor i32 %add368, %add354
  %and373 = and i32 %xor372, %add340
  %xor374 = xor i32 %and373, %add354
  %add376 = add i32 %21, -1019803690
  %add377 = add i32 %add376, %add326
  %add378 = add i32 %add377, %xor374
  %shl379 = shl i32 %add378, 9
  %shr380 = lshr i32 %add378, 23
  %or381 = or i32 %shl379, %shr380
  %add382 = add i32 %or381, %add368
  %xor386 = xor i32 %add382, %add368
  %and387 = and i32 %xor386, %add354
  %xor388 = xor i32 %and387, %add368
  %add390 = add i32 %10, -187363961
  %add391 = add i32 %add390, %add340
  %add392 = add i32 %add391, %xor388
  %shl393 = shl i32 %add392, 14
  %shr394 = lshr i32 %add392, 18
  %or395 = or i32 %shl393, %shr394
  %add396 = add i32 %or395, %add382
  %xor400 = xor i32 %add396, %add382
  %and401 = and i32 %xor400, %add368
  %xor402 = xor i32 %and401, %add382
  %add404 = add i32 %15, 1163531501
  %add405 = add i32 %add404, %add354
  %add406 = add i32 %add405, %xor402
  %shl407 = shl i32 %add406, 20
  %shr408 = lshr i32 %add406, 12
  %or409 = or i32 %shl407, %shr408
  %add410 = add i32 %or409, %add396
  %xor414 = xor i32 %add410, %add396
  %and415 = and i32 %xor414, %add382
  %xor416 = xor i32 %and415, %add396
  %add418 = add i32 %20, -1444681467
  %add419 = add i32 %add418, %add368
  %add420 = add i32 %add419, %xor416
  %shl421 = shl i32 %add420, 5
  %shr422 = lshr i32 %add420, 27
  %or423 = or i32 %shl421, %shr422
  %add424 = add i32 %or423, %add410
  %xor428 = xor i32 %add424, %add410
  %and429 = and i32 %xor428, %add396
  %xor430 = xor i32 %and429, %add410
  %add432 = add i32 %9, -51403784
  %add433 = add i32 %add432, %add382
  %add434 = add i32 %add433, %xor430
  %shl435 = shl i32 %add434, 9
  %shr436 = lshr i32 %add434, 23
  %or437 = or i32 %shl435, %shr436
  %add438 = add i32 %or437, %add424
  %xor442 = xor i32 %add438, %add424
  %and443 = and i32 %xor442, %add410
  %xor444 = xor i32 %and443, %add424
  %add446 = add i32 %14, 1735328473
  %add447 = add i32 %add446, %add396
  %add448 = add i32 %add447, %xor444
  %shl449 = shl i32 %add448, 14
  %shr450 = lshr i32 %add448, 18
  %or451 = or i32 %shl449, %shr450
  %add452 = add i32 %or451, %add438
  %xor456 = xor i32 %add452, %add438
  %and457 = and i32 %xor456, %add424
  %xor458 = xor i32 %and457, %add438
  %add460 = add i32 %19, -1926607734
  %add461 = add i32 %add460, %add410
  %add462 = add i32 %add461, %xor458
  %shl463 = shl i32 %add462, 20
  %shr464 = lshr i32 %add462, 12
  %or465 = or i32 %shl463, %shr464
  %add466 = add i32 %or465, %add452
  %xor471 = xor i32 %xor456, %add466
  %add473 = add i32 %12, -378558
  %add474 = add i32 %add473, %add424
  %add475 = add i32 %add474, %xor471
  %shl476 = shl i32 %add475, 4
  %shr477 = lshr i32 %add475, 28
  %or478 = or i32 %shl476, %shr477
  %add479 = add i32 %or478, %add466
  %xor483 = xor i32 %add466, %add452
  %xor484 = xor i32 %xor483, %add479
  %add486 = add i32 %15, -2022574463
  %add487 = add i32 %add486, %add438
  %add488 = add i32 %add487, %xor484
  %shl489 = shl i32 %add488, 11
  %shr490 = lshr i32 %add488, 21
  %or491 = or i32 %shl489, %shr490
  %add492 = add i32 %or491, %add479
  %xor496 = xor i32 %add479, %add466
  %xor497 = xor i32 %xor496, %add492
  %add499 = add i32 %18, 1839030562
  %add500 = add i32 %add499, %add452
  %add501 = add i32 %add500, %xor497
  %shl502 = shl i32 %add501, 16
  %shr503 = lshr i32 %add501, 16
  %or504 = or i32 %shl502, %shr503
  %add505 = add i32 %or504, %add492
  %xor509 = xor i32 %add492, %add479
  %xor510 = xor i32 %xor509, %add505
  %add512 = add i32 %21, -35309556
  %add513 = add i32 %add512, %add466
  %add514 = add i32 %add513, %xor510
  %shl515 = shl i32 %add514, 23
  %shr516 = lshr i32 %add514, 9
  %or517 = or i32 %shl515, %shr516
  %add518 = add i32 %or517, %add505
  %xor522 = xor i32 %add505, %add492
  %xor523 = xor i32 %xor522, %add518
  %add525 = add i32 %8, -1530992060
  %add526 = add i32 %add525, %add479
  %add527 = add i32 %add526, %xor523
  %shl528 = shl i32 %add527, 4
  %shr529 = lshr i32 %add527, 28
  %or530 = or i32 %shl528, %shr529
  %add531 = add i32 %or530, %add518
  %xor535 = xor i32 %add518, %add505
  %xor536 = xor i32 %xor535, %add531
  %add538 = add i32 %11, 1272893353
  %add539 = add i32 %add538, %add492
  %add540 = add i32 %add539, %xor536
  %shl541 = shl i32 %add540, 11
  %shr542 = lshr i32 %add540, 21
  %or543 = or i32 %shl541, %shr542
  %add544 = add i32 %or543, %add531
  %xor548 = xor i32 %add531, %add518
  %xor549 = xor i32 %xor548, %add544
  %add551 = add i32 %14, -155497632
  %add552 = add i32 %add551, %add505
  %add553 = add i32 %add552, %xor549
  %shl554 = shl i32 %add553, 16
  %shr555 = lshr i32 %add553, 16
  %or556 = or i32 %shl554, %shr555
  %add557 = add i32 %or556, %add544
  %xor561 = xor i32 %add544, %add531
  %xor562 = xor i32 %xor561, %add557
  %add564 = add i32 %17, -1094730640
  %add565 = add i32 %add564, %add518
  %add566 = add i32 %add565, %xor562
  %shl567 = shl i32 %add566, 23
  %shr568 = lshr i32 %add566, 9
  %or569 = or i32 %shl567, %shr568
  %add570 = add i32 %or569, %add557
  %xor574 = xor i32 %add557, %add544
  %xor575 = xor i32 %xor574, %add570
  %add577 = add i32 %20, 681279174
  %add578 = add i32 %add577, %add531
  %add579 = add i32 %add578, %xor575
  %shl580 = shl i32 %add579, 4
  %shr581 = lshr i32 %add579, 28
  %or582 = or i32 %shl580, %shr581
  %add583 = add i32 %or582, %add570
  %xor587 = xor i32 %add570, %add557
  %xor588 = xor i32 %xor587, %add583
  %add590 = add i32 %7, -358537222
  %add591 = add i32 %add590, %add544
  %add592 = add i32 %add591, %xor588
  %shl593 = shl i32 %add592, 11
  %shr594 = lshr i32 %add592, 21
  %or595 = or i32 %shl593, %shr594
  %add596 = add i32 %or595, %add583
  %xor600 = xor i32 %add583, %add570
  %xor601 = xor i32 %xor600, %add596
  %add603 = add i32 %10, -722521979
  %add604 = add i32 %add603, %add557
  %add605 = add i32 %add604, %xor601
  %shl606 = shl i32 %add605, 16
  %shr607 = lshr i32 %add605, 16
  %or608 = or i32 %shl606, %shr607
  %add609 = add i32 %or608, %add596
  %xor613 = xor i32 %add596, %add583
  %xor614 = xor i32 %xor613, %add609
  %add616 = add i32 %13, 76029189
  %add617 = add i32 %add616, %add570
  %add618 = add i32 %add617, %xor614
  %shl619 = shl i32 %add618, 23
  %shr620 = lshr i32 %add618, 9
  %or621 = or i32 %shl619, %shr620
  %add622 = add i32 %or621, %add609
  %xor626 = xor i32 %add609, %add596
  %xor627 = xor i32 %xor626, %add622
  %add629 = add i32 %16, -640364487
  %add630 = add i32 %add629, %add583
  %add631 = add i32 %add630, %xor627
  %shl632 = shl i32 %add631, 4
  %shr633 = lshr i32 %add631, 28
  %or634 = or i32 %shl632, %shr633
  %add635 = add i32 %or634, %add622
  %xor639 = xor i32 %add622, %add609
  %xor640 = xor i32 %xor639, %add635
  %add642 = add i32 %19, -421815835
  %add643 = add i32 %add642, %add596
  %add644 = add i32 %add643, %xor640
  %shl645 = shl i32 %add644, 11
  %shr646 = lshr i32 %add644, 21
  %or647 = or i32 %shl645, %shr646
  %add648 = add i32 %or647, %add635
  %xor652 = xor i32 %add635, %add622
  %xor653 = xor i32 %xor652, %add648
  %add655 = add i32 %22, 530742520
  %add656 = add i32 %add655, %add609
  %add657 = add i32 %add656, %xor653
  %shl658 = shl i32 %add657, 16
  %shr659 = lshr i32 %add657, 16
  %or660 = or i32 %shl658, %shr659
  %add661 = add i32 %or660, %add648
  %xor665 = xor i32 %add648, %add635
  %xor666 = xor i32 %xor665, %add661
  %add668 = add i32 %9, -995338651
  %add669 = add i32 %add668, %add622
  %add670 = add i32 %add669, %xor666
  %shl671 = shl i32 %add670, 23
  %shr672 = lshr i32 %add670, 9
  %or673 = or i32 %shl671, %shr672
  %add674 = add i32 %or673, %add661
  %neg = xor i32 %add648, -1
  %or678 = or i32 %add674, %neg
  %xor679 = xor i32 %or678, %add661
  %add681 = add i32 %7, -198630844
  %add682 = add i32 %add681, %add635
  %add683 = add i32 %add682, %xor679
  %shl684 = shl i32 %add683, 6
  %shr685 = lshr i32 %add683, 26
  %or686 = or i32 %shl684, %shr685
  %add687 = add i32 %or686, %add674
  %neg691 = xor i32 %add661, -1
  %or692 = or i32 %add687, %neg691
  %xor693 = xor i32 %or692, %add674
  %add695 = add i32 %14, 1126891415
  %add696 = add i32 %add695, %add648
  %add697 = add i32 %add696, %xor693
  %shl698 = shl i32 %add697, 10
  %shr699 = lshr i32 %add697, 22
  %or700 = or i32 %shl698, %shr699
  %add701 = add i32 %or700, %add687
  %neg705 = xor i32 %add674, -1
  %or706 = or i32 %add701, %neg705
  %xor707 = xor i32 %or706, %add687
  %add709 = add i32 %21, -1416354905
  %add710 = add i32 %add709, %add661
  %add711 = add i32 %add710, %xor707
  %shl712 = shl i32 %add711, 15
  %shr713 = lshr i32 %add711, 17
  %or714 = or i32 %shl712, %shr713
  %add715 = add i32 %or714, %add701
  %neg719 = xor i32 %add687, -1
  %or720 = or i32 %add715, %neg719
  %xor721 = xor i32 %or720, %add701
  %add723 = add i32 %12, -57434055
  %add724 = add i32 %add723, %add674
  %add725 = add i32 %add724, %xor721
  %shl726 = shl i32 %add725, 21
  %shr727 = lshr i32 %add725, 11
  %or728 = or i32 %shl726, %shr727
  %add729 = add i32 %or728, %add715
  %neg733 = xor i32 %add701, -1
  %or734 = or i32 %add729, %neg733
  %xor735 = xor i32 %or734, %add715
  %add737 = add i32 %19, 1700485571
  %add738 = add i32 %add737, %add687
  %add739 = add i32 %add738, %xor735
  %shl740 = shl i32 %add739, 6
  %shr741 = lshr i32 %add739, 26
  %or742 = or i32 %shl740, %shr741
  %add743 = add i32 %or742, %add729
  %neg747 = xor i32 %add715, -1
  %or748 = or i32 %add743, %neg747
  %xor749 = xor i32 %or748, %add729
  %add751 = add i32 %10, -1894986606
  %add752 = add i32 %add751, %add701
  %add753 = add i32 %add752, %xor749
  %shl754 = shl i32 %add753, 10
  %shr755 = lshr i32 %add753, 22
  %or756 = or i32 %shl754, %shr755
  %add757 = add i32 %or756, %add743
  %neg761 = xor i32 %add729, -1
  %or762 = or i32 %add757, %neg761
  %xor763 = xor i32 %or762, %add743
  %add765 = add i32 %17, -1051523
  %add766 = add i32 %add765, %add715
  %add767 = add i32 %add766, %xor763
  %shl768 = shl i32 %add767, 15
  %shr769 = lshr i32 %add767, 17
  %or770 = or i32 %shl768, %shr769
  %add771 = add i32 %or770, %add757
  %neg775 = xor i32 %add743, -1
  %or776 = or i32 %add771, %neg775
  %xor777 = xor i32 %or776, %add757
  %add779 = add i32 %8, -2054922799
  %add780 = add i32 %add779, %add729
  %add781 = add i32 %add780, %xor777
  %shl782 = shl i32 %add781, 21
  %shr783 = lshr i32 %add781, 11
  %or784 = or i32 %shl782, %shr783
  %add785 = add i32 %or784, %add771
  %neg789 = xor i32 %add757, -1
  %or790 = or i32 %add785, %neg789
  %xor791 = xor i32 %or790, %add771
  %add793 = add i32 %15, 1873313359
  %add794 = add i32 %add793, %add743
  %add795 = add i32 %add794, %xor791
  %shl796 = shl i32 %add795, 6
  %shr797 = lshr i32 %add795, 26
  %or798 = or i32 %shl796, %shr797
  %add799 = add i32 %or798, %add785
  %neg803 = xor i32 %add771, -1
  %or804 = or i32 %add799, %neg803
  %xor805 = xor i32 %or804, %add785
  %add807 = add i32 %22, -30611744
  %add808 = add i32 %add807, %add757
  %add809 = add i32 %add808, %xor805
  %shl810 = shl i32 %add809, 10
  %shr811 = lshr i32 %add809, 22
  %or812 = or i32 %shl810, %shr811
  %add813 = add i32 %or812, %add799
  %neg817 = xor i32 %add785, -1
  %or818 = or i32 %add813, %neg817
  %xor819 = xor i32 %or818, %add799
  %add821 = add i32 %13, -1560198380
  %add822 = add i32 %add821, %add771
  %add823 = add i32 %add822, %xor819
  %shl824 = shl i32 %add823, 15
  %shr825 = lshr i32 %add823, 17
  %or826 = or i32 %shl824, %shr825
  %add827 = add i32 %or826, %add813
  %neg831 = xor i32 %add799, -1
  %or832 = or i32 %add827, %neg831
  %xor833 = xor i32 %or832, %add813
  %add835 = add i32 %20, 1309151649
  %add836 = add i32 %add835, %add785
  %add837 = add i32 %add836, %xor833
  %shl838 = shl i32 %add837, 21
  %shr839 = lshr i32 %add837, 11
  %or840 = or i32 %shl838, %shr839
  %add841 = add i32 %or840, %add827
  %neg845 = xor i32 %add813, -1
  %or846 = or i32 %add841, %neg845
  %xor847 = xor i32 %or846, %add827
  %add849 = add i32 %11, -145523070
  %add850 = add i32 %add849, %add799
  %add851 = add i32 %add850, %xor847
  %shl852 = shl i32 %add851, 6
  %shr853 = lshr i32 %add851, 26
  %or854 = or i32 %shl852, %shr853
  %add855 = add i32 %or854, %add841
  %neg859 = xor i32 %add827, -1
  %or860 = or i32 %add855, %neg859
  %xor861 = xor i32 %or860, %add841
  %add863 = add i32 %18, -1120210379
  %add864 = add i32 %add863, %add813
  %add865 = add i32 %add864, %xor861
  %shl866 = shl i32 %add865, 10
  %shr867 = lshr i32 %add865, 22
  %or868 = or i32 %shl866, %shr867
  %add869 = add i32 %or868, %add855
  %neg873 = xor i32 %add841, -1
  %or874 = or i32 %add869, %neg873
  %xor875 = xor i32 %or874, %add855
  %add877 = add i32 %9, 718787259
  %add878 = add i32 %add877, %add827
  %add879 = add i32 %add878, %xor875
  %shl880 = shl i32 %add879, 15
  %shr881 = lshr i32 %add879, 17
  %or882 = or i32 %shl880, %shr881
  %add883 = add i32 %or882, %add869
  %neg887 = xor i32 %add855, -1
  %or888 = or i32 %add883, %neg887
  %xor889 = xor i32 %or888, %add869
  %add891 = add i32 %16, -343485551
  %add892 = add i32 %add891, %add841
  %add893 = add i32 %add892, %xor889
  %shl894 = shl i32 %add893, 21
  %shr895 = lshr i32 %add893, 11
  %or896 = or i32 %shl894, %shr895
  %add900 = add i32 %add855, %A.01572
  %add897 = add i32 %add883, %B.01571
  %add901 = add i32 %add897, %or896
  %add902 = add i32 %add883, %C.01570
  %add903 = add i32 %add869, %D.01569
  %cmp12 = icmp ult i32* %incdec.ptr238, %add.ptr
  br i1 %cmp12, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %A.0.lcssa = phi i32 [ %1, %while.cond.preheader ], [ %add900, %while.body ]
  %B.0.lcssa = phi i32 [ %2, %while.cond.preheader ], [ %add901, %while.body ]
  %C.0.lcssa = phi i32 [ %3, %while.cond.preheader ], [ %add902, %while.body ]
  %D.0.lcssa = phi i32 [ %4, %while.cond.preheader ], [ %add903, %while.body ]
  store i32 %A.0.lcssa, i32* %A1, align 4, !tbaa !0
  store i32 %B.0.lcssa, i32* %B2, align 4, !tbaa !0
  store i32 %C.0.lcssa, i32* %C3, align 4, !tbaa !0
  store i32 %D.0.lcssa, i32* %D4, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @md5_stream(%struct._IO_FILE* nocapture %stream, i8* %resblock) #0 {
entry:
  %ctx = alloca %struct.md5_ctx, align 4
  %buffer = alloca [4168 x i8], align 16
  %0 = bitcast %struct.md5_ctx* %ctx to i8*
  call void @llvm.lifetime.start(i64 156, i8* %0) #1
  %1 = getelementptr inbounds [4168 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4168, i8* %1) #1
  %A.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 0
  store i32 1732584193, i32* %A.i, align 4, !tbaa !0
  %B.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 1
  store i32 -271733879, i32* %B.i, align 4, !tbaa !0
  %C.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 2
  store i32 -1732584194, i32* %C.i, align 4, !tbaa !0
  %D.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 3
  store i32 271733878, i32* %D.i, align 4, !tbaa !0
  %arrayidx.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 1
  store i32 0, i32* %arrayidx.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 0
  store i32 0, i32* %arrayidx2.i, align 4, !tbaa !0
  %buflen.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 5
  store i32 0, i32* %buflen.i, align 4, !tbaa !0
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end6, %entry
  %sum.0 = phi i64 [ 0, %entry ], [ 0, %if.end6 ], [ %add, %do.body ]
  %add.ptr = getelementptr inbounds [4168 x i8]* %buffer, i64 0, i64 %sum.0
  %sub = sub i64 4096, %sum.0
  %call = call i64 @fread(i8* %add.ptr, i64 1, i64 %sub, %struct._IO_FILE* %stream) #6
  %add = add i64 %call, %sum.0
  %cmp = icmp ugt i64 %add, 4095
  %cmp1 = icmp eq i64 %call, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  br i1 %cmp1, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %do.end
  %call3 = call i32 @ferror(%struct._IO_FILE* %stream) #6
  %tobool = icmp eq i32 %call3, 0
  br i1 %tobool, label %while.end, label %cleanup

if.end6:                                          ; preds = %do.end
  call void @md5_process_block(i8* %1, i64 4096, %struct.md5_ctx* %ctx) #5
  br label %do.body

while.end:                                        ; preds = %land.lhs.true
  %cmp8 = icmp eq i64 %add, 0
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %while.end
  call void @md5_process_bytes(i8* %1, i64 %add, %struct.md5_ctx* %ctx) #5
  br label %if.end11

if.end11:                                         ; preds = %while.end, %if.then9
  %call12 = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %resblock) #5
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %if.end11
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 1, %land.lhs.true ]
  call void @llvm.lifetime.end(i64 4168, i8* %1) #1
  call void @llvm.lifetime.end(i64 156, i8* %0) #1
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @md5_process_bytes(i8* %buffer, i64 %len, %struct.md5_ctx* %ctx) #0 {
entry:
  %buflen = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 5
  %0 = load i32* %buflen, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end28, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i32 %0 to i64
  %sub = sub i64 128, %conv
  %cmp2 = icmp ugt i64 %sub, %len
  %len.sub = select i1 %cmp2, i64 %len, i64 %sub
  %arrayidx = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 6, i64 %conv
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %buffer, i64 %len.sub, i32 1, i1 false)
  %1 = load i32* %buflen, align 4, !tbaa !0
  %conv7 = zext i32 %1 to i64
  %add8 = add i64 %conv7, %len.sub
  %conv9 = trunc i64 %add8 to i32
  store i32 %conv9, i32* %buflen, align 4, !tbaa !0
  %add10 = add i64 %len.sub, %conv
  %cmp11 = icmp ugt i64 %add10, 64
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %if.then
  %arraydecay = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 6, i64 0
  %and = and i64 %add10, -64
  tail call void @md5_process_block(i8* %arraydecay, i64 %and, %struct.md5_ctx* %ctx) #5
  %arrayidx20 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 6, i64 %and
  %and22 = and i64 %add10, 63
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %arrayidx20, i64 %and22, i32 1, i1 false)
  %conv25 = trunc i64 %and22 to i32
  store i32 %conv25, i32* %buflen, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then
  %add.ptr = getelementptr inbounds i8* %buffer, i64 %len.sub
  %sub27 = sub i64 %len, %len.sub
  br label %if.end28

if.end28:                                         ; preds = %entry, %if.end
  %len.addr.0 = phi i64 [ %sub27, %if.end ], [ %len, %entry ]
  %buffer.addr.0 = phi i8* [ %add.ptr, %if.end ], [ %buffer, %entry ]
  %cmp29 = icmp ugt i64 %len.addr.0, 64
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end28
  %and32 = and i64 %len.addr.0, -64
  tail call void @md5_process_block(i8* %buffer.addr.0, i64 %and32, %struct.md5_ctx* %ctx) #5
  %add.ptr34 = getelementptr inbounds i8* %buffer.addr.0, i64 %and32
  %and35 = and i64 %len.addr.0, 63
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end28
  %len.addr.1 = phi i64 [ %and35, %if.then31 ], [ %len.addr.0, %if.end28 ]
  %buffer.addr.1 = phi i8* [ %add.ptr34, %if.then31 ], [ %buffer.addr.0, %if.end28 ]
  %cmp37 = icmp eq i64 %len.addr.1, 0
  br i1 %cmp37, label %if.end43, label %if.then39

if.then39:                                        ; preds = %if.end36
  %2 = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 6, i64 0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %buffer.addr.1, i64 %len.addr.1, i32 1, i1 false)
  %conv41 = trunc i64 %len.addr.1 to i32
  store i32 %conv41, i32* %buflen, align 4, !tbaa !0
  br label %if.end43

if.end43:                                         ; preds = %if.end36, %if.then39
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i8* @md5_buffer(i8* %buffer, i64 %len, i8* %resblock) #0 {
entry:
  %ctx = alloca %struct.md5_ctx, align 4
  %0 = bitcast %struct.md5_ctx* %ctx to i8*
  call void @llvm.lifetime.start(i64 156, i8* %0) #1
  %A.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 0
  store i32 1732584193, i32* %A.i, align 4, !tbaa !0
  %B.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 1
  store i32 -271733879, i32* %B.i, align 4, !tbaa !0
  %C.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 2
  store i32 -1732584194, i32* %C.i, align 4, !tbaa !0
  %D.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 3
  store i32 271733878, i32* %D.i, align 4, !tbaa !0
  %arrayidx.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 1
  store i32 0, i32* %arrayidx.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 4, i64 0
  store i32 0, i32* %arrayidx2.i, align 4, !tbaa !0
  %buflen.i = getelementptr inbounds %struct.md5_ctx* %ctx, i64 0, i32 5
  store i32 0, i32* %buflen.i, align 4, !tbaa !0
  call void @md5_process_bytes(i8* %buffer, i64 %len, %struct.md5_ctx* %ctx) #5
  %call = call i8* @md5_finish_ctx(%struct.md5_ctx* %ctx, i8* %resblock) #5
  call void @llvm.lifetime.end(i64 156, i8* %0) #1
  ret i8* %call
}

; Function Attrs: nounwind readnone
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
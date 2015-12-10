; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { float }
%union.anon.0 = type { float }

; Function Attrs: nounwind optsize readnone uwtable
define i32 @gmx_nint(float %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %a}, i64 0, metadata !12), !dbg !137
  tail call void @llvm.dbg.value(metadata !138, i64 0, metadata !13), !dbg !139
  %cmp = fcmp olt float %a, 0.000000e+00, !dbg !140
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !140

cond.true:                                        ; preds = %entry
  %sub = fadd float %a, -5.000000e-01, !dbg !140
  br label %cond.end, !dbg !140

cond.false:                                       ; preds = %entry
  %add = fadd float %a, 5.000000e-01, !dbg !140
  br label %cond.end, !dbg !140

cond.end:                                         ; preds = %cond.false, %cond.true
  %sub.sink = phi float [ %sub, %cond.true ], [ %add, %cond.false ]
  %conv2 = fptosi float %sub.sink to i32, !dbg !140
  tail call void @llvm.dbg.value(metadata !{i32 %conv2}, i64 0, metadata !15), !dbg !140
  ret i32 %conv2, !dbg !141
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize readnone uwtable
define float @sign(float %x, float %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !20), !dbg !142
  tail call void @llvm.dbg.value(metadata !{float %y}, i64 0, metadata !21), !dbg !142
  %cmp = fcmp olt float %y, 0.000000e+00, !dbg !143
  %fabsf = tail call float @fabsf(float %x) #4, !dbg !144
  br i1 %cmp, label %if.then, label %return, !dbg !143

if.then:                                          ; preds = %entry
  %conv1 = fsub float -0.000000e+00, %fabsf, !dbg !144
  br label %return, !dbg !144

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi float [ %conv1, %if.then ], [ %fabsf, %entry ]
  ret float %retval.0, !dbg !145
}

; Function Attrs: nounwind optsize uwtable
define float @gmx_erf(float %x) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !26), !dbg !146
  tail call void @llvm.dbg.declare(metadata !147, metadata !39), !dbg !148
  %0 = bitcast float %x to i32, !dbg !149
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !27), !dbg !150
  %and = and i32 %0, 2147483647, !dbg !151
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !29), !dbg !151
  %cmp = icmp ugt i32 %and, 2139095039, !dbg !152
  br i1 %cmp, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %entry
  %shr = lshr i32 %0, 31, !dbg !153
  %shl = shl nuw nsw i32 %shr, 1, !dbg !153
  tail call void @llvm.dbg.value(metadata !{i32 %shl}, i64 0, metadata !30), !dbg !153
  %sub = sub nsw i32 1, %shl, !dbg !155
  %conv3 = sitofp i32 %sub to float, !dbg !155
  %div = fdiv float 1.000000e+00, %x, !dbg !155
  %add = fadd float %conv3, %div, !dbg !155
  br label %return, !dbg !155

if.end:                                           ; preds = %entry
  %cmp4 = icmp ult i32 %and, 1062731776, !dbg !156
  br i1 %cmp4, label %if.then6, label %if.end42, !dbg !156

if.then6:                                         ; preds = %if.end
  %cmp7 = icmp ult i32 %and, 830472192, !dbg !157
  br i1 %cmp7, label %if.then9, label %if.end19, !dbg !157

if.then9:                                         ; preds = %if.then6
  %cmp10 = icmp ult i32 %and, 67108864, !dbg !159
  br i1 %cmp10, label %if.then12, label %if.end16, !dbg !159

if.then12:                                        ; preds = %if.then9
  %mul = fmul float %x, 8.000000e+00, !dbg !161
  %mul13 = fmul float %x, 0x3FF06EBA80000000, !dbg !161
  %add14 = fadd float %mul, %mul13, !dbg !161
  %mul15 = fmul float %add14, 1.250000e-01, !dbg !161
  br label %return, !dbg !161

if.end16:                                         ; preds = %if.then9
  %mul17 = fmul float %x, 0x3FC06EBA80000000, !dbg !162
  %add18 = fadd float %mul17, %x, !dbg !162
  br label %return, !dbg !162

if.end19:                                         ; preds = %if.then6
  %mul20 = fmul float %x, %x, !dbg !163
  tail call void @llvm.dbg.value(metadata !{float %mul20}, i64 0, metadata !37), !dbg !163
  %mul21 = fmul float %mul20, 0xBEF8EAD620000000, !dbg !164
  %add22 = fadd float %mul21, 0xBF77A29120000000, !dbg !164
  %mul23 = fmul float %mul20, %add22, !dbg !164
  %add24 = fadd float %mul23, 0xBF9D2A51E0000000, !dbg !164
  %mul25 = fmul float %mul20, %add24, !dbg !164
  %add26 = fadd float %mul25, 0xBFD4CD7D60000000, !dbg !164
  %mul27 = fmul float %mul20, %add26, !dbg !164
  %add28 = fadd float %mul27, 0x3FC06EBA80000000, !dbg !164
  tail call void @llvm.dbg.value(metadata !{float %add28}, i64 0, metadata !38), !dbg !164
  %mul29 = fmul float %mul20, 0xBED09C4340000000, !dbg !165
  %add30 = fadd float %mul29, 0x3F215DC920000000, !dbg !165
  %mul31 = fmul float %mul20, %add30, !dbg !165
  %add32 = fadd float %mul31, 0x3F74D022C0000000, !dbg !165
  %mul33 = fmul float %mul20, %add32, !dbg !165
  %add34 = fadd float %mul33, 0x3FB0A54C60000000, !dbg !165
  %mul35 = fmul float %mul20, %add34, !dbg !165
  %add36 = fadd float %mul35, 0x3FD97779C0000000, !dbg !165
  %mul37 = fmul float %mul20, %add36, !dbg !165
  %add38 = fadd float %mul37, 1.000000e+00, !dbg !165
  tail call void @llvm.dbg.value(metadata !{float %add38}, i64 0, metadata !35), !dbg !165
  %div39 = fdiv float %add28, %add38, !dbg !166
  tail call void @llvm.dbg.value(metadata !{float %div39}, i64 0, metadata !36), !dbg !166
  %mul40 = fmul float %div39, %x, !dbg !167
  %add41 = fadd float %mul40, %x, !dbg !167
  br label %return, !dbg !167

if.end42:                                         ; preds = %if.end
  %cmp43 = icmp ult i32 %and, 1067450368, !dbg !168
  br i1 %cmp43, label %if.then45, label %if.end80, !dbg !168

if.then45:                                        ; preds = %if.end42
  %fabsf256 = tail call float @fabsf(float %x) #4, !dbg !169
  %conv48 = fadd float %fabsf256, -1.000000e+00, !dbg !169
  tail call void @llvm.dbg.value(metadata !{float %conv48}, i64 0, metadata !35), !dbg !169
  %mul49 = fmul float %conv48, 0xBF61BF3800000000, !dbg !171
  %add50 = fadd float %mul49, 0x3FA22A3660000000, !dbg !171
  %mul51 = fmul float %conv48, %add50, !dbg !171
  %add52 = fadd float %mul51, 0xBFBC639840000000, !dbg !171
  %mul53 = fmul float %conv48, %add52, !dbg !171
  %add54 = fadd float %mul53, 0x3FD45FCA80000000, !dbg !171
  %mul55 = fmul float %conv48, %add54, !dbg !171
  %add56 = fadd float %mul55, 0xBFD7D24100000000, !dbg !171
  %mul57 = fmul float %conv48, %add56, !dbg !171
  %add58 = fadd float %mul57, 0x3FDA8D00A0000000, !dbg !171
  %mul59 = fmul float %conv48, %add58, !dbg !171
  %add60 = fadd float %mul59, 0xBF6359B8C0000000, !dbg !171
  tail call void @llvm.dbg.value(metadata !{float %add60}, i64 0, metadata !33), !dbg !171
  %mul61 = fmul float %conv48, 0x3F888B5460000000, !dbg !172
  %add62 = fadd float %mul61, 0x3F8BEDC260000000, !dbg !172
  %mul63 = fmul float %conv48, %add62, !dbg !172
  %add64 = fadd float %mul63, 0x3FC02660E0000000, !dbg !172
  %mul65 = fmul float %conv48, %add64, !dbg !172
  %add66 = fadd float %mul65, 0x3FB2635CE0000000, !dbg !172
  %mul67 = fmul float %conv48, %add66, !dbg !172
  %add68 = fadd float %mul67, 0x3FE14AF0A0000000, !dbg !172
  %mul69 = fmul float %conv48, %add68, !dbg !172
  %add70 = fadd float %mul69, 0x3FBB3E6620000000, !dbg !172
  %mul71 = fmul float %conv48, %add70, !dbg !172
  %add72 = fadd float %mul71, 1.000000e+00, !dbg !172
  tail call void @llvm.dbg.value(metadata !{float %add72}, i64 0, metadata !34), !dbg !172
  %cmp73 = icmp sgt i32 %0, -1, !dbg !173
  %div76 = fdiv float %add60, %add72, !dbg !173
  br i1 %cmp73, label %if.then75, label %if.else, !dbg !173

if.then75:                                        ; preds = %if.then45
  %add77 = fadd float %div76, 0x3FEB0AC160000000, !dbg !173
  br label %return, !dbg !173

if.else:                                          ; preds = %if.then45
  %sub79 = fsub float 0xBFEB0AC160000000, %div76, !dbg !173
  br label %return, !dbg !173

if.end80:                                         ; preds = %if.end42
  %cmp81 = icmp ugt i32 %and, 1086324735, !dbg !174
  br i1 %cmp81, label %if.then83, label %if.end88, !dbg !174

if.then83:                                        ; preds = %if.end80
  %cmp84 = icmp sgt i32 %0, -1, !dbg !175
  %. = select i1 %cmp84, float 1.000000e+00, float -1.000000e+00, !dbg !175
  br label %return, !dbg !175

if.end88:                                         ; preds = %if.end80
  %fabsf = tail call float @fabsf(float %x) #4, !dbg !177
  tail call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !26), !dbg !177
  %mul92 = fmul float %fabsf, %fabsf, !dbg !178
  %div93 = fdiv float 1.000000e+00, %mul92, !dbg !178
  tail call void @llvm.dbg.value(metadata !{float %div93}, i64 0, metadata !35), !dbg !178
  %cmp94 = icmp ult i32 %and, 1077336942, !dbg !179
  br i1 %cmp94, label %if.then96, label %if.else127, !dbg !179

if.then96:                                        ; preds = %if.end88
  %mul97 = fmul float %div93, 0xC023A0EFC0000000, !dbg !180
  %add98 = fadd float %mul97, 0xC054526560000000, !dbg !180
  %mul99 = fmul float %div93, %add98, !dbg !180
  %add100 = fadd float %mul99, 0xC067135CE0000000, !dbg !180
  %mul101 = fmul float %div93, %add100, !dbg !180
  %add102 = fadd float %mul101, 0xC0644CB180000000, !dbg !180
  %mul103 = fmul float %div93, %add102, !dbg !180
  %add104 = fadd float %mul103, 0xC04F300AE0000000, !dbg !180
  %mul105 = fmul float %div93, %add104, !dbg !180
  %add106 = fadd float %mul105, 0xC0251E0440000000, !dbg !180
  %mul107 = fmul float %div93, %add106, !dbg !180
  %add108 = fadd float %mul107, 0xBFE63416E0000000, !dbg !180
  %mul109 = fmul float %div93, %add108, !dbg !180
  %add110 = fadd float %mul109, 0xBF84341260000000, !dbg !180
  tail call void @llvm.dbg.value(metadata !{float %add110}, i64 0, metadata !31), !dbg !180
  %mul111 = fmul float %div93, 0xBFAEEFF2E0000000, !dbg !182
  %add112 = fadd float %mul111, 0x401A47EF80000000, !dbg !182
  %mul113 = fmul float %div93, %add112, !dbg !182
  %add114 = fadd float %mul113, 0x405B28A3E0000000, !dbg !182
  %mul115 = fmul float %div93, %add114, !dbg !182
  %add116 = fadd float %mul115, 0x407AD02160000000, !dbg !182
  %mul117 = fmul float %div93, %add116, !dbg !182
  %add118 = fadd float %mul117, 0x40842B1920000000, !dbg !182
  %mul119 = fmul float %div93, %add118, !dbg !182
  %add120 = fadd float %mul119, 0x407B290DE0000000, !dbg !182
  %mul121 = fmul float %div93, %add120, !dbg !182
  %add122 = fadd float %mul121, 0x4061350C60000000, !dbg !182
  %mul123 = fmul float %div93, %add122, !dbg !182
  %add124 = fadd float %mul123, 0x4033A6B9C0000000, !dbg !182
  br label %if.end154, !dbg !183

if.else127:                                       ; preds = %if.end88
  %mul128 = fmul float %div93, 0xC07E384EA0000000, !dbg !184
  %add129 = fadd float %mul128, 0xC090046160000000, !dbg !184
  %mul130 = fmul float %div93, %add129, !dbg !184
  %add131 = fadd float %mul130, 0xC083EC8820000000, !dbg !184
  %mul132 = fmul float %div93, %add131, !dbg !184
  %add133 = fadd float %mul132, 0xC064145D40000000, !dbg !184
  %mul134 = fmul float %div93, %add133, !dbg !184
  %add135 = fadd float %mul134, 0xC031C20960000000, !dbg !184
  %mul136 = fmul float %div93, %add135, !dbg !184
  %add137 = fadd float %mul136, 0xBFE993BA80000000, !dbg !184
  %mul138 = fmul float %div93, %add137, !dbg !184
  %add139 = fadd float %mul138, 0xBF84341240000000, !dbg !184
  tail call void @llvm.dbg.value(metadata !{float %add139}, i64 0, metadata !31), !dbg !184
  %mul140 = fmul float %div93, 0xC03670E240000000, !dbg !186
  %add141 = fadd float %mul140, 0x407DA874E0000000, !dbg !186
  %mul142 = fmul float %div93, %add141, !dbg !186
  %add143 = fadd float %mul142, 0x40A3F219C0000000, !dbg !186
  %mul144 = fmul float %div93, %add143, !dbg !186
  %add145 = fadd float %mul144, 0x40A8FFB760000000, !dbg !186
  %mul146 = fmul float %div93, %add145, !dbg !186
  %add147 = fadd float %mul146, 0x409802EB20000000, !dbg !186
  %mul148 = fmul float %div93, %add147, !dbg !186
  %add149 = fadd float %mul148, 0x40745CAE20000000, !dbg !186
  %mul150 = fmul float %div93, %add149, !dbg !186
  %add151 = fadd float %mul150, 0x403E568B20000000, !dbg !186
  br label %if.end154

if.end154:                                        ; preds = %if.else127, %if.then96
  %add124.pn = phi float [ %add124, %if.then96 ], [ %add151, %if.else127 ]
  %R.0 = phi float [ %add110, %if.then96 ], [ %add139, %if.else127 ]
  %S.0.in = fmul float %div93, %add124.pn, !dbg !182
  %S.0 = fadd float %S.0.in, 1.000000e+00, !dbg !182
  %1 = bitcast float %fabsf to i32, !dbg !187
  %and157 = and i32 %1, -4096, !dbg !188
  %2 = bitcast i32 %and157 to float, !dbg !189
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !37), !dbg !189
  %3 = fmul float %2, %2, !dbg !190
  %sub162 = fsub float -5.625000e-01, %3, !dbg !190
  %conv163 = fpext float %sub162 to double, !dbg !190
  %call164 = tail call double @exp(double %conv163) #5, !dbg !190
  %sub165 = fsub float %2, %fabsf, !dbg !190
  %add166 = fadd float %fabsf, %2, !dbg !190
  %mul167 = fmul float %sub165, %add166, !dbg !190
  %div168 = fdiv float %R.0, %S.0, !dbg !190
  %add169 = fadd float %mul167, %div168, !dbg !190
  %conv170 = fpext float %add169 to double, !dbg !190
  %call171 = tail call double @exp(double %conv170) #5, !dbg !190
  %mul172 = fmul double %call164, %call171, !dbg !190
  %conv173 = fptrunc double %mul172 to float, !dbg !190
  tail call void @llvm.dbg.value(metadata !{float %conv173}, i64 0, metadata !38), !dbg !190
  %cmp174 = icmp sgt i32 %0, -1, !dbg !191
  %div177 = fdiv float %conv173, %fabsf, !dbg !191
  br i1 %cmp174, label %if.then176, label %if.else179, !dbg !191

if.then176:                                       ; preds = %if.end154
  %sub178 = fsub float 1.000000e+00, %div177, !dbg !191
  br label %return, !dbg !191

if.else179:                                       ; preds = %if.end154
  %sub181 = fadd float %div177, -1.000000e+00, !dbg !191
  br label %return, !dbg !191

return:                                           ; preds = %if.then83, %if.else179, %if.then176, %if.else, %if.then75, %if.end19, %if.end16, %if.then12, %if.then
  %retval.0 = phi float [ %add, %if.then ], [ %mul15, %if.then12 ], [ %add18, %if.end16 ], [ %add41, %if.end19 ], [ %add77, %if.then75 ], [ %sub79, %if.else ], [ %sub178, %if.then176 ], [ %sub181, %if.else179 ], [ %., %if.then83 ]
  ret float %retval.0, !dbg !192
}

; Function Attrs: nounwind optsize
declare double @exp(double) #3

; Function Attrs: nounwind optsize uwtable
define float @gmx_erfc(float %x) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !46), !dbg !193
  tail call void @llvm.dbg.declare(metadata !194, metadata !57), !dbg !195
  %0 = bitcast float %x to i32, !dbg !196
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !47), !dbg !197
  %and = and i32 %0, 2147483647, !dbg !198
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !48), !dbg !198
  %cmp = icmp ugt i32 %and, 2139095039, !dbg !199
  br i1 %cmp, label %if.then, label %if.end, !dbg !199

if.then:                                          ; preds = %entry
  %shr = lshr i32 %0, 31, !dbg !200
  %shl = shl nuw nsw i32 %shr, 1, !dbg !200
  %conv2 = uitofp i32 %shl to float, !dbg !200
  %div = fdiv float 1.000000e+00, %x, !dbg !200
  %add = fadd float %conv2, %div, !dbg !200
  br label %return, !dbg !200

if.end:                                           ; preds = %entry
  %cmp3 = icmp ult i32 %and, 1062731776, !dbg !202
  br i1 %cmp3, label %if.then5, label %if.end39, !dbg !202

if.then5:                                         ; preds = %if.end
  %cmp6 = icmp ult i32 %and, 595591168, !dbg !203
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !203

if.then8:                                         ; preds = %if.then5
  %sub = fsub float 1.000000e+00, %x, !dbg !205
  br label %return, !dbg !205

if.end9:                                          ; preds = %if.then5
  %mul = fmul float %x, %x, !dbg !206
  tail call void @llvm.dbg.value(metadata !{float %mul}, i64 0, metadata !55), !dbg !206
  %mul10 = fmul float %mul, 0xBEF8EAD620000000, !dbg !207
  %add11 = fadd float %mul10, 0xBF77A29120000000, !dbg !207
  %mul12 = fmul float %mul, %add11, !dbg !207
  %add13 = fadd float %mul12, 0xBF9D2A51E0000000, !dbg !207
  %mul14 = fmul float %mul, %add13, !dbg !207
  %add15 = fadd float %mul14, 0xBFD4CD7D60000000, !dbg !207
  %mul16 = fmul float %mul, %add15, !dbg !207
  %add17 = fadd float %mul16, 0x3FC06EBA80000000, !dbg !207
  tail call void @llvm.dbg.value(metadata !{float %add17}, i64 0, metadata !56), !dbg !207
  %mul18 = fmul float %mul, 0xBED09C4340000000, !dbg !208
  %add19 = fadd float %mul18, 0x3F215DC920000000, !dbg !208
  %mul20 = fmul float %mul, %add19, !dbg !208
  %add21 = fadd float %mul20, 0x3F74D022C0000000, !dbg !208
  %mul22 = fmul float %mul, %add21, !dbg !208
  %add23 = fadd float %mul22, 0x3FB0A54C60000000, !dbg !208
  %mul24 = fmul float %mul, %add23, !dbg !208
  %add25 = fadd float %mul24, 0x3FD97779C0000000, !dbg !208
  %mul26 = fmul float %mul, %add25, !dbg !208
  %add27 = fadd float %mul26, 1.000000e+00, !dbg !208
  tail call void @llvm.dbg.value(metadata !{float %add27}, i64 0, metadata !53), !dbg !208
  %div28 = fdiv float %add17, %add27, !dbg !209
  tail call void @llvm.dbg.value(metadata !{float %div28}, i64 0, metadata !54), !dbg !209
  %cmp29 = icmp slt i32 %0, 1048576000, !dbg !210
  %mul32 = fmul float %div28, %x, !dbg !211
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !210

if.then31:                                        ; preds = %if.end9
  %add33 = fadd float %mul32, %x, !dbg !211
  %sub34 = fsub float 1.000000e+00, %add33, !dbg !211
  br label %return, !dbg !211

if.else:                                          ; preds = %if.end9
  tail call void @llvm.dbg.value(metadata !{float %mul32}, i64 0, metadata !56), !dbg !213
  %sub36 = fadd float %x, -5.000000e-01, !dbg !215
  %add37 = fadd float %sub36, %mul32, !dbg !215
  tail call void @llvm.dbg.value(metadata !{float %add37}, i64 0, metadata !56), !dbg !215
  %sub38 = fsub float 5.000000e-01, %add37, !dbg !216
  br label %return, !dbg !216

if.end39:                                         ; preds = %if.end
  %cmp40 = icmp ult i32 %and, 1067450368, !dbg !217
  br i1 %cmp40, label %if.then42, label %if.end79, !dbg !217

if.then42:                                        ; preds = %if.end39
  %fabsf273 = tail call float @fabsf(float %x) #4, !dbg !218
  %conv45 = fadd float %fabsf273, -1.000000e+00, !dbg !218
  tail call void @llvm.dbg.value(metadata !{float %conv45}, i64 0, metadata !53), !dbg !218
  %mul46 = fmul float %conv45, 0xBF61BF3800000000, !dbg !220
  %add47 = fadd float %mul46, 0x3FA22A3660000000, !dbg !220
  %mul48 = fmul float %conv45, %add47, !dbg !220
  %add49 = fadd float %mul48, 0xBFBC639840000000, !dbg !220
  %mul50 = fmul float %conv45, %add49, !dbg !220
  %add51 = fadd float %mul50, 0x3FD45FCA80000000, !dbg !220
  %mul52 = fmul float %conv45, %add51, !dbg !220
  %add53 = fadd float %mul52, 0xBFD7D24100000000, !dbg !220
  %mul54 = fmul float %conv45, %add53, !dbg !220
  %add55 = fadd float %mul54, 0x3FDA8D00A0000000, !dbg !220
  %mul56 = fmul float %conv45, %add55, !dbg !220
  %add57 = fadd float %mul56, 0xBF6359B8C0000000, !dbg !220
  tail call void @llvm.dbg.value(metadata !{float %add57}, i64 0, metadata !51), !dbg !220
  %mul58 = fmul float %conv45, 0x3F888B5460000000, !dbg !221
  %add59 = fadd float %mul58, 0x3F8BEDC260000000, !dbg !221
  %mul60 = fmul float %conv45, %add59, !dbg !221
  %add61 = fadd float %mul60, 0x3FC02660E0000000, !dbg !221
  %mul62 = fmul float %conv45, %add61, !dbg !221
  %add63 = fadd float %mul62, 0x3FB2635CE0000000, !dbg !221
  %mul64 = fmul float %conv45, %add63, !dbg !221
  %add65 = fadd float %mul64, 0x3FE14AF0A0000000, !dbg !221
  %mul66 = fmul float %conv45, %add65, !dbg !221
  %add67 = fadd float %mul66, 0x3FBB3E6620000000, !dbg !221
  %mul68 = fmul float %conv45, %add67, !dbg !221
  %add69 = fadd float %mul68, 1.000000e+00, !dbg !221
  tail call void @llvm.dbg.value(metadata !{float %add69}, i64 0, metadata !52), !dbg !221
  %cmp70 = icmp sgt i32 %0, -1, !dbg !222
  %div73 = fdiv float %add57, %add69, !dbg !223
  br i1 %cmp70, label %if.then72, label %if.else75, !dbg !222

if.then72:                                        ; preds = %if.then42
  tail call void @llvm.dbg.value(metadata !225, i64 0, metadata !55), !dbg !223
  %sub74 = fsub float 0x3FC3D4FA80000000, %div73, !dbg !223
  br label %return, !dbg !223

if.else75:                                        ; preds = %if.then42
  %add77 = fadd float %div73, 0x3FEB0AC160000000, !dbg !226
  tail call void @llvm.dbg.value(metadata !{float %add77}, i64 0, metadata !55), !dbg !226
  %add78 = fadd float %add77, 1.000000e+00, !dbg !226
  br label %return, !dbg !226

if.end79:                                         ; preds = %if.end39
  %cmp80 = icmp ult i32 %and, 1105199104, !dbg !228
  br i1 %cmp80, label %if.then82, label %if.else181, !dbg !228

if.then82:                                        ; preds = %if.end79
  %fabsf = tail call float @fabsf(float %x) #4, !dbg !229
  tail call void @llvm.dbg.value(metadata !{float %fabsf}, i64 0, metadata !46), !dbg !229
  %mul86 = fmul float %fabsf, %fabsf, !dbg !231
  %div87 = fdiv float 1.000000e+00, %mul86, !dbg !231
  tail call void @llvm.dbg.value(metadata !{float %div87}, i64 0, metadata !53), !dbg !231
  %cmp88 = icmp ult i32 %and, 1077336941, !dbg !232
  br i1 %cmp88, label %if.then90, label %if.else121, !dbg !232

if.then90:                                        ; preds = %if.then82
  %mul91 = fmul float %div87, 0xC023A0EFC0000000, !dbg !233
  %add92 = fadd float %mul91, 0xC054526560000000, !dbg !233
  %mul93 = fmul float %div87, %add92, !dbg !233
  %add94 = fadd float %mul93, 0xC067135CE0000000, !dbg !233
  %mul95 = fmul float %div87, %add94, !dbg !233
  %add96 = fadd float %mul95, 0xC0644CB180000000, !dbg !233
  %mul97 = fmul float %div87, %add96, !dbg !233
  %add98 = fadd float %mul97, 0xC04F300AE0000000, !dbg !233
  %mul99 = fmul float %div87, %add98, !dbg !233
  %add100 = fadd float %mul99, 0xC0251E0440000000, !dbg !233
  %mul101 = fmul float %div87, %add100, !dbg !233
  %add102 = fadd float %mul101, 0xBFE63416E0000000, !dbg !233
  %mul103 = fmul float %div87, %add102, !dbg !233
  %add104 = fadd float %mul103, 0xBF84341260000000, !dbg !233
  tail call void @llvm.dbg.value(metadata !{float %add104}, i64 0, metadata !49), !dbg !233
  %mul105 = fmul float %div87, 0xBFAEEFF2E0000000, !dbg !235
  %add106 = fadd float %mul105, 0x401A47EF80000000, !dbg !235
  %mul107 = fmul float %div87, %add106, !dbg !235
  %add108 = fadd float %mul107, 0x405B28A3E0000000, !dbg !235
  %mul109 = fmul float %div87, %add108, !dbg !235
  %add110 = fadd float %mul109, 0x407AD02160000000, !dbg !235
  %mul111 = fmul float %div87, %add110, !dbg !235
  %add112 = fadd float %mul111, 0x40842B1920000000, !dbg !235
  %mul113 = fmul float %div87, %add112, !dbg !235
  %add114 = fadd float %mul113, 0x407B290DE0000000, !dbg !235
  %mul115 = fmul float %div87, %add114, !dbg !235
  %add116 = fadd float %mul115, 0x4061350C60000000, !dbg !235
  %mul117 = fmul float %div87, %add116, !dbg !235
  %add118 = fadd float %mul117, 0x4033A6B9C0000000, !dbg !235
  br label %if.end154, !dbg !236

if.else121:                                       ; preds = %if.then82
  %cmp122 = icmp slt i32 %0, 0, !dbg !237
  %cmp124 = icmp ugt i32 %and, 1086324735, !dbg !237
  %or.cond = and i1 %cmp122, %cmp124, !dbg !237
  br i1 %or.cond, label %return, label %if.end127, !dbg !237

if.end127:                                        ; preds = %if.else121
  %mul128 = fmul float %div87, 0xC07E384EA0000000, !dbg !239
  %add129 = fadd float %mul128, 0xC090046160000000, !dbg !239
  %mul130 = fmul float %div87, %add129, !dbg !239
  %add131 = fadd float %mul130, 0xC083EC8820000000, !dbg !239
  %mul132 = fmul float %div87, %add131, !dbg !239
  %add133 = fadd float %mul132, 0xC064145D40000000, !dbg !239
  %mul134 = fmul float %div87, %add133, !dbg !239
  %add135 = fadd float %mul134, 0xC031C20960000000, !dbg !239
  %mul136 = fmul float %div87, %add135, !dbg !239
  %add137 = fadd float %mul136, 0xBFE993BA80000000, !dbg !239
  %mul138 = fmul float %div87, %add137, !dbg !239
  %add139 = fadd float %mul138, 0xBF84341240000000, !dbg !239
  tail call void @llvm.dbg.value(metadata !{float %add139}, i64 0, metadata !49), !dbg !239
  %mul140 = fmul float %div87, 0xC03670E240000000, !dbg !240
  %add141 = fadd float %mul140, 0x407DA874E0000000, !dbg !240
  %mul142 = fmul float %div87, %add141, !dbg !240
  %add143 = fadd float %mul142, 0x40A3F219C0000000, !dbg !240
  %mul144 = fmul float %div87, %add143, !dbg !240
  %add145 = fadd float %mul144, 0x40A8FFB760000000, !dbg !240
  %mul146 = fmul float %div87, %add145, !dbg !240
  %add147 = fadd float %mul146, 0x409802EB20000000, !dbg !240
  %mul148 = fmul float %div87, %add147, !dbg !240
  %add149 = fadd float %mul148, 0x40745CAE20000000, !dbg !240
  %mul150 = fmul float %div87, %add149, !dbg !240
  %add151 = fadd float %mul150, 0x403E568B20000000, !dbg !240
  br label %if.end154

if.end154:                                        ; preds = %if.end127, %if.then90
  %add118.pn = phi float [ %add118, %if.then90 ], [ %add151, %if.end127 ]
  %R.0 = phi float [ %add104, %if.then90 ], [ %add139, %if.end127 ]
  %S.0.in = fmul float %div87, %add118.pn, !dbg !235
  %S.0 = fadd float %S.0.in, 1.000000e+00, !dbg !235
  %1 = bitcast float %fabsf to i32, !dbg !241
  %and157 = and i32 %1, -4096, !dbg !242
  %2 = bitcast i32 %and157 to float, !dbg !243
  tail call void @llvm.dbg.value(metadata !{float %2}, i64 0, metadata !55), !dbg !243
  %3 = fmul float %2, %2, !dbg !244
  %sub162 = fsub float -5.625000e-01, %3, !dbg !244
  %conv163 = fpext float %sub162 to double, !dbg !244
  %call164 = tail call double @exp(double %conv163) #5, !dbg !244
  %sub165 = fsub float %2, %fabsf, !dbg !244
  %add166 = fadd float %fabsf, %2, !dbg !244
  %mul167 = fmul float %sub165, %add166, !dbg !244
  %div168 = fdiv float %R.0, %S.0, !dbg !244
  %add169 = fadd float %mul167, %div168, !dbg !244
  %conv170 = fpext float %add169 to double, !dbg !244
  %call171 = tail call double @exp(double %conv170) #5, !dbg !244
  %mul172 = fmul double %call164, %call171, !dbg !244
  %conv173 = fptrunc double %mul172 to float, !dbg !244
  tail call void @llvm.dbg.value(metadata !{float %conv173}, i64 0, metadata !56), !dbg !244
  %cmp174 = icmp sgt i32 %0, 0, !dbg !245
  %div177 = fdiv float %conv173, %fabsf, !dbg !245
  br i1 %cmp174, label %return, label %if.else178, !dbg !245

if.else178:                                       ; preds = %if.end154
  %sub180 = fsub float 2.000000e+00, %div177, !dbg !245
  br label %return, !dbg !245

if.else181:                                       ; preds = %if.end79
  %cmp182 = icmp sgt i32 %0, 0, !dbg !246
  %. = select i1 %cmp182, float 0.000000e+00, float 2.000000e+00, !dbg !246
  br label %return, !dbg !246

return:                                           ; preds = %if.else181, %if.end154, %if.else121, %if.else178, %if.else75, %if.then72, %if.else, %if.then31, %if.then8, %if.then
  %retval.0 = phi float [ %add, %if.then ], [ %sub, %if.then8 ], [ %sub34, %if.then31 ], [ %sub38, %if.else ], [ %sub74, %if.then72 ], [ %add78, %if.else75 ], [ %sub180, %if.else178 ], [ 2.000000e+00, %if.else121 ], [ %div177, %if.end154 ], [ %., %if.else181 ]
  ret float %retval.0, !dbg !248
}

; Function Attrs: nounwind optsize uwtable
define float @fast_float_erf(float %x) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !66), !dbg !249
  %conv = fpext float %x to double, !dbg !250
  %mul = fmul double %conv, 5.000000e-01, !dbg !250
  %add = fadd double %mul, 1.000000e+00, !dbg !250
  %div = fdiv double 1.000000e+00, %add, !dbg !250
  %conv1 = fptrunc double %div to float, !dbg !250
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !67), !dbg !250
  %conv2 = fpext float %conv1 to double, !dbg !251
  %0 = fmul float %x, %x, !dbg !251
  %mul3 = fsub float -0.000000e+00, %0, !dbg !251
  %conv4 = fpext float %mul3 to double, !dbg !251
  %sub5 = fadd double %conv4, 0xBFF43F89C0889BC5, !dbg !251
  %mul15 = fmul double %conv2, 0x3FC5DF28AF76A5A4, !dbg !251
  %add16 = fadd double %mul15, 0xBFEA4F123185DEFD, !dbg !251
  %mul17 = fmul double %conv2, %add16, !dbg !251
  %add18 = fadd double %mul17, 0x3FF7D0F60453A1BE, !dbg !251
  %mul19 = fmul double %conv2, %add18, !dbg !251
  %add20 = fadd double %mul19, 0xBFF229CBA6063980, !dbg !251
  %mul21 = fmul double %conv2, %add20, !dbg !251
  %add22 = fadd double %mul21, 0x3FD1D8F976231CE6, !dbg !251
  %mul23 = fmul double %conv2, %add22, !dbg !251
  %add24 = fadd double %mul23, 0xBFC7D84982AAEAA5, !dbg !251
  %mul25 = fmul double %conv2, %add24, !dbg !251
  %add26 = fadd double %mul25, 9.678418e-02, !dbg !251
  %mul27 = fmul double %conv2, %add26, !dbg !251
  %add28 = fadd double %mul27, 0x3FD7F11F677960EA, !dbg !251
  %mul29 = fmul double %conv2, %add28, !dbg !251
  %add30 = fadd double %mul29, 0x3FF00018D48D3588, !dbg !251
  %mul31 = fmul double %conv2, %add30, !dbg !251
  %add32 = fadd double %sub5, %mul31, !dbg !251
  %call = tail call double @exp(double %add32) #5, !dbg !251
  %mul33 = fmul double %call, %conv2, !dbg !251
  %conv34 = fptrunc double %mul33 to float, !dbg !251
  tail call void @llvm.dbg.value(metadata !{float %conv34}, i64 0, metadata !68), !dbg !251
  %conv37 = fsub float 1.000000e+00, %conv34, !dbg !252
  ret float %conv37, !dbg !252
}

; Function Attrs: nounwind optsize uwtable
define float @fast_float_erfc(float %x) #2 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !71), !dbg !253
  %conv = fpext float %x to double, !dbg !254
  %mul = fmul double %conv, 5.000000e-01, !dbg !254
  %add = fadd double %mul, 1.000000e+00, !dbg !254
  %div = fdiv double 1.000000e+00, %add, !dbg !254
  %conv1 = fptrunc double %div to float, !dbg !254
  tail call void @llvm.dbg.value(metadata !{float %conv1}, i64 0, metadata !72), !dbg !254
  %conv2 = fpext float %conv1 to double, !dbg !255
  %0 = fmul float %x, %x, !dbg !255
  %mul3 = fsub float -0.000000e+00, %0, !dbg !255
  %conv4 = fpext float %mul3 to double, !dbg !255
  %sub5 = fadd double %conv4, 0xBFF43F89C0889BC5, !dbg !255
  %mul15 = fmul double %conv2, 0x3FC5DF28AF76A5A4, !dbg !255
  %add16 = fadd double %mul15, 0xBFEA4F123185DEFD, !dbg !255
  %mul17 = fmul double %conv2, %add16, !dbg !255
  %add18 = fadd double %mul17, 0x3FF7D0F60453A1BE, !dbg !255
  %mul19 = fmul double %conv2, %add18, !dbg !255
  %add20 = fadd double %mul19, 0xBFF229CBA6063980, !dbg !255
  %mul21 = fmul double %conv2, %add20, !dbg !255
  %add22 = fadd double %mul21, 0x3FD1D8F976231CE6, !dbg !255
  %mul23 = fmul double %conv2, %add22, !dbg !255
  %add24 = fadd double %mul23, 0xBFC7D84982AAEAA5, !dbg !255
  %mul25 = fmul double %conv2, %add24, !dbg !255
  %add26 = fadd double %mul25, 9.678418e-02, !dbg !255
  %mul27 = fmul double %conv2, %add26, !dbg !255
  %add28 = fadd double %mul27, 0x3FD7F11F677960EA, !dbg !255
  %mul29 = fmul double %conv2, %add28, !dbg !255
  %add30 = fadd double %mul29, 0x3FF00018D48D3588, !dbg !255
  %mul31 = fmul double %conv2, %add30, !dbg !255
  %add32 = fadd double %sub5, %mul31, !dbg !255
  %call = tail call double @exp(double %add32) #5, !dbg !255
  %mul33 = fmul double %call, %conv2, !dbg !255
  %conv34 = fptrunc double %mul33 to float, !dbg !255
  tail call void @llvm.dbg.value(metadata !{float %conv34}, i64 0, metadata !73), !dbg !255
  ret float %conv34, !dbg !256
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @fabsf(float)

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !74, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !16, metadata !22, metadata !44, metadata !62, metadata !69}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gmx_nint", metadata !"gmx_nint", metadata !"", i32 45, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float)* @gmx_nint, null, null, metadata !11, i32 46} ; [ DW_TAG_subprogram ] [line 45] [def] [scope 46] [gmx_nint]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!10 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!11 = metadata !{metadata !12, metadata !13, metadata !15}
!12 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 45]
!13 = metadata !{i32 786688, metadata !4, metadata !"half", metadata !5, i32 47, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [half] [line 47]
!14 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from real]
!15 = metadata !{i32 786688, metadata !4, metadata !"result", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 48]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sign", metadata !"sign", metadata !"", i32 54, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float)* @sign, null, null, metadata !19, i32 55} ; [ DW_TAG_subprogram ] [line 54] [def] [scope 55] [sign]
!17 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !9, metadata !9, metadata !9}
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 786689, metadata !16, metadata !"x", metadata !5, i32 16777270, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 54]
!21 = metadata !{i32 786689, metadata !16, metadata !"y", metadata !5, i32 33554486, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 54]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gmx_erf", metadata !"gmx_erf", metadata !"", i32 471, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @gmx_erf, null, null, metadata !25, i32 472} ; [ DW_TAG_subprogram ] [line 471] [def] [scope 472] [gmx_erf]
!23 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{metadata !9, metadata !10}
!25 = metadata !{metadata !26, metadata !27, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!26 = metadata !{i32 786689, metadata !22, metadata !"x", metadata !5, i32 16777687, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 471]
!27 = metadata !{i32 786688, metadata !22, metadata !"hx", metadata !5, i32 473, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hx] [line 473]
!28 = metadata !{i32 786454, metadata !1, null, metadata !"erf_int32_t", i32 79, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [erf_int32_t] [line 79, size 0, align 0, offset 0] [from int]
!29 = metadata !{i32 786688, metadata !22, metadata !"ix", metadata !5, i32 473, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 473]
!30 = metadata !{i32 786688, metadata !22, metadata !"i", metadata !5, i32 473, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 473]
!31 = metadata !{i32 786688, metadata !22, metadata !"R", metadata !5, i32 474, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [R] [line 474]
!32 = metadata !{i32 786688, metadata !22, metadata !"S", metadata !5, i32 474, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [S] [line 474]
!33 = metadata !{i32 786688, metadata !22, metadata !"P", metadata !5, i32 474, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [P] [line 474]
!34 = metadata !{i32 786688, metadata !22, metadata !"Q", metadata !5, i32 474, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Q] [line 474]
!35 = metadata !{i32 786688, metadata !22, metadata !"s", metadata !5, i32 474, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 474]
!36 = metadata !{i32 786688, metadata !22, metadata !"y", metadata !5, i32 474, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 474]
!37 = metadata !{i32 786688, metadata !22, metadata !"z", metadata !5, i32 474, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 474]
!38 = metadata !{i32 786688, metadata !22, metadata !"r", metadata !5, i32 474, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 474]
!39 = metadata !{i32 786688, metadata !22, metadata !"conv", metadata !5, i32 481, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conv] [line 481]
!40 = metadata !{i32 786455, metadata !1, metadata !22, metadata !"", i32 476, i64 32, i64 32, i64 0, i32 0, null, metadata !41, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 476, size 32, align 32, offset 0] [from ]
!41 = metadata !{metadata !42, metadata !43}
!42 = metadata !{i32 786445, metadata !1, metadata !40, metadata !"f", i32 478, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [f] [line 478, size 32, align 32, offset 0] [from float]
!43 = metadata !{i32 786445, metadata !1, metadata !40, metadata !"i", i32 479, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [i] [line 479, size 32, align 32, offset 0] [from int]
!44 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gmx_erfc", metadata !"gmx_erfc", metadata !"", i32 546, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @gmx_erfc, null, null, metadata !45, i32 547} ; [ DW_TAG_subprogram ] [line 546] [def] [scope 547] [gmx_erfc]
!45 = metadata !{metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57}
!46 = metadata !{i32 786689, metadata !44, metadata !"x", metadata !5, i32 16777762, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 546]
!47 = metadata !{i32 786688, metadata !44, metadata !"hx", metadata !5, i32 548, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hx] [line 548]
!48 = metadata !{i32 786688, metadata !44, metadata !"ix", metadata !5, i32 548, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ix] [line 548]
!49 = metadata !{i32 786688, metadata !44, metadata !"R", metadata !5, i32 549, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [R] [line 549]
!50 = metadata !{i32 786688, metadata !44, metadata !"S", metadata !5, i32 549, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [S] [line 549]
!51 = metadata !{i32 786688, metadata !44, metadata !"P", metadata !5, i32 549, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [P] [line 549]
!52 = metadata !{i32 786688, metadata !44, metadata !"Q", metadata !5, i32 549, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Q] [line 549]
!53 = metadata !{i32 786688, metadata !44, metadata !"s", metadata !5, i32 549, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 549]
!54 = metadata !{i32 786688, metadata !44, metadata !"y", metadata !5, i32 549, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 549]
!55 = metadata !{i32 786688, metadata !44, metadata !"z", metadata !5, i32 549, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 549]
!56 = metadata !{i32 786688, metadata !44, metadata !"r", metadata !5, i32 549, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 549]
!57 = metadata !{i32 786688, metadata !44, metadata !"conv", metadata !5, i32 556, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conv] [line 556]
!58 = metadata !{i32 786455, metadata !1, metadata !44, metadata !"", i32 551, i64 32, i64 32, i64 0, i32 0, null, metadata !59, i32 0, i32 0, null} ; [ DW_TAG_union_type ] [line 551, size 32, align 32, offset 0] [from ]
!59 = metadata !{metadata !60, metadata !61}
!60 = metadata !{i32 786445, metadata !1, metadata !58, metadata !"f", i32 553, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [f] [line 553, size 32, align 32, offset 0] [from float]
!61 = metadata !{i32 786445, metadata !1, metadata !58, metadata !"i", i32 554, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [i] [line 554, size 32, align 32, offset 0] [from int]
!62 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fast_float_erf", metadata !"fast_float_erf", metadata !"", i32 630, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @fast_float_erf, null, null, metadata !65, i32 631} ; [ DW_TAG_subprogram ] [line 630] [def] [scope 631] [fast_float_erf]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !10, metadata !10}
!65 = metadata !{metadata !66, metadata !67, metadata !68}
!66 = metadata !{i32 786689, metadata !62, metadata !"x", metadata !5, i32 16777846, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 630]
!67 = metadata !{i32 786688, metadata !62, metadata !"t", metadata !5, i32 632, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 632]
!68 = metadata !{i32 786688, metadata !62, metadata !"ans", metadata !5, i32 632, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ans] [line 632]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fast_float_erfc", metadata !"fast_float_erfc", metadata !"", i32 641, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float)* @fast_float_erfc, null, null, metadata !70, i32 642} ; [ DW_TAG_subprogram ] [line 641] [def] [scope 642] [fast_float_erfc]
!70 = metadata !{metadata !71, metadata !72, metadata !73}
!71 = metadata !{i32 786689, metadata !69, metadata !"x", metadata !5, i32 16777857, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 641]
!72 = metadata !{i32 786688, metadata !69, metadata !"t", metadata !5, i32 643, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 643]
!73 = metadata !{i32 786688, metadata !69, metadata !"ans", metadata !5, i32 643, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ans] [line 643]
!74 = metadata !{metadata !75, metadata !75, metadata !76, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !76, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !76, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !76, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !103, metadata !76, metadata !104, metadata !104, metadata !76, metadata !76, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !76, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !76, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !76, metadata !76, metadata !76, metadata !76, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !76, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !76, metadata !135, metadata !135, metadata !76, metadata !90, metadata !91, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !76, metadata !97, metadata !98, metadata !99, metadata !100, metadata !101, metadata !102, metadata !76, metadata !103, metadata !103, metadata !76, metadata !76, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !76, metadata !113, metadata !114, metadata !115, metadata !116, metadata !117, metadata !118, metadata !119, metadata !120, metadata !136, metadata !104, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126, metadata !127, metadata !76, metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !136, metadata !104, metadata !104, metadata !136, metadata !104}
!75 = metadata !{i32 786484, i32 0, metadata !5, metadata !"half", metadata !"half", metadata !"half", metadata !5, i32 47, metadata !14, i32 1, i32 1, float 5.000000e-01, null} ; [ DW_TAG_variable ] [half] [line 47] [local] [def]
!76 = metadata !{i32 786484, i32 0, metadata !5, metadata !"one", metadata !"one", metadata !"one", metadata !5, i32 376, metadata !77, i32 1, i32 1, float 1.000000e+00, null} ; [ DW_TAG_variable ] [one] [line 376] [local] [def]
!77 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from float]
!78 = metadata !{i32 786484, i32 0, metadata !5, metadata !"efx8", metadata !"efx8", metadata !"efx8", metadata !5, i32 384, metadata !77, i32 1, i32 1, float 0x3FF06EBA80000000, null} ; [ DW_TAG_variable ] [efx8] [line 384] [local] [def]
!79 = metadata !{i32 786484, i32 0, metadata !5, metadata !"efx", metadata !"efx", metadata !"efx", metadata !5, i32 383, metadata !77, i32 1, i32 1, float 0x3FC06EBA80000000, null} ; [ DW_TAG_variable ] [efx] [line 383] [local] [def]
!80 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pp0", metadata !"pp0", metadata !"pp0", metadata !5, i32 385, metadata !77, i32 1, i32 1, float 0x3FC06EBA80000000, null} ; [ DW_TAG_variable ] [pp0] [line 385] [local] [def]
!81 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pp1", metadata !"pp1", metadata !"pp1", metadata !5, i32 386, metadata !77, i32 1, i32 1, float 0xBFD4CD7D60000000, null} ; [ DW_TAG_variable ] [pp1] [line 386] [local] [def]
!82 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pp2", metadata !"pp2", metadata !"pp2", metadata !5, i32 387, metadata !77, i32 1, i32 1, float 0xBF9D2A51E0000000, null} ; [ DW_TAG_variable ] [pp2] [line 387] [local] [def]
!83 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pp3", metadata !"pp3", metadata !"pp3", metadata !5, i32 388, metadata !77, i32 1, i32 1, float 0xBF77A29120000000, null} ; [ DW_TAG_variable ] [pp3] [line 388] [local] [def]
!84 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pp4", metadata !"pp4", metadata !"pp4", metadata !5, i32 389, metadata !77, i32 1, i32 1, float 0xBEF8EAD620000000, null} ; [ DW_TAG_variable ] [pp4] [line 389] [local] [def]
!85 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qq1", metadata !"qq1", metadata !"qq1", metadata !5, i32 390, metadata !77, i32 1, i32 1, float 0x3FD97779C0000000, null} ; [ DW_TAG_variable ] [qq1] [line 390] [local] [def]
!86 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qq2", metadata !"qq2", metadata !"qq2", metadata !5, i32 391, metadata !77, i32 1, i32 1, float 0x3FB0A54C60000000, null} ; [ DW_TAG_variable ] [qq2] [line 391] [local] [def]
!87 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qq3", metadata !"qq3", metadata !"qq3", metadata !5, i32 392, metadata !77, i32 1, i32 1, float 0x3F74D022C0000000, null} ; [ DW_TAG_variable ] [qq3] [line 392] [local] [def]
!88 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qq4", metadata !"qq4", metadata !"qq4", metadata !5, i32 393, metadata !77, i32 1, i32 1, float 0x3F215DC920000000, null} ; [ DW_TAG_variable ] [qq4] [line 393] [local] [def]
!89 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qq5", metadata !"qq5", metadata !"qq5", metadata !5, i32 394, metadata !77, i32 1, i32 1, float 0xBED09C4340000000, null} ; [ DW_TAG_variable ] [qq5] [line 394] [local] [def]
!90 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pa0", metadata !"pa0", metadata !"pa0", metadata !5, i32 398, metadata !77, i32 1, i32 1, float 0xBF6359B8C0000000, null} ; [ DW_TAG_variable ] [pa0] [line 398] [local] [def]
!91 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pa1", metadata !"pa1", metadata !"pa1", metadata !5, i32 399, metadata !77, i32 1, i32 1, float 0x3FDA8D00A0000000, null} ; [ DW_TAG_variable ] [pa1] [line 399] [local] [def]
!92 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pa2", metadata !"pa2", metadata !"pa2", metadata !5, i32 400, metadata !77, i32 1, i32 1, float 0xBFD7D24100000000, null} ; [ DW_TAG_variable ] [pa2] [line 400] [local] [def]
!93 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pa3", metadata !"pa3", metadata !"pa3", metadata !5, i32 401, metadata !77, i32 1, i32 1, float 0x3FD45FCA80000000, null} ; [ DW_TAG_variable ] [pa3] [line 401] [local] [def]
!94 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pa4", metadata !"pa4", metadata !"pa4", metadata !5, i32 402, metadata !77, i32 1, i32 1, float 0xBFBC639840000000, null} ; [ DW_TAG_variable ] [pa4] [line 402] [local] [def]
!95 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pa5", metadata !"pa5", metadata !"pa5", metadata !5, i32 403, metadata !77, i32 1, i32 1, float 0x3FA22A3660000000, null} ; [ DW_TAG_variable ] [pa5] [line 403] [local] [def]
!96 = metadata !{i32 786484, i32 0, metadata !5, metadata !"pa6", metadata !"pa6", metadata !"pa6", metadata !5, i32 404, metadata !77, i32 1, i32 1, float 0xBF61BF3800000000, null} ; [ DW_TAG_variable ] [pa6] [line 404] [local] [def]
!97 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qa1", metadata !"qa1", metadata !"qa1", metadata !5, i32 405, metadata !77, i32 1, i32 1, float 0x3FBB3E6620000000, null} ; [ DW_TAG_variable ] [qa1] [line 405] [local] [def]
!98 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qa2", metadata !"qa2", metadata !"qa2", metadata !5, i32 406, metadata !77, i32 1, i32 1, float 0x3FE14AF0A0000000, null} ; [ DW_TAG_variable ] [qa2] [line 406] [local] [def]
!99 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qa3", metadata !"qa3", metadata !"qa3", metadata !5, i32 407, metadata !77, i32 1, i32 1, float 0x3FB2635CE0000000, null} ; [ DW_TAG_variable ] [qa3] [line 407] [local] [def]
!100 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qa4", metadata !"qa4", metadata !"qa4", metadata !5, i32 408, metadata !77, i32 1, i32 1, float 0x3FC02660E0000000, null} ; [ DW_TAG_variable ] [qa4] [line 408] [local] [def]
!101 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qa5", metadata !"qa5", metadata !"qa5", metadata !5, i32 409, metadata !77, i32 1, i32 1, float 0x3F8BEDC260000000, null} ; [ DW_TAG_variable ] [qa5] [line 409] [local] [def]
!102 = metadata !{i32 786484, i32 0, metadata !5, metadata !"qa6", metadata !"qa6", metadata !"qa6", metadata !5, i32 410, metadata !77, i32 1, i32 1, float 0x3F888B5460000000, null} ; [ DW_TAG_variable ] [qa6] [line 410] [local] [def]
!103 = metadata !{i32 786484, i32 0, metadata !5, metadata !"erx", metadata !"erx", metadata !"erx", metadata !5, i32 379, metadata !77, i32 1, i32 1, float 0x3FEB0AC160000000, null} ; [ DW_TAG_variable ] [erx] [line 379] [local] [def]
!104 = metadata !{i32 786484, i32 0, metadata !5, metadata !"tiny", metadata !"tiny", metadata !"tiny", metadata !5, i32 374, metadata !77, i32 1, i32 1, float 0x39B4484C00000000, null} ; [ DW_TAG_variable ] [tiny] [line 374] [local] [def]
!105 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ra0", metadata !"ra0", metadata !"ra0", metadata !5, i32 414, metadata !77, i32 1, i32 1, float 0xBF84341260000000, null} ; [ DW_TAG_variable ] [ra0] [line 414] [local] [def]
!106 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ra1", metadata !"ra1", metadata !"ra1", metadata !5, i32 415, metadata !77, i32 1, i32 1, float 0xBFE63416E0000000, null} ; [ DW_TAG_variable ] [ra1] [line 415] [local] [def]
!107 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ra2", metadata !"ra2", metadata !"ra2", metadata !5, i32 416, metadata !77, i32 1, i32 1, float 0xC0251E0440000000, null} ; [ DW_TAG_variable ] [ra2] [line 416] [local] [def]
!108 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ra3", metadata !"ra3", metadata !"ra3", metadata !5, i32 417, metadata !77, i32 1, i32 1, float 0xC04F300AE0000000, null} ; [ DW_TAG_variable ] [ra3] [line 417] [local] [def]
!109 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ra4", metadata !"ra4", metadata !"ra4", metadata !5, i32 418, metadata !77, i32 1, i32 1, float 0xC0644CB180000000, null} ; [ DW_TAG_variable ] [ra4] [line 418] [local] [def]
!110 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ra5", metadata !"ra5", metadata !"ra5", metadata !5, i32 419, metadata !77, i32 1, i32 1, float 0xC067135CE0000000, null} ; [ DW_TAG_variable ] [ra5] [line 419] [local] [def]
!111 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ra6", metadata !"ra6", metadata !"ra6", metadata !5, i32 420, metadata !77, i32 1, i32 1, float 0xC054526560000000, null} ; [ DW_TAG_variable ] [ra6] [line 420] [local] [def]
!112 = metadata !{i32 786484, i32 0, metadata !5, metadata !"ra7", metadata !"ra7", metadata !"ra7", metadata !5, i32 421, metadata !77, i32 1, i32 1, float 0xC023A0EFC0000000, null} ; [ DW_TAG_variable ] [ra7] [line 421] [local] [def]
!113 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sa1", metadata !"sa1", metadata !"sa1", metadata !5, i32 422, metadata !77, i32 1, i32 1, float 0x4033A6B9C0000000, null} ; [ DW_TAG_variable ] [sa1] [line 422] [local] [def]
!114 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sa2", metadata !"sa2", metadata !"sa2", metadata !5, i32 423, metadata !77, i32 1, i32 1, float 0x4061350C60000000, null} ; [ DW_TAG_variable ] [sa2] [line 423] [local] [def]
!115 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sa3", metadata !"sa3", metadata !"sa3", metadata !5, i32 424, metadata !77, i32 1, i32 1, float 0x407B290DE0000000, null} ; [ DW_TAG_variable ] [sa3] [line 424] [local] [def]
!116 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sa4", metadata !"sa4", metadata !"sa4", metadata !5, i32 425, metadata !77, i32 1, i32 1, float 0x40842B1920000000, null} ; [ DW_TAG_variable ] [sa4] [line 425] [local] [def]
!117 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sa5", metadata !"sa5", metadata !"sa5", metadata !5, i32 426, metadata !77, i32 1, i32 1, float 0x407AD02160000000, null} ; [ DW_TAG_variable ] [sa5] [line 426] [local] [def]
!118 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sa6", metadata !"sa6", metadata !"sa6", metadata !5, i32 427, metadata !77, i32 1, i32 1, float 0x405B28A3E0000000, null} ; [ DW_TAG_variable ] [sa6] [line 427] [local] [def]
!119 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sa7", metadata !"sa7", metadata !"sa7", metadata !5, i32 428, metadata !77, i32 1, i32 1, float 0x401A47EF80000000, null} ; [ DW_TAG_variable ] [sa7] [line 428] [local] [def]
!120 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sa8", metadata !"sa8", metadata !"sa8", metadata !5, i32 429, metadata !77, i32 1, i32 1, float 0xBFAEEFF2E0000000, null} ; [ DW_TAG_variable ] [sa8] [line 429] [local] [def]
!121 = metadata !{i32 786484, i32 0, metadata !5, metadata !"rb0", metadata !"rb0", metadata !"rb0", metadata !5, i32 433, metadata !77, i32 1, i32 1, float 0xBF84341240000000, null} ; [ DW_TAG_variable ] [rb0] [line 433] [local] [def]
!122 = metadata !{i32 786484, i32 0, metadata !5, metadata !"rb1", metadata !"rb1", metadata !"rb1", metadata !5, i32 434, metadata !77, i32 1, i32 1, float 0xBFE993BA80000000, null} ; [ DW_TAG_variable ] [rb1] [line 434] [local] [def]
!123 = metadata !{i32 786484, i32 0, metadata !5, metadata !"rb2", metadata !"rb2", metadata !"rb2", metadata !5, i32 435, metadata !77, i32 1, i32 1, float 0xC031C20960000000, null} ; [ DW_TAG_variable ] [rb2] [line 435] [local] [def]
!124 = metadata !{i32 786484, i32 0, metadata !5, metadata !"rb3", metadata !"rb3", metadata !"rb3", metadata !5, i32 436, metadata !77, i32 1, i32 1, float 0xC064145D40000000, null} ; [ DW_TAG_variable ] [rb3] [line 436] [local] [def]
!125 = metadata !{i32 786484, i32 0, metadata !5, metadata !"rb4", metadata !"rb4", metadata !"rb4", metadata !5, i32 437, metadata !77, i32 1, i32 1, float 0xC083EC8820000000, null} ; [ DW_TAG_variable ] [rb4] [line 437] [local] [def]
!126 = metadata !{i32 786484, i32 0, metadata !5, metadata !"rb5", metadata !"rb5", metadata !"rb5", metadata !5, i32 438, metadata !77, i32 1, i32 1, float 0xC090046160000000, null} ; [ DW_TAG_variable ] [rb5] [line 438] [local] [def]
!127 = metadata !{i32 786484, i32 0, metadata !5, metadata !"rb6", metadata !"rb6", metadata !"rb6", metadata !5, i32 439, metadata !77, i32 1, i32 1, float 0xC07E384EA0000000, null} ; [ DW_TAG_variable ] [rb6] [line 439] [local] [def]
!128 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sb1", metadata !"sb1", metadata !"sb1", metadata !5, i32 440, metadata !77, i32 1, i32 1, float 0x403E568B20000000, null} ; [ DW_TAG_variable ] [sb1] [line 440] [local] [def]
!129 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sb2", metadata !"sb2", metadata !"sb2", metadata !5, i32 441, metadata !77, i32 1, i32 1, float 0x40745CAE20000000, null} ; [ DW_TAG_variable ] [sb2] [line 441] [local] [def]
!130 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sb3", metadata !"sb3", metadata !"sb3", metadata !5, i32 442, metadata !77, i32 1, i32 1, float 0x409802EB20000000, null} ; [ DW_TAG_variable ] [sb3] [line 442] [local] [def]
!131 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sb4", metadata !"sb4", metadata !"sb4", metadata !5, i32 443, metadata !77, i32 1, i32 1, float 0x40A8FFB760000000, null} ; [ DW_TAG_variable ] [sb4] [line 443] [local] [def]
!132 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sb5", metadata !"sb5", metadata !"sb5", metadata !5, i32 444, metadata !77, i32 1, i32 1, float 0x40A3F219C0000000, null} ; [ DW_TAG_variable ] [sb5] [line 444] [local] [def]
!133 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sb6", metadata !"sb6", metadata !"sb6", metadata !5, i32 445, metadata !77, i32 1, i32 1, float 0x407DA874E0000000, null} ; [ DW_TAG_variable ] [sb6] [line 445] [local] [def]
!134 = metadata !{i32 786484, i32 0, metadata !5, metadata !"sb7", metadata !"sb7", metadata !"sb7", metadata !5, i32 446, metadata !77, i32 1, i32 1, float 0xC03670E240000000, null} ; [ DW_TAG_variable ] [sb7] [line 446] [local] [def]
!135 = metadata !{i32 786484, i32 0, metadata !5, metadata !"half", metadata !"half", metadata !"half", metadata !5, i32 375, metadata !77, i32 1, i32 1, float 5.000000e-01, null} ; [ DW_TAG_variable ] [half] [line 375] [local] [def]
!136 = metadata !{i32 786484, i32 0, metadata !5, metadata !"two", metadata !"two", metadata !"two", metadata !5, i32 377, metadata !77, i32 1, i32 1, float 2.000000e+00, null} ; [ DW_TAG_variable ] [two] [line 377] [local] [def]
!137 = metadata !{i32 45, i32 0, metadata !4, null}
!138 = metadata !{float 5.000000e-01}
!139 = metadata !{i32 47, i32 0, metadata !4, null}
!140 = metadata !{i32 50, i32 0, metadata !4, null}
!141 = metadata !{i32 51, i32 0, metadata !4, null}
!142 = metadata !{i32 54, i32 0, metadata !16, null}
!143 = metadata !{i32 56, i32 0, metadata !16, null}
!144 = metadata !{i32 57, i32 0, metadata !16, null}
!145 = metadata !{i32 60, i32 0, metadata !16, null}
!146 = metadata !{i32 471, i32 0, metadata !22, null}
!147 = metadata !{%union.anon* undef}
!148 = metadata !{i32 481, i32 0, metadata !22, null}
!149 = metadata !{i32 483, i32 0, metadata !22, null}
!150 = metadata !{i32 484, i32 0, metadata !22, null}
!151 = metadata !{i32 486, i32 0, metadata !22, null}
!152 = metadata !{i32 487, i32 0, metadata !22, null}
!153 = metadata !{i32 490, i32 0, metadata !154, null}
!154 = metadata !{i32 786443, metadata !1, metadata !22, i32 488, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!155 = metadata !{i32 491, i32 0, metadata !154, null}
!156 = metadata !{i32 494, i32 0, metadata !22, null}
!157 = metadata !{i32 497, i32 0, metadata !158, null}
!158 = metadata !{i32 786443, metadata !1, metadata !22, i32 495, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!159 = metadata !{i32 500, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !158, i32 498, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!161 = metadata !{i32 501, i32 0, metadata !160, null}
!162 = metadata !{i32 502, i32 0, metadata !160, null}
!163 = metadata !{i32 504, i32 0, metadata !158, null}
!164 = metadata !{i32 505, i32 0, metadata !158, null}
!165 = metadata !{i32 506, i32 0, metadata !158, null}
!166 = metadata !{i32 507, i32 0, metadata !158, null}
!167 = metadata !{i32 508, i32 0, metadata !158, null}
!168 = metadata !{i32 510, i32 0, metadata !22, null}
!169 = metadata !{i32 513, i32 0, metadata !170, null}
!170 = metadata !{i32 786443, metadata !1, metadata !22, i32 511, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!171 = metadata !{i32 514, i32 0, metadata !170, null}
!172 = metadata !{i32 515, i32 0, metadata !170, null}
!173 = metadata !{i32 516, i32 0, metadata !170, null}
!174 = metadata !{i32 518, i32 0, metadata !22, null}
!175 = metadata !{i32 521, i32 0, metadata !176, null}
!176 = metadata !{i32 786443, metadata !1, metadata !22, i32 519, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!177 = metadata !{i32 523, i32 0, metadata !22, null}
!178 = metadata !{i32 524, i32 0, metadata !22, null}
!179 = metadata !{i32 525, i32 0, metadata !22, null}
!180 = metadata !{i32 528, i32 0, metadata !181, null}
!181 = metadata !{i32 786443, metadata !1, metadata !22, i32 526, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!182 = metadata !{i32 529, i32 0, metadata !181, null}
!183 = metadata !{i32 530, i32 0, metadata !181, null}
!184 = metadata !{i32 534, i32 0, metadata !185, null}
!185 = metadata !{i32 786443, metadata !1, metadata !22, i32 532, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!186 = metadata !{i32 535, i32 0, metadata !185, null}
!187 = metadata !{i32 538, i32 0, metadata !22, null}
!188 = metadata !{i32 539, i32 0, metadata !22, null}
!189 = metadata !{i32 540, i32 0, metadata !22, null}
!190 = metadata !{i32 542, i32 0, metadata !22, null}
!191 = metadata !{i32 543, i32 0, metadata !22, null}
!192 = metadata !{i32 544, i32 0, metadata !22, null}
!193 = metadata !{i32 546, i32 0, metadata !44, null}
!194 = metadata !{%union.anon.0* undef}
!195 = metadata !{i32 556, i32 0, metadata !44, null}
!196 = metadata !{i32 558, i32 0, metadata !44, null}
!197 = metadata !{i32 559, i32 0, metadata !44, null}
!198 = metadata !{i32 561, i32 0, metadata !44, null}
!199 = metadata !{i32 562, i32 0, metadata !44, null}
!200 = metadata !{i32 566, i32 0, metadata !201, null}
!201 = metadata !{i32 786443, metadata !1, metadata !44, i32 563, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!202 = metadata !{i32 569, i32 0, metadata !44, null}
!203 = metadata !{i32 572, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !44, i32 570, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!205 = metadata !{i32 573, i32 0, metadata !204, null}
!206 = metadata !{i32 574, i32 0, metadata !204, null}
!207 = metadata !{i32 575, i32 0, metadata !204, null}
!208 = metadata !{i32 576, i32 0, metadata !204, null}
!209 = metadata !{i32 577, i32 0, metadata !204, null}
!210 = metadata !{i32 578, i32 0, metadata !204, null}
!211 = metadata !{i32 581, i32 0, metadata !212, null}
!212 = metadata !{i32 786443, metadata !1, metadata !204, i32 579, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!213 = metadata !{i32 583, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !204, i32 582, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!215 = metadata !{i32 584, i32 0, metadata !214, null}
!216 = metadata !{i32 585, i32 0, metadata !214, null}
!217 = metadata !{i32 588, i32 0, metadata !44, null}
!218 = metadata !{i32 591, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !44, i32 589, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!220 = metadata !{i32 592, i32 0, metadata !219, null}
!221 = metadata !{i32 593, i32 0, metadata !219, null}
!222 = metadata !{i32 594, i32 0, metadata !219, null}
!223 = metadata !{i32 595, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !219, i32 594, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!225 = metadata !{float 0x3FC3D4FA80000000}
!226 = metadata !{i32 597, i32 0, metadata !227, null}
!227 = metadata !{i32 786443, metadata !1, metadata !219, i32 596, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!228 = metadata !{i32 600, i32 0, metadata !44, null}
!229 = metadata !{i32 603, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !44, i32 601, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!231 = metadata !{i32 604, i32 0, metadata !230, null}
!232 = metadata !{i32 605, i32 0, metadata !230, null}
!233 = metadata !{i32 608, i32 0, metadata !234, null}
!234 = metadata !{i32 786443, metadata !1, metadata !230, i32 606, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!235 = metadata !{i32 609, i32 0, metadata !234, null}
!236 = metadata !{i32 610, i32 0, metadata !234, null}
!237 = metadata !{i32 612, i32 0, metadata !238, null}
!238 = metadata !{i32 786443, metadata !1, metadata !230, i32 610, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!239 = metadata !{i32 613, i32 0, metadata !238, null}
!240 = metadata !{i32 614, i32 0, metadata !238, null}
!241 = metadata !{i32 617, i32 0, metadata !230, null}
!242 = metadata !{i32 618, i32 0, metadata !230, null}
!243 = metadata !{i32 619, i32 0, metadata !230, null}
!244 = metadata !{i32 621, i32 0, metadata !230, null}
!245 = metadata !{i32 622, i32 0, metadata !230, null}
!246 = metadata !{i32 624, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !44, i32 623, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c]
!248 = metadata !{i32 626, i32 0, metadata !44, null}
!249 = metadata !{i32 630, i32 0, metadata !62, null}
!250 = metadata !{i32 634, i32 0, metadata !62, null}
!251 = metadata !{i32 635, i32 0, metadata !62, null}
!252 = metadata !{i32 638, i32 0, metadata !62, null}
!253 = metadata !{i32 641, i32 0, metadata !69, null}
!254 = metadata !{i32 645, i32 0, metadata !69, null}
!255 = metadata !{i32 646, i32 0, metadata !69, null}
!256 = metadata !{i32 649, i32 0, metadata !69, null}

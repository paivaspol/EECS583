; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/maths.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define i32 @gmx_nint(float %a) #0 {
entry:
  %cmp = fcmp olt float %a, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %sub = fadd float %a, -5.000000e-01
  br label %cond.end

cond.false:                                       ; preds = %entry
  %add = fadd float %a, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %sub.sink = phi float [ %sub, %cond.true ], [ %add, %cond.false ]
  %conv2 = fptosi float %sub.sink to i32
  ret i32 %conv2
}

; Function Attrs: nounwind optsize readnone uwtable
define float @sign(float %x, float %y) #0 {
entry:
  %cmp = fcmp olt float %y, 0.000000e+00
  %fabsf = tail call float @fabsf(float %x) #3
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %conv1 = fsub float -0.000000e+00, %fabsf
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi float [ %conv1, %if.then ], [ %fabsf, %entry ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define float @gmx_erf(float %x) #1 {
entry:
  %0 = bitcast float %x to i32
  %and = and i32 %0, 2147483647
  %cmp = icmp ugt i32 %and, 2139095039
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %shr = lshr i32 %0, 31
  %shl = shl nuw nsw i32 %shr, 1
  %sub = sub nsw i32 1, %shl
  %conv3 = sitofp i32 %sub to float
  %div = fdiv float 1.000000e+00, %x
  %add = fadd float %conv3, %div
  br label %return

if.end:                                           ; preds = %entry
  %cmp4 = icmp ult i32 %and, 1062731776
  br i1 %cmp4, label %if.then6, label %if.end42

if.then6:                                         ; preds = %if.end
  %cmp7 = icmp ult i32 %and, 830472192
  br i1 %cmp7, label %if.then9, label %if.end19

if.then9:                                         ; preds = %if.then6
  %cmp10 = icmp ult i32 %and, 67108864
  br i1 %cmp10, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.then9
  %mul = fmul float %x, 8.000000e+00
  %mul13 = fmul float %x, 0x3FF06EBA80000000
  %add14 = fadd float %mul, %mul13
  %mul15 = fmul float %add14, 1.250000e-01
  br label %return

if.end16:                                         ; preds = %if.then9
  %mul17 = fmul float %x, 0x3FC06EBA80000000
  %add18 = fadd float %mul17, %x
  br label %return

if.end19:                                         ; preds = %if.then6
  %mul20 = fmul float %x, %x
  %mul21 = fmul float %mul20, 0xBEF8EAD620000000
  %add22 = fadd float %mul21, 0xBF77A29120000000
  %mul23 = fmul float %mul20, %add22
  %add24 = fadd float %mul23, 0xBF9D2A51E0000000
  %mul25 = fmul float %mul20, %add24
  %add26 = fadd float %mul25, 0xBFD4CD7D60000000
  %mul27 = fmul float %mul20, %add26
  %add28 = fadd float %mul27, 0x3FC06EBA80000000
  %mul29 = fmul float %mul20, 0xBED09C4340000000
  %add30 = fadd float %mul29, 0x3F215DC920000000
  %mul31 = fmul float %mul20, %add30
  %add32 = fadd float %mul31, 0x3F74D022C0000000
  %mul33 = fmul float %mul20, %add32
  %add34 = fadd float %mul33, 0x3FB0A54C60000000
  %mul35 = fmul float %mul20, %add34
  %add36 = fadd float %mul35, 0x3FD97779C0000000
  %mul37 = fmul float %mul20, %add36
  %add38 = fadd float %mul37, 1.000000e+00
  %div39 = fdiv float %add28, %add38
  %mul40 = fmul float %div39, %x
  %add41 = fadd float %mul40, %x
  br label %return

if.end42:                                         ; preds = %if.end
  %cmp43 = icmp ult i32 %and, 1067450368
  br i1 %cmp43, label %if.then45, label %if.end80

if.then45:                                        ; preds = %if.end42
  %fabsf256 = tail call float @fabsf(float %x) #3
  %conv48 = fadd float %fabsf256, -1.000000e+00
  %mul49 = fmul float %conv48, 0xBF61BF3800000000
  %add50 = fadd float %mul49, 0x3FA22A3660000000
  %mul51 = fmul float %conv48, %add50
  %add52 = fadd float %mul51, 0xBFBC639840000000
  %mul53 = fmul float %conv48, %add52
  %add54 = fadd float %mul53, 0x3FD45FCA80000000
  %mul55 = fmul float %conv48, %add54
  %add56 = fadd float %mul55, 0xBFD7D24100000000
  %mul57 = fmul float %conv48, %add56
  %add58 = fadd float %mul57, 0x3FDA8D00A0000000
  %mul59 = fmul float %conv48, %add58
  %add60 = fadd float %mul59, 0xBF6359B8C0000000
  %mul61 = fmul float %conv48, 0x3F888B5460000000
  %add62 = fadd float %mul61, 0x3F8BEDC260000000
  %mul63 = fmul float %conv48, %add62
  %add64 = fadd float %mul63, 0x3FC02660E0000000
  %mul65 = fmul float %conv48, %add64
  %add66 = fadd float %mul65, 0x3FB2635CE0000000
  %mul67 = fmul float %conv48, %add66
  %add68 = fadd float %mul67, 0x3FE14AF0A0000000
  %mul69 = fmul float %conv48, %add68
  %add70 = fadd float %mul69, 0x3FBB3E6620000000
  %mul71 = fmul float %conv48, %add70
  %add72 = fadd float %mul71, 1.000000e+00
  %cmp73 = icmp sgt i32 %0, -1
  %div76 = fdiv float %add60, %add72
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.then45
  %add77 = fadd float %div76, 0x3FEB0AC160000000
  br label %return

if.else:                                          ; preds = %if.then45
  %sub79 = fsub float 0xBFEB0AC160000000, %div76
  br label %return

if.end80:                                         ; preds = %if.end42
  %cmp81 = icmp ugt i32 %and, 1086324735
  br i1 %cmp81, label %if.then83, label %if.end88

if.then83:                                        ; preds = %if.end80
  %cmp84 = icmp sgt i32 %0, -1
  %. = select i1 %cmp84, float 1.000000e+00, float -1.000000e+00
  br label %return

if.end88:                                         ; preds = %if.end80
  %fabsf = tail call float @fabsf(float %x) #3
  %mul92 = fmul float %fabsf, %fabsf
  %div93 = fdiv float 1.000000e+00, %mul92
  %cmp94 = icmp ult i32 %and, 1077336942
  br i1 %cmp94, label %if.then96, label %if.else127

if.then96:                                        ; preds = %if.end88
  %mul97 = fmul float %div93, 0xC023A0EFC0000000
  %add98 = fadd float %mul97, 0xC054526560000000
  %mul99 = fmul float %div93, %add98
  %add100 = fadd float %mul99, 0xC067135CE0000000
  %mul101 = fmul float %div93, %add100
  %add102 = fadd float %mul101, 0xC0644CB180000000
  %mul103 = fmul float %div93, %add102
  %add104 = fadd float %mul103, 0xC04F300AE0000000
  %mul105 = fmul float %div93, %add104
  %add106 = fadd float %mul105, 0xC0251E0440000000
  %mul107 = fmul float %div93, %add106
  %add108 = fadd float %mul107, 0xBFE63416E0000000
  %mul109 = fmul float %div93, %add108
  %add110 = fadd float %mul109, 0xBF84341260000000
  %mul111 = fmul float %div93, 0xBFAEEFF2E0000000
  %add112 = fadd float %mul111, 0x401A47EF80000000
  %mul113 = fmul float %div93, %add112
  %add114 = fadd float %mul113, 0x405B28A3E0000000
  %mul115 = fmul float %div93, %add114
  %add116 = fadd float %mul115, 0x407AD02160000000
  %mul117 = fmul float %div93, %add116
  %add118 = fadd float %mul117, 0x40842B1920000000
  %mul119 = fmul float %div93, %add118
  %add120 = fadd float %mul119, 0x407B290DE0000000
  %mul121 = fmul float %div93, %add120
  %add122 = fadd float %mul121, 0x4061350C60000000
  %mul123 = fmul float %div93, %add122
  %add124 = fadd float %mul123, 0x4033A6B9C0000000
  br label %if.end154

if.else127:                                       ; preds = %if.end88
  %mul128 = fmul float %div93, 0xC07E384EA0000000
  %add129 = fadd float %mul128, 0xC090046160000000
  %mul130 = fmul float %div93, %add129
  %add131 = fadd float %mul130, 0xC083EC8820000000
  %mul132 = fmul float %div93, %add131
  %add133 = fadd float %mul132, 0xC064145D40000000
  %mul134 = fmul float %div93, %add133
  %add135 = fadd float %mul134, 0xC031C20960000000
  %mul136 = fmul float %div93, %add135
  %add137 = fadd float %mul136, 0xBFE993BA80000000
  %mul138 = fmul float %div93, %add137
  %add139 = fadd float %mul138, 0xBF84341240000000
  %mul140 = fmul float %div93, 0xC03670E240000000
  %add141 = fadd float %mul140, 0x407DA874E0000000
  %mul142 = fmul float %div93, %add141
  %add143 = fadd float %mul142, 0x40A3F219C0000000
  %mul144 = fmul float %div93, %add143
  %add145 = fadd float %mul144, 0x40A8FFB760000000
  %mul146 = fmul float %div93, %add145
  %add147 = fadd float %mul146, 0x409802EB20000000
  %mul148 = fmul float %div93, %add147
  %add149 = fadd float %mul148, 0x40745CAE20000000
  %mul150 = fmul float %div93, %add149
  %add151 = fadd float %mul150, 0x403E568B20000000
  br label %if.end154

if.end154:                                        ; preds = %if.else127, %if.then96
  %add124.pn = phi float [ %add124, %if.then96 ], [ %add151, %if.else127 ]
  %R.0 = phi float [ %add110, %if.then96 ], [ %add139, %if.else127 ]
  %S.0.in = fmul float %div93, %add124.pn
  %S.0 = fadd float %S.0.in, 1.000000e+00
  %1 = bitcast float %fabsf to i32
  %and157 = and i32 %1, -4096
  %2 = bitcast i32 %and157 to float
  %3 = fmul float %2, %2
  %sub162 = fsub float -5.625000e-01, %3
  %conv163 = fpext float %sub162 to double
  %call164 = tail call double @exp(double %conv163) #4
  %sub165 = fsub float %2, %fabsf
  %add166 = fadd float %fabsf, %2
  %mul167 = fmul float %sub165, %add166
  %div168 = fdiv float %R.0, %S.0
  %add169 = fadd float %mul167, %div168
  %conv170 = fpext float %add169 to double
  %call171 = tail call double @exp(double %conv170) #4
  %mul172 = fmul double %call164, %call171
  %conv173 = fptrunc double %mul172 to float
  %cmp174 = icmp sgt i32 %0, -1
  %div177 = fdiv float %conv173, %fabsf
  br i1 %cmp174, label %if.then176, label %if.else179

if.then176:                                       ; preds = %if.end154
  %sub178 = fsub float 1.000000e+00, %div177
  br label %return

if.else179:                                       ; preds = %if.end154
  %sub181 = fadd float %div177, -1.000000e+00
  br label %return

return:                                           ; preds = %if.then83, %if.else179, %if.then176, %if.else, %if.then75, %if.end19, %if.end16, %if.then12, %if.then
  %retval.0 = phi float [ %add, %if.then ], [ %mul15, %if.then12 ], [ %add18, %if.end16 ], [ %add41, %if.end19 ], [ %add77, %if.then75 ], [ %sub79, %if.else ], [ %sub178, %if.then176 ], [ %sub181, %if.else179 ], [ %., %if.then83 ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize uwtable
define float @gmx_erfc(float %x) #1 {
entry:
  %0 = bitcast float %x to i32
  %and = and i32 %0, 2147483647
  %cmp = icmp ugt i32 %and, 2139095039
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %shr = lshr i32 %0, 31
  %shl = shl nuw nsw i32 %shr, 1
  %conv2 = uitofp i32 %shl to float
  %div = fdiv float 1.000000e+00, %x
  %add = fadd float %conv2, %div
  br label %return

if.end:                                           ; preds = %entry
  %cmp3 = icmp ult i32 %and, 1062731776
  br i1 %cmp3, label %if.then5, label %if.end39

if.then5:                                         ; preds = %if.end
  %cmp6 = icmp ult i32 %and, 595591168
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.then5
  %sub = fsub float 1.000000e+00, %x
  br label %return

if.end9:                                          ; preds = %if.then5
  %mul = fmul float %x, %x
  %mul10 = fmul float %mul, 0xBEF8EAD620000000
  %add11 = fadd float %mul10, 0xBF77A29120000000
  %mul12 = fmul float %mul, %add11
  %add13 = fadd float %mul12, 0xBF9D2A51E0000000
  %mul14 = fmul float %mul, %add13
  %add15 = fadd float %mul14, 0xBFD4CD7D60000000
  %mul16 = fmul float %mul, %add15
  %add17 = fadd float %mul16, 0x3FC06EBA80000000
  %mul18 = fmul float %mul, 0xBED09C4340000000
  %add19 = fadd float %mul18, 0x3F215DC920000000
  %mul20 = fmul float %mul, %add19
  %add21 = fadd float %mul20, 0x3F74D022C0000000
  %mul22 = fmul float %mul, %add21
  %add23 = fadd float %mul22, 0x3FB0A54C60000000
  %mul24 = fmul float %mul, %add23
  %add25 = fadd float %mul24, 0x3FD97779C0000000
  %mul26 = fmul float %mul, %add25
  %add27 = fadd float %mul26, 1.000000e+00
  %div28 = fdiv float %add17, %add27
  %cmp29 = icmp slt i32 %0, 1048576000
  %mul32 = fmul float %div28, %x
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end9
  %add33 = fadd float %mul32, %x
  %sub34 = fsub float 1.000000e+00, %add33
  br label %return

if.else:                                          ; preds = %if.end9
  %sub36 = fadd float %x, -5.000000e-01
  %add37 = fadd float %sub36, %mul32
  %sub38 = fsub float 5.000000e-01, %add37
  br label %return

if.end39:                                         ; preds = %if.end
  %cmp40 = icmp ult i32 %and, 1067450368
  br i1 %cmp40, label %if.then42, label %if.end79

if.then42:                                        ; preds = %if.end39
  %fabsf273 = tail call float @fabsf(float %x) #3
  %conv45 = fadd float %fabsf273, -1.000000e+00
  %mul46 = fmul float %conv45, 0xBF61BF3800000000
  %add47 = fadd float %mul46, 0x3FA22A3660000000
  %mul48 = fmul float %conv45, %add47
  %add49 = fadd float %mul48, 0xBFBC639840000000
  %mul50 = fmul float %conv45, %add49
  %add51 = fadd float %mul50, 0x3FD45FCA80000000
  %mul52 = fmul float %conv45, %add51
  %add53 = fadd float %mul52, 0xBFD7D24100000000
  %mul54 = fmul float %conv45, %add53
  %add55 = fadd float %mul54, 0x3FDA8D00A0000000
  %mul56 = fmul float %conv45, %add55
  %add57 = fadd float %mul56, 0xBF6359B8C0000000
  %mul58 = fmul float %conv45, 0x3F888B5460000000
  %add59 = fadd float %mul58, 0x3F8BEDC260000000
  %mul60 = fmul float %conv45, %add59
  %add61 = fadd float %mul60, 0x3FC02660E0000000
  %mul62 = fmul float %conv45, %add61
  %add63 = fadd float %mul62, 0x3FB2635CE0000000
  %mul64 = fmul float %conv45, %add63
  %add65 = fadd float %mul64, 0x3FE14AF0A0000000
  %mul66 = fmul float %conv45, %add65
  %add67 = fadd float %mul66, 0x3FBB3E6620000000
  %mul68 = fmul float %conv45, %add67
  %add69 = fadd float %mul68, 1.000000e+00
  %cmp70 = icmp sgt i32 %0, -1
  %div73 = fdiv float %add57, %add69
  br i1 %cmp70, label %if.then72, label %if.else75

if.then72:                                        ; preds = %if.then42
  %sub74 = fsub float 0x3FC3D4FA80000000, %div73
  br label %return

if.else75:                                        ; preds = %if.then42
  %add77 = fadd float %div73, 0x3FEB0AC160000000
  %add78 = fadd float %add77, 1.000000e+00
  br label %return

if.end79:                                         ; preds = %if.end39
  %cmp80 = icmp ult i32 %and, 1105199104
  br i1 %cmp80, label %if.then82, label %if.else181

if.then82:                                        ; preds = %if.end79
  %fabsf = tail call float @fabsf(float %x) #3
  %mul86 = fmul float %fabsf, %fabsf
  %div87 = fdiv float 1.000000e+00, %mul86
  %cmp88 = icmp ult i32 %and, 1077336941
  br i1 %cmp88, label %if.then90, label %if.else121

if.then90:                                        ; preds = %if.then82
  %mul91 = fmul float %div87, 0xC023A0EFC0000000
  %add92 = fadd float %mul91, 0xC054526560000000
  %mul93 = fmul float %div87, %add92
  %add94 = fadd float %mul93, 0xC067135CE0000000
  %mul95 = fmul float %div87, %add94
  %add96 = fadd float %mul95, 0xC0644CB180000000
  %mul97 = fmul float %div87, %add96
  %add98 = fadd float %mul97, 0xC04F300AE0000000
  %mul99 = fmul float %div87, %add98
  %add100 = fadd float %mul99, 0xC0251E0440000000
  %mul101 = fmul float %div87, %add100
  %add102 = fadd float %mul101, 0xBFE63416E0000000
  %mul103 = fmul float %div87, %add102
  %add104 = fadd float %mul103, 0xBF84341260000000
  %mul105 = fmul float %div87, 0xBFAEEFF2E0000000
  %add106 = fadd float %mul105, 0x401A47EF80000000
  %mul107 = fmul float %div87, %add106
  %add108 = fadd float %mul107, 0x405B28A3E0000000
  %mul109 = fmul float %div87, %add108
  %add110 = fadd float %mul109, 0x407AD02160000000
  %mul111 = fmul float %div87, %add110
  %add112 = fadd float %mul111, 0x40842B1920000000
  %mul113 = fmul float %div87, %add112
  %add114 = fadd float %mul113, 0x407B290DE0000000
  %mul115 = fmul float %div87, %add114
  %add116 = fadd float %mul115, 0x4061350C60000000
  %mul117 = fmul float %div87, %add116
  %add118 = fadd float %mul117, 0x4033A6B9C0000000
  br label %if.end154

if.else121:                                       ; preds = %if.then82
  %cmp122 = icmp slt i32 %0, 0
  %cmp124 = icmp ugt i32 %and, 1086324735
  %or.cond = and i1 %cmp122, %cmp124
  br i1 %or.cond, label %return, label %if.end127

if.end127:                                        ; preds = %if.else121
  %mul128 = fmul float %div87, 0xC07E384EA0000000
  %add129 = fadd float %mul128, 0xC090046160000000
  %mul130 = fmul float %div87, %add129
  %add131 = fadd float %mul130, 0xC083EC8820000000
  %mul132 = fmul float %div87, %add131
  %add133 = fadd float %mul132, 0xC064145D40000000
  %mul134 = fmul float %div87, %add133
  %add135 = fadd float %mul134, 0xC031C20960000000
  %mul136 = fmul float %div87, %add135
  %add137 = fadd float %mul136, 0xBFE993BA80000000
  %mul138 = fmul float %div87, %add137
  %add139 = fadd float %mul138, 0xBF84341240000000
  %mul140 = fmul float %div87, 0xC03670E240000000
  %add141 = fadd float %mul140, 0x407DA874E0000000
  %mul142 = fmul float %div87, %add141
  %add143 = fadd float %mul142, 0x40A3F219C0000000
  %mul144 = fmul float %div87, %add143
  %add145 = fadd float %mul144, 0x40A8FFB760000000
  %mul146 = fmul float %div87, %add145
  %add147 = fadd float %mul146, 0x409802EB20000000
  %mul148 = fmul float %div87, %add147
  %add149 = fadd float %mul148, 0x40745CAE20000000
  %mul150 = fmul float %div87, %add149
  %add151 = fadd float %mul150, 0x403E568B20000000
  br label %if.end154

if.end154:                                        ; preds = %if.end127, %if.then90
  %add118.pn = phi float [ %add118, %if.then90 ], [ %add151, %if.end127 ]
  %R.0 = phi float [ %add104, %if.then90 ], [ %add139, %if.end127 ]
  %S.0.in = fmul float %div87, %add118.pn
  %S.0 = fadd float %S.0.in, 1.000000e+00
  %1 = bitcast float %fabsf to i32
  %and157 = and i32 %1, -4096
  %2 = bitcast i32 %and157 to float
  %3 = fmul float %2, %2
  %sub162 = fsub float -5.625000e-01, %3
  %conv163 = fpext float %sub162 to double
  %call164 = tail call double @exp(double %conv163) #4
  %sub165 = fsub float %2, %fabsf
  %add166 = fadd float %fabsf, %2
  %mul167 = fmul float %sub165, %add166
  %div168 = fdiv float %R.0, %S.0
  %add169 = fadd float %mul167, %div168
  %conv170 = fpext float %add169 to double
  %call171 = tail call double @exp(double %conv170) #4
  %mul172 = fmul double %call164, %call171
  %conv173 = fptrunc double %mul172 to float
  %cmp174 = icmp sgt i32 %0, 0
  %div177 = fdiv float %conv173, %fabsf
  br i1 %cmp174, label %return, label %if.else178

if.else178:                                       ; preds = %if.end154
  %sub180 = fsub float 2.000000e+00, %div177
  br label %return

if.else181:                                       ; preds = %if.end79
  %cmp182 = icmp sgt i32 %0, 0
  %. = select i1 %cmp182, float 0.000000e+00, float 2.000000e+00
  br label %return

return:                                           ; preds = %if.else181, %if.end154, %if.else121, %if.else178, %if.else75, %if.then72, %if.else, %if.then31, %if.then8, %if.then
  %retval.0 = phi float [ %add, %if.then ], [ %sub, %if.then8 ], [ %sub34, %if.then31 ], [ %sub38, %if.else ], [ %sub74, %if.then72 ], [ %add78, %if.else75 ], [ %sub180, %if.else178 ], [ 2.000000e+00, %if.else121 ], [ %div177, %if.end154 ], [ %., %if.else181 ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define float @fast_float_erf(float %x) #1 {
entry:
  %conv = fpext float %x to double
  %mul = fmul double %conv, 5.000000e-01
  %add = fadd double %mul, 1.000000e+00
  %div = fdiv double 1.000000e+00, %add
  %conv1 = fptrunc double %div to float
  %conv2 = fpext float %conv1 to double
  %0 = fmul float %x, %x
  %mul3 = fsub float -0.000000e+00, %0
  %conv4 = fpext float %mul3 to double
  %sub5 = fadd double %conv4, 0xBFF43F89C0889BC5
  %mul15 = fmul double %conv2, 0x3FC5DF28AF76A5A4
  %add16 = fadd double %mul15, 0xBFEA4F123185DEFD
  %mul17 = fmul double %conv2, %add16
  %add18 = fadd double %mul17, 0x3FF7D0F60453A1BE
  %mul19 = fmul double %conv2, %add18
  %add20 = fadd double %mul19, 0xBFF229CBA6063980
  %mul21 = fmul double %conv2, %add20
  %add22 = fadd double %mul21, 0x3FD1D8F976231CE6
  %mul23 = fmul double %conv2, %add22
  %add24 = fadd double %mul23, 0xBFC7D84982AAEAA5
  %mul25 = fmul double %conv2, %add24
  %add26 = fadd double %mul25, 9.678418e-02
  %mul27 = fmul double %conv2, %add26
  %add28 = fadd double %mul27, 0x3FD7F11F677960EA
  %mul29 = fmul double %conv2, %add28
  %add30 = fadd double %mul29, 0x3FF00018D48D3588
  %mul31 = fmul double %conv2, %add30
  %add32 = fadd double %sub5, %mul31
  %call = tail call double @exp(double %add32) #4
  %mul33 = fmul double %call, %conv2
  %conv34 = fptrunc double %mul33 to float
  %conv37 = fsub float 1.000000e+00, %conv34
  ret float %conv37
}

; Function Attrs: nounwind optsize uwtable
define float @fast_float_erfc(float %x) #1 {
entry:
  %conv = fpext float %x to double
  %mul = fmul double %conv, 5.000000e-01
  %add = fadd double %mul, 1.000000e+00
  %div = fdiv double 1.000000e+00, %add
  %conv1 = fptrunc double %div to float
  %conv2 = fpext float %conv1 to double
  %0 = fmul float %x, %x
  %mul3 = fsub float -0.000000e+00, %0
  %conv4 = fpext float %mul3 to double
  %sub5 = fadd double %conv4, 0xBFF43F89C0889BC5
  %mul15 = fmul double %conv2, 0x3FC5DF28AF76A5A4
  %add16 = fadd double %mul15, 0xBFEA4F123185DEFD
  %mul17 = fmul double %conv2, %add16
  %add18 = fadd double %mul17, 0x3FF7D0F60453A1BE
  %mul19 = fmul double %conv2, %add18
  %add20 = fadd double %mul19, 0xBFF229CBA6063980
  %mul21 = fmul double %conv2, %add20
  %add22 = fadd double %mul21, 0x3FD1D8F976231CE6
  %mul23 = fmul double %conv2, %add22
  %add24 = fadd double %mul23, 0xBFC7D84982AAEAA5
  %mul25 = fmul double %conv2, %add24
  %add26 = fadd double %mul25, 9.678418e-02
  %mul27 = fmul double %conv2, %add26
  %add28 = fadd double %mul27, 0x3FD7F11F677960EA
  %mul29 = fmul double %conv2, %add28
  %add30 = fadd double %mul29, 0x3FF00018D48D3588
  %mul31 = fmul double %conv2, %add30
  %add32 = fadd double %sub5, %mul31
  %call = tail call double @exp(double %add32) #4
  %mul33 = fmul double %call, %conv2
  %conv34 = fptrunc double %mul33 to float
  ret float %conv34
}

declare float @fabsf(float)

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }

; ModuleID = '../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, %struct.arc*, %struct.arc*, %struct.arc*, i64, i64, i32, i32 }
%struct.arc = type { i64, %struct.node*, %struct.node*, i32, %struct.arc*, %struct.arc*, i64, i64 }

; Function Attrs: nounwind optsize uwtable
define void @update_tree(i64 %cycle_ori, i64 %new_orientation, i64 %delta, i64 %new_flow, %struct.node* %iplus, %struct.node* %jplus, %struct.node* %iminus, %struct.node* %jminus, %struct.node* %w, %struct.arc* %bea, i64 %sigma, i64 %feas_tol) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{i64 %cycle_ori}, i64 0, metadata !48), !dbg !70
  tail call void @llvm.dbg.value(metadata !{i64 %new_orientation}, i64 0, metadata !49), !dbg !71
  tail call void @llvm.dbg.value(metadata !{i64 %delta}, i64 0, metadata !50), !dbg !72
  tail call void @llvm.dbg.value(metadata !{i64 %new_flow}, i64 0, metadata !51), !dbg !73
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iplus}, i64 0, metadata !52), !dbg !74
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jplus}, i64 0, metadata !53), !dbg !75
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iminus}, i64 0, metadata !54), !dbg !76
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jminus}, i64 0, metadata !55), !dbg !77
  tail call void @llvm.dbg.value(metadata !{%struct.node* %w}, i64 0, metadata !56), !dbg !78
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %bea}, i64 0, metadata !57), !dbg !79
  tail call void @llvm.dbg.value(metadata !{i64 %sigma}, i64 0, metadata !58), !dbg !80
  tail call void @llvm.dbg.value(metadata !{i64 %feas_tol}, i64 0, metadata !59), !dbg !81
  %tail = getelementptr inbounds %struct.arc* %bea, i64 0, i32 1, !dbg !82
  %0 = load %struct.node** %tail, align 8, !dbg !82, !tbaa !83
  %cmp = icmp eq %struct.node* %0, %jplus, !dbg !82
  %cmp1 = icmp slt i64 %sigma, 0, !dbg !82
  %or.cond = and i1 %cmp, %cmp1, !dbg !82
  br i1 %or.cond, label %if.then, label %lor.lhs.false, !dbg !82

lor.lhs.false:                                    ; preds = %entry
  %cmp3 = icmp eq %struct.node* %0, %iplus, !dbg !82
  %cmp5 = icmp sgt i64 %sigma, 0, !dbg !82
  %or.cond211 = and i1 %cmp3, %cmp5, !dbg !82
  br i1 %or.cond211, label %if.then, label %if.else, !dbg !82

if.then:                                          ; preds = %lor.lhs.false, %entry
  %cmp6 = icmp sgt i64 %sigma, -1, !dbg !86
  %sub = sub nsw i64 0, %sigma, !dbg !86
  %cond = select i1 %cmp6, i64 %sigma, i64 %sub, !dbg !86
  tail call void @llvm.dbg.value(metadata !{i64 %cond}, i64 0, metadata !58), !dbg !86
  br label %if.end, !dbg !86

if.else:                                          ; preds = %lor.lhs.false
  %cmp7 = icmp sgt i64 %sigma, -1, !dbg !87
  %sub10 = sub nsw i64 0, %sigma, !dbg !87
  %cond12 = select i1 %cmp7, i64 %sigma, i64 %sub10, !dbg !87
  %sub13 = sub nsw i64 0, %cond12, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i64 %sub13}, i64 0, metadata !58), !dbg !87
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sigma.addr.0 = phi i64 [ %cond, %if.then ], [ %sub13, %if.else ]
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iminus}, i64 0, metadata !62), !dbg !88
  %potential = getelementptr inbounds %struct.node* %iminus, i64 0, i32 0, !dbg !89
  %1 = load i64* %potential, align 8, !dbg !89, !tbaa !90
  %add = add nsw i64 %1, %sigma.addr.0, !dbg !89
  store i64 %add, i64* %potential, align 8, !dbg !89, !tbaa !90
  br label %RECURSION, !dbg !89

RECURSION:                                        ; preds = %ITERATION, %if.end
  %father.0 = phi %struct.node* [ %iminus, %if.end ], [ %temp.0, %ITERATION ]
  %child = getelementptr inbounds %struct.node* %father.0, i64 0, i32 2, !dbg !91
  %2 = load %struct.node** %child, align 8, !dbg !91, !tbaa !83
  tail call void @llvm.dbg.value(metadata !{%struct.node* %2}, i64 0, metadata !63), !dbg !91
  %tobool = icmp eq %struct.node* %2, null, !dbg !92
  br i1 %tobool, label %TEST.preheader, label %ITERATION, !dbg !92

TEST.preheader:                                   ; preds = %RECURSION
  %cmp18232 = icmp eq %struct.node* %father.0, %iminus, !dbg !93
  br i1 %cmp18232, label %CONTINUE, label %if.end20, !dbg !93

ITERATION:                                        ; preds = %if.end20, %RECURSION
  %temp.0 = phi %struct.node* [ %2, %RECURSION ], [ %4, %if.end20 ]
  %potential15 = getelementptr inbounds %struct.node* %temp.0, i64 0, i32 0, !dbg !94
  %3 = load i64* %potential15, align 8, !dbg !94, !tbaa !90
  %add16 = add nsw i64 %3, %sigma.addr.0, !dbg !94
  store i64 %add16, i64* %potential15, align 8, !dbg !94, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{%struct.node* %temp.0}, i64 0, metadata !62), !dbg !96
  br label %RECURSION, !dbg !97

if.end20:                                         ; preds = %TEST.preheader, %if.end23
  %father.1233 = phi %struct.node* [ %5, %if.end23 ], [ %father.0, %TEST.preheader ]
  %sibling = getelementptr inbounds %struct.node* %father.1233, i64 0, i32 4, !dbg !98
  %4 = load %struct.node** %sibling, align 8, !dbg !98, !tbaa !83
  tail call void @llvm.dbg.value(metadata !{%struct.node* %4}, i64 0, metadata !63), !dbg !98
  %tobool21 = icmp eq %struct.node* %4, null, !dbg !99
  br i1 %tobool21, label %if.end23, label %ITERATION, !dbg !99

if.end23:                                         ; preds = %if.end20
  %pred = getelementptr inbounds %struct.node* %father.1233, i64 0, i32 3, !dbg !100
  %5 = load %struct.node** %pred, align 8, !dbg !100, !tbaa !83
  tail call void @llvm.dbg.value(metadata !{%struct.node* %5}, i64 0, metadata !62), !dbg !100
  %cmp18 = icmp eq %struct.node* %5, %iminus, !dbg !93
  br i1 %cmp18, label %CONTINUE, label %if.end20, !dbg !93

CONTINUE:                                         ; preds = %TEST.preheader, %if.end23
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iplus}, i64 0, metadata !63), !dbg !101
  %depth = getelementptr inbounds %struct.node* %iminus, i64 0, i32 11, !dbg !102
  %6 = load i64* %depth, align 8, !dbg !102, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i64 %6}, i64 0, metadata !67), !dbg !102
  tail call void @llvm.dbg.value(metadata !{i64 %6}, i64 0, metadata !68), !dbg !102
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jplus}, i64 0, metadata !64), !dbg !103
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %bea}, i64 0, metadata !61), !dbg !104
  %cmp25223 = icmp eq %struct.node* %iplus, %jminus, !dbg !105
  br i1 %cmp25223, label %while.end, label %while.body.lr.ph, !dbg !105

while.body.lr.ph:                                 ; preds = %CONTINUE
  %7 = sub i64 0, %delta, !dbg !106
  br label %while.body, !dbg !105

while.body:                                       ; preds = %while.body.lr.ph, %if.end50
  %iplus.pn = phi %struct.node* [ %iplus, %while.body.lr.ph ], [ %father.2231, %if.end50 ]
  %new_depth.0229 = phi i64 [ %6, %while.body.lr.ph ], [ %sub68, %if.end50 ]
  %new_orientation.addr.0228 = phi i64 [ %new_orientation, %while.body.lr.ph ], [ %conv, %if.end50 ]
  %new_flow.addr.0227 = phi i64 [ %new_flow, %while.body.lr.ph ], [ %flow_temp.0, %if.end50 ]
  %new_pred.0226 = phi %struct.node* [ %jplus, %while.body.lr.ph ], [ %iplus.pn225, %if.end50 ]
  %iplus.pn225 = phi %struct.node* [ %iplus, %while.body.lr.ph ], [ %father.2231, %if.end50 ]
  %new_basic_arc.0224 = phi %struct.arc* [ %bea, %while.body.lr.ph ], [ %15, %if.end50 ]
  %father.2231.in = getelementptr inbounds %struct.node* %iplus.pn, i64 0, i32 3, !dbg !108
  %father.2231 = load %struct.node** %father.2231.in, align 8, !dbg !108
  %sibling26 = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 4, !dbg !109
  %8 = load %struct.node** %sibling26, align 8, !dbg !109, !tbaa !83
  %tobool27 = icmp eq %struct.node* %8, null, !dbg !109
  %sibling_prev32.pre = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 5, !dbg !110
  br i1 %tobool27, label %if.end31, label %if.then28, !dbg !109

if.then28:                                        ; preds = %while.body
  %9 = load %struct.node** %sibling_prev32.pre, align 8, !dbg !111, !tbaa !83
  %sibling_prev30 = getelementptr inbounds %struct.node* %8, i64 0, i32 5, !dbg !111
  store %struct.node* %9, %struct.node** %sibling_prev30, align 8, !dbg !111, !tbaa !83
  %.pre = load %struct.node** %sibling26, align 8, !dbg !112, !tbaa !83
  br label %if.end31, !dbg !111

if.end31:                                         ; preds = %while.body, %if.then28
  %10 = phi %struct.node* [ %.pre, %if.then28 ], [ null, %while.body ]
  %11 = load %struct.node** %sibling_prev32.pre, align 8, !dbg !110, !tbaa !83
  %tobool33 = icmp eq %struct.node* %11, null, !dbg !110
  br i1 %tobool33, label %if.else38, label %if.then34, !dbg !110

if.then34:                                        ; preds = %if.end31
  %sibling37 = getelementptr inbounds %struct.node* %11, i64 0, i32 4, !dbg !112
  store %struct.node* %10, %struct.node** %sibling37, align 8, !dbg !112, !tbaa !83
  br label %if.end41, !dbg !112

if.else38:                                        ; preds = %if.end31
  %child40 = getelementptr inbounds %struct.node* %father.2231, i64 0, i32 2, !dbg !113
  store %struct.node* %10, %struct.node** %child40, align 8, !dbg !113, !tbaa !83
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then34
  store %struct.node* %new_pred.0226, %struct.node** %father.2231.in, align 8, !dbg !114, !tbaa !83
  %child43 = getelementptr inbounds %struct.node* %new_pred.0226, i64 0, i32 2, !dbg !115
  %12 = load %struct.node** %child43, align 8, !dbg !115, !tbaa !83
  store %struct.node* %12, %struct.node** %sibling26, align 8, !dbg !115, !tbaa !83
  %tobool46 = icmp eq %struct.node* %12, null, !dbg !116
  br i1 %tobool46, label %if.end50, label %if.then47, !dbg !116

if.then47:                                        ; preds = %if.end41
  %sibling_prev49 = getelementptr inbounds %struct.node* %12, i64 0, i32 5, !dbg !117
  store %struct.node* %iplus.pn225, %struct.node** %sibling_prev49, align 8, !dbg !117, !tbaa !83
  br label %if.end50, !dbg !117

if.end50:                                         ; preds = %if.end41, %if.then47
  store %struct.node* %iplus.pn225, %struct.node** %child43, align 8, !dbg !118, !tbaa !83
  store %struct.node* null, %struct.node** %sibling_prev32.pre, align 8, !dbg !119, !tbaa !83
  %orientation = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 1, !dbg !120
  %13 = load i32* %orientation, align 4, !dbg !120, !tbaa !121
  %lnot = icmp eq i32 %13, 0, !dbg !120
  %conv = zext i1 %lnot to i64, !dbg !120
  tail call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !65), !dbg !120
  %cmp54 = icmp eq i64 %conv, %cycle_ori, !dbg !106
  %flow = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 10, !dbg !122
  %14 = load i64* %flow, align 8, !dbg !122, !tbaa !90
  %flow_temp.0.p = select i1 %cmp54, i64 %delta, i64 %7, !dbg !106
  %flow_temp.0 = add i64 %flow_temp.0.p, %14, !dbg !106
  %basic_arc = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 6, !dbg !123
  %15 = load %struct.arc** %basic_arc, align 8, !dbg !123, !tbaa !83
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %15}, i64 0, metadata !60), !dbg !123
  %depth62 = getelementptr inbounds %struct.node* %iplus.pn225, i64 0, i32 11, !dbg !124
  %16 = load i64* %depth62, align 8, !dbg !124, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{i64 %16}, i64 0, metadata !66), !dbg !124
  %conv63 = trunc i64 %new_orientation.addr.0228 to i32, !dbg !125
  store i32 %conv63, i32* %orientation, align 4, !dbg !125, !tbaa !121
  store i64 %new_flow.addr.0227, i64* %flow, align 8, !dbg !126, !tbaa !90
  store %struct.arc* %new_basic_arc.0224, %struct.arc** %basic_arc, align 8, !dbg !127, !tbaa !83
  store i64 %new_depth.0229, i64* %depth62, align 8, !dbg !128, !tbaa !90
  tail call void @llvm.dbg.value(metadata !{%struct.node* %iplus.pn225}, i64 0, metadata !64), !dbg !129
  tail call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !49), !dbg !130
  tail call void @llvm.dbg.value(metadata !{i64 %flow_temp.0}, i64 0, metadata !51), !dbg !131
  tail call void @llvm.dbg.value(metadata !{%struct.arc* %15}, i64 0, metadata !61), !dbg !132
  %sub68 = sub nsw i64 %6, %16, !dbg !133
  tail call void @llvm.dbg.value(metadata !{i64 %sub68}, i64 0, metadata !68), !dbg !133
  tail call void @llvm.dbg.value(metadata !{%struct.node* %father.2231}, i64 0, metadata !63), !dbg !134
  %cmp25 = icmp eq %struct.node* %father.2231, %jminus, !dbg !105
  br i1 %cmp25, label %while.end, label %while.body, !dbg !105

while.end:                                        ; preds = %if.end50, %CONTINUE
  %cmp70 = icmp sgt i64 %delta, %feas_tol, !dbg !135
  tail call void @llvm.dbg.value(metadata !{%struct.node* %jminus}, i64 0, metadata !63), !dbg !136
  %cmp73214 = icmp eq %struct.node* %jminus, %w, !dbg !136
  br i1 %cmp70, label %for.cond.preheader, label %for.cond110.preheader, !dbg !135

for.cond110.preheader:                            ; preds = %while.end
  br i1 %cmp73214, label %for.cond119.preheader, label %for.body113, !dbg !139

for.cond.preheader:                               ; preds = %while.end
  br i1 %cmp73214, label %for.cond89.preheader, label %for.body.lr.ph, !dbg !136

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %17 = sub i64 0, %delta, !dbg !142
  br label %for.body, !dbg !136

for.cond89.preheader:                             ; preds = %for.body, %for.cond.preheader
  %cmp90212 = icmp eq %struct.node* %jplus, %w, !dbg !144
  br i1 %cmp90212, label %if.end128, label %for.body92.lr.ph, !dbg !144

for.body92.lr.ph:                                 ; preds = %for.cond89.preheader
  %18 = sub i64 0, %delta, !dbg !146
  br label %for.body92, !dbg !144

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %temp.2215 = phi %struct.node* [ %jminus, %for.body.lr.ph ], [ %22, %for.body ]
  %depth75 = getelementptr inbounds %struct.node* %temp.2215, i64 0, i32 11, !dbg !148
  %19 = load i64* %depth75, align 8, !dbg !148, !tbaa !90
  %sub76 = sub nsw i64 %19, %6, !dbg !148
  store i64 %sub76, i64* %depth75, align 8, !dbg !148, !tbaa !90
  %orientation77 = getelementptr inbounds %struct.node* %temp.2215, i64 0, i32 1, !dbg !142
  %20 = load i32* %orientation77, align 4, !dbg !142, !tbaa !121
  %conv78 = sext i32 %20 to i64, !dbg !142
  %cmp79 = icmp eq i64 %conv78, %cycle_ori, !dbg !142
  %flow82 = getelementptr inbounds %struct.node* %temp.2215, i64 0, i32 10, !dbg !149
  %21 = load i64* %flow82, align 8, !dbg !149, !tbaa !90
  %storemerge210.p = select i1 %cmp79, i64 %17, i64 %delta, !dbg !142
  %storemerge210 = add i64 %storemerge210.p, %21, !dbg !142
  store i64 %storemerge210, i64* %flow82, align 8, !dbg !149, !tbaa !90
  %pred88 = getelementptr inbounds %struct.node* %temp.2215, i64 0, i32 3, !dbg !136
  %22 = load %struct.node** %pred88, align 8, !dbg !136, !tbaa !83
  tail call void @llvm.dbg.value(metadata !{%struct.node* %22}, i64 0, metadata !63), !dbg !136
  %cmp73 = icmp eq %struct.node* %22, %w, !dbg !136
  br i1 %cmp73, label %for.cond89.preheader, label %for.body, !dbg !136

for.body92:                                       ; preds = %for.body92.lr.ph, %for.body92
  %temp.3213 = phi %struct.node* [ %jplus, %for.body92.lr.ph ], [ %26, %for.body92 ]
  %depth93 = getelementptr inbounds %struct.node* %temp.3213, i64 0, i32 11, !dbg !150
  %23 = load i64* %depth93, align 8, !dbg !150, !tbaa !90
  %add94 = add nsw i64 %23, %6, !dbg !150
  store i64 %add94, i64* %depth93, align 8, !dbg !150, !tbaa !90
  %orientation95 = getelementptr inbounds %struct.node* %temp.3213, i64 0, i32 1, !dbg !146
  %24 = load i32* %orientation95, align 4, !dbg !146, !tbaa !121
  %conv96 = sext i32 %24 to i64, !dbg !146
  %cmp97 = icmp eq i64 %conv96, %cycle_ori, !dbg !146
  %flow100 = getelementptr inbounds %struct.node* %temp.3213, i64 0, i32 10, !dbg !151
  %25 = load i64* %flow100, align 8, !dbg !151, !tbaa !90
  %storemerge.p = select i1 %cmp97, i64 %delta, i64 %18, !dbg !146
  %storemerge = add i64 %storemerge.p, %25, !dbg !146
  store i64 %storemerge, i64* %flow100, align 8, !dbg !151, !tbaa !90
  %pred107 = getelementptr inbounds %struct.node* %temp.3213, i64 0, i32 3, !dbg !144
  %26 = load %struct.node** %pred107, align 8, !dbg !144, !tbaa !83
  tail call void @llvm.dbg.value(metadata !{%struct.node* %26}, i64 0, metadata !63), !dbg !144
  %cmp90 = icmp eq %struct.node* %26, %w, !dbg !144
  br i1 %cmp90, label %if.end128, label %for.body92, !dbg !144

for.cond119.preheader:                            ; preds = %for.body113, %for.cond110.preheader
  %cmp120217 = icmp eq %struct.node* %jplus, %w, !dbg !152
  br i1 %cmp120217, label %if.end128, label %for.body122, !dbg !152

for.body113:                                      ; preds = %for.cond110.preheader, %for.body113
  %temp.4220 = phi %struct.node* [ %28, %for.body113 ], [ %jminus, %for.cond110.preheader ]
  %depth114 = getelementptr inbounds %struct.node* %temp.4220, i64 0, i32 11, !dbg !154
  %27 = load i64* %depth114, align 8, !dbg !154, !tbaa !90
  %sub115 = sub nsw i64 %27, %6, !dbg !154
  store i64 %sub115, i64* %depth114, align 8, !dbg !154, !tbaa !90
  %pred117 = getelementptr inbounds %struct.node* %temp.4220, i64 0, i32 3, !dbg !139
  %28 = load %struct.node** %pred117, align 8, !dbg !139, !tbaa !83
  tail call void @llvm.dbg.value(metadata !{%struct.node* %28}, i64 0, metadata !63), !dbg !139
  %cmp111 = icmp eq %struct.node* %28, %w, !dbg !139
  br i1 %cmp111, label %for.cond119.preheader, label %for.body113, !dbg !139

for.body122:                                      ; preds = %for.cond119.preheader, %for.body122
  %temp.5218 = phi %struct.node* [ %30, %for.body122 ], [ %jplus, %for.cond119.preheader ]
  %depth123 = getelementptr inbounds %struct.node* %temp.5218, i64 0, i32 11, !dbg !155
  %29 = load i64* %depth123, align 8, !dbg !155, !tbaa !90
  %add124 = add nsw i64 %29, %6, !dbg !155
  store i64 %add124, i64* %depth123, align 8, !dbg !155, !tbaa !90
  %pred126 = getelementptr inbounds %struct.node* %temp.5218, i64 0, i32 3, !dbg !152
  %30 = load %struct.node** %pred126, align 8, !dbg !152, !tbaa !83
  tail call void @llvm.dbg.value(metadata !{%struct.node* %30}, i64 0, metadata !63), !dbg !152
  %cmp120 = icmp eq %struct.node* %30, %w, !dbg !152
  br i1 %cmp120, label %if.end128, label %for.body122, !dbg !152

if.end128:                                        ; preds = %for.cond119.preheader, %for.body122, %for.cond89.preheader, %for.body92
  ret void, !dbg !156
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"update_tree", metadata !"update_tree", metadata !"", i32 29, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i64, i64, i64, i64, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.node*, %struct.arc*, i64, i64)* @update_tree, null, null, metadata !47, i32 57} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 57] [update_tree]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !8, metadata !9, metadata !9, metadata !10, metadata !10, metadata !10, metadata !10, metadata !10, metadata !45, metadata !16, metadata !9}
!8 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"flow_t", i32 68, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [flow_t] [line 68, size 0, align 0, offset 0] [from long int]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node_t]
!11 = metadata !{i32 786454, metadata !1, null, metadata !"node_t", i32 99, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [node_t] [line 99, size 0, align 0, offset 0] [from node]
!12 = metadata !{i32 786451, metadata !13, null, metadata !"node", i32 107, i64 832, i64 64, i32 0, i32 0, null, metadata !14, i32 0, null, null} ; [ DW_TAG_structure_type ] [node] [line 107, size 832, align 64, offset 0] [from ]
!13 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/429.mcf/src/defines.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!14 = metadata !{metadata !15, metadata !17, metadata !19, metadata !22, metadata !23, metadata !24, metadata !25, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!15 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"potential", i32 109, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [potential] [line 109, size 64, align 64, offset 0] [from cost_t]
!16 = metadata !{i32 786454, metadata !13, null, metadata !"cost_t", i32 69, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_typedef ] [cost_t] [line 69, size 0, align 0, offset 0] [from long int]
!17 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"orientation", i32 110, i64 32, i64 32, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [orientation] [line 110, size 32, align 32, offset 64] [from int]
!18 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!19 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"child", i32 111, i64 64, i64 64, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [child] [line 111, size 64, align 64, offset 128] [from node_p]
!20 = metadata !{i32 786454, metadata !13, null, metadata !"node_p", i32 100, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [node_p] [line 100, size 0, align 0, offset 0] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from node]
!22 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"pred", i32 112, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [pred] [line 112, size 64, align 64, offset 192] [from node_p]
!23 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"sibling", i32 113, i64 64, i64 64, i64 256, i32 0, metadata !20} ; [ DW_TAG_member ] [sibling] [line 113, size 64, align 64, offset 256] [from node_p]
!24 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"sibling_prev", i32 114, i64 64, i64 64, i64 320, i32 0, metadata !20} ; [ DW_TAG_member ] [sibling_prev] [line 114, size 64, align 64, offset 320] [from node_p]
!25 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"basic_arc", i32 115, i64 64, i64 64, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [basic_arc] [line 115, size 64, align 64, offset 384] [from arc_p]
!26 = metadata !{i32 786454, metadata !13, null, metadata !"arc_p", i32 103, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [arc_p] [line 103, size 0, align 0, offset 0] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc]
!28 = metadata !{i32 786451, metadata !13, null, metadata !"arc", i32 126, i64 512, i64 64, i32 0, i32 0, null, metadata !29, i32 0, null, null} ; [ DW_TAG_structure_type ] [arc] [line 126, size 512, align 64, offset 0] [from ]
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37}
!30 = metadata !{i32 786445, metadata !13, metadata !28, metadata !"cost", i32 128, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [cost] [line 128, size 64, align 64, offset 0] [from cost_t]
!31 = metadata !{i32 786445, metadata !13, metadata !28, metadata !"tail", i32 129, i64 64, i64 64, i64 64, i32 0, metadata !20} ; [ DW_TAG_member ] [tail] [line 129, size 64, align 64, offset 64] [from node_p]
!32 = metadata !{i32 786445, metadata !13, metadata !28, metadata !"head", i32 129, i64 64, i64 64, i64 128, i32 0, metadata !20} ; [ DW_TAG_member ] [head] [line 129, size 64, align 64, offset 128] [from node_p]
!33 = metadata !{i32 786445, metadata !13, metadata !28, metadata !"ident", i32 130, i64 32, i64 32, i64 192, i32 0, metadata !18} ; [ DW_TAG_member ] [ident] [line 130, size 32, align 32, offset 192] [from int]
!34 = metadata !{i32 786445, metadata !13, metadata !28, metadata !"nextout", i32 131, i64 64, i64 64, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [nextout] [line 131, size 64, align 64, offset 256] [from arc_p]
!35 = metadata !{i32 786445, metadata !13, metadata !28, metadata !"nextin", i32 131, i64 64, i64 64, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [nextin] [line 131, size 64, align 64, offset 320] [from arc_p]
!36 = metadata !{i32 786445, metadata !13, metadata !28, metadata !"flow", i32 132, i64 64, i64 64, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [flow] [line 132, size 64, align 64, offset 384] [from flow_t]
!37 = metadata !{i32 786445, metadata !13, metadata !28, metadata !"org_cost", i32 133, i64 64, i64 64, i64 448, i32 0, metadata !16} ; [ DW_TAG_member ] [org_cost] [line 133, size 64, align 64, offset 448] [from cost_t]
!38 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"firstout", i32 116, i64 64, i64 64, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [firstout] [line 116, size 64, align 64, offset 448] [from arc_p]
!39 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"firstin", i32 116, i64 64, i64 64, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [firstin] [line 116, size 64, align 64, offset 512] [from arc_p]
!40 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"arc_tmp", i32 117, i64 64, i64 64, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [arc_tmp] [line 117, size 64, align 64, offset 576] [from arc_p]
!41 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"flow", i32 118, i64 64, i64 64, i64 640, i32 0, metadata !9} ; [ DW_TAG_member ] [flow] [line 118, size 64, align 64, offset 640] [from flow_t]
!42 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"depth", i32 119, i64 64, i64 64, i64 704, i32 0, metadata !8} ; [ DW_TAG_member ] [depth] [line 119, size 64, align 64, offset 704] [from long int]
!43 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"number", i32 120, i64 32, i64 32, i64 768, i32 0, metadata !18} ; [ DW_TAG_member ] [number] [line 120, size 32, align 32, offset 768] [from int]
!44 = metadata !{i32 786445, metadata !13, metadata !12, metadata !"time", i32 121, i64 32, i64 32, i64 800, i32 0, metadata !18} ; [ DW_TAG_member ] [time] [line 121, size 32, align 32, offset 800] [from int]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from arc_t]
!46 = metadata !{i32 786454, metadata !1, null, metadata !"arc_t", i32 102, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [arc_t] [line 102, size 0, align 0, offset 0] [from arc]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69}
!48 = metadata !{i32 786689, metadata !4, metadata !"cycle_ori", metadata !5, i32 16777246, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle_ori] [line 30]
!49 = metadata !{i32 786689, metadata !4, metadata !"new_orientation", metadata !5, i32 33554463, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [new_orientation] [line 31]
!50 = metadata !{i32 786689, metadata !4, metadata !"delta", metadata !5, i32 50331680, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [delta] [line 32]
!51 = metadata !{i32 786689, metadata !4, metadata !"new_flow", metadata !5, i32 67108897, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [new_flow] [line 33]
!52 = metadata !{i32 786689, metadata !4, metadata !"iplus", metadata !5, i32 83886114, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iplus] [line 34]
!53 = metadata !{i32 786689, metadata !4, metadata !"jplus", metadata !5, i32 100663331, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jplus] [line 35]
!54 = metadata !{i32 786689, metadata !4, metadata !"iminus", metadata !5, i32 117440548, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [iminus] [line 36]
!55 = metadata !{i32 786689, metadata !4, metadata !"jminus", metadata !5, i32 134217765, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [jminus] [line 37]
!56 = metadata !{i32 786689, metadata !4, metadata !"w", metadata !5, i32 150994982, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 38]
!57 = metadata !{i32 786689, metadata !4, metadata !"bea", metadata !5, i32 167772199, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bea] [line 39]
!58 = metadata !{i32 786689, metadata !4, metadata !"sigma", metadata !5, i32 184549416, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sigma] [line 40]
!59 = metadata !{i32 786689, metadata !4, metadata !"feas_tol", metadata !5, i32 201326633, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [feas_tol] [line 41]
!60 = metadata !{i32 786688, metadata !4, metadata !"basic_arc_temp", metadata !5, i32 58, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [basic_arc_temp] [line 58]
!61 = metadata !{i32 786688, metadata !4, metadata !"new_basic_arc", metadata !5, i32 59, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_basic_arc] [line 59]
!62 = metadata !{i32 786688, metadata !4, metadata !"father", metadata !5, i32 60, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [father] [line 60]
!63 = metadata !{i32 786688, metadata !4, metadata !"temp", metadata !5, i32 61, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 61]
!64 = metadata !{i32 786688, metadata !4, metadata !"new_pred", metadata !5, i32 62, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_pred] [line 62]
!65 = metadata !{i32 786688, metadata !4, metadata !"orientation_temp", metadata !5, i32 63, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [orientation_temp] [line 63]
!66 = metadata !{i32 786688, metadata !4, metadata !"depth_temp", metadata !5, i32 64, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [depth_temp] [line 64]
!67 = metadata !{i32 786688, metadata !4, metadata !"depth_iminus", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [depth_iminus] [line 65]
!68 = metadata !{i32 786688, metadata !4, metadata !"new_depth", metadata !5, i32 66, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_depth] [line 66]
!69 = metadata !{i32 786688, metadata !4, metadata !"flow_temp", metadata !5, i32 67, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flow_temp] [line 67]
!70 = metadata !{i32 30, i32 0, metadata !4, null}
!71 = metadata !{i32 31, i32 0, metadata !4, null}
!72 = metadata !{i32 32, i32 0, metadata !4, null}
!73 = metadata !{i32 33, i32 0, metadata !4, null}
!74 = metadata !{i32 34, i32 0, metadata !4, null}
!75 = metadata !{i32 35, i32 0, metadata !4, null}
!76 = metadata !{i32 36, i32 0, metadata !4, null}
!77 = metadata !{i32 37, i32 0, metadata !4, null}
!78 = metadata !{i32 38, i32 0, metadata !4, null}
!79 = metadata !{i32 39, i32 0, metadata !4, null}
!80 = metadata !{i32 40, i32 0, metadata !4, null}
!81 = metadata !{i32 41, i32 0, metadata !4, null}
!82 = metadata !{i32 71, i32 0, metadata !4, null}
!83 = metadata !{metadata !"any pointer", metadata !84}
!84 = metadata !{metadata !"omnipotent char", metadata !85}
!85 = metadata !{metadata !"Simple C/C++ TBAA"}
!86 = metadata !{i32 73, i32 0, metadata !4, null}
!87 = metadata !{i32 75, i32 0, metadata !4, null}
!88 = metadata !{i32 77, i32 0, metadata !4, null}
!89 = metadata !{i32 78, i32 0, metadata !4, null}
!90 = metadata !{metadata !"long", metadata !84}
!91 = metadata !{i32 80, i32 0, metadata !4, null}
!92 = metadata !{i32 81, i32 0, metadata !4, null}
!93 = metadata !{i32 89, i32 0, metadata !4, null}
!94 = metadata !{i32 84, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !4, i32 82, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!96 = metadata !{i32 85, i32 0, metadata !95, null}
!97 = metadata !{i32 86, i32 0, metadata !95, null}
!98 = metadata !{i32 91, i32 0, metadata !4, null}
!99 = metadata !{i32 92, i32 0, metadata !4, null}
!100 = metadata !{i32 94, i32 0, metadata !4, null}
!101 = metadata !{i32 101, i32 0, metadata !4, null}
!102 = metadata !{i32 103, i32 0, metadata !4, null}
!103 = metadata !{i32 104, i32 0, metadata !4, null}
!104 = metadata !{i32 105, i32 0, metadata !4, null}
!105 = metadata !{i32 106, i32 0, metadata !4, null}
!106 = metadata !{i32 123, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !4, i32 107, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!108 = metadata !{i32 102, i32 0, metadata !4, null}
!109 = metadata !{i32 108, i32 0, metadata !107, null}
!110 = metadata !{i32 110, i32 0, metadata !107, null}
!111 = metadata !{i32 109, i32 0, metadata !107, null}
!112 = metadata !{i32 111, i32 0, metadata !107, null}
!113 = metadata !{i32 112, i32 0, metadata !107, null}
!114 = metadata !{i32 115, i32 0, metadata !107, null}
!115 = metadata !{i32 116, i32 0, metadata !107, null}
!116 = metadata !{i32 117, i32 0, metadata !107, null}
!117 = metadata !{i32 118, i32 0, metadata !107, null}
!118 = metadata !{i32 119, i32 0, metadata !107, null}
!119 = metadata !{i32 120, i32 0, metadata !107, null}
!120 = metadata !{i32 122, i32 0, metadata !107, null}
!121 = metadata !{metadata !"int", metadata !84}
!122 = metadata !{i32 124, i32 0, metadata !107, null}
!123 = metadata !{i32 127, i32 0, metadata !107, null}
!124 = metadata !{i32 128, i32 0, metadata !107, null}
!125 = metadata !{i32 130, i32 0, metadata !107, null}
!126 = metadata !{i32 131, i32 0, metadata !107, null}
!127 = metadata !{i32 132, i32 0, metadata !107, null}
!128 = metadata !{i32 133, i32 0, metadata !107, null}
!129 = metadata !{i32 135, i32 0, metadata !107, null}
!130 = metadata !{i32 136, i32 0, metadata !107, null}
!131 = metadata !{i32 137, i32 0, metadata !107, null}
!132 = metadata !{i32 138, i32 0, metadata !107, null}
!133 = metadata !{i32 139, i32 0, metadata !107, null}
!134 = metadata !{i32 140, i32 0, metadata !107, null}
!135 = metadata !{i32 144, i32 0, metadata !4, null}
!136 = metadata !{i32 146, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !138, i32 146, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!138 = metadata !{i32 786443, metadata !1, metadata !4, i32 145, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!139 = metadata !{i32 165, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !141, i32 165, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!141 = metadata !{i32 786443, metadata !1, metadata !4, i32 164, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!142 = metadata !{i32 149, i32 0, metadata !143, null}
!143 = metadata !{i32 786443, metadata !1, metadata !137, i32 147, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!144 = metadata !{i32 154, i32 0, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !138, i32 154, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!146 = metadata !{i32 157, i32 0, metadata !147, null}
!147 = metadata !{i32 786443, metadata !1, metadata !145, i32 155, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!148 = metadata !{i32 148, i32 0, metadata !143, null}
!149 = metadata !{i32 150, i32 0, metadata !143, null}
!150 = metadata !{i32 156, i32 0, metadata !147, null}
!151 = metadata !{i32 158, i32 0, metadata !147, null}
!152 = metadata !{i32 167, i32 0, metadata !153, null}
!153 = metadata !{i32 786443, metadata !1, metadata !141, i32 167, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/429.mcf/src/treeup.c]
!154 = metadata !{i32 166, i32 0, metadata !140, null}
!155 = metadata !{i32 168, i32 0, metadata !153, null}
!156 = metadata !{i32 171, i32 0, metadata !4, null}

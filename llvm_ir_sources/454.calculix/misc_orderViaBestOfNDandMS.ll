; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/misc/src/misc_orderViaBestOfNDandMS.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._ETree = type { i32, i32, %struct._Tree*, %struct._IV*, %struct._IV*, %struct._IV* }
%struct._Tree = type { i32, i32, i32*, i32*, i32* }
%struct._IV = type { i32, i32, i32, i32* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }
%struct._DDsepInfo = type { i32, i32, i32, double, double, i32, i32, i32, i32, double, double, double, double, double, double, double, i32, %struct._IO_FILE* }
%struct._GPart = type { i32, %struct._Graph*, i32, i32, i32, %struct._IV, %struct._IV, %struct._GPart*, %struct._GPart*, %struct._GPart*, %struct._IV, i32, %struct._IO_FILE* }
%struct._DSTree = type { %struct._Tree*, %struct._IV* }
%struct._MSMDinfo = type { i32, i32, double, i32, i32, %struct._IO_FILE*, i32, i32, i32, i32, %struct._MSMDstageInfo*, double }
%struct._MSMDstageInfo = type { i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, double }
%struct._MSMD = type { i32, %struct._IIheap*, i32, %struct._IP*, %struct._IP*, %struct._MSMDvtx*, %struct._IV, %struct._IV }
%struct._IIheap = type { i32, i32, i32*, i32*, i32* }
%struct._IP = type { i32, %struct._IP* }
%struct._MSMDvtx = type { i32, i8, i8, i32, i32, i32, i32*, i32, %struct._MSMDvtx*, %struct._IP* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in orderViaBestOfNDandMS()\0A graph is NULL\0A\00", align 1
@.str1 = private unnamed_addr constant [60 x i8] c"\0A fatal error in orderViaBestOfNDandMS()\0A maxdomainsize %d\0A\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A fatal error in orderViaBestOfNDandMS()\0A maxzeros %d\0A\00", align 1
@.str3 = private unnamed_addr constant [54 x i8] c"\0A fatal error in orderViaBestOfNDandMS()\0A maxsize %d\0A\00", align 1
@.str4 = private unnamed_addr constant [65 x i8] c"\0A fatal error in orderViaBestOfNDandMS()\0A msglvl %d, msgFile %p\0A\00", align 1
@.str5 = private unnamed_addr constant [34 x i8] c"\0A CPU %8.3f : get equivalence map\00", align 1
@.str6 = private unnamed_addr constant [29 x i8] c"\0A CPU %8.3f : compress graph\00", align 1
@.str7 = private unnamed_addr constant [29 x i8] c"\0A CPU %8.3f : sort adjacency\00", align 1
@.str8 = private unnamed_addr constant [46 x i8] c"\0A CPU %8.3f : construct domain/separator tree\00", align 1
@.str9 = private unnamed_addr constant [32 x i8] c"\0A CPU %8.3f : get stages for ND\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"\0A CPU %8.3f : get tree for ND\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"\0A\0A Nested Dissection information\00", align 1
@.str12 = private unnamed_addr constant [26 x i8] c"\0A\0A Nested Dissection tree\00", align 1
@.str13 = private unnamed_addr constant [32 x i8] c"\0A CPU %8.3f : get stages for MS\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"\0A\0A Multisection information\00", align 1
@.str15 = private unnamed_addr constant [21 x i8] c"\0A\0A Multisection tree\00", align 1
@.str16 = private unnamed_addr constant [29 x i8] c"\0A CPU %8.3f : transform tree\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"\0A\0A real symmetric : final ops %.0f\00", align 1
@.str18 = private unnamed_addr constant [83 x i8] c"\0A\0A----------------------------------------\0A\0A Order the graph via best of ND and MS\00", align 1
@.str19 = private unnamed_addr constant [204 x i8] c"\0A\0A                    # fronts  # indices    # entries         # ops\0A nested dissection   %7d %10d %12.0f  %12.0f\0A multisection        %7d %10d %12.0f  %12.0f\0A final ordering      %7d %10d %12.0f  %12.0f\00", align 1
@.str21 = private unnamed_addr constant [43 x i8] c"\0A\0A----------------------------------------\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct._ETree* @orderViaBestOfNDandMS(%struct._Graph* %graph, i32 %maxdomainsize, i32 %maxzeros, i32 %maxsize, i32 %seed, i32 %msglvl, %struct._IO_FILE* %msgFile) #0 {
entry:
  %cmp = icmp eq %struct._Graph* %graph, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %0)
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %maxdomainsize, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([60 x i8]* @.str1, i64 0, i64 0), i32 %maxdomainsize) #6
  tail call void @exit(i32 -1) #5
  unreachable

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp slt i32 %maxzeros, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i32 %maxzeros) #6
  tail call void @exit(i32 -1) #5
  unreachable

if.end8:                                          ; preds = %if.end4
  %cmp9 = icmp slt i32 %maxsize, 1
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end8
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([54 x i8]* @.str3, i64 0, i64 0), i32 %maxsize) #6
  tail call void @exit(i32 -1) #5
  unreachable

if.end12:                                         ; preds = %if.end8
  %cmp13 = icmp sgt i32 %msglvl, 0
  %cmp14 = icmp eq %struct._IO_FILE* %msgFile, null
  %or.cond = and i1 %cmp13, %cmp14
  br i1 %or.cond, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([65 x i8]* @.str4, i64 0, i64 0), i32 %msglvl, %struct._IO_FILE* null) #6
  tail call void @exit(i32 -1) #5
  unreachable

if.end17:                                         ; preds = %if.end12
  %nvtx18 = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 1
  %6 = load i32* %nvtx18, align 4, !tbaa !3
  %call19 = tail call %struct._IV* @Graph_equivMap(%struct._Graph* %graph) #6
  %cmp20 = icmp sgt i32 %msglvl, 1
  br i1 %cmp20, label %if.then21, label %if.end25

if.then21:                                        ; preds = %if.end17
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([34 x i8]* @.str5, i64 0, i64 0), double 0.000000e+00) #6
  %call24 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end17
  %call26 = tail call i32 @IV_max(%struct._IV* %call19) #6
  %add = add nsw i32 %call26, 1
  %conv = sitofp i32 %add to double
  %conv27 = sitofp i32 %6 to double
  %mul = fmul double %conv27, 7.500000e-01
  %cmp28 = fcmp ugt double %conv, %mul
  br i1 %cmp28, label %if.end40, label %if.then30

if.then30:                                        ; preds = %if.end25
  %call31 = tail call %struct._Graph* @Graph_compress2(%struct._Graph* %graph, %struct._IV* %call19, i32 1) #6
  br i1 %cmp20, label %if.end40.thread, label %if.end40.thread421

if.end40.thread421:                               ; preds = %if.then30
  %adjIVL422 = getelementptr inbounds %struct._Graph* %call31, i64 0, i32 6
  %7 = load %struct._IVL** %adjIVL422, align 8, !tbaa !0
  tail call void @IVL_sortUp(%struct._IVL* %7) #6
  br label %if.end47

if.end40.thread:                                  ; preds = %if.then30
  %call37 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), double 0.000000e+00) #6
  %call38 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  %adjIVL414 = getelementptr inbounds %struct._Graph* %call31, i64 0, i32 6
  %8 = load %struct._IVL** %adjIVL414, align 8, !tbaa !0
  tail call void @IVL_sortUp(%struct._IVL* %8) #6
  br label %if.then43

if.end40:                                         ; preds = %if.end25
  tail call void @IV_free(%struct._IV* %call19) #6
  %adjIVL = getelementptr inbounds %struct._Graph* %graph, i64 0, i32 6
  %9 = load %struct._IVL** %adjIVL, align 8, !tbaa !0
  tail call void @IVL_sortUp(%struct._IVL* %9) #6
  br i1 %cmp20, label %if.then43, label %if.end47

if.then43:                                        ; preds = %if.end40.thread, %if.end40
  %adjIVL420 = phi %struct._IVL** [ %adjIVL414, %if.end40.thread ], [ %adjIVL, %if.end40 ]
  %graph.addr.0418 = phi %struct._Graph* [ %call31, %if.end40.thread ], [ %graph, %if.end40 ]
  %eqmapIV.0416 = phi %struct._IV* [ %call19, %if.end40.thread ], [ null, %if.end40 ]
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([29 x i8]* @.str7, i64 0, i64 0), double 0.000000e+00) #6
  %call46 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end47

if.end47:                                         ; preds = %if.end40.thread421, %if.then43, %if.end40
  %adjIVL419 = phi %struct._IVL** [ %adjIVL420, %if.then43 ], [ %adjIVL, %if.end40 ], [ %adjIVL422, %if.end40.thread421 ]
  %graph.addr.0417 = phi %struct._Graph* [ %graph.addr.0418, %if.then43 ], [ %graph, %if.end40 ], [ %call31, %if.end40.thread421 ]
  %eqmapIV.0415 = phi %struct._IV* [ %eqmapIV.0416, %if.then43 ], [ null, %if.end40 ], [ %call19, %if.end40.thread421 ]
  %call48 = tail call %struct._DDsepInfo* @DDsepInfo_new() #6
  %seed49 = getelementptr inbounds %struct._DDsepInfo* %call48, i64 0, i32 0
  store i32 %seed, i32* %seed49, align 4, !tbaa !3
  %maxcompweight = getelementptr inbounds %struct._DDsepInfo* %call48, i64 0, i32 5
  store i32 %maxdomainsize, i32* %maxcompweight, align 4, !tbaa !3
  %alpha = getelementptr inbounds %struct._DDsepInfo* %call48, i64 0, i32 4
  store double 1.000000e-01, double* %alpha, align 8, !tbaa !4
  %call50 = tail call %struct._GPart* @GPart_new() #6
  tail call void @GPart_init(%struct._GPart* %call50, %struct._Graph* %graph.addr.0417) #6
  tail call void @GPart_setMessageInfo(%struct._GPart* %call50, i32 %msglvl, %struct._IO_FILE* %msgFile) #6
  %call51 = tail call %struct._DSTree* @GPart_RBviaDDsep(%struct._GPart* %call50, %struct._DDsepInfo* %call48) #6
  tail call void @DSTree_renumberViaPostOT(%struct._DSTree* %call51) #6
  br i1 %cmp20, label %if.then68, label %if.end63

if.end63:                                         ; preds = %if.end47
  tail call void @DDsepInfo_free(%struct._DDsepInfo* %call48) #6
  tail call void @GPart_free(%struct._GPart* %call50) #6
  %call64 = tail call %struct._IV* @DSTree_NDstages(%struct._DSTree* %call51) #6
  br label %if.end72

if.then68:                                        ; preds = %if.end47
  tail call void @DDsepInfo_writeCpuTimes(%struct._DDsepInfo* %call48, %struct._IO_FILE* %msgFile) #6
  tail call void @DDsepInfo_free(%struct._DDsepInfo* %call48) #6
  tail call void @GPart_free(%struct._GPart* %call50) #6
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([46 x i8]* @.str8, i64 0, i64 0), double 0.000000e+00) #6
  %call62 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  %call64423 = tail call %struct._IV* @DSTree_NDstages(%struct._DSTree* %call51) #6
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([32 x i8]* @.str9, i64 0, i64 0), double 0.000000e+00) #6
  %call71 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end72

if.end72:                                         ; preds = %if.end63, %if.then68
  %call64424 = phi %struct._IV* [ %call64423, %if.then68 ], [ %call64, %if.end63 ]
  %call74 = tail call %struct._MSMDinfo* @MSMDinfo_new() #6
  %seed75 = getelementptr inbounds %struct._MSMDinfo* %call74, i64 0, i32 3
  store i32 %seed, i32* %seed75, align 4, !tbaa !3
  %compressFlag = getelementptr inbounds %struct._MSMDinfo* %call74, i64 0, i32 0
  store i32 2, i32* %compressFlag, align 4, !tbaa !3
  %msglvl76 = getelementptr inbounds %struct._MSMDinfo* %call74, i64 0, i32 4
  store i32 %msglvl, i32* %msglvl76, align 4, !tbaa !3
  %msgFile77 = getelementptr inbounds %struct._MSMDinfo* %call74, i64 0, i32 5
  store %struct._IO_FILE* %msgFile, %struct._IO_FILE** %msgFile77, align 8, !tbaa !0
  %call78 = tail call %struct._MSMD* @MSMD_new() #6
  %call79 = tail call i32* @IV_entries(%struct._IV* %call64424) #6
  tail call void @MSMD_order(%struct._MSMD* %call78, %struct._Graph* %graph.addr.0417, i32* %call79, %struct._MSMDinfo* %call74) #6
  %call80 = tail call %struct._ETree* @MSMD_frontETree(%struct._MSMD* %call78) #6
  br i1 %cmp20, label %if.end94, label %if.end100

if.end94:                                         ; preds = %if.end72
  %call87 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), double 0.000000e+00) #6
  %call88 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0), i64 32, i64 1, %struct._IO_FILE* %msgFile)
  tail call void @MSMDinfo_print(%struct._MSMDinfo* %call74, %struct._IO_FILE* %msgFile) #6
  %cmp95 = icmp sgt i32 %msglvl, 2
  br i1 %cmp95, label %if.then97, label %if.end100

if.then97:                                        ; preds = %if.end94
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str12, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %msgFile)
  %call99 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %call80, %struct._IO_FILE* %msgFile) #6
  br label %if.end100

if.end100:                                        ; preds = %if.end72, %if.then97, %if.end94
  %cmp95427 = phi i1 [ true, %if.then97 ], [ false, %if.end94 ], [ false, %if.end72 ]
  tail call void @MSMDinfo_free(%struct._MSMDinfo* %call74) #6
  tail call void @MSMD_free(%struct._MSMD* %call78) #6
  tail call void @IV_free(%struct._IV* %call64424) #6
  %call103 = tail call %struct._IV* @DSTree_MS2stages(%struct._DSTree* %call51) #6
  br i1 %cmp20, label %if.then107, label %if.end111

if.then107:                                       ; preds = %if.end100
  %call109 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([32 x i8]* @.str13, i64 0, i64 0), double 0.000000e+00) #6
  %call110 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end100
  %call114 = tail call %struct._MSMDinfo* @MSMDinfo_new() #6
  %seed115 = getelementptr inbounds %struct._MSMDinfo* %call114, i64 0, i32 3
  store i32 %seed, i32* %seed115, align 4, !tbaa !3
  %compressFlag116 = getelementptr inbounds %struct._MSMDinfo* %call114, i64 0, i32 0
  store i32 2, i32* %compressFlag116, align 4, !tbaa !3
  %msglvl117 = getelementptr inbounds %struct._MSMDinfo* %call114, i64 0, i32 4
  store i32 %msglvl, i32* %msglvl117, align 4, !tbaa !3
  %msgFile118 = getelementptr inbounds %struct._MSMDinfo* %call114, i64 0, i32 5
  store %struct._IO_FILE* %msgFile, %struct._IO_FILE** %msgFile118, align 8, !tbaa !0
  %call119 = tail call %struct._MSMD* @MSMD_new() #6
  %call120 = tail call i32* @IV_entries(%struct._IV* %call103) #6
  tail call void @MSMD_order(%struct._MSMD* %call119, %struct._Graph* %graph.addr.0417, i32* %call120, %struct._MSMDinfo* %call114) #6
  %call121 = tail call %struct._ETree* @MSMD_frontETree(%struct._MSMD* %call119) #6
  br i1 %cmp20, label %if.then126, label %if.end130

if.then126:                                       ; preds = %if.end111
  %call128 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0), double 0.000000e+00) #6
  %call129 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end130

if.end130:                                        ; preds = %if.then126, %if.end111
  br i1 %cmp95427, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.end130
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %msgFile)
  tail call void @MSMDinfo_print(%struct._MSMDinfo* %call114, %struct._IO_FILE* %msgFile) #6
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end130
  %cmp136 = icmp sgt i32 %msglvl, 3
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.end135
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([21 x i8]* @.str15, i64 0, i64 0), i64 20, i64 1, %struct._IO_FILE* %msgFile)
  %call140 = tail call i32 @ETree_writeForHumanEye(%struct._ETree* %call121, %struct._IO_FILE* %msgFile) #6
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.end135
  tail call void @MSMDinfo_free(%struct._MSMDinfo* %call114) #6
  tail call void @MSMD_free(%struct._MSMD* %call119) #6
  tail call void @IV_free(%struct._IV* %call103) #6
  %call144 = tail call i32 @ETree_nfront(%struct._ETree* %call80) #6
  %call145 = tail call i32 @ETree_nfront(%struct._ETree* %call121) #6
  %call146 = tail call i32 @ETree_nFactorIndices(%struct._ETree* %call80) #6
  %call147 = tail call i32 @ETree_nFactorIndices(%struct._ETree* %call121) #6
  %call148 = tail call i32 @ETree_nFactorEntries(%struct._ETree* %call80, i32 0) #6
  %conv149 = sitofp i32 %call148 to double
  %call150 = tail call i32 @ETree_nFactorEntries(%struct._ETree* %call121, i32 0) #6
  %conv151 = sitofp i32 %call150 to double
  %call152 = tail call double @ETree_nFactorOps(%struct._ETree* %call80, i32 1, i32 0) #6
  %call153 = tail call double @ETree_nFactorOps(%struct._ETree* %call121, i32 1, i32 0) #6
  %cmp154 = fcmp ugt double %call152, %call153
  br i1 %cmp154, label %if.else157, label %if.then156

if.then156:                                       ; preds = %if.end141
  tail call void @ETree_free(%struct._ETree* %call121) #6
  br label %if.end158

if.else157:                                       ; preds = %if.end141
  tail call void @ETree_free(%struct._ETree* %call80) #6
  br label %if.end158

if.end158:                                        ; preds = %if.else157, %if.then156
  %etree.0 = phi %struct._ETree* [ %call80, %if.then156 ], [ %call121, %if.else157 ]
  %vwghts = getelementptr inbounds %struct._Graph* %graph.addr.0417, i64 0, i32 7
  %14 = load i32** %vwghts, align 8, !tbaa !0
  %call159 = tail call %struct._ETree* @ETree_transform(%struct._ETree* %etree.0, i32* %14, i32 %maxzeros, i32 %maxsize, i32 %seed) #6
  br i1 %cmp20, label %if.then163, label %if.end167

if.then163:                                       ; preds = %if.end158
  %call165 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([29 x i8]* @.str16, i64 0, i64 0), double 0.000000e+00) #6
  %call166 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end167

if.end167:                                        ; preds = %if.then163, %if.end158
  %call168 = tail call i32 @ETree_nfront(%struct._ETree* %call159) #6
  %call169 = tail call i32 @ETree_nFactorIndices(%struct._ETree* %call159) #6
  %call170 = tail call i32 @ETree_nFactorEntries(%struct._ETree* %call159, i32 0) #6
  %conv171 = sitofp i32 %call170 to double
  %call172 = tail call double @ETree_nFactorOps(%struct._ETree* %call159, i32 1, i32 0) #6
  br i1 %cmp20, label %if.then175, label %if.end179

if.then175:                                       ; preds = %if.end167
  %call176 = tail call double @ETree_nFactorOps(%struct._ETree* %call159, i32 1, i32 0) #6
  %call177 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), double %call176) #6
  %call178 = tail call i32 @fflush(%struct._IO_FILE* %msgFile) #6
  br label %if.end179

if.end179:                                        ; preds = %if.then175, %if.end167
  %cmp180 = icmp eq %struct._IV* %eqmapIV.0415, null
  br i1 %cmp180, label %if.else184, label %if.then182

if.then182:                                       ; preds = %if.end179
  %call183 = tail call %struct._ETree* @ETree_expand(%struct._ETree* %call159, %struct._IV* %eqmapIV.0415) #6
  tail call void @ETree_free(%struct._ETree* %call159) #6
  tail call void @Graph_free(%struct._Graph* %graph.addr.0417) #6
  tail call void @IV_free(%struct._IV* %eqmapIV.0415) #6
  br label %if.end186

if.else184:                                       ; preds = %if.end179
  %15 = load %struct._IVL** %adjIVL419, align 8, !tbaa !0
  tail call void @IVL_sortUp(%struct._IVL* %15) #6
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then182
  %etree.1 = phi %struct._ETree* [ %call183, %if.then182 ], [ %call159, %if.else184 ]
  tail call void @DSTree_free(%struct._DSTree* %call51) #6
  br i1 %cmp13, label %if.then189, label %if.end218

if.then189:                                       ; preds = %if.end186
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([83 x i8]* @.str18, i64 0, i64 0), i64 82, i64 1, %struct._IO_FILE* %msgFile)
  %call191 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %msgFile, i8* getelementptr inbounds ([204 x i8]* @.str19, i64 0, i64 0), i32 %call144, i32 %call146, double %conv149, double %call152, i32 %call145, i32 %call147, double %conv151, double %call153, i32 %call168, i32 %call169, double %conv171, double %call172) #6
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str21, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %msgFile)
  br label %if.end218

if.end218:                                        ; preds = %if.then189, %if.end186
  ret %struct._ETree* %etree.1
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare %struct._IV* @Graph_equivMap(%struct._Graph*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IV_max(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._Graph* @Graph_compress2(%struct._Graph*, %struct._IV*, i32) #3

; Function Attrs: optsize
declare void @IV_free(%struct._IV*) #3

; Function Attrs: optsize
declare void @IVL_sortUp(%struct._IVL*) #3

; Function Attrs: optsize
declare %struct._DDsepInfo* @DDsepInfo_new() #3

; Function Attrs: optsize
declare %struct._GPart* @GPart_new() #3

; Function Attrs: optsize
declare void @GPart_init(%struct._GPart*, %struct._Graph*) #3

; Function Attrs: optsize
declare void @GPart_setMessageInfo(%struct._GPart*, i32, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare %struct._DSTree* @GPart_RBviaDDsep(%struct._GPart*, %struct._DDsepInfo*) #3

; Function Attrs: optsize
declare void @DSTree_renumberViaPostOT(%struct._DSTree*) #3

; Function Attrs: optsize
declare void @DDsepInfo_writeCpuTimes(%struct._DDsepInfo*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @DDsepInfo_free(%struct._DDsepInfo*) #3

; Function Attrs: optsize
declare void @GPart_free(%struct._GPart*) #3

; Function Attrs: optsize
declare %struct._IV* @DSTree_NDstages(%struct._DSTree*) #3

; Function Attrs: optsize
declare %struct._MSMDinfo* @MSMDinfo_new() #3

; Function Attrs: optsize
declare %struct._MSMD* @MSMD_new() #3

; Function Attrs: optsize
declare void @MSMD_order(%struct._MSMD*, %struct._Graph*, i32*, %struct._MSMDinfo*) #3

; Function Attrs: optsize
declare i32* @IV_entries(%struct._IV*) #3

; Function Attrs: optsize
declare %struct._ETree* @MSMD_frontETree(%struct._MSMD*) #3

; Function Attrs: optsize
declare void @MSMDinfo_print(%struct._MSMDinfo*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @ETree_writeForHumanEye(%struct._ETree*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @MSMDinfo_free(%struct._MSMDinfo*) #3

; Function Attrs: optsize
declare void @MSMD_free(%struct._MSMD*) #3

; Function Attrs: optsize
declare %struct._IV* @DSTree_MS2stages(%struct._DSTree*) #3

; Function Attrs: optsize
declare i32 @ETree_nfront(%struct._ETree*) #3

; Function Attrs: optsize
declare i32 @ETree_nFactorIndices(%struct._ETree*) #3

; Function Attrs: optsize
declare i32 @ETree_nFactorEntries(%struct._ETree*, i32) #3

; Function Attrs: optsize
declare double @ETree_nFactorOps(%struct._ETree*, i32, i32) #3

; Function Attrs: optsize
declare void @ETree_free(%struct._ETree*) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_transform(%struct._ETree*, i32*, i32, i32, i32) #3

; Function Attrs: optsize
declare %struct._ETree* @ETree_expand(%struct._ETree*, %struct._IV*) #3

; Function Attrs: optsize
declare void @Graph_free(%struct._Graph*) #3

; Function Attrs: optsize
declare void @DSTree_free(%struct._DSTree*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}

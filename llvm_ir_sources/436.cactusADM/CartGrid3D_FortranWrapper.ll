; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CartGrid3D_FortranWrapper.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_gridspacings = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y = internal unnamed_addr global i32 -1, align 4
@CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [16 x i8] c"grid::coarse_dx\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"grid::gridspacings\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"grid::coarse_dy\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"grid::coarse_dz\00", align 1
@.str4 = private unnamed_addr constant [8 x i8] c"grid::r\00", align 1
@.str5 = private unnamed_addr constant [18 x i8] c"grid::coordinates\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"grid::x\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"grid::y\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"grid::z\00", align 1
@_cctk_one = external global i32

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsFortranWrapperCartGrid3D(%struct.cGH* %GH, i8* nocapture %fpointer) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !48), !dbg !66
  tail call void @llvm.dbg.value(metadata !{i8* %fpointer}, i64 0, metadata !49), !dbg !66
  %0 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx, align 4, !dbg !67, !tbaa !68
  %cmp = icmp eq i32 %0, -1, !dbg !67
  br i1 %cmp, label %if.then, label %if.end, !dbg !67

if.then:                                          ; preds = %entry
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #3, !dbg !67
  store i32 %call, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx, align 4, !dbg !67, !tbaa !68
  br label %if.end, !dbg !67

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_gridspacings, align 4, !dbg !67, !tbaa !68
  %cmp1 = icmp eq i32 %1, -1, !dbg !67
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !67

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !67
  store i32 %call3, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_gridspacings, align 4, !dbg !67, !tbaa !68
  br label %if.end4, !dbg !67

if.end4:                                          ; preds = %if.then2, %if.end
  %2 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy, align 4, !dbg !67, !tbaa !68
  %cmp5 = icmp eq i32 %2, -1, !dbg !67
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !67

if.then6:                                         ; preds = %if.end4
  %call7 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !67
  store i32 %call7, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy, align 4, !dbg !67, !tbaa !68
  br label %if.end8, !dbg !67

if.end8:                                          ; preds = %if.then6, %if.end4
  %3 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz, align 4, !dbg !67, !tbaa !68
  %cmp9 = icmp eq i32 %3, -1, !dbg !67
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !67

if.then10:                                        ; preds = %if.end8
  %call11 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !67
  store i32 %call11, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz, align 4, !dbg !67, !tbaa !68
  br label %if.end12, !dbg !67

if.end12:                                         ; preds = %if.then10, %if.end8
  %4 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r, align 4, !dbg !67, !tbaa !68
  %cmp13 = icmp eq i32 %4, -1, !dbg !67
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !67

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !67
  store i32 %call15, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r, align 4, !dbg !67, !tbaa !68
  br label %if.end16, !dbg !67

if.end16:                                         ; preds = %if.then14, %if.end12
  %5 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !dbg !67, !tbaa !68
  %cmp17 = icmp eq i32 %5, -1, !dbg !67
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !67

if.then18:                                        ; preds = %if.end16
  %call19 = tail call i32 @CCTK_GroupIndex(i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !67
  store i32 %call19, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !dbg !67, !tbaa !68
  br label %if.end20, !dbg !67

if.end20:                                         ; preds = %if.then18, %if.end16
  %6 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x, align 4, !dbg !67, !tbaa !68
  %cmp21 = icmp eq i32 %6, -1, !dbg !67
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !67

if.then22:                                        ; preds = %if.end20
  %call23 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !67
  store i32 %call23, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x, align 4, !dbg !67, !tbaa !68
  br label %if.end24, !dbg !67

if.end24:                                         ; preds = %if.then22, %if.end20
  %7 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y, align 4, !dbg !67, !tbaa !68
  %cmp25 = icmp eq i32 %7, -1, !dbg !67
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !67

if.then26:                                        ; preds = %if.end24
  %call27 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !67
  store i32 %call27, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y, align 4, !dbg !67, !tbaa !68
  br label %if.end28, !dbg !67

if.end28:                                         ; preds = %if.then26, %if.end24
  %8 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z, align 4, !dbg !67, !tbaa !68
  %cmp29 = icmp eq i32 %8, -1, !dbg !67
  br i1 %cmp29, label %if.then30, label %if.end32, !dbg !67

if.then30:                                        ; preds = %if.end28
  %call31 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !67
  store i32 %call31, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z, align 4, !dbg !67, !tbaa !68
  br label %if.end32, !dbg !67

if.end32:                                         ; preds = %if.end28, %if.then30
  %9 = bitcast i8* %fpointer to void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)*, !dbg !71
  tail call void @llvm.dbg.value(metadata !{void (i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double*, double*, double*, double*, i32*, i32*, i32*, i32*, %struct.cGH*, i32*, i32*, i32*, double*, double*, double*, double*, double*, double*, double*)* %9}, i64 0, metadata !50), !dbg !71
  %cctk_dim = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 0, !dbg !72
  %cctk_gsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 2, !dbg !72
  %10 = load i32** %cctk_gsh, align 8, !dbg !72, !tbaa !73
  %cctk_lsh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 3, !dbg !72
  %11 = load i32** %cctk_lsh, align 8, !dbg !72, !tbaa !73
  %cctk_lbnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 4, !dbg !72
  %12 = load i32** %cctk_lbnd, align 8, !dbg !72, !tbaa !73
  %cctk_ubnd = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 5, !dbg !72
  %13 = load i32** %cctk_ubnd, align 8, !dbg !72, !tbaa !73
  %cctk_lssh = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 6, !dbg !72
  %14 = load i32** %cctk_lssh, align 8, !dbg !72, !tbaa !73
  %cctk_from = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 8, !dbg !72
  %15 = load i32** %cctk_from, align 8, !dbg !72, !tbaa !73
  %cctk_to = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 7, !dbg !72
  %16 = load i32** %cctk_to, align 8, !dbg !72, !tbaa !73
  %cctk_bbox = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 12, !dbg !72
  %17 = load i32** %cctk_bbox, align 8, !dbg !72, !tbaa !73
  %cctk_delta_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 9, !dbg !72
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !72
  %cctk_delta_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 10, !dbg !72
  %18 = load double** %cctk_delta_space, align 8, !dbg !72, !tbaa !73
  %cctk_origin_space = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 11, !dbg !72
  %19 = load double** %cctk_origin_space, align 8, !dbg !72, !tbaa !73
  %cctk_levfac = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 13, !dbg !72
  %20 = load i32** %cctk_levfac, align 8, !dbg !72, !tbaa !73
  %cctk_convlevel = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 14, !dbg !72
  %cctk_nghostzones = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 15, !dbg !72
  %21 = load i32** %cctk_nghostzones, align 8, !dbg !72, !tbaa !73
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !72
  %22 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !dbg !72, !tbaa !68
  %cmp33 = icmp slt i32 %22, 0, !dbg !72
  br i1 %cmp33, label %cond.end62, label %cond.false, !dbg !72

cond.false:                                       ; preds = %if.end32
  %call34 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !72
  %tobool = icmp eq i32 %call34, 0, !dbg !72
  br i1 %tobool, label %cond.end38, label %cond.true35, !dbg !72

cond.true35:                                      ; preds = %cond.false
  %call36 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !72
  br label %cond.end38, !dbg !72

cond.end38:                                       ; preds = %cond.false, %cond.true35
  %cond39.ph = phi i32* [ @_cctk_one, %cond.false ], [ %call36, %cond.true35 ]
  %.pr = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !dbg !72, !tbaa !68
  %cmp40 = icmp slt i32 %.pr, 0, !dbg !72
  br i1 %cmp40, label %cond.end62, label %cond.false42, !dbg !72

cond.false42:                                     ; preds = %cond.end38
  %call43 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !72
  %tobool44 = icmp eq i32 %call43, 0, !dbg !72
  br i1 %tobool44, label %cond.end50, label %cond.true45, !dbg !72

cond.true45:                                      ; preds = %cond.false42
  %call46 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 1, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !72
  br label %cond.end50, !dbg !72

cond.end50:                                       ; preds = %cond.false42, %cond.true45
  %cond51.ph.ph = phi i32* [ @_cctk_one, %cond.false42 ], [ %call46, %cond.true45 ]
  %.pr162.pr = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, align 4, !dbg !72, !tbaa !68
  %cmp52 = icmp slt i32 %.pr162.pr, 0, !dbg !72
  br i1 %cmp52, label %cond.end62, label %cond.false54, !dbg !72

cond.false54:                                     ; preds = %cond.end50
  %call55 = tail call i32 @CCTK_QueryGroupStorage(%struct.cGH* %GH, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !72
  %tobool56 = icmp eq i32 %call55, 0, !dbg !72
  br i1 %tobool56, label %cond.end62, label %cond.true57, !dbg !72

cond.true57:                                      ; preds = %cond.false54
  %call58 = tail call i32* @CCTK_ArrayGroupSize(%struct.cGH* %GH, i32 2, i8* getelementptr inbounds ([18 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !72
  br label %cond.end62, !dbg !72

cond.end62:                                       ; preds = %cond.false54, %cond.end50, %cond.end38, %if.end32, %cond.true57
  %cond51165 = phi i32* [ %cond51.ph.ph, %cond.true57 ], [ @_cctk_one, %if.end32 ], [ @_cctk_one, %cond.end38 ], [ %cond51.ph.ph, %cond.end50 ], [ %cond51.ph.ph, %cond.false54 ]
  %cond39161164 = phi i32* [ %cond39.ph, %cond.true57 ], [ @_cctk_one, %if.end32 ], [ %cond39.ph, %cond.end38 ], [ %cond39.ph, %cond.end50 ], [ %cond39.ph, %cond.false54 ]
  %cond63 = phi i32* [ %call58, %cond.true57 ], [ @_cctk_one, %if.end32 ], [ @_cctk_one, %cond.end38 ], [ @_cctk_one, %cond.end50 ], [ @_cctk_one, %cond.false54 ], !dbg !72
  %23 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx, align 4, !dbg !72, !tbaa !68
  %cmp64 = icmp slt i32 %23, 0, !dbg !72
  br i1 %cmp64, label %cond.end68, label %cond.false66, !dbg !72

cond.false66:                                     ; preds = %cond.end62
  %idxprom = sext i32 %23 to i64, !dbg !72
  %data = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !72
  %24 = load i8**** %data, align 8, !dbg !72, !tbaa !73
  %arrayidx = getelementptr inbounds i8*** %24, i64 %idxprom, !dbg !72
  %25 = load i8*** %arrayidx, align 8, !dbg !72, !tbaa !73
  %26 = load i8** %25, align 8, !dbg !72, !tbaa !73
  %phitmp = bitcast i8* %26 to double*, !dbg !72
  br label %cond.end68, !dbg !72

cond.end68:                                       ; preds = %cond.end62, %cond.false66
  %cond69 = phi double* [ %phitmp, %cond.false66 ], [ null, %cond.end62 ]
  %27 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy, align 4, !dbg !72, !tbaa !68
  %cmp70 = icmp slt i32 %27, 0, !dbg !72
  br i1 %cmp70, label %cond.end77, label %cond.false72, !dbg !72

cond.false72:                                     ; preds = %cond.end68
  %idxprom73 = sext i32 %27 to i64, !dbg !72
  %data74 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !72
  %28 = load i8**** %data74, align 8, !dbg !72, !tbaa !73
  %arrayidx75 = getelementptr inbounds i8*** %28, i64 %idxprom73, !dbg !72
  %29 = load i8*** %arrayidx75, align 8, !dbg !72, !tbaa !73
  %30 = load i8** %29, align 8, !dbg !72, !tbaa !73
  %phitmp154 = bitcast i8* %30 to double*, !dbg !72
  br label %cond.end77, !dbg !72

cond.end77:                                       ; preds = %cond.end68, %cond.false72
  %cond78 = phi double* [ %phitmp154, %cond.false72 ], [ null, %cond.end68 ]
  %31 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz, align 4, !dbg !72, !tbaa !68
  %cmp79 = icmp slt i32 %31, 0, !dbg !72
  br i1 %cmp79, label %cond.end86, label %cond.false81, !dbg !72

cond.false81:                                     ; preds = %cond.end77
  %idxprom82 = sext i32 %31 to i64, !dbg !72
  %data83 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !72
  %32 = load i8**** %data83, align 8, !dbg !72, !tbaa !73
  %arrayidx84 = getelementptr inbounds i8*** %32, i64 %idxprom82, !dbg !72
  %33 = load i8*** %arrayidx84, align 8, !dbg !72, !tbaa !73
  %34 = load i8** %33, align 8, !dbg !72, !tbaa !73
  %phitmp155 = bitcast i8* %34 to double*, !dbg !72
  br label %cond.end86, !dbg !72

cond.end86:                                       ; preds = %cond.end77, %cond.false81
  %cond87 = phi double* [ %phitmp155, %cond.false81 ], [ null, %cond.end77 ]
  %35 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r, align 4, !dbg !72, !tbaa !68
  %cmp88 = icmp slt i32 %35, 0, !dbg !72
  br i1 %cmp88, label %cond.end95, label %cond.false90, !dbg !72

cond.false90:                                     ; preds = %cond.end86
  %idxprom91 = sext i32 %35 to i64, !dbg !72
  %data92 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !72
  %36 = load i8**** %data92, align 8, !dbg !72, !tbaa !73
  %arrayidx93 = getelementptr inbounds i8*** %36, i64 %idxprom91, !dbg !72
  %37 = load i8*** %arrayidx93, align 8, !dbg !72, !tbaa !73
  %38 = load i8** %37, align 8, !dbg !72, !tbaa !73
  %phitmp156 = bitcast i8* %38 to double*, !dbg !72
  br label %cond.end95, !dbg !72

cond.end95:                                       ; preds = %cond.end86, %cond.false90
  %cond96 = phi double* [ %phitmp156, %cond.false90 ], [ null, %cond.end86 ]
  %39 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x, align 4, !dbg !72, !tbaa !68
  %cmp97 = icmp slt i32 %39, 0, !dbg !72
  br i1 %cmp97, label %cond.end104, label %cond.false99, !dbg !72

cond.false99:                                     ; preds = %cond.end95
  %idxprom100 = sext i32 %39 to i64, !dbg !72
  %data101 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !72
  %40 = load i8**** %data101, align 8, !dbg !72, !tbaa !73
  %arrayidx102 = getelementptr inbounds i8*** %40, i64 %idxprom100, !dbg !72
  %41 = load i8*** %arrayidx102, align 8, !dbg !72, !tbaa !73
  %42 = load i8** %41, align 8, !dbg !72, !tbaa !73
  %phitmp157 = bitcast i8* %42 to double*, !dbg !72
  br label %cond.end104, !dbg !72

cond.end104:                                      ; preds = %cond.end95, %cond.false99
  %cond105 = phi double* [ %phitmp157, %cond.false99 ], [ null, %cond.end95 ]
  %43 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y, align 4, !dbg !72, !tbaa !68
  %cmp106 = icmp slt i32 %43, 0, !dbg !72
  br i1 %cmp106, label %cond.end113, label %cond.false108, !dbg !72

cond.false108:                                    ; preds = %cond.end104
  %idxprom109 = sext i32 %43 to i64, !dbg !72
  %data110 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !72
  %44 = load i8**** %data110, align 8, !dbg !72, !tbaa !73
  %arrayidx111 = getelementptr inbounds i8*** %44, i64 %idxprom109, !dbg !72
  %45 = load i8*** %arrayidx111, align 8, !dbg !72, !tbaa !73
  %46 = load i8** %45, align 8, !dbg !72, !tbaa !73
  %phitmp158 = bitcast i8* %46 to double*, !dbg !72
  br label %cond.end113, !dbg !72

cond.end113:                                      ; preds = %cond.end104, %cond.false108
  %cond114 = phi double* [ %phitmp158, %cond.false108 ], [ null, %cond.end104 ]
  %47 = load i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z, align 4, !dbg !72, !tbaa !68
  %cmp115 = icmp slt i32 %47, 0, !dbg !72
  br i1 %cmp115, label %cond.end122, label %cond.false117, !dbg !72

cond.false117:                                    ; preds = %cond.end113
  %idxprom118 = sext i32 %47 to i64, !dbg !72
  %data119 = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 17, !dbg !72
  %48 = load i8**** %data119, align 8, !dbg !72, !tbaa !73
  %arrayidx120 = getelementptr inbounds i8*** %48, i64 %idxprom118, !dbg !72
  %49 = load i8*** %arrayidx120, align 8, !dbg !72, !tbaa !73
  %50 = load i8** %49, align 8, !dbg !72, !tbaa !73
  %phitmp159 = bitcast i8* %50 to double*, !dbg !72
  br label %cond.end122, !dbg !72

cond.end122:                                      ; preds = %cond.end113, %cond.false117
  %cond123 = phi double* [ %phitmp159, %cond.false117 ], [ null, %cond.end113 ]
  tail call void %9(i32* %cctk_dim, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, double* %cctk_delta_time, double* %cctk_time, double* %18, double* %19, i32* %20, i32* %cctk_convlevel, i32* %21, i32* %cctk_iteration, %struct.cGH* %GH, i32* %cond39161164, i32* %cond51165, i32* %cond63, double* %cond69, double* %cond78, double* %cond87, double* %cond96, double* %cond105, double* %cond114, double* %cond123) #3, !dbg !72
  ret i32 0, !dbg !74
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_GroupIndex(i8*) #1

; Function Attrs: optsize
declare i32 @CCTK_QueryGroupStorage(%struct.cGH*, i8*) #1

; Function Attrs: optsize
declare i32* @CCTK_ArrayGroupSize(%struct.cGH*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !56, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CartGrid3D_FortranWrapper.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CartGrid3D_FortranWrapper.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsFortranWrapperCartGrid3D", metadata !"CCTKi_BindingsFortranWrapperCartGrid3D", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTKi_BindingsFortranWrapperCartGrid3D, null, null, metadata !47, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [CCTKi_BindingsFortranWrapperCartGrid3D]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CartGrid3D_FortranWrapper.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !37}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !26, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !38, metadata !39}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!22 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !25} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!25 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!26 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!28 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!29 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!30 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!31 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!32 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !17} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!33 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !25} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!34 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !35} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!35 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !36} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!38 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !36} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!39 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !40} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!40 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !41} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!41 = metadata !{i32 786454, metadata !12, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !42} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!42 = metadata !{i32 786451, metadata !12, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!43 = metadata !{metadata !44, metadata !46}
!44 = metadata !{i32 786445, metadata !12, metadata !42, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!45 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!46 = metadata !{i32 786445, metadata !12, metadata !42, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !45} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!47 = metadata !{metadata !48, metadata !49, metadata !50}
!48 = metadata !{i32 786689, metadata !4, metadata !"GH", metadata !5, i32 16777229, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 13]
!49 = metadata !{i32 786689, metadata !4, metadata !"fpointer", metadata !5, i32 33554445, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fpointer] [line 13]
!50 = metadata !{i32 786688, metadata !4, metadata !"function", metadata !5, i32 15, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [function] [line 15]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{null, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !17, metadata !27, metadata !27, metadata !27, metadata !27, metadata !17, metadata !17, metadata !17, metadata !17, metadata !9, metadata !54, metadata !54, metadata !54, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27, metadata !27}
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!56 = metadata !{metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65}
!57 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dx", metadata !"CCTKARGNUM_coarse_dx", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dx, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dx] [line 17] [local] [def]
!58 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_gridspacings", metadata !"CCTKGROUPNUM_gridspacings", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_gridspacings, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_gridspacings] [line 17] [local] [def]
!59 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dy", metadata !"CCTKARGNUM_coarse_dy", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dy, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dy] [line 17] [local] [def]
!60 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_coarse_dz", metadata !"CCTKARGNUM_coarse_dz", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_coarse_dz, null} ; [ DW_TAG_variable ] [CCTKARGNUM_coarse_dz] [line 17] [local] [def]
!61 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_r", metadata !"CCTKARGNUM_r", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_r, null} ; [ DW_TAG_variable ] [CCTKARGNUM_r] [line 17] [local] [def]
!62 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKGROUPNUM_coordinates", metadata !"CCTKGROUPNUM_coordinates", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKGROUPNUM_coordinates, null} ; [ DW_TAG_variable ] [CCTKGROUPNUM_coordinates] [line 17] [local] [def]
!63 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_x", metadata !"CCTKARGNUM_x", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_x, null} ; [ DW_TAG_variable ] [CCTKARGNUM_x] [line 17] [local] [def]
!64 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_y", metadata !"CCTKARGNUM_y", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_y, null} ; [ DW_TAG_variable ] [CCTKARGNUM_y] [line 17] [local] [def]
!65 = metadata !{i32 786484, i32 0, metadata !4, metadata !"CCTKARGNUM_z", metadata !"CCTKARGNUM_z", metadata !"", metadata !5, i32 17, metadata !8, i32 1, i32 1, i32* @CCTKi_BindingsFortranWrapperCartGrid3D.CCTKARGNUM_z, null} ; [ DW_TAG_variable ] [CCTKARGNUM_z] [line 17] [local] [def]
!66 = metadata !{i32 13, i32 0, metadata !4, null}
!67 = metadata !{i32 18, i32 0, metadata !4, null}
!68 = metadata !{metadata !"int", metadata !69}
!69 = metadata !{metadata !"omnipotent char", metadata !70}
!70 = metadata !{metadata !"Simple C/C++ TBAA"}
!71 = metadata !{i32 20, i32 0, metadata !4, null}
!72 = metadata !{i32 22, i32 0, metadata !4, null}
!73 = metadata !{metadata !"any pointer", metadata !69}
!74 = metadata !{i32 24, i32 0, metadata !4, null}

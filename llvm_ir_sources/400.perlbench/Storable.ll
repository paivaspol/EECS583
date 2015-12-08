; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/Storable.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stcxt = type { i32, i32, %struct.hv*, %struct.av*, %struct.av*, i64, %struct.hv*, %struct.av*, %struct.hv*, i64, i64, i32, i32, i32, i32, %struct.sv*, i32, i32, i32, i32, %struct.extendable, %struct.extendable, %struct.extendable, %struct._PerlIO**, i32, i32, %struct.sv* (...)**, %struct.sv*, %struct.sv* }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.sv = type { i8*, i32, i32 }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.interpreter = type { i8 }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.extendable = type { i8*, i64, i8*, i8* }
%struct._PerlIO = type opaque
%struct.xpv = type { i8*, i64, i64 }
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, {}*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque

@Context_ptr = internal unnamed_addr global %struct.stcxt* null, align 8
@PL_sv_undef = external global %struct.sv
@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str = private unnamed_addr constant [36 x i8] c"Usage: Storable::Cxt::DESTROY(self)\00", align 1
@.str1 = private unnamed_addr constant [34 x i8] c"Usage: Storable::init_perinterp()\00", align 1
@.str2 = private unnamed_addr constant [32 x i8] c"Usage: Storable::pstore(f, obj)\00", align 1
@PL_op = external global %struct.op*
@PL_curpad = external global %struct.sv**
@.str3 = private unnamed_addr constant [36 x i8] c"Usage: Storable::net_pstore(f, obj)\00", align 1
@.str4 = private unnamed_addr constant [29 x i8] c"Usage: Storable::mstore(obj)\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"Usage: Storable::net_mstore(obj)\00", align 1
@.str6 = private unnamed_addr constant [30 x i8] c"Usage: Storable::pretrieve(f)\00", align 1
@.str7 = private unnamed_addr constant [31 x i8] c"Usage: Storable::mretrieve(sv)\00", align 1
@.str8 = private unnamed_addr constant [28 x i8] c"Usage: Storable::dclone(sv)\00", align 1
@.str9 = private unnamed_addr constant [39 x i8] c"Usage: Storable::last_op_in_netorder()\00", align 1
@.str10 = private unnamed_addr constant [30 x i8] c"Usage: Storable::is_storing()\00", align 1
@.str11 = private unnamed_addr constant [33 x i8] c"Usage: Storable::is_retrieving()\00", align 1
@.str12 = private unnamed_addr constant [58 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/Storable.c\00", align 1
@.str13 = private unnamed_addr constant [23 x i8] c"Storable::Cxt::DESTROY\00", align 1
@.str14 = private unnamed_addr constant [25 x i8] c"Storable::init_perinterp\00", align 1
@.str15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str16 = private unnamed_addr constant [17 x i8] c"Storable::pstore\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str18 = private unnamed_addr constant [21 x i8] c"Storable::net_pstore\00", align 1
@.str19 = private unnamed_addr constant [17 x i8] c"Storable::mstore\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str21 = private unnamed_addr constant [21 x i8] c"Storable::net_mstore\00", align 1
@.str22 = private unnamed_addr constant [20 x i8] c"Storable::pretrieve\00", align 1
@.str23 = private unnamed_addr constant [20 x i8] c"Storable::mretrieve\00", align 1
@.str24 = private unnamed_addr constant [17 x i8] c"Storable::dclone\00", align 1
@.str25 = private unnamed_addr constant [30 x i8] c"Storable::last_op_in_netorder\00", align 1
@.str26 = private unnamed_addr constant [21 x i8] c"Storable::is_storing\00", align 1
@.str27 = private unnamed_addr constant [24 x i8] c"Storable::is_retrieving\00", align 1
@.str28 = private unnamed_addr constant [20 x i8] c"Storable::drop_utf8\00", align 1
@PL_sv_yes = external global %struct.sv
@.str29 = private unnamed_addr constant [14 x i8] c"Storable::Cxt\00", align 1
@.str30 = private unnamed_addr constant [58 x i8] c"Frozen string corrupt - contains characters outside 0-255\00", align 1
@.str31 = private unnamed_addr constant [20 x i8] c"Not a scalar string\00", align 1
@.str32 = private unnamed_addr constant [44 x i8] c"Magic number checking on storable %s failed\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str34 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@PL_amagic_generation = external global i64
@.str35 = private unnamed_addr constant [46 x i8] c"Old tag 0x%lx should have been mapped already\00", align 1
@.str36 = private unnamed_addr constant [47 x i8] c"Object #%ld should have been retrieved already\00", align 1
@PL_Sv = external global %struct.sv*
@.str37 = private unnamed_addr constant [30 x i8] c"Storable::accept_future_minor\00", align 1
@PL_Xpv = external global %struct.xpv*
@.str38 = private unnamed_addr constant [119 x i8] c"Storable binary image v%d.%d contains data of type %d. This Storable is v%d.%d and can only handle data types up to %d\00", align 1
@sv_old_retrieve = internal global [28 x %struct.sv* (%struct.stcxt*, i8*)*] [%struct.sv* (%struct.stcxt*, i8*)* null, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_lscalar, %struct.sv* (%struct.stcxt*, i8*)* @old_retrieve_array, %struct.sv* (%struct.stcxt*, i8*)* @old_retrieve_hash, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_ref, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_undef, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_integer, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_double, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_byte, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_netint, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_scalar, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_tied_array, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_tied_hash, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_tied_scalar, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other], align 16
@.str39 = private unnamed_addr constant [57 x i8] c"Corrupted storable %s (binary v%d.%d), current is v%d.%d\00", align 1
@.str40 = private unnamed_addr constant [38 x i8] c"Corrupted storable %s (binary v%d.%d)\00", align 1
@PL_tainting = external global i8
@PL_tainted = external global i8
@old_retrieve_hash.sv_h_undef = internal unnamed_addr global %struct.sv* null, align 8
@magicstr = internal constant [5 x i8] c"pst0\00", align 1
@old_magicstr = internal constant [11 x i8] c"perl-store\00", align 1
@.str41 = private unnamed_addr constant [28 x i8] c"File is not a perl storable\00", align 1
@sv_retrieve = internal global [28 x %struct.sv* (%struct.stcxt*, i8*)*] [%struct.sv* (%struct.stcxt*, i8*)* null, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_lscalar, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_array, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_hash, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_ref, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_undef, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_integer, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_double, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_byte, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_netint, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_scalar, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_tied_array, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_tied_hash, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_tied_scalar, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_sv_undef, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_sv_yes, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_sv_no, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_blessed, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_idx_blessed, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_hook, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_overloaded, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_tied_key, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_tied_idx, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_utf8str, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_lutf8str, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_flag_hash, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_code, %struct.sv* (%struct.stcxt*, i8*)* @retrieve_other], align 16
@.str42 = private unnamed_addr constant [60 x i8] c"Storable binary image v%d.%d more recent than I am (v%d.%d)\00", align 1
@byteorderstr = internal constant [9 x i8] c"12345678\00", align 1
@.str43 = private unnamed_addr constant [29 x i8] c"Byte order is not compatible\00", align 1
@.str44 = private unnamed_addr constant [31 x i8] c"Integer size is not compatible\00", align 1
@.str45 = private unnamed_addr constant [36 x i8] c"Long integer size is not compatible\00", align 1
@.str46 = private unnamed_addr constant [31 x i8] c"Pointer size is not compatible\00", align 1
@.str47 = private unnamed_addr constant [30 x i8] c"Double size is not compatible\00", align 1
@.str48 = private unnamed_addr constant [37 x i8] c"Unexpected type %d in retrieve_code\0A\00", align 1
@.str49 = private unnamed_addr constant [5 x i8] c"sub \00", align 1
@.str50 = private unnamed_addr constant [15 x i8] c"Storable::Eval\00", align 1
@.str51 = private unnamed_addr constant [21 x i8] c"Storable::forgive_me\00", align 1
@.str52 = private unnamed_addr constant [55 x i8] c"Can't eval, please set $Storable::Eval to a true value\00", align 1
@PL_tmps_floor = external global i32
@PL_tmps_ix = external global i32
@.str53 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@PL_markstack_max = external global i32*
@PL_stack_max = external global %struct.sv**
@.str54 = private unnamed_addr constant [55 x i8] c"Unexpected return value from $Storable::Eval callback\0A\00", align 1
@.str55 = private unnamed_addr constant [28 x i8] c"code %s caused an error: %s\00", align 1
@.str56 = private unnamed_addr constant [52 x i8] c"code %s did not evaluate to a subroutine reference\0A\00", align 1
@PL_sv_placeholder = external global %struct.sv
@.str57 = private unnamed_addr constant [60 x i8] c"Cannot restore overloading on %s(0x%lx) (package <unknown>)\00", align 1
@.str58 = private unnamed_addr constant [9 x i8] c"require \00", align 1
@.str59 = private unnamed_addr constant [82 x i8] c"Cannot restore overloading on %s(0x%lx) (package %s) (even after a \22require %s;\22)\00", align 1
@.str60 = private unnamed_addr constant [46 x i8] c"Class name #%ld should have been seen already\00", align 1
@.str61 = private unnamed_addr constant [14 x i8] c"STORABLE_thaw\00", align 1
@.str62 = private unnamed_addr constant [78 x i8] c"No STORABLE_thaw defined for objects of class %s (even after a \22require %s;\22)\00", align 1
@.str63 = private unnamed_addr constant [34 x i8] c"Forgot to deal with extra type %d\00", align 1
@PL_sv_no = external global %struct.sv
@.str64 = private unnamed_addr constant [16 x i8] c"Not a reference\00", align 1
@sv_store = internal unnamed_addr constant [8 x i32 (%struct.stcxt*, %struct.sv*)*] [i32 (%struct.stcxt*, %struct.sv*)* @store_ref, i32 (%struct.stcxt*, %struct.sv*)* @store_scalar, i32 (%struct.stcxt*, %struct.sv*)* bitcast (i32 (%struct.stcxt*, %struct.av*)* @store_array to i32 (%struct.stcxt*, %struct.sv*)*), i32 (%struct.stcxt*, %struct.sv*)* bitcast (i32 (%struct.stcxt*, %struct.hv*)* @store_hash to i32 (%struct.stcxt*, %struct.sv*)*), i32 (%struct.stcxt*, %struct.sv*)* @store_tied, i32 (%struct.stcxt*, %struct.sv*)* @store_tied_item, i32 (%struct.stcxt*, %struct.sv*)* bitcast (i32 (%struct.stcxt*, %struct.cv*)* @store_code to i32 (%struct.stcxt*, %struct.sv*)*), i32 (%struct.stcxt*, %struct.sv*)* @store_other], align 16
@store_other.buf = internal global [80 x i8] zeroinitializer, align 16
@.str65 = private unnamed_addr constant [21 x i8] c"Can't store %s items\00", align 1
@.str66 = private unnamed_addr constant [27 x i8] c"Can't store item %s(0x%lx)\00", align 1
@.str67 = private unnamed_addr constant [21 x i8] c"You lost %s(0x%lx)%c\00", align 1
@.str68 = private unnamed_addr constant [18 x i8] c"Storable::Deparse\00", align 1
@.str69 = private unnamed_addr constant [11 x i8] c"B::Deparse\00", align 1
@.str70 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str71 = private unnamed_addr constant [46 x i8] c"Unexpected return value from B::Deparse::new\0A\00", align 1
@.str72 = private unnamed_addr constant [13 x i8] c"coderef2text\00", align 1
@.str73 = private unnamed_addr constant [55 x i8] c"Unexpected return value from B::Deparse::coderef2text\0A\00", align 1
@.str74 = private unnamed_addr constant [101 x i8] c"The result of B::Deparse::coderef2text was empty - maybe you're trying to serialize an XS function?\0A\00", align 1
@.str75 = private unnamed_addr constant [56 x i8] c"No magic 'p' found while storing reference to tied item\00", align 1
@.str76 = private unnamed_addr constant [42 x i8] c"No magic '%c' found while storing tied %s\00", align 1
@.str77 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str78 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str79 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str80 = private unnamed_addr constant [20 x i8] c"Storable::canonical\00", align 1
@.str81 = private unnamed_addr constant [34 x i8] c"Can't determine type of %s(0x%lx)\00", align 1
@.str82 = private unnamed_addr constant [16 x i8] c"STORABLE_freeze\00", align 1
@.str83 = private unnamed_addr constant [31 x i8] c"Unable to record new classname\00", align 1
@.str84 = private unnamed_addr constant [44 x i8] c"Unexpected object type (%d) in store_hook()\00", align 1
@.str85 = private unnamed_addr constant [43 x i8] c"Too late to ignore hooks for %s class \22%s\22\00", align 1
@.str86 = private unnamed_addr constant [8 x i8] c"cloning\00", align 1
@.str87 = private unnamed_addr constant [8 x i8] c"storing\00", align 1
@.str88 = private unnamed_addr constant [63 x i8] c"Item #%d returned by STORABLE_freeze for %s is not a reference\00", align 1
@.str89 = private unnamed_addr constant [45 x i8] c"Could not serialize item #%d from hook in %s\00", align 1
@.str90 = private unnamed_addr constant [59 x i8] c"No magic '%c' found while storing ref to tied %s with hook\00", align 1
@magic_write.network_file_header = internal constant [6 x i8] c"pst0\05\06", align 1
@magic_write.file_header = internal constant [19 x i8] c"pst0\04\06\0812345678\04\08\08\08", align 16

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_storing() #0 {
entry:
  %0 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %entry1 = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 0
  %1 = load i32* %entry1, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %optype = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 1
  %2 = load i32* %optype, align 4, !tbaa !3
  %and = and i32 %2, 1
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_retrieving() #0 {
entry:
  %0 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %entry1 = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 0
  %1 = load i32* %entry1, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %optype = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 1
  %2 = load i32* %optype, align 4, !tbaa !3
  %and = and i32 %2, 2
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @last_op_in_netorder() #0 {
entry:
  %0 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %netorder = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 11
  %1 = load i32* %netorder, align 4, !tbaa !3
  ret i32 %1
}

; Function Attrs: nounwind optsize uwtable
define i32 @pstore(%struct._PerlIO** %f, %struct.sv* nocapture %sv) #1 {
entry:
  %call = tail call fastcc i32 @do_store(%struct._PerlIO** %f, %struct.sv* %sv, i32 0, i32 0, %struct.sv** null) #6
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @do_store(%struct._PerlIO** %f, %struct.sv* nocapture %sv, i32 %optype, i32 %network_order, %struct.sv** %res) #1 {
entry:
  %0 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %or = or i32 %optype, 1
  %s_dirty = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 18
  %1 = load i32* %s_dirty, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @clean_context(%struct.stcxt* %0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %entry1 = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 0
  %2 = load i32* %entry1, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %2, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = tail call fastcc %struct.stcxt* @allocate_context(%struct.stcxt* %0) #6
  %entry5.phi.trans.insert = getelementptr inbounds %struct.stcxt* %call, i64 0, i32 0
  %.pre = load i32* %entry5.phi.trans.insert, align 4, !tbaa !3
  %phitmp = add i32 %.pre, 1
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %3 = phi i32 [ %phitmp, %if.then3 ], [ 1, %if.end ]
  %cxt.0 = phi %struct.stcxt* [ %call, %if.then3 ], [ %0, %if.end ]
  %entry5 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 0
  store i32 %3, i32* %entry5, align 4, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %4, 524288
  %tobool6 = icmp eq i32 %and, 0
  br i1 %tobool6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end4
  %s_dirty8 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty8, align 4, !tbaa !3
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([16 x i8]* @.str64, i64 0, i64 0)) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end4, %if.then7
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %5 to %struct.sv**
  %6 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %tobool10 = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool10, label %if.then11, label %if.end27

if.then11:                                        ; preds = %if.end9
  %arena = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 0
  %7 = load i8** %arena, align 8, !tbaa !0
  %tobool12 = icmp eq i8* %7, null
  br i1 %tobool12, label %if.then13, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  %asiz25.phi.trans.insert = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 1
  %.pre81 = load i64* %asiz25.phi.trans.insert, align 8, !tbaa !4
  br label %if.end18

if.then13:                                        ; preds = %if.then11
  %call14 = tail call i8* @Perl_safesysmalloc(i64 8192) #7
  store i8* %call14, i8** %arena, align 8, !tbaa !0
  %asiz = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 1
  store i64 8192, i64* %asiz, align 8, !tbaa !4
  br label %if.end18

if.end18:                                         ; preds = %if.then11.if.end18_crit_edge, %if.then13
  %8 = phi i64 [ %.pre81, %if.then11.if.end18_crit_edge ], [ 8192, %if.then13 ]
  %9 = phi i8* [ %7, %if.then11.if.end18_crit_edge ], [ %call14, %if.then13 ]
  %aptr = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  store i8* %9, i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %9, i64 %8
  %aend = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 3
  store i8* %add.ptr, i8** %aend, align 8, !tbaa !0
  br label %if.end27

if.end27:                                         ; preds = %if.end9, %if.end18
  %netorder.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 11
  store i32 %network_order, i32* %netorder.i, align 4, !tbaa !3
  %forgive_me.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 13
  store i32 -1, i32* %forgive_me.i, align 4, !tbaa !3
  %deparse.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 14
  store i32 -1, i32* %deparse.i, align 4, !tbaa !3
  %eval.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 15
  store %struct.sv* null, %struct.sv** %eval.i, align 8, !tbaa !0
  %canonical.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 16
  store i32 -1, i32* %canonical.i, align 4, !tbaa !3
  %tagnum.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 9
  %fio.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 23
  %10 = bitcast i64* %tagnum.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %10, i8 -1, i64 16, i32 8, i1 false) #3
  store %struct._PerlIO** %f, %struct._PerlIO*** %fio.i, align 8, !tbaa !0
  %optype1.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 1
  store i32 %or, i32* %optype1.i, align 4, !tbaa !3
  store i32 1, i32* %entry5, align 4, !tbaa !3
  %call.i = tail call %struct.hv* @Perl_newHV() #7
  %hseen.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 2
  store %struct.hv* %call.i, %struct.hv** %hseen.i, align 8, !tbaa !0
  %sv_flags.i = getelementptr inbounds %struct.hv* %call.i, i64 0, i32 2
  %11 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %11, -536870913
  store i32 %and.i, i32* %sv_flags.i, align 4, !tbaa !3
  %sv_any.i = getelementptr inbounds %struct.hv* %call.i, i64 0, i32 0
  %12 = load %struct.xpvhv** %sv_any.i, align 8, !tbaa !0
  %xhv_max.i = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 2
  store i64 4095, i64* %xhv_max.i, align 8, !tbaa !4
  %call5.i = tail call %struct.hv* @Perl_newHV() #7
  %hclass.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 6
  store %struct.hv* %call5.i, %struct.hv** %hclass.i, align 8, !tbaa !0
  %sv_any7.i = getelementptr inbounds %struct.hv* %call5.i, i64 0, i32 0
  %13 = load %struct.xpvhv** %sv_any7.i, align 8, !tbaa !0
  %xhv_max8.i = getelementptr inbounds %struct.xpvhv* %13, i64 0, i32 2
  store i64 4095, i64* %xhv_max8.i, align 8, !tbaa !4
  %call9.i = tail call %struct.hv* @Perl_newHV() #7
  %hook.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 8
  store %struct.hv* %call9.i, %struct.hv** %hook.i, align 8, !tbaa !0
  %call10.i = tail call %struct.av* @Perl_newAV() #7
  %hook_seen.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 3
  store %struct.av* %call10.i, %struct.av** %hook_seen.i, align 8, !tbaa !0
  %14 = load i32* %netorder.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %14, 0
  %..i = select i1 %tobool.i, i64 19, i64 6
  %.81.i = select i1 %tobool.i, i8* getelementptr inbounds ([19 x i8]* @magic_write.file_header, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @magic_write.network_file_header, i64 0, i64 0)
  %15 = load %struct._PerlIO*** %fio.i, align 8, !tbaa !0
  %tobool1.i = icmp eq %struct._PerlIO** %15, null
  br i1 %tobool1.i, label %if.then6.i, label %if.else41.i

if.then6.i:                                       ; preds = %if.end27
  %add.ptr.i = getelementptr inbounds i8* %.81.i, i64 4
  %sub.i = add i64 %..i, -4
  %aptr.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  %16 = load i8** %aptr.i, align 8, !tbaa !0
  %add.ptr7.i = getelementptr inbounds i8* %16, i64 %sub.i
  %aend.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 3
  %17 = load i8** %aend.i, align 8, !tbaa !0
  %cmp.i = icmp ugt i8* %add.ptr7.i, %17
  br i1 %cmp.i, label %if.then9.i, label %if.end35.i

if.then9.i:                                       ; preds = %if.then6.i
  %asiz.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 1
  %18 = load i64* %asiz.i, align 8, !tbaa !4
  %add.i = add i64 %18, %sub.i
  %arena.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 0
  %19 = load i8** %arena.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %19 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add11.i = shl i64 %add.i, 32
  %conv.i = add i64 %add11.i, 35180077121536
  %sext.i = ashr exact i64 %conv.i, 32
  %conv18.i = and i64 %sext.i, -8192
  %call.i73 = tail call i8* @Perl_safesysrealloc(i8* %19, i64 %conv18.i) #7
  store i8* %call.i73, i8** %arena.i, align 8, !tbaa !0
  store i64 %conv18.i, i64* %asiz.i, align 8, !tbaa !4
  %sext80.i = shl i64 %sub.ptr.sub.i, 32
  %idx.ext.i = ashr exact i64 %sext80.i, 32
  %add.ptr26.i = getelementptr inbounds i8* %call.i73, i64 %idx.ext.i
  store i8* %add.ptr26.i, i8** %aptr.i, align 8, !tbaa !0
  %add.ptr32.i = getelementptr inbounds i8* %call.i73, i64 %conv18.i
  store i8* %add.ptr32.i, i8** %aend.i, align 8, !tbaa !0
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then9.i, %if.then6.i
  %20 = phi i8* [ %add.ptr26.i, %if.then9.i ], [ %16, %if.then6.i ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %add.ptr.i, i64 %sub.i, i32 1, i1 false) #3
  %21 = load i8** %aptr.i, align 8, !tbaa !0
  %add.ptr40.i = getelementptr inbounds i8* %21, i64 %sub.i
  store i8* %add.ptr40.i, i8** %aptr.i, align 8, !tbaa !0
  br label %if.end30

if.else41.i:                                      ; preds = %if.end27
  %call43.i = tail call i64 @Perl_PerlIO_write(%struct._PerlIO** %15, i8* %.81.i, i64 %..i) #7
  %cmp44.i = icmp eq i64 %call43.i, %..i
  br i1 %cmp44.i, label %if.end30, label %return

if.end30:                                         ; preds = %if.else41.i, %if.end35.i
  %call31 = tail call fastcc i32 @store(%struct.stcxt* %cxt.0, %struct.sv* %6) #6
  %22 = load %struct._PerlIO*** %fio.i, align 8, !tbaa !0
  %tobool32 = icmp ne %struct._PerlIO** %22, null
  %tobool33 = icmp eq %struct.sv** %res, null
  %or.cond = or i1 %tobool32, %tobool33
  br i1 %or.cond, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.end30
  %23 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %arena.i74 = getelementptr inbounds %struct.stcxt* %23, i64 0, i32 21, i32 0
  %24 = load i8** %arena.i74, align 8, !tbaa !0
  %aptr.i75 = getelementptr inbounds %struct.stcxt* %23, i64 0, i32 21, i32 2
  %25 = load i8** %aptr.i75, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i76 = ptrtoint i8* %25 to i64
  %sub.ptr.rhs.cast.i77 = ptrtoint i8* %24 to i64
  %sub.ptr.sub.i78 = sub i64 %sub.ptr.lhs.cast.i76, %sub.ptr.rhs.cast.i77
  %call.i79 = tail call %struct.sv* @Perl_newSVpv(i8* %24, i64 %sub.ptr.sub.i78) #7
  store %struct.sv* %call.i79, %struct.sv** %res, align 8, !tbaa !0
  br label %if.end36

if.end36:                                         ; preds = %if.end30, %if.then34
  tail call fastcc void @clean_store_context(%struct.stcxt* %cxt.0) #6
  %prev = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 27
  %26 = load %struct.sv** %prev, align 8, !tbaa !0
  %tobool37 = icmp eq %struct.sv* %26, null
  br i1 %tobool37, label %if.end43, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.end36
  %27 = load i32* %optype1.i, align 4, !tbaa !3
  %and40 = and i32 %27, 4
  %tobool41 = icmp eq i32 %and40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %land.lhs.true38
  tail call fastcc void @free_context(%struct.stcxt* %cxt.0) #6
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true38, %if.end36, %if.then42
  %cmp44 = icmp eq i32 %call31, 0
  %conv = zext i1 %cmp44 to i32
  br label %return

return:                                           ; preds = %if.else41.i, %if.end43
  %retval.0 = phi i32 [ %conv, %if.end43 ], [ 0, %if.else41.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @net_pstore(%struct._PerlIO** %f, %struct.sv* nocapture %sv) #1 {
entry:
  %call = tail call fastcc i32 @do_store(%struct._PerlIO** %f, %struct.sv* %sv, i32 0, i32 1, %struct.sv** null) #6
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @mstore(%struct.sv* nocapture %sv) #1 {
entry:
  %out = alloca %struct.sv*, align 8
  %call = call fastcc i32 @do_store(%struct._PerlIO** null, %struct.sv* %sv, i32 0, i32 0, %struct.sv** %out) #6
  %tobool = icmp eq i32 %call, 0
  %0 = load %struct.sv** %out, align 8, !tbaa !0
  %retval.0 = select i1 %tobool, %struct.sv* @PL_sv_undef, %struct.sv* %0
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @net_mstore(%struct.sv* nocapture %sv) #1 {
entry:
  %out = alloca %struct.sv*, align 8
  %call = call fastcc i32 @do_store(%struct._PerlIO** null, %struct.sv* %sv, i32 0, i32 1, %struct.sv** %out) #6
  %tobool = icmp eq i32 %call, 0
  %0 = load %struct.sv** %out, align 8, !tbaa !0
  %retval.0 = select i1 %tobool, %struct.sv* @PL_sv_undef, %struct.sv* %0
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @pretrieve(%struct._PerlIO** %f) #1 {
entry:
  %call = tail call fastcc %struct.sv* @do_retrieve(%struct._PerlIO** %f, %struct.sv* null, i32 0) #6
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @do_retrieve(%struct._PerlIO** %f, %struct.sv* %in, i32 %optype) #1 {
entry:
  %buf.i = alloca [259 x i8], align 16
  %length = alloca i64, align 8
  %klen_tmp = alloca i64, align 8
  %is_utf8 = alloca i8, align 1
  %0 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %or = or i32 %optype, 2
  %s_dirty = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 18
  %1 = load i32* %s_dirty, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @clean_context(%struct.stcxt* %0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %entry1 = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 0
  %2 = load i32* %entry1, align 4, !tbaa !3
  %tobool2 = icmp eq i32 %2, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  %call = call fastcc %struct.stcxt* @allocate_context(%struct.stcxt* %0) #6
  %entry5.phi.trans.insert = getelementptr inbounds %struct.stcxt* %call, i64 0, i32 0
  %.pre = load i32* %entry5.phi.trans.insert, align 4, !tbaa !3
  %phitmp = add i32 %.pre, 1
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %3 = phi i32 [ %phitmp, %if.then3 ], [ 1, %if.end ]
  %cxt.0 = phi %struct.stcxt* [ %call, %if.then3 ], [ %0, %if.end ]
  %entry5 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 0
  store i32 %3, i32* %entry5, align 4, !tbaa !3
  %arena = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 20, i32 0
  %4 = load i8** %arena, align 8, !tbaa !0
  %tobool6 = icmp eq i8* %4, null
  br i1 %tobool6, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.end4
  %call8 = call i8* @Perl_safesysmalloc(i64 128) #7
  store i8* %call8, i8** %arena, align 8, !tbaa !0
  %asiz = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 20, i32 1
  store i64 128, i64* %asiz, align 8, !tbaa !4
  br label %if.end12

if.end12:                                         ; preds = %if.end4, %if.then7
  %tobool13 = icmp ne %struct._PerlIO** %f, null
  %tobool14 = icmp eq %struct.sv* %in, null
  %or.cond217 = or i1 %tobool13, %tobool14
  br i1 %or.cond217, label %if.end75, label %if.then15

if.then15:                                        ; preds = %if.end12
  %sv_flags = getelementptr inbounds %struct.sv* %in, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %5, 536870912
  %tobool16 = icmp eq i32 %and, 0
  br i1 %tobool16, label %if.end43, label %if.then17

if.then17:                                        ; preds = %if.then15
  %and19 = and i32 %5, 262144
  %cmp = icmp eq i32 %and19, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then17
  %sv_any = getelementptr inbounds %struct.sv* %in, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %6, i64 8
  %7 = bitcast i8* %xpv_cur to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  store i64 %8, i64* %length, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %6 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.then17
  %call21 = call i8* @Perl_sv_2pv_flags(%struct.sv* %in, i64* %length, i32 2) #7
  %.pre228 = load i64* %length, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %10 = phi i64 [ %8, %cond.true ], [ %.pre228, %cond.false ]
  %cond = phi i8* [ %9, %cond.true ], [ %call21, %cond.false ]
  %add = add i64 %10, 1
  store i64 %add, i64* %klen_tmp, align 8, !tbaa !4
  store i8 1, i8* %is_utf8, align 1, !tbaa !1
  %call22 = call i8* @Perl_bytes_from_utf8(i8* %cond, i64* %klen_tmp, i8* %is_utf8) #7
  %11 = load i8* %is_utf8, align 1, !tbaa !1
  %tobool23 = icmp eq i8 %11, 0
  br i1 %tobool23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %cond.end
  %s_dirty25 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty25, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([58 x i8]* @.str30, i64 0, i64 0)) #7
  br label %if.end26

if.end26:                                         ; preds = %cond.end, %if.then24
  %cmp27 = icmp eq i8* %call22, %cond
  br i1 %cmp27, label %if.end43, label %if.then28

if.then28:                                        ; preds = %if.end26
  %call29 = call %struct.sv* @Perl_sv_newmortal() #7
  %sv_flags30 = getelementptr inbounds %struct.sv* %call29, i64 0, i32 2
  %12 = load i32* %sv_flags30, align 4, !tbaa !3
  %and31 = and i32 %12, 252
  %cmp32 = icmp eq i32 %and31, 0
  br i1 %cmp32, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then28
  %call33 = call signext i8 @Perl_sv_upgrade(%struct.sv* %call29, i32 4) #7
  %.pre229 = load i32* %sv_flags30, align 4, !tbaa !3
  br label %lor.end

lor.end:                                          ; preds = %if.then28, %lor.rhs
  %13 = phi i32 [ %12, %if.then28 ], [ %.pre229, %lor.rhs ]
  %or36 = or i32 %13, 67371008
  store i32 %or36, i32* %sv_flags30, align 4, !tbaa !3
  %sv_any37 = getelementptr inbounds %struct.sv* %call29, i64 0, i32 0
  %14 = load i8** %sv_any37, align 8, !tbaa !0
  %xpv_pv38 = bitcast i8* %14 to i8**
  store i8* %call22, i8** %xpv_pv38, align 8, !tbaa !0
  %15 = load i64* %klen_tmp, align 8, !tbaa !4
  %16 = load i8** %sv_any37, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %16, i64 16
  %17 = bitcast i8* %xpv_len to i64*
  store i64 %15, i64* %17, align 8, !tbaa !4
  %18 = load i64* %klen_tmp, align 8, !tbaa !4
  %sub = add i64 %18, -1
  %xpv_cur41 = getelementptr inbounds i8* %16, i64 8
  %19 = bitcast i8* %xpv_cur41 to i64*
  store i64 %sub, i64* %19, align 8, !tbaa !4
  br label %if.end43

if.end43:                                         ; preds = %if.end26, %if.then15, %lor.end
  %in.addr.0 = phi %struct.sv* [ %call29, %lor.end ], [ %in, %if.end26 ], [ %in, %if.then15 ]
  %membuf_ro = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 19
  store i32 1, i32* %membuf_ro, align 4, !tbaa !3
  %msaved = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 22
  %membuf = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21
  %20 = bitcast %struct.extendable* %msaved to i8*
  %21 = bitcast %struct.extendable* %membuf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 32, i32 8, i1 false), !tbaa.struct !5
  %sv_flags44 = getelementptr inbounds %struct.sv* %in.addr.0, i64 0, i32 2
  %22 = load i32* %sv_flags44, align 4, !tbaa !3
  %and45 = and i32 %22, 67108864
  %tobool46 = icmp eq i32 %and45, 0
  br i1 %tobool46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end43
  %s_dirty48 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty48, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([20 x i8]* @.str31, i64 0, i64 0)) #7
  %.pre226 = load i32* %sv_flags44, align 4, !tbaa !3
  br label %if.end49

if.end49:                                         ; preds = %if.end43, %if.then47
  %23 = phi i32 [ %22, %if.end43 ], [ %.pre226, %if.then47 ]
  %and51 = and i32 %23, 262144
  %cmp52 = icmp eq i32 %and51, 0
  br i1 %cmp52, label %cond.false61, label %cond.true54

cond.true54:                                      ; preds = %if.end49
  %sv_any55 = getelementptr inbounds %struct.sv* %in.addr.0, i64 0, i32 0
  %24 = load i8** %sv_any55, align 8, !tbaa !0
  %xpv_cur56 = getelementptr inbounds i8* %24, i64 8
  %25 = bitcast i8* %xpv_cur56 to i64*
  %26 = load i64* %25, align 8, !tbaa !4
  %asiz58 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 1
  store i64 %26, i64* %asiz58, align 8, !tbaa !4
  %xpv_pv60 = bitcast i8* %24 to i8**
  %27 = load i8** %xpv_pv60, align 8, !tbaa !0
  br label %cond.end65

cond.false61:                                     ; preds = %if.end49
  %asiz63 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 1
  %call64 = call i8* @Perl_sv_2pv_flags(%struct.sv* %in.addr.0, i64* %asiz63, i32 2) #7
  %.pre227 = load i64* %asiz63, align 8, !tbaa !4
  br label %cond.end65

cond.end65:                                       ; preds = %cond.false61, %cond.true54
  %28 = phi i64 [ %26, %cond.true54 ], [ %.pre227, %cond.false61 ]
  %cond66 = phi i8* [ %27, %cond.true54 ], [ %call64, %cond.false61 ]
  %arena68 = getelementptr inbounds %struct.extendable* %membuf, i64 0, i32 0
  store i8* %cond66, i8** %arena68, align 8, !tbaa !0
  %aptr = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  store i8* %cond66, i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %cond66, i64 %28
  %aend = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 3
  store i8* %add.ptr, i8** %aend, align 8, !tbaa !0
  br label %if.end75

if.end75:                                         ; preds = %cond.end65, %if.end12
  %in.addr.1 = phi %struct.sv* [ %in, %if.end12 ], [ %in.addr.0, %cond.end65 ]
  %fio = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 23
  store %struct._PerlIO** %f, %struct._PerlIO*** %fio, align 8, !tbaa !0
  %29 = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 0
  call void @llvm.lifetime.start(i64 259, i8* %29) #3
  %tobool.i = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool.i, label %if.then64.i, label %if.else11.i

if.else11.i:                                      ; preds = %if.end75
  %call.i = call i64 @Perl_PerlIO_read(%struct._PerlIO** %f, i8* %29, i64 5) #7
  %cmp13.i = icmp eq i64 %call.i, 5
  br i1 %cmp13.i, label %if.end16.i, label %if.then78

if.end16.i:                                       ; preds = %if.else11.i
  %add.ptr18.i = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 4
  %call20.i = call i32 @memcmp(i8* %29, i8* getelementptr inbounds ([5 x i8]* @magicstr, i64 0, i64 0), i64 4) #7
  %tobool21.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.i, label %if.end85.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end16.i
  %30 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool24.i = icmp eq %struct._PerlIO** %30, null
  br i1 %tobool24.i, label %if.then25.i, label %if.else43.i

if.then25.i:                                      ; preds = %if.then22.i
  %aptr27.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  %31 = load i8** %aptr27.i, align 8, !tbaa !0
  %add.ptr28.i = getelementptr inbounds i8* %31, i64 6
  %aend30.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 3
  %32 = load i8** %aend30.i, align 8, !tbaa !0
  %cmp31.i = icmp ugt i8* %add.ptr28.i, %32
  br i1 %cmp31.i, label %if.then78, label %if.then32.i

if.then32.i:                                      ; preds = %if.then25.i
  %add.ptr33.i = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr33.i, i8* %31, i64 6, i32 1, i1 false) #3
  store i8* %add.ptr28.i, i8** %aptr27.i, align 8, !tbaa !0
  br label %if.end52.i

if.else43.i:                                      ; preds = %if.then22.i
  %add.ptr45.i = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 5
  %call47.i = call i64 @Perl_PerlIO_read(%struct._PerlIO** %30, i8* %add.ptr45.i, i64 6) #7
  %cmp49.i = icmp eq i64 %call47.i, 6
  br i1 %cmp49.i, label %if.end52.i, label %if.then78

if.end52.i:                                       ; preds = %if.else43.i, %if.then32.i
  %call54.i = call i32 @memcmp(i8* %29, i8* getelementptr inbounds ([11 x i8]* @old_magicstr, i64 0, i64 0), i64 10) #7
  %tobool55.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.i, label %if.end57.i, label %if.then56.i

if.then56.i:                                      ; preds = %if.end52.i
  %s_dirty.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty.i, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str41, i64 0, i64 0)) #7
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then56.i, %if.end52.i
  %add.ptr59.i = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 10
  br label %if.end85.i

if.then64.i:                                      ; preds = %if.end75
  %aptr66.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  %33 = load i8** %aptr66.i, align 8, !tbaa !0
  %aend68.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 3
  %34 = load i8** %aend68.i, align 8, !tbaa !0
  %cmp69.i = icmp ult i8* %33, %34
  br i1 %cmp69.i, label %if.then71.i, label %if.then78

if.then71.i:                                      ; preds = %if.then64.i
  %incdec.ptr.i = getelementptr inbounds i8* %33, i64 1
  store i8* %incdec.ptr.i, i8** %aptr66.i, align 8, !tbaa !0
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then71.i, %if.end57.i, %if.end16.i
  %.sink.in.i = phi i8* [ %33, %if.then71.i ], [ %add.ptr59.i, %if.end57.i ], [ %add.ptr18.i, %if.end16.i ]
  %.sink.i = load i8* %.sink.in.i, align 1
  %conv.i = zext i8 %.sink.i to i32
  %shr399.i = lshr i32 %conv.i, 1
  %tobool86.i = icmp ne i32 %shr399.i, 0
  %35 = select i1 %tobool86.i, %struct.sv* (...)** bitcast ([28 x %struct.sv* (%struct.stcxt*, i8*)*]* @sv_retrieve to %struct.sv* (...)**), %struct.sv* (...)** bitcast ([28 x %struct.sv* (%struct.stcxt*, i8*)*]* @sv_old_retrieve to %struct.sv* (...)**)
  %retrieve_vtbl.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 26
  store %struct.sv* (...)** %35, %struct.sv* (...)*** %retrieve_vtbl.i, align 8, !tbaa !0
  %cmp87.i = icmp ugt i8 %.sink.i, 3
  br i1 %cmp87.i, label %if.then89.i, label %lor.lhs.false.thread.i

lor.lhs.false.thread.i:                           ; preds = %if.end85.i
  %ver_major388.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 24
  store i32 %shr399.i, i32* %ver_major388.i, align 4, !tbaa !3
  %ver_minor389.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 25
  store i32 0, i32* %ver_minor389.i, align 4, !tbaa !3
  br label %if.end190.i

if.then89.i:                                      ; preds = %if.end85.i
  %36 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool91.i = icmp eq %struct._PerlIO** %36, null
  br i1 %tobool91.i, label %if.then92.i, label %if.else106.i

if.then92.i:                                      ; preds = %if.then89.i
  %aptr94.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  %37 = load i8** %aptr94.i, align 8, !tbaa !0
  %aend96.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 3
  %38 = load i8** %aend96.i, align 8, !tbaa !0
  %cmp97.i = icmp ult i8* %37, %38
  br i1 %cmp97.i, label %if.then99.i, label %if.then78

if.then99.i:                                      ; preds = %if.then92.i
  %incdec.ptr102.i = getelementptr inbounds i8* %37, i64 1
  store i8* %incdec.ptr102.i, i8** %aptr94.i, align 8, !tbaa !0
  %39 = load i8* %37, align 1, !tbaa !1
  %conv103.i = zext i8 %39 to i32
  br label %if.end114.i

if.else106.i:                                     ; preds = %if.then89.i
  %call108.i = call i32 @PerlIO_getc(%struct._PerlIO** %36) #7
  %cmp109.i = icmp eq i32 %call108.i, -1
  br i1 %cmp109.i, label %if.then78, label %if.end114.i

if.end114.i:                                      ; preds = %if.else106.i, %if.then99.i
  %version_minor.0.i = phi i32 [ %call108.i, %if.else106.i ], [ %conv103.i, %if.then99.i ]
  %ver_major.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 24
  store i32 %shr399.i, i32* %ver_major.i, align 4, !tbaa !3
  %ver_minor.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 25
  store i32 %version_minor.0.i, i32* %ver_minor.i, align 4, !tbaa !3
  %cmp115.i = icmp ugt i8 %.sink.i, 5
  br i1 %cmp115.i, label %if.then187.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end114.i
  %cmp117.i = icmp eq i32 %shr399.i, 2
  %cmp119.i = icmp sgt i32 %version_minor.0.i, 6
  %or.cond.i = and i1 %cmp117.i, %cmp119.i
  br i1 %or.cond.i, label %if.then124.i, label %if.end190.i

if.then124.i:                                     ; preds = %lor.lhs.false.i
  %accept_future_minor.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 17
  %40 = load i32* %accept_future_minor.i, align 4, !tbaa !3
  %cmp125.i = icmp slt i32 %40, 0
  br i1 %cmp125.i, label %if.then127.i, label %if.end179.i

if.then127.i:                                     ; preds = %if.then124.i
  %call128.i = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  %tobool129.i = icmp eq %struct.sv* %call128.i, null
  br i1 %tobool129.i, label %cond.end174.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.then127.i
  %call130.i = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  %sv_flags.i = getelementptr inbounds %struct.sv* %call130.i, i64 0, i32 2
  %41 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %41, 262144
  %tobool131.i = icmp eq i32 %and.i, 0
  %call133.i = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  br i1 %tobool131.i, label %cond.false145.i, label %cond.true132.i

cond.true132.i:                                   ; preds = %cond.false.i
  %sv_any.i = getelementptr inbounds %struct.sv* %call133.i, i64 0, i32 0
  %42 = load i8** %sv_any.i, align 8, !tbaa !0
  %43 = bitcast i8* %42 to %struct.xpv*
  store %struct.xpv* %43, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool134.i = icmp eq i8* %42, null
  br i1 %tobool134.i, label %land.end143.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.true132.i
  %xpv_cur.i = getelementptr inbounds i8* %42, i64 8
  %44 = bitcast i8* %xpv_cur.i to i64*
  %45 = load i64* %44, align 8, !tbaa !4
  %cmp135.i = icmp ugt i64 %45, 1
  br i1 %cmp135.i, label %land.end143.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %tobool138.i = icmp eq i64 %45, 0
  br i1 %tobool138.i, label %land.end143.i, label %land.rhs139.i

land.rhs139.i:                                    ; preds = %lor.rhs.i
  %xpv_pv.i = bitcast i8* %42 to i8**
  %46 = load i8** %xpv_pv.i, align 8, !tbaa !0
  %47 = load i8* %46, align 1, !tbaa !1
  %cmp141.i = icmp ne i8 %47, 48
  br label %land.end143.i

land.end143.i:                                    ; preds = %land.rhs139.i, %lor.rhs.i, %land.rhs.i, %cond.true132.i
  %48 = phi i1 [ false, %cond.true132.i ], [ true, %land.rhs.i ], [ false, %lor.rhs.i ], [ %cmp141.i, %land.rhs139.i ]
  %cond144.i = zext i1 %48 to i32
  br label %cond.end174.i

cond.false145.i:                                  ; preds = %cond.false.i
  %sv_flags147.i = getelementptr inbounds %struct.sv* %call133.i, i64 0, i32 2
  %49 = load i32* %sv_flags147.i, align 4, !tbaa !3
  %and148.i = and i32 %49, 65536
  %tobool149.i = icmp eq i32 %and148.i, 0
  %call151.i = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  br i1 %tobool149.i, label %cond.false155.i, label %cond.true150.i

cond.true150.i:                                   ; preds = %cond.false145.i
  %sv_any152.i = getelementptr inbounds %struct.sv* %call151.i, i64 0, i32 0
  %50 = load i8** %sv_any152.i, align 8, !tbaa !0
  %xiv_iv.i = getelementptr inbounds i8* %50, i64 24
  %51 = bitcast i8* %xiv_iv.i to i64*
  %52 = load i64* %51, align 8, !tbaa !4
  %cmp153.i = icmp ne i64 %52, 0
  %conv154.i = zext i1 %cmp153.i to i32
  br label %cond.end174.i

cond.false155.i:                                  ; preds = %cond.false145.i
  %sv_flags157.i = getelementptr inbounds %struct.sv* %call151.i, i64 0, i32 2
  %53 = load i32* %sv_flags157.i, align 4, !tbaa !3
  %and158.i = and i32 %53, 131072
  %tobool159.i = icmp eq i32 %and158.i, 0
  %call161.i = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  br i1 %tobool159.i, label %cond.false165.i, label %cond.true160.i

cond.true160.i:                                   ; preds = %cond.false155.i
  %sv_any162.i = getelementptr inbounds %struct.sv* %call161.i, i64 0, i32 0
  %54 = load i8** %sv_any162.i, align 8, !tbaa !0
  %xnv_nv.i = getelementptr inbounds i8* %54, i64 32
  %55 = bitcast i8* %xnv_nv.i to double*
  %56 = load double* %55, align 8, !tbaa !6
  %cmp163.i = fcmp une double %56, 0.000000e+00
  %conv164.i = zext i1 %cmp163.i to i32
  br label %cond.end174.i

cond.false165.i:                                  ; preds = %cond.false155.i
  %call167.i = call signext i8 @Perl_sv_2bool(%struct.sv* %call161.i) #7
  %conv168.i = sext i8 %call167.i to i32
  br label %cond.end174.i

cond.end174.i:                                    ; preds = %cond.false165.i, %cond.true160.i, %cond.true150.i, %land.end143.i, %if.then127.i
  %cond175.i = phi i32 [ 0, %if.then127.i ], [ %cond144.i, %land.end143.i ], [ %conv154.i, %cond.true150.i ], [ %conv164.i, %cond.true160.i ], [ %conv168.i, %cond.false165.i ]
  %tobool176.i = icmp ne i32 %cond175.i, 0
  %cond177.i = zext i1 %tobool176.i to i32
  store i32 %cond177.i, i32* %accept_future_minor.i, align 4, !tbaa !3
  br label %if.end179.i

if.end179.i:                                      ; preds = %cond.end174.i, %if.then124.i
  %57 = phi i32 [ %cond177.i, %cond.end174.i ], [ %40, %if.then124.i ]
  %not.cmp181.i = icmp eq i32 %57, 1
  br i1 %not.cmp181.i, label %if.end190.i, label %if.then187.i

if.then187.i:                                     ; preds = %if.end179.i, %if.end114.i
  %s_dirty188.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty188.i, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([60 x i8]* @.str42, i64 0, i64 0), i32 %shr399.i, i32 %version_minor.0.i, i32 2, i32 6) #7
  br label %if.end190.i

if.end190.i:                                      ; preds = %if.then187.i, %if.end179.i, %lor.lhs.false.i, %lor.lhs.false.thread.i
  %version_minor.0393.i = phi i32 [ %version_minor.0.i, %if.end179.i ], [ %version_minor.0.i, %if.then187.i ], [ %version_minor.0.i, %lor.lhs.false.i ], [ 0, %lor.lhs.false.thread.i ]
  %and191.i = and i32 %conv.i, 1
  %netorder.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 11
  store i32 %and191.i, i32* %netorder.i, align 4, !tbaa !3
  %tobool192.i = icmp eq i32 %and191.i, 0
  br i1 %tobool192.i, label %if.end194.i, label %if.end83

if.end194.i:                                      ; preds = %if.end190.i
  %cmp198.i = icmp sgt i32 %version_minor.0393.i, 1
  %cmp198..i = and i1 %cmp87.i, %cmp198.i
  %58 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool202.i = icmp eq %struct._PerlIO** %58, null
  br i1 %tobool202.i, label %if.then203.i, label %if.else217.i

if.then203.i:                                     ; preds = %if.end194.i
  %aptr205.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  %59 = load i8** %aptr205.i, align 8, !tbaa !0
  %aend207.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 3
  %60 = load i8** %aend207.i, align 8, !tbaa !0
  %cmp208.i = icmp ult i8* %59, %60
  br i1 %cmp208.i, label %if.end224.thread.i, label %if.then78

if.end224.thread.i:                               ; preds = %if.then203.i
  %incdec.ptr213.i = getelementptr inbounds i8* %59, i64 1
  store i8* %incdec.ptr213.i, i8** %aptr205.i, align 8, !tbaa !0
  %61 = load i8* %59, align 1, !tbaa !1
  %conv214.i = zext i8 %61 to i32
  %add400.i = select i1 %cmp198..i, i32 4, i32 3
  %add225401.i = add i32 %conv214.i, %add400.i
  br label %if.then228.i

if.else217.i:                                     ; preds = %if.end194.i
  %call219.i = call i32 @PerlIO_getc(%struct._PerlIO** %58) #7
  %cmp220.i = icmp eq i32 %call219.i, -1
  br i1 %cmp220.i, label %if.then78, label %if.end224.i

if.end224.i:                                      ; preds = %if.else217.i
  %.pre.i = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %add.i = select i1 %cmp198..i, i32 4, i32 3
  %add225.i = add i32 %call219.i, %add.i
  %tobool227.i = icmp eq %struct._PerlIO** %.pre.i, null
  br i1 %tobool227.i, label %if.end224.i.if.then228.i_crit_edge, label %if.else246.i

if.end224.i.if.then228.i_crit_edge:               ; preds = %if.end224.i
  %aptr230.i.phi.trans.insert = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  %.pre230 = load i8** %aptr230.i.phi.trans.insert, align 8, !tbaa !0
  %aend233.i.phi.trans.insert = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 3
  %.pre231 = load i8** %aend233.i.phi.trans.insert, align 8, !tbaa !0
  br label %if.then228.i

if.then228.i:                                     ; preds = %if.end224.i.if.then228.i_crit_edge, %if.end224.thread.i
  %62 = phi i8* [ %60, %if.end224.thread.i ], [ %.pre231, %if.end224.i.if.then228.i_crit_edge ]
  %63 = phi i8* [ %incdec.ptr213.i, %if.end224.thread.i ], [ %.pre230, %if.end224.i.if.then228.i_crit_edge ]
  %add225405.i = phi i32 [ %add225401.i, %if.end224.thread.i ], [ %add225.i, %if.end224.i.if.then228.i_crit_edge ]
  %c.0404.i = phi i32 [ %conv214.i, %if.end224.thread.i ], [ %call219.i, %if.end224.i.if.then228.i_crit_edge ]
  %idx.ext.i = sext i32 %add225405.i to i64
  %add.ptr231.i = getelementptr inbounds i8* %63, i64 %idx.ext.i
  %cmp234.i = icmp ugt i8* %add.ptr231.i, %62
  br i1 %cmp234.i, label %if.then78, label %if.then236.i

if.then236.i:                                     ; preds = %if.then228.i
  %aptr230.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21, i32 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %63, i64 %idx.ext.i, i32 1, i1 false) #3
  store i8* %add.ptr231.i, i8** %aptr230.i, align 8, !tbaa !0
  br label %if.end256.i

if.else246.i:                                     ; preds = %if.end224.i
  %conv249.i = sext i32 %add225.i to i64
  %call250.i = call i64 @Perl_PerlIO_read(%struct._PerlIO** %.pre.i, i8* %29, i64 %conv249.i) #7
  %cmp252.i = icmp eq i64 %call250.i, %conv249.i
  br i1 %cmp252.i, label %if.end256.i, label %if.then78

if.end256.i:                                      ; preds = %if.else246.i, %if.then236.i
  %c.0403.i = phi i32 [ %call219.i, %if.else246.i ], [ %c.0404.i, %if.then236.i ]
  %conv257.i = sext i32 %c.0403.i to i64
  %cmp258.i = icmp eq i32 %c.0403.i, 8
  br i1 %cmp258.i, label %lor.lhs.false260.i, label %if.then265.i

lor.lhs.false260.i:                               ; preds = %if.end256.i
  %call263.i = call i32 @memcmp(i8* %29, i8* getelementptr inbounds ([9 x i8]* @byteorderstr, i64 0, i64 0), i64 %conv257.i) #7
  %tobool264.i = icmp eq i32 %call263.i, 0
  br i1 %tobool264.i, label %if.end267.i, label %if.then265.i

if.then265.i:                                     ; preds = %lor.lhs.false260.i, %if.end256.i
  %s_dirty266.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty266.i, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str43, i64 0, i64 0)) #7
  br label %if.end267.i

if.end267.i:                                      ; preds = %if.then265.i, %lor.lhs.false260.i
  %add.ptr270.i = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 %conv257.i
  %add.ptr270.sum.i = add i64 %conv257.i, 1
  %incdec.ptr271.i = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 %add.ptr270.sum.i
  %64 = load i8* %add.ptr270.i, align 1, !tbaa !1
  %cmp274.i = icmp eq i8 %64, 4
  br i1 %cmp274.i, label %if.end278.i, label %if.then276.i

if.then276.i:                                     ; preds = %if.end267.i
  %s_dirty277.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty277.i, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str44, i64 0, i64 0)) #7
  br label %if.end278.i

if.end278.i:                                      ; preds = %if.then276.i, %if.end267.i
  %incdec.ptr271.sum.i = add i64 %conv257.i, 2
  %incdec.ptr279.i = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 %incdec.ptr271.sum.i
  %65 = load i8* %incdec.ptr271.i, align 1, !tbaa !1
  %cmp282.i = icmp eq i8 %65, 8
  br i1 %cmp282.i, label %if.end286.i, label %if.then284.i

if.then284.i:                                     ; preds = %if.end278.i
  %s_dirty285.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty285.i, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str45, i64 0, i64 0)) #7
  br label %if.end286.i

if.end286.i:                                      ; preds = %if.then284.i, %if.end278.i
  %66 = load i8* %incdec.ptr279.i, align 1, !tbaa !1
  %cmp289.i = icmp eq i8 %66, 8
  br i1 %cmp289.i, label %if.end293.i, label %if.then291.i

if.then291.i:                                     ; preds = %if.end286.i
  %s_dirty292.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty292.i, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str46, i64 0, i64 0)) #7
  br label %if.end293.i

if.end293.i:                                      ; preds = %if.then291.i, %if.end286.i
  br i1 %cmp198..i, label %if.then295.i, label %if.end83

if.then295.i:                                     ; preds = %if.end293.i
  %incdec.ptr279.sum.i = add i64 %conv257.i, 3
  %incdec.ptr296.i = getelementptr inbounds [259 x i8]* %buf.i, i64 0, i64 %incdec.ptr279.sum.i
  %67 = load i8* %incdec.ptr296.i, align 1, !tbaa !1
  %cmp299.i = icmp eq i8 %67, 8
  br i1 %cmp299.i, label %if.end83, label %if.then301.i

if.then301.i:                                     ; preds = %if.then295.i
  %s_dirty302.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty302.i, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str47, i64 0, i64 0)) #7
  br label %if.end83

if.then78:                                        ; preds = %if.else11.i, %if.then25.i, %if.else43.i, %if.then64.i, %if.then92.i, %if.else106.i, %if.then203.i, %if.else217.i, %if.then228.i, %if.else246.i
  call void @llvm.lifetime.end(i64 259, i8* %29) #3
  %s_dirty79 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 18
  store i32 1, i32* %s_dirty79, align 4, !tbaa !3
  %68 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool81 = icmp ne %struct._PerlIO** %68, null
  %cond82 = select i1 %tobool81, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str34, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str32, i64 0, i64 0), i8* %cond82) #7
  br label %if.end83

if.end83:                                         ; preds = %if.end293.i, %if.then301.i, %if.then295.i, %if.end190.i, %if.then78
  br i1 %tobool13, label %cond.end98, label %cond.false86

cond.false86:                                     ; preds = %if.end83
  %tobool87 = icmp eq %struct.sv* %in.addr.1, null
  br i1 %tobool87, label %cond.false95, label %cond.true88

cond.true88:                                      ; preds = %cond.false86
  %sv_flags89 = getelementptr inbounds %struct.sv* %in.addr.1, i64 0, i32 2
  %69 = load i32* %sv_flags89, align 4, !tbaa !3
  %and90 = and i32 %69, 57344
  %tobool91 = icmp eq i32 %and90, 0
  br i1 %tobool91, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %cond.true88
  %call92 = call signext i8 @Perl_sv_tainted(%struct.sv* %in.addr.1) #7
  %tobool94 = icmp ne i8 %call92, 0
  br label %land.end

land.end:                                         ; preds = %cond.true88, %land.rhs
  %70 = phi i1 [ false, %cond.true88 ], [ %tobool94, %land.rhs ]
  %land.ext = zext i1 %70 to i32
  br label %cond.end98

cond.false95:                                     ; preds = %cond.false86
  %s_tainted = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 12
  %71 = load i32* %s_tainted, align 4, !tbaa !3
  br label %cond.end98

cond.end98:                                       ; preds = %land.end, %cond.false95, %if.end83
  %cond99 = phi i32 [ 1, %if.end83 ], [ %land.ext, %land.end ], [ %71, %cond.false95 ]
  %call.i219 = call %struct.hv* @Perl_newHV() #7
  %hook.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 8
  store %struct.hv* %call.i219, %struct.hv** %hook.i, align 8, !tbaa !0
  %retrieve_vtbl.i220 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 26
  %72 = load %struct.sv* (...)*** %retrieve_vtbl.i220, align 8, !tbaa !0
  %cmp.i = icmp eq %struct.sv* (...)** %72, bitcast ([28 x %struct.sv* (%struct.stcxt*, i8*)*]* @sv_old_retrieve to %struct.sv* (...)**)
  br i1 %cmp.i, label %cond.true.i, label %init_retrieve_context.exit

cond.true.i:                                      ; preds = %cond.end98
  %call1.i = call %struct.hv* @Perl_newHV() #7
  br label %init_retrieve_context.exit

init_retrieve_context.exit:                       ; preds = %cond.end98, %cond.true.i
  %cond.i = phi %struct.hv* [ %call1.i, %cond.true.i ], [ null, %cond.end98 ]
  %hseen.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 2
  store %struct.hv* %cond.i, %struct.hv** %hseen.i, align 8, !tbaa !0
  %call2.i = call %struct.av* @Perl_newAV() #7
  %aseen.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 4
  store %struct.av* %call2.i, %struct.av** %aseen.i, align 8, !tbaa !0
  %where_is_undef.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 5
  store i64 -1, i64* %where_is_undef.i, align 8, !tbaa !4
  %call3.i = call %struct.av* @Perl_newAV() #7
  %aclass.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 7
  store %struct.av* %call3.i, %struct.av** %aclass.i, align 8, !tbaa !0
  %tagnum.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 9
  %optype4.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 1
  %73 = bitcast i64* %tagnum.i to i8*
  call void @llvm.memset.p0i8.i64(i8* %73, i8 0, i64 16, i32 8, i1 false) #3
  store i32 %or, i32* %optype4.i, align 4, !tbaa !3
  %s_tainted.i = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 12
  store i32 %cond99, i32* %s_tainted.i, align 4, !tbaa !3
  store i32 1, i32* %entry5, align 4, !tbaa !3
  %accept_future_minor.i221 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 17
  store i32 -1, i32* %accept_future_minor.i221, align 4, !tbaa !3
  %call100 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt.0, i8* null) #6
  %tobool103 = icmp eq %struct.sv* %in.addr.1, null
  %or.cond218 = or i1 %tobool13, %tobool103
  br i1 %or.cond218, label %if.end108, label %if.then104

if.then104:                                       ; preds = %init_retrieve_context.exit
  %membuf_ro105 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 19
  store i32 0, i32* %membuf_ro105, align 4, !tbaa !3
  %membuf106 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 21
  %msaved107 = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 22
  %74 = bitcast %struct.extendable* %membuf106 to i8*
  %75 = bitcast %struct.extendable* %msaved107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 32, i32 8, i1 false), !tbaa.struct !5
  br label %if.end108

if.end108:                                        ; preds = %if.then104, %init_retrieve_context.exit
  %76 = load %struct.hv** %hseen.i, align 8, !tbaa !0
  %cmp109 = icmp eq %struct.hv* %76, null
  call fastcc void @clean_retrieve_context(%struct.stcxt* %cxt.0) #6
  %prev = getelementptr inbounds %struct.stcxt* %cxt.0, i64 0, i32 27
  %77 = load %struct.sv** %prev, align 8, !tbaa !0
  %tobool111 = icmp eq %struct.sv* %77, null
  br i1 %tobool111, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.end108
  call fastcc void @free_context(%struct.stcxt* %cxt.0) #6
  br label %if.end113

if.end113:                                        ; preds = %if.end108, %if.then112
  %tobool114 = icmp eq %struct.sv* %call100, null
  br i1 %tobool114, label %return, label %if.end116

if.end116:                                        ; preds = %if.end113
  br i1 %cmp109, label %if.end131, label %if.then118

if.then118:                                       ; preds = %if.end116
  %call119 = call fastcc i32 @sv_type(%struct.sv* %call100) #6
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %land.lhs.true122, label %if.end131

land.lhs.true122:                                 ; preds = %if.then118
  %sv_any123 = getelementptr inbounds %struct.sv* %call100, i64 0, i32 0
  %78 = load i8** %sv_any123, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %78 to %struct.sv**
  %79 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %tobool124 = icmp eq %struct.sv* %79, null
  br i1 %tobool124, label %if.end131, label %land.lhs.true125

land.lhs.true125:                                 ; preds = %land.lhs.true122
  %sv_flags126 = getelementptr inbounds %struct.sv* %79, i64 0, i32 2
  %80 = load i32* %sv_flags126, align 4, !tbaa !3
  %and127 = and i32 %80, 4096
  %tobool128 = icmp eq i32 %and127, 0
  br i1 %tobool128, label %if.end131, label %return

if.end131:                                        ; preds = %land.lhs.true125, %land.lhs.true122, %if.end116, %if.then118
  %sv_flags132 = getelementptr inbounds %struct.sv* %call100, i64 0, i32 2
  %81 = load i32* %sv_flags132, align 4, !tbaa !3
  %and133 = and i32 %81, 4096
  %tobool134 = icmp eq i32 %and133, 0
  br i1 %tobool134, label %if.end150, label %if.then135

if.then135:                                       ; preds = %if.end131
  %sv_any136 = getelementptr inbounds %struct.sv* %call100, i64 0, i32 0
  %82 = load i8** %sv_any136, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %82, i64 48
  %83 = bitcast i8* %xmg_stash to %struct.hv**
  %84 = load %struct.hv** %83, align 8, !tbaa !0
  %call138 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call100) #7
  %tobool139 = icmp ne %struct.hv* %84, null
  %85 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool141 = icmp ne i64 %85, 0
  %or.cond = and i1 %tobool139, %tobool141
  br i1 %or.cond, label %land.lhs.true142, label %return

land.lhs.true142:                                 ; preds = %if.then135
  %call143 = call signext i8 @Perl_Gv_AMupdate(%struct.hv* %84) #7
  %tobool145 = icmp eq i8 %call143, 0
  br i1 %tobool145, label %return, label %if.then146

if.then146:                                       ; preds = %land.lhs.true142
  %sv_flags147 = getelementptr inbounds %struct.sv* %call138, i64 0, i32 2
  %86 = load i32* %sv_flags147, align 4, !tbaa !3
  %or148 = or i32 %86, 268435456
  store i32 %or148, i32* %sv_flags147, align 4, !tbaa !3
  br label %return

if.end150:                                        ; preds = %if.end131
  %call151 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call100) #7
  br label %return

return:                                           ; preds = %if.then135, %if.then146, %land.lhs.true142, %land.lhs.true125, %if.end113, %if.end150
  %retval.0 = phi %struct.sv* [ %call151, %if.end150 ], [ @PL_sv_undef, %if.end113 ], [ %call100, %land.lhs.true125 ], [ %call138, %land.lhs.true142 ], [ %call138, %if.then146 ], [ %call138, %if.then135 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @mretrieve(%struct.sv* %sv) #1 {
entry:
  %call = tail call fastcc %struct.sv* @do_retrieve(%struct._PerlIO** null, %struct.sv* %sv, i32 0) #6
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @dclone(%struct.sv* %sv) #1 {
entry:
  %0 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %s_dirty = getelementptr inbounds %struct.stcxt* %0, i64 0, i32 18
  %1 = load i32* %s_dirty, align 4, !tbaa !3
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call fastcc void @clean_context(%struct.stcxt* %0) #6
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call fastcc i32 @do_store(%struct._PerlIO** null, %struct.sv* %sv, i32 4, i32 0, %struct.sv** null) #6
  %tobool1 = icmp eq i32 %call, 0
  br i1 %tobool1, label %return, label %if.end3

if.end3:                                          ; preds = %if.end
  %2 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %aptr = getelementptr inbounds %struct.stcxt* %2, i64 0, i32 21, i32 2
  %3 = load i8** %aptr, align 8, !tbaa !0
  %arena = getelementptr inbounds %struct.stcxt* %2, i64 0, i32 21, i32 0
  %4 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %tobool8 = icmp eq i8* %4, null
  br i1 %tobool8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end3
  %call10 = tail call i8* @Perl_safesysmalloc(i64 8192) #7
  store i8* %call10, i8** %arena, align 8, !tbaa !0
  %asiz = getelementptr inbounds %struct.stcxt* %2, i64 0, i32 21, i32 1
  store i64 8192, i64* %asiz, align 8, !tbaa !4
  br label %if.end14

if.end14:                                         ; preds = %if.end3, %if.then9
  %5 = phi i8* [ %4, %if.end3 ], [ %call10, %if.then9 ]
  store i8* %5, i8** %aptr, align 8, !tbaa !0
  %tobool19 = icmp eq i32 %conv, 0
  br i1 %tobool19, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end14
  %sext = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr inbounds i8* %5, i64 %idx.ext
  %aend = getelementptr inbounds %struct.stcxt* %2, i64 0, i32 21, i32 3
  store i8* %add.ptr, i8** %aend, align 8, !tbaa !0
  br label %if.end31

if.else:                                          ; preds = %if.end14
  %asiz27 = getelementptr inbounds %struct.stcxt* %2, i64 0, i32 21, i32 1
  %6 = load i64* %asiz27, align 8, !tbaa !4
  %add.ptr28 = getelementptr inbounds i8* %5, i64 %6
  %aend30 = getelementptr inbounds %struct.stcxt* %2, i64 0, i32 21, i32 3
  store i8* %add.ptr28, i8** %aend30, align 8, !tbaa !0
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then20
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %7 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %7, 57344
  %tobool32 = icmp eq i32 %and, 0
  br i1 %tobool32, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end31
  %call33 = tail call signext i8 @Perl_sv_tainted(%struct.sv* %sv) #7
  %tobool35 = icmp ne i8 %call33, 0
  br label %land.end

land.end:                                         ; preds = %if.end31, %land.rhs
  %8 = phi i1 [ false, %if.end31 ], [ %tobool35, %land.rhs ]
  %land.ext = zext i1 %8 to i32
  %s_tainted = getelementptr inbounds %struct.stcxt* %2, i64 0, i32 12
  store i32 %land.ext, i32* %s_tainted, align 4, !tbaa !3
  %call36 = tail call fastcc %struct.sv* @do_retrieve(%struct._PerlIO** null, %struct.sv* null, i32 4) #6
  br label %return

return:                                           ; preds = %if.end, %land.end
  %retval.0 = phi %struct.sv* [ %call36, %land.end ], [ @PL_sv_undef, %if.end ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @clean_context(%struct.stcxt* nocapture %cxt) #1 {
entry:
  %membuf_ro = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 19
  %0 = load i32* %membuf_ro, align 4, !tbaa !3
  %tobool = icmp eq i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %membuf_ro, align 4, !tbaa !3
  %membuf = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21
  %msaved = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 22
  %1 = bitcast %struct.extendable* %membuf to i8*
  %2 = bitcast %struct.extendable* %msaved to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 32, i32 8, i1 false), !tbaa.struct !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %optype = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 1
  %3 = load i32* %optype, align 4, !tbaa !3
  %and = and i32 %3, 2
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call fastcc void @clean_retrieve_context(%struct.stcxt* %cxt) #6
  br label %if.end10

if.else:                                          ; preds = %if.end
  %and5 = and i32 %3, 1
  %tobool6 = icmp eq i32 %and5, 0
  br i1 %tobool6, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  tail call fastcc void @clean_store_context(%struct.stcxt* %cxt) #6
  br label %if.end10

if.else8:                                         ; preds = %if.else
  %entry1.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 0
  store i32 0, i32* %entry1.i, align 4, !tbaa !3
  %s_dirty.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 0, i32* %s_dirty.i, align 4, !tbaa !3
  %and.i = and i32 %3, -4
  store i32 %and.i, i32* %optype, align 4, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.else8, %if.then3
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #2

; Function Attrs: optsize
declare signext i8 @Perl_sv_tainted(%struct.sv*) #2

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable__Cxt_DESTROY(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str, i64 0, i64 0)) #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = shl i64 %sub.ptr.sub3, 29
  %idx.ext7 = ashr exact i64 %sext, 32
  %idx.neg = sub i64 0, %idx.ext7
  %add.ptr8 = getelementptr inbounds %struct.sv** %0, i64 %idx.neg
  %sext44 = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext44, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %6, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  %8 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any10 = getelementptr inbounds %struct.sv* %8, i64 0, i32 0
  %9 = load i8** %sv_any10, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %9 to i8**
  %10 = load i8** %xpv_pv, align 8, !tbaa !0
  %keybuf = getelementptr inbounds i8* %10, i64 120
  %arena = bitcast i8* %keybuf to i8**
  %11 = load i8** %arena, align 8, !tbaa !0
  %tobool = icmp eq i8* %11, null
  br i1 %tobool, label %if.end14, label %if.then11

if.then11:                                        ; preds = %if.end
  tail call void @Perl_safesysfree(i8* %11) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then11
  %membuf_ro = getelementptr inbounds i8* %10, i64 116
  %12 = bitcast i8* %membuf_ro to i32*
  %13 = load i32* %12, align 4, !tbaa !3
  %tobool15 = icmp eq i32 %13, 0
  br i1 %tobool15, label %land.lhs.true, label %land.lhs.true24

land.lhs.true:                                    ; preds = %if.end14
  %membuf = getelementptr inbounds i8* %10, i64 152
  %arena16 = bitcast i8* %membuf to i8**
  %14 = load i8** %arena16, align 8, !tbaa !0
  %tobool17 = icmp eq i8* %14, null
  br i1 %tobool17, label %if.end30, label %if.end21

if.end21:                                         ; preds = %land.lhs.true
  tail call void @Perl_safesysfree(i8* %14) #7
  %.pr.pre = load i32* %12, align 4, !tbaa !3
  %phitmp = icmp eq i32 %.pr.pre, 0
  br i1 %phitmp, label %if.end30, label %land.lhs.true24

land.lhs.true24:                                  ; preds = %if.end14, %if.end21
  %msaved = getelementptr inbounds i8* %10, i64 184
  %arena25 = bitcast i8* %msaved to i8**
  %15 = load i8** %arena25, align 8, !tbaa !0
  %tobool26 = icmp eq i8* %15, null
  br i1 %tobool26, label %if.end30, label %if.then27

if.then27:                                        ; preds = %land.lhs.true24
  tail call void @Perl_safesysfree(i8* %15) #7
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true, %land.lhs.true24, %if.end21, %if.then27
  store %struct.sv** %add.ptr8, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #2

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #2

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_init_perinterp(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str1, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  tail call fastcc void @init_perinterp() #6
  %5 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext7 = ashr exact i64 %sext, 32
  %add.ptr8.sum = add i64 %idx.ext7, -1
  %add.ptr9 = getelementptr inbounds %struct.sv** %5, i64 %add.ptr8.sum
  store %struct.sv** %add.ptr9, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_perinterp() #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 255) #7
  %call1 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call2 = tail call %struct.hv* @Perl_gv_stashpv(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0), i32 1) #7
  %call3 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call1, %struct.hv* %call2) #7
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %0 to i8**
  %1 = load i8** %xpv_pv, align 8, !tbaa !0
  %2 = bitcast i8* %1 to %struct.stcxt*
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 248, i32 1, i1 false)
  %my_sv4 = getelementptr inbounds i8* %1, i64 248
  %3 = bitcast i8* %my_sv4 to %struct.sv**
  store %struct.sv* %call1, %struct.sv** %3, align 8, !tbaa !0
  store %struct.stcxt* %2, %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %netorder = getelementptr inbounds i8* %1, i64 80
  %4 = bitcast i8* %netorder to i32*
  store i32 0, i32* %4, align 4, !tbaa !3
  %forgive_me = getelementptr inbounds i8* %1, i64 88
  %5 = bitcast i8* %forgive_me to i32*
  store i32 -1, i32* %5, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_pstore(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str2, i64 0, i64 0)) #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #7
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 8
  %8 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %sext38 = add i64 %add.ptr.idx, 8589934592
  %idxprom9 = ashr exact i64 %sext38, 32
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.sv** %9, i64 %idxprom9
  %10 = load %struct.sv** %arrayidx10, align 8, !tbaa !0
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %11, i64 0, i32 7
  %12 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %12, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %11, i64 0, i32 3
  %13 = load i64* %op_targ, align 8, !tbaa !4
  %14 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %struct.sv** %14, i64 %13
  %15 = load %struct.sv** %arrayidx12, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call13 = tail call %struct.sv* @Perl_sv_newmortal() #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %15, %cond.true ], [ %call13, %cond.false ]
  %call.i = tail call fastcc i32 @do_store(%struct._PerlIO** %8, %struct.sv* %10, i32 0, i32 0, %struct.sv** null) #7
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %conv18 = sext i32 %call.i to i64
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %conv18) #7
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %17 = load i32* %sv_flags, align 4, !tbaa !3
  %and19 = and i32 %17, 16384
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %cond.end
  %call22 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #7
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %if.then21
  %incdec.ptr24 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %incdec.ptr24, align 8, !tbaa !0
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr26 = getelementptr inbounds %struct.sv** %18, i64 %idxprom
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.io* @Perl_sv_2io(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_newmortal() #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(%struct.sv*, i64) #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(%struct.sv*) #2

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_net_pstore(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 16
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0)) #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #7
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ofp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 8
  %8 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !0
  %sext38 = add i64 %add.ptr.idx, 8589934592
  %idxprom9 = ashr exact i64 %sext38, 32
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.sv** %9, i64 %idxprom9
  %10 = load %struct.sv** %arrayidx10, align 8, !tbaa !0
  %11 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %11, i64 0, i32 7
  %12 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %12, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %11, i64 0, i32 3
  %13 = load i64* %op_targ, align 8, !tbaa !4
  %14 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx12 = getelementptr inbounds %struct.sv** %14, i64 %13
  %15 = load %struct.sv** %arrayidx12, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call13 = tail call %struct.sv* @Perl_sv_newmortal() #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %15, %cond.true ], [ %call13, %cond.false ]
  %call.i = tail call fastcc i32 @do_store(%struct._PerlIO** %8, %struct.sv* %10, i32 0, i32 1, %struct.sv** null) #7
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %conv18 = sext i32 %call.i to i64
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %conv18) #7
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %17 = load i32* %sv_flags, align 4, !tbaa !3
  %and19 = and i32 %17, 16384
  %tobool20 = icmp eq i32 %and19, 0
  br i1 %tobool20, label %if.end23, label %if.then21

if.then21:                                        ; preds = %cond.end
  %call22 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #7
  br label %if.end23

if.end23:                                         ; preds = %cond.end, %if.then21
  %incdec.ptr24 = getelementptr inbounds %struct.sv** %16, i64 %idxprom
  store %struct.sv* %cond, %struct.sv** %incdec.ptr24, align 8, !tbaa !0
  %18 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr26 = getelementptr inbounds %struct.sv** %18, i64 %idxprom
  store %struct.sv** %add.ptr26, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_mstore(%struct.cv* nocapture %cv) #1 {
entry:
  %out.i = alloca %struct.sv*, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([29 x i8]* @.str4, i64 0, i64 0)) #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %7 = bitcast %struct.sv** %out.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %call.i = call fastcc i32 @do_store(%struct._PerlIO** null, %struct.sv* %6, i32 0, i32 0, %struct.sv** %out.i) #7
  %tobool.i = icmp eq i32 %call.i, 0
  %8 = load %struct.sv** %out.i, align 8, !tbaa !0
  %retval.0.i = select i1 %tobool.i, %struct.sv* @PL_sv_undef, %struct.sv* %8
  call void @llvm.lifetime.end(i64 8, i8* %7) #3
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv* %retval.0.i, %struct.sv** %arrayidx10, align 8, !tbaa !0
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv** %arrayidx13, align 8, !tbaa !0
  %call14 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %11) #7
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr16 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #2

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_net_mstore(%struct.cv* nocapture %cv) #1 {
entry:
  %out.i = alloca %struct.sv*, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0)) #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %7 = bitcast %struct.sv** %out.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #3
  %call.i = call fastcc i32 @do_store(%struct._PerlIO** null, %struct.sv* %6, i32 0, i32 1, %struct.sv** %out.i) #7
  %tobool.i = icmp eq i32 %call.i, 0
  %8 = load %struct.sv** %out.i, align 8, !tbaa !0
  %retval.0.i = select i1 %tobool.i, %struct.sv* @PL_sv_undef, %struct.sv* %8
  call void @llvm.lifetime.end(i64 8, i8* %7) #3
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv* %retval.0.i, %struct.sv** %arrayidx10, align 8, !tbaa !0
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv** %arrayidx13, align 8, !tbaa !0
  %call14 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %11) #7
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr16 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_pretrieve(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str6, i64 0, i64 0)) #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.io* @Perl_sv_2io(%struct.sv* %6) #7
  %sv_any = getelementptr inbounds %struct.io* %call, i64 0, i32 0
  %7 = load %struct.xpvio** %sv_any, align 8, !tbaa !0
  %xio_ifp = getelementptr inbounds %struct.xpvio* %7, i64 0, i32 7
  %8 = load %struct._PerlIO*** %xio_ifp, align 8, !tbaa !0
  %call.i = tail call fastcc %struct.sv* @do_retrieve(%struct._PerlIO** %8, %struct.sv* null, i32 0) #7
  %9 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx11 = getelementptr inbounds %struct.sv** %9, i64 %idxprom
  store %struct.sv* %call.i, %struct.sv** %arrayidx11, align 8, !tbaa !0
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx14 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  %11 = load %struct.sv** %arrayidx14, align 8, !tbaa !0
  %call15 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %11) #7
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr17 = getelementptr inbounds %struct.sv** %12, i64 %idxprom
  store %struct.sv** %add.ptr17, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_mretrieve(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str7, i64 0, i64 0)) #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call.i = tail call fastcc %struct.sv* @do_retrieve(%struct._PerlIO** null, %struct.sv* %6, i32 0) #7
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.sv** %7, i64 %idxprom
  store %struct.sv* %call.i, %struct.sv** %arrayidx10, align 8, !tbaa !0
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  %9 = load %struct.sv** %arrayidx13, align 8, !tbaa !0
  %call14 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %9) #7
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr16 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_dclone(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str8, i64 0, i64 0)) #7
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = phi %struct.sv** [ %1, %entry ], [ %.pre, %if.then ]
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %5, i64 %idxprom
  %6 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  %call = tail call %struct.sv* @dclone(%struct.sv* %6) #6
  %7 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx10 = getelementptr inbounds %struct.sv** %7, i64 %idxprom
  store %struct.sv* %call, %struct.sv** %arrayidx10, align 8, !tbaa !0
  %8 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx13 = getelementptr inbounds %struct.sv** %8, i64 %idxprom
  %9 = load %struct.sv** %arrayidx13, align 8, !tbaa !0
  %call14 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %9) #7
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr16 = getelementptr inbounds %struct.sv** %10, i64 %idxprom
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_last_op_in_netorder(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str9, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %6, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %5, i64 0, i32 3
  %7 = load i64* %op_targ, align 8, !tbaa !4
  %8 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %7
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %9, %cond.true ], [ %call, %cond.false ]
  %10 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %netorder.i = getelementptr inbounds %struct.stcxt* %10, i64 0, i32 11
  %11 = load i32* %netorder.i, align 4, !tbaa !3
  %12 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext9 = ashr exact i64 %sext, 32
  %conv12 = sext i32 %11 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %conv12) #7
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %13 = load i32* %sv_flags, align 4, !tbaa !3
  %and13 = and i32 %13, 16384
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %cond.end
  %call16 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #7
  br label %if.end17

if.end17:                                         ; preds = %cond.end, %if.then15
  %incdec.ptr18 = getelementptr inbounds %struct.sv** %12, i64 %idx.ext9
  store %struct.sv* %cond, %struct.sv** %incdec.ptr18, align 8, !tbaa !0
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr20 = getelementptr inbounds %struct.sv** %14, i64 %idx.ext9
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_is_storing(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([30 x i8]* @.str10, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %6, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %5, i64 0, i32 3
  %7 = load i64* %op_targ, align 8, !tbaa !4
  %8 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %7
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %9, %cond.true ], [ %call, %cond.false ]
  %10 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %entry1.i = getelementptr inbounds %struct.stcxt* %10, i64 0, i32 0
  %11 = load i32* %entry1.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %11, 0
  br i1 %tobool.i, label %is_storing.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.end
  %optype.i = getelementptr inbounds %struct.stcxt* %10, i64 0, i32 1
  %12 = load i32* %optype.i, align 4, !tbaa !3
  %and.i = and i32 %12, 1
  %tobool2.i = icmp ne i32 %and.i, 0
  br label %is_storing.exit

is_storing.exit:                                  ; preds = %cond.end, %land.rhs.i
  %13 = phi i1 [ %tobool2.i, %land.rhs.i ], [ false, %cond.end ]
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext9 = ashr exact i64 %sext, 32
  %conv12 = zext i1 %13 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %conv12) #7
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and13 = and i32 %15, 16384
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %is_storing.exit
  %call16 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #7
  br label %if.end17

if.end17:                                         ; preds = %is_storing.exit, %if.then15
  %incdec.ptr18 = getelementptr inbounds %struct.sv** %14, i64 %idx.ext9
  store %struct.sv* %cond, %struct.sv** %incdec.ptr18, align 8, !tbaa !0
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr20 = getelementptr inbounds %struct.sv** %16, i64 %idx.ext9
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @XS_Storable_is_retrieving(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %3 = load i32* %2, align 4, !tbaa !3
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([33 x i8]* @.str11, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %5 = load %struct.op** @PL_op, align 8, !tbaa !0
  %op_private = getelementptr inbounds %struct.op* %5, i64 0, i32 7
  %6 = load i8* %op_private, align 1, !tbaa !1
  %and = and i8 %6, 32
  %tobool = icmp eq i8 %and, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end
  %op_targ = getelementptr inbounds %struct.op* %5, i64 0, i32 3
  %7 = load i64* %op_targ, align 8, !tbaa !4
  %8 = load %struct.sv*** @PL_curpad, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %8, i64 %7
  %9 = load %struct.sv** %arrayidx, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %call = tail call %struct.sv* @Perl_sv_newmortal() #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.sv* [ %9, %cond.true ], [ %call, %cond.false ]
  %10 = load %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  %entry1.i = getelementptr inbounds %struct.stcxt* %10, i64 0, i32 0
  %11 = load i32* %entry1.i, align 4, !tbaa !3
  %tobool.i = icmp eq i32 %11, 0
  br i1 %tobool.i, label %is_retrieving.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %cond.end
  %optype.i = getelementptr inbounds %struct.stcxt* %10, i64 0, i32 1
  %12 = load i32* %optype.i, align 4, !tbaa !3
  %and.i = and i32 %12, 2
  %tobool2.i = icmp ne i32 %and.i, 0
  br label %is_retrieving.exit

is_retrieving.exit:                               ; preds = %cond.end, %land.rhs.i
  %13 = phi i1 [ %tobool2.i, %land.rhs.i ], [ false, %cond.end ]
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sext = add i64 %add.ptr.idx, 4294967296
  %idx.ext9 = ashr exact i64 %sext, 32
  %conv12 = zext i1 %13 to i64
  tail call void @Perl_sv_setiv(%struct.sv* %cond, i64 %conv12) #7
  %sv_flags = getelementptr inbounds %struct.sv* %cond, i64 0, i32 2
  %15 = load i32* %sv_flags, align 4, !tbaa !3
  %and13 = and i32 %15, 16384
  %tobool14 = icmp eq i32 %and13, 0
  br i1 %tobool14, label %if.end17, label %if.then15

if.then15:                                        ; preds = %is_retrieving.exit
  %call16 = tail call i32 @Perl_mg_set(%struct.sv* %cond) #7
  br label %if.end17

if.end17:                                         ; preds = %is_retrieving.exit, %if.then15
  %incdec.ptr18 = getelementptr inbounds %struct.sv** %14, i64 %idx.ext9
  store %struct.sv* %cond, %struct.sv** %incdec.ptr18, align 8, !tbaa !0
  %16 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr20 = getelementptr inbounds %struct.sv** %16, i64 %idx.ext9
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @boot_Storable(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %0, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %1 = load i32* %0, align 4, !tbaa !3
  %idx.ext36 = zext i32 %1 to i64
  %add.ptr.idx = shl nuw i64 %idx.ext36, 32
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([23 x i8]* @.str13, i64 0, i64 0), void (%struct.cv*)* @XS_Storable__Cxt_DESTROY, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %call6 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([25 x i8]* @.str14, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_init_perinterp, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %2 = bitcast %struct.cv* %call6 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %2, i8* getelementptr inbounds ([1 x i8]* @.str15, i64 0, i64 0)) #7
  %call7 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_pstore, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %3 = bitcast %struct.cv* %call7 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %3, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #7
  %call8 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str18, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_net_pstore, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %4 = bitcast %struct.cv* %call8 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %4, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #7
  %call9 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8]* @.str19, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_mstore, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %5 = bitcast %struct.cv* %call9 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %5, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #7
  %call10 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str21, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_net_mstore, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %6 = bitcast %struct.cv* %call10 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %6, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #7
  %call11 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str22, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_pretrieve, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %7 = bitcast %struct.cv* %call11 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %7, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #7
  %call12 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str23, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_mretrieve, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %8 = bitcast %struct.cv* %call12 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %8, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #7
  %call13 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([17 x i8]* @.str24, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_dclone, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %9 = bitcast %struct.cv* %call13 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %9, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #7
  %call14 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([30 x i8]* @.str25, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_last_op_in_netorder, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %10 = bitcast %struct.cv* %call14 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %10, i8* getelementptr inbounds ([1 x i8]* @.str15, i64 0, i64 0)) #7
  %call15 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([21 x i8]* @.str26, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_is_storing, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %11 = bitcast %struct.cv* %call15 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %11, i8* getelementptr inbounds ([1 x i8]* @.str15, i64 0, i64 0)) #7
  %call16 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([24 x i8]* @.str27, i64 0, i64 0), void (%struct.cv*)* @XS_Storable_is_retrieving, i8* getelementptr inbounds ([58 x i8]* @.str12, i64 0, i64 0)) #7
  %12 = bitcast %struct.cv* %call16 to %struct.sv*
  tail call void @Perl_sv_setpv(%struct.sv* %12, i8* getelementptr inbounds ([1 x i8]* @.str15, i64 0, i64 0)) #7
  tail call fastcc void @init_perinterp() #6
  %call17 = tail call %struct.gv* @Perl_gv_fetchpv(i8* getelementptr inbounds ([20 x i8]* @.str28, i64 0, i64 0), i32 2, i32 4) #7
  %sext = add i64 %add.ptr.idx, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %13 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv** %13, i64 %idxprom
  store %struct.sv* @PL_sv_yes, %struct.sv** %arrayidx, align 8, !tbaa !0
  %14 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %add.ptr20 = getelementptr inbounds %struct.sv** %14, i64 %idxprom
  store %struct.sv** %add.ptr20, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #2

; Function Attrs: optsize
declare void @Perl_sv_setpv(%struct.sv*, i8*) #2

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchpv(i8*, i32, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSV(i64) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV_noinc(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_bless(%struct.sv*, %struct.hv*) #2

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @clean_retrieve_context(%struct.stcxt* nocapture %cxt) #1 {
entry:
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tobool = icmp eq %struct.av* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.av* null, %struct.av** %aseen, align 8, !tbaa !0
  tail call void @Perl_av_undef(%struct.av* %0) #7
  %1 = bitcast %struct.av* %0 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %1) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %where_is_undef = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 5
  store i64 -1, i64* %where_is_undef, align 8, !tbaa !4
  %aclass = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 7
  %2 = load %struct.av** %aclass, align 8, !tbaa !0
  %tobool4 = icmp eq %struct.av* %2, null
  br i1 %tobool4, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  store %struct.av* null, %struct.av** %aclass, align 8, !tbaa !0
  tail call void @Perl_av_undef(%struct.av* %2) #7
  %3 = bitcast %struct.av* %2 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %3) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then5
  %hook = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 8
  %4 = load %struct.hv** %hook, align 8, !tbaa !0
  %tobool10 = icmp eq %struct.hv* %4, null
  br i1 %tobool10, label %if.end15, label %if.then11

if.then11:                                        ; preds = %if.end9
  store %struct.hv* null, %struct.hv** %hook, align 8, !tbaa !0
  tail call void @Perl_hv_undef(%struct.hv* %4) #7
  %5 = bitcast %struct.hv* %4 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %5) #7
  br label %if.end15

if.end15:                                         ; preds = %if.end9, %if.then11
  %hseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 2
  %6 = load %struct.hv** %hseen, align 8, !tbaa !0
  %tobool16 = icmp eq %struct.hv* %6, null
  br i1 %tobool16, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end15
  store %struct.hv* null, %struct.hv** %hseen, align 8, !tbaa !0
  tail call void @Perl_hv_undef(%struct.hv* %6) #7
  %7 = bitcast %struct.hv* %6 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %7) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end15, %if.then17
  %accept_future_minor = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 17
  store i32 -1, i32* %accept_future_minor, align 4, !tbaa !3
  %entry1.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 0
  store i32 0, i32* %entry1.i, align 4, !tbaa !3
  %s_dirty.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 0, i32* %s_dirty.i, align 4, !tbaa !3
  %optype.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 1
  %8 = load i32* %optype.i, align 4, !tbaa !3
  %and.i = and i32 %8, -4
  store i32 %and.i, i32* %optype.i, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @clean_store_context(%struct.stcxt* nocapture %cxt) #1 {
entry:
  %hseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 2
  %0 = load %struct.hv** %hseen, align 8, !tbaa !0
  %tobool = icmp eq %struct.hv* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_hv_iterinit(%struct.hv* %0) #7
  %1 = load %struct.hv** %hseen, align 8, !tbaa !0
  %call380 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %1) #7
  %tobool481 = icmp eq %struct.he* %call380, null
  br i1 %tobool481, label %if.end, label %while.body

while.body:                                       ; preds = %if.then, %while.body
  %call382 = phi %struct.he* [ %call3, %while.body ], [ %call380, %if.then ]
  %hent_val = getelementptr inbounds %struct.he* %call382, i64 0, i32 2
  store %struct.sv* @PL_sv_undef, %struct.sv** %hent_val, align 8, !tbaa !0
  %2 = load %struct.hv** %hseen, align 8, !tbaa !0
  %call3 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %2) #7
  %tobool4 = icmp eq %struct.he* %call3, null
  br i1 %tobool4, label %if.end, label %while.body

if.end:                                           ; preds = %if.then, %while.body, %entry
  %hclass = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 6
  %3 = load %struct.hv** %hclass, align 8, !tbaa !0
  %tobool5 = icmp eq %struct.hv* %3, null
  br i1 %tobool5, label %if.end16, label %if.then6

if.then6:                                         ; preds = %if.end
  %call8 = tail call i32 @Perl_hv_iterinit(%struct.hv* %3) #7
  %4 = load %struct.hv** %hclass, align 8, !tbaa !0
  %call1177 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %4) #7
  %tobool1278 = icmp eq %struct.he* %call1177, null
  br i1 %tobool1278, label %if.end16, label %while.body13

while.body13:                                     ; preds = %if.then6, %while.body13
  %call1179 = phi %struct.he* [ %call11, %while.body13 ], [ %call1177, %if.then6 ]
  %hent_val14 = getelementptr inbounds %struct.he* %call1179, i64 0, i32 2
  store %struct.sv* @PL_sv_undef, %struct.sv** %hent_val14, align 8, !tbaa !0
  %5 = load %struct.hv** %hclass, align 8, !tbaa !0
  %call11 = tail call %struct.he* @Perl_hv_iternext(%struct.hv* %5) #7
  %tobool12 = icmp eq %struct.he* %call11, null
  br i1 %tobool12, label %if.end16, label %while.body13

if.end16:                                         ; preds = %if.then6, %while.body13, %if.end
  %6 = load %struct.hv** %hseen, align 8, !tbaa !0
  %tobool18 = icmp eq %struct.hv* %6, null
  br i1 %tobool18, label %if.end23, label %if.then19

if.then19:                                        ; preds = %if.end16
  store %struct.hv* null, %struct.hv** %hseen, align 8, !tbaa !0
  tail call void @Perl_hv_undef(%struct.hv* %6) #7
  %7 = bitcast %struct.hv* %6 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %7) #7
  br label %if.end23

if.end23:                                         ; preds = %if.end16, %if.then19
  %8 = load %struct.hv** %hclass, align 8, !tbaa !0
  %tobool25 = icmp eq %struct.hv* %8, null
  br i1 %tobool25, label %if.end30, label %if.then26

if.then26:                                        ; preds = %if.end23
  store %struct.hv* null, %struct.hv** %hclass, align 8, !tbaa !0
  tail call void @Perl_hv_undef(%struct.hv* %8) #7
  %9 = bitcast %struct.hv* %8 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %9) #7
  br label %if.end30

if.end30:                                         ; preds = %if.end23, %if.then26
  %hook = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 8
  %10 = load %struct.hv** %hook, align 8, !tbaa !0
  %tobool31 = icmp eq %struct.hv* %10, null
  br i1 %tobool31, label %if.end36, label %if.then32

if.then32:                                        ; preds = %if.end30
  store %struct.hv* null, %struct.hv** %hook, align 8, !tbaa !0
  tail call void @Perl_hv_undef(%struct.hv* %10) #7
  %11 = bitcast %struct.hv* %10 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %11) #7
  br label %if.end36

if.end36:                                         ; preds = %if.end30, %if.then32
  %hook_seen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 3
  %12 = load %struct.av** %hook_seen, align 8, !tbaa !0
  %tobool37 = icmp eq %struct.av* %12, null
  br i1 %tobool37, label %if.end42, label %if.then38

if.then38:                                        ; preds = %if.end36
  store %struct.av* null, %struct.av** %hook_seen, align 8, !tbaa !0
  tail call void @Perl_av_undef(%struct.av* %12) #7
  %13 = bitcast %struct.av* %12 to %struct.sv*
  tail call void @Perl_sv_free(%struct.sv* %13) #7
  br label %if.end42

if.end42:                                         ; preds = %if.end36, %if.then38
  %forgive_me = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 13
  store i32 -1, i32* %forgive_me, align 4, !tbaa !3
  %deparse = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 14
  store i32 -1, i32* %deparse, align 4, !tbaa !3
  %eval = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 15
  %14 = load %struct.sv** %eval, align 8, !tbaa !0
  %tobool43 = icmp eq %struct.sv* %14, null
  br i1 %tobool43, label %if.end46, label %if.then44

if.then44:                                        ; preds = %if.end42
  tail call void @Perl_sv_free(%struct.sv* %14) #7
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.then44
  store %struct.sv* null, %struct.sv** %eval, align 8, !tbaa !0
  %canonical = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 16
  store i32 -1, i32* %canonical, align 4, !tbaa !3
  %entry1.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 0
  store i32 0, i32* %entry1.i, align 4, !tbaa !3
  %s_dirty.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 0, i32* %s_dirty.i, align 4, !tbaa !3
  %optype.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 1
  %15 = load i32* %optype.i, align 4, !tbaa !3
  %and.i = and i32 %15, -4
  store i32 %and.i, i32* %optype.i, align 4, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(%struct.hv*) #2

; Function Attrs: optsize
declare %struct.he* @Perl_hv_iternext(%struct.hv*) #2

; Function Attrs: optsize
declare void @Perl_hv_undef(%struct.hv*) #2

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_av_undef(%struct.av*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.stcxt* @allocate_context(%struct.stcxt* nocapture %parent_cxt) #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 255) #7
  %call1 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call2 = tail call %struct.hv* @Perl_gv_stashpv(i8* getelementptr inbounds ([14 x i8]* @.str29, i64 0, i64 0), i32 1) #7
  %call3 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call1, %struct.hv* %call2) #7
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %0 to i8**
  %1 = load i8** %xpv_pv, align 8, !tbaa !0
  %2 = bitcast i8* %1 to %struct.stcxt*
  tail call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 248, i32 1, i1 false)
  %my_sv4 = getelementptr inbounds i8* %1, i64 248
  %3 = bitcast i8* %my_sv4 to %struct.sv**
  store %struct.sv* %call1, %struct.sv** %3, align 8, !tbaa !0
  %my_sv5 = getelementptr inbounds %struct.stcxt* %parent_cxt, i64 0, i32 28
  %4 = load %struct.sv** %my_sv5, align 8, !tbaa !0
  %prev = getelementptr inbounds i8* %1, i64 240
  %5 = bitcast i8* %prev to %struct.sv**
  store %struct.sv* %4, %struct.sv** %5, align 8, !tbaa !0
  store %struct.stcxt* %2, %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  ret %struct.stcxt* %2
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #2

; Function Attrs: optsize
declare i8* @Perl_bytes_from_utf8(i8*, i64*, i8*) #2

; Function Attrs: optsize
declare signext i8 @Perl_sv_upgrade(%struct.sv*, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %tag = alloca i64, align 8
  %nettag = alloca i32, align 4
  %tag123 = alloca i32, align 4
  %len = alloca i32, align 4
  %hseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 2
  %0 = load %struct.hv** %hseen, align 8, !tbaa !0
  %tobool = icmp eq %struct.hv* %0, null
  br i1 %tobool, label %if.end95, label %if.then

if.then:                                          ; preds = %entry
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %1 = load i32* %netorder, align 4, !tbaa !3
  %tobool1 = icmp eq i32 %1, 0
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %2 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool3 = icmp ne %struct._PerlIO** %2, null
  br i1 %tobool1, label %if.else18, label %if.then2

if.then2:                                         ; preds = %if.then
  br i1 %tobool3, label %if.else12, label %if.then4

if.then4:                                         ; preds = %if.then2
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %3 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %3, i64 4
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %4 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %4
  br i1 %cmp, label %return, label %if.then6

if.then6:                                         ; preds = %if.then4
  %5 = bitcast i8* %3 to i32*
  %6 = load i32* %5, align 1
  store i32 %6, i32* %nettag, align 4
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end17

if.else12:                                        ; preds = %if.then2
  %7 = bitcast i32* %nettag to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %2, i8* %7, i64 4) #7
  %cmp14 = icmp eq i64 %call, 4
  br i1 %cmp14, label %if.else12.if.end17_crit_edge, label %return

if.else12.if.end17_crit_edge:                     ; preds = %if.else12
  %.pre521 = load i32* %nettag, align 4, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.else12.if.end17_crit_edge, %if.then6
  %8 = phi i32 [ %.pre521, %if.else12.if.end17_crit_edge ], [ %6, %if.then6 ]
  %conv = sext i32 %8 to i64
  store i64 %conv, i64* %tag, align 8, !tbaa !4
  br label %if.end45

if.else18:                                        ; preds = %if.then
  br i1 %tobool3, label %if.else37, label %if.then21

if.then21:                                        ; preds = %if.else18
  %aptr23 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %9 = load i8** %aptr23, align 8, !tbaa !0
  %add.ptr24 = getelementptr inbounds i8* %9, i64 8
  %aend26 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %10 = load i8** %aend26, align 8, !tbaa !0
  %cmp27 = icmp ugt i8* %add.ptr24, %10
  br i1 %cmp27, label %return, label %if.then29

if.then29:                                        ; preds = %if.then21
  %11 = bitcast i8* %9 to i64*
  %12 = load i64* %11, align 1
  store i64 %12, i64* %tag, align 8
  store i8* %add.ptr24, i8** %aptr23, align 8, !tbaa !0
  br label %if.end45

if.else37:                                        ; preds = %if.else18
  %13 = bitcast i64* %tag to i8*
  %call39 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %2, i8* %13, i64 8) #7
  %cmp40 = icmp eq i64 %call39, 8
  br i1 %cmp40, label %if.end45, label %return

if.end45:                                         ; preds = %if.else37, %if.then29, %if.end17
  %14 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool47 = icmp eq %struct._PerlIO** %14, null
  br i1 %tobool47, label %if.then48, label %if.else61

if.then48:                                        ; preds = %if.end45
  %aptr50 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %15 = load i8** %aptr50, align 8, !tbaa !0
  %aend52 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %16 = load i8** %aend52, align 8, !tbaa !0
  %cmp53 = icmp ult i8* %15, %16
  br i1 %cmp53, label %if.then55, label %return

if.then55:                                        ; preds = %if.then48
  %incdec.ptr = getelementptr inbounds i8* %15, i64 1
  store i8* %incdec.ptr, i8** %aptr50, align 8, !tbaa !0
  %17 = load i8* %15, align 1, !tbaa !1
  %conv58 = zext i8 %17 to i32
  br label %if.end68

if.else61:                                        ; preds = %if.end45
  %call63 = call i32 @PerlIO_getc(%struct._PerlIO** %14) #7
  %cmp64 = icmp eq i32 %call63, -1
  br i1 %cmp64, label %return, label %if.end68

if.end68:                                         ; preds = %if.else61, %if.then55
  %type.0 = phi i32 [ %conv58, %if.then55 ], [ %call63, %if.else61 ]
  %cmp69 = icmp eq i32 %type.0, 0
  %18 = load %struct.hv** %hseen, align 8, !tbaa !0
  %19 = bitcast i64* %tag to i8*
  br i1 %cmp69, label %if.then71, label %if.end88

if.then71:                                        ; preds = %if.end68
  %call73 = call %struct.sv** @Perl_hv_fetch(%struct.hv* %18, i8* %19, i32 8, i32 0) #7
  %tobool74 = icmp eq %struct.sv** %call73, null
  br i1 %tobool74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.then71
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  %20 = load i64* %tag, align 8, !tbaa !4
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str35, i64 0, i64 0), i64 %20) #7
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.then75
  %21 = load %struct.sv** %call73, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %21, i64 0, i32 2
  %22 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %22, 65536
  %tobool77 = icmp eq i32 %and, 0
  br i1 %tobool77, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end76
  %sv_any = getelementptr inbounds %struct.sv* %21, i64 0, i32 0
  %23 = load i8** %sv_any, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %23, i64 24
  %24 = bitcast i8* %xiv_iv to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  br label %cond.end

cond.false:                                       ; preds = %if.end76
  %call78 = call i64 @Perl_sv_2iv(%struct.sv* %21) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %25, %cond.true ], [ %call78, %cond.false ]
  %conv79 = trunc i64 %cond to i32
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %26 = load %struct.av** %aseen, align 8, !tbaa !0
  %call80 = call %struct.sv** @Perl_av_fetch(%struct.av* %26, i32 %conv79, i32 0) #7
  %tobool81 = icmp eq %struct.sv** %call80, null
  br i1 %tobool81, label %if.then82, label %if.end85

if.then82:                                        ; preds = %cond.end
  %s_dirty83 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty83, align 4, !tbaa !3
  %sext = shl i64 %cond, 32
  %conv84 = ashr exact i64 %sext, 32
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([47 x i8]* @.str36, i64 0, i64 0), i64 %conv84) #7
  br label %if.end85

if.end85:                                         ; preds = %cond.end, %if.then82
  %27 = load %struct.sv** %call80, align 8, !tbaa !0
  store %struct.sv* %27, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool86 = icmp eq %struct.sv* %27, null
  br i1 %tobool86, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end85
  %sv_refcnt = getelementptr inbounds %struct.sv* %27, i64 0, i32 1
  %28 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc = add i32 %28, 1
  store i32 %inc, i32* %sv_refcnt, align 4, !tbaa !3
  br label %return

if.end88:                                         ; preds = %if.end68
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %29 = load i64* %tagnum, align 8, !tbaa !4
  %call90 = call %struct.sv* @Perl_newSViv(i64 %29) #7
  %call91 = call %struct.sv** @Perl_hv_store(%struct.hv* %18, i8* %19, i32 8, %struct.sv* %call90, i32 0) #7
  %tobool92 = icmp eq %struct.sv** %call91, null
  br i1 %tobool92, label %return, label %first_time

if.end95:                                         ; preds = %entry
  %fio96 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %30 = load %struct._PerlIO*** %fio96, align 8, !tbaa !0
  %tobool97 = icmp eq %struct._PerlIO** %30, null
  br i1 %tobool97, label %if.then98, label %if.else112

if.then98:                                        ; preds = %if.end95
  %aptr100 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %31 = load i8** %aptr100, align 8, !tbaa !0
  %aend102 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %32 = load i8** %aend102, align 8, !tbaa !0
  %cmp103 = icmp ult i8* %31, %32
  br i1 %cmp103, label %if.then105, label %return

if.then105:                                       ; preds = %if.then98
  %incdec.ptr108 = getelementptr inbounds i8* %31, i64 1
  store i8* %incdec.ptr108, i8** %aptr100, align 8, !tbaa !0
  %33 = load i8* %31, align 1, !tbaa !1
  %conv109 = zext i8 %33 to i32
  br label %if.end119

if.else112:                                       ; preds = %if.end95
  %call114 = call i32 @PerlIO_getc(%struct._PerlIO** %30) #7
  %cmp115 = icmp eq i32 %call114, -1
  br i1 %cmp115, label %return, label %if.end119

if.end119:                                        ; preds = %if.else112, %if.then105
  %type.1 = phi i32 [ %call114, %if.else112 ], [ %conv109, %if.then105 ]
  %cmp120 = icmp eq i32 %type.1, 0
  br i1 %cmp120, label %if.then122, label %if.else176

if.then122:                                       ; preds = %if.end119
  %34 = load %struct._PerlIO*** %fio96, align 8, !tbaa !0
  %tobool125 = icmp eq %struct._PerlIO** %34, null
  br i1 %tobool125, label %if.then126, label %if.else154

if.then126:                                       ; preds = %if.then122
  %aptr128 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %35 = load i8** %aptr128, align 8, !tbaa !0
  %add.ptr129 = getelementptr inbounds i8* %35, i64 4
  %aend131 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %36 = load i8** %aend131, align 8, !tbaa !0
  %cmp132 = icmp ugt i8* %add.ptr129, %36
  br i1 %cmp132, label %return, label %if.end148

if.end148:                                        ; preds = %if.then126
  %storemerge519.in = bitcast i8* %35 to i32*
  %storemerge519 = load i32* %storemerge519.in, align 1
  store i32 %storemerge519, i32* %tag123, align 4
  store i8* %add.ptr129, i8** %aptr128, align 8, !tbaa !0
  br label %if.end161

if.else154:                                       ; preds = %if.then122
  %37 = bitcast i32* %tag123 to i8*
  %call156 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %34, i8* %37, i64 4) #7
  %cmp157 = icmp eq i64 %call156, 4
  br i1 %cmp157, label %if.else154.if.end161_crit_edge, label %return

if.else154.if.end161_crit_edge:                   ; preds = %if.else154
  %.pre = load i32* %tag123, align 4, !tbaa !3
  br label %if.end161

if.end161:                                        ; preds = %if.else154.if.end161_crit_edge, %if.end148
  %38 = phi i32 [ %.pre, %if.else154.if.end161_crit_edge ], [ %storemerge519, %if.end148 ]
  %39 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %38) #3, !srcloc !7
  store i32 %39, i32* %tag123, align 4, !tbaa !3
  %aseen162 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %40 = load %struct.av** %aseen162, align 8, !tbaa !0
  %call163 = call %struct.sv** @Perl_av_fetch(%struct.av* %40, i32 %39, i32 0) #7
  %tobool164 = icmp eq %struct.sv** %call163, null
  br i1 %tobool164, label %if.then165, label %if.end168

if.then165:                                       ; preds = %if.end161
  %s_dirty166 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty166, align 4, !tbaa !3
  %41 = load i32* %tag123, align 4, !tbaa !3
  %conv167 = sext i32 %41 to i64
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([47 x i8]* @.str36, i64 0, i64 0), i64 %conv167) #7
  br label %if.end168

if.end168:                                        ; preds = %if.end161, %if.then165
  %42 = load %struct.sv** %call163, align 8, !tbaa !0
  store %struct.sv* %42, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool169 = icmp eq %struct.sv* %42, null
  br i1 %tobool169, label %return, label %land.rhs170

land.rhs170:                                      ; preds = %if.end168
  %sv_refcnt171 = getelementptr inbounds %struct.sv* %42, i64 0, i32 1
  %43 = load i32* %sv_refcnt171, align 4, !tbaa !3
  %inc172 = add i32 %43, 1
  store i32 %inc172, i32* %sv_refcnt171, align 4, !tbaa !3
  br label %return

if.else176:                                       ; preds = %if.end119
  %cmp177 = icmp sgt i32 %type.1, 26
  br i1 %cmp177, label %land.lhs.true, label %first_time

land.lhs.true:                                    ; preds = %if.else176
  %ver_minor = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 25
  %44 = load i32* %ver_minor, align 4, !tbaa !3
  %cmp179 = icmp sgt i32 %44, 6
  br i1 %cmp179, label %if.then181, label %first_time

if.then181:                                       ; preds = %land.lhs.true
  %accept_future_minor = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 17
  %45 = load i32* %accept_future_minor, align 4, !tbaa !3
  %cmp182 = icmp slt i32 %45, 0
  br i1 %cmp182, label %if.then184, label %if.end247

if.then184:                                       ; preds = %if.then181
  %call185 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  %tobool186 = icmp eq %struct.sv* %call185, null
  br i1 %tobool186, label %cond.end242, label %cond.false188

cond.false188:                                    ; preds = %if.then184
  %call189 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  %sv_flags190 = getelementptr inbounds %struct.sv* %call189, i64 0, i32 2
  %46 = load i32* %sv_flags190, align 4, !tbaa !3
  %and191 = and i32 %46, 262144
  %tobool192 = icmp eq i32 %and191, 0
  %call194 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  br i1 %tobool192, label %cond.false211, label %cond.true193

cond.true193:                                     ; preds = %cond.false188
  %sv_any195 = getelementptr inbounds %struct.sv* %call194, i64 0, i32 0
  %47 = load i8** %sv_any195, align 8, !tbaa !0
  %48 = bitcast i8* %47 to %struct.xpv*
  store %struct.xpv* %48, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool196 = icmp eq i8* %47, null
  br i1 %tobool196, label %land.end208, label %land.rhs197

land.rhs197:                                      ; preds = %cond.true193
  %xpv_cur = getelementptr inbounds i8* %47, i64 8
  %49 = bitcast i8* %xpv_cur to i64*
  %50 = load i64* %49, align 8, !tbaa !4
  %cmp198 = icmp ugt i64 %50, 1
  br i1 %cmp198, label %land.end208, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs197
  %tobool201 = icmp eq i64 %50, 0
  br i1 %tobool201, label %land.end208, label %land.rhs202

land.rhs202:                                      ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %47 to i8**
  %51 = load i8** %xpv_pv, align 8, !tbaa !0
  %52 = load i8* %51, align 1, !tbaa !1
  %cmp204 = icmp ne i8 %52, 48
  br label %land.end208

land.end208:                                      ; preds = %lor.rhs, %cond.true193, %land.rhs197, %land.rhs202
  %53 = phi i1 [ false, %cond.true193 ], [ true, %land.rhs197 ], [ false, %lor.rhs ], [ %cmp204, %land.rhs202 ]
  %cond210 = zext i1 %53 to i32
  br label %cond.end242

cond.false211:                                    ; preds = %cond.false188
  %sv_flags213 = getelementptr inbounds %struct.sv* %call194, i64 0, i32 2
  %54 = load i32* %sv_flags213, align 4, !tbaa !3
  %and214 = and i32 %54, 65536
  %tobool215 = icmp eq i32 %and214, 0
  %call217 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  br i1 %tobool215, label %cond.false222, label %cond.true216

cond.true216:                                     ; preds = %cond.false211
  %sv_any218 = getelementptr inbounds %struct.sv* %call217, i64 0, i32 0
  %55 = load i8** %sv_any218, align 8, !tbaa !0
  %xiv_iv219 = getelementptr inbounds i8* %55, i64 24
  %56 = bitcast i8* %xiv_iv219 to i64*
  %57 = load i64* %56, align 8, !tbaa !4
  %cmp220 = icmp ne i64 %57, 0
  %conv221 = zext i1 %cmp220 to i32
  br label %cond.end242

cond.false222:                                    ; preds = %cond.false211
  %sv_flags224 = getelementptr inbounds %struct.sv* %call217, i64 0, i32 2
  %58 = load i32* %sv_flags224, align 4, !tbaa !3
  %and225 = and i32 %58, 131072
  %tobool226 = icmp eq i32 %and225, 0
  %call228 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([30 x i8]* @.str37, i64 0, i64 0), i32 1) #7
  br i1 %tobool226, label %cond.false232, label %cond.true227

cond.true227:                                     ; preds = %cond.false222
  %sv_any229 = getelementptr inbounds %struct.sv* %call228, i64 0, i32 0
  %59 = load i8** %sv_any229, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %59, i64 32
  %60 = bitcast i8* %xnv_nv to double*
  %61 = load double* %60, align 8, !tbaa !6
  %cmp230 = fcmp une double %61, 0.000000e+00
  %conv231 = zext i1 %cmp230 to i32
  br label %cond.end242

cond.false232:                                    ; preds = %cond.false222
  %call234 = call signext i8 @Perl_sv_2bool(%struct.sv* %call228) #7
  %conv235 = sext i8 %call234 to i32
  br label %cond.end242

cond.end242:                                      ; preds = %if.then184, %land.end208, %cond.true227, %cond.false232, %cond.true216
  %cond243 = phi i32 [ 0, %if.then184 ], [ %cond210, %land.end208 ], [ %conv221, %cond.true216 ], [ %conv231, %cond.true227 ], [ %conv235, %cond.false232 ]
  %tobool244 = icmp ne i32 %cond243, 0
  %cond245 = zext i1 %tobool244 to i32
  store i32 %cond245, i32* %accept_future_minor, align 4, !tbaa !3
  br label %if.end247

if.end247:                                        ; preds = %cond.end242, %if.then181
  %62 = phi i32 [ %cond245, %cond.end242 ], [ %45, %if.then181 ]
  %cmp249 = icmp eq i32 %62, 1
  br i1 %cmp249, label %if.then251, label %first_time

if.then251:                                       ; preds = %if.end247
  %s_dirty252 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty252, align 4, !tbaa !3
  %ver_major = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 24
  %63 = load i32* %ver_major, align 4, !tbaa !3
  %64 = load i32* %ver_minor, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([119 x i8]* @.str38, i64 0, i64 0), i32 %63, i32 %64, i32 %type.1, i32 2, i32 6, i32 26) #7
  br label %first_time

first_time:                                       ; preds = %if.end88, %if.end247, %if.then251, %land.lhs.true, %if.else176
  %type.2 = phi i32 [ %type.0, %if.end88 ], [ %type.1, %if.then251 ], [ %type.1, %if.end247 ], [ %type.1, %land.lhs.true ], [ %type.1, %if.else176 ]
  %cmp257 = icmp slt i32 %type.2, 27
  %65 = sext i32 %type.2 to i64
  %idxprom = select i1 %cmp257, i64 %65, i64 27
  %retrieve_vtbl = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 26
  %66 = load %struct.sv* (...)*** %retrieve_vtbl, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.sv* (...)** %66, i64 %idxprom
  %67 = load %struct.sv* (...)** %arrayidx, align 8, !tbaa !0
  %callee.knr.cast = bitcast %struct.sv* (...)* %67 to %struct.sv* (%struct.stcxt*, i8*, ...)*
  %call263 = call %struct.sv* (%struct.stcxt*, i8*, ...)* %callee.knr.cast(%struct.stcxt* %cxt, i8* %cname) #7
  %tobool264 = icmp eq %struct.sv* %call263, null
  br i1 %tobool264, label %return, label %if.end266

if.end266:                                        ; preds = %first_time
  %ver_major267 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 24
  %68 = load i32* %ver_major267, align 4, !tbaa !3
  %cmp268 = icmp slt i32 %68, 2
  br i1 %cmp268, label %while.cond.preheader, label %return

while.cond.preheader:                             ; preds = %if.end266
  %fio271 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %aptr278 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend280 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 20, i32 1
  %arena418 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 20, i32 0
  %netorder358 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %69 = bitcast i32* %len to i8*
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end415
  %70 = load %struct._PerlIO*** %fio271, align 8, !tbaa !0
  %tobool272 = icmp eq %struct._PerlIO** %70, null
  br i1 %tobool272, label %cond.false276, label %cond.true273

cond.true273:                                     ; preds = %while.cond
  %call275 = call i32 @PerlIO_getc(%struct._PerlIO** %70) #7
  br label %cond.end291

cond.false276:                                    ; preds = %while.cond
  %71 = load i8** %aptr278, align 8, !tbaa !0
  %72 = load i8** %aend280, align 8, !tbaa !0
  %cmp281 = icmp ult i8* %71, %72
  br i1 %cmp281, label %cond.false284, label %return.loopexit

cond.false284:                                    ; preds = %cond.false276
  %incdec.ptr287 = getelementptr inbounds i8* %71, i64 1
  store i8* %incdec.ptr287, i8** %aptr278, align 8, !tbaa !0
  %73 = load i8* %71, align 1, !tbaa !1
  %conv288 = sext i8 %73 to i32
  br label %cond.end291

cond.end291:                                      ; preds = %cond.false284, %cond.true273
  %cond292 = phi i32 [ %call275, %cond.true273 ], [ %conv288, %cond.false284 ]
  switch i32 %cond292, label %return.loopexit [
    i32 88, label %return
    i32 98, label %sw.bb
    i32 66, label %sw.bb319
  ]

sw.bb:                                            ; preds = %cond.end291
  %74 = load %struct._PerlIO*** %fio271, align 8, !tbaa !0
  %tobool296 = icmp eq %struct._PerlIO** %74, null
  br i1 %tobool296, label %if.then297, label %if.else311

if.then297:                                       ; preds = %sw.bb
  %75 = load i8** %aptr278, align 8, !tbaa !0
  %76 = load i8** %aend280, align 8, !tbaa !0
  %cmp302 = icmp ult i8* %75, %76
  br i1 %cmp302, label %if.then304, label %return.loopexit

if.then304:                                       ; preds = %if.then297
  %incdec.ptr307 = getelementptr inbounds i8* %75, i64 1
  store i8* %incdec.ptr307, i8** %aptr278, align 8, !tbaa !0
  %77 = load i8* %75, align 1, !tbaa !1
  %conv308 = zext i8 %77 to i32
  store i32 %conv308, i32* %len, align 4, !tbaa !3
  br label %sw.epilog

if.else311:                                       ; preds = %sw.bb
  %call313 = call i32 @PerlIO_getc(%struct._PerlIO** %74) #7
  store i32 %call313, i32* %len, align 4, !tbaa !3
  %cmp314 = icmp eq i32 %call313, -1
  br i1 %cmp314, label %return.loopexit, label %sw.epilog

sw.bb319:                                         ; preds = %cond.end291
  %78 = load %struct._PerlIO*** %fio271, align 8, !tbaa !0
  %tobool321 = icmp eq %struct._PerlIO** %78, null
  br i1 %tobool321, label %if.then322, label %if.else350

if.then322:                                       ; preds = %sw.bb319
  %79 = load i8** %aptr278, align 8, !tbaa !0
  %add.ptr325 = getelementptr inbounds i8* %79, i64 4
  %80 = load i8** %aend280, align 8, !tbaa !0
  %cmp328 = icmp ugt i8* %add.ptr325, %80
  br i1 %cmp328, label %return.loopexit, label %if.end344

if.end344:                                        ; preds = %if.then322
  %storemerge.in = bitcast i8* %79 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %len, align 4
  store i8* %add.ptr325, i8** %aptr278, align 8, !tbaa !0
  br label %if.end357

if.else350:                                       ; preds = %sw.bb319
  %call352 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %78, i8* %69, i64 4) #7
  %cmp353 = icmp eq i64 %call352, 4
  br i1 %cmp353, label %if.end357, label %return.loopexit

if.end357:                                        ; preds = %if.else350, %if.end344
  %81 = load i32* %netorder358, align 4, !tbaa !3
  %tobool359 = icmp eq i32 %81, 0
  %.pre520 = load i32* %len, align 4, !tbaa !3
  br i1 %tobool359, label %sw.epilog, label %if.then360

if.then360:                                       ; preds = %if.end357
  %82 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre520) #3, !srcloc !8
  store i32 %82, i32* %len, align 4, !tbaa !3
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end357, %if.then360, %if.then304, %if.else311
  %83 = phi i32 [ %82, %if.then360 ], [ %conv308, %if.then304 ], [ %call313, %if.else311 ], [ %.pre520, %if.end357 ]
  %conv365 = sext i32 %83 to i64
  %84 = load i64* %asiz, align 8, !tbaa !4
  %cmp366 = icmp ult i64 %conv365, %84
  br i1 %cmp366, label %if.end378, label %if.then368

if.then368:                                       ; preds = %sw.epilog
  %85 = load i8** %arena418, align 8, !tbaa !0
  %add = add i64 %conv365, 1
  %call371 = call i8* @Perl_safesysrealloc(i8* %85, i64 %add) #7
  store i8* %call371, i8** %arena418, align 8, !tbaa !0
  %86 = load i32* %len, align 4, !tbaa !3
  %conv374 = sext i32 %86 to i64
  %add375 = add i64 %conv374, 1
  store i64 %add375, i64* %asiz, align 8, !tbaa !4
  br label %if.end378

if.end378:                                        ; preds = %sw.epilog, %if.then368
  %87 = phi i32 [ %83, %sw.epilog ], [ %86, %if.then368 ]
  %tobool379 = icmp eq i32 %87, 0
  br i1 %tobool379, label %if.end415, label %if.then380

if.then380:                                       ; preds = %if.end378
  %88 = load %struct._PerlIO*** %fio271, align 8, !tbaa !0
  %tobool382 = icmp eq %struct._PerlIO** %88, null
  br i1 %tobool382, label %if.then383, label %if.else403

if.then383:                                       ; preds = %if.then380
  %89 = load i8** %aptr278, align 8, !tbaa !0
  %idx.ext = sext i32 %87 to i64
  %add.ptr386 = getelementptr inbounds i8* %89, i64 %idx.ext
  %90 = load i8** %aend280, align 8, !tbaa !0
  %cmp389 = icmp ugt i8* %add.ptr386, %90
  br i1 %cmp389, label %return.loopexit, label %if.then391

if.then391:                                       ; preds = %if.then383
  %91 = load i8** %arena418, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %89, i64 %idx.ext, i32 1, i1 false)
  %92 = load i32* %len, align 4, !tbaa !3
  %93 = load i8** %aptr278, align 8, !tbaa !0
  %idx.ext399 = sext i32 %92 to i64
  %add.ptr400 = getelementptr inbounds i8* %93, i64 %idx.ext399
  store i8* %add.ptr400, i8** %aptr278, align 8, !tbaa !0
  br label %if.end415

if.else403:                                       ; preds = %if.then380
  %94 = load i8** %arena418, align 8, !tbaa !0
  %conv407 = sext i32 %87 to i64
  %call408 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %88, i8* %94, i64 %conv407) #7
  %95 = load i32* %len, align 4, !tbaa !3
  %conv409 = sext i32 %95 to i64
  %cmp410 = icmp eq i64 %call408, %conv409
  br i1 %cmp410, label %if.end415, label %return.loopexit

if.end415:                                        ; preds = %if.else403, %if.end378, %if.then391
  %96 = phi i32 [ %92, %if.then391 ], [ 0, %if.end378 ], [ %95, %if.else403 ]
  %idxprom416 = sext i32 %96 to i64
  %97 = load i8** %arena418, align 8, !tbaa !0
  %arrayidx419 = getelementptr inbounds i8* %97, i64 %idxprom416
  store i8 0, i8* %arrayidx419, align 1, !tbaa !1
  %98 = load i8** %arena418, align 8, !tbaa !0
  %call422 = call %struct.hv* @Perl_gv_stashpv(i8* %98, i32 1) #7
  %call423 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call263) #7
  %call424 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call423, %struct.hv* %call422) #7
  %sv_any425 = getelementptr inbounds %struct.sv* %call423, i64 0, i32 0
  %99 = load i8** %sv_any425, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %99 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call423) #7
  br label %while.cond

return.loopexit:                                  ; preds = %if.then297, %if.else311, %if.then322, %if.else350, %cond.end291, %if.then383, %if.else403, %cond.false276
  br label %return

return:                                           ; preds = %if.end266, %cond.end291, %return.loopexit, %first_time, %land.rhs170, %if.end168, %if.else154, %if.then126, %if.else112, %if.then98, %if.end88, %land.rhs, %if.end85, %if.else61, %if.then48, %if.else37, %if.then21, %if.else12, %if.then4
  %retval.0 = phi %struct.sv* [ null, %if.then4 ], [ null, %if.else12 ], [ null, %if.then21 ], [ null, %if.else37 ], [ null, %if.then48 ], [ null, %if.else61 ], [ null, %if.end85 ], [ %27, %land.rhs ], [ null, %if.end88 ], [ null, %if.then98 ], [ null, %if.else112 ], [ null, %if.then126 ], [ null, %if.else154 ], [ null, %if.end168 ], [ %42, %land.rhs170 ], [ null, %first_time ], [ null, %return.loopexit ], [ %call263, %cond.end291 ], [ %call263, %if.end266 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @free_context(%struct.stcxt* nocapture %cxt) #1 {
entry:
  %prev1 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 27
  %0 = load %struct.sv** %prev1, align 8, !tbaa !0
  %tobool = icmp eq %struct.sv* %0, null
  br i1 %tobool, label %cond.end, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %0, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %1 to %struct.sv**
  %2 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_any3 = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %3 = load i8** %sv_any3, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %3 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !0
  %phitmp = bitcast i8* %4 to %struct.stcxt*
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.stcxt* [ %phitmp, %cond.true ], [ null, %entry ]
  %my_sv = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 28
  %5 = load %struct.sv** %my_sv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %5) #7
  store %struct.stcxt* %cond, %struct.stcxt** @Context_ptr, align 8, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @sv_type(%struct.sv* %sv) #1 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 255
  switch i32 %and, label %sw.epilog [
    i32 0, label %return
    i32 1, label %return
    i32 2, label %return
    i32 4, label %sw.bb1
    i32 3, label %sw.bb1
    i32 5, label %sw.bb1
    i32 6, label %sw.bb1
    i32 7, label %sw.bb4
    i32 9, label %sw.bb4
    i32 8, label %sw.bb9
    i32 10, label %sw.bb22
    i32 11, label %sw.bb31
    i32 12, label %sw.bb40
  ]

sw.bb1:                                           ; preds = %entry, %entry, %entry, %entry
  %and3 = lshr i32 %0, 19
  %and3.lobit = and i32 %and3, 1
  %1 = xor i32 %and3.lobit, 1
  br label %return

sw.bb4:                                           ; preds = %entry, %entry
  %and6 = and i32 %0, 32768
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %sw.bb9, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb4
  %call = tail call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 112) #7
  %tobool8 = icmp eq %struct.magic* %call, null
  br i1 %tobool8, label %land.lhs.true.sw.bb9_crit_edge, label %return

land.lhs.true.sw.bb9_crit_edge:                   ; preds = %land.lhs.true
  %.pre = load i32* %sv_flags, align 4, !tbaa !3
  br label %sw.bb9

sw.bb9:                                           ; preds = %land.lhs.true.sw.bb9_crit_edge, %sw.bb4, %entry
  %2 = phi i32 [ %.pre, %land.lhs.true.sw.bb9_crit_edge ], [ %0, %sw.bb4 ], [ %0, %entry ]
  %and11 = and i32 %2, 32768
  %tobool12 = icmp eq i32 %and11, 0
  br i1 %tobool12, label %if.end17, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %sw.bb9
  %call14 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 113) #7
  %tobool15 = icmp eq %struct.magic* %call14, null
  br i1 %tobool15, label %land.lhs.true13.if.end17_crit_edge, label %return

land.lhs.true13.if.end17_crit_edge:               ; preds = %land.lhs.true13
  %.pre51 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true13.if.end17_crit_edge, %sw.bb9
  %3 = phi i32 [ %.pre51, %land.lhs.true13.if.end17_crit_edge ], [ %2, %sw.bb9 ]
  %and19 = lshr i32 %3, 19
  %and19.lobit = and i32 %and19, 1
  %4 = xor i32 %and19.lobit, 1
  br label %return

sw.bb22:                                          ; preds = %entry
  %and24 = and i32 %0, 32768
  %tobool25 = icmp eq i32 %and24, 0
  br i1 %tobool25, label %if.end30, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %sw.bb22
  %call27 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 80) #7
  %tobool28 = icmp eq %struct.magic* %call27, null
  br i1 %tobool28, label %if.end30, label %return

if.end30:                                         ; preds = %land.lhs.true26, %sw.bb22
  br label %return

sw.bb31:                                          ; preds = %entry
  %and33 = and i32 %0, 32768
  %tobool34 = icmp eq i32 %and33, 0
  br i1 %tobool34, label %if.end39, label %land.lhs.true35

land.lhs.true35:                                  ; preds = %sw.bb31
  %call36 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 80) #7
  %tobool37 = icmp eq %struct.magic* %call36, null
  br i1 %tobool37, label %if.end39, label %return

if.end39:                                         ; preds = %land.lhs.true35, %sw.bb31
  br label %return

sw.bb40:                                          ; preds = %entry
  br label %return

sw.epilog:                                        ; preds = %entry
  br label %return

return:                                           ; preds = %land.lhs.true35, %land.lhs.true26, %land.lhs.true13, %land.lhs.true, %entry, %entry, %entry, %sw.epilog, %sw.bb40, %if.end39, %if.end30, %if.end17, %sw.bb1
  %retval.0 = phi i32 [ 7, %sw.epilog ], [ 6, %sw.bb40 ], [ 3, %if.end39 ], [ 2, %if.end30 ], [ %4, %if.end17 ], [ %1, %sw.bb1 ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 5, %land.lhs.true ], [ 4, %land.lhs.true13 ], [ 4, %land.lhs.true26 ], [ 4, %land.lhs.true35 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare signext i8 @Perl_Gv_AMupdate(%struct.hv*) #2

; Function Attrs: optsize
declare %struct.magic* @Perl_mg_find(%struct.sv*, i32) #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_read(%struct._PerlIO**, i8*, i64) #2

; Function Attrs: optsize
declare i32 @PerlIO_getc(%struct._PerlIO**) #2

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_fetch(%struct.hv*, i8*, i32, i32) #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv** @Perl_av_fetch(%struct.av*, i32, i32) #2

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store(%struct.hv*, i8*, i32, %struct.sv*, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_get_sv(i8*, i32) #2

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #2

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #2

; Function Attrs: optsize
declare %struct.hv* @Perl_newHV() #2

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #2

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_lscalar(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %len = alloca i32, align 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 4
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %storemerge.in = bitcast i8* %1 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %len, align 4
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end23

if.else18:                                        ; preds = %entry
  %3 = bitcast i32* %len to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %3, i64 4) #7
  %cmp20 = icmp eq i64 %call, 4
  br i1 %cmp20, label %if.end23, label %return

if.end23:                                         ; preds = %if.else18, %if.end
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %4 = load i32* %netorder, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %4, 0
  %.pre = load i32* %len, align 4, !tbaa !3
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  %5 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre) #3, !srcloc !9
  store i32 %5, i32* %len, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.then25
  %6 = phi i32 [ %5, %if.then25 ], [ %.pre, %if.end23 ]
  %conv = sext i32 %6 to i64
  %call27 = call %struct.sv* @Perl_newSV(i64 %conv) #7
  %tobool28 = icmp eq %struct.sv* %call27, null
  br i1 %tobool28, label %return, label %if.end30

if.end30:                                         ; preds = %if.end26
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %7 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %8 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv31 = trunc i64 %8 to i32
  store %struct.sv* %call27, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call27, i64 0, i32 1
  %9 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc33 = add i32 %9, 1
  store i32 %inc33, i32* %sv_refcnt, align 4, !tbaa !3
  %call35 = call %struct.sv** @Perl_av_store(%struct.av* %7, i32 %conv31, %struct.sv* %call27) #7
  %cmp36 = icmp eq %struct.sv** %call35, null
  br i1 %cmp36, label %return, label %if.end39

if.end39:                                         ; preds = %if.end30
  %tobool40 = icmp eq i8* %cname, null
  br i1 %tobool40, label %if.end45, label %if.then41

if.then41:                                        ; preds = %if.end39
  %call42 = call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call43 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call27) #7
  %call44 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call43, %struct.hv* %call42) #7
  %sv_any = getelementptr inbounds %struct.sv* %call43, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %10 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call43) #7
  br label %if.end45

if.end45:                                         ; preds = %if.end39, %if.then41
  %11 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool47 = icmp eq %struct._PerlIO** %11, null
  br i1 %tobool47, label %if.then48, label %if.else67

if.then48:                                        ; preds = %if.end45
  %aptr50 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %12 = load i8** %aptr50, align 8, !tbaa !0
  %13 = load i32* %len, align 4, !tbaa !3
  %idx.ext = sext i32 %13 to i64
  %add.ptr51 = getelementptr inbounds i8* %12, i64 %idx.ext
  %aend53 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %14 = load i8** %aend53, align 8, !tbaa !0
  %cmp54 = icmp ugt i8* %add.ptr51, %14
  br i1 %cmp54, label %if.else65, label %if.then56

if.then56:                                        ; preds = %if.then48
  %sv_any57 = getelementptr inbounds %struct.sv* %call27, i64 0, i32 0
  %15 = load i8** %sv_any57, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %15 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %12, i64 %idx.ext, i32 1, i1 false)
  %17 = load i32* %len, align 4, !tbaa !3
  %18 = load i8** %aptr50, align 8, !tbaa !0
  %idx.ext63 = sext i32 %17 to i64
  %add.ptr64 = getelementptr inbounds i8* %18, i64 %idx.ext63
  store i8* %add.ptr64, i8** %aptr50, align 8, !tbaa !0
  br label %if.end78

if.else65:                                        ; preds = %if.then48
  call void @Perl_sv_free(%struct.sv* %call27) #7
  br label %return

if.else67:                                        ; preds = %if.end45
  %sv_any69 = getelementptr inbounds %struct.sv* %call27, i64 0, i32 0
  %19 = load i8** %sv_any69, align 8, !tbaa !0
  %xpv_pv70 = bitcast i8* %19 to i8**
  %20 = load i8** %xpv_pv70, align 8, !tbaa !0
  %21 = load i32* %len, align 4, !tbaa !3
  %conv71 = sext i32 %21 to i64
  %call72 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %11, i8* %20, i64 %conv71) #7
  %22 = load i32* %len, align 4, !tbaa !3
  %conv73 = sext i32 %22 to i64
  %cmp74 = icmp eq i64 %call72, %conv73
  br i1 %cmp74, label %if.end78, label %if.then76

if.then76:                                        ; preds = %if.else67
  call void @Perl_sv_free(%struct.sv* %call27) #7
  br label %return

if.end78:                                         ; preds = %if.else67, %if.then56
  %23 = phi i32 [ %22, %if.else67 ], [ %17, %if.then56 ]
  %conv79 = sext i32 %23 to i64
  %sv_any80 = getelementptr inbounds %struct.sv* %call27, i64 0, i32 0
  %24 = load i8** %sv_any80, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %24, i64 8
  %25 = bitcast i8* %xpv_cur to i64*
  store i64 %conv79, i64* %25, align 8, !tbaa !4
  %xpv_pv82 = bitcast i8* %24 to i8**
  %26 = load i8** %xpv_pv82, align 8, !tbaa !0
  %add.ptr85 = getelementptr inbounds i8* %26, i64 %conv79
  store i8 0, i8* %add.ptr85, align 1, !tbaa !1
  %sv_flags = getelementptr inbounds %struct.sv* %call27, i64 0, i32 2
  %27 = load i32* %sv_flags, align 4, !tbaa !3
  %and86 = and i32 %27, 1223753727
  %or = or i32 %and86, 67371008
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %s_tainted = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 12
  %28 = load i32* %s_tainted, align 4, !tbaa !3
  %tobool88 = icmp ne i32 %28, 0
  %29 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool90 = icmp ne i8 %29, 0
  %or.cond = and i1 %tobool88, %tobool90
  %30 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool92 = icmp ne i8 %30, 0
  %or.cond100 = and i1 %or.cond, %tobool92
  br i1 %or.cond100, label %if.then95, label %return

if.then95:                                        ; preds = %if.end78
  call void @Perl_sv_taint(%struct.sv* %call27) #7
  br label %return

return:                                           ; preds = %if.end26, %if.end78, %if.then95, %if.end30, %if.else18, %if.then, %if.then76, %if.else65
  %retval.0 = phi %struct.sv* [ null, %if.then76 ], [ null, %if.else65 ], [ null, %if.then ], [ null, %if.else18 ], [ null, %if.end26 ], [ null, %if.end30 ], [ %call27, %if.then95 ], [ %call27, %if.end78 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @old_retrieve_array(%struct.stcxt* %cxt, i8* nocapture %cname) #1 {
entry:
  %len = alloca i32, align 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 4
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %storemerge.in = bitcast i8* %1 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %len, align 4
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end23

if.else18:                                        ; preds = %entry
  %3 = bitcast i32* %len to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %3, i64 4) #7
  %cmp20 = icmp eq i64 %call, 4
  br i1 %cmp20, label %if.end23, label %return

if.end23:                                         ; preds = %if.else18, %if.end
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %4 = load i32* %netorder, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %4, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  %5 = load i32* %len, align 4, !tbaa !3
  %6 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %5) #3, !srcloc !10
  store i32 %6, i32* %len, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.then25
  %call27 = call %struct.av* @Perl_newAV() #7
  %tobool28 = icmp eq %struct.av* %call27, null
  br i1 %tobool28, label %return, label %if.end30

if.end30:                                         ; preds = %if.end26
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %7 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %8 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %8 to i32
  %9 = bitcast %struct.av* %call27 to %struct.sv*
  store %struct.sv* %9, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %10 = getelementptr inbounds %struct.av* %call27, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !3
  %inc32 = add i32 %11, 1
  store i32 %inc32, i32* %10, align 4, !tbaa !3
  %call34 = call %struct.sv** @Perl_av_store(%struct.av* %7, i32 %conv, %struct.sv* %9) #7
  %cmp35 = icmp eq %struct.sv** %call34, null
  br i1 %cmp35, label %return, label %if.end38

if.end38:                                         ; preds = %if.end30
  %12 = load i32* %len, align 4, !tbaa !3
  %tobool39 = icmp eq i32 %12, 0
  br i1 %tobool39, label %return, label %if.then40

if.then40:                                        ; preds = %if.end38
  call void @Perl_av_extend(%struct.av* %call27, i32 %12) #7
  %aptr49 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %13 = load i32* %len, align 4, !tbaa !3
  %cmp43110 = icmp sgt i32 %13, 0
  br i1 %cmp43110, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.then40
  %aend51 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc86, %for.inc ]
  %14 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool46 = icmp eq %struct._PerlIO** %14, null
  br i1 %tobool46, label %if.then47, label %if.else60

if.then47:                                        ; preds = %for.body
  %15 = load i8** %aptr49, align 8, !tbaa !0
  %16 = load i8** %aend51, align 8, !tbaa !0
  %cmp52 = icmp ult i8* %15, %16
  br i1 %cmp52, label %if.then54, label %return

if.then54:                                        ; preds = %if.then47
  %incdec.ptr = getelementptr inbounds i8* %15, i64 1
  store i8* %incdec.ptr, i8** %aptr49, align 8, !tbaa !0
  %17 = load i8* %15, align 1, !tbaa !1
  %conv57 = zext i8 %17 to i32
  br label %if.end67

if.else60:                                        ; preds = %for.body
  %call62 = call i32 @PerlIO_getc(%struct._PerlIO** %14) #7
  %cmp63 = icmp eq i32 %call62, -1
  br i1 %cmp63, label %return, label %if.end67

if.end67:                                         ; preds = %if.else60, %if.then54
  %c.0 = phi i32 [ %call62, %if.else60 ], [ %conv57, %if.then54 ]
  switch i32 %c.0, label %if.then74 [
    i32 73, label %for.inc
    i32 105, label %if.end76
  ]

if.then74:                                        ; preds = %if.end67
  %call75 = call %struct.sv* @retrieve_other(%struct.stcxt* null, i8* null) #6
  br label %if.end76

if.end76:                                         ; preds = %if.end67, %if.then74
  %call77 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool78 = icmp eq %struct.sv* %call77, null
  br i1 %tobool78, label %return, label %if.end80

if.end80:                                         ; preds = %if.end76
  %call81 = call %struct.sv** @Perl_av_store(%struct.av* %call27, i32 %i.0111, %struct.sv* %call77) #7
  %cmp82 = icmp eq %struct.sv** %call81, null
  br i1 %cmp82, label %return, label %for.inc

for.inc:                                          ; preds = %if.end80, %if.end67
  %inc86 = add nsw i32 %i.0111, 1
  %18 = load i32* %len, align 4, !tbaa !3
  %cmp43 = icmp slt i32 %inc86, %18
  br i1 %cmp43, label %for.body, label %return

return:                                           ; preds = %if.then40, %if.end80, %if.end76, %if.else60, %if.then47, %for.inc, %if.end38, %if.end30, %if.end26, %if.else18, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else18 ], [ null, %if.end26 ], [ null, %if.end30 ], [ %9, %if.end38 ], [ %9, %if.then40 ], [ null, %if.end80 ], [ null, %if.end76 ], [ null, %if.else60 ], [ null, %if.then47 ], [ %9, %for.inc ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @old_retrieve_hash(%struct.stcxt* %cxt, i8* nocapture %cname) #1 {
entry:
  %len = alloca i32, align 4
  %size = alloca i32, align 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 4
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %storemerge.in = bitcast i8* %1 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %len, align 4
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end23

if.else18:                                        ; preds = %entry
  %3 = bitcast i32* %len to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %3, i64 4) #7
  %cmp20 = icmp eq i64 %call, 4
  br i1 %cmp20, label %if.end23, label %return

if.end23:                                         ; preds = %if.else18, %if.end
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %4 = load i32* %netorder, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %4, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  %5 = load i32* %len, align 4, !tbaa !3
  %6 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %5) #3, !srcloc !11
  store i32 %6, i32* %len, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.then25
  %call27 = call %struct.hv* @Perl_newHV() #7
  %tobool28 = icmp eq %struct.hv* %call27, null
  br i1 %tobool28, label %return, label %if.end30

if.end30:                                         ; preds = %if.end26
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %7 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %8 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %8 to i32
  %9 = bitcast %struct.hv* %call27 to %struct.sv*
  store %struct.sv* %9, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %10 = getelementptr inbounds %struct.hv* %call27, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !3
  %inc32 = add i32 %11, 1
  store i32 %inc32, i32* %10, align 4, !tbaa !3
  %call34 = call %struct.sv** @Perl_av_store(%struct.av* %7, i32 %conv, %struct.sv* %9) #7
  %cmp35 = icmp eq %struct.sv** %call34, null
  br i1 %cmp35, label %return, label %if.end38

if.end38:                                         ; preds = %if.end30
  %12 = load i32* %len, align 4, !tbaa !3
  %cmp39 = icmp eq i32 %12, 0
  br i1 %cmp39, label %return, label %if.end42

if.end42:                                         ; preds = %if.end38
  %conv43 = sext i32 %12 to i64
  call void @Perl_hv_ksplit(%struct.hv* %call27, i64 %conv43) #7
  %aptr50 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %13 = bitcast i32* %size to i8*
  %arena209 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 20, i32 0
  %14 = load i32* %len, align 4, !tbaa !3
  %cmp44280 = icmp sgt i32 %14, 0
  br i1 %cmp44280, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end42
  %aend52 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 20, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end218
  %15 = load i32* %len, align 4, !tbaa !3
  %cmp44 = icmp slt i32 %inc228, %15
  br i1 %cmp44, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0282 = phi i32 [ 0, %for.body.lr.ph ], [ %inc228, %for.cond ]
  %sv.0281 = phi %struct.sv* [ null, %for.body.lr.ph ], [ %sv.1, %for.cond ]
  %16 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool47 = icmp eq %struct._PerlIO** %16, null
  br i1 %tobool47, label %if.then48, label %if.else61

if.then48:                                        ; preds = %for.body
  %17 = load i8** %aptr50, align 8, !tbaa !0
  %18 = load i8** %aend52, align 8, !tbaa !0
  %cmp53 = icmp ult i8* %17, %18
  br i1 %cmp53, label %if.then55, label %return

if.then55:                                        ; preds = %if.then48
  %incdec.ptr = getelementptr inbounds i8* %17, i64 1
  store i8* %incdec.ptr, i8** %aptr50, align 8, !tbaa !0
  %19 = load i8* %17, align 1, !tbaa !1
  %conv58 = zext i8 %19 to i32
  br label %if.end68

if.else61:                                        ; preds = %for.body
  %call63 = call i32 @PerlIO_getc(%struct._PerlIO** %16) #7
  %cmp64 = icmp eq i32 %call63, -1
  br i1 %cmp64, label %return, label %if.end68

if.end68:                                         ; preds = %if.else61, %if.then55
  %c.0 = phi i32 [ %call63, %if.else61 ], [ %conv58, %if.then55 ]
  switch i32 %c.0, label %if.else91 [
    i32 86, label %if.then71
    i32 118, label %if.then86
  ]

if.then71:                                        ; preds = %if.end68
  %20 = load %struct.sv** @old_retrieve_hash.sv_h_undef, align 8, !tbaa !0
  %tobool72 = icmp eq %struct.sv* %20, null
  br i1 %tobool72, label %if.end75, label %if.end75.thread

if.end75.thread:                                  ; preds = %if.then71
  store %struct.sv* %20, %struct.sv** @PL_Sv, align 8, !tbaa !0
  br label %land.rhs77

if.end75:                                         ; preds = %if.then71
  %call74 = call %struct.sv* @Perl_newSVsv(%struct.sv* @PL_sv_undef) #7
  store %struct.sv* %call74, %struct.sv** @old_retrieve_hash.sv_h_undef, align 8, !tbaa !0
  store %struct.sv* %call74, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool76 = icmp eq %struct.sv* %call74, null
  br i1 %tobool76, label %if.end94, label %land.rhs77

land.rhs77:                                       ; preds = %if.end75.thread, %if.end75
  %21 = phi %struct.sv* [ %20, %if.end75.thread ], [ %call74, %if.end75 ]
  %sv_refcnt78 = getelementptr inbounds %struct.sv* %21, i64 0, i32 1
  %22 = load i32* %sv_refcnt78, align 4, !tbaa !3
  %inc79 = add i32 %22, 1
  store i32 %inc79, i32* %sv_refcnt78, align 4, !tbaa !3
  br label %if.end94

if.then86:                                        ; preds = %if.end68
  %call87 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool88 = icmp eq %struct.sv* %call87, null
  br i1 %tobool88, label %return, label %if.end94

if.else91:                                        ; preds = %if.end68
  %call92 = call %struct.sv* @retrieve_other(%struct.stcxt* null, i8* null) #6
  br label %if.end94

if.end94:                                         ; preds = %land.rhs77, %if.end75, %if.then86, %if.else91
  %sv.1 = phi %struct.sv* [ %call87, %if.then86 ], [ %sv.0281, %if.else91 ], [ null, %if.end75 ], [ %21, %land.rhs77 ]
  %23 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool96 = icmp eq %struct._PerlIO** %23, null
  br i1 %tobool96, label %if.then97, label %if.else111

if.then97:                                        ; preds = %if.end94
  %24 = load i8** %aptr50, align 8, !tbaa !0
  %25 = load i8** %aend52, align 8, !tbaa !0
  %cmp102 = icmp ult i8* %24, %25
  br i1 %cmp102, label %if.then104, label %return

if.then104:                                       ; preds = %if.then97
  %incdec.ptr107 = getelementptr inbounds i8* %24, i64 1
  store i8* %incdec.ptr107, i8** %aptr50, align 8, !tbaa !0
  %26 = load i8* %24, align 1, !tbaa !1
  %conv108 = zext i8 %26 to i32
  br label %if.end118

if.else111:                                       ; preds = %if.end94
  %call113 = call i32 @PerlIO_getc(%struct._PerlIO** %23) #7
  %cmp114 = icmp eq i32 %call113, -1
  br i1 %cmp114, label %return, label %if.end118

if.end118:                                        ; preds = %if.else111, %if.then104
  %c.1 = phi i32 [ %call113, %if.else111 ], [ %conv108, %if.then104 ]
  %cmp119 = icmp eq i32 %c.1, 107
  br i1 %cmp119, label %if.end123, label %if.then121

if.then121:                                       ; preds = %if.end118
  %call122 = call %struct.sv* @retrieve_other(%struct.stcxt* null, i8* null) #6
  br label %if.end123

if.end123:                                        ; preds = %if.end118, %if.then121
  %27 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool125 = icmp eq %struct._PerlIO** %27, null
  br i1 %tobool125, label %if.then126, label %if.else154

if.then126:                                       ; preds = %if.end123
  %28 = load i8** %aptr50, align 8, !tbaa !0
  %add.ptr129 = getelementptr inbounds i8* %28, i64 4
  %29 = load i8** %aend52, align 8, !tbaa !0
  %cmp132 = icmp ugt i8* %add.ptr129, %29
  br i1 %cmp132, label %return, label %if.end148

if.end148:                                        ; preds = %if.then126
  %storemerge278.in = bitcast i8* %28 to i32*
  %storemerge278 = load i32* %storemerge278.in, align 1
  store i32 %storemerge278, i32* %size, align 4
  store i8* %add.ptr129, i8** %aptr50, align 8, !tbaa !0
  br label %if.end161

if.else154:                                       ; preds = %if.end123
  %call156 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %27, i8* %13, i64 4) #7
  %cmp157 = icmp eq i64 %call156, 4
  br i1 %cmp157, label %if.end161, label %return

if.end161:                                        ; preds = %if.else154, %if.end148
  %30 = load i32* %netorder, align 4, !tbaa !3
  %tobool163 = icmp eq i32 %30, 0
  %.pre = load i32* %size, align 4, !tbaa !3
  br i1 %tobool163, label %if.end167, label %if.then164

if.then164:                                       ; preds = %if.end161
  %31 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre) #3, !srcloc !12
  store i32 %31, i32* %size, align 4, !tbaa !3
  br label %if.end167

if.end167:                                        ; preds = %if.end161, %if.then164
  %32 = phi i32 [ %31, %if.then164 ], [ %.pre, %if.end161 ]
  %conv168 = sext i32 %32 to i64
  %33 = load i64* %asiz, align 8, !tbaa !4
  %cmp169 = icmp ult i64 %conv168, %33
  br i1 %cmp169, label %if.end181, label %if.then171

if.then171:                                       ; preds = %if.end167
  %34 = load i8** %arena209, align 8, !tbaa !0
  %add = add i64 %conv168, 1
  %call174 = call i8* @Perl_safesysrealloc(i8* %34, i64 %add) #7
  store i8* %call174, i8** %arena209, align 8, !tbaa !0
  %35 = load i32* %size, align 4, !tbaa !3
  %conv177 = sext i32 %35 to i64
  %add178 = add i64 %conv177, 1
  store i64 %add178, i64* %asiz, align 8, !tbaa !4
  br label %if.end181

if.end181:                                        ; preds = %if.end167, %if.then171
  %36 = phi i32 [ %32, %if.end167 ], [ %35, %if.then171 ]
  %tobool182 = icmp eq i32 %36, 0
  br i1 %tobool182, label %if.end218, label %if.then183

if.then183:                                       ; preds = %if.end181
  %37 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool185 = icmp eq %struct._PerlIO** %37, null
  br i1 %tobool185, label %if.then186, label %if.else206

if.then186:                                       ; preds = %if.then183
  %38 = load i8** %aptr50, align 8, !tbaa !0
  %idx.ext = sext i32 %36 to i64
  %add.ptr189 = getelementptr inbounds i8* %38, i64 %idx.ext
  %39 = load i8** %aend52, align 8, !tbaa !0
  %cmp192 = icmp ugt i8* %add.ptr189, %39
  br i1 %cmp192, label %return, label %if.then194

if.then194:                                       ; preds = %if.then186
  %40 = load i8** %arena209, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %38, i64 %idx.ext, i32 1, i1 false)
  %41 = load i32* %size, align 4, !tbaa !3
  %42 = load i8** %aptr50, align 8, !tbaa !0
  %idx.ext202 = sext i32 %41 to i64
  %add.ptr203 = getelementptr inbounds i8* %42, i64 %idx.ext202
  store i8* %add.ptr203, i8** %aptr50, align 8, !tbaa !0
  br label %if.end218

if.else206:                                       ; preds = %if.then183
  %43 = load i8** %arena209, align 8, !tbaa !0
  %conv210 = sext i32 %36 to i64
  %call211 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %37, i8* %43, i64 %conv210) #7
  %44 = load i32* %size, align 4, !tbaa !3
  %conv212 = sext i32 %44 to i64
  %cmp213 = icmp eq i64 %call211, %conv212
  br i1 %cmp213, label %if.end218, label %return

if.end218:                                        ; preds = %if.else206, %if.end181, %if.then194
  %45 = phi i32 [ %41, %if.then194 ], [ 0, %if.end181 ], [ %44, %if.else206 ]
  %idxprom = sext i32 %45 to i64
  %46 = load i8** %arena209, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %46, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %47 = load i8** %arena209, align 8, !tbaa !0
  %48 = load i32* %size, align 4, !tbaa !3
  %call223 = call %struct.sv** @Perl_hv_store(%struct.hv* %call27, i8* %47, i32 %48, %struct.sv* %sv.1, i32 0) #7
  %cmp224 = icmp eq %struct.sv** %call223, null
  %inc228 = add nsw i32 %i.0282, 1
  br i1 %cmp224, label %return, label %for.cond

return:                                           ; preds = %if.end42, %if.end218, %if.else206, %if.then186, %if.else154, %if.then126, %if.else111, %if.then97, %if.then86, %if.else61, %if.then48, %for.cond, %if.end38, %if.end30, %if.end26, %if.else18, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else18 ], [ null, %if.end26 ], [ null, %if.end30 ], [ %9, %if.end38 ], [ %9, %if.end42 ], [ null, %if.end218 ], [ null, %if.else206 ], [ null, %if.then186 ], [ null, %if.else154 ], [ null, %if.then126 ], [ null, %if.else111 ], [ null, %if.then97 ], [ null, %if.then86 ], [ null, %if.else61 ], [ null, %if.then48 ], [ %9, %for.cond ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_ref(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %sv_refcnt, align 4, !tbaa !3
  %call4 = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call4, null
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8 = icmp ne i8* %cname, null
  br i1 %tobool8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call11 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call12 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call11, %struct.hv* %call10) #7
  %sv_any = getelementptr inbounds %struct.sv* %call11, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call11) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end7
  %call14 = tail call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool15 = icmp eq %struct.sv* %call14, null
  br i1 %tobool15, label %return, label %if.end17

if.end17:                                         ; preds = %if.end13
  br i1 %tobool8, label %if.end21, label %if.else

if.else:                                          ; preds = %if.end17
  %call20 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 3) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.else
  %sv_any22 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %4 = load i8** %sv_any22, align 8, !tbaa !0
  %xrv_rv23 = bitcast i8* %4 to %struct.sv**
  store %struct.sv* %call14, %struct.sv** %xrv_rv23, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %5, 524288
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end13, %if.end, %if.end21
  %retval.0 = phi %struct.sv* [ %call, %if.end21 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end13 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_undef(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %sv_refcnt, align 4, !tbaa !3
  %call4 = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call4, null
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8 = icmp eq i8* %cname, null
  br i1 %tobool8, label %return, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call11 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call12 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call11, %struct.hv* %call10) #7
  %sv_any = getelementptr inbounds %struct.sv* %call11, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call11) #7
  br label %return

return:                                           ; preds = %entry, %if.then9, %if.end7, %if.end
  %retval.0 = phi %struct.sv* [ null, %entry ], [ null, %if.end ], [ %call, %if.end7 ], [ %call, %if.then9 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_integer(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %iv = alloca i64, align 8
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 8
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  %3 = bitcast i8* %1 to i64*
  %4 = load i64* %3, align 1
  store i64 %4, i64* %iv, align 8
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end13

if.else8:                                         ; preds = %entry
  %5 = bitcast i64* %iv to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %5, i64 8) #7
  %cmp10 = icmp eq i64 %call, 8
  br i1 %cmp10, label %if.else8.if.end13_crit_edge, label %return

if.else8.if.end13_crit_edge:                      ; preds = %if.else8
  %.pre = load i64* %iv, align 8, !tbaa !4
  br label %if.end13

if.end13:                                         ; preds = %if.else8.if.end13_crit_edge, %if.then2
  %6 = phi i64 [ %.pre, %if.else8.if.end13_crit_edge ], [ %4, %if.then2 ]
  %call14 = call %struct.sv* @Perl_newSViv(i64 %6) #7
  %tobool15 = icmp eq %struct.sv* %call14, null
  br i1 %tobool15, label %return, label %if.end17

if.end17:                                         ; preds = %if.end13
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %7 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %8 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %8 to i32
  store %struct.sv* %call14, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call14, i64 0, i32 1
  %9 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc19 = add i32 %9, 1
  store i32 %inc19, i32* %sv_refcnt, align 4, !tbaa !3
  %call21 = call %struct.sv** @Perl_av_store(%struct.av* %7, i32 %conv, %struct.sv* %call14) #7
  %cmp22 = icmp eq %struct.sv** %call21, null
  br i1 %cmp22, label %return, label %if.end25

if.end25:                                         ; preds = %if.end17
  %tobool26 = icmp eq i8* %cname, null
  br i1 %tobool26, label %return, label %if.then27

if.then27:                                        ; preds = %if.end25
  %call28 = call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call29 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call14) #7
  %call30 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call29, %struct.hv* %call28) #7
  %sv_any = getelementptr inbounds %struct.sv* %call29, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %10 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call29) #7
  br label %return

return:                                           ; preds = %if.end13, %if.then27, %if.end25, %if.end17, %if.else8, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else8 ], [ null, %if.end13 ], [ null, %if.end17 ], [ %call14, %if.end25 ], [ %call14, %if.then27 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_double(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %nv = alloca double, align 8
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else8

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 8
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %return, label %if.then2

if.then2:                                         ; preds = %if.then
  %3 = bitcast i8* %1 to double*
  %4 = load double* %3, align 1
  store double %4, double* %nv, align 8
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end13

if.else8:                                         ; preds = %entry
  %5 = bitcast double* %nv to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %5, i64 8) #7
  %cmp10 = icmp eq i64 %call, 8
  br i1 %cmp10, label %if.else8.if.end13_crit_edge, label %return

if.else8.if.end13_crit_edge:                      ; preds = %if.else8
  %.pre = load double* %nv, align 8, !tbaa !6
  br label %if.end13

if.end13:                                         ; preds = %if.else8.if.end13_crit_edge, %if.then2
  %6 = phi double [ %.pre, %if.else8.if.end13_crit_edge ], [ %4, %if.then2 ]
  %call14 = call %struct.sv* @Perl_newSVnv(double %6) #7
  %tobool15 = icmp eq %struct.sv* %call14, null
  br i1 %tobool15, label %return, label %if.end17

if.end17:                                         ; preds = %if.end13
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %7 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %8 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %8 to i32
  store %struct.sv* %call14, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call14, i64 0, i32 1
  %9 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc19 = add i32 %9, 1
  store i32 %inc19, i32* %sv_refcnt, align 4, !tbaa !3
  %call21 = call %struct.sv** @Perl_av_store(%struct.av* %7, i32 %conv, %struct.sv* %call14) #7
  %cmp22 = icmp eq %struct.sv** %call21, null
  br i1 %cmp22, label %return, label %if.end25

if.end25:                                         ; preds = %if.end17
  %tobool26 = icmp eq i8* %cname, null
  br i1 %tobool26, label %return, label %if.then27

if.then27:                                        ; preds = %if.end25
  %call28 = call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call29 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call14) #7
  %call30 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call29, %struct.hv* %call28) #7
  %sv_any = getelementptr inbounds %struct.sv* %call29, i64 0, i32 0
  %10 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %10 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call29) #7
  br label %return

return:                                           ; preds = %if.end13, %if.then27, %if.end25, %if.end17, %if.else8, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else8 ], [ null, %if.end13 ], [ null, %if.end17 ], [ %call14, %if.end25 ], [ %call14, %if.then27 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_byte(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then2, label %return

if.then2:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  %3 = load i8* %1, align 1, !tbaa !1
  %conv = zext i8 %3 to i32
  br label %if.end11

if.else5:                                         ; preds = %entry
  %call = tail call i32 @PerlIO_getc(%struct._PerlIO** %0) #7
  %cmp7 = icmp eq i32 %call, -1
  br i1 %cmp7, label %return, label %if.end11

if.end11:                                         ; preds = %if.else5, %if.then2
  %siv.0 = phi i32 [ %call, %if.else5 ], [ %conv, %if.then2 ]
  %sub = add nsw i32 %siv.0, 128
  %conv14 = zext i32 %sub to i64
  %sext = shl i64 %conv14, 56
  %conv15 = ashr exact i64 %sext, 56
  %call16 = tail call %struct.sv* @Perl_newSViv(i64 %conv15) #7
  %tobool17 = icmp eq %struct.sv* %call16, null
  br i1 %tobool17, label %return, label %if.end19

if.end19:                                         ; preds = %if.end11
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %4 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %5 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv20 = trunc i64 %5 to i32
  store %struct.sv* %call16, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call16, i64 0, i32 1
  %6 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc22 = add i32 %6, 1
  store i32 %inc22, i32* %sv_refcnt, align 4, !tbaa !3
  %call24 = tail call %struct.sv** @Perl_av_store(%struct.av* %4, i32 %conv20, %struct.sv* %call16) #7
  %cmp25 = icmp eq %struct.sv** %call24, null
  br i1 %cmp25, label %return, label %if.end28

if.end28:                                         ; preds = %if.end19
  %tobool29 = icmp eq i8* %cname, null
  br i1 %tobool29, label %return, label %if.then30

if.then30:                                        ; preds = %if.end28
  %call33 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call34 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call16) #7
  %call35 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call34, %struct.hv* %call33) #7
  %sv_any = getelementptr inbounds %struct.sv* %call34, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call34) #7
  br label %return

return:                                           ; preds = %if.end11, %if.then30, %if.end28, %if.end19, %if.else5, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else5 ], [ null, %if.end11 ], [ null, %if.end19 ], [ %call16, %if.end28 ], [ %call16, %if.then30 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_netint(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %iv = alloca i32, align 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 4
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %storemerge.in = bitcast i8* %1 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %iv, align 4
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end23

if.else18:                                        ; preds = %entry
  %3 = bitcast i32* %iv to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %3, i64 4) #7
  %cmp20 = icmp eq i64 %call, 4
  br i1 %cmp20, label %if.else18.if.end23_crit_edge, label %return

if.else18.if.end23_crit_edge:                     ; preds = %if.else18
  %.pre = load i32* %iv, align 4, !tbaa !3
  br label %if.end23

if.end23:                                         ; preds = %if.else18.if.end23_crit_edge, %if.end
  %4 = phi i32 [ %.pre, %if.else18.if.end23_crit_edge ], [ %storemerge, %if.end ]
  %5 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %4) #3, !srcloc !13
  %conv = sext i32 %5 to i64
  %call24 = call %struct.sv* @Perl_newSViv(i64 %conv) #7
  %tobool25 = icmp eq %struct.sv* %call24, null
  br i1 %tobool25, label %return, label %if.end27

if.end27:                                         ; preds = %if.end23
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %6 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %7 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %7, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv28 = trunc i64 %7 to i32
  store %struct.sv* %call24, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call24, i64 0, i32 1
  %8 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc30 = add i32 %8, 1
  store i32 %inc30, i32* %sv_refcnt, align 4, !tbaa !3
  %call32 = call %struct.sv** @Perl_av_store(%struct.av* %6, i32 %conv28, %struct.sv* %call24) #7
  %cmp33 = icmp eq %struct.sv** %call32, null
  br i1 %cmp33, label %return, label %if.end36

if.end36:                                         ; preds = %if.end27
  %tobool37 = icmp eq i8* %cname, null
  br i1 %tobool37, label %return, label %if.then38

if.then38:                                        ; preds = %if.end36
  %call39 = call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call40 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call24) #7
  %call41 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call40, %struct.hv* %call39) #7
  %sv_any = getelementptr inbounds %struct.sv* %call40, i64 0, i32 0
  %9 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %9 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call40) #7
  br label %return

return:                                           ; preds = %if.end23, %if.then38, %if.end36, %if.end27, %if.else18, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else18 ], [ null, %if.end23 ], [ null, %if.end27 ], [ %call24, %if.end36 ], [ %call24, %if.then38 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_scalar(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then2, label %return

if.then2:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  %3 = load i8* %1, align 1, !tbaa !1
  %conv = zext i8 %3 to i32
  br label %if.end11

if.else5:                                         ; preds = %entry
  %call = tail call i32 @PerlIO_getc(%struct._PerlIO** %0) #7
  %cmp7 = icmp eq i32 %call, -1
  br i1 %cmp7, label %return, label %if.end11

if.end11:                                         ; preds = %if.else5, %if.then2
  %len.0 = phi i32 [ %call, %if.else5 ], [ %conv, %if.then2 ]
  %conv12 = sext i32 %len.0 to i64
  %call13 = tail call %struct.sv* @Perl_newSV(i64 %conv12) #7
  %tobool14 = icmp eq %struct.sv* %call13, null
  br i1 %tobool14, label %return, label %if.end16

if.end16:                                         ; preds = %if.end11
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %4 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %5 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %5, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv17 = trunc i64 %5 to i32
  store %struct.sv* %call13, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call13, i64 0, i32 1
  %6 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc19 = add i32 %6, 1
  store i32 %inc19, i32* %sv_refcnt, align 4, !tbaa !3
  %call21 = tail call %struct.sv** @Perl_av_store(%struct.av* %4, i32 %conv17, %struct.sv* %call13) #7
  %cmp22 = icmp eq %struct.sv** %call21, null
  br i1 %cmp22, label %return, label %if.end25

if.end25:                                         ; preds = %if.end16
  %tobool26 = icmp eq i8* %cname, null
  br i1 %tobool26, label %if.end31, label %if.then27

if.then27:                                        ; preds = %if.end25
  %call28 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call29 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call13) #7
  %call30 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call29, %struct.hv* %call28) #7
  %sv_any = getelementptr inbounds %struct.sv* %call29, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %7 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call29) #7
  br label %if.end31

if.end31:                                         ; preds = %if.end25, %if.then27
  %cmp32 = icmp eq i32 %len.0, 0
  br i1 %cmp32, label %if.then34, label %if.else48

if.then34:                                        ; preds = %if.end31
  %sv_flags = getelementptr inbounds %struct.sv* %call13, i64 0, i32 2
  %8 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %8, 255
  %cmp35 = icmp ult i32 %and, 5
  br i1 %cmp35, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.then34
  %call38 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call13, i32 4) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then34
  %sv_any40 = getelementptr inbounds %struct.sv* %call13, i64 0, i32 0
  %9 = load i8** %sv_any40, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %9, i64 16
  %10 = bitcast i8* %xpv_len to i64*
  %11 = load i64* %10, align 8, !tbaa !4
  %cmp41 = icmp eq i64 %11, 0
  br i1 %cmp41, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.end39
  %call43 = tail call i8* @Perl_sv_grow(%struct.sv* %call13, i64 1) #7
  %.pre = load i8** %sv_any40, align 8, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.end39, %cond.true
  %12 = phi i8* [ %9, %if.end39 ], [ %.pre, %cond.true ]
  %xpv_pv46 = bitcast i8* %12 to i8**
  %13 = load i8** %xpv_pv46, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %12, i64 8
  %14 = bitcast i8* %xpv_cur to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  %add.ptr = getelementptr inbounds i8* %13, i64 %15
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end91

if.else48:                                        ; preds = %if.end31
  %16 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool50 = icmp eq %struct._PerlIO** %16, null
  br i1 %tobool50, label %if.then51, label %if.else71

if.then51:                                        ; preds = %if.else48
  %aptr53 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %17 = load i8** %aptr53, align 8, !tbaa !0
  %add.ptr54 = getelementptr inbounds i8* %17, i64 %conv12
  %aend56 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %18 = load i8** %aend56, align 8, !tbaa !0
  %cmp57 = icmp ugt i8* %add.ptr54, %18
  br i1 %cmp57, label %if.else69, label %if.then59

if.then59:                                        ; preds = %if.then51
  %sv_any60 = getelementptr inbounds %struct.sv* %call13, i64 0, i32 0
  %19 = load i8** %sv_any60, align 8, !tbaa !0
  %xpv_pv61 = bitcast i8* %19 to i8**
  %20 = load i8** %xpv_pv61, align 8, !tbaa !0
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %17, i64 %conv12, i32 1, i1 false)
  %21 = load i8** %aptr53, align 8, !tbaa !0
  %add.ptr68 = getelementptr inbounds i8* %21, i64 %conv12
  store i8* %add.ptr68, i8** %aptr53, align 8, !tbaa !0
  br label %if.end82

if.else69:                                        ; preds = %if.then51
  tail call void @Perl_sv_free(%struct.sv* %call13) #7
  br label %return

if.else71:                                        ; preds = %if.else48
  %sv_any73 = getelementptr inbounds %struct.sv* %call13, i64 0, i32 0
  %22 = load i8** %sv_any73, align 8, !tbaa !0
  %xpv_pv74 = bitcast i8* %22 to i8**
  %23 = load i8** %xpv_pv74, align 8, !tbaa !0
  %call76 = tail call i64 @Perl_PerlIO_read(%struct._PerlIO** %16, i8* %23, i64 %conv12) #7
  %cmp78 = icmp eq i64 %call76, %conv12
  br i1 %cmp78, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.else71
  tail call void @Perl_sv_free(%struct.sv* %call13) #7
  br label %return

if.end82:                                         ; preds = %if.else71, %if.then59
  %sv_any84 = getelementptr inbounds %struct.sv* %call13, i64 0, i32 0
  %24 = load i8** %sv_any84, align 8, !tbaa !0
  %xpv_cur85 = getelementptr inbounds i8* %24, i64 8
  %25 = bitcast i8* %xpv_cur85 to i64*
  store i64 %conv12, i64* %25, align 8, !tbaa !4
  %xpv_pv87 = bitcast i8* %24 to i8**
  %26 = load i8** %xpv_pv87, align 8, !tbaa !0
  %add.ptr90 = getelementptr inbounds i8* %26, i64 %conv12
  store i8 0, i8* %add.ptr90, align 1, !tbaa !1
  %sv_flags92.pre = getelementptr inbounds %struct.sv* %call13, i64 0, i32 2
  br label %if.end91

if.end91:                                         ; preds = %if.end82, %cond.end
  %sv_flags92.pre-phi = phi i32* [ %sv_flags92.pre, %if.end82 ], [ %sv_flags, %cond.end ]
  %27 = load i32* %sv_flags92.pre-phi, align 4, !tbaa !3
  %and93 = and i32 %27, 1223753727
  %or = or i32 %and93, 67371008
  store i32 %or, i32* %sv_flags92.pre-phi, align 4, !tbaa !3
  %s_tainted = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 12
  %28 = load i32* %s_tainted, align 4, !tbaa !3
  %tobool95 = icmp ne i32 %28, 0
  %29 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool97 = icmp ne i8 %29, 0
  %or.cond = and i1 %tobool95, %tobool97
  %30 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool99 = icmp ne i8 %30, 0
  %or.cond107 = and i1 %or.cond, %tobool99
  br i1 %or.cond107, label %if.then102, label %return

if.then102:                                       ; preds = %if.end91
  tail call void @Perl_sv_taint(%struct.sv* %call13) #7
  br label %return

return:                                           ; preds = %if.end11, %if.end91, %if.then102, %if.end16, %if.else5, %if.then, %if.then80, %if.else69
  %retval.0 = phi %struct.sv* [ null, %if.then80 ], [ null, %if.else69 ], [ null, %if.then ], [ null, %if.else5 ], [ null, %if.end11 ], [ null, %if.end16 ], [ %call13, %if.then102 ], [ %call13, %if.end91 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_tied_array(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %sv_refcnt, align 4, !tbaa !3
  %call4 = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call4, null
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8 = icmp eq i8* %cname, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call11 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call12 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call11, %struct.hv* %call10) #7
  %sv_any = getelementptr inbounds %struct.sv* %call11, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call11) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.then9
  %call14 = tail call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool15 = icmp eq %struct.sv* %call14, null
  br i1 %tobool15, label %return, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 10) #7
  %sv_any19 = bitcast %struct.sv* %call to %struct.xpvav**
  %4 = load %struct.xpvav** %sv_any19, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %4, i64 0, i32 9
  %5 = load i8* %xav_flags, align 1, !tbaa !1
  %and = and i8 %5, -2
  store i8 %and, i8* %xav_flags, align 1, !tbaa !1
  tail call void @Perl_sv_magic(%struct.sv* %call, %struct.sv* %call14, i32 80, i8* null, i32 0) #7
  tail call void @Perl_sv_free(%struct.sv* %call14) #7
  br label %return

return:                                           ; preds = %entry, %if.end13, %if.end, %if.end17
  %retval.0 = phi %struct.sv* [ %call, %if.end17 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end13 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_tied_hash(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %sv_refcnt, align 4, !tbaa !3
  %call4 = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call4, null
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8 = icmp eq i8* %cname, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call11 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call12 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call11, %struct.hv* %call10) #7
  %sv_any = getelementptr inbounds %struct.sv* %call11, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call11) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.then9
  %call14 = tail call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool15 = icmp eq %struct.sv* %call14, null
  br i1 %tobool15, label %return, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 11) #7
  tail call void @Perl_sv_magic(%struct.sv* %call, %struct.sv* %call14, i32 80, i8* null, i32 0) #7
  tail call void @Perl_sv_free(%struct.sv* %call14) #7
  br label %return

return:                                           ; preds = %entry, %if.end13, %if.end, %if.end17
  %retval.0 = phi %struct.sv* [ %call, %if.end17 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end13 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_tied_scalar(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %sv_refcnt, align 4, !tbaa !3
  %call4 = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call4, null
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8 = icmp eq i8* %cname, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call11 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call12 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call11, %struct.hv* %call10) #7
  %sv_any = getelementptr inbounds %struct.sv* %call11, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call11) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.then9
  %call14 = tail call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool15 = icmp eq %struct.sv* %call14, null
  br i1 %tobool15, label %return, label %if.else

if.else:                                          ; preds = %if.end13
  %sv_flags = getelementptr inbounds %struct.sv* %call14, i64 0, i32 2
  %4 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %4, 255
  %cmp17 = icmp eq i32 %and, 0
  %.call14 = select i1 %cmp17, %struct.sv* null, %struct.sv* %call14
  %call22 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 7) #7
  tail call void @Perl_sv_magic(%struct.sv* %call, %struct.sv* %.call14, i32 113, i8* null, i32 0) #7
  %tobool23 = icmp eq %struct.sv* %.call14, null
  br i1 %tobool23, label %return, label %if.then24

if.then24:                                        ; preds = %if.else
  tail call void @Perl_sv_free(%struct.sv* %.call14) #7
  br label %return

return:                                           ; preds = %entry, %if.then24, %if.else, %if.end13, %if.end
  %retval.0 = phi %struct.sv* [ null, %entry ], [ null, %if.end ], [ null, %if.end13 ], [ %call, %if.else ], [ %call, %if.then24 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal noalias %struct.sv* @retrieve_other(%struct.stcxt* nocapture %cxt, i8* nocapture %cname) #1 {
entry:
  %ver_major = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 24
  %0 = load i32* %ver_major, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 2
  %ver_minor9.phi.trans.insert = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 25
  %.pre = load i32* %ver_minor9.phi.trans.insert, align 4, !tbaa !3
  br i1 %cmp, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %cmp1 = icmp eq i32 %.pre, 6
  br i1 %cmp1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %1 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp ne %struct._PerlIO** %1, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str34, i64 0, i64 0)
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([57 x i8]* @.str39, i64 0, i64 0), i8* %cond, i32 %0, i32 %.pre, i32 2, i32 6) #7
  br label %if.end

if.else:                                          ; preds = %entry, %land.lhs.true
  %2 = phi i32 [ 6, %land.lhs.true ], [ %.pre, %entry ]
  %s_dirty4 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty4, align 4, !tbaa !3
  %fio5 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %3 = load %struct._PerlIO*** %fio5, align 8, !tbaa !0
  %tobool6 = icmp ne %struct._PerlIO** %3, null
  %cond7 = select i1 %tobool6, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str34, i64 0, i64 0)
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([38 x i8]* @.str40, i64 0, i64 0), i8* %cond7, i32 %0, i32 %2) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %struct.sv* null
}

; Function Attrs: optsize
declare %struct.sv** @Perl_av_store(%struct.av*, i32, %struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_sv_magic(%struct.sv*, %struct.sv*, i32, i8*, i32) #2

; Function Attrs: optsize
declare i8* @Perl_sv_grow(%struct.sv*, i64) #2

; Function Attrs: optsize
declare void @Perl_sv_taint(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVnv(double) #2

; Function Attrs: optsize
declare void @Perl_hv_ksplit(%struct.hv*, i64) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_av_extend(%struct.av*, i32) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_array(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %len = alloca i32, align 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 4
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %storemerge.in = bitcast i8* %1 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %len, align 4
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end23

if.else18:                                        ; preds = %entry
  %3 = bitcast i32* %len to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %3, i64 4) #7
  %cmp20 = icmp eq i64 %call, 4
  br i1 %cmp20, label %if.end23, label %return

if.end23:                                         ; preds = %if.else18, %if.end
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %4 = load i32* %netorder, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %4, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  %5 = load i32* %len, align 4, !tbaa !3
  %6 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %5) #3, !srcloc !14
  store i32 %6, i32* %len, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.then25
  %call27 = call %struct.av* @Perl_newAV() #7
  %tobool28 = icmp eq %struct.av* %call27, null
  br i1 %tobool28, label %return, label %if.end30

if.end30:                                         ; preds = %if.end26
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %7 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %8 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %8 to i32
  %9 = bitcast %struct.av* %call27 to %struct.sv*
  store %struct.sv* %9, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %10 = getelementptr inbounds %struct.av* %call27, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !3
  %inc32 = add i32 %11, 1
  store i32 %inc32, i32* %10, align 4, !tbaa !3
  %call34 = call %struct.sv** @Perl_av_store(%struct.av* %7, i32 %conv, %struct.sv* %9) #7
  %cmp35 = icmp eq %struct.sv** %call34, null
  br i1 %cmp35, label %return, label %if.end38

if.end38:                                         ; preds = %if.end30
  %tobool39 = icmp eq i8* %cname, null
  br i1 %tobool39, label %if.end44, label %if.then40

if.then40:                                        ; preds = %if.end38
  %call41 = call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call42 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %9) #7
  %call43 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call42, %struct.hv* %call41) #7
  %sv_any = getelementptr inbounds %struct.sv* %call42, i64 0, i32 0
  %12 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %12 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call42) #7
  br label %if.end44

if.end44:                                         ; preds = %if.end38, %if.then40
  %13 = load i32* %len, align 4, !tbaa !3
  %tobool45 = icmp eq i32 %13, 0
  br i1 %tobool45, label %return, label %if.then46

if.then46:                                        ; preds = %if.end44
  call void @Perl_av_extend(%struct.av* %call27, i32 %13) #7
  %14 = load i32* %len, align 4, !tbaa !3
  %cmp4983 = icmp sgt i32 %14, 0
  br i1 %cmp4983, label %for.body, label %return

for.cond:                                         ; preds = %if.end54
  %15 = load i32* %len, align 4, !tbaa !3
  %cmp49 = icmp slt i32 %inc60, %15
  br i1 %cmp49, label %for.body, label %return

for.body:                                         ; preds = %if.then46, %for.cond
  %i.084 = phi i32 [ %inc60, %for.cond ], [ 0, %if.then46 ]
  %call51 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool52 = icmp eq %struct.sv* %call51, null
  br i1 %tobool52, label %return, label %if.end54

if.end54:                                         ; preds = %for.body
  %call55 = call %struct.sv** @Perl_av_store(%struct.av* %call27, i32 %i.084, %struct.sv* %call51) #7
  %cmp56 = icmp eq %struct.sv** %call55, null
  %inc60 = add nsw i32 %i.084, 1
  br i1 %cmp56, label %return, label %for.cond

return:                                           ; preds = %if.then46, %if.end54, %for.body, %for.cond, %if.end44, %if.end30, %if.end26, %if.else18, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else18 ], [ null, %if.end26 ], [ null, %if.end30 ], [ %9, %if.end44 ], [ %9, %if.then46 ], [ null, %if.end54 ], [ null, %for.body ], [ %9, %for.cond ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_hash(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %len = alloca i32, align 4
  %size = alloca i32, align 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %1, i64 4
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ugt i8* %add.ptr, %2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %if.then
  %storemerge.in = bitcast i8* %1 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %len, align 4
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end23

if.else18:                                        ; preds = %entry
  %3 = bitcast i32* %len to i8*
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %0, i8* %3, i64 4) #7
  %cmp20 = icmp eq i64 %call, 4
  br i1 %cmp20, label %if.end23, label %return

if.end23:                                         ; preds = %if.else18, %if.end
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %4 = load i32* %netorder, align 4, !tbaa !3
  %tobool24 = icmp eq i32 %4, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end23
  %5 = load i32* %len, align 4, !tbaa !3
  %6 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %5) #3, !srcloc !15
  store i32 %6, i32* %len, align 4, !tbaa !3
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.then25
  %call27 = call %struct.hv* @Perl_newHV() #7
  %tobool28 = icmp eq %struct.hv* %call27, null
  br i1 %tobool28, label %return, label %if.end30

if.end30:                                         ; preds = %if.end26
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %7 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %8 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %8 to i32
  %9 = bitcast %struct.hv* %call27 to %struct.sv*
  store %struct.sv* %9, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %10 = getelementptr inbounds %struct.hv* %call27, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !3
  %inc32 = add i32 %11, 1
  store i32 %inc32, i32* %10, align 4, !tbaa !3
  %call34 = call %struct.sv** @Perl_av_store(%struct.av* %7, i32 %conv, %struct.sv* %9) #7
  %cmp35 = icmp eq %struct.sv** %call34, null
  br i1 %cmp35, label %return, label %if.end38

if.end38:                                         ; preds = %if.end30
  %tobool39 = icmp eq i8* %cname, null
  br i1 %tobool39, label %if.end44, label %if.then40

if.then40:                                        ; preds = %if.end38
  %call41 = call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call42 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %9) #7
  %call43 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call42, %struct.hv* %call41) #7
  %sv_any = getelementptr inbounds %struct.sv* %call42, i64 0, i32 0
  %12 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %12 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call42) #7
  br label %if.end44

if.end44:                                         ; preds = %if.end38, %if.then40
  %13 = load i32* %len, align 4, !tbaa !3
  %cmp45 = icmp eq i32 %13, 0
  br i1 %cmp45, label %return, label %if.end48

if.end48:                                         ; preds = %if.end44
  %conv49 = sext i32 %13 to i64
  call void @Perl_hv_ksplit(%struct.hv* %call27, i64 %conv49) #7
  %14 = bitcast i32* %size to i8*
  %aptr60 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %arena141 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 20, i32 0
  %15 = load i32* %len, align 4, !tbaa !3
  %cmp50205 = icmp sgt i32 %15, 0
  br i1 %cmp50205, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end48
  %aend63 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 20, i32 1
  br label %for.body

for.cond:                                         ; preds = %if.end150
  %16 = load i32* %len, align 4, !tbaa !3
  %cmp50 = icmp slt i32 %inc160, %16
  br i1 %cmp50, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %i.0206 = phi i32 [ 0, %for.body.lr.ph ], [ %inc160, %for.cond ]
  %call52 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool53 = icmp eq %struct.sv* %call52, null
  br i1 %tobool53, label %return, label %if.end55

if.end55:                                         ; preds = %for.body
  %17 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool57 = icmp eq %struct._PerlIO** %17, null
  br i1 %tobool57, label %if.then58, label %if.else86

if.then58:                                        ; preds = %if.end55
  %18 = load i8** %aptr60, align 8, !tbaa !0
  %add.ptr61 = getelementptr inbounds i8* %18, i64 4
  %19 = load i8** %aend63, align 8, !tbaa !0
  %cmp64 = icmp ugt i8* %add.ptr61, %19
  br i1 %cmp64, label %return, label %if.end80

if.end80:                                         ; preds = %if.then58
  %storemerge204.in = bitcast i8* %18 to i32*
  %storemerge204 = load i32* %storemerge204.in, align 1
  store i32 %storemerge204, i32* %size, align 4
  store i8* %add.ptr61, i8** %aptr60, align 8, !tbaa !0
  br label %if.end93

if.else86:                                        ; preds = %if.end55
  %call88 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %17, i8* %14, i64 4) #7
  %cmp89 = icmp eq i64 %call88, 4
  br i1 %cmp89, label %if.end93, label %return

if.end93:                                         ; preds = %if.else86, %if.end80
  %20 = load i32* %netorder, align 4, !tbaa !3
  %tobool95 = icmp eq i32 %20, 0
  %.pre = load i32* %size, align 4, !tbaa !3
  br i1 %tobool95, label %if.end99, label %if.then96

if.then96:                                        ; preds = %if.end93
  %21 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre) #3, !srcloc !16
  store i32 %21, i32* %size, align 4, !tbaa !3
  br label %if.end99

if.end99:                                         ; preds = %if.end93, %if.then96
  %22 = phi i32 [ %21, %if.then96 ], [ %.pre, %if.end93 ]
  %conv100 = sext i32 %22 to i64
  %23 = load i64* %asiz, align 8, !tbaa !4
  %cmp101 = icmp ult i64 %conv100, %23
  br i1 %cmp101, label %if.end113, label %if.then103

if.then103:                                       ; preds = %if.end99
  %24 = load i8** %arena141, align 8, !tbaa !0
  %add = add i64 %conv100, 1
  %call106 = call i8* @Perl_safesysrealloc(i8* %24, i64 %add) #7
  store i8* %call106, i8** %arena141, align 8, !tbaa !0
  %25 = load i32* %size, align 4, !tbaa !3
  %conv109 = sext i32 %25 to i64
  %add110 = add i64 %conv109, 1
  store i64 %add110, i64* %asiz, align 8, !tbaa !4
  br label %if.end113

if.end113:                                        ; preds = %if.end99, %if.then103
  %26 = phi i32 [ %22, %if.end99 ], [ %25, %if.then103 ]
  %tobool114 = icmp eq i32 %26, 0
  br i1 %tobool114, label %if.end150, label %if.then115

if.then115:                                       ; preds = %if.end113
  %27 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool117 = icmp eq %struct._PerlIO** %27, null
  br i1 %tobool117, label %if.then118, label %if.else138

if.then118:                                       ; preds = %if.then115
  %28 = load i8** %aptr60, align 8, !tbaa !0
  %idx.ext = sext i32 %26 to i64
  %add.ptr121 = getelementptr inbounds i8* %28, i64 %idx.ext
  %29 = load i8** %aend63, align 8, !tbaa !0
  %cmp124 = icmp ugt i8* %add.ptr121, %29
  br i1 %cmp124, label %return, label %if.then126

if.then126:                                       ; preds = %if.then118
  %30 = load i8** %arena141, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %28, i64 %idx.ext, i32 1, i1 false)
  %31 = load i32* %size, align 4, !tbaa !3
  %32 = load i8** %aptr60, align 8, !tbaa !0
  %idx.ext134 = sext i32 %31 to i64
  %add.ptr135 = getelementptr inbounds i8* %32, i64 %idx.ext134
  store i8* %add.ptr135, i8** %aptr60, align 8, !tbaa !0
  br label %if.end150

if.else138:                                       ; preds = %if.then115
  %33 = load i8** %arena141, align 8, !tbaa !0
  %conv142 = sext i32 %26 to i64
  %call143 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %27, i8* %33, i64 %conv142) #7
  %34 = load i32* %size, align 4, !tbaa !3
  %conv144 = sext i32 %34 to i64
  %cmp145 = icmp eq i64 %call143, %conv144
  br i1 %cmp145, label %if.end150, label %return

if.end150:                                        ; preds = %if.else138, %if.end113, %if.then126
  %35 = phi i32 [ %31, %if.then126 ], [ 0, %if.end113 ], [ %34, %if.else138 ]
  %idxprom = sext i32 %35 to i64
  %36 = load i8** %arena141, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %36, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %37 = load i8** %arena141, align 8, !tbaa !0
  %38 = load i32* %size, align 4, !tbaa !3
  %call155 = call %struct.sv** @Perl_hv_store(%struct.hv* %call27, i8* %37, i32 %38, %struct.sv* %call52, i32 0) #7
  %cmp156 = icmp eq %struct.sv** %call155, null
  %inc160 = add nsw i32 %i.0206, 1
  br i1 %cmp156, label %return, label %for.cond

return:                                           ; preds = %if.end48, %if.end150, %if.else138, %if.then118, %if.else86, %if.then58, %for.body, %for.cond, %if.end44, %if.end30, %if.end26, %if.else18, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else18 ], [ null, %if.end26 ], [ null, %if.end30 ], [ %9, %if.end44 ], [ %9, %if.end48 ], [ null, %if.end150 ], [ null, %if.else138 ], [ null, %if.then118 ], [ null, %if.else86 ], [ null, %if.then58 ], [ null, %for.body ], [ %9, %for.cond ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_sv_undef(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %where_is_undef = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 5
  %0 = load i64* %where_is_undef, align 8, !tbaa !4
  %cmp = icmp eq i64 %0, -1
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  store i64 %1, i64* %where_is_undef, align 8, !tbaa !4
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %2 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum4 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum4, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  %call = tail call %struct.sv** @Perl_av_store(%struct.av* %2, i32 %conv, %struct.sv* @PL_sv_undef) #7
  %cmp5 = icmp eq %struct.sv** %call, null
  br i1 %cmp5, label %return, label %if.end8

if.end8:                                          ; preds = %if.end3
  %tobool9 = icmp eq i8* %cname, null
  br i1 %tobool9, label %return, label %if.then10

if.then10:                                        ; preds = %if.end8
  %call11 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call12 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* @PL_sv_undef) #7
  %call13 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call12, %struct.hv* %call11) #7
  %sv_any = getelementptr inbounds %struct.sv* %call12, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call12) #7
  br label %return

return:                                           ; preds = %if.then10, %if.end8, %if.end3
  %retval.0 = phi %struct.sv* [ null, %if.end3 ], [ @PL_sv_undef, %if.end8 ], [ @PL_sv_undef, %if.then10 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_sv_yes(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  %call = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* @PL_sv_yes) #7
  %cmp = icmp eq %struct.sv** %call, null
  br i1 %cmp, label %return, label %if.end3

if.end3:                                          ; preds = %entry
  %tobool4 = icmp eq i8* %cname, null
  br i1 %tobool4, label %return, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call7 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* @PL_sv_yes) #7
  %call8 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call7, %struct.hv* %call6) #7
  %sv_any = getelementptr inbounds %struct.sv* %call7, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %2 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call7) #7
  br label %return

return:                                           ; preds = %if.then5, %if.end3, %entry
  %retval.0 = phi %struct.sv* [ null, %entry ], [ @PL_sv_yes, %if.end3 ], [ @PL_sv_yes, %if.then5 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_sv_no(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  %call = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* @PL_sv_no) #7
  %cmp = icmp eq %struct.sv** %call, null
  br i1 %cmp, label %return, label %if.end3

if.end3:                                          ; preds = %entry
  %tobool4 = icmp eq i8* %cname, null
  br i1 %tobool4, label %return, label %if.then5

if.then5:                                         ; preds = %if.end3
  %call6 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call7 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* @PL_sv_no) #7
  %call8 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call7, %struct.hv* %call6) #7
  %sv_any = getelementptr inbounds %struct.sv* %call7, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %2 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call7) #7
  br label %return

return:                                           ; preds = %if.then5, %if.end3, %entry
  %retval.0 = phi %struct.sv* [ null, %entry ], [ @PL_sv_no, %if.end3 ], [ @PL_sv_no, %if.then5 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_blessed(%struct.stcxt* %cxt, i8* nocapture %cname) #1 {
entry:
  %len = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  %0 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %0) #3
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %1 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %1, null
  br i1 %tobool, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %2 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %3 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %2, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  %4 = load i8* %2, align 1, !tbaa !1
  %conv = zext i8 %4 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !3
  br label %if.end11

if.else5:                                         ; preds = %entry
  %call = call i32 @PerlIO_getc(%struct._PerlIO** %1) #7
  store i32 %call, i32* %len, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %call, -1
  br i1 %cmp7, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.else5, %if.then2
  %5 = phi i32 [ %call, %if.else5 ], [ %conv, %if.then2 ]
  %and = and i32 %5, 128
  %tobool12 = icmp eq i32 %and, 0
  br i1 %tobool12, label %if.end56, label %if.then13

if.then13:                                        ; preds = %if.end11
  %6 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool15 = icmp eq %struct._PerlIO** %6, null
  br i1 %tobool15, label %if.then16, label %if.else43

if.then16:                                        ; preds = %if.then13
  %aptr18 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %7 = load i8** %aptr18, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %7, i64 4
  %aend20 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %8 = load i8** %aend20, align 8, !tbaa !0
  %cmp21 = icmp ugt i8* %add.ptr, %8
  br i1 %cmp21, label %cleanup, label %if.end37

if.end37:                                         ; preds = %if.then16
  %storemerge.in = bitcast i8* %7 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %len, align 4
  store i8* %add.ptr, i8** %aptr18, align 8, !tbaa !0
  br label %if.end50

if.else43:                                        ; preds = %if.then13
  %9 = bitcast i32* %len to i8*
  %call45 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %6, i8* %9, i64 4) #7
  %cmp46 = icmp eq i64 %call45, 4
  br i1 %cmp46, label %if.end50, label %cleanup

if.end50:                                         ; preds = %if.else43, %if.end37
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %10 = load i32* %netorder, align 4, !tbaa !3
  %tobool51 = icmp eq i32 %10, 0
  %.pre = load i32* %len, align 4, !tbaa !3
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %if.end50
  %11 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre) #3, !srcloc !17
  store i32 %11, i32* %len, align 4, !tbaa !3
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %if.then52
  %12 = phi i32 [ %11, %if.then52 ], [ %.pre, %if.end50 ]
  %add = add nsw i32 %12, 1
  %conv54 = sext i32 %add to i64
  %call55 = call i8* @Perl_safesysmalloc(i64 %conv54) #7
  br label %if.end56

if.end56:                                         ; preds = %if.end11, %if.end53
  %class.0 = phi i8* [ %call55, %if.end53 ], [ %0, %if.end11 ]
  %13 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool58 = icmp eq %struct._PerlIO** %13, null
  br i1 %tobool58, label %if.then59, label %if.else77

if.then59:                                        ; preds = %if.end56
  %aptr61 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %14 = load i8** %aptr61, align 8, !tbaa !0
  %15 = load i32* %len, align 4, !tbaa !3
  %idx.ext = sext i32 %15 to i64
  %add.ptr62 = getelementptr inbounds i8* %14, i64 %idx.ext
  %aend64 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %16 = load i8** %aend64, align 8, !tbaa !0
  %cmp65 = icmp ugt i8* %add.ptr62, %16
  br i1 %cmp65, label %cleanup, label %if.then67

if.then67:                                        ; preds = %if.then59
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %class.0, i8* %14, i64 %idx.ext, i32 1, i1 false)
  %17 = load i32* %len, align 4, !tbaa !3
  %18 = load i8** %aptr61, align 8, !tbaa !0
  %idx.ext73 = sext i32 %17 to i64
  %add.ptr74 = getelementptr inbounds i8* %18, i64 %idx.ext73
  store i8* %add.ptr74, i8** %aptr61, align 8, !tbaa !0
  br label %if.end86

if.else77:                                        ; preds = %if.end56
  %19 = load i32* %len, align 4, !tbaa !3
  %conv79 = sext i32 %19 to i64
  %call80 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %13, i8* %class.0, i64 %conv79) #7
  %20 = load i32* %len, align 4, !tbaa !3
  %conv81 = sext i32 %20 to i64
  %cmp82 = icmp eq i64 %call80, %conv81
  br i1 %cmp82, label %if.end86, label %cleanup

if.end86:                                         ; preds = %if.else77, %if.then67
  %21 = phi i32 [ %20, %if.else77 ], [ %17, %if.then67 ]
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds i8* %class.0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %aclass = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 7
  %22 = load %struct.av** %aclass, align 8, !tbaa !0
  %classnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 10
  %23 = load i64* %classnum, align 8, !tbaa !4
  %inc = add nsw i64 %23, 1
  store i64 %inc, i64* %classnum, align 8, !tbaa !4
  %conv87 = trunc i64 %23 to i32
  %24 = load i32* %len, align 4, !tbaa !3
  %conv88 = sext i32 %24 to i64
  %call89 = call %struct.sv* @Perl_newSVpvn(i8* %class.0, i64 %conv88) #7
  %call90 = call %struct.sv** @Perl_av_store(%struct.av* %22, i32 %conv87, %struct.sv* %call89) #7
  %tobool91 = icmp eq %struct.sv** %call90, null
  br i1 %tobool91, label %cleanup, label %if.end93

if.end93:                                         ; preds = %if.end86
  %call94 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* %class.0) #6
  %cmp96 = icmp eq i8* %class.0, %0
  br i1 %cmp96, label %cleanup, label %if.then98

if.then98:                                        ; preds = %if.end93
  call void @Perl_safesysfree(i8* %class.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end93, %if.end86, %if.else77, %if.then59, %if.else43, %if.then16, %if.else5, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else5 ], [ null, %if.then16 ], [ null, %if.else43 ], [ null, %if.then59 ], [ null, %if.else77 ], [ null, %if.end86 ], [ %call94, %if.end93 ], [ %call94, %if.then98 ]
  call void @llvm.lifetime.end(i64 128, i8* %0) #3
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_idx_blessed(%struct.stcxt* %cxt, i8* nocapture %cname) #1 {
entry:
  %idx = alloca i32, align 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then2, label %return

if.then2:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  %3 = load i8* %1, align 1, !tbaa !1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %idx, align 4, !tbaa !3
  br label %if.end11

if.else5:                                         ; preds = %entry
  %call = call i32 @PerlIO_getc(%struct._PerlIO** %0) #7
  store i32 %call, i32* %idx, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %call, -1
  br i1 %cmp7, label %return, label %if.end11

if.end11:                                         ; preds = %if.else5, %if.then2
  %4 = phi i32 [ %call, %if.else5 ], [ %conv, %if.then2 ]
  %and = and i32 %4, 128
  %tobool12 = icmp eq i32 %and, 0
  br i1 %tobool12, label %if.end54, label %if.then13

if.then13:                                        ; preds = %if.end11
  %5 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool15 = icmp eq %struct._PerlIO** %5, null
  br i1 %tobool15, label %if.then16, label %if.else43

if.then16:                                        ; preds = %if.then13
  %aptr18 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %6 = load i8** %aptr18, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %6, i64 4
  %aend20 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %7 = load i8** %aend20, align 8, !tbaa !0
  %cmp21 = icmp ugt i8* %add.ptr, %7
  br i1 %cmp21, label %return, label %if.end37

if.end37:                                         ; preds = %if.then16
  %storemerge.in = bitcast i8* %6 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %idx, align 4
  store i8* %add.ptr, i8** %aptr18, align 8, !tbaa !0
  br label %if.end50

if.else43:                                        ; preds = %if.then13
  %8 = bitcast i32* %idx to i8*
  %call45 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %5, i8* %8, i64 4) #7
  %cmp46 = icmp eq i64 %call45, 4
  br i1 %cmp46, label %if.end50, label %return

if.end50:                                         ; preds = %if.else43, %if.end37
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %9 = load i32* %netorder, align 4, !tbaa !3
  %tobool51 = icmp eq i32 %9, 0
  %.pre = load i32* %idx, align 4, !tbaa !3
  br i1 %tobool51, label %if.end54, label %if.then52

if.then52:                                        ; preds = %if.end50
  %10 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre) #3, !srcloc !18
  store i32 %10, i32* %idx, align 4, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.end50, %if.end11, %if.then52
  %11 = phi i32 [ %4, %if.end11 ], [ %10, %if.then52 ], [ %.pre, %if.end50 ]
  %aclass = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 7
  %12 = load %struct.av** %aclass, align 8, !tbaa !0
  %call55 = call %struct.sv** @Perl_av_fetch(%struct.av* %12, i32 %11, i32 0) #7
  %tobool56 = icmp eq %struct.sv** %call55, null
  br i1 %tobool56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  %13 = load i32* %idx, align 4, !tbaa !3
  %conv58 = sext i32 %13 to i64
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str60, i64 0, i64 0), i64 %conv58) #7
  br label %if.end59

if.end59:                                         ; preds = %if.end54, %if.then57
  %14 = load %struct.sv** %call55, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %15 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %15 to i8**
  %16 = load i8** %xpv_pv, align 8, !tbaa !0
  %call60 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* %16) #6
  br label %return

return:                                           ; preds = %if.else43, %if.then16, %if.else5, %if.then, %if.end59
  %retval.0 = phi %struct.sv* [ %call60, %if.end59 ], [ null, %if.then ], [ null, %if.else5 ], [ null, %if.then16 ], [ null, %if.else43 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_hook(%struct.stcxt* %cxt, i8* nocapture %cname) #1 {
entry:
  %len = alloca i32, align 4
  %buf = alloca [128 x i8], align 16
  %len2 = alloca i32, align 4
  %len3 = alloca i32, align 4
  %idx = alloca i32, align 4
  %tag = alloca i32, align 4
  %xsv = alloca %struct.sv*, align 8
  %0 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %0) #3
  store i32 0, i32* %len3, align 4, !tbaa !3
  %optype = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 1
  %1 = load i32* %optype, align 4, !tbaa !3
  %and = and i32 %1, 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %2 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %2, null
  br i1 %tobool, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %3 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %4 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %3, %4
  br i1 %cmp, label %if.then2, label %cleanup

if.then2:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %3, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  %5 = load i8* %3, align 1, !tbaa !1
  %conv = zext i8 %5 to i32
  br label %if.end11

if.else5:                                         ; preds = %entry
  %call = call i32 @PerlIO_getc(%struct._PerlIO** %2) #7
  %cmp7 = icmp eq i32 %call, -1
  br i1 %cmp7, label %cleanup, label %if.end11

if.end11:                                         ; preds = %if.else5, %if.then2
  %flags.0 = phi i32 [ %call, %if.else5 ], [ %conv, %if.then2 ]
  %and12 = and i32 %flags.0, 3
  switch i32 %and12, label %sw.default50 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb16
    i32 3, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end11
  %call13 = call %struct.sv* @Perl_newSV(i64 0) #7
  br label %sw.epilog52

sw.bb14:                                          ; preds = %if.end11
  %call15 = call %struct.av* @Perl_newAV() #7
  %6 = bitcast %struct.av* %call15 to %struct.sv*
  br label %sw.epilog52

sw.bb16:                                          ; preds = %if.end11
  %call17 = call %struct.hv* @Perl_newHV() #7
  %7 = bitcast %struct.hv* %call17 to %struct.sv*
  br label %sw.epilog52

sw.bb18:                                          ; preds = %if.end11
  %8 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool20 = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool20, label %if.then21, label %if.else35

if.then21:                                        ; preds = %sw.bb18
  %aptr23 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %9 = load i8** %aptr23, align 8, !tbaa !0
  %aend25 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %10 = load i8** %aend25, align 8, !tbaa !0
  %cmp26 = icmp ult i8* %9, %10
  br i1 %cmp26, label %if.then28, label %cleanup

if.then28:                                        ; preds = %if.then21
  %incdec.ptr31 = getelementptr inbounds i8* %9, i64 1
  store i8* %incdec.ptr31, i8** %aptr23, align 8, !tbaa !0
  %11 = load i8* %9, align 1, !tbaa !1
  %conv32 = zext i8 %11 to i32
  br label %if.end42

if.else35:                                        ; preds = %sw.bb18
  %call37 = call i32 @PerlIO_getc(%struct._PerlIO** %8) #7
  %cmp38 = icmp eq i32 %call37, -1
  br i1 %cmp38, label %cleanup, label %if.end42

if.end42:                                         ; preds = %if.else35, %if.then28
  %extra_type.0 = phi i32 [ %call37, %if.else35 ], [ %conv32, %if.then28 ]
  switch i32 %extra_type.0, label %sw.default [
    i32 4, label %sw.bb43
    i32 5, label %sw.bb45
    i32 6, label %sw.bb47
  ]

sw.bb43:                                          ; preds = %if.end42
  %call44 = call %struct.sv* @Perl_newSV(i64 0) #7
  br label %sw.epilog52

sw.bb45:                                          ; preds = %if.end42
  %call46 = call %struct.av* @Perl_newAV() #7
  %12 = bitcast %struct.av* %call46 to %struct.sv*
  br label %sw.epilog52

sw.bb47:                                          ; preds = %if.end42
  %call48 = call %struct.hv* @Perl_newHV() #7
  %13 = bitcast %struct.hv* %call48 to %struct.sv*
  br label %sw.epilog52

sw.default:                                       ; preds = %if.end42
  %call49 = call %struct.sv* @retrieve_other(%struct.stcxt* %cxt, i8* null) #6
  br label %cleanup

sw.default50:                                     ; preds = %if.end11
  %call51 = call %struct.sv* @retrieve_other(%struct.stcxt* %cxt, i8* null) #6
  br label %cleanup

sw.epilog52:                                      ; preds = %sw.bb43, %sw.bb45, %sw.bb47, %sw.bb16, %sw.bb14, %sw.bb
  %extra_type.1 = phi i32 [ 6, %sw.bb47 ], [ 5, %sw.bb45 ], [ 4, %sw.bb43 ], [ 0, %sw.bb16 ], [ 0, %sw.bb14 ], [ 0, %sw.bb ]
  %mtype.0 = phi i32 [ 80, %sw.bb47 ], [ 80, %sw.bb45 ], [ 113, %sw.bb43 ], [ 0, %sw.bb16 ], [ 0, %sw.bb14 ], [ 0, %sw.bb ]
  %sv.0 = phi %struct.sv* [ %13, %sw.bb47 ], [ %12, %sw.bb45 ], [ %call44, %sw.bb43 ], [ %7, %sw.bb16 ], [ %6, %sw.bb14 ], [ %call13, %sw.bb ]
  %tobool53 = icmp eq %struct.sv* %sv.0, null
  br i1 %tobool53, label %cleanup, label %if.end55

if.end55:                                         ; preds = %sw.epilog52
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %14 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %15 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %15, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv56 = trunc i64 %15 to i32
  store %struct.sv* %sv.0, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 1
  %16 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc58 = add i32 %16, 1
  store i32 %inc58, i32* %sv_refcnt, align 4, !tbaa !3
  %call60 = call %struct.sv** @Perl_av_store(%struct.av* %14, i32 %conv56, %struct.sv* %sv.0) #7
  %cmp61 = icmp eq %struct.sv** %call60, null
  br i1 %cmp61, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end55
  %and65822 = and i32 %flags.0, 64
  %tobool66823 = icmp eq i32 %and65822, 0
  br i1 %tobool66823, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %aptr75 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend77 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %call67 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool68 = icmp eq %struct.sv* %call67, null
  br i1 %tobool68, label %cleanup, label %if.end70

if.end70:                                         ; preds = %while.body
  call void @Perl_sv_free(%struct.sv* %call67) #7
  %17 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool72 = icmp eq %struct._PerlIO** %17, null
  br i1 %tobool72, label %if.then73, label %if.else87

if.then73:                                        ; preds = %if.end70
  %18 = load i8** %aptr75, align 8, !tbaa !0
  %19 = load i8** %aend77, align 8, !tbaa !0
  %cmp78 = icmp ult i8* %18, %19
  br i1 %cmp78, label %if.then80, label %cleanup

if.then80:                                        ; preds = %if.then73
  %incdec.ptr83 = getelementptr inbounds i8* %18, i64 1
  store i8* %incdec.ptr83, i8** %aptr75, align 8, !tbaa !0
  %20 = load i8* %18, align 1, !tbaa !1
  %conv84 = zext i8 %20 to i32
  br label %while.cond.backedge

if.else87:                                        ; preds = %if.end70
  %call89 = call i32 @PerlIO_getc(%struct._PerlIO** %17) #7
  %cmp90 = icmp eq i32 %call89, -1
  br i1 %cmp90, label %cleanup, label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else87, %if.then80
  %flags.1.be = phi i32 [ %call89, %if.else87 ], [ %conv84, %if.then80 ]
  %and65 = and i32 %flags.1.be, 64
  %tobool66 = icmp eq i32 %and65, 0
  br i1 %tobool66, label %while.end, label %while.body

while.end:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %flags.1.lcssa = phi i32 [ %flags.0, %while.cond.preheader ], [ %flags.1.be, %while.cond.backedge ]
  %and95 = and i32 %flags.1.lcssa, 32
  %tobool96 = icmp ne i32 %and95, 0
  %and98 = and i32 %flags.1.lcssa, 4
  %tobool99 = icmp ne i32 %and98, 0
  %21 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool102 = icmp ne %struct._PerlIO** %21, null
  br i1 %tobool96, label %if.then97, label %if.else172

if.then97:                                        ; preds = %while.end
  br i1 %tobool99, label %if.then100, label %if.else141

if.then100:                                       ; preds = %if.then97
  br i1 %tobool102, label %if.else130, label %if.then103

if.then103:                                       ; preds = %if.then100
  %aptr105 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %22 = load i8** %aptr105, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %22, i64 4
  %aend107 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %23 = load i8** %aend107, align 8, !tbaa !0
  %cmp108 = icmp ugt i8* %add.ptr, %23
  br i1 %cmp108, label %cleanup, label %if.end124

if.end124:                                        ; preds = %if.then103
  %storemerge808.in = bitcast i8* %22 to i32*
  %storemerge808 = load i32* %storemerge808.in, align 1
  store i32 %storemerge808, i32* %idx, align 4
  store i8* %add.ptr, i8** %aptr105, align 8, !tbaa !0
  br label %if.end137

if.else130:                                       ; preds = %if.then100
  %24 = bitcast i32* %idx to i8*
  %call132 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %21, i8* %24, i64 4) #7
  %cmp133 = icmp eq i64 %call132, 4
  br i1 %cmp133, label %if.end137, label %cleanup

if.end137:                                        ; preds = %if.else130, %if.end124
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %25 = load i32* %netorder, align 4, !tbaa !3
  %tobool138 = icmp eq i32 %25, 0
  %.pre = load i32* %idx, align 4, !tbaa !3
  br i1 %tobool138, label %if.end166, label %if.then139

if.then139:                                       ; preds = %if.end137
  %26 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre) #3, !srcloc !19
  store i32 %26, i32* %idx, align 4, !tbaa !3
  br label %if.end166

if.else141:                                       ; preds = %if.then97
  br i1 %tobool102, label %if.else158, label %if.then144

if.then144:                                       ; preds = %if.else141
  %aptr146 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %27 = load i8** %aptr146, align 8, !tbaa !0
  %aend148 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %28 = load i8** %aend148, align 8, !tbaa !0
  %cmp149 = icmp ult i8* %27, %28
  br i1 %cmp149, label %if.then151, label %cleanup

if.then151:                                       ; preds = %if.then144
  %incdec.ptr154 = getelementptr inbounds i8* %27, i64 1
  store i8* %incdec.ptr154, i8** %aptr146, align 8, !tbaa !0
  %29 = load i8* %27, align 1, !tbaa !1
  %conv155 = zext i8 %29 to i32
  store i32 %conv155, i32* %idx, align 4, !tbaa !3
  br label %if.end166

if.else158:                                       ; preds = %if.else141
  %call160 = call i32 @PerlIO_getc(%struct._PerlIO** %21) #7
  store i32 %call160, i32* %idx, align 4, !tbaa !3
  %cmp161 = icmp eq i32 %call160, -1
  br i1 %cmp161, label %cleanup, label %if.end166

if.end166:                                        ; preds = %if.end137, %if.then151, %if.else158, %if.then139
  %30 = phi i32 [ %conv155, %if.then151 ], [ %call160, %if.else158 ], [ %26, %if.then139 ], [ %.pre, %if.end137 ]
  %aclass = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 7
  %31 = load %struct.av** %aclass, align 8, !tbaa !0
  %call167 = call %struct.sv** @Perl_av_fetch(%struct.av* %31, i32 %30, i32 0) #7
  %tobool168 = icmp eq %struct.sv** %call167, null
  br i1 %tobool168, label %if.then169, label %if.end171

if.then169:                                       ; preds = %if.end166
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  %32 = load i32* %idx, align 4, !tbaa !3
  %conv170 = sext i32 %32 to i64
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str60, i64 0, i64 0), i64 %conv170) #7
  br label %if.end171

if.end171:                                        ; preds = %if.end166, %if.then169
  %33 = load %struct.sv** %call167, align 8, !tbaa !0
  %sv_any = getelementptr inbounds %struct.sv* %33, i64 0, i32 0
  %34 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %34 to i8**
  %35 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %if.end291

if.else172:                                       ; preds = %while.end
  br i1 %tobool99, label %if.then175, label %if.else220

if.then175:                                       ; preds = %if.else172
  br i1 %tobool102, label %if.else206, label %if.then178

if.then178:                                       ; preds = %if.then175
  %aptr180 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %36 = load i8** %aptr180, align 8, !tbaa !0
  %add.ptr181 = getelementptr inbounds i8* %36, i64 4
  %aend183 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %37 = load i8** %aend183, align 8, !tbaa !0
  %cmp184 = icmp ugt i8* %add.ptr181, %37
  br i1 %cmp184, label %cleanup, label %if.end200

if.end200:                                        ; preds = %if.then178
  %storemerge807.in = bitcast i8* %36 to i32*
  %storemerge807 = load i32* %storemerge807.in, align 1
  store i32 %storemerge807, i32* %len, align 4
  store i8* %add.ptr181, i8** %aptr180, align 8, !tbaa !0
  br label %if.end213

if.else206:                                       ; preds = %if.then175
  %38 = bitcast i32* %len to i8*
  %call208 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %21, i8* %38, i64 4) #7
  %cmp209 = icmp eq i64 %call208, 4
  br i1 %cmp209, label %if.else206.if.end213_crit_edge, label %cleanup

if.else206.if.end213_crit_edge:                   ; preds = %if.else206
  %.pr.pre = load i32* %len, align 4, !tbaa !3
  br label %if.end213

if.end213:                                        ; preds = %if.else206.if.end213_crit_edge, %if.end200
  %.pr = phi i32 [ %.pr.pre, %if.else206.if.end213_crit_edge ], [ %storemerge807, %if.end200 ]
  %netorder214 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %39 = load i32* %netorder214, align 4, !tbaa !3
  %tobool215 = icmp eq i32 %39, 0
  br i1 %tobool215, label %if.end245, label %if.then216

if.then216:                                       ; preds = %if.end213
  %40 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pr) #3, !srcloc !20
  store i32 %40, i32* %len, align 4, !tbaa !3
  br label %if.end245

if.else220:                                       ; preds = %if.else172
  br i1 %tobool102, label %if.else237, label %if.then223

if.then223:                                       ; preds = %if.else220
  %aptr225 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %41 = load i8** %aptr225, align 8, !tbaa !0
  %aend227 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %42 = load i8** %aend227, align 8, !tbaa !0
  %cmp228 = icmp ult i8* %41, %42
  br i1 %cmp228, label %if.then230, label %cleanup

if.then230:                                       ; preds = %if.then223
  %incdec.ptr233 = getelementptr inbounds i8* %41, i64 1
  store i8* %incdec.ptr233, i8** %aptr225, align 8, !tbaa !0
  %43 = load i8* %41, align 1, !tbaa !1
  %conv234 = zext i8 %43 to i32
  store i32 %conv234, i32* %len, align 4, !tbaa !3
  br label %if.end245

if.else237:                                       ; preds = %if.else220
  %call239 = call i32 @PerlIO_getc(%struct._PerlIO** %21) #7
  store i32 %call239, i32* %len, align 4, !tbaa !3
  %cmp240 = icmp eq i32 %call239, -1
  br i1 %cmp240, label %cleanup, label %if.end245

if.end245:                                        ; preds = %if.end213, %if.then230, %if.else237, %if.then216
  %44 = phi i32 [ %conv234, %if.then230 ], [ %call239, %if.else237 ], [ %40, %if.then216 ], [ %.pr, %if.end213 ]
  %cmp246 = icmp sgt i32 %44, 127
  br i1 %cmp246, label %if.then248, label %if.end251

if.then248:                                       ; preds = %if.end245
  %add = add nsw i32 %44, 1
  %conv249 = sext i32 %add to i64
  %call250 = call i8* @Perl_safesysmalloc(i64 %conv249) #7
  br label %if.end251

if.end251:                                        ; preds = %if.end245, %if.then248
  %class.0 = phi i8* [ %call250, %if.then248 ], [ %0, %if.end245 ]
  %45 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool253 = icmp eq %struct._PerlIO** %45, null
  br i1 %tobool253, label %if.then254, label %if.else272

if.then254:                                       ; preds = %if.end251
  %aptr256 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %46 = load i8** %aptr256, align 8, !tbaa !0
  %47 = load i32* %len, align 4, !tbaa !3
  %idx.ext = sext i32 %47 to i64
  %add.ptr257 = getelementptr inbounds i8* %46, i64 %idx.ext
  %aend259 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %48 = load i8** %aend259, align 8, !tbaa !0
  %cmp260 = icmp ugt i8* %add.ptr257, %48
  br i1 %cmp260, label %cleanup, label %if.then262

if.then262:                                       ; preds = %if.then254
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %class.0, i8* %46, i64 %idx.ext, i32 1, i1 false)
  %49 = load i32* %len, align 4, !tbaa !3
  %50 = load i8** %aptr256, align 8, !tbaa !0
  %idx.ext268 = sext i32 %49 to i64
  %add.ptr269 = getelementptr inbounds i8* %50, i64 %idx.ext268
  store i8* %add.ptr269, i8** %aptr256, align 8, !tbaa !0
  br label %if.end281

if.else272:                                       ; preds = %if.end251
  %51 = load i32* %len, align 4, !tbaa !3
  %conv274 = sext i32 %51 to i64
  %call275 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %45, i8* %class.0, i64 %conv274) #7
  %52 = load i32* %len, align 4, !tbaa !3
  %conv276 = sext i32 %52 to i64
  %cmp277 = icmp eq i64 %call275, %conv276
  br i1 %cmp277, label %if.end281, label %cleanup

if.end281:                                        ; preds = %if.else272, %if.then262
  %53 = phi i32 [ %52, %if.else272 ], [ %49, %if.then262 ]
  %idxprom = sext i32 %53 to i64
  %arrayidx = getelementptr inbounds i8* %class.0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %aclass282 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 7
  %54 = load %struct.av** %aclass282, align 8, !tbaa !0
  %classnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 10
  %55 = load i64* %classnum, align 8, !tbaa !4
  %inc283 = add nsw i64 %55, 1
  store i64 %inc283, i64* %classnum, align 8, !tbaa !4
  %conv284 = trunc i64 %55 to i32
  %56 = load i32* %len, align 4, !tbaa !3
  %conv285 = sext i32 %56 to i64
  %call286 = call %struct.sv* @Perl_newSVpvn(i8* %class.0, i64 %conv285) #7
  %call287 = call %struct.sv** @Perl_av_store(%struct.av* %54, i32 %conv284, %struct.sv* %call286) #7
  %tobool288 = icmp eq %struct.sv** %call287, null
  br i1 %tobool288, label %cleanup, label %if.end291

if.end291:                                        ; preds = %if.end281, %if.end171
  %class.1 = phi i8* [ %35, %if.end171 ], [ %class.0, %if.end281 ]
  %and292 = and i32 %flags.1.lcssa, 8
  %tobool293 = icmp eq i32 %and292, 0
  %57 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool296 = icmp ne %struct._PerlIO** %57, null
  br i1 %tobool293, label %if.else339, label %if.then294

if.then294:                                       ; preds = %if.end291
  br i1 %tobool296, label %if.else325, label %if.then297

if.then297:                                       ; preds = %if.then294
  %aptr299 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %58 = load i8** %aptr299, align 8, !tbaa !0
  %add.ptr300 = getelementptr inbounds i8* %58, i64 4
  %aend302 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %59 = load i8** %aend302, align 8, !tbaa !0
  %cmp303 = icmp ugt i8* %add.ptr300, %59
  br i1 %cmp303, label %cleanup, label %if.end319

if.end319:                                        ; preds = %if.then297
  %storemerge806.in = bitcast i8* %58 to i32*
  %storemerge806 = load i32* %storemerge806.in, align 1
  store i32 %storemerge806, i32* %len2, align 4
  store i8* %add.ptr300, i8** %aptr299, align 8, !tbaa !0
  br label %if.end332

if.else325:                                       ; preds = %if.then294
  %60 = bitcast i32* %len2 to i8*
  %call327 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %57, i8* %60, i64 4) #7
  %cmp328 = icmp eq i64 %call327, 4
  br i1 %cmp328, label %if.end332, label %cleanup

if.end332:                                        ; preds = %if.else325, %if.end319
  %netorder333 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %61 = load i32* %netorder333, align 4, !tbaa !3
  %tobool334 = icmp eq i32 %61, 0
  %.pre824 = load i32* %len2, align 4, !tbaa !3
  br i1 %tobool334, label %if.end364, label %if.then335

if.then335:                                       ; preds = %if.end332
  %62 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre824) #3, !srcloc !21
  store i32 %62, i32* %len2, align 4, !tbaa !3
  br label %if.end364

if.else339:                                       ; preds = %if.end291
  br i1 %tobool296, label %if.else356, label %if.then342

if.then342:                                       ; preds = %if.else339
  %aptr344 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %63 = load i8** %aptr344, align 8, !tbaa !0
  %aend346 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %64 = load i8** %aend346, align 8, !tbaa !0
  %cmp347 = icmp ult i8* %63, %64
  br i1 %cmp347, label %if.then349, label %cleanup

if.then349:                                       ; preds = %if.then342
  %incdec.ptr352 = getelementptr inbounds i8* %63, i64 1
  store i8* %incdec.ptr352, i8** %aptr344, align 8, !tbaa !0
  %65 = load i8* %63, align 1, !tbaa !1
  %conv353 = zext i8 %65 to i32
  store i32 %conv353, i32* %len2, align 4, !tbaa !3
  br label %if.end364

if.else356:                                       ; preds = %if.else339
  %call358 = call i32 @PerlIO_getc(%struct._PerlIO** %57) #7
  store i32 %call358, i32* %len2, align 4, !tbaa !3
  %cmp359 = icmp eq i32 %call358, -1
  br i1 %cmp359, label %cleanup, label %if.end364

if.end364:                                        ; preds = %if.end332, %if.then349, %if.else356, %if.then335
  %66 = phi i32 [ %conv353, %if.then349 ], [ %call358, %if.else356 ], [ %62, %if.then335 ], [ %.pre824, %if.end332 ]
  %conv365 = sext i32 %66 to i64
  %call366 = call %struct.sv* @Perl_newSV(i64 %conv365) #7
  %67 = load i32* %len2, align 4, !tbaa !3
  %tobool367 = icmp eq i32 %67, 0
  br i1 %tobool367, label %if.end411, label %if.then368

if.then368:                                       ; preds = %if.end364
  %68 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool370 = icmp eq %struct._PerlIO** %68, null
  br i1 %tobool370, label %if.then371, label %if.else392

if.then371:                                       ; preds = %if.then368
  %aptr373 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %69 = load i8** %aptr373, align 8, !tbaa !0
  %idx.ext374 = sext i32 %67 to i64
  %add.ptr375 = getelementptr inbounds i8* %69, i64 %idx.ext374
  %aend377 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %70 = load i8** %aend377, align 8, !tbaa !0
  %cmp378 = icmp ugt i8* %add.ptr375, %70
  br i1 %cmp378, label %if.else390, label %if.then380

if.then380:                                       ; preds = %if.then371
  %sv_any381 = getelementptr inbounds %struct.sv* %call366, i64 0, i32 0
  %71 = load i8** %sv_any381, align 8, !tbaa !0
  %xpv_pv382 = bitcast i8* %71 to i8**
  %72 = load i8** %xpv_pv382, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %72, i8* %69, i64 %idx.ext374, i32 1, i1 false)
  %73 = load i32* %len2, align 4, !tbaa !3
  %74 = load i8** %aptr373, align 8, !tbaa !0
  %idx.ext388 = sext i32 %73 to i64
  %add.ptr389 = getelementptr inbounds i8* %74, i64 %idx.ext388
  store i8* %add.ptr389, i8** %aptr373, align 8, !tbaa !0
  br label %if.end403

if.else390:                                       ; preds = %if.then371
  call void @Perl_sv_free(%struct.sv* %call366) #7
  br label %cleanup

if.else392:                                       ; preds = %if.then368
  %sv_any394 = getelementptr inbounds %struct.sv* %call366, i64 0, i32 0
  %75 = load i8** %sv_any394, align 8, !tbaa !0
  %xpv_pv395 = bitcast i8* %75 to i8**
  %76 = load i8** %xpv_pv395, align 8, !tbaa !0
  %conv396 = sext i32 %67 to i64
  %call397 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %68, i8* %76, i64 %conv396) #7
  %77 = load i32* %len2, align 4, !tbaa !3
  %conv398 = sext i32 %77 to i64
  %cmp399 = icmp eq i64 %call397, %conv398
  br i1 %cmp399, label %if.end403, label %if.then401

if.then401:                                       ; preds = %if.else392
  call void @Perl_sv_free(%struct.sv* %call366) #7
  br label %cleanup

if.end403:                                        ; preds = %if.else392, %if.then380
  %78 = phi i32 [ %77, %if.else392 ], [ %73, %if.then380 ]
  %conv404 = sext i32 %78 to i64
  %sv_any405 = getelementptr inbounds %struct.sv* %call366, i64 0, i32 0
  %79 = load i8** %sv_any405, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %79, i64 8
  %80 = bitcast i8* %xpv_cur to i64*
  store i64 %conv404, i64* %80, align 8, !tbaa !4
  %xpv_pv407 = bitcast i8* %79 to i8**
  %81 = load i8** %xpv_pv407, align 8, !tbaa !0
  %add.ptr410 = getelementptr inbounds i8* %81, i64 %conv404
  store i8 0, i8* %add.ptr410, align 1, !tbaa !1
  br label %if.end411

if.end411:                                        ; preds = %if.end364, %if.end403
  %sv_flags = getelementptr inbounds %struct.sv* %call366, i64 0, i32 2
  %82 = load i32* %sv_flags, align 4, !tbaa !3
  %and412 = and i32 %82, 1223753727
  %or = or i32 %and412, 67371008
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %s_tainted = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 12
  %83 = load i32* %s_tainted, align 4, !tbaa !3
  %tobool414 = icmp ne i32 %83, 0
  %84 = load i8* @PL_tainting, align 1, !tbaa !1
  %tobool416 = icmp ne i8 %84, 0
  %or.cond = and i1 %tobool414, %tobool416
  %85 = load i8* @PL_tainted, align 1, !tbaa !1
  %tobool418 = icmp ne i8 %85, 0
  %or.cond645 = and i1 %or.cond, %tobool418
  br i1 %or.cond645, label %if.then421, label %if.end425

if.then421:                                       ; preds = %if.end411
  call void @Perl_sv_taint(%struct.sv* %call366) #7
  br label %if.end425

if.end425:                                        ; preds = %if.then421, %if.end411
  %and426 = and i32 %flags.1.lcssa, 128
  %tobool427 = icmp eq i32 %and426, 0
  br i1 %tobool427, label %if.end578, label %if.then428

if.then428:                                       ; preds = %if.end425
  %and429 = and i32 %flags.1.lcssa, 16
  %tobool430 = icmp eq i32 %and429, 0
  %86 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool433 = icmp ne %struct._PerlIO** %86, null
  br i1 %tobool430, label %if.else476, label %if.then431

if.then431:                                       ; preds = %if.then428
  br i1 %tobool433, label %if.else462, label %if.then434

if.then434:                                       ; preds = %if.then431
  %aptr436 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %87 = load i8** %aptr436, align 8, !tbaa !0
  %add.ptr437 = getelementptr inbounds i8* %87, i64 4
  %aend439 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %88 = load i8** %aend439, align 8, !tbaa !0
  %cmp440 = icmp ugt i8* %add.ptr437, %88
  br i1 %cmp440, label %cleanup, label %if.end456

if.end456:                                        ; preds = %if.then434
  %storemerge805.in = bitcast i8* %87 to i32*
  %storemerge805 = load i32* %storemerge805.in, align 1
  store i32 %storemerge805, i32* %len3, align 4
  store i8* %add.ptr437, i8** %aptr436, align 8, !tbaa !0
  br label %if.end469

if.else462:                                       ; preds = %if.then431
  %89 = bitcast i32* %len3 to i8*
  %call464 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %86, i8* %89, i64 4) #7
  %cmp465 = icmp eq i64 %call464, 4
  br i1 %cmp465, label %if.else462.if.end469_crit_edge, label %cleanup

if.else462.if.end469_crit_edge:                   ; preds = %if.else462
  %.pr813.pre = load i32* %len3, align 4, !tbaa !3
  br label %if.end469

if.end469:                                        ; preds = %if.else462.if.end469_crit_edge, %if.end456
  %.pr813 = phi i32 [ %.pr813.pre, %if.else462.if.end469_crit_edge ], [ %storemerge805, %if.end456 ]
  %netorder470 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %90 = load i32* %netorder470, align 4, !tbaa !3
  %tobool471 = icmp eq i32 %90, 0
  br i1 %tobool471, label %if.end501, label %if.then472

if.then472:                                       ; preds = %if.end469
  %91 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pr813) #3, !srcloc !22
  store i32 %91, i32* %len3, align 4, !tbaa !3
  br label %if.end501

if.else476:                                       ; preds = %if.then428
  br i1 %tobool433, label %if.else493, label %if.then479

if.then479:                                       ; preds = %if.else476
  %aptr481 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %92 = load i8** %aptr481, align 8, !tbaa !0
  %aend483 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %93 = load i8** %aend483, align 8, !tbaa !0
  %cmp484 = icmp ult i8* %92, %93
  br i1 %cmp484, label %if.then486, label %cleanup

if.then486:                                       ; preds = %if.then479
  %incdec.ptr489 = getelementptr inbounds i8* %92, i64 1
  store i8* %incdec.ptr489, i8** %aptr481, align 8, !tbaa !0
  %94 = load i8* %92, align 1, !tbaa !1
  %conv490 = zext i8 %94 to i32
  store i32 %conv490, i32* %len3, align 4, !tbaa !3
  br label %if.end501

if.else493:                                       ; preds = %if.else476
  %call495 = call i32 @PerlIO_getc(%struct._PerlIO** %86) #7
  store i32 %call495, i32* %len3, align 4, !tbaa !3
  %cmp496 = icmp eq i32 %call495, -1
  br i1 %cmp496, label %cleanup, label %if.end501

if.end501:                                        ; preds = %if.end469, %if.then486, %if.else493, %if.then472
  %95 = phi i32 [ %conv490, %if.then486 ], [ %call495, %if.else493 ], [ %91, %if.then472 ], [ %.pr813, %if.end469 ]
  %tobool502 = icmp eq i32 %95, 0
  br i1 %tobool502, label %if.end578, label %if.end509

if.end509:                                        ; preds = %if.end501
  %call504 = call %struct.av* @Perl_newAV() #7
  %96 = load i32* %len3, align 4, !tbaa !3
  %add505 = add nsw i32 %96, 1
  call void @Perl_av_extend(%struct.av* %call504, i32 %add505) #7
  %97 = load i32* %len3, align 4, !tbaa !3
  %conv506 = sext i32 %97 to i64
  %sv_any507 = getelementptr inbounds %struct.av* %call504, i64 0, i32 0
  %98 = load %struct.xpvav** %sv_any507, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %98, i64 0, i32 1
  store i64 %conv506, i64* %xav_fill, align 8, !tbaa !4
  %tobool510 = icmp eq %struct.av* %call504, null
  br i1 %tobool510, label %if.end578, label %if.then511

if.then511:                                       ; preds = %if.end509
  %xav_array = getelementptr inbounds %struct.xpvav* %98, i64 0, i32 0
  %99 = load i8** %xav_array, align 8, !tbaa !0
  %100 = bitcast i8* %99 to %struct.sv**
  %cmp513818 = icmp slt i32 %97, 1
  br i1 %cmp513818, label %if.end578, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then511
  %aptr519 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend522 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %where_is_undef = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 5
  %s_dirty564 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  %101 = bitcast i32* %tag to i8*
  br label %for.body

for.body:                                         ; preds = %land.end573, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %land.end573 ], [ 1, %for.body.lr.ph ]
  %102 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool516 = icmp eq %struct._PerlIO** %102, null
  br i1 %tobool516, label %if.then517, label %if.else545

if.then517:                                       ; preds = %for.body
  %103 = load i8** %aptr519, align 8, !tbaa !0
  %add.ptr520 = getelementptr inbounds i8* %103, i64 4
  %104 = load i8** %aend522, align 8, !tbaa !0
  %cmp523 = icmp ugt i8* %add.ptr520, %104
  br i1 %cmp523, label %cleanup, label %if.end539

if.end539:                                        ; preds = %if.then517
  %storemerge.in = bitcast i8* %103 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %tag, align 4
  store i8* %add.ptr520, i8** %aptr519, align 8, !tbaa !0
  br label %if.end552

if.else545:                                       ; preds = %for.body
  %call547 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %102, i8* %101, i64 4) #7
  %cmp548 = icmp eq i64 %call547, 4
  br i1 %cmp548, label %if.else545.if.end552_crit_edge, label %cleanup

if.else545.if.end552_crit_edge:                   ; preds = %if.else545
  %.pre825 = load i32* %tag, align 4, !tbaa !3
  br label %if.end552

if.end552:                                        ; preds = %if.else545.if.end552_crit_edge, %if.end539
  %105 = phi i32 [ %.pre825, %if.else545.if.end552_crit_edge ], [ %storemerge, %if.end539 ]
  %106 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %105) #3, !srcloc !23
  store i32 %106, i32* %tag, align 4, !tbaa !3
  %107 = load %struct.av** %aseen, align 8, !tbaa !0
  %call556 = call %struct.sv** @Perl_av_fetch(%struct.av* %107, i32 %106, i32 0) #7
  %tobool557 = icmp eq %struct.sv** %call556, null
  br i1 %tobool557, label %if.then558, label %if.end567

if.then558:                                       ; preds = %if.end552
  %108 = load i32* %tag, align 4, !tbaa !3
  %conv559 = sext i32 %108 to i64
  %109 = load i64* %where_is_undef, align 8, !tbaa !4
  %cmp560 = icmp eq i64 %conv559, %109
  br i1 %cmp560, label %if.then562, label %if.else563

if.then562:                                       ; preds = %if.then558
  store %struct.sv* @PL_sv_undef, %struct.sv** %xsv, align 8
  br label %if.end567

if.else563:                                       ; preds = %if.then558
  store i32 1, i32* %s_dirty564, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([47 x i8]* @.str36, i64 0, i64 0), i64 %conv559) #7
  unreachable

if.end567:                                        ; preds = %if.end552, %if.then562
  %svh.0 = phi %struct.sv** [ %xsv, %if.then562 ], [ %call556, %if.end552 ]
  %110 = load %struct.sv** %svh.0, align 8, !tbaa !0
  store %struct.sv* %110, %struct.sv** %xsv, align 8
  store %struct.sv* %110, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool568 = icmp eq %struct.sv* %110, null
  br i1 %tobool568, label %land.end573, label %land.rhs569

land.rhs569:                                      ; preds = %if.end567
  %sv_refcnt570 = getelementptr inbounds %struct.sv* %110, i64 0, i32 1
  %111 = load i32* %sv_refcnt570, align 4, !tbaa !3
  %inc571 = add i32 %111, 1
  store i32 %inc571, i32* %sv_refcnt570, align 4, !tbaa !3
  br label %land.end573

land.end573:                                      ; preds = %if.end567, %land.rhs569
  %arrayidx576 = getelementptr inbounds %struct.sv** %100, i64 %indvars.iv
  store %struct.sv* %110, %struct.sv** %arrayidx576, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %112 = load i32* %len3, align 4, !tbaa !3
  %113 = trunc i64 %indvars.iv to i32
  %cmp513 = icmp slt i32 %113, %112
  br i1 %cmp513, label %for.body, label %if.end578

if.end578:                                        ; preds = %if.then511, %land.end573, %if.end509, %if.end425, %if.end501
  %tobool510816 = phi i1 [ false, %if.end509 ], [ false, %if.end501 ], [ false, %if.end425 ], [ true, %land.end573 ], [ true, %if.then511 ]
  %av.0815 = phi %struct.av* [ null, %if.end509 ], [ null, %if.end501 ], [ null, %if.end425 ], [ %call504, %land.end573 ], [ %call504, %if.then511 ]
  %call579 = call %struct.hv* @Perl_gv_stashpv(i8* %class.1, i32 1) #7
  %call580 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %sv.0) #7
  %call581 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call580, %struct.hv* %call579) #7
  %sv_any582 = getelementptr inbounds %struct.sv* %call580, i64 0, i32 0
  %114 = load i8** %sv_any582, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %114 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call580) #7
  %hook583 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 8
  %115 = load %struct.hv** %hook583, align 8, !tbaa !0
  %sv_any584 = getelementptr inbounds %struct.sv* %sv.0, i64 0, i32 0
  %116 = load i8** %sv_any584, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %116, i64 48
  %117 = bitcast i8* %xmg_stash to %struct.hv**
  %118 = load %struct.hv** %117, align 8, !tbaa !0
  %call585 = call fastcc %struct.sv* @pkg_can(%struct.hv* %115, %struct.hv* %118, i8* getelementptr inbounds ([14 x i8]* @.str61, i64 0, i64 0)) #6
  %tobool586 = icmp eq %struct.sv* %call585, null
  br i1 %tobool586, label %if.then587, label %if.end601

if.then587:                                       ; preds = %if.end578
  %call588 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([9 x i8]* @.str58, i64 0, i64 0), i64 8) #7
  call void @Perl_sv_catpv(%struct.sv* %call588, i8* %class.1) #7
  %call589 = call i32 @Perl_eval_sv(%struct.sv* %call588, i32 2) #7
  call void @Perl_sv_free(%struct.sv* %call588) #7
  %119 = load %struct.hv** %hook583, align 8, !tbaa !0
  %120 = load i8** %sv_any584, align 8, !tbaa !0
  %xmg_stash592 = getelementptr inbounds i8* %120, i64 48
  %121 = bitcast i8* %xmg_stash592 to %struct.hv**
  %122 = load %struct.hv** %121, align 8, !tbaa !0
  %sv_any.i = getelementptr inbounds %struct.hv* %122, i64 0, i32 0
  %123 = load %struct.xpvhv** %sv_any.i, align 8, !tbaa !0
  %xhv_name.i = getelementptr inbounds %struct.xpvhv* %123, i64 0, i32 10
  %124 = load i8** %xhv_name.i, align 8, !tbaa !0
  %call.i = call i64 @strlen(i8* %124) #7
  %conv.i = trunc i64 %call.i to i32
  %call3.i = call %struct.sv* @Perl_hv_delete(%struct.hv* %119, i8* %124, i32 %conv.i, i32 2) #7
  %125 = load %struct.hv** %hook583, align 8, !tbaa !0
  %126 = load i8** %sv_any584, align 8, !tbaa !0
  %xmg_stash595 = getelementptr inbounds i8* %126, i64 48
  %127 = bitcast i8* %xmg_stash595 to %struct.hv**
  %128 = load %struct.hv** %127, align 8, !tbaa !0
  %call596 = call fastcc %struct.sv* @pkg_can(%struct.hv* %125, %struct.hv* %128, i8* getelementptr inbounds ([14 x i8]* @.str61, i64 0, i64 0)) #6
  %tobool597 = icmp eq %struct.sv* %call596, null
  br i1 %tobool597, label %if.then598, label %if.end601

if.then598:                                       ; preds = %if.then587
  %s_dirty599 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty599, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([78 x i8]* @.str62, i64 0, i64 0), i8* %class.1, i8* %class.1) #7
  br label %if.end601

if.end601:                                        ; preds = %if.then587, %if.end578, %if.then598
  %hook.0 = phi %struct.sv* [ %call585, %if.end578 ], [ %call596, %if.then587 ], [ null, %if.then598 ]
  br i1 %tobool510816, label %if.end607, label %if.then603

if.then603:                                       ; preds = %if.end601
  %call604 = call %struct.av* @Perl_newAV() #7
  call void @Perl_av_extend(%struct.av* %call604, i32 1) #7
  %sv_any605 = getelementptr inbounds %struct.av* %call604, i64 0, i32 0
  %129 = load %struct.xpvav** %sv_any605, align 8, !tbaa !0
  %xav_fill606 = getelementptr inbounds %struct.xpvav* %129, i64 0, i32 1
  store i64 0, i64* %xav_fill606, align 8, !tbaa !4
  br label %if.end607

if.end607:                                        ; preds = %if.then603, %if.end601
  %av.1 = phi %struct.av* [ %av.0815, %if.end601 ], [ %call604, %if.then603 ]
  store %struct.sv* %call366, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool608 = icmp eq %struct.sv* %call366, null
  br i1 %tobool608, label %land.end613, label %land.rhs609

land.rhs609:                                      ; preds = %if.end607
  %sv_refcnt610 = getelementptr inbounds %struct.sv* %call366, i64 0, i32 1
  %130 = load i32* %sv_refcnt610, align 4, !tbaa !3
  %inc611 = add i32 %130, 1
  store i32 %inc611, i32* %sv_refcnt610, align 4, !tbaa !3
  br label %land.end613

land.end613:                                      ; preds = %if.end607, %land.rhs609
  %sv_any615 = getelementptr inbounds %struct.av* %av.1, i64 0, i32 0
  %131 = load %struct.xpvav** %sv_any615, align 8, !tbaa !0
  %xav_array616 = getelementptr inbounds %struct.xpvav* %131, i64 0, i32 0
  %132 = load i8** %xav_array616, align 8, !tbaa !0
  %133 = bitcast i8* %132 to %struct.sv**
  store %struct.sv* %call366, %struct.sv** %133, align 8, !tbaa !0
  %call618 = call %struct.sv* @Perl_newRV(%struct.sv* %sv.0) #7
  %134 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %135 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %135, i32* @PL_tmps_floor, align 4, !tbaa !3
  %136 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr.i = getelementptr inbounds i32* %136, i64 1
  store i32* %incdec.ptr.i, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %137 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp.i = icmp eq i32* %incdec.ptr.i, %137
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.end613
  call void @Perl_markstack_grow() #7
  %.pre.i = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.end613
  %138 = phi i32* [ %.pre.i, %if.then.i ], [ %incdec.ptr.i, %land.end613 ]
  %139 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint %struct.sv** %134 to i64
  %sub.ptr.rhs.cast.i = ptrtoint %struct.sv** %139 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div1.i = lshr exact i64 %sub.ptr.sub.i, 3
  %conv.i810 = trunc i64 %sub.ptr.div1.i to i32
  store i32 %conv.i810, i32* %138, align 4, !tbaa !3
  %140 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast1.i = ptrtoint %struct.sv** %140 to i64
  %sub.ptr.sub3.i = sub i64 %sub.ptr.lhs.cast1.i, %sub.ptr.lhs.cast.i
  %cmp5.i = icmp slt i64 %sub.ptr.sub3.i, 8
  br i1 %cmp5.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  %call.i811 = call %struct.sv** @Perl_stack_grow(%struct.sv** %134, %struct.sv** %134, i32 1) #7
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i
  %sp.0.i = phi %struct.sv** [ %call.i811, %if.then7.i ], [ %134, %if.end.i ]
  %incdec.ptr9.i = getelementptr inbounds %struct.sv** %sp.0.i, i64 1
  store %struct.sv* %call618, %struct.sv** %incdec.ptr9.i, align 8, !tbaa !0
  %141 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast10.i = ptrtoint %struct.sv** %141 to i64
  %sub.ptr.rhs.cast11.i = ptrtoint %struct.sv** %incdec.ptr9.i to i64
  %sub.ptr.sub12.i = sub i64 %sub.ptr.lhs.cast10.i, %sub.ptr.rhs.cast11.i
  %cmp14.i = icmp slt i64 %sub.ptr.sub12.i, 8
  br i1 %cmp14.i, label %if.then16.i, label %if.end18.i

if.then16.i:                                      ; preds = %if.end8.i
  %call17.i = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr9.i, %struct.sv** %incdec.ptr9.i, i32 1) #7
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %if.end8.i
  %sp.1.i = phi %struct.sv** [ %call17.i, %if.then16.i ], [ %incdec.ptr9.i, %if.end8.i ]
  %conv19.i817 = zext i32 %and to i64
  %call20.i = call %struct.sv* @Perl_newSViv(i64 %conv19.i817) #7
  %call21.i = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call20.i) #7
  %incdec.ptr22.i = getelementptr inbounds %struct.sv** %sp.1.i, i64 1
  store %struct.sv* %call21.i, %struct.sv** %incdec.ptr22.i, align 8, !tbaa !0
  %tobool.i = icmp eq %struct.av* %av.1, null
  br i1 %tobool.i, label %if.end51.i, label %if.then23.i

if.then23.i:                                      ; preds = %if.end18.i
  %142 = load %struct.xpvav** %sv_any615, align 8, !tbaa !0
  %xav_array.i = getelementptr inbounds %struct.xpvav* %142, i64 0, i32 0
  %143 = load i8** %xav_array.i, align 8, !tbaa !0
  %144 = bitcast i8* %143 to %struct.sv**
  %xav_fill.i = getelementptr inbounds %struct.xpvav* %142, i64 0, i32 1
  %145 = load i64* %xav_fill.i, align 8, !tbaa !4
  %add.i = add nsw i64 %145, 1
  %conv25.i = trunc i64 %add.i to i32
  %146 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast26.i = ptrtoint %struct.sv** %146 to i64
  %sub.ptr.rhs.cast27.i = ptrtoint %struct.sv** %incdec.ptr22.i to i64
  %sub.ptr.sub28.i = sub i64 %sub.ptr.lhs.cast26.i, %sub.ptr.rhs.cast27.i
  %cmp30.i = icmp slt i64 %sub.ptr.sub28.i, 8
  br i1 %cmp30.i, label %if.then32.i, label %if.end34.i

if.then32.i:                                      ; preds = %if.then23.i
  %call33.i = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr22.i, %struct.sv** %incdec.ptr22.i, i32 1) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then32.i, %if.then23.i
  %sp.2.i = phi %struct.sv** [ %call33.i, %if.then32.i ], [ %incdec.ptr22.i, %if.then23.i ]
  %147 = load %struct.sv** %144, align 8, !tbaa !0
  %incdec.ptr35.i = getelementptr inbounds %struct.sv** %sp.2.i, i64 1
  store %struct.sv* %147, %struct.sv** %incdec.ptr35.i, align 8, !tbaa !0
  %cmp362.i = icmp sgt i32 %conv25.i, 1
  br i1 %cmp362.i, label %for.body.lr.ph.i, label %if.end51.i

for.body.lr.ph.i:                                 ; preds = %if.end34.i
  %148 = trunc i64 %145 to i32
  %149 = add i32 %148, 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end46.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %if.end46.i ]
  %sp.33.i = phi %struct.sv** [ %incdec.ptr35.i, %for.body.lr.ph.i ], [ %incdec.ptr50.i, %if.end46.i ]
  %150 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast38.i = ptrtoint %struct.sv** %150 to i64
  %sub.ptr.rhs.cast39.i = ptrtoint %struct.sv** %sp.33.i to i64
  %sub.ptr.sub40.i = sub i64 %sub.ptr.lhs.cast38.i, %sub.ptr.rhs.cast39.i
  %cmp42.i = icmp slt i64 %sub.ptr.sub40.i, 8
  br i1 %cmp42.i, label %if.then44.i, label %if.end46.i

if.then44.i:                                      ; preds = %for.body.i
  %call45.i = call %struct.sv** @Perl_stack_grow(%struct.sv** %sp.33.i, %struct.sv** %sp.33.i, i32 1) #7
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then44.i, %for.body.i
  %sp.4.i = phi %struct.sv** [ %call45.i, %if.then44.i ], [ %sp.33.i, %for.body.i ]
  %arrayidx47.i = getelementptr inbounds %struct.sv** %144, i64 %indvars.iv.i
  %151 = load %struct.sv** %arrayidx47.i, align 8, !tbaa !0
  %call48.i = call %struct.sv* @Perl_newRV(%struct.sv* %151) #7
  %call49.i = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call48.i) #7
  %incdec.ptr50.i = getelementptr inbounds %struct.sv** %sp.4.i, i64 1
  store %struct.sv* %call49.i, %struct.sv** %incdec.ptr50.i, align 8, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %149
  br i1 %exitcond, label %if.end51.i, label %for.body.i

if.end51.i:                                       ; preds = %if.end46.i, %if.end34.i, %if.end18.i
  %sp.5.i = phi %struct.sv** [ %incdec.ptr22.i, %if.end18.i ], [ %incdec.ptr35.i, %if.end34.i ], [ %incdec.ptr50.i, %if.end46.i ]
  store %struct.sv** %sp.5.i, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call52.i = call i32 @Perl_call_sv(%struct.sv* %hook.0, i32 2) #7
  %152 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tobool53.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.i, label %if.end59.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.end51.i
  %incdec.ptr55.i = getelementptr inbounds %struct.sv** %152, i64 -1
  %153 = load %struct.sv** %152, align 8, !tbaa !0
  store %struct.sv* %153, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool56.i = icmp eq %struct.sv* %153, null
  br i1 %tobool56.i, label %if.end59.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then54.i
  %sv_refcnt.i = getelementptr inbounds %struct.sv* %153, i64 0, i32 1
  %154 = load i32* %sv_refcnt.i, align 4, !tbaa !3
  %inc57.i = add i32 %154, 1
  store i32 %inc57.i, i32* %sv_refcnt.i, align 4, !tbaa !3
  br label %if.end59.i

if.end59.i:                                       ; preds = %land.rhs.i, %if.then54.i, %if.end51.i
  %sp.6.i = phi %struct.sv** [ %152, %if.end51.i ], [ %incdec.ptr55.i, %if.then54.i ], [ %incdec.ptr55.i, %land.rhs.i ]
  store %struct.sv** %sp.6.i, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %155 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %156 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp60.i = icmp sgt i32 %155, %156
  br i1 %cmp60.i, label %if.then62.i, label %scalar_call.exit

if.then62.i:                                      ; preds = %if.end59.i
  call void @Perl_free_tmps() #7
  br label %scalar_call.exit

scalar_call.exit:                                 ; preds = %if.end59.i, %if.then62.i
  call void @Perl_pop_scope() #7
  call void @Perl_sv_free(%struct.sv* %call618) #7
  call void @Perl_sv_free(%struct.sv* %call366) #7
  call void @Perl_av_undef(%struct.av* %av.1) #7
  %157 = bitcast %struct.av* %av.1 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %157) #7
  %cmp623 = icmp eq i8* %class.1, %0
  %or.cond809 = or i1 %tobool96, %cmp623
  br i1 %or.cond809, label %if.end626, label %if.then625

if.then625:                                       ; preds = %scalar_call.exit
  call void @Perl_safesysfree(i8* %class.1) #7
  br label %if.end626

if.end626:                                        ; preds = %if.then625, %scalar_call.exit
  %tobool627 = icmp eq i32 %extra_type.1, 0
  br i1 %tobool627, label %cleanup, label %if.end629

if.end629:                                        ; preds = %if.end626
  %call630 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  switch i32 %extra_type.1, label %sw.default641 [
    i32 4, label %sw.bb631
    i32 5, label %sw.bb633
    i32 6, label %sw.bb639
  ]

sw.bb631:                                         ; preds = %if.end629
  %call632 = call signext i8 @Perl_sv_upgrade(%struct.sv* %sv.0, i32 7) #7
  br label %sw.epilog643

sw.bb633:                                         ; preds = %if.end629
  %call634 = call signext i8 @Perl_sv_upgrade(%struct.sv* %sv.0, i32 10) #7
  %sv_any635 = bitcast %struct.sv* %sv.0 to %struct.xpvav**
  %158 = load %struct.xpvav** %sv_any635, align 8, !tbaa !0
  %xav_flags = getelementptr inbounds %struct.xpvav* %158, i64 0, i32 9
  %159 = load i8* %xav_flags, align 1, !tbaa !1
  %and637 = and i8 %159, -2
  store i8 %and637, i8* %xav_flags, align 1, !tbaa !1
  br label %sw.epilog643

sw.bb639:                                         ; preds = %if.end629
  %call640 = call signext i8 @Perl_sv_upgrade(%struct.sv* %sv.0, i32 11) #7
  br label %sw.epilog643

sw.default641:                                    ; preds = %if.end629
  %s_dirty642 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty642, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str63, i64 0, i64 0), i32 %extra_type.1) #7
  br label %sw.epilog643

sw.epilog643:                                     ; preds = %sw.default641, %sw.bb639, %sw.bb633, %sw.bb631
  call void @Perl_sv_magic(%struct.sv* %sv.0, %struct.sv* %call630, i32 %mtype.0, i8* null, i32 0) #7
  call void @Perl_sv_free(%struct.sv* %call630) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else87, %if.then73, %while.body, %if.else545, %if.then517, %sw.epilog52, %if.end626, %if.else493, %if.then479, %if.else462, %if.then434, %if.else356, %if.then342, %if.else325, %if.then297, %if.end281, %if.else272, %if.then254, %if.else237, %if.then223, %if.else206, %if.then178, %if.else158, %if.then144, %if.else130, %if.then103, %if.end55, %if.else35, %if.then21, %if.else5, %if.then, %sw.epilog643, %if.then401, %if.else390, %sw.default50, %sw.default
  %retval.0 = phi %struct.sv* [ null, %sw.default50 ], [ null, %sw.default ], [ null, %if.then401 ], [ %sv.0, %sw.epilog643 ], [ null, %if.else390 ], [ null, %if.then ], [ null, %if.else5 ], [ null, %if.then21 ], [ null, %if.else35 ], [ null, %sw.epilog52 ], [ null, %if.end55 ], [ null, %if.then103 ], [ null, %if.else130 ], [ null, %if.then144 ], [ null, %if.else158 ], [ null, %if.then178 ], [ null, %if.else206 ], [ null, %if.then223 ], [ null, %if.else237 ], [ null, %if.then254 ], [ null, %if.else272 ], [ null, %if.end281 ], [ null, %if.then297 ], [ null, %if.else325 ], [ null, %if.then342 ], [ null, %if.else356 ], [ null, %if.then434 ], [ null, %if.else462 ], [ null, %if.then479 ], [ null, %if.else493 ], [ %sv.0, %if.end626 ], [ null, %if.then517 ], [ null, %if.else545 ], [ null, %while.body ], [ null, %if.then73 ], [ null, %if.else87 ]
  call void @llvm.lifetime.end(i64 128, i8* %0) #3
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_overloaded(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %sv_refcnt, align 4, !tbaa !3
  %call4 = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call4, null
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8 = icmp eq i8* %cname, null
  br i1 %tobool8, label %if.end14, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call11 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call12 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call13 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call12, %struct.hv* %call11) #7
  %sv_any = getelementptr inbounds %struct.sv* %call12, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call12) #7
  br label %if.end14

if.end14:                                         ; preds = %if.end7, %if.then9
  %call15 = tail call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool16 = icmp eq %struct.sv* %call15, null
  br i1 %tobool16, label %return, label %if.end18

if.end18:                                         ; preds = %if.end14
  %call19 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 3) #7
  %sv_any20 = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %4 = load i8** %sv_any20, align 8, !tbaa !0
  %xrv_rv21 = bitcast i8* %4 to %struct.sv**
  store %struct.sv* %call15, %struct.sv** %xrv_rv21, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %5, 524288
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  %sv_flags22 = getelementptr inbounds %struct.sv* %call15, i64 0, i32 2
  %6 = load i32* %sv_flags22, align 4, !tbaa !3
  %and = and i32 %6, 255
  %tobool23 = icmp eq i32 %and, 0
  br i1 %tobool23, label %if.then26, label %cond.end

cond.end:                                         ; preds = %if.end18
  %sv_any24 = getelementptr inbounds %struct.sv* %call15, i64 0, i32 0
  %7 = load i8** %sv_any24, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %7, i64 48
  %8 = bitcast i8* %xmg_stash to %struct.hv**
  %9 = load %struct.hv** %8, align 8, !tbaa !0
  %tobool25 = icmp eq %struct.hv* %9, null
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end18, %cond.end
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  %call27 = tail call i8* @Perl_sv_reftype(%struct.sv* %call15, i32 0) #7
  %10 = ptrtoint %struct.sv* %call15 to i64
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([60 x i8]* @.str57, i64 0, i64 0), i8* %call27, i64 %10) #7
  br label %if.end28

if.end28:                                         ; preds = %cond.end, %if.then26
  %cond78 = phi %struct.hv* [ %9, %cond.end ], [ null, %if.then26 ]
  %11 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool29 = icmp eq i64 %11, 0
  br i1 %tobool29, label %if.then33, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end28
  %call30 = tail call signext i8 @Perl_Gv_AMupdate(%struct.hv* %cond78) #7
  %tobool32 = icmp eq i8 %call30, 0
  br i1 %tobool32, label %if.then33, label %if.end46

if.then33:                                        ; preds = %land.lhs.true, %if.end28
  %call34 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([9 x i8]* @.str58, i64 0, i64 0), i64 8) #7
  %sv_any35 = getelementptr inbounds %struct.hv* %cond78, i64 0, i32 0
  %12 = load %struct.xpvhv** %sv_any35, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %12, i64 0, i32 10
  %13 = load i8** %xhv_name, align 8, !tbaa !0
  tail call void @Perl_sv_catpv(%struct.sv* %call34, i8* %13) #7
  %call36 = tail call i32 @Perl_eval_sv(%struct.sv* %call34, i32 2) #7
  tail call void @Perl_sv_free(%struct.sv* %call34) #7
  %14 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool37 = icmp eq i64 %14, 0
  br i1 %tobool37, label %if.then42, label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.then33
  %call39 = tail call signext i8 @Perl_Gv_AMupdate(%struct.hv* %cond78) #7
  %tobool41 = icmp eq i8 %call39, 0
  br i1 %tobool41, label %if.then42, label %if.end46

if.then42:                                        ; preds = %land.lhs.true38, %if.then33
  %s_dirty43 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty43, align 4, !tbaa !3
  %call44 = tail call i8* @Perl_sv_reftype(%struct.sv* %call15, i32 0) #7
  %15 = ptrtoint %struct.sv* %call15 to i64
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([82 x i8]* @.str59, i64 0, i64 0), i8* %call44, i64 %15, i8* %13, i8* %13) #7
  br label %if.end46

if.end46:                                         ; preds = %land.lhs.true, %land.lhs.true38, %if.then42
  %16 = load i32* %sv_flags, align 4, !tbaa !3
  %or48 = or i32 %16, 268435456
  store i32 %or48, i32* %sv_flags, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %entry, %if.end14, %if.end, %if.end46
  %retval.0 = phi %struct.sv* [ %call, %if.end46 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end14 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_tied_key(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @Perl_newSV(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %sv_refcnt, align 4, !tbaa !3
  %call4 = tail call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call4, null
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8 = icmp eq i8* %cname, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call11 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call12 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call11, %struct.hv* %call10) #7
  %sv_any = getelementptr inbounds %struct.sv* %call11, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call11) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.then9
  %call14 = tail call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool15 = icmp eq %struct.sv* %call14, null
  br i1 %tobool15, label %return, label %if.end17

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool19 = icmp eq %struct.sv* %call18, null
  br i1 %tobool19, label %return, label %if.end21

if.end21:                                         ; preds = %if.end17
  %call22 = tail call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 7) #7
  %4 = bitcast %struct.sv* %call18 to i8*
  tail call void @Perl_sv_magic(%struct.sv* %call, %struct.sv* %call14, i32 112, i8* %4, i32 -2) #7
  tail call void @Perl_sv_free(%struct.sv* %call18) #7
  tail call void @Perl_sv_free(%struct.sv* %call14) #7
  br label %return

return:                                           ; preds = %entry, %if.end17, %if.end13, %if.end, %if.end21
  %retval.0 = phi %struct.sv* [ %call, %if.end21 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end13 ], [ null, %if.end17 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_tied_idx(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %idx = alloca i32, align 4
  %call = call %struct.sv* @Perl_newSV(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %0 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %2 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc2 = add i32 %2, 1
  store i32 %inc2, i32* %sv_refcnt, align 4, !tbaa !3
  %call4 = call %struct.sv** @Perl_av_store(%struct.av* %0, i32 %conv, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call4, null
  br i1 %cmp, label %return, label %if.end7

if.end7:                                          ; preds = %if.end
  %tobool8 = icmp eq i8* %cname, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call11 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call12 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call11, %struct.hv* %call10) #7
  %sv_any = getelementptr inbounds %struct.sv* %call11, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call11) #7
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %if.then9
  %call14 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool15 = icmp eq %struct.sv* %call14, null
  br i1 %tobool15, label %return, label %if.end17

if.end17:                                         ; preds = %if.end13
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %4 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool18 = icmp eq %struct._PerlIO** %4, null
  br i1 %tobool18, label %if.then19, label %if.else41

if.then19:                                        ; preds = %if.end17
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %5 = load i8** %aptr, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %5, i64 4
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %6 = load i8** %aend, align 8, !tbaa !0
  %cmp21 = icmp ugt i8* %add.ptr, %6
  br i1 %cmp21, label %return, label %if.end35

if.end35:                                         ; preds = %if.then19
  %storemerge.in = bitcast i8* %5 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %idx, align 4
  store i8* %add.ptr, i8** %aptr, align 8, !tbaa !0
  br label %if.end48

if.else41:                                        ; preds = %if.end17
  %7 = bitcast i32* %idx to i8*
  %call43 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %4, i8* %7, i64 4) #7
  %cmp44 = icmp eq i64 %call43, 4
  br i1 %cmp44, label %if.end48, label %return

if.end48:                                         ; preds = %if.else41, %if.end35
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %8 = load i32* %netorder, align 4, !tbaa !3
  %tobool49 = icmp eq i32 %8, 0
  br i1 %tobool49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end48
  %9 = load i32* %idx, align 4, !tbaa !3
  %10 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %9) #3, !srcloc !24
  store i32 %10, i32* %idx, align 4, !tbaa !3
  br label %if.end51

if.end51:                                         ; preds = %if.end48, %if.then50
  %call52 = call signext i8 @Perl_sv_upgrade(%struct.sv* %call, i32 7) #7
  %11 = load i32* %idx, align 4, !tbaa !3
  call void @Perl_sv_magic(%struct.sv* %call, %struct.sv* %call14, i32 112, i8* null, i32 %11) #7
  call void @Perl_sv_free(%struct.sv* %call14) #7
  br label %return

return:                                           ; preds = %entry, %if.else41, %if.then19, %if.end13, %if.end, %if.end51
  %retval.0 = phi %struct.sv* [ %call, %if.end51 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end13 ], [ null, %if.then19 ], [ null, %if.else41 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_utf8str(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @retrieve_scalar(%struct.stcxt* %cxt, i8* %cname) #6
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %0, 536870912
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_lutf8str(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %call = tail call %struct.sv* @retrieve_lscalar(%struct.stcxt* %cxt, i8* %cname) #6
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %0, 536870912
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret %struct.sv* %call
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_flag_hash(%struct.stcxt* %cxt, i8* %cname) #1 {
entry:
  %len = alloca i32, align 4
  %size = alloca i32, align 4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else5

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.end11.thread, label %return

if.end11.thread:                                  ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  %3 = load i8* %1, align 1, !tbaa !1
  %conv = zext i8 %3 to i32
  br label %if.then14

if.else5:                                         ; preds = %entry
  %call = call i32 @PerlIO_getc(%struct._PerlIO** %0) #7
  %cmp7 = icmp eq i32 %call, -1
  br i1 %cmp7, label %return, label %if.end11

if.end11:                                         ; preds = %if.else5
  %.pre = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool13 = icmp eq %struct._PerlIO** %.pre, null
  br i1 %tobool13, label %if.then14, label %if.else40

if.then14:                                        ; preds = %if.end11.thread, %if.end11
  %hash_flags.0322 = phi i32 [ %conv, %if.end11.thread ], [ %call, %if.end11 ]
  %aptr16 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %4 = load i8** %aptr16, align 8, !tbaa !0
  %add.ptr = getelementptr inbounds i8* %4, i64 4
  %aend18 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %5 = load i8** %aend18, align 8, !tbaa !0
  %cmp19 = icmp ugt i8* %add.ptr, %5
  br i1 %cmp19, label %return, label %if.end34

if.end34:                                         ; preds = %if.then14
  %storemerge.in = bitcast i8* %4 to i32*
  %storemerge = load i32* %storemerge.in, align 1
  store i32 %storemerge, i32* %len, align 4
  store i8* %add.ptr, i8** %aptr16, align 8, !tbaa !0
  br label %if.end47

if.else40:                                        ; preds = %if.end11
  %6 = bitcast i32* %len to i8*
  %call42 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %.pre, i8* %6, i64 4) #7
  %cmp43 = icmp eq i64 %call42, 4
  br i1 %cmp43, label %if.end47, label %return

if.end47:                                         ; preds = %if.else40, %if.end34
  %hash_flags.0321 = phi i32 [ %call, %if.else40 ], [ %hash_flags.0322, %if.end34 ]
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %7 = load i32* %netorder, align 4, !tbaa !3
  %tobool48 = icmp eq i32 %7, 0
  br i1 %tobool48, label %if.end50, label %if.then49

if.then49:                                        ; preds = %if.end47
  %8 = load i32* %len, align 4, !tbaa !3
  %9 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %8) #3, !srcloc !25
  store i32 %9, i32* %len, align 4, !tbaa !3
  br label %if.end50

if.end50:                                         ; preds = %if.end47, %if.then49
  %call51 = call %struct.hv* @Perl_newHV() #7
  %tobool52 = icmp eq %struct.hv* %call51, null
  br i1 %tobool52, label %return, label %if.end54

if.end54:                                         ; preds = %if.end50
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %10 = load %struct.av** %aseen, align 8, !tbaa !0
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %11 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %11, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %conv55 = trunc i64 %11 to i32
  %12 = bitcast %struct.hv* %call51 to %struct.sv*
  store %struct.sv* %12, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %13 = getelementptr inbounds %struct.hv* %call51, i64 0, i32 1
  %14 = load i32* %13, align 4, !tbaa !3
  %inc57 = add i32 %14, 1
  store i32 %inc57, i32* %13, align 4, !tbaa !3
  %call59 = call %struct.sv** @Perl_av_store(%struct.av* %10, i32 %conv55, %struct.sv* %12) #7
  %cmp60 = icmp eq %struct.sv** %call59, null
  br i1 %cmp60, label %return, label %if.end63

if.end63:                                         ; preds = %if.end54
  %tobool64 = icmp eq i8* %cname, null
  br i1 %tobool64, label %if.end69, label %if.then65

if.then65:                                        ; preds = %if.end63
  %call66 = call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call67 = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %12) #7
  %call68 = call %struct.sv* @Perl_sv_bless(%struct.sv* %call67, %struct.hv* %call66) #7
  %sv_any = getelementptr inbounds %struct.sv* %call67, i64 0, i32 0
  %15 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %15 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call67) #7
  br label %if.end69

if.end69:                                         ; preds = %if.end63, %if.then65
  %16 = load i32* %len, align 4, !tbaa !3
  %cmp70 = icmp eq i32 %16, 0
  br i1 %cmp70, label %return, label %if.end73

if.end73:                                         ; preds = %if.end69
  %conv74 = sext i32 %16 to i64
  call void @Perl_hv_ksplit(%struct.hv* %call51, i64 %conv74) #7
  %17 = load i32* %len, align 4, !tbaa !3
  %cmp75317 = icmp sgt i32 %17, 0
  br i1 %cmp75317, label %for.body.lr.ph, label %if.end73.for.end_crit_edge

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  %and244.pre = and i32 %hash_flags.0321, 1
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end73
  %aptr85 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend87 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %and105 = and i32 %hash_flags.0321, 1
  %tobool106 = icmp eq i32 %and105, 0
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 20, i32 1
  %arena234 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 20, i32 0
  %18 = bitcast i32* %size to i8*
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0318 = phi i32 [ 0, %for.body.lr.ph ], [ %inc243, %for.inc ]
  %call77 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool78 = icmp eq %struct.sv* %call77, null
  br i1 %tobool78, label %return, label %if.end80

if.end80:                                         ; preds = %for.body
  %19 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool82 = icmp eq %struct._PerlIO** %19, null
  br i1 %tobool82, label %if.then83, label %if.else97

if.then83:                                        ; preds = %if.end80
  %20 = load i8** %aptr85, align 8, !tbaa !0
  %21 = load i8** %aend87, align 8, !tbaa !0
  %cmp88 = icmp ult i8* %20, %21
  br i1 %cmp88, label %if.then90, label %return

if.then90:                                        ; preds = %if.then83
  %incdec.ptr93 = getelementptr inbounds i8* %20, i64 1
  store i8* %incdec.ptr93, i8** %aptr85, align 8, !tbaa !0
  %22 = load i8* %20, align 1, !tbaa !1
  %conv94 = zext i8 %22 to i32
  br label %if.end104

if.else97:                                        ; preds = %if.end80
  %call99 = call i32 @PerlIO_getc(%struct._PerlIO** %19) #7
  %cmp100 = icmp eq i32 %call99, -1
  br i1 %cmp100, label %return, label %if.end104

if.end104:                                        ; preds = %if.else97, %if.then90
  %flags.0 = phi i32 [ %call99, %if.else97 ], [ %conv94, %if.then90 ]
  br i1 %tobool106, label %if.end110, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end104
  %and107 = and i32 %flags.0, 4
  %tobool108 = icmp eq i32 %and107, 0
  br i1 %tobool108, label %if.end110, label %if.then109

if.then109:                                       ; preds = %land.lhs.true
  %sv_flags = getelementptr inbounds %struct.sv* %call77, i64 0, i32 2
  %23 = load i32* %sv_flags, align 4, !tbaa !3
  %or = or i32 %23, 8388608
  store i32 %or, i32* %sv_flags, align 4, !tbaa !3
  br label %if.end110

if.end110:                                        ; preds = %land.lhs.true, %if.end104, %if.then109
  %and111 = and i32 %flags.0, 8
  %tobool112 = icmp eq i32 %and111, 0
  br i1 %tobool112, label %if.else122, label %if.then113

if.then113:                                       ; preds = %if.end110
  %call114 = call fastcc %struct.sv* @retrieve(%struct.stcxt* %cxt, i8* null) #6
  %tobool115 = icmp eq %struct.sv* %call114, null
  br i1 %tobool115, label %return, label %if.end117

if.end117:                                        ; preds = %if.then113
  %call118 = call %struct.he* @Perl_hv_store_ent(%struct.hv* %call51, %struct.sv* %call114, %struct.sv* %call77, i32 0) #7
  %tobool119 = icmp eq %struct.he* %call118, null
  br i1 %tobool119, label %return, label %for.inc

if.else122:                                       ; preds = %if.end110
  %and123 = and i32 %flags.0, 16
  %tobool124 = icmp eq i32 %and123, 0
  br i1 %tobool124, label %if.end127, label %if.then125

if.then125:                                       ; preds = %if.else122
  call void @Perl_sv_free(%struct.sv* %call77) #7
  br label %if.end127

if.end127:                                        ; preds = %if.else122, %if.then125
  %store_flags.0 = phi i32 [ 512, %if.then125 ], [ 0, %if.else122 ]
  %sv.0 = phi %struct.sv* [ @PL_sv_placeholder, %if.then125 ], [ %call77, %if.else122 ]
  %24 = and i32 %flags.0, 3
  %25 = or i32 %24, %store_flags.0
  %26 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool139 = icmp eq %struct._PerlIO** %26, null
  br i1 %tobool139, label %if.then140, label %if.else168

if.then140:                                       ; preds = %if.end127
  %27 = load i8** %aptr85, align 8, !tbaa !0
  %add.ptr143 = getelementptr inbounds i8* %27, i64 4
  %28 = load i8** %aend87, align 8, !tbaa !0
  %cmp146 = icmp ugt i8* %add.ptr143, %28
  br i1 %cmp146, label %return, label %if.end162

if.end162:                                        ; preds = %if.then140
  %storemerge316.in = bitcast i8* %27 to i32*
  %storemerge316 = load i32* %storemerge316.in, align 1
  store i32 %storemerge316, i32* %size, align 4
  store i8* %add.ptr143, i8** %aptr85, align 8, !tbaa !0
  br label %if.end175

if.else168:                                       ; preds = %if.end127
  %call170 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %26, i8* %18, i64 4) #7
  %cmp171 = icmp eq i64 %call170, 4
  br i1 %cmp171, label %if.end175, label %return

if.end175:                                        ; preds = %if.else168, %if.end162
  %29 = load i32* %netorder, align 4, !tbaa !3
  %tobool177 = icmp eq i32 %29, 0
  %.pre319 = load i32* %size, align 4, !tbaa !3
  br i1 %tobool177, label %if.end181, label %if.then178

if.then178:                                       ; preds = %if.end175
  %30 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.pre319) #3, !srcloc !26
  store i32 %30, i32* %size, align 4, !tbaa !3
  br label %if.end181

if.end181:                                        ; preds = %if.end175, %if.then178
  %31 = phi i32 [ %30, %if.then178 ], [ %.pre319, %if.end175 ]
  %conv182 = sext i32 %31 to i64
  %32 = load i64* %asiz, align 8, !tbaa !4
  %cmp183 = icmp ult i64 %conv182, %32
  br i1 %cmp183, label %if.end195, label %if.then185

if.then185:                                       ; preds = %if.end181
  %33 = load i8** %arena234, align 8, !tbaa !0
  %add = add i64 %conv182, 1
  %call188 = call i8* @Perl_safesysrealloc(i8* %33, i64 %add) #7
  store i8* %call188, i8** %arena234, align 8, !tbaa !0
  %34 = load i32* %size, align 4, !tbaa !3
  %conv191 = sext i32 %34 to i64
  %add192 = add i64 %conv191, 1
  store i64 %add192, i64* %asiz, align 8, !tbaa !4
  br label %if.end195

if.end195:                                        ; preds = %if.end181, %if.then185
  %35 = phi i32 [ %31, %if.end181 ], [ %34, %if.then185 ]
  %tobool196 = icmp eq i32 %35, 0
  br i1 %tobool196, label %if.end232, label %if.then197

if.then197:                                       ; preds = %if.end195
  %36 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool199 = icmp eq %struct._PerlIO** %36, null
  br i1 %tobool199, label %if.then200, label %if.else220

if.then200:                                       ; preds = %if.then197
  %37 = load i8** %aptr85, align 8, !tbaa !0
  %idx.ext = sext i32 %35 to i64
  %add.ptr203 = getelementptr inbounds i8* %37, i64 %idx.ext
  %38 = load i8** %aend87, align 8, !tbaa !0
  %cmp206 = icmp ugt i8* %add.ptr203, %38
  br i1 %cmp206, label %return, label %if.then208

if.then208:                                       ; preds = %if.then200
  %39 = load i8** %arena234, align 8, !tbaa !0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %37, i64 %idx.ext, i32 1, i1 false)
  %40 = load i32* %size, align 4, !tbaa !3
  %41 = load i8** %aptr85, align 8, !tbaa !0
  %idx.ext216 = sext i32 %40 to i64
  %add.ptr217 = getelementptr inbounds i8* %41, i64 %idx.ext216
  store i8* %add.ptr217, i8** %aptr85, align 8, !tbaa !0
  br label %if.end232

if.else220:                                       ; preds = %if.then197
  %42 = load i8** %arena234, align 8, !tbaa !0
  %conv224 = sext i32 %35 to i64
  %call225 = call i64 @Perl_PerlIO_read(%struct._PerlIO** %36, i8* %42, i64 %conv224) #7
  %43 = load i32* %size, align 4, !tbaa !3
  %conv226 = sext i32 %43 to i64
  %cmp227 = icmp eq i64 %call225, %conv226
  br i1 %cmp227, label %if.end232, label %return

if.end232:                                        ; preds = %if.else220, %if.end195, %if.then208
  %44 = phi i32 [ %40, %if.then208 ], [ 0, %if.end195 ], [ %43, %if.else220 ]
  %idxprom = sext i32 %44 to i64
  %45 = load i8** %arena234, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i8* %45, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1, !tbaa !1
  %46 = load i8** %arena234, align 8, !tbaa !0
  %47 = load i32* %size, align 4, !tbaa !3
  %call237 = call %struct.sv** @Perl_hv_store_flags(%struct.hv* %call51, i8* %46, i32 %47, %struct.sv* %sv.0, i32 0, i32 %25) #7
  %cmp238 = icmp eq %struct.sv** %call237, null
  br i1 %cmp238, label %return, label %for.inc

for.inc:                                          ; preds = %if.end117, %if.end232
  %inc243 = add nsw i32 %i.0318, 1
  %48 = load i32* %len, align 4, !tbaa !3
  %cmp75 = icmp slt i32 %inc243, %48
  br i1 %cmp75, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end73.for.end_crit_edge
  %and244.pre-phi = phi i32 [ %and244.pre, %if.end73.for.end_crit_edge ], [ %and105, %for.inc ]
  %tobool245 = icmp eq i32 %and244.pre-phi, 0
  br i1 %tobool245, label %return, label %if.then246

if.then246:                                       ; preds = %for.end
  %sv_flags247 = getelementptr inbounds %struct.hv* %call51, i64 0, i32 2
  %49 = load i32* %sv_flags247, align 4, !tbaa !3
  %or248 = or i32 %49, 8388608
  store i32 %or248, i32* %sv_flags247, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end232, %if.else220, %if.then200, %if.else168, %if.then140, %if.end117, %if.then113, %if.else97, %if.then83, %for.body, %if.then246, %for.end, %if.end69, %if.end54, %if.end50, %if.else40, %if.then14, %if.else5, %if.then
  %retval.0 = phi %struct.sv* [ null, %if.then ], [ null, %if.else5 ], [ null, %if.then14 ], [ null, %if.else40 ], [ null, %if.end50 ], [ null, %if.end54 ], [ %12, %if.end69 ], [ %12, %for.end ], [ %12, %if.then246 ], [ null, %for.body ], [ null, %if.then83 ], [ null, %if.else97 ], [ null, %if.then113 ], [ null, %if.end117 ], [ null, %if.then140 ], [ null, %if.else168 ], [ null, %if.then200 ], [ null, %if.else220 ], [ null, %if.end232 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal %struct.sv* @retrieve_code(%struct.stcxt* nocapture %cxt, i8* %cname) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %tagnum1 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %1 = load i64* %tagnum1, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  %call = tail call %struct.sv* @Perl_newSViv(i64 0) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %aseen = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 4
  %2 = load %struct.av** %aseen, align 8, !tbaa !0
  %3 = load i64* %tagnum1, align 8, !tbaa !4
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %tagnum1, align 8, !tbaa !4
  %conv3 = trunc i64 %3 to i32
  store %struct.sv* %call, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %sv_refcnt = getelementptr inbounds %struct.sv* %call, i64 0, i32 1
  %4 = load i32* %sv_refcnt, align 4, !tbaa !3
  %inc5 = add i32 %4, 1
  store i32 %inc5, i32* %sv_refcnt, align 4, !tbaa !3
  %call7 = tail call %struct.sv** @Perl_av_store(%struct.av* %2, i32 %conv3, %struct.sv* %call) #7
  %cmp = icmp eq %struct.sv** %call7, null
  br i1 %cmp, label %return, label %if.end10

if.end10:                                         ; preds = %if.end
  %tobool11 = icmp eq i8* %cname, null
  br i1 %tobool11, label %if.end16, label %if.then12

if.then12:                                        ; preds = %if.end10
  %call13 = tail call %struct.hv* @Perl_gv_stashpv(i8* %cname, i32 1) #7
  %call14 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call) #7
  %call15 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call14, %struct.hv* %call13) #7
  %sv_any = getelementptr inbounds %struct.sv* %call14, i64 0, i32 0
  %5 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %5 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv, align 8, !tbaa !0
  tail call void @Perl_sv_free(%struct.sv* %call14) #7
  br label %if.end16

if.end16:                                         ; preds = %if.end10, %if.then12
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %6 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool17 = icmp eq %struct._PerlIO** %6, null
  br i1 %tobool17, label %if.then18, label %if.else27

if.then18:                                        ; preds = %if.end16
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %7 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %8 = load i8** %aend, align 8, !tbaa !0
  %cmp20 = icmp ult i8* %7, %8
  br i1 %cmp20, label %if.then22, label %return

if.then22:                                        ; preds = %if.then18
  %incdec.ptr = getelementptr inbounds i8* %7, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  %9 = load i8* %7, align 1, !tbaa !1
  %conv25 = zext i8 %9 to i32
  br label %if.end34

if.else27:                                        ; preds = %if.end16
  %call29 = tail call i32 @PerlIO_getc(%struct._PerlIO** %6) #7
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %return, label %if.end34

if.end34:                                         ; preds = %if.else27, %if.then22
  %type.0 = phi i32 [ %call29, %if.else27 ], [ %conv25, %if.then22 ]
  switch i32 %type.0, label %sw.default [
    i32 10, label %sw.bb
    i32 1, label %sw.bb36
  ]

sw.bb:                                            ; preds = %if.end34
  %call35 = tail call %struct.sv* @retrieve_scalar(%struct.stcxt* %cxt, i8* %cname) #6
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end34
  %call37 = tail call %struct.sv* @retrieve_lscalar(%struct.stcxt* %cxt, i8* %cname) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end34
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([37 x i8]* @.str48, i64 0, i64 0), i32 %type.0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb36, %sw.bb
  %text.0 = phi %struct.sv* [ undef, %sw.default ], [ %call37, %sw.bb36 ], [ %call35, %sw.bb ]
  %call38 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([5 x i8]* @.str49, i64 0, i64 0), i64 4) #7
  %sv_flags = getelementptr inbounds %struct.sv* %text.0, i64 0, i32 2
  %10 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %10, 262144
  %cmp39 = icmp eq i32 %and, 0
  br i1 %cmp39, label %cond.false, label %cond.true

cond.true:                                        ; preds = %sw.epilog
  %sv_any41 = getelementptr inbounds %struct.sv* %text.0, i64 0, i32 0
  %11 = load i8** %sv_any41, align 8, !tbaa !0
  %xpv_pv = bitcast i8* %11 to i8**
  %12 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  %call42 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %text.0) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ %call42, %cond.false ]
  tail call void @Perl_sv_catpv(%struct.sv* %call38, i8* %cond) #7
  tail call void @Perl_sv_free(%struct.sv* %text.0) #7
  %eval = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 15
  %13 = load %struct.sv** %eval, align 8, !tbaa !0
  %cmp43 = icmp eq %struct.sv* %13, null
  br i1 %cmp43, label %if.then45, label %cond.false60

if.then45:                                        ; preds = %cond.end
  %call46 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([15 x i8]* @.str50, i64 0, i64 0), i32 1) #7
  store %struct.sv* %call46, %struct.sv** %eval, align 8, !tbaa !0
  store %struct.sv* %call46, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool49 = icmp eq %struct.sv* %call46, null
  br i1 %tobool49, label %if.end56, label %land.rhs50

land.rhs50:                                       ; preds = %if.then45
  %sv_refcnt51 = getelementptr inbounds %struct.sv* %call46, i64 0, i32 1
  %14 = load i32* %sv_refcnt51, align 4, !tbaa !3
  %inc52 = add i32 %14, 1
  store i32 %inc52, i32* %sv_refcnt51, align 4, !tbaa !3
  br label %if.end56

if.end56:                                         ; preds = %land.rhs50, %if.then45
  %.pr = load %struct.sv** %eval, align 8, !tbaa !0
  %tobool58 = icmp eq %struct.sv* %.pr, null
  br i1 %tobool58, label %if.then105, label %cond.false60

cond.false60:                                     ; preds = %cond.end, %if.end56
  %15 = phi %struct.sv* [ %.pr, %if.end56 ], [ %13, %cond.end ]
  %sv_flags62 = getelementptr inbounds %struct.sv* %15, i64 0, i32 2
  %16 = load i32* %sv_flags62, align 4, !tbaa !3
  %and63 = and i32 %16, 262144
  %tobool64 = icmp eq i32 %and63, 0
  br i1 %tobool64, label %cond.false80, label %cond.true65

cond.true65:                                      ; preds = %cond.false60
  %sv_any67 = getelementptr inbounds %struct.sv* %15, i64 0, i32 0
  %17 = load i8** %sv_any67, align 8, !tbaa !0
  %18 = bitcast i8* %17 to %struct.xpv*
  store %struct.xpv* %18, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool68 = icmp eq i8* %17, null
  br i1 %tobool68, label %if.then105, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.true65
  %xpv_cur = getelementptr inbounds i8* %17, i64 8
  %19 = bitcast i8* %xpv_cur to i64*
  %20 = load i64* %19, align 8, !tbaa !4
  %cmp69 = icmp ugt i64 %20, 1
  br i1 %cmp69, label %if.end193, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tobool72 = icmp eq i64 %20, 0
  br i1 %tobool72, label %if.then105, label %land.lhs.true73

land.lhs.true73:                                  ; preds = %lor.lhs.false
  %xpv_pv74 = bitcast i8* %17 to i8**
  %21 = load i8** %xpv_pv74, align 8, !tbaa !0
  %22 = load i8* %21, align 1, !tbaa !1
  %cmp76 = icmp eq i8 %22, 48
  br i1 %cmp76, label %if.then105, label %if.end193

cond.false80:                                     ; preds = %cond.false60
  %and83 = and i32 %16, 65536
  %tobool84 = icmp eq i32 %and83, 0
  br i1 %tobool84, label %cond.false90, label %cond.true85

cond.true85:                                      ; preds = %cond.false80
  %sv_any87 = getelementptr inbounds %struct.sv* %15, i64 0, i32 0
  %23 = load i8** %sv_any87, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %23, i64 24
  %24 = bitcast i8* %xiv_iv to i64*
  %25 = load i64* %24, align 8, !tbaa !4
  %cmp88 = icmp eq i64 %25, 0
  br i1 %cmp88, label %if.then105, label %if.end193

cond.false90:                                     ; preds = %cond.false80
  %and93 = and i32 %16, 131072
  %tobool94 = icmp eq i32 %and93, 0
  br i1 %tobool94, label %cond.false100, label %cond.true95

cond.true95:                                      ; preds = %cond.false90
  %sv_any97 = getelementptr inbounds %struct.sv* %15, i64 0, i32 0
  %26 = load i8** %sv_any97, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %26, i64 32
  %27 = bitcast i8* %xnv_nv to double*
  %28 = load double* %27, align 8, !tbaa !6
  %cmp98 = fcmp une double %28, 0.000000e+00
  br i1 %cmp98, label %if.end193, label %if.then105

cond.false100:                                    ; preds = %cond.false90
  %call102 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %15) #7
  %tobool104 = icmp eq i8 %call102, 0
  br i1 %tobool104, label %if.then105, label %if.end193

if.then105:                                       ; preds = %land.lhs.true73, %lor.lhs.false, %cond.true65, %cond.true85, %cond.false100, %if.end56, %cond.true95
  %forgive_me = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 13
  %29 = load i32* %forgive_me, align 4, !tbaa !3
  %cmp106 = icmp eq i32 %29, 0
  br i1 %cmp106, label %if.then179, label %lor.lhs.false108

lor.lhs.false108:                                 ; preds = %if.then105
  %cmp110 = icmp slt i32 %29, 0
  br i1 %cmp110, label %land.lhs.true112, label %if.else181

land.lhs.true112:                                 ; preds = %lor.lhs.false108
  %call113 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  %tobool114 = icmp eq %struct.sv* %call113, null
  br i1 %tobool114, label %cond.end173.thread, label %cond.false116

cond.end173.thread:                               ; preds = %land.lhs.true112
  store i32 0, i32* %forgive_me, align 4, !tbaa !3
  br label %if.then179

cond.false116:                                    ; preds = %land.lhs.true112
  %call117 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  %sv_flags118 = getelementptr inbounds %struct.sv* %call117, i64 0, i32 2
  %30 = load i32* %sv_flags118, align 4, !tbaa !3
  %and119 = and i32 %30, 262144
  %tobool120 = icmp eq i32 %and119, 0
  %call122 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  br i1 %tobool120, label %cond.false141, label %cond.true121

cond.true121:                                     ; preds = %cond.false116
  %sv_any123 = getelementptr inbounds %struct.sv* %call122, i64 0, i32 0
  %31 = load i8** %sv_any123, align 8, !tbaa !0
  %32 = bitcast i8* %31 to %struct.xpv*
  store %struct.xpv* %32, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool124 = icmp eq i8* %31, null
  br i1 %tobool124, label %land.end138, label %land.rhs125

land.rhs125:                                      ; preds = %cond.true121
  %xpv_cur126 = getelementptr inbounds i8* %31, i64 8
  %33 = bitcast i8* %xpv_cur126 to i64*
  %34 = load i64* %33, align 8, !tbaa !4
  %cmp127 = icmp ugt i64 %34, 1
  br i1 %cmp127, label %land.end138, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs125
  %tobool130 = icmp eq i64 %34, 0
  br i1 %tobool130, label %land.end138, label %land.rhs131

land.rhs131:                                      ; preds = %lor.rhs
  %xpv_pv132 = bitcast i8* %31 to i8**
  %35 = load i8** %xpv_pv132, align 8, !tbaa !0
  %36 = load i8* %35, align 1, !tbaa !1
  %cmp134 = icmp ne i8 %36, 48
  br label %land.end138

land.end138:                                      ; preds = %lor.rhs, %cond.true121, %land.rhs125, %land.rhs131
  %37 = phi i1 [ false, %cond.true121 ], [ true, %land.rhs125 ], [ false, %lor.rhs ], [ %cmp134, %land.rhs131 ]
  %cond140 = zext i1 %37 to i32
  br label %cond.end173

cond.false141:                                    ; preds = %cond.false116
  %sv_flags143 = getelementptr inbounds %struct.sv* %call122, i64 0, i32 2
  %38 = load i32* %sv_flags143, align 4, !tbaa !3
  %and144 = and i32 %38, 65536
  %tobool145 = icmp eq i32 %and144, 0
  %call147 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  br i1 %tobool145, label %cond.false152, label %cond.true146

cond.true146:                                     ; preds = %cond.false141
  %sv_any148 = getelementptr inbounds %struct.sv* %call147, i64 0, i32 0
  %39 = load i8** %sv_any148, align 8, !tbaa !0
  %xiv_iv149 = getelementptr inbounds i8* %39, i64 24
  %40 = bitcast i8* %xiv_iv149 to i64*
  %41 = load i64* %40, align 8, !tbaa !4
  %cmp150 = icmp ne i64 %41, 0
  %conv151 = zext i1 %cmp150 to i32
  br label %cond.end173

cond.false152:                                    ; preds = %cond.false141
  %sv_flags154 = getelementptr inbounds %struct.sv* %call147, i64 0, i32 2
  %42 = load i32* %sv_flags154, align 4, !tbaa !3
  %and155 = and i32 %42, 131072
  %tobool156 = icmp eq i32 %and155, 0
  %call158 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  br i1 %tobool156, label %cond.false163, label %cond.true157

cond.true157:                                     ; preds = %cond.false152
  %sv_any159 = getelementptr inbounds %struct.sv* %call158, i64 0, i32 0
  %43 = load i8** %sv_any159, align 8, !tbaa !0
  %xnv_nv160 = getelementptr inbounds i8* %43, i64 32
  %44 = bitcast i8* %xnv_nv160 to double*
  %45 = load double* %44, align 8, !tbaa !6
  %cmp161 = fcmp une double %45, 0.000000e+00
  %conv162 = zext i1 %cmp161 to i32
  br label %cond.end173

cond.false163:                                    ; preds = %cond.false152
  %call165 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %call158) #7
  %conv166 = sext i8 %call165 to i32
  br label %cond.end173

cond.end173:                                      ; preds = %land.end138, %cond.true157, %cond.false163, %cond.true146
  %cond174 = phi i32 [ %cond140, %land.end138 ], [ %conv151, %cond.true146 ], [ %conv162, %cond.true157 ], [ %conv166, %cond.false163 ]
  %tobool175 = icmp ne i32 %cond174, 0
  %cond176 = zext i1 %tobool175 to i32
  store i32 %cond176, i32* %forgive_me, align 4, !tbaa !3
  br i1 %tobool175, label %if.else181, label %if.then179

if.then179:                                       ; preds = %cond.end173.thread, %cond.end173, %if.then105
  %s_dirty180 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty180, align 4, !tbaa !3
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str52, i64 0, i64 0)) #7
  br label %if.end193

if.else181:                                       ; preds = %cond.end173, %lor.lhs.false108
  %call182 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %call38) #7
  %46 = load %struct.av** %aseen, align 8, !tbaa !0
  store %struct.sv* %call182, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool184 = icmp eq %struct.sv* %call182, null
  br i1 %tobool184, label %land.end189, label %land.rhs185

land.rhs185:                                      ; preds = %if.else181
  %sv_refcnt186 = getelementptr inbounds %struct.sv* %call182, i64 0, i32 1
  %47 = load i32* %sv_refcnt186, align 4, !tbaa !3
  %inc187 = add i32 %47, 1
  store i32 %inc187, i32* %sv_refcnt186, align 4, !tbaa !3
  br label %land.end189

land.end189:                                      ; preds = %if.else181, %land.rhs185
  %call191 = tail call %struct.sv** @Perl_av_store(%struct.av* %46, i32 %conv, %struct.sv* %call182) #7
  br label %return

if.end193:                                        ; preds = %land.lhs.true73, %cond.true85, %cond.false100, %land.lhs.true, %if.then179, %cond.true95
  tail call void @Perl_push_scope() #7
  tail call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %48 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %48, i32* @PL_tmps_floor, align 4, !tbaa !3
  %49 = load %struct.sv** %eval, align 8, !tbaa !0
  %sv_flags195 = getelementptr inbounds %struct.sv* %49, i64 0, i32 2
  %50 = load i32* %sv_flags195, align 4, !tbaa !3
  %and196 = and i32 %50, 524288
  %tobool197 = icmp eq i32 %and196, 0
  br i1 %tobool197, label %if.else304, label %land.lhs.true198

land.lhs.true198:                                 ; preds = %if.end193
  %sv_any200 = getelementptr inbounds %struct.sv* %49, i64 0, i32 0
  %51 = load i8** %sv_any200, align 8, !tbaa !0
  %xrv_rv201 = bitcast i8* %51 to %struct.sv**
  %52 = load %struct.sv** %xrv_rv201, align 8, !tbaa !0
  %sv_flags202 = getelementptr inbounds %struct.sv* %52, i64 0, i32 2
  %53 = load i32* %sv_flags202, align 4, !tbaa !3
  %and203 = and i32 %53, 255
  %cmp204 = icmp eq i32 %and203, 12
  br i1 %cmp204, label %if.then206, label %if.else304

if.then206:                                       ; preds = %land.lhs.true198
  %call207 = tail call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([2 x i8]* @.str53, i64 0, i64 0), i32 1) #7
  tail call void @Perl_sv_setpv(%struct.sv* %call207, i8* getelementptr inbounds ([1 x i8]* @.str15, i64 0, i64 0)) #7
  %54 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr208 = getelementptr inbounds i32* %54, i64 1
  store i32* %incdec.ptr208, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %55 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp209 = icmp eq i32* %incdec.ptr208, %55
  br i1 %cmp209, label %if.then211, label %if.end212

if.then211:                                       ; preds = %if.then206
  tail call void @Perl_markstack_grow() #7
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end212

if.end212:                                        ; preds = %if.then211, %if.then206
  %56 = phi i32* [ %.pre, %if.then211 ], [ %incdec.ptr208, %if.then206 ]
  %57 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %57 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div438 = lshr exact i64 %sub.ptr.sub, 3
  %conv213 = trunc i64 %sub.ptr.div438 to i32
  store i32 %conv213, i32* %56, align 4, !tbaa !3
  %58 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast214 = ptrtoint %struct.sv** %58 to i64
  %sub.ptr.sub216 = sub i64 %sub.ptr.lhs.cast214, %sub.ptr.lhs.cast
  %cmp218 = icmp slt i64 %sub.ptr.sub216, 8
  br i1 %cmp218, label %if.then220, label %if.end222

if.then220:                                       ; preds = %if.end212
  %call221 = tail call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #7
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %if.end212
  %sp.0 = phi %struct.sv** [ %call221, %if.then220 ], [ %0, %if.end212 ]
  %call223 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %call38) #7
  %call224 = tail call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call223) #7
  %incdec.ptr225 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call224, %struct.sv** %incdec.ptr225, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr225, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %59 = load %struct.sv** %eval, align 8, !tbaa !0
  %call227 = tail call i32 @Perl_call_sv(%struct.sv* %59, i32 0) #7
  %60 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp228 = icmp eq i32 %call227, 1
  br i1 %cmp228, label %if.end232, label %if.then230

if.then230:                                       ; preds = %if.end222
  %s_dirty231 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty231, align 4, !tbaa !3
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str54, i64 0, i64 0)) #7
  br label %if.end232

if.end232:                                        ; preds = %if.end222, %if.then230
  %incdec.ptr233 = getelementptr inbounds %struct.sv** %60, i64 -1
  %61 = load %struct.sv** %60, align 8, !tbaa !0
  %tobool234 = icmp eq %struct.sv* %call207, null
  br i1 %tobool234, label %if.end303, label %cond.false236

cond.false236:                                    ; preds = %if.end232
  %sv_flags237 = getelementptr inbounds %struct.sv* %call207, i64 0, i32 2
  %62 = load i32* %sv_flags237, align 4, !tbaa !3
  %and238 = and i32 %62, 262144
  %tobool239 = icmp eq i32 %and238, 0
  br i1 %tobool239, label %cond.false257, label %cond.true240

cond.true240:                                     ; preds = %cond.false236
  %sv_any241 = getelementptr inbounds %struct.sv* %call207, i64 0, i32 0
  %63 = load i8** %sv_any241, align 8, !tbaa !0
  %64 = bitcast i8* %63 to %struct.xpv*
  store %struct.xpv* %64, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool242 = icmp eq i8* %63, null
  br i1 %tobool242, label %if.end303, label %land.lhs.true243

land.lhs.true243:                                 ; preds = %cond.true240
  %xpv_cur244 = getelementptr inbounds i8* %63, i64 8
  %65 = bitcast i8* %xpv_cur244 to i64*
  %66 = load i64* %65, align 8, !tbaa !4
  %cmp245 = icmp ugt i64 %66, 1
  br i1 %cmp245, label %if.then279, label %lor.lhs.false247

lor.lhs.false247:                                 ; preds = %land.lhs.true243
  %tobool249 = icmp eq i64 %66, 0
  br i1 %tobool249, label %if.end303, label %land.lhs.true250

land.lhs.true250:                                 ; preds = %lor.lhs.false247
  %xpv_pv251 = bitcast i8* %63 to i8**
  %67 = load i8** %xpv_pv251, align 8, !tbaa !0
  %68 = load i8* %67, align 1, !tbaa !1
  %cmp253 = icmp eq i8 %68, 48
  br i1 %cmp253, label %if.end303, label %if.then279

cond.false257:                                    ; preds = %cond.false236
  %and259 = and i32 %62, 65536
  %tobool260 = icmp eq i32 %and259, 0
  br i1 %tobool260, label %cond.false266, label %cond.true261

cond.true261:                                     ; preds = %cond.false257
  %sv_any262 = getelementptr inbounds %struct.sv* %call207, i64 0, i32 0
  %69 = load i8** %sv_any262, align 8, !tbaa !0
  %xiv_iv263 = getelementptr inbounds i8* %69, i64 24
  %70 = bitcast i8* %xiv_iv263 to i64*
  %71 = load i64* %70, align 8, !tbaa !4
  %cmp264 = icmp eq i64 %71, 0
  br i1 %cmp264, label %if.end303, label %if.then279

cond.false266:                                    ; preds = %cond.false257
  %and268 = and i32 %62, 131072
  %tobool269 = icmp eq i32 %and268, 0
  br i1 %tobool269, label %cond.false275, label %cond.true270

cond.true270:                                     ; preds = %cond.false266
  %sv_any271 = getelementptr inbounds %struct.sv* %call207, i64 0, i32 0
  %72 = load i8** %sv_any271, align 8, !tbaa !0
  %xnv_nv272 = getelementptr inbounds i8* %72, i64 32
  %73 = bitcast i8* %xnv_nv272 to double*
  %74 = load double* %73, align 8, !tbaa !6
  %cmp273 = fcmp une double %74, 0.000000e+00
  br i1 %cmp273, label %if.then279, label %if.end303

cond.false275:                                    ; preds = %cond.false266
  %call276 = tail call signext i8 @Perl_sv_2bool(%struct.sv* %call207) #7
  %tobool278 = icmp eq i8 %call276, 0
  br i1 %tobool278, label %if.end303, label %if.then279

if.then279:                                       ; preds = %land.lhs.true250, %cond.true261, %cond.false275, %land.lhs.true243, %cond.true270
  %s_dirty280 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty280, align 4, !tbaa !3
  %sv_flags281 = getelementptr inbounds %struct.sv* %call38, i64 0, i32 2
  %75 = load i32* %sv_flags281, align 4, !tbaa !3
  %and282 = and i32 %75, 262144
  %cmp283 = icmp eq i32 %and282, 0
  br i1 %cmp283, label %cond.false288, label %cond.true285

cond.true285:                                     ; preds = %if.then279
  %sv_any286 = getelementptr inbounds %struct.sv* %call38, i64 0, i32 0
  %76 = load i8** %sv_any286, align 8, !tbaa !0
  %xpv_pv287 = bitcast i8* %76 to i8**
  %77 = load i8** %xpv_pv287, align 8, !tbaa !0
  br label %cond.end290

cond.false288:                                    ; preds = %if.then279
  %call289 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %call38) #7
  br label %cond.end290

cond.end290:                                      ; preds = %cond.false288, %cond.true285
  %cond291 = phi i8* [ %77, %cond.true285 ], [ %call289, %cond.false288 ]
  %78 = load i32* %sv_flags237, align 4, !tbaa !3
  %and293 = and i32 %78, 262144
  %cmp294 = icmp eq i32 %and293, 0
  br i1 %cmp294, label %cond.false299, label %cond.true296

cond.true296:                                     ; preds = %cond.end290
  %sv_any297 = getelementptr inbounds %struct.sv* %call207, i64 0, i32 0
  %79 = load i8** %sv_any297, align 8, !tbaa !0
  %xpv_pv298 = bitcast i8* %79 to i8**
  %80 = load i8** %xpv_pv298, align 8, !tbaa !0
  br label %cond.end301

cond.false299:                                    ; preds = %cond.end290
  %call300 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %call207) #7
  br label %cond.end301

cond.end301:                                      ; preds = %cond.false299, %cond.true296
  %cond302 = phi i8* [ %80, %cond.true296 ], [ %call300, %cond.false299 ]
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([28 x i8]* @.str55, i64 0, i64 0), i8* %cond291, i8* %cond302) #7
  br label %if.end303

if.end303:                                        ; preds = %land.lhs.true250, %lor.lhs.false247, %cond.true240, %cond.true261, %cond.false275, %if.end232, %cond.end301, %cond.true270
  store %struct.sv** %incdec.ptr233, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  br label %if.end317

if.else304:                                       ; preds = %if.end193, %land.lhs.true198
  %sv_flags305 = getelementptr inbounds %struct.sv* %call38, i64 0, i32 2
  %81 = load i32* %sv_flags305, align 4, !tbaa !3
  %and306 = and i32 %81, 262144
  %cmp307 = icmp eq i32 %and306, 0
  br i1 %cmp307, label %cond.false312, label %cond.true309

cond.true309:                                     ; preds = %if.else304
  %sv_any310 = getelementptr inbounds %struct.sv* %call38, i64 0, i32 0
  %82 = load i8** %sv_any310, align 8, !tbaa !0
  %xpv_pv311 = bitcast i8* %82 to i8**
  %83 = load i8** %xpv_pv311, align 8, !tbaa !0
  br label %cond.end314

cond.false312:                                    ; preds = %if.else304
  %call313 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %call38) #7
  br label %cond.end314

cond.end314:                                      ; preds = %cond.false312, %cond.true309
  %cond315 = phi i8* [ %83, %cond.true309 ], [ %call313, %cond.false312 ]
  %call316 = tail call %struct.sv* @Perl_eval_pv(i8* %cond315, i32 1) #7
  br label %if.end317

if.end317:                                        ; preds = %cond.end314, %if.end303
  %cv.0 = phi %struct.sv* [ %61, %if.end303 ], [ %call316, %cond.end314 ]
  %tobool318 = icmp eq %struct.sv* %cv.0, null
  br i1 %tobool318, label %if.else333, label %land.lhs.true319

land.lhs.true319:                                 ; preds = %if.end317
  %sv_flags320 = getelementptr inbounds %struct.sv* %cv.0, i64 0, i32 2
  %84 = load i32* %sv_flags320, align 4, !tbaa !3
  %and321 = and i32 %84, 524288
  %tobool322 = icmp eq i32 %and321, 0
  br i1 %tobool322, label %if.else333, label %land.lhs.true323

land.lhs.true323:                                 ; preds = %land.lhs.true319
  %sv_any324 = getelementptr inbounds %struct.sv* %cv.0, i64 0, i32 0
  %85 = load i8** %sv_any324, align 8, !tbaa !0
  %xrv_rv325 = bitcast i8* %85 to %struct.sv**
  %86 = load %struct.sv** %xrv_rv325, align 8, !tbaa !0
  %sv_flags326 = getelementptr inbounds %struct.sv* %86, i64 0, i32 2
  %87 = load i32* %sv_flags326, align 4, !tbaa !3
  %and327 = and i32 %87, 255
  %cmp328 = icmp eq i32 %and327, 12
  br i1 %cmp328, label %if.end346, label %if.else333

if.else333:                                       ; preds = %land.lhs.true319, %if.end317, %land.lhs.true323
  %s_dirty334 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty334, align 4, !tbaa !3
  %sv_flags335 = getelementptr inbounds %struct.sv* %call38, i64 0, i32 2
  %88 = load i32* %sv_flags335, align 4, !tbaa !3
  %and336 = and i32 %88, 262144
  %cmp337 = icmp eq i32 %and336, 0
  br i1 %cmp337, label %cond.false342, label %cond.true339

cond.true339:                                     ; preds = %if.else333
  %sv_any340 = getelementptr inbounds %struct.sv* %call38, i64 0, i32 0
  %89 = load i8** %sv_any340, align 8, !tbaa !0
  %xpv_pv341 = bitcast i8* %89 to i8**
  %90 = load i8** %xpv_pv341, align 8, !tbaa !0
  br label %cond.end344

cond.false342:                                    ; preds = %if.else333
  %call343 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %call38) #7
  br label %cond.end344

cond.end344:                                      ; preds = %cond.false342, %cond.true339
  %cond345 = phi i8* [ %90, %cond.true339 ], [ %call343, %cond.false342 ]
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([52 x i8]* @.str56, i64 0, i64 0), i8* %cond345) #7
  br label %if.end346

if.end346:                                        ; preds = %land.lhs.true323, %cond.end344
  %91 = phi %struct.sv* [ %call, %cond.end344 ], [ %86, %land.lhs.true323 ]
  store %struct.sv* %91, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool347 = icmp ne %struct.sv* %91, null
  br i1 %tobool347, label %land.rhs348, label %land.end352

land.rhs348:                                      ; preds = %if.end346
  %sv_refcnt349 = getelementptr inbounds %struct.sv* %91, i64 0, i32 1
  %92 = load i32* %sv_refcnt349, align 4, !tbaa !3
  %inc350 = add i32 %92, 1
  store i32 %inc350, i32* %sv_refcnt349, align 4, !tbaa !3
  br label %land.end352

land.end352:                                      ; preds = %land.rhs348, %if.end346
  tail call void @Perl_sv_free(%struct.sv* %call38) #7
  %93 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %94 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp354 = icmp sgt i32 %93, %94
  br i1 %cmp354, label %if.then356, label %if.end357

if.then356:                                       ; preds = %land.end352
  tail call void @Perl_free_tmps() #7
  br label %if.end357

if.end357:                                        ; preds = %if.then356, %land.end352
  tail call void @Perl_pop_scope() #7
  %95 = load %struct.av** %aseen, align 8, !tbaa !0
  store %struct.sv* %91, %struct.sv** @PL_Sv, align 8, !tbaa !0
  br i1 %tobool347, label %land.rhs360, label %land.end364

land.rhs360:                                      ; preds = %if.end357
  %sv_refcnt361 = getelementptr inbounds %struct.sv* %91, i64 0, i32 1
  %96 = load i32* %sv_refcnt361, align 4, !tbaa !3
  %inc362 = add i32 %96, 1
  store i32 %inc362, i32* %sv_refcnt361, align 4, !tbaa !3
  br label %land.end364

land.end364:                                      ; preds = %land.rhs360, %if.end357
  %call366 = tail call %struct.sv** @Perl_av_store(%struct.av* %95, i32 %conv, %struct.sv* %91) #7
  br label %return

return:                                           ; preds = %entry, %if.else27, %if.then18, %if.end, %land.end364, %land.end189
  %retval.0 = phi %struct.sv* [ %91, %land.end364 ], [ %call182, %land.end189 ], [ null, %entry ], [ null, %if.end ], [ null, %if.then18 ], [ null, %if.else27 ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #2

; Function Attrs: optsize
declare void @Perl_sv_catpv(%struct.sv*, i8*) #2

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #2

; Function Attrs: optsize
declare void @Perl_push_scope() #2

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #2

; Function Attrs: optsize
declare void @Perl_markstack_grow() #2

; Function Attrs: optsize
declare %struct.sv** @Perl_stack_grow(%struct.sv**, %struct.sv**, i32) #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(%struct.sv*, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_eval_pv(i8*, i32) #2

; Function Attrs: optsize
declare void @Perl_free_tmps() #2

; Function Attrs: optsize
declare void @Perl_pop_scope() #2

; Function Attrs: optsize
declare %struct.he* @Perl_hv_store_ent(%struct.hv*, %struct.sv*, %struct.sv*, i32) #2

; Function Attrs: optsize
declare %struct.sv** @Perl_hv_store_flags(%struct.hv*, i8*, i32, %struct.sv*, i32, i32) #2

; Function Attrs: optsize
declare i8* @Perl_sv_reftype(%struct.sv*, i32) #2

; Function Attrs: optsize
declare i32 @Perl_eval_sv(%struct.sv*, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc %struct.sv* @pkg_can(%struct.hv* %cache, %struct.hv* %pkg, i8* %method) #1 {
entry:
  %sv_any = getelementptr inbounds %struct.hv* %pkg, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 10
  %1 = load i8** %xhv_name, align 8, !tbaa !0
  %call = tail call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  %call3 = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %cache, i8* %1, i32 %conv, i32 0) #7
  %tobool = icmp eq %struct.sv** %call3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.sv** %call3, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %3, 118423552
  %tobool4 = icmp eq i32 %and, 0
  %. = select i1 %tobool4, %struct.sv* null, %struct.sv* %2
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv* %pkg, i8* %method, i32 0) #7
  %tobool.i = icmp eq %struct.gv* %call.i, null
  br i1 %tobool.i, label %if.else.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end
  %sv_flags.i = getelementptr inbounds %struct.gv* %call.i, i64 0, i32 2
  %4 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and.i = and i32 %4, 255
  %cmp.i = icmp eq i32 %and.i, 13
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %sv_any.i = getelementptr inbounds %struct.gv* %call.i, i64 0, i32 0
  %5 = load %struct.xpvgv** %sv_any.i, align 8, !tbaa !0
  %xgv_gp.i = getelementptr inbounds %struct.xpvgv* %5, i64 0, i32 7
  %6 = load %struct.gp** %xgv_gp.i, align 8, !tbaa !0
  %gp_cv.i = getelementptr inbounds %struct.gp* %6, i64 0, i32 7
  %7 = load %struct.cv** %gp_cv.i, align 8, !tbaa !0
  %8 = bitcast %struct.cv* %7 to %struct.sv*
  %call1.i = tail call %struct.sv* @Perl_newRV(%struct.sv* %8) #7
  br label %pkg_fetchmeth.exit

if.else.i:                                        ; preds = %land.lhs.true.i, %if.end
  %call2.i = tail call %struct.sv* @Perl_newSVsv(%struct.sv* @PL_sv_undef) #7
  br label %pkg_fetchmeth.exit

pkg_fetchmeth.exit:                               ; preds = %if.then.i, %if.else.i
  %sv.0.i = phi %struct.sv* [ %call1.i, %if.then.i ], [ %call2.i, %if.else.i ]
  %9 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_name.i = getelementptr inbounds %struct.xpvhv* %9, i64 0, i32 10
  %10 = load i8** %xhv_name.i, align 8, !tbaa !0
  %call6.i = tail call i64 @strlen(i8* %10) #7
  %conv.i = trunc i64 %call6.i to i32
  %call7.i = tail call %struct.sv** @Perl_hv_store(%struct.hv* %cache, i8* %10, i32 %conv.i, %struct.sv* %sv.0.i, i32 0) #7
  %sv_flags8.i = getelementptr inbounds %struct.sv* %sv.0.i, i64 0, i32 2
  %11 = load i32* %sv_flags8.i, align 4, !tbaa !3
  %and9.i = and i32 %11, 118423552
  %tobool10.i = icmp ne i32 %and9.i, 0
  %cond.i = select i1 %tobool10.i, %struct.sv* %sv.0.i, %struct.sv* null
  br label %return

return:                                           ; preds = %if.then, %pkg_fetchmeth.exit
  %retval.0 = phi %struct.sv* [ %cond.i, %pkg_fetchmeth.exit ], [ %., %if.then ]
  ret %struct.sv* %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV(%struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_delete(%struct.hv*, i8*, i32, i32) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare %struct.gv* @Perl_gv_fetchmethod_autoload(%struct.hv*, i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %sv) #1 {
entry:
  %sv.addr = alloca %struct.sv*, align 8
  %tagval = alloca i32, align 4
  store %struct.sv* %sv, %struct.sv** %sv.addr, align 8, !tbaa !0
  %hseen1 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 2
  %0 = load %struct.hv** %hseen1, align 8, !tbaa !0
  %1 = bitcast %struct.sv** %sv.addr to i8*
  %call = call %struct.sv** @Perl_hv_fetch(%struct.hv* %0, i8* %1, i32 8, i32 0) #7
  %tobool = icmp eq %struct.sv** %call, null
  br i1 %tobool, label %if.end125, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.sv** %sv.addr, align 8, !tbaa !0
  %cmp = icmp eq %struct.sv* %2, @PL_sv_undef
  br i1 %cmp, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %3 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  br label %undef_special_case

if.end:                                           ; preds = %if.then
  %4 = load %struct.sv** %call, align 8, !tbaa !0
  %5 = ptrtoint %struct.sv* %4 to i64
  %conv = trunc i64 %5 to i32
  %6 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv) #3, !srcloc !27
  store i32 %6, i32* %tagval, align 4, !tbaa !3
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %7 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool3 = icmp eq %struct._PerlIO** %7, null
  br i1 %tobool3, label %if.then4, label %if.else42

if.then4:                                         ; preds = %if.end
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %8 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %9 = load i8** %aend, align 8, !tbaa !0
  %cmp6 = icmp ult i8* %8, %9
  br i1 %cmp6, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then4
  %incdec.ptr = getelementptr inbounds i8* %8, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 0, i8* %8, align 1, !tbaa !1
  br label %if.end49

if.else:                                          ; preds = %if.then4
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %10 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %11 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add12 = shl i64 %10, 32
  %conv14 = add i64 %add12, 35184372088832
  %sext = ashr exact i64 %conv14, 32
  %conv21 = and i64 %sext, -8192
  %call22 = call i8* @Perl_safesysrealloc(i8* %11, i64 %conv21) #7
  store i8* %call22, i8** %arena, align 8, !tbaa !0
  store i64 %conv21, i64* %asiz, align 8, !tbaa !4
  %sext185 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext185, 32
  %add.ptr = getelementptr inbounds i8* %call22, i64 %idx.ext
  %add.ptr35 = getelementptr inbounds i8* %call22, i64 %conv21
  store i8* %add.ptr35, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr40 = getelementptr inbounds i8* %call22, i64 %add.ptr.sum
  store i8* %incdec.ptr40, i8** %aptr, align 8, !tbaa !0
  store i8 0, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end49

if.else42:                                        ; preds = %if.end
  %call44 = call i32 @PerlIO_putc(%struct._PerlIO** %7, i32 0) #7
  %cmp45 = icmp eq i32 %call44, -1
  br i1 %cmp45, label %return, label %if.end49

if.end49:                                         ; preds = %if.else42, %if.then8, %if.else
  %12 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool51 = icmp eq %struct._PerlIO** %12, null
  br i1 %tobool51, label %if.then52, label %if.else117

if.then52:                                        ; preds = %if.end49
  %aptr54 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %13 = load i8** %aptr54, align 8, !tbaa !0
  %add.ptr55 = getelementptr inbounds i8* %13, i64 4
  %aend57 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %14 = load i8** %aend57, align 8, !tbaa !0
  %cmp58 = icmp ugt i8* %add.ptr55, %14
  br i1 %cmp58, label %if.then60, label %if.end99

if.then60:                                        ; preds = %if.then52
  %asiz63 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %15 = load i64* %asiz63, align 8, !tbaa !4
  %arena72 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %16 = load i8** %arena72, align 8, !tbaa !0
  %sub.ptr.lhs.cast73 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %16 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  %add65 = shl i64 %15, 32
  %conv67 = add i64 %add65, 35197256990720
  %sext186 = ashr exact i64 %conv67, 32
  %conv79 = and i64 %sext186, -8192
  %call81 = call i8* @Perl_safesysrealloc(i8* %16, i64 %conv79) #7
  store i8* %call81, i8** %arena72, align 8, !tbaa !0
  store i64 %conv79, i64* %asiz63, align 8, !tbaa !4
  %sext187 = shl i64 %sub.ptr.sub75, 32
  %idx.ext89 = ashr exact i64 %sext187, 32
  %add.ptr90 = getelementptr inbounds i8* %call81, i64 %idx.ext89
  store i8* %add.ptr90, i8** %aptr54, align 8, !tbaa !0
  %add.ptr96 = getelementptr inbounds i8* %call81, i64 %conv79
  store i8* %add.ptr96, i8** %aend57, align 8, !tbaa !0
  br label %if.end99

if.end99:                                         ; preds = %if.then60, %if.then52
  %17 = phi i8* [ %add.ptr90, %if.then60 ], [ %13, %if.then52 ]
  %18 = ptrtoint i8* %17 to i64
  %and104 = and i64 %18, -4
  %cmp105 = icmp eq i64 %18, %and104
  br i1 %cmp105, label %if.then107, label %if.else110

if.then107:                                       ; preds = %if.end99
  %19 = load i32* %tagval, align 4, !tbaa !3
  %20 = bitcast i8* %17 to i32*
  store i32 %19, i32* %20, align 4, !tbaa !3
  br label %if.end113

if.else110:                                       ; preds = %if.end99
  %21 = bitcast i8* %17 to i32*
  %22 = load i32* %tagval, align 4
  store i32 %22, i32* %21, align 1
  %.pre188 = load i8** %aptr54, align 8, !tbaa !0
  br label %if.end113

if.end113:                                        ; preds = %if.else110, %if.then107
  %23 = phi i8* [ %.pre188, %if.else110 ], [ %17, %if.then107 ]
  %add.ptr116 = getelementptr inbounds i8* %23, i64 4
  store i8* %add.ptr116, i8** %aptr54, align 8, !tbaa !0
  br label %if.end124

if.else117:                                       ; preds = %if.end49
  %24 = bitcast i32* %tagval to i8*
  %call119 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %12, i8* %24, i64 4) #7
  %cmp120 = icmp eq i64 %call119, 4
  br i1 %cmp120, label %if.end124, label %return

if.end124:                                        ; preds = %if.else117, %if.end113
  br label %return

if.end125:                                        ; preds = %entry
  %tagnum126 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %25 = load i64* %tagnum126, align 8, !tbaa !4
  %inc127 = add nsw i64 %25, 1
  store i64 %inc127, i64* %tagnum126, align 8, !tbaa !4
  %26 = inttoptr i64 %inc127 to %struct.sv*
  %call129 = call %struct.sv** @Perl_hv_store(%struct.hv* %0, i8* %1, i32 8, %struct.sv* %26, i32 0) #7
  %tobool130 = icmp eq %struct.sv** %call129, null
  br i1 %tobool130, label %return, label %if.end132

if.end132:                                        ; preds = %if.end125
  %27 = load %struct.sv** %sv.addr, align 8, !tbaa !0
  %call133 = call fastcc i32 @sv_type(%struct.sv* %27) #6
  %.pre = load %struct.sv** %sv.addr, align 8, !tbaa !0
  br label %undef_special_case

undef_special_case:                               ; preds = %if.end132, %if.then2
  %28 = phi %struct.sv* [ @PL_sv_undef, %if.then2 ], [ %.pre, %if.end132 ]
  %type.0 = phi i32 [ 1, %if.then2 ], [ %call133, %if.end132 ]
  %sv_flags = getelementptr inbounds %struct.sv* %28, i64 0, i32 2
  %29 = load i32* %sv_flags, align 4, !tbaa !3
  %and134 = and i32 %29, 4096
  %tobool135 = icmp eq i32 %and134, 0
  br i1 %tobool135, label %if.else138, label %if.then136

if.then136:                                       ; preds = %undef_special_case
  %sv_any = getelementptr inbounds %struct.sv* %28, i64 0, i32 0
  %30 = load i8** %sv_any, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %30, i64 48
  %31 = bitcast i8* %xmg_stash to %struct.hv**
  %32 = load %struct.hv** %31, align 8, !tbaa !0
  %call137 = call fastcc i32 @store_blessed(%struct.stcxt* %cxt, %struct.sv* %28, i32 %type.0, %struct.hv* %32) #6
  br label %return

if.else138:                                       ; preds = %undef_special_case
  %idxprom = sext i32 %type.0 to i64
  %arrayidx = getelementptr inbounds [8 x i32 (%struct.stcxt*, %struct.sv*)*]* @sv_store, i64 0, i64 %idxprom
  %33 = load i32 (%struct.stcxt*, %struct.sv*)** %arrayidx, align 8, !tbaa !0
  %call139 = call i32 %33(%struct.stcxt* %cxt, %struct.sv* %28) #7
  br label %return

return:                                           ; preds = %if.then136, %if.else138, %if.end125, %if.else117, %if.else42, %if.end124
  %retval.0 = phi i32 [ 0, %if.end124 ], [ -1, %if.else42 ], [ -1, %if.else117 ], [ -1, %if.end125 ], [ %call137, %if.then136 ], [ %call139, %if.else138 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #2

; Function Attrs: optsize
declare i32 @PerlIO_putc(%struct._PerlIO**, i32) #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_write(%struct._PerlIO**, i8*, i64) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @store_blessed(%struct.stcxt* %cxt, %struct.sv* %sv, i32 %type, %struct.hv* %pkg) #1 {
entry:
  %len.i = alloca i32, align 4
  %len2.i = alloca i64, align 8
  %classnum.i = alloca i32, align 4
  %xsv.i = alloca %struct.sv*, align 8
  %y.i = alloca i32, align 4
  %y875.i = alloca i32, align 4
  %wlen2.i = alloca i32, align 4
  %y1176.i = alloca i32, align 4
  %len3.i = alloca i32, align 4
  %y1477.i = alloca i32, align 4
  %tagval.i = alloca i32, align 4
  %len = alloca i32, align 4
  %classnum = alloca i32, align 4
  %y = alloca i32, align 4
  %y546 = alloca i32, align 4
  %hook1 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 8
  %0 = load %struct.hv** %hook1, align 8, !tbaa !0
  %call = call fastcc %struct.sv* @pkg_can(%struct.hv* %0, %struct.hv* %pkg, i8* getelementptr inbounds ([16 x i8]* @.str82, i64 0, i64 0)) #6
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %len.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #3
  %2 = bitcast i64* %len2.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #3
  %3 = bitcast i32* %classnum.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #3
  %4 = bitcast %struct.sv** %xsv.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  %5 = bitcast i32* %y.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #3
  %6 = bitcast i32* %y875.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #3
  %7 = bitcast i32* %wlen2.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #3
  %8 = bitcast i32* %y1176.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #3
  %9 = bitcast i32* %len3.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #3
  %10 = bitcast i32* %y1477.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #3
  %11 = bitcast i32* %tagval.i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %11) #3
  %optype.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 1
  %12 = load i32* %optype.i, align 4, !tbaa !3
  %and.i = and i32 %12, 4
  switch i32 %type, label %sw.default7.i [
    i32 1, label %sw.epilog8.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb3.i
  ]

sw.bb1.i:                                         ; preds = %if.then
  br label %sw.epilog8.i

sw.bb2.i:                                         ; preds = %if.then
  br label %sw.epilog8.i

sw.bb3.i:                                         ; preds = %if.then
  %sv_flags.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %13 = load i32* %sv_flags.i, align 4, !tbaa !3
  %and4.i = and i32 %13, 255
  switch i32 %and4.i, label %sw.default.i [
    i32 11, label %sw.epilog8.i
    i32 10, label %sw.bb6.i
  ]

sw.bb6.i:                                         ; preds = %sw.bb3.i
  br label %sw.epilog8.i

sw.default.i:                                     ; preds = %sw.bb3.i
  br label %sw.epilog8.i

sw.default7.i:                                    ; preds = %if.then
  %s_dirty.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty.i, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([44 x i8]* @.str84, i64 0, i64 0), i32 %type) #7
  br label %sw.epilog8.i

sw.epilog8.i:                                     ; preds = %sw.default7.i, %sw.default.i, %sw.bb6.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.then
  %eflags.0.i = phi i8 [ 0, %sw.default7.i ], [ 4, %sw.default.i ], [ 5, %sw.bb6.i ], [ 0, %sw.bb2.i ], [ 0, %sw.bb1.i ], [ 0, %if.then ], [ 6, %sw.bb3.i ]
  %mtype.0.i = phi i32 [ 0, %sw.default7.i ], [ 113, %sw.default.i ], [ 80, %sw.bb6.i ], [ 0, %sw.bb2.i ], [ 0, %sw.bb1.i ], [ 0, %if.then ], [ 80, %sw.bb3.i ]
  %obj_type.0.i = phi i32 [ undef, %sw.default7.i ], [ 3, %sw.default.i ], [ 3, %sw.bb6.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.then ], [ 3, %sw.bb3.i ]
  %or.i = or i32 %obj_type.0.i, 64
  %conv.i = trunc i32 %or.i to i8
  %sv_any.i = getelementptr inbounds %struct.hv* %pkg, i64 0, i32 0
  %14 = load %struct.xpvhv** %sv_any.i, align 8, !tbaa !0
  %xhv_name.i = getelementptr inbounds %struct.xpvhv* %14, i64 0, i32 10
  %15 = load i8** %xhv_name.i, align 8, !tbaa !0
  %call.i = call i64 @strlen(i8* %15) #7
  %conv9.i = trunc i64 %call.i to i32
  store i32 %conv9.i, i32* %len.i, align 4, !tbaa !3
  %call10.i = call %struct.sv* @Perl_newRV_noinc(%struct.sv* %sv) #7
  %16 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %17 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %17, i32* @PL_tmps_floor, align 4, !tbaa !3
  %18 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr.i.i = getelementptr inbounds i32* %18, i64 1
  store i32* %incdec.ptr.i.i, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %19 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp.i.i = icmp eq i32* %incdec.ptr.i.i, %19
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %sw.epilog8.i
  call void @Perl_markstack_grow() #7
  %.pre.i.i = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %sw.epilog8.i
  %20 = phi i32* [ %.pre.i.i, %if.then.i.i ], [ %incdec.ptr.i.i, %sw.epilog8.i ]
  %21 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i.i = ptrtoint %struct.sv** %16 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint %struct.sv** %21 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div47.i.i = lshr exact i64 %sub.ptr.sub.i.i, 3
  %conv.i.i = trunc i64 %sub.ptr.div47.i.i to i32
  store i32 %conv.i.i, i32* %20, align 4, !tbaa !3
  %22 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast1.i.i = ptrtoint %struct.sv** %22 to i64
  %sub.ptr.sub3.i.i = sub i64 %sub.ptr.lhs.cast1.i.i, %sub.ptr.lhs.cast.i.i
  %cmp5.i.i = icmp slt i64 %sub.ptr.sub3.i.i, 8
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.end8.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = call %struct.sv** @Perl_stack_grow(%struct.sv** %16, %struct.sv** %16, i32 1) #7
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then7.i.i, %if.end.i.i
  %sp.0.i.i = phi %struct.sv** [ %call.i.i, %if.then7.i.i ], [ %16, %if.end.i.i ]
  %incdec.ptr9.i.i = getelementptr inbounds %struct.sv** %sp.0.i.i, i64 1
  store %struct.sv* %call10.i, %struct.sv** %incdec.ptr9.i.i, align 8, !tbaa !0
  %23 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast10.i.i = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.rhs.cast11.i.i = ptrtoint %struct.sv** %incdec.ptr9.i.i to i64
  %sub.ptr.sub12.i.i = sub i64 %sub.ptr.lhs.cast10.i.i, %sub.ptr.rhs.cast11.i.i
  %cmp14.i.i = icmp slt i64 %sub.ptr.sub12.i.i, 8
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.end18.i.i

if.then16.i.i:                                    ; preds = %if.end8.i.i
  %call17.i.i = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr9.i.i, %struct.sv** %incdec.ptr9.i.i, i32 1) #7
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then16.i.i, %if.end8.i.i
  %sp.1.i.i = phi %struct.sv** [ %call17.i.i, %if.then16.i.i ], [ %incdec.ptr9.i.i, %if.end8.i.i ]
  %conv19.i.i1010 = zext i32 %and.i to i64
  %call20.i.i = call %struct.sv* @Perl_newSViv(i64 %conv19.i.i1010) #7
  %call21.i.i = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call20.i.i) #7
  %incdec.ptr22.i.i = getelementptr inbounds %struct.sv** %sp.1.i.i, i64 1
  store %struct.sv* %call21.i.i, %struct.sv** %incdec.ptr22.i.i, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr22.i.i, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call23.i.i = call i32 @Perl_call_sv(%struct.sv* %call, i32 1) #7
  %24 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call24.i.i = call %struct.av* @Perl_newAV() #7
  %cmp2549.i.i = icmp sgt i32 %call23.i.i, 0
  br i1 %cmp2549.i.i, label %for.body.lr.ph.i.i, label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end18.i.i
  %25 = add i32 %call23.i.i, -1
  %26 = zext i32 %25 to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %land.end.i.i, %for.body.lr.ph.i.i
  %i.051.in.i.i = phi i32 [ %call23.i.i, %for.body.lr.ph.i.i ], [ %i.051.i.i, %land.end.i.i ]
  %sp.250.i.i = phi %struct.sv** [ %24, %for.body.lr.ph.i.i ], [ %incdec.ptr27.i.i, %land.end.i.i ]
  %i.051.i.i = add nsw i32 %i.051.in.i.i, -1
  %incdec.ptr27.i.i = getelementptr inbounds %struct.sv** %sp.250.i.i, i64 -1
  %27 = load %struct.sv** %sp.250.i.i, align 8, !tbaa !0
  store %struct.sv* %27, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool.i.i = icmp eq %struct.sv* %27, null
  br i1 %tobool.i.i, label %land.end.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.body.i.i
  %sv_refcnt.i.i = getelementptr inbounds %struct.sv* %27, i64 0, i32 1
  %28 = load i32* %sv_refcnt.i.i, align 4, !tbaa !3
  %inc.i.i = add i32 %28, 1
  store i32 %inc.i.i, i32* %sv_refcnt.i.i, align 4, !tbaa !3
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %for.body.i.i
  %call29.i.i = call %struct.sv** @Perl_av_store(%struct.av* %call24.i.i, i32 %i.051.i.i, %struct.sv* %27) #7
  %cmp25.i.i = icmp sgt i32 %i.051.i.i, 0
  br i1 %cmp25.i.i, label %for.body.i.i, label %for.cond.for.end_crit_edge.i.i

for.cond.for.end_crit_edge.i.i:                   ; preds = %land.end.i.i
  %29 = xor i64 %26, -1
  %scevgep.i.i = getelementptr %struct.sv** %24, i64 %29
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.cond.for.end_crit_edge.i.i, %if.end18.i.i
  %sp.2.lcssa.i.i = phi %struct.sv** [ %scevgep.i.i, %for.cond.for.end_crit_edge.i.i ], [ %24, %if.end18.i.i ]
  store %struct.sv** %sp.2.lcssa.i.i, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %30 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %31 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp30.i.i = icmp sgt i32 %30, %31
  br i1 %cmp30.i.i, label %if.then32.i.i, label %array_call.exit.i

if.then32.i.i:                                    ; preds = %for.end.i.i
  call void @Perl_free_tmps() #7
  br label %array_call.exit.i

array_call.exit.i:                                ; preds = %if.then32.i.i, %for.end.i.i
  call void @Perl_pop_scope() #7
  %sv_any12.i = getelementptr inbounds %struct.sv* %call10.i, i64 0, i32 0
  %32 = load i8** %sv_any12.i, align 8, !tbaa !0
  %xrv_rv.i = bitcast i8* %32 to %struct.sv**
  store %struct.sv* null, %struct.sv** %xrv_rv.i, align 8, !tbaa !0
  call void @Perl_sv_free(%struct.sv* %call10.i) #7
  %sv_any13.i = getelementptr inbounds %struct.av* %call24.i.i, i64 0, i32 0
  %33 = load %struct.xpvav** %sv_any13.i, align 8, !tbaa !0
  %xav_fill.i = getelementptr inbounds %struct.xpvav* %33, i64 0, i32 1
  %34 = load i64* %xav_fill.i, align 8, !tbaa !4
  %add.i = add nsw i64 %34, 1
  %conv14.i = trunc i64 %add.i to i32
  %tobool.i = icmp eq i32 %conv14.i, 0
  br i1 %tobool.i, label %if.then.i, label %if.end24.i

if.then.i:                                        ; preds = %array_call.exit.i
  %hclass.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 6
  %35 = load %struct.hv** %hclass.i, align 8, !tbaa !0
  %36 = load i32* %len.i, align 4, !tbaa !3
  %call15.i = call %struct.sv** @Perl_hv_fetch(%struct.hv* %35, i8* %15, i32 %36, i32 0) #7
  %tobool16.i = icmp eq %struct.sv** %call15.i, null
  br i1 %tobool16.i, label %if.end.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then.i
  %s_dirty18.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty18.i, align 4, !tbaa !3
  %37 = load i32* %optype.i, align 4, !tbaa !3
  %and20.i = and i32 %37, 4
  %tobool21.i = icmp ne i32 %and20.i, 0
  %cond.i = select i1 %tobool21.i, i8* getelementptr inbounds ([8 x i8]* @.str86, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str87, i64 0, i64 0)
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([43 x i8]* @.str85, i64 0, i64 0), i8* %cond.i, i8* %15) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %if.then.i
  %38 = load %struct.hv** %hook1, align 8, !tbaa !0
  %39 = load %struct.xpvhv** %sv_any.i, align 8, !tbaa !0
  %xhv_name.i.i = getelementptr inbounds %struct.xpvhv* %39, i64 0, i32 10
  %40 = load i8** %xhv_name.i.i, align 8, !tbaa !0
  %call.i2385.i = call i64 @strlen(i8* %40) #7
  %conv.i2386.i = trunc i64 %call.i2385.i to i32
  %call3.i.i = call %struct.sv* @Perl_newSVsv(%struct.sv* @PL_sv_undef) #7
  %call4.i.i = call %struct.sv** @Perl_hv_store(%struct.hv* %38, i8* %40, i32 %conv.i2386.i, %struct.sv* %call3.i.i, i32 0) #7
  %call23.i = call fastcc i32 @store_blessed(%struct.stcxt* %cxt, %struct.sv* %sv, i32 %type, %struct.hv* %pkg) #7
  br label %return

if.end24.i:                                       ; preds = %array_call.exit.i
  %xav_array.i = getelementptr inbounds %struct.xpvav* %33, i64 0, i32 0
  %41 = load i8** %xav_array.i, align 8, !tbaa !0
  %42 = bitcast i8* %41 to %struct.sv**
  %43 = load %struct.sv** %42, align 8, !tbaa !0
  %sv_flags26.i = getelementptr inbounds %struct.sv* %43, i64 0, i32 2
  %44 = load i32* %sv_flags26.i, align 4, !tbaa !3
  %and27.i = and i32 %44, 262144
  %cmp.i = icmp eq i32 %and27.i, 0
  br i1 %cmp.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end24.i
  %sv_any30.i = getelementptr inbounds %struct.sv* %43, i64 0, i32 0
  %45 = load i8** %sv_any30.i, align 8, !tbaa !0
  %xpv_cur.i = getelementptr inbounds i8* %45, i64 8
  %46 = bitcast i8* %xpv_cur.i to i64*
  %47 = load i64* %46, align 8, !tbaa !4
  store i64 %47, i64* %len2.i, align 8, !tbaa !4
  %xpv_pv.i = bitcast i8* %45 to i8**
  %48 = load i8** %xpv_pv.i, align 8, !tbaa !0
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end24.i
  %call34.i = call i8* @Perl_sv_2pv_flags(%struct.sv* %43, i64* %len2.i, i32 2) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond35.i = phi i8* [ %48, %cond.true.i ], [ %call34.i, %cond.false.i ]
  %cmp36.i1015 = icmp sgt i32 %conv14.i, 1
  br i1 %cmp36.i1015, label %for.body.i.lr.ph, label %for.end.i

for.body.i.lr.ph:                                 ; preds = %cond.end.i
  %hook_seen.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 3
  %s_dirty43.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  %hseen.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 2
  %fio236.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %aptr105.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend107.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %asiz117.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %arena126.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %cmp166.i = icmp eq i32 %obj_type.0.i, 3
  %conv227.i = zext i8 %eflags.0.i to i32
  %conv159.i = and i32 %or.i, 255
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.lr.ph, %sv_seen.i
  %indvars.iv1019 = phi i64 [ 1, %for.body.i.lr.ph ], [ %indvars.iv.next1020, %sv_seen.i ]
  %recursed.0.i1016 = phi i32 [ 0, %for.body.i.lr.ph ], [ %recursed.1.i, %sv_seen.i ]
  %arrayidx38.i = getelementptr inbounds %struct.sv** %42, i64 %indvars.iv1019
  %49 = load %struct.sv** %arrayidx38.i, align 8, !tbaa !0
  %50 = load %struct.av** %hook_seen.i, align 8, !tbaa !0
  %sv_flags39.i = getelementptr inbounds %struct.sv* %49, i64 0, i32 2
  %51 = load i32* %sv_flags39.i, align 4, !tbaa !3
  %and40.i = and i32 %51, 524288
  %tobool41.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.i, label %if.then42.i, label %if.end44.i

if.then42.i:                                      ; preds = %for.body.i
  store i32 1, i32* %s_dirty43.i, align 4, !tbaa !3
  %52 = trunc i64 %indvars.iv1019 to i32
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([63 x i8]* @.str88, i64 0, i64 0), i32 %52, i8* %15) #7
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %for.body.i
  %sv_any45.i = getelementptr inbounds %struct.sv* %49, i64 0, i32 0
  %53 = load i8** %sv_any45.i, align 8, !tbaa !0
  %xrv_rv46.i = bitcast i8* %53 to %struct.sv**
  %54 = load %struct.sv** %xrv_rv46.i, align 8, !tbaa !0
  store %struct.sv* %54, %struct.sv** %xsv.i, align 8, !tbaa !0
  %55 = load %struct.hv** %hseen.i, align 8, !tbaa !0
  %call47.i = call %struct.sv** @Perl_hv_fetch(%struct.hv* %55, i8* %4, i32 8, i32 0) #7
  %tobool48.i = icmp eq %struct.sv** %call47.i, null
  br i1 %tobool48.i, label %if.end50.i, label %sv_seen.i

if.end50.i:                                       ; preds = %if.end44.i
  %inc.i = add nsw i32 %recursed.0.i1016, 1
  %tobool51.i = icmp eq i32 %recursed.0.i1016, 0
  %56 = load %struct._PerlIO*** %fio236.i, align 8, !tbaa !0
  %tobool237.i = icmp ne %struct._PerlIO** %56, null
  br i1 %tobool51.i, label %if.then52.i, label %if.else235.i

if.then52.i:                                      ; preds = %if.end50.i
  br i1 %tobool237.i, label %if.else93.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.then52.i
  %57 = load i8** %aptr105.i, align 8, !tbaa !0
  %58 = load i8** %aend107.i, align 8, !tbaa !0
  %cmp56.i = icmp ult i8* %57, %58
  br i1 %cmp56.i, label %if.then58.i, label %if.else.i

if.then58.i:                                      ; preds = %if.then54.i
  %incdec.ptr.i = getelementptr inbounds i8* %57, i64 1
  store i8* %incdec.ptr.i, i8** %aptr105.i, align 8, !tbaa !0
  store i8 19, i8* %57, align 1, !tbaa !1
  br label %if.end100.i

if.else.i:                                        ; preds = %if.then54.i
  %59 = load i64* %asiz117.i, align 8, !tbaa !4
  %60 = load i8** %arena126.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast.i = ptrtoint i8* %57 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i8* %60 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add63.i = shl i64 %59, 32
  %conv65.i = add i64 %add63.i, 35184372088832
  %sext2377.i = ashr exact i64 %conv65.i, 32
  %conv72.i = and i64 %sext2377.i, -8192
  %call73.i = call i8* @Perl_safesysrealloc(i8* %60, i64 %conv72.i) #7
  store i8* %call73.i, i8** %arena126.i, align 8, !tbaa !0
  store i64 %conv72.i, i64* %asiz117.i, align 8, !tbaa !4
  %sext2378.i = shl i64 %sub.ptr.sub.i, 32
  %idx.ext.i = ashr exact i64 %sext2378.i, 32
  %add.ptr.i = getelementptr inbounds i8* %call73.i, i64 %idx.ext.i
  %add.ptr86.i = getelementptr inbounds i8* %call73.i, i64 %conv72.i
  store i8* %add.ptr86.i, i8** %aend107.i, align 8, !tbaa !0
  %add.ptr.i.sum = add i64 %idx.ext.i, 1
  %incdec.ptr91.i = getelementptr inbounds i8* %call73.i, i64 %add.ptr.i.sum
  store i8* %incdec.ptr91.i, i8** %aptr105.i, align 8, !tbaa !0
  store i8 19, i8* %add.ptr.i, align 1, !tbaa !1
  br label %if.end100.i

if.else93.i:                                      ; preds = %if.then52.i
  %call95.i = call i32 @PerlIO_putc(%struct._PerlIO** %56, i32 19) #7
  %cmp96.i = icmp eq i32 %call95.i, -1
  br i1 %cmp96.i, label %return, label %if.end100.i

if.end100.i:                                      ; preds = %if.else93.i, %if.else.i, %if.then58.i
  %61 = load %struct._PerlIO*** %fio236.i, align 8, !tbaa !0
  %tobool102.i = icmp eq %struct._PerlIO** %61, null
  br i1 %tobool102.i, label %if.then103.i, label %if.else157.i

if.then103.i:                                     ; preds = %if.end100.i
  %62 = load i8** %aptr105.i, align 8, !tbaa !0
  %63 = load i8** %aend107.i, align 8, !tbaa !0
  %cmp108.i = icmp ult i8* %62, %63
  br i1 %cmp108.i, label %if.then110.i, label %if.else114.i

if.then110.i:                                     ; preds = %if.then103.i
  %incdec.ptr113.i = getelementptr inbounds i8* %62, i64 1
  store i8* %incdec.ptr113.i, i8** %aptr105.i, align 8, !tbaa !0
  store i8 %conv.i, i8* %62, align 1, !tbaa !1
  br label %if.end165.i

if.else114.i:                                     ; preds = %if.then103.i
  %64 = load i64* %asiz117.i, align 8, !tbaa !4
  %65 = load i8** %arena126.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast127.i = ptrtoint i8* %62 to i64
  %sub.ptr.rhs.cast128.i = ptrtoint i8* %65 to i64
  %sub.ptr.sub129.i = sub i64 %sub.ptr.lhs.cast127.i, %sub.ptr.rhs.cast128.i
  %add119.i = shl i64 %64, 32
  %conv121.i = add i64 %add119.i, 35184372088832
  %sext2379.i = ashr exact i64 %conv121.i, 32
  %conv133.i = and i64 %sext2379.i, -8192
  %call135.i = call i8* @Perl_safesysrealloc(i8* %65, i64 %conv133.i) #7
  store i8* %call135.i, i8** %arena126.i, align 8, !tbaa !0
  store i64 %conv133.i, i64* %asiz117.i, align 8, !tbaa !4
  %sext2380.i = shl i64 %sub.ptr.sub129.i, 32
  %idx.ext143.i = ashr exact i64 %sext2380.i, 32
  %add.ptr144.i = getelementptr inbounds i8* %call135.i, i64 %idx.ext143.i
  %add.ptr150.i = getelementptr inbounds i8* %call135.i, i64 %conv133.i
  store i8* %add.ptr150.i, i8** %aend107.i, align 8, !tbaa !0
  %add.ptr144.i.sum = add i64 %idx.ext143.i, 1
  %incdec.ptr155.i = getelementptr inbounds i8* %call135.i, i64 %add.ptr144.i.sum
  store i8* %incdec.ptr155.i, i8** %aptr105.i, align 8, !tbaa !0
  store i8 %conv.i, i8* %add.ptr144.i, align 1, !tbaa !1
  br label %if.end165.i

if.else157.i:                                     ; preds = %if.end100.i
  %call160.i = call i32 @PerlIO_putc(%struct._PerlIO** %61, i32 %conv159.i) #7
  %cmp161.i = icmp eq i32 %call160.i, -1
  br i1 %cmp161.i, label %return, label %if.end165.i

if.end165.i:                                      ; preds = %if.else157.i, %if.else114.i, %if.then110.i
  br i1 %cmp166.i, label %if.then168.i, label %if.end301.i

if.then168.i:                                     ; preds = %if.end165.i
  %66 = load %struct._PerlIO*** %fio236.i, align 8, !tbaa !0
  %tobool170.i = icmp eq %struct._PerlIO** %66, null
  br i1 %tobool170.i, label %if.then171.i, label %if.else225.i

if.then171.i:                                     ; preds = %if.then168.i
  %67 = load i8** %aptr105.i, align 8, !tbaa !0
  %68 = load i8** %aend107.i, align 8, !tbaa !0
  %cmp176.i = icmp ult i8* %67, %68
  br i1 %cmp176.i, label %if.then178.i, label %if.else182.i

if.then178.i:                                     ; preds = %if.then171.i
  %incdec.ptr181.i = getelementptr inbounds i8* %67, i64 1
  store i8* %incdec.ptr181.i, i8** %aptr105.i, align 8, !tbaa !0
  store i8 %eflags.0.i, i8* %67, align 1, !tbaa !1
  br label %if.end301.i

if.else182.i:                                     ; preds = %if.then171.i
  %69 = load i64* %asiz117.i, align 8, !tbaa !4
  %70 = load i8** %arena126.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast195.i = ptrtoint i8* %67 to i64
  %sub.ptr.rhs.cast196.i = ptrtoint i8* %70 to i64
  %sub.ptr.sub197.i = sub i64 %sub.ptr.lhs.cast195.i, %sub.ptr.rhs.cast196.i
  %add187.i = shl i64 %69, 32
  %conv189.i = add i64 %add187.i, 35184372088832
  %sext2381.i = ashr exact i64 %conv189.i, 32
  %conv201.i = and i64 %sext2381.i, -8192
  %call203.i = call i8* @Perl_safesysrealloc(i8* %70, i64 %conv201.i) #7
  store i8* %call203.i, i8** %arena126.i, align 8, !tbaa !0
  store i64 %conv201.i, i64* %asiz117.i, align 8, !tbaa !4
  %sext2382.i = shl i64 %sub.ptr.sub197.i, 32
  %idx.ext211.i = ashr exact i64 %sext2382.i, 32
  %add.ptr212.i = getelementptr inbounds i8* %call203.i, i64 %idx.ext211.i
  %add.ptr218.i = getelementptr inbounds i8* %call203.i, i64 %conv201.i
  store i8* %add.ptr218.i, i8** %aend107.i, align 8, !tbaa !0
  %add.ptr212.i.sum = add i64 %idx.ext211.i, 1
  %incdec.ptr223.i = getelementptr inbounds i8* %call203.i, i64 %add.ptr212.i.sum
  store i8* %incdec.ptr223.i, i8** %aptr105.i, align 8, !tbaa !0
  store i8 %eflags.0.i, i8* %add.ptr212.i, align 1, !tbaa !1
  br label %if.end301.i

if.else225.i:                                     ; preds = %if.then168.i
  %call228.i = call i32 @PerlIO_putc(%struct._PerlIO** %66, i32 %conv227.i) #7
  %cmp229.i = icmp eq i32 %call228.i, -1
  br i1 %cmp229.i, label %return, label %if.end301.i

if.else235.i:                                     ; preds = %if.end50.i
  br i1 %tobool237.i, label %if.else292.i, label %if.then238.i

if.then238.i:                                     ; preds = %if.else235.i
  %71 = load i8** %aptr105.i, align 8, !tbaa !0
  %72 = load i8** %aend107.i, align 8, !tbaa !0
  %cmp243.i = icmp ult i8* %71, %72
  br i1 %cmp243.i, label %if.then245.i, label %if.else249.i

if.then245.i:                                     ; preds = %if.then238.i
  %incdec.ptr248.i = getelementptr inbounds i8* %71, i64 1
  store i8* %incdec.ptr248.i, i8** %aptr105.i, align 8, !tbaa !0
  store i8 %conv.i, i8* %71, align 1, !tbaa !1
  br label %if.end301.i

if.else249.i:                                     ; preds = %if.then238.i
  %73 = load i64* %asiz117.i, align 8, !tbaa !4
  %74 = load i8** %arena126.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast262.i = ptrtoint i8* %71 to i64
  %sub.ptr.rhs.cast263.i = ptrtoint i8* %74 to i64
  %sub.ptr.sub264.i = sub i64 %sub.ptr.lhs.cast262.i, %sub.ptr.rhs.cast263.i
  %add254.i = shl i64 %73, 32
  %conv256.i = add i64 %add254.i, 35184372088832
  %sext2383.i = ashr exact i64 %conv256.i, 32
  %conv268.i = and i64 %sext2383.i, -8192
  %call270.i = call i8* @Perl_safesysrealloc(i8* %74, i64 %conv268.i) #7
  store i8* %call270.i, i8** %arena126.i, align 8, !tbaa !0
  store i64 %conv268.i, i64* %asiz117.i, align 8, !tbaa !4
  %sext2384.i = shl i64 %sub.ptr.sub264.i, 32
  %idx.ext278.i = ashr exact i64 %sext2384.i, 32
  %add.ptr279.i = getelementptr inbounds i8* %call270.i, i64 %idx.ext278.i
  %add.ptr285.i = getelementptr inbounds i8* %call270.i, i64 %conv268.i
  store i8* %add.ptr285.i, i8** %aend107.i, align 8, !tbaa !0
  %add.ptr279.i.sum = add i64 %idx.ext278.i, 1
  %incdec.ptr290.i = getelementptr inbounds i8* %call270.i, i64 %add.ptr279.i.sum
  store i8* %incdec.ptr290.i, i8** %aptr105.i, align 8, !tbaa !0
  store i8 %conv.i, i8* %add.ptr279.i, align 1, !tbaa !1
  br label %if.end301.i

if.else292.i:                                     ; preds = %if.else235.i
  %call295.i = call i32 @PerlIO_putc(%struct._PerlIO** %56, i32 %conv159.i) #7
  %cmp296.i = icmp eq i32 %call295.i, -1
  br i1 %cmp296.i, label %return, label %if.end301.i

if.end301.i:                                      ; preds = %if.else292.i, %if.else249.i, %if.then245.i, %if.else225.i, %if.else182.i, %if.then178.i, %if.end165.i
  %75 = load %struct.sv** %xsv.i, align 8, !tbaa !0
  %call302.i = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %75) #7
  %tobool303.i = icmp eq i32 %call302.i, 0
  br i1 %tobool303.i, label %if.end305.i, label %return

if.end305.i:                                      ; preds = %if.end301.i
  %76 = load %struct.hv** %hseen.i, align 8, !tbaa !0
  %call307.i = call %struct.sv** @Perl_hv_fetch(%struct.hv* %76, i8* %4, i32 8, i32 0) #7
  %tobool308.i = icmp eq %struct.sv** %call307.i, null
  br i1 %tobool308.i, label %if.then309.i, label %if.end311.i

if.then309.i:                                     ; preds = %if.end305.i
  store i32 1, i32* %s_dirty43.i, align 4, !tbaa !3
  %77 = trunc i64 %indvars.iv1019 to i32
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([45 x i8]* @.str89, i64 0, i64 0), i32 %77, i8* %15) #7
  br label %if.end311.i

if.end311.i:                                      ; preds = %if.then309.i, %if.end305.i
  %sv_any312.i = getelementptr inbounds %struct.av* %50, i64 0, i32 0
  %78 = load %struct.xpvav** %sv_any312.i, align 8, !tbaa !0
  %xav_fill313.i = getelementptr inbounds %struct.xpvav* %78, i64 0, i32 1
  %79 = load i64* %xav_fill313.i, align 8, !tbaa !4
  %add314.i = add nsw i64 %79, 1
  %conv315.i = trunc i64 %add314.i to i32
  %80 = load %struct.sv** %xsv.i, align 8, !tbaa !0
  store %struct.sv* %80, %struct.sv** @PL_Sv, align 8, !tbaa !0
  %tobool316.i = icmp eq %struct.sv* %80, null
  br i1 %tobool316.i, label %land.end.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end311.i
  %sv_refcnt.i = getelementptr inbounds %struct.sv* %80, i64 0, i32 1
  %81 = load i32* %sv_refcnt.i, align 4, !tbaa !3
  %inc317.i = add i32 %81, 1
  store i32 %inc317.i, i32* %sv_refcnt.i, align 4, !tbaa !3
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end311.i
  %call319.i = call %struct.sv** @Perl_av_store(%struct.av* %50, i32 %conv315.i, %struct.sv* %80) #7
  br label %sv_seen.i

sv_seen.i:                                        ; preds = %land.end.i, %if.end44.i
  %svh.0.i = phi %struct.sv** [ %call47.i, %if.end44.i ], [ %call307.i, %land.end.i ]
  %recursed.1.i = phi i32 [ %recursed.0.i1016, %if.end44.i ], [ %inc.i, %land.end.i ]
  call void @Perl_sv_free(%struct.sv* %49) #7
  %82 = load %struct.sv** %svh.0.i, align 8, !tbaa !0
  store %struct.sv* %82, %struct.sv** %arrayidx38.i, align 8, !tbaa !0
  %indvars.iv.next1020 = add i64 %indvars.iv1019, 1
  %83 = trunc i64 %indvars.iv.next1020 to i32
  %cmp36.i = icmp slt i32 %83, %conv14.i
  br i1 %cmp36.i, label %for.body.i, label %for.end.i

for.end.i:                                        ; preds = %sv_seen.i, %cond.end.i
  %recursed.0.i.lcssa = phi i32 [ 0, %cond.end.i ], [ %recursed.1.i, %sv_seen.i ]
  %84 = load i32* %len.i, align 4, !tbaa !3
  %call323.i = call fastcc i32 @known_class(%struct.stcxt* %cxt, i8* %15, i32 %84, i32* %classnum.i) #7
  %tobool324.i = icmp eq i32 %call323.i, 0
  br i1 %tobool324.i, label %if.then325.i, label %for.end.i.if.end327.i_crit_edge

for.end.i.if.end327.i_crit_edge:                  ; preds = %for.end.i
  %.pre1036 = load i32* %classnum.i, align 4, !tbaa !3
  br label %if.end327.i

if.then325.i:                                     ; preds = %for.end.i
  store i32 -1, i32* %classnum.i, align 4, !tbaa !3
  br label %if.end327.i

if.end327.i:                                      ; preds = %for.end.i.if.end327.i_crit_edge, %if.then325.i
  %85 = phi i32 [ %.pre1036, %for.end.i.if.end327.i_crit_edge ], [ -1, %if.then325.i ]
  %cmp329.i = icmp eq i32 %85, -1
  %86 = load i32* %len.i, align 4, !tbaa !3
  %cond334.i = select i1 %cmp329.i, i32 %86, i32 %85
  %cmp335.i = icmp sgt i32 %cond334.i, 255
  %or339.i = or i32 %obj_type.0.i, 4
  %or339.obj_type.0.i = select i1 %cmp335.i, i32 %or339.i, i32 %obj_type.0.i
  %flags.0.i = trunc i32 %or339.obj_type.0.i to i8
  %or346.i = or i8 %flags.0.i, 32
  %flags.1.i = select i1 %cmp329.i, i8 %flags.0.i, i8 %or346.i
  %87 = load i64* %len2.i, align 8, !tbaa !4
  %cmp349.i = icmp ugt i64 %87, 255
  %or353.i = or i8 %flags.1.i, 8
  %or353.flags.1.i = select i1 %cmp349.i, i8 %or353.i, i8 %flags.1.i
  %or360.i = or i8 %or353.flags.1.i, -128
  %flags.3.i = select i1 %cmp36.i1015, i8 %or360.i, i8 %or353.flags.1.i
  %cmp363.i = icmp sgt i32 %conv14.i, 256
  %or367.i = or i8 %flags.3.i, 16
  %or367.flags.3.i = select i1 %cmp363.i, i8 %or367.i, i8 %flags.3.i
  %tobool370.i = icmp eq i32 %recursed.0.i.lcssa, 0
  %fio571.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %88 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool572.i = icmp ne %struct._PerlIO** %88, null
  br i1 %tobool370.i, label %if.then371.i, label %if.else570.i

if.then371.i:                                     ; preds = %if.end327.i
  br i1 %tobool572.i, label %if.else428.i, label %if.then374.i

if.then374.i:                                     ; preds = %if.then371.i
  %aptr376.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %89 = load i8** %aptr376.i, align 8, !tbaa !0
  %aend378.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %90 = load i8** %aend378.i, align 8, !tbaa !0
  %cmp379.i = icmp ult i8* %89, %90
  br i1 %cmp379.i, label %if.then381.i, label %if.else385.i

if.then381.i:                                     ; preds = %if.then374.i
  %incdec.ptr384.i = getelementptr inbounds i8* %89, i64 1
  store i8* %incdec.ptr384.i, i8** %aptr376.i, align 8, !tbaa !0
  store i8 19, i8* %89, align 1, !tbaa !1
  br label %if.end435.i

if.else385.i:                                     ; preds = %if.then374.i
  %asiz388.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %91 = load i64* %asiz388.i, align 8, !tbaa !4
  %arena397.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %92 = load i8** %arena397.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast398.i = ptrtoint i8* %89 to i64
  %sub.ptr.rhs.cast399.i = ptrtoint i8* %92 to i64
  %sub.ptr.sub400.i = sub i64 %sub.ptr.lhs.cast398.i, %sub.ptr.rhs.cast399.i
  %add390.i = shl i64 %91, 32
  %conv392.i = add i64 %add390.i, 35184372088832
  %sext.i = ashr exact i64 %conv392.i, 32
  %conv404.i = and i64 %sext.i, -8192
  %call406.i = call i8* @Perl_safesysrealloc(i8* %92, i64 %conv404.i) #7
  store i8* %call406.i, i8** %arena397.i, align 8, !tbaa !0
  store i64 %conv404.i, i64* %asiz388.i, align 8, !tbaa !4
  %sext2340.i = shl i64 %sub.ptr.sub400.i, 32
  %idx.ext414.i = ashr exact i64 %sext2340.i, 32
  %add.ptr415.i = getelementptr inbounds i8* %call406.i, i64 %idx.ext414.i
  %add.ptr421.i = getelementptr inbounds i8* %call406.i, i64 %conv404.i
  store i8* %add.ptr421.i, i8** %aend378.i, align 8, !tbaa !0
  %add.ptr415.i.sum = add i64 %idx.ext414.i, 1
  %incdec.ptr426.i = getelementptr inbounds i8* %call406.i, i64 %add.ptr415.i.sum
  store i8* %incdec.ptr426.i, i8** %aptr376.i, align 8, !tbaa !0
  store i8 19, i8* %add.ptr415.i, align 1, !tbaa !1
  br label %if.end435.i

if.else428.i:                                     ; preds = %if.then371.i
  %call430.i = call i32 @PerlIO_putc(%struct._PerlIO** %88, i32 19) #7
  %cmp431.i = icmp eq i32 %call430.i, -1
  br i1 %cmp431.i, label %return, label %if.end435.i

if.end435.i:                                      ; preds = %if.else428.i, %if.else385.i, %if.then381.i
  %93 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool437.i = icmp eq %struct._PerlIO** %93, null
  br i1 %tobool437.i, label %if.then438.i, label %if.else492.i

if.then438.i:                                     ; preds = %if.end435.i
  %aptr440.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %94 = load i8** %aptr440.i, align 8, !tbaa !0
  %aend442.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %95 = load i8** %aend442.i, align 8, !tbaa !0
  %cmp443.i = icmp ult i8* %94, %95
  br i1 %cmp443.i, label %if.then445.i, label %if.else449.i

if.then445.i:                                     ; preds = %if.then438.i
  %incdec.ptr448.i = getelementptr inbounds i8* %94, i64 1
  store i8* %incdec.ptr448.i, i8** %aptr440.i, align 8, !tbaa !0
  store i8 %or367.flags.3.i, i8* %94, align 1, !tbaa !1
  br label %if.end500.i

if.else449.i:                                     ; preds = %if.then438.i
  %asiz452.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %96 = load i64* %asiz452.i, align 8, !tbaa !4
  %arena461.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %97 = load i8** %arena461.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast462.i = ptrtoint i8* %94 to i64
  %sub.ptr.rhs.cast463.i = ptrtoint i8* %97 to i64
  %sub.ptr.sub464.i = sub i64 %sub.ptr.lhs.cast462.i, %sub.ptr.rhs.cast463.i
  %add454.i = shl i64 %96, 32
  %conv456.i = add i64 %add454.i, 35184372088832
  %sext2341.i = ashr exact i64 %conv456.i, 32
  %conv468.i = and i64 %sext2341.i, -8192
  %call470.i = call i8* @Perl_safesysrealloc(i8* %97, i64 %conv468.i) #7
  store i8* %call470.i, i8** %arena461.i, align 8, !tbaa !0
  store i64 %conv468.i, i64* %asiz452.i, align 8, !tbaa !4
  %sext2342.i = shl i64 %sub.ptr.sub464.i, 32
  %idx.ext478.i = ashr exact i64 %sext2342.i, 32
  %add.ptr479.i = getelementptr inbounds i8* %call470.i, i64 %idx.ext478.i
  %add.ptr485.i = getelementptr inbounds i8* %call470.i, i64 %conv468.i
  store i8* %add.ptr485.i, i8** %aend442.i, align 8, !tbaa !0
  %add.ptr479.i.sum = add i64 %idx.ext478.i, 1
  %incdec.ptr490.i = getelementptr inbounds i8* %call470.i, i64 %add.ptr479.i.sum
  store i8* %incdec.ptr490.i, i8** %aptr440.i, align 8, !tbaa !0
  store i8 %or367.flags.3.i, i8* %add.ptr479.i, align 1, !tbaa !1
  br label %if.end500.i

if.else492.i:                                     ; preds = %if.end435.i
  %conv494.i = zext i8 %or367.flags.3.i to i32
  %call495.i = call i32 @PerlIO_putc(%struct._PerlIO** %93, i32 %conv494.i) #7
  %cmp496.i = icmp eq i32 %call495.i, -1
  br i1 %cmp496.i, label %return, label %if.end500.i

if.end500.i:                                      ; preds = %if.else492.i, %if.else449.i, %if.then445.i
  %cmp501.i = icmp eq i32 %obj_type.0.i, 3
  br i1 %cmp501.i, label %if.then503.i, label %if.end636.i

if.then503.i:                                     ; preds = %if.end500.i
  %98 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool505.i = icmp eq %struct._PerlIO** %98, null
  br i1 %tobool505.i, label %if.then506.i, label %if.else560.i

if.then506.i:                                     ; preds = %if.then503.i
  %aptr508.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %99 = load i8** %aptr508.i, align 8, !tbaa !0
  %aend510.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %100 = load i8** %aend510.i, align 8, !tbaa !0
  %cmp511.i = icmp ult i8* %99, %100
  br i1 %cmp511.i, label %if.then513.i, label %if.else517.i

if.then513.i:                                     ; preds = %if.then506.i
  %incdec.ptr516.i = getelementptr inbounds i8* %99, i64 1
  store i8* %incdec.ptr516.i, i8** %aptr508.i, align 8, !tbaa !0
  store i8 %eflags.0.i, i8* %99, align 1, !tbaa !1
  br label %if.end636.i

if.else517.i:                                     ; preds = %if.then506.i
  %asiz520.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %101 = load i64* %asiz520.i, align 8, !tbaa !4
  %arena529.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %102 = load i8** %arena529.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast530.i = ptrtoint i8* %99 to i64
  %sub.ptr.rhs.cast531.i = ptrtoint i8* %102 to i64
  %sub.ptr.sub532.i = sub i64 %sub.ptr.lhs.cast530.i, %sub.ptr.rhs.cast531.i
  %add522.i = shl i64 %101, 32
  %conv524.i = add i64 %add522.i, 35184372088832
  %sext2373.i = ashr exact i64 %conv524.i, 32
  %conv536.i = and i64 %sext2373.i, -8192
  %call538.i = call i8* @Perl_safesysrealloc(i8* %102, i64 %conv536.i) #7
  store i8* %call538.i, i8** %arena529.i, align 8, !tbaa !0
  store i64 %conv536.i, i64* %asiz520.i, align 8, !tbaa !4
  %sext2374.i = shl i64 %sub.ptr.sub532.i, 32
  %idx.ext546.i = ashr exact i64 %sext2374.i, 32
  %add.ptr547.i = getelementptr inbounds i8* %call538.i, i64 %idx.ext546.i
  %add.ptr553.i = getelementptr inbounds i8* %call538.i, i64 %conv536.i
  store i8* %add.ptr553.i, i8** %aend510.i, align 8, !tbaa !0
  %add.ptr547.i.sum = add i64 %idx.ext546.i, 1
  %incdec.ptr558.i = getelementptr inbounds i8* %call538.i, i64 %add.ptr547.i.sum
  store i8* %incdec.ptr558.i, i8** %aptr508.i, align 8, !tbaa !0
  store i8 %eflags.0.i, i8* %add.ptr547.i, align 1, !tbaa !1
  br label %if.end636.i

if.else560.i:                                     ; preds = %if.then503.i
  %conv562.i = zext i8 %eflags.0.i to i32
  %call563.i = call i32 @PerlIO_putc(%struct._PerlIO** %98, i32 %conv562.i) #7
  %cmp564.i = icmp eq i32 %call563.i, -1
  br i1 %cmp564.i, label %return, label %if.end636.i

if.else570.i:                                     ; preds = %if.end327.i
  br i1 %tobool572.i, label %if.else627.i, label %if.then573.i

if.then573.i:                                     ; preds = %if.else570.i
  %aptr575.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %103 = load i8** %aptr575.i, align 8, !tbaa !0
  %aend577.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %104 = load i8** %aend577.i, align 8, !tbaa !0
  %cmp578.i = icmp ult i8* %103, %104
  br i1 %cmp578.i, label %if.then580.i, label %if.else584.i

if.then580.i:                                     ; preds = %if.then573.i
  %incdec.ptr583.i = getelementptr inbounds i8* %103, i64 1
  store i8* %incdec.ptr583.i, i8** %aptr575.i, align 8, !tbaa !0
  store i8 %or367.flags.3.i, i8* %103, align 1, !tbaa !1
  br label %if.end636.i

if.else584.i:                                     ; preds = %if.then573.i
  %asiz587.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %105 = load i64* %asiz587.i, align 8, !tbaa !4
  %arena596.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %106 = load i8** %arena596.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast597.i = ptrtoint i8* %103 to i64
  %sub.ptr.rhs.cast598.i = ptrtoint i8* %106 to i64
  %sub.ptr.sub599.i = sub i64 %sub.ptr.lhs.cast597.i, %sub.ptr.rhs.cast598.i
  %add589.i = shl i64 %105, 32
  %conv591.i = add i64 %add589.i, 35184372088832
  %sext2375.i = ashr exact i64 %conv591.i, 32
  %conv603.i = and i64 %sext2375.i, -8192
  %call605.i = call i8* @Perl_safesysrealloc(i8* %106, i64 %conv603.i) #7
  store i8* %call605.i, i8** %arena596.i, align 8, !tbaa !0
  store i64 %conv603.i, i64* %asiz587.i, align 8, !tbaa !4
  %sext2376.i = shl i64 %sub.ptr.sub599.i, 32
  %idx.ext613.i = ashr exact i64 %sext2376.i, 32
  %add.ptr614.i = getelementptr inbounds i8* %call605.i, i64 %idx.ext613.i
  %add.ptr620.i = getelementptr inbounds i8* %call605.i, i64 %conv603.i
  store i8* %add.ptr620.i, i8** %aend577.i, align 8, !tbaa !0
  %add.ptr614.i.sum = add i64 %idx.ext613.i, 1
  %incdec.ptr625.i = getelementptr inbounds i8* %call605.i, i64 %add.ptr614.i.sum
  store i8* %incdec.ptr625.i, i8** %aptr575.i, align 8, !tbaa !0
  store i8 %or367.flags.3.i, i8* %add.ptr614.i, align 1, !tbaa !1
  br label %if.end636.i

if.else627.i:                                     ; preds = %if.else570.i
  %conv629.i = zext i8 %or367.flags.3.i to i32
  %call630.i = call i32 @PerlIO_putc(%struct._PerlIO** %88, i32 %conv629.i) #7
  %cmp631.i = icmp eq i32 %call630.i, -1
  br i1 %cmp631.i, label %return, label %if.end636.i

if.end636.i:                                      ; preds = %if.else627.i, %if.else584.i, %if.then580.i, %if.else560.i, %if.else517.i, %if.then513.i, %if.end500.i
  %conv637.i = zext i8 %or367.flags.3.i to i32
  %and638.i = and i32 %conv637.i, 32
  %tobool639.i = icmp eq i32 %and638.i, 0
  %and642.i = and i32 %conv637.i, 4
  %tobool643.i = icmp ne i32 %and642.i, 0
  br i1 %tobool639.i, label %if.else867.i, label %if.then640.i

if.then640.i:                                     ; preds = %if.end636.i
  br i1 %tobool643.i, label %if.then644.i, label %if.else799.i

if.then644.i:                                     ; preds = %if.then640.i
  %netorder.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %107 = load i32* %netorder.i, align 4, !tbaa !3
  %tobool645.i = icmp eq i32 %107, 0
  br i1 %tobool645.i, label %if.else722.i, label %if.then646.i

if.then646.i:                                     ; preds = %if.then644.i
  %108 = load i32* %classnum.i, align 4, !tbaa !3
  %109 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %108) #3, !srcloc !28
  store i32 %109, i32* %y.i, align 4, !tbaa !3
  %110 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool648.i = icmp eq %struct._PerlIO** %110, null
  br i1 %tobool648.i, label %if.then649.i, label %if.else714.i

if.then649.i:                                     ; preds = %if.then646.i
  %aptr651.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %111 = load i8** %aptr651.i, align 8, !tbaa !0
  %add.ptr652.i = getelementptr inbounds i8* %111, i64 4
  %aend654.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %112 = load i8** %aend654.i, align 8, !tbaa !0
  %cmp655.i = icmp ugt i8* %add.ptr652.i, %112
  br i1 %cmp655.i, label %if.then657.i, label %if.end696.i

if.then657.i:                                     ; preds = %if.then649.i
  %asiz660.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %113 = load i64* %asiz660.i, align 8, !tbaa !4
  %arena669.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %114 = load i8** %arena669.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast670.i = ptrtoint i8* %111 to i64
  %sub.ptr.rhs.cast671.i = ptrtoint i8* %114 to i64
  %sub.ptr.sub672.i = sub i64 %sub.ptr.lhs.cast670.i, %sub.ptr.rhs.cast671.i
  %add662.i = shl i64 %113, 32
  %conv664.i = add i64 %add662.i, 35197256990720
  %sext2371.i = ashr exact i64 %conv664.i, 32
  %conv676.i = and i64 %sext2371.i, -8192
  %call678.i = call i8* @Perl_safesysrealloc(i8* %114, i64 %conv676.i) #7
  store i8* %call678.i, i8** %arena669.i, align 8, !tbaa !0
  store i64 %conv676.i, i64* %asiz660.i, align 8, !tbaa !4
  %sext2372.i = shl i64 %sub.ptr.sub672.i, 32
  %idx.ext686.i = ashr exact i64 %sext2372.i, 32
  %add.ptr687.i = getelementptr inbounds i8* %call678.i, i64 %idx.ext686.i
  store i8* %add.ptr687.i, i8** %aptr651.i, align 8, !tbaa !0
  %add.ptr693.i = getelementptr inbounds i8* %call678.i, i64 %conv676.i
  store i8* %add.ptr693.i, i8** %aend654.i, align 8, !tbaa !0
  br label %if.end696.i

if.end696.i:                                      ; preds = %if.then657.i, %if.then649.i
  %115 = phi i8* [ %add.ptr687.i, %if.then657.i ], [ %111, %if.then649.i ]
  %116 = ptrtoint i8* %115 to i64
  %and701.i = and i64 %116, -4
  %cmp702.i = icmp eq i64 %116, %and701.i
  br i1 %cmp702.i, label %if.then704.i, label %if.else707.i

if.then704.i:                                     ; preds = %if.end696.i
  %117 = load i32* %y.i, align 4, !tbaa !3
  %118 = bitcast i8* %115 to i32*
  store i32 %117, i32* %118, align 4, !tbaa !3
  br label %if.end710.i

if.else707.i:                                     ; preds = %if.end696.i
  %119 = bitcast i8* %115 to i32*
  %120 = load i32* %y.i, align 4
  store i32 %120, i32* %119, align 1
  %.pre1035 = load i8** %aptr651.i, align 8, !tbaa !0
  br label %if.end710.i

if.end710.i:                                      ; preds = %if.else707.i, %if.then704.i
  %121 = phi i8* [ %.pre1035, %if.else707.i ], [ %115, %if.then704.i ]
  %add.ptr713.i = getelementptr inbounds i8* %121, i64 4
  store i8* %add.ptr713.i, i8** %aptr651.i, align 8, !tbaa !0
  br label %if.end1167.i

if.else714.i:                                     ; preds = %if.then646.i
  %call716.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %110, i8* %5, i64 4) #7
  %cmp717.i = icmp eq i64 %call716.i, 4
  br i1 %cmp717.i, label %if.end1167.i, label %return

if.else722.i:                                     ; preds = %if.then644.i
  %122 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool724.i = icmp eq %struct._PerlIO** %122, null
  br i1 %tobool724.i, label %if.then725.i, label %if.else790.i

if.then725.i:                                     ; preds = %if.else722.i
  %aptr727.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %123 = load i8** %aptr727.i, align 8, !tbaa !0
  %add.ptr728.i = getelementptr inbounds i8* %123, i64 4
  %aend730.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %124 = load i8** %aend730.i, align 8, !tbaa !0
  %cmp731.i = icmp ugt i8* %add.ptr728.i, %124
  br i1 %cmp731.i, label %if.then733.i, label %if.end772.i

if.then733.i:                                     ; preds = %if.then725.i
  %asiz736.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %125 = load i64* %asiz736.i, align 8, !tbaa !4
  %arena745.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %126 = load i8** %arena745.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast746.i = ptrtoint i8* %123 to i64
  %sub.ptr.rhs.cast747.i = ptrtoint i8* %126 to i64
  %sub.ptr.sub748.i = sub i64 %sub.ptr.lhs.cast746.i, %sub.ptr.rhs.cast747.i
  %add738.i = shl i64 %125, 32
  %conv740.i = add i64 %add738.i, 35197256990720
  %sext2369.i = ashr exact i64 %conv740.i, 32
  %conv752.i = and i64 %sext2369.i, -8192
  %call754.i = call i8* @Perl_safesysrealloc(i8* %126, i64 %conv752.i) #7
  store i8* %call754.i, i8** %arena745.i, align 8, !tbaa !0
  store i64 %conv752.i, i64* %asiz736.i, align 8, !tbaa !4
  %sext2370.i = shl i64 %sub.ptr.sub748.i, 32
  %idx.ext762.i = ashr exact i64 %sext2370.i, 32
  %add.ptr763.i = getelementptr inbounds i8* %call754.i, i64 %idx.ext762.i
  store i8* %add.ptr763.i, i8** %aptr727.i, align 8, !tbaa !0
  %add.ptr769.i = getelementptr inbounds i8* %call754.i, i64 %conv752.i
  store i8* %add.ptr769.i, i8** %aend730.i, align 8, !tbaa !0
  br label %if.end772.i

if.end772.i:                                      ; preds = %if.then733.i, %if.then725.i
  %127 = phi i8* [ %add.ptr763.i, %if.then733.i ], [ %123, %if.then725.i ]
  %128 = ptrtoint i8* %127 to i64
  %and777.i = and i64 %128, -4
  %cmp778.i = icmp eq i64 %128, %and777.i
  br i1 %cmp778.i, label %if.then780.i, label %if.else783.i

if.then780.i:                                     ; preds = %if.end772.i
  %129 = load i32* %classnum.i, align 4, !tbaa !3
  %130 = bitcast i8* %127 to i32*
  store i32 %129, i32* %130, align 4, !tbaa !3
  br label %if.end786.i

if.else783.i:                                     ; preds = %if.end772.i
  %131 = bitcast i8* %127 to i32*
  %132 = load i32* %classnum.i, align 4
  store i32 %132, i32* %131, align 1
  %.pre1034 = load i8** %aptr727.i, align 8, !tbaa !0
  br label %if.end786.i

if.end786.i:                                      ; preds = %if.else783.i, %if.then780.i
  %133 = phi i8* [ %.pre1034, %if.else783.i ], [ %127, %if.then780.i ]
  %add.ptr789.i = getelementptr inbounds i8* %133, i64 4
  store i8* %add.ptr789.i, i8** %aptr727.i, align 8, !tbaa !0
  br label %if.end1167.i

if.else790.i:                                     ; preds = %if.else722.i
  %call792.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %122, i8* %3, i64 4) #7
  %cmp793.i = icmp eq i64 %call792.i, 4
  br i1 %cmp793.i, label %if.end1167.i, label %return

if.else799.i:                                     ; preds = %if.then640.i
  %134 = load i32* %classnum.i, align 4, !tbaa !3
  %conv800.i = trunc i32 %134 to i8
  %135 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool802.i = icmp eq %struct._PerlIO** %135, null
  br i1 %tobool802.i, label %if.then803.i, label %if.else857.i

if.then803.i:                                     ; preds = %if.else799.i
  %aptr805.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %136 = load i8** %aptr805.i, align 8, !tbaa !0
  %aend807.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %137 = load i8** %aend807.i, align 8, !tbaa !0
  %cmp808.i = icmp ult i8* %136, %137
  br i1 %cmp808.i, label %if.then810.i, label %if.else814.i

if.then810.i:                                     ; preds = %if.then803.i
  %incdec.ptr813.i = getelementptr inbounds i8* %136, i64 1
  store i8* %incdec.ptr813.i, i8** %aptr805.i, align 8, !tbaa !0
  store i8 %conv800.i, i8* %136, align 1, !tbaa !1
  br label %if.end1167.i

if.else814.i:                                     ; preds = %if.then803.i
  %asiz817.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %138 = load i64* %asiz817.i, align 8, !tbaa !4
  %arena826.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %139 = load i8** %arena826.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast827.i = ptrtoint i8* %136 to i64
  %sub.ptr.rhs.cast828.i = ptrtoint i8* %139 to i64
  %sub.ptr.sub829.i = sub i64 %sub.ptr.lhs.cast827.i, %sub.ptr.rhs.cast828.i
  %add819.i = shl i64 %138, 32
  %conv821.i = add i64 %add819.i, 35184372088832
  %sext2367.i = ashr exact i64 %conv821.i, 32
  %conv833.i = and i64 %sext2367.i, -8192
  %call835.i = call i8* @Perl_safesysrealloc(i8* %139, i64 %conv833.i) #7
  store i8* %call835.i, i8** %arena826.i, align 8, !tbaa !0
  store i64 %conv833.i, i64* %asiz817.i, align 8, !tbaa !4
  %sext2368.i = shl i64 %sub.ptr.sub829.i, 32
  %idx.ext843.i = ashr exact i64 %sext2368.i, 32
  %add.ptr844.i = getelementptr inbounds i8* %call835.i, i64 %idx.ext843.i
  %add.ptr850.i = getelementptr inbounds i8* %call835.i, i64 %conv833.i
  store i8* %add.ptr850.i, i8** %aend807.i, align 8, !tbaa !0
  %add.ptr844.i.sum = add i64 %idx.ext843.i, 1
  %incdec.ptr855.i = getelementptr inbounds i8* %call835.i, i64 %add.ptr844.i.sum
  store i8* %incdec.ptr855.i, i8** %aptr805.i, align 8, !tbaa !0
  store i8 %conv800.i, i8* %add.ptr844.i, align 1, !tbaa !1
  br label %if.end1167.i

if.else857.i:                                     ; preds = %if.else799.i
  %conv859.i = and i32 %134, 255
  %call860.i = call i32 @PerlIO_putc(%struct._PerlIO** %135, i32 %conv859.i) #7
  %cmp861.i = icmp eq i32 %call860.i, -1
  br i1 %cmp861.i, label %return, label %if.end1167.i

if.else867.i:                                     ; preds = %if.end636.i
  br i1 %tobool643.i, label %if.then871.i, label %if.else1030.i

if.then871.i:                                     ; preds = %if.else867.i
  %netorder872.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %140 = load i32* %netorder872.i, align 4, !tbaa !3
  %tobool873.i = icmp eq i32 %140, 0
  br i1 %tobool873.i, label %if.else953.i, label %if.then874.i

if.then874.i:                                     ; preds = %if.then871.i
  %141 = load i32* %len.i, align 4, !tbaa !3
  %142 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %141) #3, !srcloc !29
  store i32 %142, i32* %y875.i, align 4, !tbaa !3
  %143 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool879.i = icmp eq %struct._PerlIO** %143, null
  br i1 %tobool879.i, label %if.then880.i, label %if.else945.i

if.then880.i:                                     ; preds = %if.then874.i
  %aptr882.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %144 = load i8** %aptr882.i, align 8, !tbaa !0
  %add.ptr883.i = getelementptr inbounds i8* %144, i64 4
  %aend885.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %145 = load i8** %aend885.i, align 8, !tbaa !0
  %cmp886.i = icmp ugt i8* %add.ptr883.i, %145
  br i1 %cmp886.i, label %if.then888.i, label %if.end927.i

if.then888.i:                                     ; preds = %if.then880.i
  %asiz891.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %146 = load i64* %asiz891.i, align 8, !tbaa !4
  %arena900.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %147 = load i8** %arena900.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast901.i = ptrtoint i8* %144 to i64
  %sub.ptr.rhs.cast902.i = ptrtoint i8* %147 to i64
  %sub.ptr.sub903.i = sub i64 %sub.ptr.lhs.cast901.i, %sub.ptr.rhs.cast902.i
  %add893.i = shl i64 %146, 32
  %conv895.i = add i64 %add893.i, 35197256990720
  %sext2365.i = ashr exact i64 %conv895.i, 32
  %conv907.i = and i64 %sext2365.i, -8192
  %call909.i = call i8* @Perl_safesysrealloc(i8* %147, i64 %conv907.i) #7
  store i8* %call909.i, i8** %arena900.i, align 8, !tbaa !0
  store i64 %conv907.i, i64* %asiz891.i, align 8, !tbaa !4
  %sext2366.i = shl i64 %sub.ptr.sub903.i, 32
  %idx.ext917.i = ashr exact i64 %sext2366.i, 32
  %add.ptr918.i = getelementptr inbounds i8* %call909.i, i64 %idx.ext917.i
  store i8* %add.ptr918.i, i8** %aptr882.i, align 8, !tbaa !0
  %add.ptr924.i = getelementptr inbounds i8* %call909.i, i64 %conv907.i
  store i8* %add.ptr924.i, i8** %aend885.i, align 8, !tbaa !0
  br label %if.end927.i

if.end927.i:                                      ; preds = %if.then888.i, %if.then880.i
  %148 = phi i8* [ %add.ptr918.i, %if.then888.i ], [ %144, %if.then880.i ]
  %149 = ptrtoint i8* %148 to i64
  %and932.i = and i64 %149, -4
  %cmp933.i = icmp eq i64 %149, %and932.i
  br i1 %cmp933.i, label %if.then935.i, label %if.else938.i

if.then935.i:                                     ; preds = %if.end927.i
  %150 = load i32* %y875.i, align 4, !tbaa !3
  %151 = bitcast i8* %148 to i32*
  store i32 %150, i32* %151, align 4, !tbaa !3
  br label %if.end941.i

if.else938.i:                                     ; preds = %if.end927.i
  %152 = bitcast i8* %148 to i32*
  %153 = load i32* %y875.i, align 4
  store i32 %153, i32* %152, align 1
  %.pre1026 = load i8** %aptr882.i, align 8, !tbaa !0
  br label %if.end941.i

if.end941.i:                                      ; preds = %if.else938.i, %if.then935.i
  %154 = phi i8* [ %.pre1026, %if.else938.i ], [ %148, %if.then935.i ]
  %add.ptr944.i = getelementptr inbounds i8* %154, i64 4
  store i8* %add.ptr944.i, i8** %aptr882.i, align 8, !tbaa !0
  br label %if.end1097.i

if.else945.i:                                     ; preds = %if.then874.i
  %call947.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %143, i8* %6, i64 4) #7
  %cmp948.i = icmp eq i64 %call947.i, 4
  br i1 %cmp948.i, label %if.end1097.i, label %return

if.else953.i:                                     ; preds = %if.then871.i
  %155 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool955.i = icmp eq %struct._PerlIO** %155, null
  br i1 %tobool955.i, label %if.then956.i, label %if.else1021.i

if.then956.i:                                     ; preds = %if.else953.i
  %aptr958.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %156 = load i8** %aptr958.i, align 8, !tbaa !0
  %add.ptr959.i = getelementptr inbounds i8* %156, i64 4
  %aend961.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %157 = load i8** %aend961.i, align 8, !tbaa !0
  %cmp962.i = icmp ugt i8* %add.ptr959.i, %157
  br i1 %cmp962.i, label %if.then964.i, label %if.end1003.i

if.then964.i:                                     ; preds = %if.then956.i
  %asiz967.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %158 = load i64* %asiz967.i, align 8, !tbaa !4
  %arena976.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %159 = load i8** %arena976.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast977.i = ptrtoint i8* %156 to i64
  %sub.ptr.rhs.cast978.i = ptrtoint i8* %159 to i64
  %sub.ptr.sub979.i = sub i64 %sub.ptr.lhs.cast977.i, %sub.ptr.rhs.cast978.i
  %add969.i = shl i64 %158, 32
  %conv971.i = add i64 %add969.i, 35197256990720
  %sext2363.i = ashr exact i64 %conv971.i, 32
  %conv983.i = and i64 %sext2363.i, -8192
  %call985.i = call i8* @Perl_safesysrealloc(i8* %159, i64 %conv983.i) #7
  store i8* %call985.i, i8** %arena976.i, align 8, !tbaa !0
  store i64 %conv983.i, i64* %asiz967.i, align 8, !tbaa !4
  %sext2364.i = shl i64 %sub.ptr.sub979.i, 32
  %idx.ext993.i = ashr exact i64 %sext2364.i, 32
  %add.ptr994.i = getelementptr inbounds i8* %call985.i, i64 %idx.ext993.i
  store i8* %add.ptr994.i, i8** %aptr958.i, align 8, !tbaa !0
  %add.ptr1000.i = getelementptr inbounds i8* %call985.i, i64 %conv983.i
  store i8* %add.ptr1000.i, i8** %aend961.i, align 8, !tbaa !0
  br label %if.end1003.i

if.end1003.i:                                     ; preds = %if.then964.i, %if.then956.i
  %160 = phi i8* [ %add.ptr994.i, %if.then964.i ], [ %156, %if.then956.i ]
  %161 = ptrtoint i8* %160 to i64
  %and1008.i = and i64 %161, -4
  %cmp1009.i = icmp eq i64 %161, %and1008.i
  br i1 %cmp1009.i, label %if.then1011.i, label %if.else1014.i

if.then1011.i:                                    ; preds = %if.end1003.i
  %162 = load i32* %len.i, align 4, !tbaa !3
  %163 = bitcast i8* %160 to i32*
  store i32 %162, i32* %163, align 4, !tbaa !3
  br label %if.end1017.i

if.else1014.i:                                    ; preds = %if.end1003.i
  %164 = bitcast i8* %160 to i32*
  %165 = load i32* %len.i, align 4
  store i32 %165, i32* %164, align 1
  %.pre1025 = load i8** %aptr958.i, align 8, !tbaa !0
  br label %if.end1017.i

if.end1017.i:                                     ; preds = %if.else1014.i, %if.then1011.i
  %166 = phi i8* [ %.pre1025, %if.else1014.i ], [ %160, %if.then1011.i ]
  %add.ptr1020.i = getelementptr inbounds i8* %166, i64 4
  store i8* %add.ptr1020.i, i8** %aptr958.i, align 8, !tbaa !0
  br label %if.end1097.i

if.else1021.i:                                    ; preds = %if.else953.i
  %call1023.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %155, i8* %1, i64 4) #7
  %cmp1024.i = icmp eq i64 %call1023.i, 4
  br i1 %cmp1024.i, label %if.end1097.i, label %return

if.else1030.i:                                    ; preds = %if.else867.i
  %167 = load i32* %len.i, align 4, !tbaa !3
  %conv1031.i = trunc i32 %167 to i8
  %168 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1033.i = icmp eq %struct._PerlIO** %168, null
  br i1 %tobool1033.i, label %if.then1034.i, label %if.else1088.i

if.then1034.i:                                    ; preds = %if.else1030.i
  %aptr1036.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %169 = load i8** %aptr1036.i, align 8, !tbaa !0
  %aend1038.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %170 = load i8** %aend1038.i, align 8, !tbaa !0
  %cmp1039.i = icmp ult i8* %169, %170
  br i1 %cmp1039.i, label %if.then1041.i, label %if.else1045.i

if.then1041.i:                                    ; preds = %if.then1034.i
  %incdec.ptr1044.i = getelementptr inbounds i8* %169, i64 1
  store i8* %incdec.ptr1044.i, i8** %aptr1036.i, align 8, !tbaa !0
  store i8 %conv1031.i, i8* %169, align 1, !tbaa !1
  br label %if.end1097.i

if.else1045.i:                                    ; preds = %if.then1034.i
  %asiz1048.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %171 = load i64* %asiz1048.i, align 8, !tbaa !4
  %arena1057.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %172 = load i8** %arena1057.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1058.i = ptrtoint i8* %169 to i64
  %sub.ptr.rhs.cast1059.i = ptrtoint i8* %172 to i64
  %sub.ptr.sub1060.i = sub i64 %sub.ptr.lhs.cast1058.i, %sub.ptr.rhs.cast1059.i
  %add1050.i = shl i64 %171, 32
  %conv1052.i = add i64 %add1050.i, 35184372088832
  %sext2343.i = ashr exact i64 %conv1052.i, 32
  %conv1064.i = and i64 %sext2343.i, -8192
  %call1066.i = call i8* @Perl_safesysrealloc(i8* %172, i64 %conv1064.i) #7
  store i8* %call1066.i, i8** %arena1057.i, align 8, !tbaa !0
  store i64 %conv1064.i, i64* %asiz1048.i, align 8, !tbaa !4
  %sext2344.i = shl i64 %sub.ptr.sub1060.i, 32
  %idx.ext1074.i = ashr exact i64 %sext2344.i, 32
  %add.ptr1075.i = getelementptr inbounds i8* %call1066.i, i64 %idx.ext1074.i
  %add.ptr1081.i = getelementptr inbounds i8* %call1066.i, i64 %conv1064.i
  store i8* %add.ptr1081.i, i8** %aend1038.i, align 8, !tbaa !0
  %add.ptr1075.i.sum = add i64 %idx.ext1074.i, 1
  %incdec.ptr1086.i = getelementptr inbounds i8* %call1066.i, i64 %add.ptr1075.i.sum
  store i8* %incdec.ptr1086.i, i8** %aptr1036.i, align 8, !tbaa !0
  store i8 %conv1031.i, i8* %add.ptr1075.i, align 1, !tbaa !1
  br label %if.end1097.i

if.else1088.i:                                    ; preds = %if.else1030.i
  %conv1090.i = and i32 %167, 255
  %call1091.i = call i32 @PerlIO_putc(%struct._PerlIO** %168, i32 %conv1090.i) #7
  %cmp1092.i = icmp eq i32 %call1091.i, -1
  br i1 %cmp1092.i, label %return, label %if.end1097.i

if.end1097.i:                                     ; preds = %if.else1088.i, %if.else1021.i, %if.else945.i, %if.else1045.i, %if.then1041.i, %if.end1017.i, %if.end941.i
  %173 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1099.i = icmp eq %struct._PerlIO** %173, null
  br i1 %tobool1099.i, label %if.then1100.i, label %if.else1157.i

if.then1100.i:                                    ; preds = %if.end1097.i
  %aptr1102.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %174 = load i8** %aptr1102.i, align 8, !tbaa !0
  %175 = load i32* %len.i, align 4, !tbaa !3
  %idx.ext1103.i = sext i32 %175 to i64
  %add.ptr1104.i = getelementptr inbounds i8* %174, i64 %idx.ext1103.i
  %aend1106.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %176 = load i8** %aend1106.i, align 8, !tbaa !0
  %cmp1107.i = icmp ugt i8* %add.ptr1104.i, %176
  br i1 %cmp1107.i, label %if.then1109.i, label %if.end1149.i

if.then1109.i:                                    ; preds = %if.then1100.i
  %asiz1113.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %177 = load i64* %asiz1113.i, align 8, !tbaa !4
  %add1114.i = add i64 %177, %idx.ext1103.i
  %arena1122.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %178 = load i8** %arena1122.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1123.i = ptrtoint i8* %174 to i64
  %sub.ptr.rhs.cast1124.i = ptrtoint i8* %178 to i64
  %sub.ptr.sub1125.i = sub i64 %sub.ptr.lhs.cast1123.i, %sub.ptr.rhs.cast1124.i
  %add1115.i = shl i64 %add1114.i, 32
  %conv1117.i = add i64 %add1115.i, 35180077121536
  %sext2361.i = ashr exact i64 %conv1117.i, 32
  %conv1129.i = and i64 %sext2361.i, -8192
  %call1131.i = call i8* @Perl_safesysrealloc(i8* %178, i64 %conv1129.i) #7
  store i8* %call1131.i, i8** %arena1122.i, align 8, !tbaa !0
  store i64 %conv1129.i, i64* %asiz1113.i, align 8, !tbaa !4
  %sext2362.i = shl i64 %sub.ptr.sub1125.i, 32
  %idx.ext1139.i = ashr exact i64 %sext2362.i, 32
  %add.ptr1140.i = getelementptr inbounds i8* %call1131.i, i64 %idx.ext1139.i
  store i8* %add.ptr1140.i, i8** %aptr1102.i, align 8, !tbaa !0
  %add.ptr1146.i = getelementptr inbounds i8* %call1131.i, i64 %conv1129.i
  store i8* %add.ptr1146.i, i8** %aend1106.i, align 8, !tbaa !0
  %.pre1027 = load i32* %len.i, align 4, !tbaa !3
  br label %if.end1149.i

if.end1149.i:                                     ; preds = %if.then1109.i, %if.then1100.i
  %179 = phi i32 [ %.pre1027, %if.then1109.i ], [ %175, %if.then1100.i ]
  %180 = phi i8* [ %add.ptr1140.i, %if.then1109.i ], [ %174, %if.then1100.i ]
  %conv1152.i = sext i32 %179 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %15, i64 %conv1152.i, i32 1, i1 false) #3
  %181 = load i32* %len.i, align 4, !tbaa !3
  %182 = load i8** %aptr1102.i, align 8, !tbaa !0
  %idx.ext1155.i = sext i32 %181 to i64
  %add.ptr1156.i = getelementptr inbounds i8* %182, i64 %idx.ext1155.i
  store i8* %add.ptr1156.i, i8** %aptr1102.i, align 8, !tbaa !0
  br label %if.end1167.i

if.else1157.i:                                    ; preds = %if.end1097.i
  %183 = load i32* %len.i, align 4, !tbaa !3
  %conv1159.i = sext i32 %183 to i64
  %call1160.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %173, i8* %15, i64 %conv1159.i) #7
  %184 = load i32* %len.i, align 4, !tbaa !3
  %conv1161.i = sext i32 %184 to i64
  %cmp1162.i = icmp eq i64 %call1160.i, %conv1161.i
  br i1 %cmp1162.i, label %if.end1167.i, label %return

if.end1167.i:                                     ; preds = %if.else1157.i, %if.end1149.i, %if.else857.i, %if.else814.i, %if.then810.i, %if.else790.i, %if.end786.i, %if.else714.i, %if.end710.i
  %and1169.i = and i32 %conv637.i, 8
  %tobool1170.i = icmp eq i32 %and1169.i, 0
  %185 = load i64* %len2.i, align 8, !tbaa !4
  br i1 %tobool1170.i, label %if.else1331.i, label %if.then1171.i

if.then1171.i:                                    ; preds = %if.end1167.i
  %conv1172.i = trunc i64 %185 to i32
  store i32 %conv1172.i, i32* %wlen2.i, align 4, !tbaa !3
  %netorder1173.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %186 = load i32* %netorder1173.i, align 4, !tbaa !3
  %tobool1174.i = icmp eq i32 %186, 0
  br i1 %tobool1174.i, label %if.else1254.i, label %if.then1175.i

if.then1175.i:                                    ; preds = %if.then1171.i
  %187 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv1172.i) #3, !srcloc !30
  store i32 %187, i32* %y1176.i, align 4, !tbaa !3
  %188 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1180.i = icmp eq %struct._PerlIO** %188, null
  br i1 %tobool1180.i, label %if.then1181.i, label %if.else1246.i

if.then1181.i:                                    ; preds = %if.then1175.i
  %aptr1183.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %189 = load i8** %aptr1183.i, align 8, !tbaa !0
  %add.ptr1184.i = getelementptr inbounds i8* %189, i64 4
  %aend1186.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %190 = load i8** %aend1186.i, align 8, !tbaa !0
  %cmp1187.i = icmp ugt i8* %add.ptr1184.i, %190
  br i1 %cmp1187.i, label %if.then1189.i, label %if.end1228.i

if.then1189.i:                                    ; preds = %if.then1181.i
  %asiz1192.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %191 = load i64* %asiz1192.i, align 8, !tbaa !4
  %arena1201.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %192 = load i8** %arena1201.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1202.i = ptrtoint i8* %189 to i64
  %sub.ptr.rhs.cast1203.i = ptrtoint i8* %192 to i64
  %sub.ptr.sub1204.i = sub i64 %sub.ptr.lhs.cast1202.i, %sub.ptr.rhs.cast1203.i
  %add1194.i = shl i64 %191, 32
  %conv1196.i = add i64 %add1194.i, 35197256990720
  %sext2359.i = ashr exact i64 %conv1196.i, 32
  %conv1208.i = and i64 %sext2359.i, -8192
  %call1210.i = call i8* @Perl_safesysrealloc(i8* %192, i64 %conv1208.i) #7
  store i8* %call1210.i, i8** %arena1201.i, align 8, !tbaa !0
  store i64 %conv1208.i, i64* %asiz1192.i, align 8, !tbaa !4
  %sext2360.i = shl i64 %sub.ptr.sub1204.i, 32
  %idx.ext1218.i = ashr exact i64 %sext2360.i, 32
  %add.ptr1219.i = getelementptr inbounds i8* %call1210.i, i64 %idx.ext1218.i
  store i8* %add.ptr1219.i, i8** %aptr1183.i, align 8, !tbaa !0
  %add.ptr1225.i = getelementptr inbounds i8* %call1210.i, i64 %conv1208.i
  store i8* %add.ptr1225.i, i8** %aend1186.i, align 8, !tbaa !0
  br label %if.end1228.i

if.end1228.i:                                     ; preds = %if.then1189.i, %if.then1181.i
  %193 = phi i8* [ %add.ptr1219.i, %if.then1189.i ], [ %189, %if.then1181.i ]
  %194 = ptrtoint i8* %193 to i64
  %and1233.i = and i64 %194, -4
  %cmp1234.i = icmp eq i64 %194, %and1233.i
  br i1 %cmp1234.i, label %if.then1236.i, label %if.else1239.i

if.then1236.i:                                    ; preds = %if.end1228.i
  %195 = load i32* %y1176.i, align 4, !tbaa !3
  %196 = bitcast i8* %193 to i32*
  store i32 %195, i32* %196, align 4, !tbaa !3
  br label %if.end1242.i

if.else1239.i:                                    ; preds = %if.end1228.i
  %197 = bitcast i8* %193 to i32*
  %198 = load i32* %y1176.i, align 4
  store i32 %198, i32* %197, align 1
  %.pre1033 = load i8** %aptr1183.i, align 8, !tbaa !0
  br label %if.end1242.i

if.end1242.i:                                     ; preds = %if.else1239.i, %if.then1236.i
  %199 = phi i8* [ %.pre1033, %if.else1239.i ], [ %193, %if.then1236.i ]
  %add.ptr1245.i = getelementptr inbounds i8* %199, i64 4
  store i8* %add.ptr1245.i, i8** %aptr1183.i, align 8, !tbaa !0
  br label %if.end1399.i

if.else1246.i:                                    ; preds = %if.then1175.i
  %call1248.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %188, i8* %8, i64 4) #7
  %cmp1249.i = icmp eq i64 %call1248.i, 4
  br i1 %cmp1249.i, label %if.end1399.i, label %return

if.else1254.i:                                    ; preds = %if.then1171.i
  %200 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1256.i = icmp eq %struct._PerlIO** %200, null
  br i1 %tobool1256.i, label %if.then1257.i, label %if.else1322.i

if.then1257.i:                                    ; preds = %if.else1254.i
  %aptr1259.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %201 = load i8** %aptr1259.i, align 8, !tbaa !0
  %add.ptr1260.i = getelementptr inbounds i8* %201, i64 4
  %aend1262.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %202 = load i8** %aend1262.i, align 8, !tbaa !0
  %cmp1263.i = icmp ugt i8* %add.ptr1260.i, %202
  br i1 %cmp1263.i, label %if.then1265.i, label %if.end1304.i

if.then1265.i:                                    ; preds = %if.then1257.i
  %asiz1268.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %203 = load i64* %asiz1268.i, align 8, !tbaa !4
  %arena1277.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %204 = load i8** %arena1277.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1278.i = ptrtoint i8* %201 to i64
  %sub.ptr.rhs.cast1279.i = ptrtoint i8* %204 to i64
  %sub.ptr.sub1280.i = sub i64 %sub.ptr.lhs.cast1278.i, %sub.ptr.rhs.cast1279.i
  %add1270.i = shl i64 %203, 32
  %conv1272.i = add i64 %add1270.i, 35197256990720
  %sext2357.i = ashr exact i64 %conv1272.i, 32
  %conv1284.i = and i64 %sext2357.i, -8192
  %call1286.i = call i8* @Perl_safesysrealloc(i8* %204, i64 %conv1284.i) #7
  store i8* %call1286.i, i8** %arena1277.i, align 8, !tbaa !0
  store i64 %conv1284.i, i64* %asiz1268.i, align 8, !tbaa !4
  %sext2358.i = shl i64 %sub.ptr.sub1280.i, 32
  %idx.ext1294.i = ashr exact i64 %sext2358.i, 32
  %add.ptr1295.i = getelementptr inbounds i8* %call1286.i, i64 %idx.ext1294.i
  store i8* %add.ptr1295.i, i8** %aptr1259.i, align 8, !tbaa !0
  %add.ptr1301.i = getelementptr inbounds i8* %call1286.i, i64 %conv1284.i
  store i8* %add.ptr1301.i, i8** %aend1262.i, align 8, !tbaa !0
  br label %if.end1304.i

if.end1304.i:                                     ; preds = %if.then1265.i, %if.then1257.i
  %205 = phi i8* [ %add.ptr1295.i, %if.then1265.i ], [ %201, %if.then1257.i ]
  %206 = ptrtoint i8* %205 to i64
  %and1309.i = and i64 %206, -4
  %cmp1310.i = icmp eq i64 %206, %and1309.i
  br i1 %cmp1310.i, label %if.then1312.i, label %if.else1315.i

if.then1312.i:                                    ; preds = %if.end1304.i
  %207 = load i32* %wlen2.i, align 4, !tbaa !3
  %208 = bitcast i8* %205 to i32*
  store i32 %207, i32* %208, align 4, !tbaa !3
  br label %if.end1318.i

if.else1315.i:                                    ; preds = %if.end1304.i
  %209 = bitcast i8* %205 to i32*
  %210 = load i32* %wlen2.i, align 4
  store i32 %210, i32* %209, align 1
  %.pre1032 = load i8** %aptr1259.i, align 8, !tbaa !0
  br label %if.end1318.i

if.end1318.i:                                     ; preds = %if.else1315.i, %if.then1312.i
  %211 = phi i8* [ %.pre1032, %if.else1315.i ], [ %205, %if.then1312.i ]
  %add.ptr1321.i = getelementptr inbounds i8* %211, i64 4
  store i8* %add.ptr1321.i, i8** %aptr1259.i, align 8, !tbaa !0
  br label %if.end1399.i

if.else1322.i:                                    ; preds = %if.else1254.i
  %call1324.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %200, i8* %7, i64 4) #7
  %cmp1325.i = icmp eq i64 %call1324.i, 4
  br i1 %cmp1325.i, label %if.end1399.i, label %return

if.else1331.i:                                    ; preds = %if.end1167.i
  %conv1333.i = trunc i64 %185 to i8
  %212 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1335.i = icmp eq %struct._PerlIO** %212, null
  br i1 %tobool1335.i, label %if.then1336.i, label %if.else1390.i

if.then1336.i:                                    ; preds = %if.else1331.i
  %aptr1338.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %213 = load i8** %aptr1338.i, align 8, !tbaa !0
  %aend1340.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %214 = load i8** %aend1340.i, align 8, !tbaa !0
  %cmp1341.i = icmp ult i8* %213, %214
  br i1 %cmp1341.i, label %if.then1343.i, label %if.else1347.i

if.then1343.i:                                    ; preds = %if.then1336.i
  %incdec.ptr1346.i = getelementptr inbounds i8* %213, i64 1
  store i8* %incdec.ptr1346.i, i8** %aptr1338.i, align 8, !tbaa !0
  store i8 %conv1333.i, i8* %213, align 1, !tbaa !1
  br label %if.end1399.i

if.else1347.i:                                    ; preds = %if.then1336.i
  %asiz1350.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %215 = load i64* %asiz1350.i, align 8, !tbaa !4
  %arena1359.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %216 = load i8** %arena1359.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1360.i = ptrtoint i8* %213 to i64
  %sub.ptr.rhs.cast1361.i = ptrtoint i8* %216 to i64
  %sub.ptr.sub1362.i = sub i64 %sub.ptr.lhs.cast1360.i, %sub.ptr.rhs.cast1361.i
  %add1352.i = shl i64 %215, 32
  %conv1354.i = add i64 %add1352.i, 35184372088832
  %sext2345.i = ashr exact i64 %conv1354.i, 32
  %conv1366.i = and i64 %sext2345.i, -8192
  %call1368.i = call i8* @Perl_safesysrealloc(i8* %216, i64 %conv1366.i) #7
  store i8* %call1368.i, i8** %arena1359.i, align 8, !tbaa !0
  store i64 %conv1366.i, i64* %asiz1350.i, align 8, !tbaa !4
  %sext2346.i = shl i64 %sub.ptr.sub1362.i, 32
  %idx.ext1376.i = ashr exact i64 %sext2346.i, 32
  %add.ptr1377.i = getelementptr inbounds i8* %call1368.i, i64 %idx.ext1376.i
  %add.ptr1383.i = getelementptr inbounds i8* %call1368.i, i64 %conv1366.i
  store i8* %add.ptr1383.i, i8** %aend1340.i, align 8, !tbaa !0
  %add.ptr1377.i.sum = add i64 %idx.ext1376.i, 1
  %incdec.ptr1388.i = getelementptr inbounds i8* %call1368.i, i64 %add.ptr1377.i.sum
  store i8* %incdec.ptr1388.i, i8** %aptr1338.i, align 8, !tbaa !0
  store i8 %conv1333.i, i8* %add.ptr1377.i, align 1, !tbaa !1
  br label %if.end1399.i

if.else1390.i:                                    ; preds = %if.else1331.i
  %217 = trunc i64 %185 to i32
  %conv1392.i = and i32 %217, 255
  %call1393.i = call i32 @PerlIO_putc(%struct._PerlIO** %212, i32 %conv1392.i) #7
  %cmp1394.i = icmp eq i32 %call1393.i, -1
  br i1 %cmp1394.i, label %return, label %if.end1399.i

if.end1399.i:                                     ; preds = %if.else1390.i, %if.else1322.i, %if.else1246.i, %if.else1347.i, %if.then1343.i, %if.end1318.i, %if.end1242.i
  %218 = load i64* %len2.i, align 8, !tbaa !4
  %tobool1400.i = icmp eq i64 %218, 0
  br i1 %tobool1400.i, label %if.end1465.i, label %if.then1401.i

if.then1401.i:                                    ; preds = %if.end1399.i
  %219 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1403.i = icmp eq %struct._PerlIO** %219, null
  br i1 %tobool1403.i, label %if.then1404.i, label %if.else1457.i

if.then1404.i:                                    ; preds = %if.then1401.i
  %aptr1406.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %220 = load i8** %aptr1406.i, align 8, !tbaa !0
  %add.ptr1407.i = getelementptr inbounds i8* %220, i64 %218
  %aend1409.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %221 = load i8** %aend1409.i, align 8, !tbaa !0
  %cmp1410.i = icmp ugt i8* %add.ptr1407.i, %221
  br i1 %cmp1410.i, label %if.then1412.i, label %if.end1451.i

if.then1412.i:                                    ; preds = %if.then1404.i
  %asiz1415.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %222 = load i64* %asiz1415.i, align 8, !tbaa !4
  %add1416.i = add i64 %222, %218
  %arena1424.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %223 = load i8** %arena1424.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1425.i = ptrtoint i8* %220 to i64
  %sub.ptr.rhs.cast1426.i = ptrtoint i8* %223 to i64
  %sub.ptr.sub1427.i = sub i64 %sub.ptr.lhs.cast1425.i, %sub.ptr.rhs.cast1426.i
  %add1417.i = shl i64 %add1416.i, 32
  %conv1419.i = add i64 %add1417.i, 35180077121536
  %sext2355.i = ashr exact i64 %conv1419.i, 32
  %conv1431.i = and i64 %sext2355.i, -8192
  %call1433.i = call i8* @Perl_safesysrealloc(i8* %223, i64 %conv1431.i) #7
  store i8* %call1433.i, i8** %arena1424.i, align 8, !tbaa !0
  store i64 %conv1431.i, i64* %asiz1415.i, align 8, !tbaa !4
  %sext2356.i = shl i64 %sub.ptr.sub1427.i, 32
  %idx.ext1441.i = ashr exact i64 %sext2356.i, 32
  %add.ptr1442.i = getelementptr inbounds i8* %call1433.i, i64 %idx.ext1441.i
  store i8* %add.ptr1442.i, i8** %aptr1406.i, align 8, !tbaa !0
  %add.ptr1448.i = getelementptr inbounds i8* %call1433.i, i64 %conv1431.i
  store i8* %add.ptr1448.i, i8** %aend1409.i, align 8, !tbaa !0
  %.pre1031 = load i64* %len2.i, align 8, !tbaa !4
  br label %if.end1451.i

if.end1451.i:                                     ; preds = %if.then1412.i, %if.then1404.i
  %224 = phi i64 [ %.pre1031, %if.then1412.i ], [ %218, %if.then1404.i ]
  %225 = phi i8* [ %add.ptr1442.i, %if.then1412.i ], [ %220, %if.then1404.i ]
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %225, i8* %cond35.i, i64 %224, i32 1, i1 false) #3
  %226 = load i64* %len2.i, align 8, !tbaa !4
  %227 = load i8** %aptr1406.i, align 8, !tbaa !0
  %add.ptr1456.i = getelementptr inbounds i8* %227, i64 %226
  store i8* %add.ptr1456.i, i8** %aptr1406.i, align 8, !tbaa !0
  br label %if.end1465.i

if.else1457.i:                                    ; preds = %if.then1401.i
  %call1459.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %219, i8* %cond35.i, i64 %218) #7
  %228 = load i64* %len2.i, align 8, !tbaa !4
  %cmp1460.i = icmp eq i64 %call1459.i, %228
  br i1 %cmp1460.i, label %if.end1465.i, label %return

if.end1465.i:                                     ; preds = %if.else1457.i, %if.end1451.i, %if.end1399.i
  %and1467.i = and i32 %conv637.i, 128
  %tobool1468.i = icmp eq i32 %and1467.i, 0
  br i1 %tobool1468.i, label %if.end1789.i, label %if.then1469.i

if.then1469.i:                                    ; preds = %if.end1465.i
  %sub.i = add nsw i32 %conv14.i, -1
  store i32 %sub.i, i32* %len3.i, align 4, !tbaa !3
  %and1471.i = and i32 %conv637.i, 16
  %tobool1472.i = icmp eq i32 %and1471.i, 0
  br i1 %tobool1472.i, label %if.else1632.i, label %if.then1473.i

if.then1473.i:                                    ; preds = %if.then1469.i
  %netorder1474.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %229 = load i32* %netorder1474.i, align 4, !tbaa !3
  %tobool1475.i = icmp eq i32 %229, 0
  br i1 %tobool1475.i, label %if.else1555.i, label %if.then1476.i

if.then1476.i:                                    ; preds = %if.then1473.i
  %230 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %sub.i) #3, !srcloc !31
  store i32 %230, i32* %y1477.i, align 4, !tbaa !3
  %231 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1481.i = icmp eq %struct._PerlIO** %231, null
  br i1 %tobool1481.i, label %if.then1482.i, label %if.else1547.i

if.then1482.i:                                    ; preds = %if.then1476.i
  %aptr1484.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %232 = load i8** %aptr1484.i, align 8, !tbaa !0
  %add.ptr1485.i = getelementptr inbounds i8* %232, i64 4
  %aend1487.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %233 = load i8** %aend1487.i, align 8, !tbaa !0
  %cmp1488.i = icmp ugt i8* %add.ptr1485.i, %233
  br i1 %cmp1488.i, label %if.then1490.i, label %if.end1529.i

if.then1490.i:                                    ; preds = %if.then1482.i
  %asiz1493.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %234 = load i64* %asiz1493.i, align 8, !tbaa !4
  %arena1502.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %235 = load i8** %arena1502.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1503.i = ptrtoint i8* %232 to i64
  %sub.ptr.rhs.cast1504.i = ptrtoint i8* %235 to i64
  %sub.ptr.sub1505.i = sub i64 %sub.ptr.lhs.cast1503.i, %sub.ptr.rhs.cast1504.i
  %add1495.i = shl i64 %234, 32
  %conv1497.i = add i64 %add1495.i, 35197256990720
  %sext2353.i = ashr exact i64 %conv1497.i, 32
  %conv1509.i = and i64 %sext2353.i, -8192
  %call1511.i = call i8* @Perl_safesysrealloc(i8* %235, i64 %conv1509.i) #7
  store i8* %call1511.i, i8** %arena1502.i, align 8, !tbaa !0
  store i64 %conv1509.i, i64* %asiz1493.i, align 8, !tbaa !4
  %sext2354.i = shl i64 %sub.ptr.sub1505.i, 32
  %idx.ext1519.i = ashr exact i64 %sext2354.i, 32
  %add.ptr1520.i = getelementptr inbounds i8* %call1511.i, i64 %idx.ext1519.i
  store i8* %add.ptr1520.i, i8** %aptr1484.i, align 8, !tbaa !0
  %add.ptr1526.i = getelementptr inbounds i8* %call1511.i, i64 %conv1509.i
  store i8* %add.ptr1526.i, i8** %aend1487.i, align 8, !tbaa !0
  br label %if.end1529.i

if.end1529.i:                                     ; preds = %if.then1490.i, %if.then1482.i
  %236 = phi i8* [ %add.ptr1520.i, %if.then1490.i ], [ %232, %if.then1482.i ]
  %237 = ptrtoint i8* %236 to i64
  %and1534.i = and i64 %237, -4
  %cmp1535.i = icmp eq i64 %237, %and1534.i
  br i1 %cmp1535.i, label %if.then1537.i, label %if.else1540.i

if.then1537.i:                                    ; preds = %if.end1529.i
  %238 = load i32* %y1477.i, align 4, !tbaa !3
  %239 = bitcast i8* %236 to i32*
  store i32 %238, i32* %239, align 4, !tbaa !3
  br label %if.end1543.i

if.else1540.i:                                    ; preds = %if.end1529.i
  %240 = bitcast i8* %236 to i32*
  %241 = load i32* %y1477.i, align 4
  store i32 %241, i32* %240, align 1
  %.pre1029 = load i8** %aptr1484.i, align 8, !tbaa !0
  br label %if.end1543.i

if.end1543.i:                                     ; preds = %if.else1540.i, %if.then1537.i
  %242 = phi i8* [ %.pre1029, %if.else1540.i ], [ %236, %if.then1537.i ]
  %add.ptr1546.i = getelementptr inbounds i8* %242, i64 4
  store i8* %add.ptr1546.i, i8** %aptr1484.i, align 8, !tbaa !0
  br label %for.cond1701.i.preheader

if.else1547.i:                                    ; preds = %if.then1476.i
  %call1549.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %231, i8* %10, i64 4) #7
  %cmp1550.i = icmp eq i64 %call1549.i, 4
  br i1 %cmp1550.i, label %for.cond1701.i.preheader, label %return

if.else1555.i:                                    ; preds = %if.then1473.i
  %243 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1557.i = icmp eq %struct._PerlIO** %243, null
  br i1 %tobool1557.i, label %if.then1558.i, label %if.else1623.i

if.then1558.i:                                    ; preds = %if.else1555.i
  %aptr1560.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %244 = load i8** %aptr1560.i, align 8, !tbaa !0
  %add.ptr1561.i = getelementptr inbounds i8* %244, i64 4
  %aend1563.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %245 = load i8** %aend1563.i, align 8, !tbaa !0
  %cmp1564.i = icmp ugt i8* %add.ptr1561.i, %245
  br i1 %cmp1564.i, label %if.then1566.i, label %if.end1605.i

if.then1566.i:                                    ; preds = %if.then1558.i
  %asiz1569.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %246 = load i64* %asiz1569.i, align 8, !tbaa !4
  %arena1578.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %247 = load i8** %arena1578.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1579.i = ptrtoint i8* %244 to i64
  %sub.ptr.rhs.cast1580.i = ptrtoint i8* %247 to i64
  %sub.ptr.sub1581.i = sub i64 %sub.ptr.lhs.cast1579.i, %sub.ptr.rhs.cast1580.i
  %add1571.i = shl i64 %246, 32
  %conv1573.i = add i64 %add1571.i, 35197256990720
  %sext2351.i = ashr exact i64 %conv1573.i, 32
  %conv1585.i = and i64 %sext2351.i, -8192
  %call1587.i = call i8* @Perl_safesysrealloc(i8* %247, i64 %conv1585.i) #7
  store i8* %call1587.i, i8** %arena1578.i, align 8, !tbaa !0
  store i64 %conv1585.i, i64* %asiz1569.i, align 8, !tbaa !4
  %sext2352.i = shl i64 %sub.ptr.sub1581.i, 32
  %idx.ext1595.i = ashr exact i64 %sext2352.i, 32
  %add.ptr1596.i = getelementptr inbounds i8* %call1587.i, i64 %idx.ext1595.i
  store i8* %add.ptr1596.i, i8** %aptr1560.i, align 8, !tbaa !0
  %add.ptr1602.i = getelementptr inbounds i8* %call1587.i, i64 %conv1585.i
  store i8* %add.ptr1602.i, i8** %aend1563.i, align 8, !tbaa !0
  br label %if.end1605.i

if.end1605.i:                                     ; preds = %if.then1566.i, %if.then1558.i
  %248 = phi i8* [ %add.ptr1596.i, %if.then1566.i ], [ %244, %if.then1558.i ]
  %249 = ptrtoint i8* %248 to i64
  %and1610.i = and i64 %249, -4
  %cmp1611.i = icmp eq i64 %249, %and1610.i
  br i1 %cmp1611.i, label %if.then1613.i, label %if.else1616.i

if.then1613.i:                                    ; preds = %if.end1605.i
  %250 = load i32* %len3.i, align 4, !tbaa !3
  %251 = bitcast i8* %248 to i32*
  store i32 %250, i32* %251, align 4, !tbaa !3
  br label %if.end1619.i

if.else1616.i:                                    ; preds = %if.end1605.i
  %252 = bitcast i8* %248 to i32*
  %253 = load i32* %len3.i, align 4
  store i32 %253, i32* %252, align 1
  %.pre1028 = load i8** %aptr1560.i, align 8, !tbaa !0
  br label %if.end1619.i

if.end1619.i:                                     ; preds = %if.else1616.i, %if.then1613.i
  %254 = phi i8* [ %.pre1028, %if.else1616.i ], [ %248, %if.then1613.i ]
  %add.ptr1622.i = getelementptr inbounds i8* %254, i64 4
  store i8* %add.ptr1622.i, i8** %aptr1560.i, align 8, !tbaa !0
  br label %for.cond1701.i.preheader

if.else1623.i:                                    ; preds = %if.else1555.i
  %call1625.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %243, i8* %9, i64 4) #7
  %cmp1626.i = icmp eq i64 %call1625.i, 4
  br i1 %cmp1626.i, label %for.cond1701.i.preheader, label %return

if.else1632.i:                                    ; preds = %if.then1469.i
  %conv1634.i = trunc i32 %sub.i to i8
  %255 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1636.i = icmp eq %struct._PerlIO** %255, null
  br i1 %tobool1636.i, label %if.then1637.i, label %if.else1691.i

if.then1637.i:                                    ; preds = %if.else1632.i
  %aptr1639.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %256 = load i8** %aptr1639.i, align 8, !tbaa !0
  %aend1641.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %257 = load i8** %aend1641.i, align 8, !tbaa !0
  %cmp1642.i = icmp ult i8* %256, %257
  br i1 %cmp1642.i, label %if.then1644.i, label %if.else1648.i

if.then1644.i:                                    ; preds = %if.then1637.i
  %incdec.ptr1647.i = getelementptr inbounds i8* %256, i64 1
  store i8* %incdec.ptr1647.i, i8** %aptr1639.i, align 8, !tbaa !0
  store i8 %conv1634.i, i8* %256, align 1, !tbaa !1
  br label %for.cond1701.i.preheader

if.else1648.i:                                    ; preds = %if.then1637.i
  %asiz1651.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %258 = load i64* %asiz1651.i, align 8, !tbaa !4
  %arena1660.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %259 = load i8** %arena1660.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1661.i = ptrtoint i8* %256 to i64
  %sub.ptr.rhs.cast1662.i = ptrtoint i8* %259 to i64
  %sub.ptr.sub1663.i = sub i64 %sub.ptr.lhs.cast1661.i, %sub.ptr.rhs.cast1662.i
  %add1653.i = shl i64 %258, 32
  %conv1655.i = add i64 %add1653.i, 35184372088832
  %sext2347.i = ashr exact i64 %conv1655.i, 32
  %conv1667.i = and i64 %sext2347.i, -8192
  %call1669.i = call i8* @Perl_safesysrealloc(i8* %259, i64 %conv1667.i) #7
  store i8* %call1669.i, i8** %arena1660.i, align 8, !tbaa !0
  store i64 %conv1667.i, i64* %asiz1651.i, align 8, !tbaa !4
  %sext2348.i = shl i64 %sub.ptr.sub1663.i, 32
  %idx.ext1677.i = ashr exact i64 %sext2348.i, 32
  %add.ptr1678.i = getelementptr inbounds i8* %call1669.i, i64 %idx.ext1677.i
  %add.ptr1684.i = getelementptr inbounds i8* %call1669.i, i64 %conv1667.i
  store i8* %add.ptr1684.i, i8** %aend1641.i, align 8, !tbaa !0
  %add.ptr1678.i.sum = add i64 %idx.ext1677.i, 1
  %incdec.ptr1689.i = getelementptr inbounds i8* %call1669.i, i64 %add.ptr1678.i.sum
  store i8* %incdec.ptr1689.i, i8** %aptr1639.i, align 8, !tbaa !0
  store i8 %conv1634.i, i8* %add.ptr1678.i, align 1, !tbaa !1
  br label %for.cond1701.i.preheader

if.else1691.i:                                    ; preds = %if.else1632.i
  %conv1693.i = and i32 %sub.i, 255
  %call1694.i = call i32 @PerlIO_putc(%struct._PerlIO** %255, i32 %conv1693.i) #7
  %cmp1695.i = icmp eq i32 %call1694.i, -1
  br i1 %cmp1695.i, label %return, label %for.cond1701.i.preheader

for.cond1701.i.preheader:                         ; preds = %if.end1543.i, %if.else1547.i, %if.end1619.i, %if.else1623.i, %if.then1644.i, %if.else1648.i, %if.else1691.i
  br i1 %cmp36.i1015, label %for.body1704.i.lr.ph, label %if.end1795.i

for.body1704.i.lr.ph:                             ; preds = %for.cond1701.i.preheader
  %aptr1715.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend1718.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %asiz1724.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %arena1733.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  br label %for.body1704.i

for.body1704.i:                                   ; preds = %for.body1704.i.lr.ph, %for.inc1786.i
  %indvars.iv = phi i64 [ 1, %for.body1704.i.lr.ph ], [ %indvars.iv.next, %for.inc1786.i ]
  %arrayidx1708.i = getelementptr inbounds %struct.sv** %42, i64 %indvars.iv
  %260 = load %struct.sv** %arrayidx1708.i, align 8, !tbaa !0
  %261 = ptrtoint %struct.sv* %260 to i64
  %conv1710.i = trunc i64 %261 to i32
  %262 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %conv1710.i) #3, !srcloc !32
  store i32 %262, i32* %tagval.i, align 4, !tbaa !3
  %263 = load %struct._PerlIO*** %fio571.i, align 8, !tbaa !0
  %tobool1712.i = icmp eq %struct._PerlIO** %263, null
  br i1 %tobool1712.i, label %if.then1713.i, label %if.else1778.i

if.then1713.i:                                    ; preds = %for.body1704.i
  %264 = load i8** %aptr1715.i, align 8, !tbaa !0
  %add.ptr1716.i = getelementptr inbounds i8* %264, i64 4
  %265 = load i8** %aend1718.i, align 8, !tbaa !0
  %cmp1719.i = icmp ugt i8* %add.ptr1716.i, %265
  br i1 %cmp1719.i, label %if.then1721.i, label %if.end1760.i

if.then1721.i:                                    ; preds = %if.then1713.i
  %266 = load i64* %asiz1724.i, align 8, !tbaa !4
  %267 = load i8** %arena1733.i, align 8, !tbaa !0
  %sub.ptr.lhs.cast1734.i = ptrtoint i8* %264 to i64
  %sub.ptr.rhs.cast1735.i = ptrtoint i8* %267 to i64
  %sub.ptr.sub1736.i = sub i64 %sub.ptr.lhs.cast1734.i, %sub.ptr.rhs.cast1735.i
  %add1726.i = shl i64 %266, 32
  %conv1728.i = add i64 %add1726.i, 35197256990720
  %sext2349.i = ashr exact i64 %conv1728.i, 32
  %conv1740.i = and i64 %sext2349.i, -8192
  %call1742.i = call i8* @Perl_safesysrealloc(i8* %267, i64 %conv1740.i) #7
  store i8* %call1742.i, i8** %arena1733.i, align 8, !tbaa !0
  store i64 %conv1740.i, i64* %asiz1724.i, align 8, !tbaa !4
  %sext2350.i = shl i64 %sub.ptr.sub1736.i, 32
  %idx.ext1750.i = ashr exact i64 %sext2350.i, 32
  %add.ptr1751.i = getelementptr inbounds i8* %call1742.i, i64 %idx.ext1750.i
  store i8* %add.ptr1751.i, i8** %aptr1715.i, align 8, !tbaa !0
  %add.ptr1757.i = getelementptr inbounds i8* %call1742.i, i64 %conv1740.i
  store i8* %add.ptr1757.i, i8** %aend1718.i, align 8, !tbaa !0
  br label %if.end1760.i

if.end1760.i:                                     ; preds = %if.then1721.i, %if.then1713.i
  %268 = phi i8* [ %add.ptr1751.i, %if.then1721.i ], [ %264, %if.then1713.i ]
  %269 = ptrtoint i8* %268 to i64
  %and1765.i = and i64 %269, -4
  %cmp1766.i = icmp eq i64 %269, %and1765.i
  br i1 %cmp1766.i, label %if.then1768.i, label %if.else1771.i

if.then1768.i:                                    ; preds = %if.end1760.i
  %270 = load i32* %tagval.i, align 4, !tbaa !3
  %271 = bitcast i8* %268 to i32*
  store i32 %270, i32* %271, align 4, !tbaa !3
  br label %if.end1774.i

if.else1771.i:                                    ; preds = %if.end1760.i
  %272 = bitcast i8* %268 to i32*
  %273 = load i32* %tagval.i, align 4
  store i32 %273, i32* %272, align 1
  %.pre1030 = load i8** %aptr1715.i, align 8, !tbaa !0
  br label %if.end1774.i

if.end1774.i:                                     ; preds = %if.else1771.i, %if.then1768.i
  %274 = phi i8* [ %.pre1030, %if.else1771.i ], [ %268, %if.then1768.i ]
  %add.ptr1777.i = getelementptr inbounds i8* %274, i64 4
  store i8* %add.ptr1777.i, i8** %aptr1715.i, align 8, !tbaa !0
  br label %for.inc1786.i

if.else1778.i:                                    ; preds = %for.body1704.i
  %call1780.i = call i64 @Perl_PerlIO_write(%struct._PerlIO** %263, i8* %11, i64 4) #7
  %cmp1781.i = icmp eq i64 %call1780.i, 4
  br i1 %cmp1781.i, label %for.inc1786.i, label %return

for.inc1786.i:                                    ; preds = %if.else1778.i, %if.end1774.i
  %indvars.iv.next = add i64 %indvars.iv, 1
  %275 = trunc i64 %indvars.iv.next to i32
  %cmp1702.i = icmp slt i32 %275, %conv14.i
  br i1 %cmp1702.i, label %for.body1704.i, label %if.end1789.i

if.end1789.i:                                     ; preds = %for.inc1786.i, %if.end1465.i
  br i1 %cmp36.i1015, label %if.then1792.i, label %if.end1795.i

if.then1792.i:                                    ; preds = %if.end1789.i
  %276 = load %struct.xpvav** %sv_any13.i, align 8, !tbaa !0
  %xav_fill1794.i = getelementptr inbounds %struct.xpvav* %276, i64 0, i32 1
  store i64 0, i64* %xav_fill1794.i, align 8, !tbaa !4
  br label %if.end1795.i

if.end1795.i:                                     ; preds = %for.cond1701.i.preheader, %if.then1792.i, %if.end1789.i
  call void @Perl_av_undef(%struct.av* %call24.i.i) #7
  %277 = bitcast %struct.av* %call24.i.i to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %277) #7
  %cmp1796.i = icmp eq i32 %obj_type.0.i, 3
  br i1 %cmp1796.i, label %if.then1798.i, label %if.end1821.i

if.then1798.i:                                    ; preds = %if.end1795.i
  %call1800.i = call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 %mtype.0.i) #7
  %tobool1801.i = icmp eq %struct.magic* %call1800.i, null
  br i1 %tobool1801.i, label %if.then1802.i, label %if.end1816.i

if.then1802.i:                                    ; preds = %if.then1798.i
  %sv_flags1803.i = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %278 = load i32* %sv_flags1803.i, align 4, !tbaa !3
  %and1804.i = and i32 %278, 255
  %s_dirty1805.i = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty1805.i, align 4, !tbaa !3
  %cmp1807.i = icmp eq i32 %and1804.i, 11
  br i1 %cmp1807.i, label %cond.end1814.i, label %cond.false1810.i

cond.false1810.i:                                 ; preds = %if.then1802.i
  %cmp1811.i = icmp eq i32 %and1804.i, 10
  %cond1813.i = select i1 %cmp1811.i, i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str79, i64 0, i64 0)
  br label %cond.end1814.i

cond.end1814.i:                                   ; preds = %cond.false1810.i, %if.then1802.i
  %cond1815.i = phi i8* [ %cond1813.i, %cond.false1810.i ], [ getelementptr inbounds ([5 x i8]* @.str77, i64 0, i64 0), %if.then1802.i ]
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([59 x i8]* @.str90, i64 0, i64 0), i32 %mtype.0.i, i8* %cond1815.i) #7
  br label %if.end1816.i

if.end1816.i:                                     ; preds = %cond.end1814.i, %if.then1798.i
  %mg_obj.i = getelementptr inbounds %struct.magic* %call1800.i, i64 0, i32 5
  %279 = load %struct.sv** %mg_obj.i, align 8, !tbaa !0
  %call1817.i = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %279) #7
  %tobool1818.i = icmp eq i32 %call1817.i, 0
  br i1 %tobool1818.i, label %if.end1821.i, label %return

if.end1821.i:                                     ; preds = %if.end1816.i, %if.end1795.i
  br label %return

if.end:                                           ; preds = %entry
  %sv_any = getelementptr inbounds %struct.hv* %pkg, i64 0, i32 0
  %280 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_name = getelementptr inbounds %struct.xpvhv* %280, i64 0, i32 10
  %281 = load i8** %xhv_name, align 8, !tbaa !0
  %call3 = call i64 @strlen(i8* %281) #7
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !3
  %call4 = call fastcc i32 @known_class(%struct.stcxt* %cxt, i8* %281, i32 %conv, i32* %classnum) #6
  %tobool5 = icmp eq i32 %call4, 0
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %282 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool7 = icmp ne %struct._PerlIO** %282, null
  br i1 %tobool5, label %if.else342, label %if.then6

if.then6:                                         ; preds = %if.end
  br i1 %tobool7, label %if.else44, label %if.then8

if.then8:                                         ; preds = %if.then6
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %283 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %284 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %283, %284
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  %incdec.ptr = getelementptr inbounds i8* %283, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 18, i8* %283, align 1, !tbaa !1
  br label %if.end51

if.else:                                          ; preds = %if.then8
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %285 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %286 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %283 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %286 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add15 = shl i64 %285, 32
  %conv16 = add i64 %add15, 35184372088832
  %sext1000 = ashr exact i64 %conv16, 32
  %conv23 = and i64 %sext1000, -8192
  %call24 = call i8* @Perl_safesysrealloc(i8* %286, i64 %conv23) #7
  store i8* %call24, i8** %arena, align 8, !tbaa !0
  store i64 %conv23, i64* %asiz, align 8, !tbaa !4
  %sext1001 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext1001, 32
  %add.ptr = getelementptr inbounds i8* %call24, i64 %idx.ext
  %add.ptr37 = getelementptr inbounds i8* %call24, i64 %conv23
  store i8* %add.ptr37, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr42 = getelementptr inbounds i8* %call24, i64 %add.ptr.sum
  store i8* %incdec.ptr42, i8** %aptr, align 8, !tbaa !0
  store i8 18, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end51

if.else44:                                        ; preds = %if.then6
  %call46 = call i32 @PerlIO_putc(%struct._PerlIO** %282, i32 18) #7
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %return, label %if.end51

if.end51:                                         ; preds = %if.else44, %if.then11, %if.else
  %287 = load i32* %classnum, align 4, !tbaa !3
  %cmp52 = icmp slt i32 %287, 128
  br i1 %cmp52, label %if.then54, label %if.else121

if.then54:                                        ; preds = %if.end51
  %conv55 = trunc i32 %287 to i8
  %288 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool57 = icmp eq %struct._PerlIO** %288, null
  br i1 %tobool57, label %if.then58, label %if.else112

if.then58:                                        ; preds = %if.then54
  %aptr60 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %289 = load i8** %aptr60, align 8, !tbaa !0
  %aend62 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %290 = load i8** %aend62, align 8, !tbaa !0
  %cmp63 = icmp ult i8* %289, %290
  br i1 %cmp63, label %if.then65, label %if.else69

if.then65:                                        ; preds = %if.then58
  %incdec.ptr68 = getelementptr inbounds i8* %289, i64 1
  store i8* %incdec.ptr68, i8** %aptr60, align 8, !tbaa !0
  store i8 %conv55, i8* %289, align 1, !tbaa !1
  br label %if.end771

if.else69:                                        ; preds = %if.then58
  %asiz72 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %291 = load i64* %asiz72, align 8, !tbaa !4
  %arena81 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %292 = load i8** %arena81, align 8, !tbaa !0
  %sub.ptr.lhs.cast82 = ptrtoint i8* %289 to i64
  %sub.ptr.rhs.cast83 = ptrtoint i8* %292 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %add74 = shl i64 %291, 32
  %conv76 = add i64 %add74, 35184372088832
  %sext1008 = ashr exact i64 %conv76, 32
  %conv88 = and i64 %sext1008, -8192
  %call90 = call i8* @Perl_safesysrealloc(i8* %292, i64 %conv88) #7
  store i8* %call90, i8** %arena81, align 8, !tbaa !0
  store i64 %conv88, i64* %asiz72, align 8, !tbaa !4
  %sext1009 = shl i64 %sub.ptr.sub84, 32
  %idx.ext98 = ashr exact i64 %sext1009, 32
  %add.ptr99 = getelementptr inbounds i8* %call90, i64 %idx.ext98
  %add.ptr105 = getelementptr inbounds i8* %call90, i64 %conv88
  store i8* %add.ptr105, i8** %aend62, align 8, !tbaa !0
  %add.ptr99.sum = add i64 %idx.ext98, 1
  %incdec.ptr110 = getelementptr inbounds i8* %call90, i64 %add.ptr99.sum
  store i8* %incdec.ptr110, i8** %aptr60, align 8, !tbaa !0
  store i8 %conv55, i8* %add.ptr99, align 1, !tbaa !1
  br label %if.end771

if.else112:                                       ; preds = %if.then54
  %conv114 = and i32 %287, 255
  %call115 = call i32 @PerlIO_putc(%struct._PerlIO** %288, i32 %conv114) #7
  %cmp116 = icmp eq i32 %call115, -1
  br i1 %cmp116, label %return, label %if.end771

if.else121:                                       ; preds = %if.end51
  %293 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool123 = icmp eq %struct._PerlIO** %293, null
  br i1 %tobool123, label %if.then124, label %if.else178

if.then124:                                       ; preds = %if.else121
  %aptr126 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %294 = load i8** %aptr126, align 8, !tbaa !0
  %aend128 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %295 = load i8** %aend128, align 8, !tbaa !0
  %cmp129 = icmp ult i8* %294, %295
  br i1 %cmp129, label %if.then131, label %if.else135

if.then131:                                       ; preds = %if.then124
  %incdec.ptr134 = getelementptr inbounds i8* %294, i64 1
  store i8* %incdec.ptr134, i8** %aptr126, align 8, !tbaa !0
  store i8 -128, i8* %294, align 1, !tbaa !1
  br label %if.end186

if.else135:                                       ; preds = %if.then124
  %asiz138 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %296 = load i64* %asiz138, align 8, !tbaa !4
  %arena147 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %297 = load i8** %arena147, align 8, !tbaa !0
  %sub.ptr.lhs.cast148 = ptrtoint i8* %294 to i64
  %sub.ptr.rhs.cast149 = ptrtoint i8* %297 to i64
  %sub.ptr.sub150 = sub i64 %sub.ptr.lhs.cast148, %sub.ptr.rhs.cast149
  %add140 = shl i64 %296, 32
  %conv142 = add i64 %add140, 35184372088832
  %sext1002 = ashr exact i64 %conv142, 32
  %conv154 = and i64 %sext1002, -8192
  %call156 = call i8* @Perl_safesysrealloc(i8* %297, i64 %conv154) #7
  store i8* %call156, i8** %arena147, align 8, !tbaa !0
  store i64 %conv154, i64* %asiz138, align 8, !tbaa !4
  %sext1003 = shl i64 %sub.ptr.sub150, 32
  %idx.ext164 = ashr exact i64 %sext1003, 32
  %add.ptr165 = getelementptr inbounds i8* %call156, i64 %idx.ext164
  %add.ptr171 = getelementptr inbounds i8* %call156, i64 %conv154
  store i8* %add.ptr171, i8** %aend128, align 8, !tbaa !0
  %add.ptr165.sum = add i64 %idx.ext164, 1
  %incdec.ptr176 = getelementptr inbounds i8* %call156, i64 %add.ptr165.sum
  store i8* %incdec.ptr176, i8** %aptr126, align 8, !tbaa !0
  store i8 -128, i8* %add.ptr165, align 1, !tbaa !1
  br label %if.end186

if.else178:                                       ; preds = %if.else121
  %call181 = call i32 @PerlIO_putc(%struct._PerlIO** %293, i32 128) #7
  %cmp182 = icmp eq i32 %call181, -1
  br i1 %cmp182, label %return, label %if.end186

if.end186:                                        ; preds = %if.else178, %if.then131, %if.else135
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %298 = load i32* %netorder, align 4, !tbaa !3
  %tobool187 = icmp eq i32 %298, 0
  br i1 %tobool187, label %if.else264, label %if.then188

if.then188:                                       ; preds = %if.end186
  %299 = load i32* %classnum, align 4, !tbaa !3
  %300 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %299) #3, !srcloc !33
  store i32 %300, i32* %y, align 4, !tbaa !3
  %301 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool190 = icmp eq %struct._PerlIO** %301, null
  br i1 %tobool190, label %if.then191, label %if.else256

if.then191:                                       ; preds = %if.then188
  %aptr193 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %302 = load i8** %aptr193, align 8, !tbaa !0
  %add.ptr194 = getelementptr inbounds i8* %302, i64 4
  %aend196 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %303 = load i8** %aend196, align 8, !tbaa !0
  %cmp197 = icmp ugt i8* %add.ptr194, %303
  br i1 %cmp197, label %if.then199, label %if.end238

if.then199:                                       ; preds = %if.then191
  %asiz202 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %304 = load i64* %asiz202, align 8, !tbaa !4
  %arena211 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %305 = load i8** %arena211, align 8, !tbaa !0
  %sub.ptr.lhs.cast212 = ptrtoint i8* %302 to i64
  %sub.ptr.rhs.cast213 = ptrtoint i8* %305 to i64
  %sub.ptr.sub214 = sub i64 %sub.ptr.lhs.cast212, %sub.ptr.rhs.cast213
  %add204 = shl i64 %304, 32
  %conv206 = add i64 %add204, 35197256990720
  %sext1006 = ashr exact i64 %conv206, 32
  %conv218 = and i64 %sext1006, -8192
  %call220 = call i8* @Perl_safesysrealloc(i8* %305, i64 %conv218) #7
  store i8* %call220, i8** %arena211, align 8, !tbaa !0
  store i64 %conv218, i64* %asiz202, align 8, !tbaa !4
  %sext1007 = shl i64 %sub.ptr.sub214, 32
  %idx.ext228 = ashr exact i64 %sext1007, 32
  %add.ptr229 = getelementptr inbounds i8* %call220, i64 %idx.ext228
  store i8* %add.ptr229, i8** %aptr193, align 8, !tbaa !0
  %add.ptr235 = getelementptr inbounds i8* %call220, i64 %conv218
  store i8* %add.ptr235, i8** %aend196, align 8, !tbaa !0
  br label %if.end238

if.end238:                                        ; preds = %if.then199, %if.then191
  %306 = phi i8* [ %add.ptr229, %if.then199 ], [ %302, %if.then191 ]
  %307 = ptrtoint i8* %306 to i64
  %and243 = and i64 %307, -4
  %cmp244 = icmp eq i64 %307, %and243
  br i1 %cmp244, label %if.then246, label %if.else249

if.then246:                                       ; preds = %if.end238
  %308 = load i32* %y, align 4, !tbaa !3
  %309 = bitcast i8* %306 to i32*
  store i32 %308, i32* %309, align 4, !tbaa !3
  br label %if.end252

if.else249:                                       ; preds = %if.end238
  %310 = bitcast i8* %306 to i32*
  %311 = load i32* %y, align 4
  store i32 %311, i32* %310, align 1
  %.pre1024 = load i8** %aptr193, align 8, !tbaa !0
  br label %if.end252

if.end252:                                        ; preds = %if.else249, %if.then246
  %312 = phi i8* [ %.pre1024, %if.else249 ], [ %306, %if.then246 ]
  %add.ptr255 = getelementptr inbounds i8* %312, i64 4
  store i8* %add.ptr255, i8** %aptr193, align 8, !tbaa !0
  br label %if.end771

if.else256:                                       ; preds = %if.then188
  %313 = bitcast i32* %y to i8*
  %call258 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %301, i8* %313, i64 4) #7
  %cmp259 = icmp eq i64 %call258, 4
  br i1 %cmp259, label %if.end771, label %return

if.else264:                                       ; preds = %if.end186
  %314 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool266 = icmp eq %struct._PerlIO** %314, null
  br i1 %tobool266, label %if.then267, label %if.else332

if.then267:                                       ; preds = %if.else264
  %aptr269 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %315 = load i8** %aptr269, align 8, !tbaa !0
  %add.ptr270 = getelementptr inbounds i8* %315, i64 4
  %aend272 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %316 = load i8** %aend272, align 8, !tbaa !0
  %cmp273 = icmp ugt i8* %add.ptr270, %316
  br i1 %cmp273, label %if.then275, label %if.end314

if.then275:                                       ; preds = %if.then267
  %asiz278 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %317 = load i64* %asiz278, align 8, !tbaa !4
  %arena287 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %318 = load i8** %arena287, align 8, !tbaa !0
  %sub.ptr.lhs.cast288 = ptrtoint i8* %315 to i64
  %sub.ptr.rhs.cast289 = ptrtoint i8* %318 to i64
  %sub.ptr.sub290 = sub i64 %sub.ptr.lhs.cast288, %sub.ptr.rhs.cast289
  %add280 = shl i64 %317, 32
  %conv282 = add i64 %add280, 35197256990720
  %sext1004 = ashr exact i64 %conv282, 32
  %conv294 = and i64 %sext1004, -8192
  %call296 = call i8* @Perl_safesysrealloc(i8* %318, i64 %conv294) #7
  store i8* %call296, i8** %arena287, align 8, !tbaa !0
  store i64 %conv294, i64* %asiz278, align 8, !tbaa !4
  %sext1005 = shl i64 %sub.ptr.sub290, 32
  %idx.ext304 = ashr exact i64 %sext1005, 32
  %add.ptr305 = getelementptr inbounds i8* %call296, i64 %idx.ext304
  store i8* %add.ptr305, i8** %aptr269, align 8, !tbaa !0
  %add.ptr311 = getelementptr inbounds i8* %call296, i64 %conv294
  store i8* %add.ptr311, i8** %aend272, align 8, !tbaa !0
  br label %if.end314

if.end314:                                        ; preds = %if.then275, %if.then267
  %319 = phi i8* [ %add.ptr305, %if.then275 ], [ %315, %if.then267 ]
  %320 = ptrtoint i8* %319 to i64
  %and319 = and i64 %320, -4
  %cmp320 = icmp eq i64 %320, %and319
  br i1 %cmp320, label %if.then322, label %if.else325

if.then322:                                       ; preds = %if.end314
  %321 = load i32* %classnum, align 4, !tbaa !3
  %322 = bitcast i8* %319 to i32*
  store i32 %321, i32* %322, align 4, !tbaa !3
  br label %if.end328

if.else325:                                       ; preds = %if.end314
  %323 = bitcast i8* %319 to i32*
  %324 = load i32* %classnum, align 4
  store i32 %324, i32* %323, align 1
  %.pre1023 = load i8** %aptr269, align 8, !tbaa !0
  br label %if.end328

if.end328:                                        ; preds = %if.else325, %if.then322
  %325 = phi i8* [ %.pre1023, %if.else325 ], [ %319, %if.then322 ]
  %add.ptr331 = getelementptr inbounds i8* %325, i64 4
  store i8* %add.ptr331, i8** %aptr269, align 8, !tbaa !0
  br label %if.end771

if.else332:                                       ; preds = %if.else264
  %326 = bitcast i32* %classnum to i8*
  %call334 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %314, i8* %326, i64 4) #7
  %cmp335 = icmp eq i64 %call334, 4
  br i1 %cmp335, label %if.end771, label %return

if.else342:                                       ; preds = %if.end
  br i1 %tobool7, label %if.else399, label %if.then345

if.then345:                                       ; preds = %if.else342
  %aptr347 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %327 = load i8** %aptr347, align 8, !tbaa !0
  %aend349 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %328 = load i8** %aend349, align 8, !tbaa !0
  %cmp350 = icmp ult i8* %327, %328
  br i1 %cmp350, label %if.then352, label %if.else356

if.then352:                                       ; preds = %if.then345
  %incdec.ptr355 = getelementptr inbounds i8* %327, i64 1
  store i8* %incdec.ptr355, i8** %aptr347, align 8, !tbaa !0
  store i8 17, i8* %327, align 1, !tbaa !1
  br label %if.end406

if.else356:                                       ; preds = %if.then345
  %asiz359 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %329 = load i64* %asiz359, align 8, !tbaa !4
  %arena368 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %330 = load i8** %arena368, align 8, !tbaa !0
  %sub.ptr.lhs.cast369 = ptrtoint i8* %327 to i64
  %sub.ptr.rhs.cast370 = ptrtoint i8* %330 to i64
  %sub.ptr.sub371 = sub i64 %sub.ptr.lhs.cast369, %sub.ptr.rhs.cast370
  %add361 = shl i64 %329, 32
  %conv363 = add i64 %add361, 35184372088832
  %sext = ashr exact i64 %conv363, 32
  %conv375 = and i64 %sext, -8192
  %call377 = call i8* @Perl_safesysrealloc(i8* %330, i64 %conv375) #7
  store i8* %call377, i8** %arena368, align 8, !tbaa !0
  store i64 %conv375, i64* %asiz359, align 8, !tbaa !4
  %sext989 = shl i64 %sub.ptr.sub371, 32
  %idx.ext385 = ashr exact i64 %sext989, 32
  %add.ptr386 = getelementptr inbounds i8* %call377, i64 %idx.ext385
  %add.ptr392 = getelementptr inbounds i8* %call377, i64 %conv375
  store i8* %add.ptr392, i8** %aend349, align 8, !tbaa !0
  %add.ptr386.sum = add i64 %idx.ext385, 1
  %incdec.ptr397 = getelementptr inbounds i8* %call377, i64 %add.ptr386.sum
  store i8* %incdec.ptr397, i8** %aptr347, align 8, !tbaa !0
  store i8 17, i8* %add.ptr386, align 1, !tbaa !1
  br label %if.end406

if.else399:                                       ; preds = %if.else342
  %call401 = call i32 @PerlIO_putc(%struct._PerlIO** %282, i32 17) #7
  %cmp402 = icmp eq i32 %call401, -1
  br i1 %cmp402, label %return, label %if.end406

if.end406:                                        ; preds = %if.else399, %if.then352, %if.else356
  %331 = load i32* %len, align 4, !tbaa !3
  %cmp407 = icmp slt i32 %331, 128
  br i1 %cmp407, label %if.then409, label %if.else476

if.then409:                                       ; preds = %if.end406
  %conv410 = trunc i32 %331 to i8
  %332 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool412 = icmp eq %struct._PerlIO** %332, null
  br i1 %tobool412, label %if.then413, label %if.else467

if.then413:                                       ; preds = %if.then409
  %aptr415 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %333 = load i8** %aptr415, align 8, !tbaa !0
  %aend417 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %334 = load i8** %aend417, align 8, !tbaa !0
  %cmp418 = icmp ult i8* %333, %334
  br i1 %cmp418, label %if.then420, label %if.else424

if.then420:                                       ; preds = %if.then413
  %incdec.ptr423 = getelementptr inbounds i8* %333, i64 1
  store i8* %incdec.ptr423, i8** %aptr415, align 8, !tbaa !0
  store i8 %conv410, i8* %333, align 1, !tbaa !1
  br label %if.end701

if.else424:                                       ; preds = %if.then413
  %asiz427 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %335 = load i64* %asiz427, align 8, !tbaa !4
  %arena436 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %336 = load i8** %arena436, align 8, !tbaa !0
  %sub.ptr.lhs.cast437 = ptrtoint i8* %333 to i64
  %sub.ptr.rhs.cast438 = ptrtoint i8* %336 to i64
  %sub.ptr.sub439 = sub i64 %sub.ptr.lhs.cast437, %sub.ptr.rhs.cast438
  %add429 = shl i64 %335, 32
  %conv431 = add i64 %add429, 35184372088832
  %sext998 = ashr exact i64 %conv431, 32
  %conv443 = and i64 %sext998, -8192
  %call445 = call i8* @Perl_safesysrealloc(i8* %336, i64 %conv443) #7
  store i8* %call445, i8** %arena436, align 8, !tbaa !0
  store i64 %conv443, i64* %asiz427, align 8, !tbaa !4
  %sext999 = shl i64 %sub.ptr.sub439, 32
  %idx.ext453 = ashr exact i64 %sext999, 32
  %add.ptr454 = getelementptr inbounds i8* %call445, i64 %idx.ext453
  %add.ptr460 = getelementptr inbounds i8* %call445, i64 %conv443
  store i8* %add.ptr460, i8** %aend417, align 8, !tbaa !0
  %add.ptr454.sum = add i64 %idx.ext453, 1
  %incdec.ptr465 = getelementptr inbounds i8* %call445, i64 %add.ptr454.sum
  store i8* %incdec.ptr465, i8** %aptr415, align 8, !tbaa !0
  store i8 %conv410, i8* %add.ptr454, align 1, !tbaa !1
  br label %if.end701

if.else467:                                       ; preds = %if.then409
  %conv469 = and i32 %331, 255
  %call470 = call i32 @PerlIO_putc(%struct._PerlIO** %332, i32 %conv469) #7
  %cmp471 = icmp eq i32 %call470, -1
  br i1 %cmp471, label %return, label %if.end701

if.else476:                                       ; preds = %if.end406
  %337 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool479 = icmp eq %struct._PerlIO** %337, null
  br i1 %tobool479, label %if.then480, label %if.else534

if.then480:                                       ; preds = %if.else476
  %aptr482 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %338 = load i8** %aptr482, align 8, !tbaa !0
  %aend484 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %339 = load i8** %aend484, align 8, !tbaa !0
  %cmp485 = icmp ult i8* %338, %339
  br i1 %cmp485, label %if.then487, label %if.else491

if.then487:                                       ; preds = %if.then480
  %incdec.ptr490 = getelementptr inbounds i8* %338, i64 1
  store i8* %incdec.ptr490, i8** %aptr482, align 8, !tbaa !0
  store i8 -128, i8* %338, align 1, !tbaa !1
  br label %if.end542

if.else491:                                       ; preds = %if.then480
  %asiz494 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %340 = load i64* %asiz494, align 8, !tbaa !4
  %arena503 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %341 = load i8** %arena503, align 8, !tbaa !0
  %sub.ptr.lhs.cast504 = ptrtoint i8* %338 to i64
  %sub.ptr.rhs.cast505 = ptrtoint i8* %341 to i64
  %sub.ptr.sub506 = sub i64 %sub.ptr.lhs.cast504, %sub.ptr.rhs.cast505
  %add496 = shl i64 %340, 32
  %conv498 = add i64 %add496, 35184372088832
  %sext990 = ashr exact i64 %conv498, 32
  %conv510 = and i64 %sext990, -8192
  %call512 = call i8* @Perl_safesysrealloc(i8* %341, i64 %conv510) #7
  store i8* %call512, i8** %arena503, align 8, !tbaa !0
  store i64 %conv510, i64* %asiz494, align 8, !tbaa !4
  %sext991 = shl i64 %sub.ptr.sub506, 32
  %idx.ext520 = ashr exact i64 %sext991, 32
  %add.ptr521 = getelementptr inbounds i8* %call512, i64 %idx.ext520
  %add.ptr527 = getelementptr inbounds i8* %call512, i64 %conv510
  store i8* %add.ptr527, i8** %aend484, align 8, !tbaa !0
  %add.ptr521.sum = add i64 %idx.ext520, 1
  %incdec.ptr532 = getelementptr inbounds i8* %call512, i64 %add.ptr521.sum
  store i8* %incdec.ptr532, i8** %aptr482, align 8, !tbaa !0
  store i8 -128, i8* %add.ptr521, align 1, !tbaa !1
  br label %if.end542

if.else534:                                       ; preds = %if.else476
  %call537 = call i32 @PerlIO_putc(%struct._PerlIO** %337, i32 128) #7
  %cmp538 = icmp eq i32 %call537, -1
  br i1 %cmp538, label %return, label %if.end542

if.end542:                                        ; preds = %if.else534, %if.then487, %if.else491
  %netorder543 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %342 = load i32* %netorder543, align 4, !tbaa !3
  %tobool544 = icmp eq i32 %342, 0
  br i1 %tobool544, label %if.else624, label %if.then545

if.then545:                                       ; preds = %if.end542
  %343 = load i32* %len, align 4, !tbaa !3
  %344 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %343) #3, !srcloc !34
  store i32 %344, i32* %y546, align 4, !tbaa !3
  %345 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool550 = icmp eq %struct._PerlIO** %345, null
  br i1 %tobool550, label %if.then551, label %if.else616

if.then551:                                       ; preds = %if.then545
  %aptr553 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %346 = load i8** %aptr553, align 8, !tbaa !0
  %add.ptr554 = getelementptr inbounds i8* %346, i64 4
  %aend556 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %347 = load i8** %aend556, align 8, !tbaa !0
  %cmp557 = icmp ugt i8* %add.ptr554, %347
  br i1 %cmp557, label %if.then559, label %if.end598

if.then559:                                       ; preds = %if.then551
  %asiz562 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %348 = load i64* %asiz562, align 8, !tbaa !4
  %arena571 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %349 = load i8** %arena571, align 8, !tbaa !0
  %sub.ptr.lhs.cast572 = ptrtoint i8* %346 to i64
  %sub.ptr.rhs.cast573 = ptrtoint i8* %349 to i64
  %sub.ptr.sub574 = sub i64 %sub.ptr.lhs.cast572, %sub.ptr.rhs.cast573
  %add564 = shl i64 %348, 32
  %conv566 = add i64 %add564, 35197256990720
  %sext996 = ashr exact i64 %conv566, 32
  %conv578 = and i64 %sext996, -8192
  %call580 = call i8* @Perl_safesysrealloc(i8* %349, i64 %conv578) #7
  store i8* %call580, i8** %arena571, align 8, !tbaa !0
  store i64 %conv578, i64* %asiz562, align 8, !tbaa !4
  %sext997 = shl i64 %sub.ptr.sub574, 32
  %idx.ext588 = ashr exact i64 %sext997, 32
  %add.ptr589 = getelementptr inbounds i8* %call580, i64 %idx.ext588
  store i8* %add.ptr589, i8** %aptr553, align 8, !tbaa !0
  %add.ptr595 = getelementptr inbounds i8* %call580, i64 %conv578
  store i8* %add.ptr595, i8** %aend556, align 8, !tbaa !0
  br label %if.end598

if.end598:                                        ; preds = %if.then559, %if.then551
  %350 = phi i8* [ %add.ptr589, %if.then559 ], [ %346, %if.then551 ]
  %351 = ptrtoint i8* %350 to i64
  %and603 = and i64 %351, -4
  %cmp604 = icmp eq i64 %351, %and603
  br i1 %cmp604, label %if.then606, label %if.else609

if.then606:                                       ; preds = %if.end598
  %352 = load i32* %y546, align 4, !tbaa !3
  %353 = bitcast i8* %350 to i32*
  store i32 %352, i32* %353, align 4, !tbaa !3
  br label %if.end612

if.else609:                                       ; preds = %if.end598
  %354 = bitcast i8* %350 to i32*
  %355 = load i32* %y546, align 4
  store i32 %355, i32* %354, align 1
  %.pre1022 = load i8** %aptr553, align 8, !tbaa !0
  br label %if.end612

if.end612:                                        ; preds = %if.else609, %if.then606
  %356 = phi i8* [ %.pre1022, %if.else609 ], [ %350, %if.then606 ]
  %add.ptr615 = getelementptr inbounds i8* %356, i64 4
  store i8* %add.ptr615, i8** %aptr553, align 8, !tbaa !0
  br label %if.end701

if.else616:                                       ; preds = %if.then545
  %357 = bitcast i32* %y546 to i8*
  %call618 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %345, i8* %357, i64 4) #7
  %cmp619 = icmp eq i64 %call618, 4
  br i1 %cmp619, label %if.end701, label %return

if.else624:                                       ; preds = %if.end542
  %358 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool626 = icmp eq %struct._PerlIO** %358, null
  br i1 %tobool626, label %if.then627, label %if.else692

if.then627:                                       ; preds = %if.else624
  %aptr629 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %359 = load i8** %aptr629, align 8, !tbaa !0
  %add.ptr630 = getelementptr inbounds i8* %359, i64 4
  %aend632 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %360 = load i8** %aend632, align 8, !tbaa !0
  %cmp633 = icmp ugt i8* %add.ptr630, %360
  br i1 %cmp633, label %if.then635, label %if.end674

if.then635:                                       ; preds = %if.then627
  %asiz638 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %361 = load i64* %asiz638, align 8, !tbaa !4
  %arena647 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %362 = load i8** %arena647, align 8, !tbaa !0
  %sub.ptr.lhs.cast648 = ptrtoint i8* %359 to i64
  %sub.ptr.rhs.cast649 = ptrtoint i8* %362 to i64
  %sub.ptr.sub650 = sub i64 %sub.ptr.lhs.cast648, %sub.ptr.rhs.cast649
  %add640 = shl i64 %361, 32
  %conv642 = add i64 %add640, 35197256990720
  %sext994 = ashr exact i64 %conv642, 32
  %conv654 = and i64 %sext994, -8192
  %call656 = call i8* @Perl_safesysrealloc(i8* %362, i64 %conv654) #7
  store i8* %call656, i8** %arena647, align 8, !tbaa !0
  store i64 %conv654, i64* %asiz638, align 8, !tbaa !4
  %sext995 = shl i64 %sub.ptr.sub650, 32
  %idx.ext664 = ashr exact i64 %sext995, 32
  %add.ptr665 = getelementptr inbounds i8* %call656, i64 %idx.ext664
  store i8* %add.ptr665, i8** %aptr629, align 8, !tbaa !0
  %add.ptr671 = getelementptr inbounds i8* %call656, i64 %conv654
  store i8* %add.ptr671, i8** %aend632, align 8, !tbaa !0
  br label %if.end674

if.end674:                                        ; preds = %if.then635, %if.then627
  %363 = phi i8* [ %add.ptr665, %if.then635 ], [ %359, %if.then627 ]
  %364 = ptrtoint i8* %363 to i64
  %and679 = and i64 %364, -4
  %cmp680 = icmp eq i64 %364, %and679
  br i1 %cmp680, label %if.then682, label %if.else685

if.then682:                                       ; preds = %if.end674
  %365 = load i32* %len, align 4, !tbaa !3
  %366 = bitcast i8* %363 to i32*
  store i32 %365, i32* %366, align 4, !tbaa !3
  br label %if.end688

if.else685:                                       ; preds = %if.end674
  %367 = bitcast i8* %363 to i32*
  %368 = load i32* %len, align 4
  store i32 %368, i32* %367, align 1
  %.pre1021 = load i8** %aptr629, align 8, !tbaa !0
  br label %if.end688

if.end688:                                        ; preds = %if.else685, %if.then682
  %369 = phi i8* [ %.pre1021, %if.else685 ], [ %363, %if.then682 ]
  %add.ptr691 = getelementptr inbounds i8* %369, i64 4
  store i8* %add.ptr691, i8** %aptr629, align 8, !tbaa !0
  br label %if.end701

if.else692:                                       ; preds = %if.else624
  %370 = bitcast i32* %len to i8*
  %call694 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %358, i8* %370, i64 4) #7
  %cmp695 = icmp eq i64 %call694, 4
  br i1 %cmp695, label %if.end701, label %return

if.end701:                                        ; preds = %if.else692, %if.else616, %if.else467, %if.end612, %if.end688, %if.else424, %if.then420
  %371 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool703 = icmp eq %struct._PerlIO** %371, null
  br i1 %tobool703, label %if.then704, label %if.else761

if.then704:                                       ; preds = %if.end701
  %aptr706 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %372 = load i8** %aptr706, align 8, !tbaa !0
  %373 = load i32* %len, align 4, !tbaa !3
  %idx.ext707 = sext i32 %373 to i64
  %add.ptr708 = getelementptr inbounds i8* %372, i64 %idx.ext707
  %aend710 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %374 = load i8** %aend710, align 8, !tbaa !0
  %cmp711 = icmp ugt i8* %add.ptr708, %374
  br i1 %cmp711, label %if.then713, label %if.end753

if.then713:                                       ; preds = %if.then704
  %asiz717 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %375 = load i64* %asiz717, align 8, !tbaa !4
  %add718 = add i64 %375, %idx.ext707
  %arena726 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %376 = load i8** %arena726, align 8, !tbaa !0
  %sub.ptr.lhs.cast727 = ptrtoint i8* %372 to i64
  %sub.ptr.rhs.cast728 = ptrtoint i8* %376 to i64
  %sub.ptr.sub729 = sub i64 %sub.ptr.lhs.cast727, %sub.ptr.rhs.cast728
  %add719 = shl i64 %add718, 32
  %conv721 = add i64 %add719, 35180077121536
  %sext992 = ashr exact i64 %conv721, 32
  %conv733 = and i64 %sext992, -8192
  %call735 = call i8* @Perl_safesysrealloc(i8* %376, i64 %conv733) #7
  store i8* %call735, i8** %arena726, align 8, !tbaa !0
  store i64 %conv733, i64* %asiz717, align 8, !tbaa !4
  %sext993 = shl i64 %sub.ptr.sub729, 32
  %idx.ext743 = ashr exact i64 %sext993, 32
  %add.ptr744 = getelementptr inbounds i8* %call735, i64 %idx.ext743
  store i8* %add.ptr744, i8** %aptr706, align 8, !tbaa !0
  %add.ptr750 = getelementptr inbounds i8* %call735, i64 %conv733
  store i8* %add.ptr750, i8** %aend710, align 8, !tbaa !0
  %.pre = load i32* %len, align 4, !tbaa !3
  br label %if.end753

if.end753:                                        ; preds = %if.then713, %if.then704
  %377 = phi i32 [ %.pre, %if.then713 ], [ %373, %if.then704 ]
  %378 = phi i8* [ %add.ptr744, %if.then713 ], [ %372, %if.then704 ]
  %conv756 = sext i32 %377 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %378, i8* %281, i64 %conv756, i32 1, i1 false)
  %379 = load i32* %len, align 4, !tbaa !3
  %380 = load i8** %aptr706, align 8, !tbaa !0
  %idx.ext759 = sext i32 %379 to i64
  %add.ptr760 = getelementptr inbounds i8* %380, i64 %idx.ext759
  store i8* %add.ptr760, i8** %aptr706, align 8, !tbaa !0
  br label %if.end771

if.else761:                                       ; preds = %if.end701
  %381 = load i32* %len, align 4, !tbaa !3
  %conv763 = sext i32 %381 to i64
  %call764 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %371, i8* %281, i64 %conv763) #7
  %382 = load i32* %len, align 4, !tbaa !3
  %conv765 = sext i32 %382 to i64
  %cmp766 = icmp eq i64 %call764, %conv765
  br i1 %cmp766, label %if.end771, label %return

if.end771:                                        ; preds = %if.else256, %if.else332, %if.else761, %if.end753, %if.else112, %if.then65, %if.else69, %if.end328, %if.end252
  %idxprom = sext i32 %type to i64
  %arrayidx = getelementptr inbounds [8 x i32 (%struct.stcxt*, %struct.sv*)*]* @sv_store, i64 0, i64 %idxprom
  %383 = load i32 (%struct.stcxt*, %struct.sv*)** %arrayidx, align 8, !tbaa !0
  %call772 = call i32 %383(%struct.stcxt* %cxt, %struct.sv* %sv) #7
  br label %return

return:                                           ; preds = %if.end301.i, %if.else292.i, %if.else225.i, %if.else157.i, %if.else93.i, %if.else1778.i, %if.end1821.i, %if.end1816.i, %if.else1691.i, %if.else1623.i, %if.else1547.i, %if.else1457.i, %if.else1390.i, %if.else1322.i, %if.else1246.i, %if.else1157.i, %if.else1088.i, %if.else1021.i, %if.else945.i, %if.else857.i, %if.else790.i, %if.else714.i, %if.else627.i, %if.else560.i, %if.else492.i, %if.else428.i, %if.end.i, %if.else761, %if.else692, %if.else616, %if.else534, %if.else467, %if.else399, %if.else332, %if.else256, %if.else178, %if.else112, %if.else44, %if.end771
  %retval.0 = phi i32 [ %call772, %if.end771 ], [ -1, %if.else44 ], [ -1, %if.else112 ], [ -1, %if.else178 ], [ -1, %if.else256 ], [ -1, %if.else332 ], [ -1, %if.else399 ], [ -1, %if.else467 ], [ -1, %if.else534 ], [ -1, %if.else616 ], [ -1, %if.else692 ], [ -1, %if.else761 ], [ 0, %if.end1821.i ], [ %call23.i, %if.end.i ], [ -1, %if.else428.i ], [ -1, %if.else492.i ], [ -1, %if.else560.i ], [ -1, %if.else627.i ], [ -1, %if.else714.i ], [ -1, %if.else790.i ], [ -1, %if.else857.i ], [ -1, %if.else945.i ], [ -1, %if.else1021.i ], [ -1, %if.else1088.i ], [ -1, %if.else1157.i ], [ -1, %if.else1246.i ], [ -1, %if.else1322.i ], [ -1, %if.else1390.i ], [ -1, %if.else1457.i ], [ -1, %if.else1547.i ], [ -1, %if.else1623.i ], [ -1, %if.else1691.i ], [ %call1817.i, %if.end1816.i ], [ -1, %if.else1778.i ], [ %call302.i, %if.end301.i ], [ -1, %if.else292.i ], [ -1, %if.else225.i ], [ -1, %if.else157.i ], [ -1, %if.else93.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @store_ref(%struct.stcxt* %cxt, %struct.sv* nocapture %sv) #1 {
entry:
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %0 = load i8** %sv_any, align 8, !tbaa !0
  %xrv_rv = bitcast i8* %0 to %struct.sv**
  %1 = load %struct.sv** %xrv_rv, align 8, !tbaa !0
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 4096
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else118, label %if.then

if.then:                                          ; preds = %entry
  %sv_any1 = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any1, align 8, !tbaa !0
  %xmg_stash = getelementptr inbounds i8* %3, i64 48
  %4 = bitcast i8* %xmg_stash to %struct.hv**
  %5 = load %struct.hv** %4, align 8, !tbaa !0
  %tobool2 = icmp ne %struct.hv* %5, null
  %6 = load i64* @PL_amagic_generation, align 8, !tbaa !4
  %tobool3 = icmp ne i64 %6, 0
  %or.cond = and i1 %tobool2, %tobool3
  br i1 %or.cond, label %land.lhs.true4, label %if.else52

land.lhs.true4:                                   ; preds = %if.then
  %call = tail call signext i8 @Perl_Gv_AMupdate(%struct.hv* %5) #7
  %tobool5 = icmp eq i8 %call, 0
  br i1 %tobool5, label %if.else52, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %7 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool7 = icmp eq %struct._PerlIO** %7, null
  br i1 %tobool7, label %if.then8, label %if.else44

if.then8:                                         ; preds = %if.then6
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %8 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %9 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %8, %9
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  %incdec.ptr = getelementptr inbounds i8* %8, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 20, i8* %8, align 1, !tbaa !1
  br label %if.end183

if.else:                                          ; preds = %if.then8
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %10 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %11 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add15 = shl i64 %10, 32
  %conv17 = add i64 %add15, 35184372088832
  %sext240 = ashr exact i64 %conv17, 32
  %conv24 = and i64 %sext240, -8192
  %call25 = tail call i8* @Perl_safesysrealloc(i8* %11, i64 %conv24) #7
  store i8* %call25, i8** %arena, align 8, !tbaa !0
  store i64 %conv24, i64* %asiz, align 8, !tbaa !4
  %sext241 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext241, 32
  %add.ptr = getelementptr inbounds i8* %call25, i64 %idx.ext
  %add.ptr38 = getelementptr inbounds i8* %call25, i64 %conv24
  store i8* %add.ptr38, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr43 = getelementptr inbounds i8* %call25, i64 %add.ptr.sum
  store i8* %incdec.ptr43, i8** %aptr, align 8, !tbaa !0
  store i8 20, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end183

if.else44:                                        ; preds = %if.then6
  %call46 = tail call i32 @PerlIO_putc(%struct._PerlIO** %7, i32 20) #7
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %return, label %if.end183

if.else52:                                        ; preds = %land.lhs.true4, %if.then
  %fio53 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %12 = load %struct._PerlIO*** %fio53, align 8, !tbaa !0
  %tobool54 = icmp eq %struct._PerlIO** %12, null
  br i1 %tobool54, label %if.then55, label %if.else109

if.then55:                                        ; preds = %if.else52
  %aptr57 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %13 = load i8** %aptr57, align 8, !tbaa !0
  %aend59 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %14 = load i8** %aend59, align 8, !tbaa !0
  %cmp60 = icmp ult i8* %13, %14
  br i1 %cmp60, label %if.then62, label %if.else66

if.then62:                                        ; preds = %if.then55
  %incdec.ptr65 = getelementptr inbounds i8* %13, i64 1
  store i8* %incdec.ptr65, i8** %aptr57, align 8, !tbaa !0
  store i8 4, i8* %13, align 1, !tbaa !1
  br label %if.end183

if.else66:                                        ; preds = %if.then55
  %asiz69 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %15 = load i64* %asiz69, align 8, !tbaa !4
  %arena78 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %16 = load i8** %arena78, align 8, !tbaa !0
  %sub.ptr.lhs.cast79 = ptrtoint i8* %13 to i64
  %sub.ptr.rhs.cast80 = ptrtoint i8* %16 to i64
  %sub.ptr.sub81 = sub i64 %sub.ptr.lhs.cast79, %sub.ptr.rhs.cast80
  %add71 = shl i64 %15, 32
  %conv73 = add i64 %add71, 35184372088832
  %sext238 = ashr exact i64 %conv73, 32
  %conv85 = and i64 %sext238, -8192
  %call87 = tail call i8* @Perl_safesysrealloc(i8* %16, i64 %conv85) #7
  store i8* %call87, i8** %arena78, align 8, !tbaa !0
  store i64 %conv85, i64* %asiz69, align 8, !tbaa !4
  %sext239 = shl i64 %sub.ptr.sub81, 32
  %idx.ext95 = ashr exact i64 %sext239, 32
  %add.ptr96 = getelementptr inbounds i8* %call87, i64 %idx.ext95
  %add.ptr102 = getelementptr inbounds i8* %call87, i64 %conv85
  store i8* %add.ptr102, i8** %aend59, align 8, !tbaa !0
  %add.ptr96.sum = add i64 %idx.ext95, 1
  %incdec.ptr107 = getelementptr inbounds i8* %call87, i64 %add.ptr96.sum
  store i8* %incdec.ptr107, i8** %aptr57, align 8, !tbaa !0
  store i8 4, i8* %add.ptr96, align 1, !tbaa !1
  br label %if.end183

if.else109:                                       ; preds = %if.else52
  %call111 = tail call i32 @PerlIO_putc(%struct._PerlIO** %12, i32 4) #7
  %cmp112 = icmp eq i32 %call111, -1
  br i1 %cmp112, label %return, label %if.end183

if.else118:                                       ; preds = %entry
  %fio119 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %17 = load %struct._PerlIO*** %fio119, align 8, !tbaa !0
  %tobool120 = icmp eq %struct._PerlIO** %17, null
  br i1 %tobool120, label %if.then121, label %if.else175

if.then121:                                       ; preds = %if.else118
  %aptr123 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %18 = load i8** %aptr123, align 8, !tbaa !0
  %aend125 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %19 = load i8** %aend125, align 8, !tbaa !0
  %cmp126 = icmp ult i8* %18, %19
  br i1 %cmp126, label %if.then128, label %if.else132

if.then128:                                       ; preds = %if.then121
  %incdec.ptr131 = getelementptr inbounds i8* %18, i64 1
  store i8* %incdec.ptr131, i8** %aptr123, align 8, !tbaa !0
  store i8 4, i8* %18, align 1, !tbaa !1
  br label %if.end183

if.else132:                                       ; preds = %if.then121
  %asiz135 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %20 = load i64* %asiz135, align 8, !tbaa !4
  %arena144 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %21 = load i8** %arena144, align 8, !tbaa !0
  %sub.ptr.lhs.cast145 = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast146 = ptrtoint i8* %21 to i64
  %sub.ptr.sub147 = sub i64 %sub.ptr.lhs.cast145, %sub.ptr.rhs.cast146
  %add137 = shl i64 %20, 32
  %conv139 = add i64 %add137, 35184372088832
  %sext = ashr exact i64 %conv139, 32
  %conv151 = and i64 %sext, -8192
  %call153 = tail call i8* @Perl_safesysrealloc(i8* %21, i64 %conv151) #7
  store i8* %call153, i8** %arena144, align 8, !tbaa !0
  store i64 %conv151, i64* %asiz135, align 8, !tbaa !4
  %sext237 = shl i64 %sub.ptr.sub147, 32
  %idx.ext161 = ashr exact i64 %sext237, 32
  %add.ptr162 = getelementptr inbounds i8* %call153, i64 %idx.ext161
  %add.ptr168 = getelementptr inbounds i8* %call153, i64 %conv151
  store i8* %add.ptr168, i8** %aend125, align 8, !tbaa !0
  %add.ptr162.sum = add i64 %idx.ext161, 1
  %incdec.ptr173 = getelementptr inbounds i8* %call153, i64 %add.ptr162.sum
  store i8* %incdec.ptr173, i8** %aptr123, align 8, !tbaa !0
  store i8 4, i8* %add.ptr162, align 1, !tbaa !1
  br label %if.end183

if.else175:                                       ; preds = %if.else118
  %call177 = tail call i32 @PerlIO_putc(%struct._PerlIO** %17, i32 4) #7
  %cmp178 = icmp eq i32 %call177, -1
  br i1 %cmp178, label %return, label %if.end183

if.end183:                                        ; preds = %if.else132, %if.then128, %if.else175, %if.else44, %if.then11, %if.else, %if.else109, %if.then62, %if.else66
  %call184 = tail call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %1) #6
  br label %return

return:                                           ; preds = %if.else175, %if.else109, %if.else44, %if.end183
  %retval.0 = phi i32 [ %call184, %if.end183 ], [ -1, %if.else44 ], [ -1, %if.else109 ], [ -1, %if.else175 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @store_scalar(%struct.stcxt* %cxt, %struct.sv* %sv) #1 {
entry:
  %iv = alloca i64, align 8
  %len = alloca i64, align 8
  %nv = alloca double, align 8
  %wlen = alloca i32, align 4
  %y = alloca i32, align 4
  %y1701 = alloca i32, align 4
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 118423552
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end111

if.then:                                          ; preds = %entry
  %cmp = icmp eq %struct.sv* %sv, @PL_sv_undef
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %1 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool2 = icmp ne %struct._PerlIO** %1, null
  br i1 %cmp, label %if.then1, label %if.else45

if.then1:                                         ; preds = %if.then
  br i1 %tobool2, label %if.else37, label %if.then3

if.then3:                                         ; preds = %if.then1
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %2 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %3 = load i8** %aend, align 8, !tbaa !0
  %cmp5 = icmp ult i8* %2, %3
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %incdec.ptr = getelementptr inbounds i8* %2, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 14, i8* %2, align 1, !tbaa !1
  br label %if.end110

if.else:                                          ; preds = %if.then3
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %4 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %5 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add10 = shl i64 %4, 32
  %conv = add i64 %add10, 35184372088832
  %sext2430 = ashr exact i64 %conv, 32
  %conv18 = and i64 %sext2430, -8192
  %call = call i8* @Perl_safesysrealloc(i8* %5, i64 %conv18) #7
  store i8* %call, i8** %arena, align 8, !tbaa !0
  store i64 %conv18, i64* %asiz, align 8, !tbaa !4
  %sext2431 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext2431, 32
  %add.ptr = getelementptr inbounds i8* %call, i64 %idx.ext
  %add.ptr31 = getelementptr inbounds i8* %call, i64 %conv18
  store i8* %add.ptr31, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr36 = getelementptr inbounds i8* %call, i64 %add.ptr.sum
  store i8* %incdec.ptr36, i8** %aptr, align 8, !tbaa !0
  store i8 14, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end110

if.else37:                                        ; preds = %if.then1
  %call39 = call i32 @PerlIO_putc(%struct._PerlIO** %1, i32 14) #7
  %cmp40 = icmp eq i32 %call39, -1
  br i1 %cmp40, label %return, label %if.end110

if.else45:                                        ; preds = %if.then
  br i1 %tobool2, label %if.else102, label %if.then48

if.then48:                                        ; preds = %if.else45
  %aptr50 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %6 = load i8** %aptr50, align 8, !tbaa !0
  %aend52 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %7 = load i8** %aend52, align 8, !tbaa !0
  %cmp53 = icmp ult i8* %6, %7
  br i1 %cmp53, label %if.then55, label %if.else59

if.then55:                                        ; preds = %if.then48
  %incdec.ptr58 = getelementptr inbounds i8* %6, i64 1
  store i8* %incdec.ptr58, i8** %aptr50, align 8, !tbaa !0
  store i8 5, i8* %6, align 1, !tbaa !1
  br label %if.end110

if.else59:                                        ; preds = %if.then48
  %asiz62 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %8 = load i64* %asiz62, align 8, !tbaa !4
  %arena71 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %9 = load i8** %arena71, align 8, !tbaa !0
  %sub.ptr.lhs.cast72 = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast73 = ptrtoint i8* %9 to i64
  %sub.ptr.sub74 = sub i64 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73
  %add64 = shl i64 %8, 32
  %conv66 = add i64 %add64, 35184372088832
  %sext = ashr exact i64 %conv66, 32
  %conv78 = and i64 %sext, -8192
  %call80 = call i8* @Perl_safesysrealloc(i8* %9, i64 %conv78) #7
  store i8* %call80, i8** %arena71, align 8, !tbaa !0
  store i64 %conv78, i64* %asiz62, align 8, !tbaa !4
  %sext2429 = shl i64 %sub.ptr.sub74, 32
  %idx.ext88 = ashr exact i64 %sext2429, 32
  %add.ptr89 = getelementptr inbounds i8* %call80, i64 %idx.ext88
  %add.ptr95 = getelementptr inbounds i8* %call80, i64 %conv78
  store i8* %add.ptr95, i8** %aend52, align 8, !tbaa !0
  %add.ptr89.sum = add i64 %idx.ext88, 1
  %incdec.ptr100 = getelementptr inbounds i8* %call80, i64 %add.ptr89.sum
  store i8* %incdec.ptr100, i8** %aptr50, align 8, !tbaa !0
  store i8 5, i8* %add.ptr89, align 1, !tbaa !1
  br label %if.end110

if.else102:                                       ; preds = %if.else45
  %call104 = call i32 @PerlIO_putc(%struct._PerlIO** %1, i32 5) #7
  %cmp105 = icmp eq i32 %call104, -1
  br i1 %cmp105, label %return, label %if.end110

if.end110:                                        ; preds = %if.else59, %if.then55, %if.else102, %if.else, %if.then6, %if.else37
  br label %return

if.end111:                                        ; preds = %entry
  %and112 = and i32 %0, 8781824
  %cmp113 = icmp eq i32 %and112, 8781824
  br i1 %cmp113, label %if.then115, label %if.else260

if.then115:                                       ; preds = %if.end111
  %cmp116 = icmp eq %struct.sv* %sv, @PL_sv_yes
  br i1 %cmp116, label %if.then118, label %if.else183

if.then118:                                       ; preds = %if.then115
  %fio119 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %10 = load %struct._PerlIO*** %fio119, align 8, !tbaa !0
  %tobool120 = icmp eq %struct._PerlIO** %10, null
  br i1 %tobool120, label %if.then121, label %if.else175

if.then121:                                       ; preds = %if.then118
  %aptr123 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %11 = load i8** %aptr123, align 8, !tbaa !0
  %aend125 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %12 = load i8** %aend125, align 8, !tbaa !0
  %cmp126 = icmp ult i8* %11, %12
  br i1 %cmp126, label %if.then128, label %if.else132

if.then128:                                       ; preds = %if.then121
  %incdec.ptr131 = getelementptr inbounds i8* %11, i64 1
  store i8* %incdec.ptr131, i8** %aptr123, align 8, !tbaa !0
  store i8 15, i8* %11, align 1, !tbaa !1
  br label %if.end1933

if.else132:                                       ; preds = %if.then121
  %asiz135 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %13 = load i64* %asiz135, align 8, !tbaa !4
  %arena144 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %14 = load i8** %arena144, align 8, !tbaa !0
  %sub.ptr.lhs.cast145 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast146 = ptrtoint i8* %14 to i64
  %sub.ptr.sub147 = sub i64 %sub.ptr.lhs.cast145, %sub.ptr.rhs.cast146
  %add137 = shl i64 %13, 32
  %conv139 = add i64 %add137, 35184372088832
  %sext2478 = ashr exact i64 %conv139, 32
  %conv151 = and i64 %sext2478, -8192
  %call153 = call i8* @Perl_safesysrealloc(i8* %14, i64 %conv151) #7
  store i8* %call153, i8** %arena144, align 8, !tbaa !0
  store i64 %conv151, i64* %asiz135, align 8, !tbaa !4
  %sext2479 = shl i64 %sub.ptr.sub147, 32
  %idx.ext161 = ashr exact i64 %sext2479, 32
  %add.ptr162 = getelementptr inbounds i8* %call153, i64 %idx.ext161
  %add.ptr168 = getelementptr inbounds i8* %call153, i64 %conv151
  store i8* %add.ptr168, i8** %aend125, align 8, !tbaa !0
  %add.ptr162.sum = add i64 %idx.ext161, 1
  %incdec.ptr173 = getelementptr inbounds i8* %call153, i64 %add.ptr162.sum
  store i8* %incdec.ptr173, i8** %aptr123, align 8, !tbaa !0
  store i8 15, i8* %add.ptr162, align 1, !tbaa !1
  br label %if.end1933

if.else175:                                       ; preds = %if.then118
  %call177 = call i32 @PerlIO_putc(%struct._PerlIO** %10, i32 15) #7
  %cmp178 = icmp eq i32 %call177, -1
  br i1 %cmp178, label %return, label %if.end1933

if.else183:                                       ; preds = %if.then115
  %cmp184 = icmp eq %struct.sv* %sv, @PL_sv_no
  br i1 %cmp184, label %if.then186, label %if.else251

if.then186:                                       ; preds = %if.else183
  %fio187 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %15 = load %struct._PerlIO*** %fio187, align 8, !tbaa !0
  %tobool188 = icmp eq %struct._PerlIO** %15, null
  br i1 %tobool188, label %if.then189, label %if.else243

if.then189:                                       ; preds = %if.then186
  %aptr191 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %16 = load i8** %aptr191, align 8, !tbaa !0
  %aend193 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %17 = load i8** %aend193, align 8, !tbaa !0
  %cmp194 = icmp ult i8* %16, %17
  br i1 %cmp194, label %if.then196, label %if.else200

if.then196:                                       ; preds = %if.then189
  %incdec.ptr199 = getelementptr inbounds i8* %16, i64 1
  store i8* %incdec.ptr199, i8** %aptr191, align 8, !tbaa !0
  store i8 16, i8* %16, align 1, !tbaa !1
  br label %if.end1933

if.else200:                                       ; preds = %if.then189
  %asiz203 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %18 = load i64* %asiz203, align 8, !tbaa !4
  %arena212 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %19 = load i8** %arena212, align 8, !tbaa !0
  %sub.ptr.lhs.cast213 = ptrtoint i8* %16 to i64
  %sub.ptr.rhs.cast214 = ptrtoint i8* %19 to i64
  %sub.ptr.sub215 = sub i64 %sub.ptr.lhs.cast213, %sub.ptr.rhs.cast214
  %add205 = shl i64 %18, 32
  %conv207 = add i64 %add205, 35184372088832
  %sext2476 = ashr exact i64 %conv207, 32
  %conv219 = and i64 %sext2476, -8192
  %call221 = call i8* @Perl_safesysrealloc(i8* %19, i64 %conv219) #7
  store i8* %call221, i8** %arena212, align 8, !tbaa !0
  store i64 %conv219, i64* %asiz203, align 8, !tbaa !4
  %sext2477 = shl i64 %sub.ptr.sub215, 32
  %idx.ext229 = ashr exact i64 %sext2477, 32
  %add.ptr230 = getelementptr inbounds i8* %call221, i64 %idx.ext229
  %add.ptr236 = getelementptr inbounds i8* %call221, i64 %conv219
  store i8* %add.ptr236, i8** %aend193, align 8, !tbaa !0
  %add.ptr230.sum = add i64 %idx.ext229, 1
  %incdec.ptr241 = getelementptr inbounds i8* %call221, i64 %add.ptr230.sum
  store i8* %incdec.ptr241, i8** %aptr191, align 8, !tbaa !0
  store i8 16, i8* %add.ptr230, align 1, !tbaa !1
  br label %if.end1933

if.else243:                                       ; preds = %if.then186
  %call245 = call i32 @PerlIO_putc(%struct._PerlIO** %15, i32 16) #7
  %cmp246 = icmp eq i32 %call245, -1
  br i1 %cmp246, label %return, label %if.end1933

if.else251:                                       ; preds = %if.else183
  %and253 = and i32 %0, 262144
  %cmp254 = icmp eq i32 %and253, 0
  br i1 %cmp254, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else251
  %sv_any = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %20 = load i8** %sv_any, align 8, !tbaa !0
  %xpv_cur = getelementptr inbounds i8* %20, i64 8
  %21 = bitcast i8* %xpv_cur to i64*
  %22 = load i64* %21, align 8, !tbaa !4
  store i64 %22, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %20 to i8**
  %23 = load i8** %xpv_pv, align 8, !tbaa !0
  br label %string

cond.false:                                       ; preds = %if.else251
  %call257 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  br label %string

if.else260:                                       ; preds = %if.end111
  %and261 = and i32 %0, 262144
  %tobool262 = icmp eq i32 %and261, 0
  br i1 %tobool262, label %if.else264, label %string_readlen

if.else264:                                       ; preds = %if.else260
  %and265 = and i32 %0, 65536
  %tobool266 = icmp eq i32 %and265, 0
  br i1 %tobool266, label %if.else724, label %cond.true271

cond.true271:                                     ; preds = %if.else264
  %sv_any272 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %24 = load i8** %sv_any272, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %24, i64 24
  %25 = bitcast i8* %xiv_iv to i64*
  %26 = load i64* %25, align 8, !tbaa !4
  br label %integer

integer:                                          ; preds = %cond.true759, %cond.false762, %cond.true271
  %storemerge = phi i64 [ %26, %cond.true271 ], [ %66, %cond.true759 ], [ %call763, %cond.false762 ]
  store i64 %storemerge, i64* %iv, align 8, !tbaa !4
  %tobool278 = icmp slt i32 %0, 0
  br i1 %tobool278, label %land.lhs.true, label %if.end291

land.lhs.true:                                    ; preds = %integer
  %27 = load i32* %sv_flags, align 4, !tbaa !3
  %and280 = and i32 %27, 65536
  %tobool281 = icmp eq i32 %and280, 0
  br i1 %tobool281, label %cond.false284, label %cond.true282

cond.true282:                                     ; preds = %land.lhs.true
  %sv_any283 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %28 = load i8** %sv_any283, align 8, !tbaa !0
  %xuv_uv = getelementptr inbounds i8* %28, i64 24
  %29 = bitcast i8* %xuv_uv to i64*
  %30 = load i64* %29, align 8, !tbaa !4
  br label %cond.end286

cond.false284:                                    ; preds = %land.lhs.true
  %call285 = call i64 @Perl_sv_2uv(%struct.sv* %sv) #7
  br label %cond.end286

cond.end286:                                      ; preds = %cond.false284, %cond.true282
  %cond287 = phi i64 [ %30, %cond.true282 ], [ %call285, %cond.false284 ]
  %cmp288 = icmp slt i64 %cond287, 0
  br i1 %cmp288, label %string_readlen, label %cond.end286.if.end291_crit_edge

cond.end286.if.end291_crit_edge:                  ; preds = %cond.end286
  %.pre2489 = load i64* %iv, align 8, !tbaa !4
  br label %if.end291

if.end291:                                        ; preds = %cond.end286.if.end291_crit_edge, %integer
  %31 = phi i64 [ %.pre2489, %cond.end286.if.end291_crit_edge ], [ %storemerge, %integer ]
  %.off = add i64 %31, 128
  %32 = icmp ult i64 %.off, 256
  br i1 %32, label %if.then297, label %if.else429

if.then297:                                       ; preds = %if.end291
  %conv299 = trunc i64 %.off to i8
  %fio300 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %33 = load %struct._PerlIO*** %fio300, align 8, !tbaa !0
  %tobool301 = icmp eq %struct._PerlIO** %33, null
  br i1 %tobool301, label %if.then302, label %if.else356

if.then302:                                       ; preds = %if.then297
  %aptr304 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %34 = load i8** %aptr304, align 8, !tbaa !0
  %aend306 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %35 = load i8** %aend306, align 8, !tbaa !0
  %cmp307 = icmp ult i8* %34, %35
  br i1 %cmp307, label %if.then309, label %if.else313

if.then309:                                       ; preds = %if.then302
  %incdec.ptr312 = getelementptr inbounds i8* %34, i64 1
  store i8* %incdec.ptr312, i8** %aptr304, align 8, !tbaa !0
  store i8 8, i8* %34, align 1, !tbaa !1
  br label %if.end363

if.else313:                                       ; preds = %if.then302
  %asiz316 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %36 = load i64* %asiz316, align 8, !tbaa !4
  %arena325 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %37 = load i8** %arena325, align 8, !tbaa !0
  %sub.ptr.lhs.cast326 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast327 = ptrtoint i8* %37 to i64
  %sub.ptr.sub328 = sub i64 %sub.ptr.lhs.cast326, %sub.ptr.rhs.cast327
  %add318 = shl i64 %36, 32
  %conv320 = add i64 %add318, 35184372088832
  %sext2472 = ashr exact i64 %conv320, 32
  %conv332 = and i64 %sext2472, -8192
  %call334 = call i8* @Perl_safesysrealloc(i8* %37, i64 %conv332) #7
  store i8* %call334, i8** %arena325, align 8, !tbaa !0
  store i64 %conv332, i64* %asiz316, align 8, !tbaa !4
  %sext2473 = shl i64 %sub.ptr.sub328, 32
  %idx.ext342 = ashr exact i64 %sext2473, 32
  %add.ptr343 = getelementptr inbounds i8* %call334, i64 %idx.ext342
  %add.ptr349 = getelementptr inbounds i8* %call334, i64 %conv332
  store i8* %add.ptr349, i8** %aend306, align 8, !tbaa !0
  %add.ptr343.sum = add i64 %idx.ext342, 1
  %incdec.ptr354 = getelementptr inbounds i8* %call334, i64 %add.ptr343.sum
  store i8* %incdec.ptr354, i8** %aptr304, align 8, !tbaa !0
  store i8 8, i8* %add.ptr343, align 1, !tbaa !1
  br label %if.end363

if.else356:                                       ; preds = %if.then297
  %call358 = call i32 @PerlIO_putc(%struct._PerlIO** %33, i32 8) #7
  %cmp359 = icmp eq i32 %call358, -1
  br i1 %cmp359, label %return, label %if.end363

if.end363:                                        ; preds = %if.else356, %if.then309, %if.else313
  %38 = load %struct._PerlIO*** %fio300, align 8, !tbaa !0
  %tobool365 = icmp eq %struct._PerlIO** %38, null
  br i1 %tobool365, label %if.then366, label %if.else420

if.then366:                                       ; preds = %if.end363
  %aptr368 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %39 = load i8** %aptr368, align 8, !tbaa !0
  %aend370 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %40 = load i8** %aend370, align 8, !tbaa !0
  %cmp371 = icmp ult i8* %39, %40
  br i1 %cmp371, label %if.then373, label %if.else377

if.then373:                                       ; preds = %if.then366
  %incdec.ptr376 = getelementptr inbounds i8* %39, i64 1
  store i8* %incdec.ptr376, i8** %aptr368, align 8, !tbaa !0
  store i8 %conv299, i8* %39, align 1, !tbaa !1
  br label %if.end1933

if.else377:                                       ; preds = %if.then366
  %asiz380 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %41 = load i64* %asiz380, align 8, !tbaa !4
  %arena389 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %42 = load i8** %arena389, align 8, !tbaa !0
  %sub.ptr.lhs.cast390 = ptrtoint i8* %39 to i64
  %sub.ptr.rhs.cast391 = ptrtoint i8* %42 to i64
  %sub.ptr.sub392 = sub i64 %sub.ptr.lhs.cast390, %sub.ptr.rhs.cast391
  %add382 = shl i64 %41, 32
  %conv384 = add i64 %add382, 35184372088832
  %sext2474 = ashr exact i64 %conv384, 32
  %conv396 = and i64 %sext2474, -8192
  %call398 = call i8* @Perl_safesysrealloc(i8* %42, i64 %conv396) #7
  store i8* %call398, i8** %arena389, align 8, !tbaa !0
  store i64 %conv396, i64* %asiz380, align 8, !tbaa !4
  %sext2475 = shl i64 %sub.ptr.sub392, 32
  %idx.ext406 = ashr exact i64 %sext2475, 32
  %add.ptr407 = getelementptr inbounds i8* %call398, i64 %idx.ext406
  %add.ptr413 = getelementptr inbounds i8* %call398, i64 %conv396
  store i8* %add.ptr413, i8** %aend370, align 8, !tbaa !0
  %add.ptr407.sum = add i64 %idx.ext406, 1
  %incdec.ptr418 = getelementptr inbounds i8* %call398, i64 %add.ptr407.sum
  store i8* %incdec.ptr418, i8** %aptr368, align 8, !tbaa !0
  store i8 %conv299, i8* %add.ptr407, align 1, !tbaa !1
  br label %if.end1933

if.else420:                                       ; preds = %if.end363
  %43 = trunc i64 %.off to i32
  %conv422 = and i32 %43, 255
  %call423 = call i32 @PerlIO_putc(%struct._PerlIO** %38, i32 %conv422) #7
  %cmp424 = icmp eq i32 %call423, -1
  br i1 %cmp424, label %return, label %if.end1933

if.else429:                                       ; preds = %if.end291
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %44 = load i32* %netorder, align 4, !tbaa !3
  %tobool430 = icmp eq i32 %44, 0
  br i1 %tobool430, label %if.else594, label %if.then431

if.then431:                                       ; preds = %if.else429
  br i1 %tobool278, label %land.lhs.true434, label %string_readlen

land.lhs.true434:                                 ; preds = %if.then431
  %45 = load i32* %sv_flags, align 4, !tbaa !3
  %and436 = and i32 %45, 65536
  %tobool437 = icmp eq i32 %and436, 0
  br i1 %tobool437, label %cond.false441, label %string_readlen

cond.false441:                                    ; preds = %land.lhs.true434
  %call442 = call i64 @Perl_sv_2uv(%struct.sv* %sv) #7
  br label %string_readlen

if.else594:                                       ; preds = %if.else429
  %fio595 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %46 = load %struct._PerlIO*** %fio595, align 8, !tbaa !0
  %tobool596 = icmp eq %struct._PerlIO** %46, null
  br i1 %tobool596, label %if.then597, label %if.else651

if.then597:                                       ; preds = %if.else594
  %aptr599 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %47 = load i8** %aptr599, align 8, !tbaa !0
  %aend601 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %48 = load i8** %aend601, align 8, !tbaa !0
  %cmp602 = icmp ult i8* %47, %48
  br i1 %cmp602, label %if.then604, label %if.else608

if.then604:                                       ; preds = %if.then597
  %incdec.ptr607 = getelementptr inbounds i8* %47, i64 1
  store i8* %incdec.ptr607, i8** %aptr599, align 8, !tbaa !0
  store i8 6, i8* %47, align 1, !tbaa !1
  br label %if.end658

if.else608:                                       ; preds = %if.then597
  %asiz611 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %49 = load i64* %asiz611, align 8, !tbaa !4
  %arena620 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %50 = load i8** %arena620, align 8, !tbaa !0
  %sub.ptr.lhs.cast621 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast622 = ptrtoint i8* %50 to i64
  %sub.ptr.sub623 = sub i64 %sub.ptr.lhs.cast621, %sub.ptr.rhs.cast622
  %add613 = shl i64 %49, 32
  %conv615 = add i64 %add613, 35184372088832
  %sext2464 = ashr exact i64 %conv615, 32
  %conv627 = and i64 %sext2464, -8192
  %call629 = call i8* @Perl_safesysrealloc(i8* %50, i64 %conv627) #7
  store i8* %call629, i8** %arena620, align 8, !tbaa !0
  store i64 %conv627, i64* %asiz611, align 8, !tbaa !4
  %sext2465 = shl i64 %sub.ptr.sub623, 32
  %idx.ext637 = ashr exact i64 %sext2465, 32
  %add.ptr638 = getelementptr inbounds i8* %call629, i64 %idx.ext637
  %add.ptr644 = getelementptr inbounds i8* %call629, i64 %conv627
  store i8* %add.ptr644, i8** %aend601, align 8, !tbaa !0
  %add.ptr638.sum = add i64 %idx.ext637, 1
  %incdec.ptr649 = getelementptr inbounds i8* %call629, i64 %add.ptr638.sum
  store i8* %incdec.ptr649, i8** %aptr599, align 8, !tbaa !0
  store i8 6, i8* %add.ptr638, align 1, !tbaa !1
  br label %if.end658

if.else651:                                       ; preds = %if.else594
  %call653 = call i32 @PerlIO_putc(%struct._PerlIO** %46, i32 6) #7
  %cmp654 = icmp eq i32 %call653, -1
  br i1 %cmp654, label %return, label %if.end658

if.end658:                                        ; preds = %if.else651, %if.then604, %if.else608
  %51 = load %struct._PerlIO*** %fio595, align 8, !tbaa !0
  %tobool660 = icmp eq %struct._PerlIO** %51, null
  br i1 %tobool660, label %if.then661, label %if.else714

if.then661:                                       ; preds = %if.end658
  %aptr663 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %52 = load i8** %aptr663, align 8, !tbaa !0
  %add.ptr664 = getelementptr inbounds i8* %52, i64 8
  %aend666 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %53 = load i8** %aend666, align 8, !tbaa !0
  %cmp667 = icmp ugt i8* %add.ptr664, %53
  br i1 %cmp667, label %if.then669, label %if.end708

if.then669:                                       ; preds = %if.then661
  %asiz672 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %54 = load i64* %asiz672, align 8, !tbaa !4
  %arena681 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %55 = load i8** %arena681, align 8, !tbaa !0
  %sub.ptr.lhs.cast682 = ptrtoint i8* %52 to i64
  %sub.ptr.rhs.cast683 = ptrtoint i8* %55 to i64
  %sub.ptr.sub684 = sub i64 %sub.ptr.lhs.cast682, %sub.ptr.rhs.cast683
  %add674 = shl i64 %54, 32
  %conv676 = add i64 %add674, 35214436859904
  %sext2466 = ashr exact i64 %conv676, 32
  %conv688 = and i64 %sext2466, -8192
  %call690 = call i8* @Perl_safesysrealloc(i8* %55, i64 %conv688) #7
  store i8* %call690, i8** %arena681, align 8, !tbaa !0
  store i64 %conv688, i64* %asiz672, align 8, !tbaa !4
  %sext2467 = shl i64 %sub.ptr.sub684, 32
  %idx.ext698 = ashr exact i64 %sext2467, 32
  %add.ptr699 = getelementptr inbounds i8* %call690, i64 %idx.ext698
  store i8* %add.ptr699, i8** %aptr663, align 8, !tbaa !0
  %add.ptr705 = getelementptr inbounds i8* %call690, i64 %conv688
  store i8* %add.ptr705, i8** %aend666, align 8, !tbaa !0
  br label %if.end708

if.end708:                                        ; preds = %if.then669, %if.then661
  %56 = phi i8* [ %add.ptr699, %if.then669 ], [ %52, %if.then661 ]
  %57 = bitcast i8* %56 to i64*
  %58 = load i64* %iv, align 8
  store i64 %58, i64* %57, align 1
  %59 = load i8** %aptr663, align 8, !tbaa !0
  %add.ptr713 = getelementptr inbounds i8* %59, i64 8
  store i8* %add.ptr713, i8** %aptr663, align 8, !tbaa !0
  br label %if.end1933

if.else714:                                       ; preds = %if.end658
  %60 = bitcast i64* %iv to i8*
  %call716 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %51, i8* %60, i64 8) #7
  %cmp717 = icmp eq i64 %call716, 8
  br i1 %cmp717, label %if.end1933, label %return

if.else724:                                       ; preds = %if.else264
  %and725 = and i32 %0, 131072
  %tobool726 = icmp eq i32 %and725, 0
  br i1 %tobool726, label %if.else907, label %if.then727

if.then727:                                       ; preds = %if.else724
  %and729 = and i32 %0, 16777216
  %tobool730 = icmp eq i32 %and729, 0
  %61 = and i32 %0, 393216
  %62 = icmp ne i32 %61, 0
  %or.cond = and i1 %tobool730, %62
  br i1 %or.cond, label %cond.false746, label %if.end750

cond.false746:                                    ; preds = %if.then727
  %call747 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  %.pre2488 = load i32* %sv_flags, align 4, !tbaa !3
  br label %if.end750

if.end750:                                        ; preds = %if.then727, %cond.false746
  %63 = phi i32 [ %0, %if.then727 ], [ %.pre2488, %cond.false746 ]
  %and752 = and i32 %63, -2147418112
  %cmp753 = icmp eq i32 %and752, 65536
  br i1 %cmp753, label %if.then755, label %if.end766

if.then755:                                       ; preds = %if.end750
  %and757 = and i32 %63, 65536
  %tobool758 = icmp eq i32 %and757, 0
  br i1 %tobool758, label %cond.false762, label %cond.true759

cond.true759:                                     ; preds = %if.then755
  %sv_any760 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %64 = load i8** %sv_any760, align 8, !tbaa !0
  %xiv_iv761 = getelementptr inbounds i8* %64, i64 24
  %65 = bitcast i8* %xiv_iv761 to i64*
  %66 = load i64* %65, align 8, !tbaa !4
  br label %integer

cond.false762:                                    ; preds = %if.then755
  %call763 = call i64 @Perl_sv_2iv(%struct.sv* %sv) #7
  br label %integer

if.end766:                                        ; preds = %if.end750
  %and768 = and i32 %63, 131072
  %tobool769 = icmp eq i32 %and768, 0
  br i1 %tobool769, label %cond.false772, label %cond.true770

cond.true770:                                     ; preds = %if.end766
  %sv_any771 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %67 = load i8** %sv_any771, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %67, i64 32
  %68 = bitcast i8* %xnv_nv to double*
  %69 = load double* %68, align 8, !tbaa !6
  br label %cond.end774

cond.false772:                                    ; preds = %if.end766
  %call773 = call double @Perl_sv_2nv(%struct.sv* %sv) #7
  br label %cond.end774

cond.end774:                                      ; preds = %cond.false772, %cond.true770
  %cond775 = phi double [ %69, %cond.true770 ], [ %call773, %cond.false772 ]
  store double %cond775, double* %nv, align 8, !tbaa !6
  %netorder776 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %70 = load i32* %netorder776, align 4, !tbaa !3
  %tobool777 = icmp eq i32 %70, 0
  br i1 %tobool777, label %if.end779, label %string_readlen

if.end779:                                        ; preds = %cond.end774
  %fio780 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %71 = load %struct._PerlIO*** %fio780, align 8, !tbaa !0
  %tobool781 = icmp eq %struct._PerlIO** %71, null
  br i1 %tobool781, label %if.then782, label %if.else836

if.then782:                                       ; preds = %if.end779
  %aptr784 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %72 = load i8** %aptr784, align 8, !tbaa !0
  %aend786 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %73 = load i8** %aend786, align 8, !tbaa !0
  %cmp787 = icmp ult i8* %72, %73
  br i1 %cmp787, label %if.then789, label %if.else793

if.then789:                                       ; preds = %if.then782
  %incdec.ptr792 = getelementptr inbounds i8* %72, i64 1
  store i8* %incdec.ptr792, i8** %aptr784, align 8, !tbaa !0
  store i8 7, i8* %72, align 1, !tbaa !1
  br label %if.end843

if.else793:                                       ; preds = %if.then782
  %asiz796 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %74 = load i64* %asiz796, align 8, !tbaa !4
  %arena805 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %75 = load i8** %arena805, align 8, !tbaa !0
  %sub.ptr.lhs.cast806 = ptrtoint i8* %72 to i64
  %sub.ptr.rhs.cast807 = ptrtoint i8* %75 to i64
  %sub.ptr.sub808 = sub i64 %sub.ptr.lhs.cast806, %sub.ptr.rhs.cast807
  %add798 = shl i64 %74, 32
  %conv800 = add i64 %add798, 35184372088832
  %sext2460 = ashr exact i64 %conv800, 32
  %conv812 = and i64 %sext2460, -8192
  %call814 = call i8* @Perl_safesysrealloc(i8* %75, i64 %conv812) #7
  store i8* %call814, i8** %arena805, align 8, !tbaa !0
  store i64 %conv812, i64* %asiz796, align 8, !tbaa !4
  %sext2461 = shl i64 %sub.ptr.sub808, 32
  %idx.ext822 = ashr exact i64 %sext2461, 32
  %add.ptr823 = getelementptr inbounds i8* %call814, i64 %idx.ext822
  %add.ptr829 = getelementptr inbounds i8* %call814, i64 %conv812
  store i8* %add.ptr829, i8** %aend786, align 8, !tbaa !0
  %add.ptr823.sum = add i64 %idx.ext822, 1
  %incdec.ptr834 = getelementptr inbounds i8* %call814, i64 %add.ptr823.sum
  store i8* %incdec.ptr834, i8** %aptr784, align 8, !tbaa !0
  store i8 7, i8* %add.ptr823, align 1, !tbaa !1
  br label %if.end843

if.else836:                                       ; preds = %if.end779
  %call838 = call i32 @PerlIO_putc(%struct._PerlIO** %71, i32 7) #7
  %cmp839 = icmp eq i32 %call838, -1
  br i1 %cmp839, label %return, label %if.end843

if.end843:                                        ; preds = %if.else836, %if.then789, %if.else793
  %76 = load %struct._PerlIO*** %fio780, align 8, !tbaa !0
  %tobool845 = icmp eq %struct._PerlIO** %76, null
  br i1 %tobool845, label %if.then846, label %if.else899

if.then846:                                       ; preds = %if.end843
  %aptr848 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %77 = load i8** %aptr848, align 8, !tbaa !0
  %add.ptr849 = getelementptr inbounds i8* %77, i64 8
  %aend851 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %78 = load i8** %aend851, align 8, !tbaa !0
  %cmp852 = icmp ugt i8* %add.ptr849, %78
  br i1 %cmp852, label %if.then854, label %if.end893

if.then854:                                       ; preds = %if.then846
  %asiz857 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %79 = load i64* %asiz857, align 8, !tbaa !4
  %arena866 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %80 = load i8** %arena866, align 8, !tbaa !0
  %sub.ptr.lhs.cast867 = ptrtoint i8* %77 to i64
  %sub.ptr.rhs.cast868 = ptrtoint i8* %80 to i64
  %sub.ptr.sub869 = sub i64 %sub.ptr.lhs.cast867, %sub.ptr.rhs.cast868
  %add859 = shl i64 %79, 32
  %conv861 = add i64 %add859, 35214436859904
  %sext2462 = ashr exact i64 %conv861, 32
  %conv873 = and i64 %sext2462, -8192
  %call875 = call i8* @Perl_safesysrealloc(i8* %80, i64 %conv873) #7
  store i8* %call875, i8** %arena866, align 8, !tbaa !0
  store i64 %conv873, i64* %asiz857, align 8, !tbaa !4
  %sext2463 = shl i64 %sub.ptr.sub869, 32
  %idx.ext883 = ashr exact i64 %sext2463, 32
  %add.ptr884 = getelementptr inbounds i8* %call875, i64 %idx.ext883
  store i8* %add.ptr884, i8** %aptr848, align 8, !tbaa !0
  %add.ptr890 = getelementptr inbounds i8* %call875, i64 %conv873
  store i8* %add.ptr890, i8** %aend851, align 8, !tbaa !0
  br label %if.end893

if.end893:                                        ; preds = %if.then854, %if.then846
  %81 = phi i8* [ %add.ptr884, %if.then854 ], [ %77, %if.then846 ]
  %82 = bitcast double* %nv to i64*
  %83 = bitcast i8* %81 to i64*
  %84 = load i64* %82, align 8
  store i64 %84, i64* %83, align 1
  %85 = load i8** %aptr848, align 8, !tbaa !0
  %add.ptr898 = getelementptr inbounds i8* %85, i64 8
  store i8* %add.ptr898, i8** %aptr848, align 8, !tbaa !0
  br label %if.end1933

if.else899:                                       ; preds = %if.end843
  %86 = bitcast double* %nv to i8*
  %call901 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %76, i8* %86, i64 8) #7
  %cmp902 = icmp eq i64 %call901, 8
  br i1 %cmp902, label %if.end1933, label %return

if.else907:                                       ; preds = %if.else724
  %and908 = and i32 %0, 117440512
  %tobool909 = icmp eq i32 %and908, 0
  br i1 %tobool909, label %if.else1927, label %string_readlen

string_readlen:                                   ; preds = %cond.end774, %if.then431, %cond.end286, %if.else260, %land.lhs.true434, %cond.false441, %if.else907
  %87 = load i32* %sv_flags, align 4, !tbaa !3
  %and912 = and i32 %87, 262144
  %cmp913 = icmp eq i32 %and912, 0
  br i1 %cmp913, label %cond.false920, label %cond.true915

cond.true915:                                     ; preds = %string_readlen
  %sv_any916 = getelementptr inbounds %struct.sv* %sv, i64 0, i32 0
  %88 = load i8** %sv_any916, align 8, !tbaa !0
  %xpv_cur917 = getelementptr inbounds i8* %88, i64 8
  %89 = bitcast i8* %xpv_cur917 to i64*
  %90 = load i64* %89, align 8, !tbaa !4
  store i64 %90, i64* %len, align 8, !tbaa !4
  %xpv_pv919 = bitcast i8* %88 to i8**
  %91 = load i8** %xpv_pv919, align 8, !tbaa !0
  br label %string

cond.false920:                                    ; preds = %string_readlen
  %call921 = call i8* @Perl_sv_2pv_flags(%struct.sv* %sv, i64* %len, i32 2) #7
  br label %string

string:                                           ; preds = %cond.true915, %cond.false920, %cond.true, %cond.false
  %pv.0 = phi i8* [ %23, %cond.true ], [ %call257, %cond.false ], [ %91, %cond.true915 ], [ %call921, %cond.false920 ]
  %92 = load i64* %len, align 8, !tbaa !4
  %conv924 = trunc i64 %92 to i32
  store i32 %conv924, i32* %wlen, align 4, !tbaa !3
  %93 = load i32* %sv_flags, align 4, !tbaa !3
  %and926 = and i32 %93, 536870912
  %tobool927 = icmp eq i32 %and926, 0
  %cmp929 = icmp slt i32 %conv924, 256
  br i1 %tobool927, label %if.else1426, label %if.then928

if.then928:                                       ; preds = %string
  br i1 %cmp929, label %if.then931, label %if.else1134

if.then931:                                       ; preds = %if.then928
  %conv932 = trunc i64 %92 to i8
  %fio933 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %94 = load %struct._PerlIO*** %fio933, align 8, !tbaa !0
  %tobool934 = icmp eq %struct._PerlIO** %94, null
  br i1 %tobool934, label %if.then935, label %if.else989

if.then935:                                       ; preds = %if.then931
  %aptr937 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %95 = load i8** %aptr937, align 8, !tbaa !0
  %aend939 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %96 = load i8** %aend939, align 8, !tbaa !0
  %cmp940 = icmp ult i8* %95, %96
  br i1 %cmp940, label %if.then942, label %if.else946

if.then942:                                       ; preds = %if.then935
  %incdec.ptr945 = getelementptr inbounds i8* %95, i64 1
  store i8* %incdec.ptr945, i8** %aptr937, align 8, !tbaa !0
  store i8 23, i8* %95, align 1, !tbaa !1
  br label %if.end996

if.else946:                                       ; preds = %if.then935
  %asiz949 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %97 = load i64* %asiz949, align 8, !tbaa !4
  %arena958 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %98 = load i8** %arena958, align 8, !tbaa !0
  %sub.ptr.lhs.cast959 = ptrtoint i8* %95 to i64
  %sub.ptr.rhs.cast960 = ptrtoint i8* %98 to i64
  %sub.ptr.sub961 = sub i64 %sub.ptr.lhs.cast959, %sub.ptr.rhs.cast960
  %add951 = shl i64 %97, 32
  %conv953 = add i64 %add951, 35184372088832
  %sext2454 = ashr exact i64 %conv953, 32
  %conv965 = and i64 %sext2454, -8192
  %call967 = call i8* @Perl_safesysrealloc(i8* %98, i64 %conv965) #7
  store i8* %call967, i8** %arena958, align 8, !tbaa !0
  store i64 %conv965, i64* %asiz949, align 8, !tbaa !4
  %sext2455 = shl i64 %sub.ptr.sub961, 32
  %idx.ext975 = ashr exact i64 %sext2455, 32
  %add.ptr976 = getelementptr inbounds i8* %call967, i64 %idx.ext975
  %add.ptr982 = getelementptr inbounds i8* %call967, i64 %conv965
  store i8* %add.ptr982, i8** %aend939, align 8, !tbaa !0
  %add.ptr976.sum = add i64 %idx.ext975, 1
  %incdec.ptr987 = getelementptr inbounds i8* %call967, i64 %add.ptr976.sum
  store i8* %incdec.ptr987, i8** %aptr937, align 8, !tbaa !0
  store i8 23, i8* %add.ptr976, align 1, !tbaa !1
  br label %if.end996

if.else989:                                       ; preds = %if.then931
  %call991 = call i32 @PerlIO_putc(%struct._PerlIO** %94, i32 23) #7
  %cmp992 = icmp eq i32 %call991, -1
  br i1 %cmp992, label %return, label %if.end996

if.end996:                                        ; preds = %if.else989, %if.then942, %if.else946
  %99 = load %struct._PerlIO*** %fio933, align 8, !tbaa !0
  %tobool998 = icmp eq %struct._PerlIO** %99, null
  br i1 %tobool998, label %if.then999, label %if.else1053

if.then999:                                       ; preds = %if.end996
  %aptr1001 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %100 = load i8** %aptr1001, align 8, !tbaa !0
  %aend1003 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %101 = load i8** %aend1003, align 8, !tbaa !0
  %cmp1004 = icmp ult i8* %100, %101
  br i1 %cmp1004, label %if.then1006, label %if.else1010

if.then1006:                                      ; preds = %if.then999
  %incdec.ptr1009 = getelementptr inbounds i8* %100, i64 1
  store i8* %incdec.ptr1009, i8** %aptr1001, align 8, !tbaa !0
  store i8 %conv932, i8* %100, align 1, !tbaa !1
  br label %if.end1061

if.else1010:                                      ; preds = %if.then999
  %asiz1013 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %102 = load i64* %asiz1013, align 8, !tbaa !4
  %arena1022 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %103 = load i8** %arena1022, align 8, !tbaa !0
  %sub.ptr.lhs.cast1023 = ptrtoint i8* %100 to i64
  %sub.ptr.rhs.cast1024 = ptrtoint i8* %103 to i64
  %sub.ptr.sub1025 = sub i64 %sub.ptr.lhs.cast1023, %sub.ptr.rhs.cast1024
  %add1015 = shl i64 %102, 32
  %conv1017 = add i64 %add1015, 35184372088832
  %sext2456 = ashr exact i64 %conv1017, 32
  %conv1029 = and i64 %sext2456, -8192
  %call1031 = call i8* @Perl_safesysrealloc(i8* %103, i64 %conv1029) #7
  store i8* %call1031, i8** %arena1022, align 8, !tbaa !0
  store i64 %conv1029, i64* %asiz1013, align 8, !tbaa !4
  %sext2457 = shl i64 %sub.ptr.sub1025, 32
  %idx.ext1039 = ashr exact i64 %sext2457, 32
  %add.ptr1040 = getelementptr inbounds i8* %call1031, i64 %idx.ext1039
  %add.ptr1046 = getelementptr inbounds i8* %call1031, i64 %conv1029
  store i8* %add.ptr1046, i8** %aend1003, align 8, !tbaa !0
  %add.ptr1040.sum = add i64 %idx.ext1039, 1
  %incdec.ptr1051 = getelementptr inbounds i8* %call1031, i64 %add.ptr1040.sum
  store i8* %incdec.ptr1051, i8** %aptr1001, align 8, !tbaa !0
  store i8 %conv932, i8* %add.ptr1040, align 1, !tbaa !1
  br label %if.end1061

if.else1053:                                      ; preds = %if.end996
  %conv1055 = and i32 %conv924, 255
  %call1056 = call i32 @PerlIO_putc(%struct._PerlIO** %99, i32 %conv1055) #7
  %cmp1057 = icmp eq i32 %call1056, -1
  br i1 %cmp1057, label %return, label %if.end1061

if.end1061:                                       ; preds = %if.else1053, %if.then1006, %if.else1010
  %104 = load i32* %wlen, align 4, !tbaa !3
  %tobool1062 = icmp eq i32 %104, 0
  br i1 %tobool1062, label %if.end1933, label %if.then1063

if.then1063:                                      ; preds = %if.end1061
  %105 = load %struct._PerlIO*** %fio933, align 8, !tbaa !0
  %tobool1065 = icmp eq %struct._PerlIO** %105, null
  br i1 %tobool1065, label %if.then1066, label %if.else1123

if.then1066:                                      ; preds = %if.then1063
  %aptr1068 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %106 = load i8** %aptr1068, align 8, !tbaa !0
  %idx.ext1069 = sext i32 %104 to i64
  %add.ptr1070 = getelementptr inbounds i8* %106, i64 %idx.ext1069
  %aend1072 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %107 = load i8** %aend1072, align 8, !tbaa !0
  %cmp1073 = icmp ugt i8* %add.ptr1070, %107
  br i1 %cmp1073, label %if.then1075, label %if.end1115

if.then1075:                                      ; preds = %if.then1066
  %asiz1079 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %108 = load i64* %asiz1079, align 8, !tbaa !4
  %add1080 = add i64 %108, %idx.ext1069
  %arena1088 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %109 = load i8** %arena1088, align 8, !tbaa !0
  %sub.ptr.lhs.cast1089 = ptrtoint i8* %106 to i64
  %sub.ptr.rhs.cast1090 = ptrtoint i8* %109 to i64
  %sub.ptr.sub1091 = sub i64 %sub.ptr.lhs.cast1089, %sub.ptr.rhs.cast1090
  %add1081 = shl i64 %add1080, 32
  %conv1083 = add i64 %add1081, 35180077121536
  %sext2458 = ashr exact i64 %conv1083, 32
  %conv1095 = and i64 %sext2458, -8192
  %call1097 = call i8* @Perl_safesysrealloc(i8* %109, i64 %conv1095) #7
  store i8* %call1097, i8** %arena1088, align 8, !tbaa !0
  store i64 %conv1095, i64* %asiz1079, align 8, !tbaa !4
  %sext2459 = shl i64 %sub.ptr.sub1091, 32
  %idx.ext1105 = ashr exact i64 %sext2459, 32
  %add.ptr1106 = getelementptr inbounds i8* %call1097, i64 %idx.ext1105
  store i8* %add.ptr1106, i8** %aptr1068, align 8, !tbaa !0
  %add.ptr1112 = getelementptr inbounds i8* %call1097, i64 %conv1095
  store i8* %add.ptr1112, i8** %aend1072, align 8, !tbaa !0
  %.pre2484 = load i32* %wlen, align 4, !tbaa !3
  br label %if.end1115

if.end1115:                                       ; preds = %if.then1075, %if.then1066
  %110 = phi i32 [ %.pre2484, %if.then1075 ], [ %104, %if.then1066 ]
  %111 = phi i8* [ %add.ptr1106, %if.then1075 ], [ %106, %if.then1066 ]
  %conv1118 = sext i32 %110 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %pv.0, i64 %conv1118, i32 1, i1 false)
  %112 = load i32* %wlen, align 4, !tbaa !3
  %113 = load i8** %aptr1068, align 8, !tbaa !0
  %idx.ext1121 = sext i32 %112 to i64
  %add.ptr1122 = getelementptr inbounds i8* %113, i64 %idx.ext1121
  store i8* %add.ptr1122, i8** %aptr1068, align 8, !tbaa !0
  br label %if.end1933

if.else1123:                                      ; preds = %if.then1063
  %conv1125 = sext i32 %104 to i64
  %call1126 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %105, i8* %pv.0, i64 %conv1125) #7
  %114 = load i32* %wlen, align 4, !tbaa !3
  %conv1127 = sext i32 %114 to i64
  %cmp1128 = icmp eq i64 %call1126, %conv1127
  br i1 %cmp1128, label %if.end1933, label %return

if.else1134:                                      ; preds = %if.then928
  %fio1135 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %115 = load %struct._PerlIO*** %fio1135, align 8, !tbaa !0
  %tobool1136 = icmp eq %struct._PerlIO** %115, null
  br i1 %tobool1136, label %if.then1137, label %if.else1191

if.then1137:                                      ; preds = %if.else1134
  %aptr1139 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %116 = load i8** %aptr1139, align 8, !tbaa !0
  %aend1141 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %117 = load i8** %aend1141, align 8, !tbaa !0
  %cmp1142 = icmp ult i8* %116, %117
  br i1 %cmp1142, label %if.then1144, label %if.else1148

if.then1144:                                      ; preds = %if.then1137
  %incdec.ptr1147 = getelementptr inbounds i8* %116, i64 1
  store i8* %incdec.ptr1147, i8** %aptr1139, align 8, !tbaa !0
  store i8 24, i8* %116, align 1, !tbaa !1
  br label %if.end1198

if.else1148:                                      ; preds = %if.then1137
  %asiz1151 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %118 = load i64* %asiz1151, align 8, !tbaa !4
  %arena1160 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %119 = load i8** %arena1160, align 8, !tbaa !0
  %sub.ptr.lhs.cast1161 = ptrtoint i8* %116 to i64
  %sub.ptr.rhs.cast1162 = ptrtoint i8* %119 to i64
  %sub.ptr.sub1163 = sub i64 %sub.ptr.lhs.cast1161, %sub.ptr.rhs.cast1162
  %add1153 = shl i64 %118, 32
  %conv1155 = add i64 %add1153, 35184372088832
  %sext2446 = ashr exact i64 %conv1155, 32
  %conv1167 = and i64 %sext2446, -8192
  %call1169 = call i8* @Perl_safesysrealloc(i8* %119, i64 %conv1167) #7
  store i8* %call1169, i8** %arena1160, align 8, !tbaa !0
  store i64 %conv1167, i64* %asiz1151, align 8, !tbaa !4
  %sext2447 = shl i64 %sub.ptr.sub1163, 32
  %idx.ext1177 = ashr exact i64 %sext2447, 32
  %add.ptr1178 = getelementptr inbounds i8* %call1169, i64 %idx.ext1177
  %add.ptr1184 = getelementptr inbounds i8* %call1169, i64 %conv1167
  store i8* %add.ptr1184, i8** %aend1141, align 8, !tbaa !0
  %add.ptr1178.sum = add i64 %idx.ext1177, 1
  %incdec.ptr1189 = getelementptr inbounds i8* %call1169, i64 %add.ptr1178.sum
  store i8* %incdec.ptr1189, i8** %aptr1139, align 8, !tbaa !0
  store i8 24, i8* %add.ptr1178, align 1, !tbaa !1
  br label %if.end1198

if.else1191:                                      ; preds = %if.else1134
  %call1193 = call i32 @PerlIO_putc(%struct._PerlIO** %115, i32 24) #7
  %cmp1194 = icmp eq i32 %call1193, -1
  br i1 %cmp1194, label %return, label %if.end1198

if.end1198:                                       ; preds = %if.else1191, %if.then1144, %if.else1148
  %netorder1199 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %120 = load i32* %netorder1199, align 4, !tbaa !3
  %tobool1200 = icmp eq i32 %120, 0
  br i1 %tobool1200, label %if.else1279, label %if.then1201

if.then1201:                                      ; preds = %if.end1198
  %121 = load i32* %wlen, align 4, !tbaa !3
  %122 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %121) #3, !srcloc !35
  store i32 %122, i32* %y, align 4, !tbaa !3
  %123 = load %struct._PerlIO*** %fio1135, align 8, !tbaa !0
  %tobool1205 = icmp eq %struct._PerlIO** %123, null
  br i1 %tobool1205, label %if.then1206, label %if.else1271

if.then1206:                                      ; preds = %if.then1201
  %aptr1208 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %124 = load i8** %aptr1208, align 8, !tbaa !0
  %add.ptr1209 = getelementptr inbounds i8* %124, i64 4
  %aend1211 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %125 = load i8** %aend1211, align 8, !tbaa !0
  %cmp1212 = icmp ugt i8* %add.ptr1209, %125
  br i1 %cmp1212, label %if.then1214, label %if.end1253

if.then1214:                                      ; preds = %if.then1206
  %asiz1217 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %126 = load i64* %asiz1217, align 8, !tbaa !4
  %arena1226 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %127 = load i8** %arena1226, align 8, !tbaa !0
  %sub.ptr.lhs.cast1227 = ptrtoint i8* %124 to i64
  %sub.ptr.rhs.cast1228 = ptrtoint i8* %127 to i64
  %sub.ptr.sub1229 = sub i64 %sub.ptr.lhs.cast1227, %sub.ptr.rhs.cast1228
  %add1219 = shl i64 %126, 32
  %conv1221 = add i64 %add1219, 35197256990720
  %sext2452 = ashr exact i64 %conv1221, 32
  %conv1233 = and i64 %sext2452, -8192
  %call1235 = call i8* @Perl_safesysrealloc(i8* %127, i64 %conv1233) #7
  store i8* %call1235, i8** %arena1226, align 8, !tbaa !0
  store i64 %conv1233, i64* %asiz1217, align 8, !tbaa !4
  %sext2453 = shl i64 %sub.ptr.sub1229, 32
  %idx.ext1243 = ashr exact i64 %sext2453, 32
  %add.ptr1244 = getelementptr inbounds i8* %call1235, i64 %idx.ext1243
  store i8* %add.ptr1244, i8** %aptr1208, align 8, !tbaa !0
  %add.ptr1250 = getelementptr inbounds i8* %call1235, i64 %conv1233
  store i8* %add.ptr1250, i8** %aend1211, align 8, !tbaa !0
  br label %if.end1253

if.end1253:                                       ; preds = %if.then1214, %if.then1206
  %128 = phi i8* [ %add.ptr1244, %if.then1214 ], [ %124, %if.then1206 ]
  %129 = ptrtoint i8* %128 to i64
  %and1258 = and i64 %129, -4
  %cmp1259 = icmp eq i64 %129, %and1258
  br i1 %cmp1259, label %if.then1261, label %if.else1264

if.then1261:                                      ; preds = %if.end1253
  %130 = load i32* %y, align 4, !tbaa !3
  %131 = bitcast i8* %128 to i32*
  store i32 %130, i32* %131, align 4, !tbaa !3
  br label %if.end1267

if.else1264:                                      ; preds = %if.end1253
  %132 = bitcast i8* %128 to i32*
  %133 = load i32* %y, align 4
  store i32 %133, i32* %132, align 1
  %.pre2487 = load i8** %aptr1208, align 8, !tbaa !0
  br label %if.end1267

if.end1267:                                       ; preds = %if.else1264, %if.then1261
  %134 = phi i8* [ %.pre2487, %if.else1264 ], [ %128, %if.then1261 ]
  %add.ptr1270 = getelementptr inbounds i8* %134, i64 4
  store i8* %add.ptr1270, i8** %aptr1208, align 8, !tbaa !0
  br label %if.end1355

if.else1271:                                      ; preds = %if.then1201
  %135 = bitcast i32* %y to i8*
  %call1273 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %123, i8* %135, i64 4) #7
  %cmp1274 = icmp eq i64 %call1273, 4
  br i1 %cmp1274, label %if.end1355, label %return

if.else1279:                                      ; preds = %if.end1198
  %136 = load %struct._PerlIO*** %fio1135, align 8, !tbaa !0
  %tobool1281 = icmp eq %struct._PerlIO** %136, null
  br i1 %tobool1281, label %if.then1282, label %if.else1347

if.then1282:                                      ; preds = %if.else1279
  %aptr1284 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %137 = load i8** %aptr1284, align 8, !tbaa !0
  %add.ptr1285 = getelementptr inbounds i8* %137, i64 4
  %aend1287 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %138 = load i8** %aend1287, align 8, !tbaa !0
  %cmp1288 = icmp ugt i8* %add.ptr1285, %138
  br i1 %cmp1288, label %if.then1290, label %if.end1329

if.then1290:                                      ; preds = %if.then1282
  %asiz1293 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %139 = load i64* %asiz1293, align 8, !tbaa !4
  %arena1302 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %140 = load i8** %arena1302, align 8, !tbaa !0
  %sub.ptr.lhs.cast1303 = ptrtoint i8* %137 to i64
  %sub.ptr.rhs.cast1304 = ptrtoint i8* %140 to i64
  %sub.ptr.sub1305 = sub i64 %sub.ptr.lhs.cast1303, %sub.ptr.rhs.cast1304
  %add1295 = shl i64 %139, 32
  %conv1297 = add i64 %add1295, 35197256990720
  %sext2450 = ashr exact i64 %conv1297, 32
  %conv1309 = and i64 %sext2450, -8192
  %call1311 = call i8* @Perl_safesysrealloc(i8* %140, i64 %conv1309) #7
  store i8* %call1311, i8** %arena1302, align 8, !tbaa !0
  store i64 %conv1309, i64* %asiz1293, align 8, !tbaa !4
  %sext2451 = shl i64 %sub.ptr.sub1305, 32
  %idx.ext1319 = ashr exact i64 %sext2451, 32
  %add.ptr1320 = getelementptr inbounds i8* %call1311, i64 %idx.ext1319
  store i8* %add.ptr1320, i8** %aptr1284, align 8, !tbaa !0
  %add.ptr1326 = getelementptr inbounds i8* %call1311, i64 %conv1309
  store i8* %add.ptr1326, i8** %aend1287, align 8, !tbaa !0
  br label %if.end1329

if.end1329:                                       ; preds = %if.then1290, %if.then1282
  %141 = phi i8* [ %add.ptr1320, %if.then1290 ], [ %137, %if.then1282 ]
  %142 = ptrtoint i8* %141 to i64
  %and1334 = and i64 %142, -4
  %cmp1335 = icmp eq i64 %142, %and1334
  br i1 %cmp1335, label %if.then1337, label %if.else1340

if.then1337:                                      ; preds = %if.end1329
  %143 = load i32* %wlen, align 4, !tbaa !3
  %144 = bitcast i8* %141 to i32*
  store i32 %143, i32* %144, align 4, !tbaa !3
  br label %if.end1343

if.else1340:                                      ; preds = %if.end1329
  %145 = bitcast i8* %141 to i32*
  %146 = load i32* %wlen, align 4
  store i32 %146, i32* %145, align 1
  %.pre2485 = load i8** %aptr1284, align 8, !tbaa !0
  br label %if.end1343

if.end1343:                                       ; preds = %if.else1340, %if.then1337
  %147 = phi i8* [ %.pre2485, %if.else1340 ], [ %141, %if.then1337 ]
  %add.ptr1346 = getelementptr inbounds i8* %147, i64 4
  store i8* %add.ptr1346, i8** %aptr1284, align 8, !tbaa !0
  br label %if.end1355

if.else1347:                                      ; preds = %if.else1279
  %148 = bitcast i32* %wlen to i8*
  %call1349 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %136, i8* %148, i64 4) #7
  %cmp1350 = icmp eq i64 %call1349, 4
  br i1 %cmp1350, label %if.end1355, label %return

if.end1355:                                       ; preds = %if.else1347, %if.else1271, %if.end1343, %if.end1267
  %149 = load %struct._PerlIO*** %fio1135, align 8, !tbaa !0
  %tobool1357 = icmp eq %struct._PerlIO** %149, null
  br i1 %tobool1357, label %if.then1358, label %if.else1415

if.then1358:                                      ; preds = %if.end1355
  %aptr1360 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %150 = load i8** %aptr1360, align 8, !tbaa !0
  %151 = load i32* %wlen, align 4, !tbaa !3
  %idx.ext1361 = sext i32 %151 to i64
  %add.ptr1362 = getelementptr inbounds i8* %150, i64 %idx.ext1361
  %aend1364 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %152 = load i8** %aend1364, align 8, !tbaa !0
  %cmp1365 = icmp ugt i8* %add.ptr1362, %152
  br i1 %cmp1365, label %if.then1367, label %if.end1407

if.then1367:                                      ; preds = %if.then1358
  %asiz1371 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %153 = load i64* %asiz1371, align 8, !tbaa !4
  %add1372 = add i64 %153, %idx.ext1361
  %arena1380 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %154 = load i8** %arena1380, align 8, !tbaa !0
  %sub.ptr.lhs.cast1381 = ptrtoint i8* %150 to i64
  %sub.ptr.rhs.cast1382 = ptrtoint i8* %154 to i64
  %sub.ptr.sub1383 = sub i64 %sub.ptr.lhs.cast1381, %sub.ptr.rhs.cast1382
  %add1373 = shl i64 %add1372, 32
  %conv1375 = add i64 %add1373, 35180077121536
  %sext2448 = ashr exact i64 %conv1375, 32
  %conv1387 = and i64 %sext2448, -8192
  %call1389 = call i8* @Perl_safesysrealloc(i8* %154, i64 %conv1387) #7
  store i8* %call1389, i8** %arena1380, align 8, !tbaa !0
  store i64 %conv1387, i64* %asiz1371, align 8, !tbaa !4
  %sext2449 = shl i64 %sub.ptr.sub1383, 32
  %idx.ext1397 = ashr exact i64 %sext2449, 32
  %add.ptr1398 = getelementptr inbounds i8* %call1389, i64 %idx.ext1397
  store i8* %add.ptr1398, i8** %aptr1360, align 8, !tbaa !0
  %add.ptr1404 = getelementptr inbounds i8* %call1389, i64 %conv1387
  store i8* %add.ptr1404, i8** %aend1364, align 8, !tbaa !0
  %.pre2486 = load i32* %wlen, align 4, !tbaa !3
  br label %if.end1407

if.end1407:                                       ; preds = %if.then1367, %if.then1358
  %155 = phi i32 [ %.pre2486, %if.then1367 ], [ %151, %if.then1358 ]
  %156 = phi i8* [ %add.ptr1398, %if.then1367 ], [ %150, %if.then1358 ]
  %conv1410 = sext i32 %155 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %pv.0, i64 %conv1410, i32 1, i1 false)
  %157 = load i32* %wlen, align 4, !tbaa !3
  %158 = load i8** %aptr1360, align 8, !tbaa !0
  %idx.ext1413 = sext i32 %157 to i64
  %add.ptr1414 = getelementptr inbounds i8* %158, i64 %idx.ext1413
  store i8* %add.ptr1414, i8** %aptr1360, align 8, !tbaa !0
  br label %if.end1933

if.else1415:                                      ; preds = %if.end1355
  %159 = load i32* %wlen, align 4, !tbaa !3
  %conv1417 = sext i32 %159 to i64
  %call1418 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %149, i8* %pv.0, i64 %conv1417) #7
  %160 = load i32* %wlen, align 4, !tbaa !3
  %conv1419 = sext i32 %160 to i64
  %cmp1420 = icmp eq i64 %call1418, %conv1419
  br i1 %cmp1420, label %if.end1933, label %return

if.else1426:                                      ; preds = %string
  br i1 %cmp929, label %if.then1429, label %if.else1633

if.then1429:                                      ; preds = %if.else1426
  %conv1431 = trunc i64 %92 to i8
  %fio1432 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %161 = load %struct._PerlIO*** %fio1432, align 8, !tbaa !0
  %tobool1433 = icmp eq %struct._PerlIO** %161, null
  br i1 %tobool1433, label %if.then1434, label %if.else1488

if.then1434:                                      ; preds = %if.then1429
  %aptr1436 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %162 = load i8** %aptr1436, align 8, !tbaa !0
  %aend1438 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %163 = load i8** %aend1438, align 8, !tbaa !0
  %cmp1439 = icmp ult i8* %162, %163
  br i1 %cmp1439, label %if.then1441, label %if.else1445

if.then1441:                                      ; preds = %if.then1434
  %incdec.ptr1444 = getelementptr inbounds i8* %162, i64 1
  store i8* %incdec.ptr1444, i8** %aptr1436, align 8, !tbaa !0
  store i8 10, i8* %162, align 1, !tbaa !1
  br label %if.end1495

if.else1445:                                      ; preds = %if.then1434
  %asiz1448 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %164 = load i64* %asiz1448, align 8, !tbaa !4
  %arena1457 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %165 = load i8** %arena1457, align 8, !tbaa !0
  %sub.ptr.lhs.cast1458 = ptrtoint i8* %162 to i64
  %sub.ptr.rhs.cast1459 = ptrtoint i8* %165 to i64
  %sub.ptr.sub1460 = sub i64 %sub.ptr.lhs.cast1458, %sub.ptr.rhs.cast1459
  %add1450 = shl i64 %164, 32
  %conv1452 = add i64 %add1450, 35184372088832
  %sext2440 = ashr exact i64 %conv1452, 32
  %conv1464 = and i64 %sext2440, -8192
  %call1466 = call i8* @Perl_safesysrealloc(i8* %165, i64 %conv1464) #7
  store i8* %call1466, i8** %arena1457, align 8, !tbaa !0
  store i64 %conv1464, i64* %asiz1448, align 8, !tbaa !4
  %sext2441 = shl i64 %sub.ptr.sub1460, 32
  %idx.ext1474 = ashr exact i64 %sext2441, 32
  %add.ptr1475 = getelementptr inbounds i8* %call1466, i64 %idx.ext1474
  %add.ptr1481 = getelementptr inbounds i8* %call1466, i64 %conv1464
  store i8* %add.ptr1481, i8** %aend1438, align 8, !tbaa !0
  %add.ptr1475.sum = add i64 %idx.ext1474, 1
  %incdec.ptr1486 = getelementptr inbounds i8* %call1466, i64 %add.ptr1475.sum
  store i8* %incdec.ptr1486, i8** %aptr1436, align 8, !tbaa !0
  store i8 10, i8* %add.ptr1475, align 1, !tbaa !1
  br label %if.end1495

if.else1488:                                      ; preds = %if.then1429
  %call1490 = call i32 @PerlIO_putc(%struct._PerlIO** %161, i32 10) #7
  %cmp1491 = icmp eq i32 %call1490, -1
  br i1 %cmp1491, label %return, label %if.end1495

if.end1495:                                       ; preds = %if.else1488, %if.then1441, %if.else1445
  %166 = load %struct._PerlIO*** %fio1432, align 8, !tbaa !0
  %tobool1497 = icmp eq %struct._PerlIO** %166, null
  br i1 %tobool1497, label %if.then1498, label %if.else1552

if.then1498:                                      ; preds = %if.end1495
  %aptr1500 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %167 = load i8** %aptr1500, align 8, !tbaa !0
  %aend1502 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %168 = load i8** %aend1502, align 8, !tbaa !0
  %cmp1503 = icmp ult i8* %167, %168
  br i1 %cmp1503, label %if.then1505, label %if.else1509

if.then1505:                                      ; preds = %if.then1498
  %incdec.ptr1508 = getelementptr inbounds i8* %167, i64 1
  store i8* %incdec.ptr1508, i8** %aptr1500, align 8, !tbaa !0
  store i8 %conv1431, i8* %167, align 1, !tbaa !1
  br label %if.end1560

if.else1509:                                      ; preds = %if.then1498
  %asiz1512 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %169 = load i64* %asiz1512, align 8, !tbaa !4
  %arena1521 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %170 = load i8** %arena1521, align 8, !tbaa !0
  %sub.ptr.lhs.cast1522 = ptrtoint i8* %167 to i64
  %sub.ptr.rhs.cast1523 = ptrtoint i8* %170 to i64
  %sub.ptr.sub1524 = sub i64 %sub.ptr.lhs.cast1522, %sub.ptr.rhs.cast1523
  %add1514 = shl i64 %169, 32
  %conv1516 = add i64 %add1514, 35184372088832
  %sext2442 = ashr exact i64 %conv1516, 32
  %conv1528 = and i64 %sext2442, -8192
  %call1530 = call i8* @Perl_safesysrealloc(i8* %170, i64 %conv1528) #7
  store i8* %call1530, i8** %arena1521, align 8, !tbaa !0
  store i64 %conv1528, i64* %asiz1512, align 8, !tbaa !4
  %sext2443 = shl i64 %sub.ptr.sub1524, 32
  %idx.ext1538 = ashr exact i64 %sext2443, 32
  %add.ptr1539 = getelementptr inbounds i8* %call1530, i64 %idx.ext1538
  %add.ptr1545 = getelementptr inbounds i8* %call1530, i64 %conv1528
  store i8* %add.ptr1545, i8** %aend1502, align 8, !tbaa !0
  %add.ptr1539.sum = add i64 %idx.ext1538, 1
  %incdec.ptr1550 = getelementptr inbounds i8* %call1530, i64 %add.ptr1539.sum
  store i8* %incdec.ptr1550, i8** %aptr1500, align 8, !tbaa !0
  store i8 %conv1431, i8* %add.ptr1539, align 1, !tbaa !1
  br label %if.end1560

if.else1552:                                      ; preds = %if.end1495
  %conv1554 = and i32 %conv924, 255
  %call1555 = call i32 @PerlIO_putc(%struct._PerlIO** %166, i32 %conv1554) #7
  %cmp1556 = icmp eq i32 %call1555, -1
  br i1 %cmp1556, label %return, label %if.end1560

if.end1560:                                       ; preds = %if.else1552, %if.then1505, %if.else1509
  %171 = load i32* %wlen, align 4, !tbaa !3
  %tobool1561 = icmp eq i32 %171, 0
  br i1 %tobool1561, label %if.end1933, label %if.then1562

if.then1562:                                      ; preds = %if.end1560
  %172 = load %struct._PerlIO*** %fio1432, align 8, !tbaa !0
  %tobool1564 = icmp eq %struct._PerlIO** %172, null
  br i1 %tobool1564, label %if.then1565, label %if.else1622

if.then1565:                                      ; preds = %if.then1562
  %aptr1567 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %173 = load i8** %aptr1567, align 8, !tbaa !0
  %idx.ext1568 = sext i32 %171 to i64
  %add.ptr1569 = getelementptr inbounds i8* %173, i64 %idx.ext1568
  %aend1571 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %174 = load i8** %aend1571, align 8, !tbaa !0
  %cmp1572 = icmp ugt i8* %add.ptr1569, %174
  br i1 %cmp1572, label %if.then1574, label %if.end1614

if.then1574:                                      ; preds = %if.then1565
  %asiz1578 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %175 = load i64* %asiz1578, align 8, !tbaa !4
  %add1579 = add i64 %175, %idx.ext1568
  %arena1587 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %176 = load i8** %arena1587, align 8, !tbaa !0
  %sub.ptr.lhs.cast1588 = ptrtoint i8* %173 to i64
  %sub.ptr.rhs.cast1589 = ptrtoint i8* %176 to i64
  %sub.ptr.sub1590 = sub i64 %sub.ptr.lhs.cast1588, %sub.ptr.rhs.cast1589
  %add1580 = shl i64 %add1579, 32
  %conv1582 = add i64 %add1580, 35180077121536
  %sext2444 = ashr exact i64 %conv1582, 32
  %conv1594 = and i64 %sext2444, -8192
  %call1596 = call i8* @Perl_safesysrealloc(i8* %176, i64 %conv1594) #7
  store i8* %call1596, i8** %arena1587, align 8, !tbaa !0
  store i64 %conv1594, i64* %asiz1578, align 8, !tbaa !4
  %sext2445 = shl i64 %sub.ptr.sub1590, 32
  %idx.ext1604 = ashr exact i64 %sext2445, 32
  %add.ptr1605 = getelementptr inbounds i8* %call1596, i64 %idx.ext1604
  store i8* %add.ptr1605, i8** %aptr1567, align 8, !tbaa !0
  %add.ptr1611 = getelementptr inbounds i8* %call1596, i64 %conv1594
  store i8* %add.ptr1611, i8** %aend1571, align 8, !tbaa !0
  %.pre = load i32* %wlen, align 4, !tbaa !3
  br label %if.end1614

if.end1614:                                       ; preds = %if.then1574, %if.then1565
  %177 = phi i32 [ %.pre, %if.then1574 ], [ %171, %if.then1565 ]
  %178 = phi i8* [ %add.ptr1605, %if.then1574 ], [ %173, %if.then1565 ]
  %conv1617 = sext i32 %177 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %178, i8* %pv.0, i64 %conv1617, i32 1, i1 false)
  %179 = load i32* %wlen, align 4, !tbaa !3
  %180 = load i8** %aptr1567, align 8, !tbaa !0
  %idx.ext1620 = sext i32 %179 to i64
  %add.ptr1621 = getelementptr inbounds i8* %180, i64 %idx.ext1620
  store i8* %add.ptr1621, i8** %aptr1567, align 8, !tbaa !0
  br label %if.end1933

if.else1622:                                      ; preds = %if.then1562
  %conv1624 = sext i32 %171 to i64
  %call1625 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %172, i8* %pv.0, i64 %conv1624) #7
  %181 = load i32* %wlen, align 4, !tbaa !3
  %conv1626 = sext i32 %181 to i64
  %cmp1627 = icmp eq i64 %call1625, %conv1626
  br i1 %cmp1627, label %if.end1933, label %return

if.else1633:                                      ; preds = %if.else1426
  %fio1634 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %182 = load %struct._PerlIO*** %fio1634, align 8, !tbaa !0
  %tobool1635 = icmp eq %struct._PerlIO** %182, null
  br i1 %tobool1635, label %if.then1636, label %if.else1690

if.then1636:                                      ; preds = %if.else1633
  %aptr1638 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %183 = load i8** %aptr1638, align 8, !tbaa !0
  %aend1640 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %184 = load i8** %aend1640, align 8, !tbaa !0
  %cmp1641 = icmp ult i8* %183, %184
  br i1 %cmp1641, label %if.then1643, label %if.else1647

if.then1643:                                      ; preds = %if.then1636
  %incdec.ptr1646 = getelementptr inbounds i8* %183, i64 1
  store i8* %incdec.ptr1646, i8** %aptr1638, align 8, !tbaa !0
  store i8 1, i8* %183, align 1, !tbaa !1
  br label %if.end1697

if.else1647:                                      ; preds = %if.then1636
  %asiz1650 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %185 = load i64* %asiz1650, align 8, !tbaa !4
  %arena1659 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %186 = load i8** %arena1659, align 8, !tbaa !0
  %sub.ptr.lhs.cast1660 = ptrtoint i8* %183 to i64
  %sub.ptr.rhs.cast1661 = ptrtoint i8* %186 to i64
  %sub.ptr.sub1662 = sub i64 %sub.ptr.lhs.cast1660, %sub.ptr.rhs.cast1661
  %add1652 = shl i64 %185, 32
  %conv1654 = add i64 %add1652, 35184372088832
  %sext2432 = ashr exact i64 %conv1654, 32
  %conv1666 = and i64 %sext2432, -8192
  %call1668 = call i8* @Perl_safesysrealloc(i8* %186, i64 %conv1666) #7
  store i8* %call1668, i8** %arena1659, align 8, !tbaa !0
  store i64 %conv1666, i64* %asiz1650, align 8, !tbaa !4
  %sext2433 = shl i64 %sub.ptr.sub1662, 32
  %idx.ext1676 = ashr exact i64 %sext2433, 32
  %add.ptr1677 = getelementptr inbounds i8* %call1668, i64 %idx.ext1676
  %add.ptr1683 = getelementptr inbounds i8* %call1668, i64 %conv1666
  store i8* %add.ptr1683, i8** %aend1640, align 8, !tbaa !0
  %add.ptr1677.sum = add i64 %idx.ext1676, 1
  %incdec.ptr1688 = getelementptr inbounds i8* %call1668, i64 %add.ptr1677.sum
  store i8* %incdec.ptr1688, i8** %aptr1638, align 8, !tbaa !0
  store i8 1, i8* %add.ptr1677, align 1, !tbaa !1
  br label %if.end1697

if.else1690:                                      ; preds = %if.else1633
  %call1692 = call i32 @PerlIO_putc(%struct._PerlIO** %182, i32 1) #7
  %cmp1693 = icmp eq i32 %call1692, -1
  br i1 %cmp1693, label %return, label %if.end1697

if.end1697:                                       ; preds = %if.else1690, %if.then1643, %if.else1647
  %netorder1698 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %187 = load i32* %netorder1698, align 4, !tbaa !3
  %tobool1699 = icmp eq i32 %187, 0
  br i1 %tobool1699, label %if.else1779, label %if.then1700

if.then1700:                                      ; preds = %if.end1697
  %188 = load i32* %wlen, align 4, !tbaa !3
  %189 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %188) #3, !srcloc !36
  store i32 %189, i32* %y1701, align 4, !tbaa !3
  %190 = load %struct._PerlIO*** %fio1634, align 8, !tbaa !0
  %tobool1705 = icmp eq %struct._PerlIO** %190, null
  br i1 %tobool1705, label %if.then1706, label %if.else1771

if.then1706:                                      ; preds = %if.then1700
  %aptr1708 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %191 = load i8** %aptr1708, align 8, !tbaa !0
  %add.ptr1709 = getelementptr inbounds i8* %191, i64 4
  %aend1711 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %192 = load i8** %aend1711, align 8, !tbaa !0
  %cmp1712 = icmp ugt i8* %add.ptr1709, %192
  br i1 %cmp1712, label %if.then1714, label %if.end1753

if.then1714:                                      ; preds = %if.then1706
  %asiz1717 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %193 = load i64* %asiz1717, align 8, !tbaa !4
  %arena1726 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %194 = load i8** %arena1726, align 8, !tbaa !0
  %sub.ptr.lhs.cast1727 = ptrtoint i8* %191 to i64
  %sub.ptr.rhs.cast1728 = ptrtoint i8* %194 to i64
  %sub.ptr.sub1729 = sub i64 %sub.ptr.lhs.cast1727, %sub.ptr.rhs.cast1728
  %add1719 = shl i64 %193, 32
  %conv1721 = add i64 %add1719, 35197256990720
  %sext2438 = ashr exact i64 %conv1721, 32
  %conv1733 = and i64 %sext2438, -8192
  %call1735 = call i8* @Perl_safesysrealloc(i8* %194, i64 %conv1733) #7
  store i8* %call1735, i8** %arena1726, align 8, !tbaa !0
  store i64 %conv1733, i64* %asiz1717, align 8, !tbaa !4
  %sext2439 = shl i64 %sub.ptr.sub1729, 32
  %idx.ext1743 = ashr exact i64 %sext2439, 32
  %add.ptr1744 = getelementptr inbounds i8* %call1735, i64 %idx.ext1743
  store i8* %add.ptr1744, i8** %aptr1708, align 8, !tbaa !0
  %add.ptr1750 = getelementptr inbounds i8* %call1735, i64 %conv1733
  store i8* %add.ptr1750, i8** %aend1711, align 8, !tbaa !0
  br label %if.end1753

if.end1753:                                       ; preds = %if.then1714, %if.then1706
  %195 = phi i8* [ %add.ptr1744, %if.then1714 ], [ %191, %if.then1706 ]
  %196 = ptrtoint i8* %195 to i64
  %and1758 = and i64 %196, -4
  %cmp1759 = icmp eq i64 %196, %and1758
  br i1 %cmp1759, label %if.then1761, label %if.else1764

if.then1761:                                      ; preds = %if.end1753
  %197 = load i32* %y1701, align 4, !tbaa !3
  %198 = bitcast i8* %195 to i32*
  store i32 %197, i32* %198, align 4, !tbaa !3
  br label %if.end1767

if.else1764:                                      ; preds = %if.end1753
  %199 = bitcast i8* %195 to i32*
  %200 = load i32* %y1701, align 4
  store i32 %200, i32* %199, align 1
  %.pre2483 = load i8** %aptr1708, align 8, !tbaa !0
  br label %if.end1767

if.end1767:                                       ; preds = %if.else1764, %if.then1761
  %201 = phi i8* [ %.pre2483, %if.else1764 ], [ %195, %if.then1761 ]
  %add.ptr1770 = getelementptr inbounds i8* %201, i64 4
  store i8* %add.ptr1770, i8** %aptr1708, align 8, !tbaa !0
  br label %if.end1855

if.else1771:                                      ; preds = %if.then1700
  %202 = bitcast i32* %y1701 to i8*
  %call1773 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %190, i8* %202, i64 4) #7
  %cmp1774 = icmp eq i64 %call1773, 4
  br i1 %cmp1774, label %if.end1855, label %return

if.else1779:                                      ; preds = %if.end1697
  %203 = load %struct._PerlIO*** %fio1634, align 8, !tbaa !0
  %tobool1781 = icmp eq %struct._PerlIO** %203, null
  br i1 %tobool1781, label %if.then1782, label %if.else1847

if.then1782:                                      ; preds = %if.else1779
  %aptr1784 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %204 = load i8** %aptr1784, align 8, !tbaa !0
  %add.ptr1785 = getelementptr inbounds i8* %204, i64 4
  %aend1787 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %205 = load i8** %aend1787, align 8, !tbaa !0
  %cmp1788 = icmp ugt i8* %add.ptr1785, %205
  br i1 %cmp1788, label %if.then1790, label %if.end1829

if.then1790:                                      ; preds = %if.then1782
  %asiz1793 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %206 = load i64* %asiz1793, align 8, !tbaa !4
  %arena1802 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %207 = load i8** %arena1802, align 8, !tbaa !0
  %sub.ptr.lhs.cast1803 = ptrtoint i8* %204 to i64
  %sub.ptr.rhs.cast1804 = ptrtoint i8* %207 to i64
  %sub.ptr.sub1805 = sub i64 %sub.ptr.lhs.cast1803, %sub.ptr.rhs.cast1804
  %add1795 = shl i64 %206, 32
  %conv1797 = add i64 %add1795, 35197256990720
  %sext2436 = ashr exact i64 %conv1797, 32
  %conv1809 = and i64 %sext2436, -8192
  %call1811 = call i8* @Perl_safesysrealloc(i8* %207, i64 %conv1809) #7
  store i8* %call1811, i8** %arena1802, align 8, !tbaa !0
  store i64 %conv1809, i64* %asiz1793, align 8, !tbaa !4
  %sext2437 = shl i64 %sub.ptr.sub1805, 32
  %idx.ext1819 = ashr exact i64 %sext2437, 32
  %add.ptr1820 = getelementptr inbounds i8* %call1811, i64 %idx.ext1819
  store i8* %add.ptr1820, i8** %aptr1784, align 8, !tbaa !0
  %add.ptr1826 = getelementptr inbounds i8* %call1811, i64 %conv1809
  store i8* %add.ptr1826, i8** %aend1787, align 8, !tbaa !0
  br label %if.end1829

if.end1829:                                       ; preds = %if.then1790, %if.then1782
  %208 = phi i8* [ %add.ptr1820, %if.then1790 ], [ %204, %if.then1782 ]
  %209 = ptrtoint i8* %208 to i64
  %and1834 = and i64 %209, -4
  %cmp1835 = icmp eq i64 %209, %and1834
  br i1 %cmp1835, label %if.then1837, label %if.else1840

if.then1837:                                      ; preds = %if.end1829
  %210 = load i32* %wlen, align 4, !tbaa !3
  %211 = bitcast i8* %208 to i32*
  store i32 %210, i32* %211, align 4, !tbaa !3
  br label %if.end1843

if.else1840:                                      ; preds = %if.end1829
  %212 = bitcast i8* %208 to i32*
  %213 = load i32* %wlen, align 4
  store i32 %213, i32* %212, align 1
  %.pre2481 = load i8** %aptr1784, align 8, !tbaa !0
  br label %if.end1843

if.end1843:                                       ; preds = %if.else1840, %if.then1837
  %214 = phi i8* [ %.pre2481, %if.else1840 ], [ %208, %if.then1837 ]
  %add.ptr1846 = getelementptr inbounds i8* %214, i64 4
  store i8* %add.ptr1846, i8** %aptr1784, align 8, !tbaa !0
  br label %if.end1855

if.else1847:                                      ; preds = %if.else1779
  %215 = bitcast i32* %wlen to i8*
  %call1849 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %203, i8* %215, i64 4) #7
  %cmp1850 = icmp eq i64 %call1849, 4
  br i1 %cmp1850, label %if.end1855, label %return

if.end1855:                                       ; preds = %if.else1847, %if.else1771, %if.end1843, %if.end1767
  %216 = load %struct._PerlIO*** %fio1634, align 8, !tbaa !0
  %tobool1857 = icmp eq %struct._PerlIO** %216, null
  br i1 %tobool1857, label %if.then1858, label %if.else1915

if.then1858:                                      ; preds = %if.end1855
  %aptr1860 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %217 = load i8** %aptr1860, align 8, !tbaa !0
  %218 = load i32* %wlen, align 4, !tbaa !3
  %idx.ext1861 = sext i32 %218 to i64
  %add.ptr1862 = getelementptr inbounds i8* %217, i64 %idx.ext1861
  %aend1864 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %219 = load i8** %aend1864, align 8, !tbaa !0
  %cmp1865 = icmp ugt i8* %add.ptr1862, %219
  br i1 %cmp1865, label %if.then1867, label %if.end1907

if.then1867:                                      ; preds = %if.then1858
  %asiz1871 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %220 = load i64* %asiz1871, align 8, !tbaa !4
  %add1872 = add i64 %220, %idx.ext1861
  %arena1880 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %221 = load i8** %arena1880, align 8, !tbaa !0
  %sub.ptr.lhs.cast1881 = ptrtoint i8* %217 to i64
  %sub.ptr.rhs.cast1882 = ptrtoint i8* %221 to i64
  %sub.ptr.sub1883 = sub i64 %sub.ptr.lhs.cast1881, %sub.ptr.rhs.cast1882
  %add1873 = shl i64 %add1872, 32
  %conv1875 = add i64 %add1873, 35180077121536
  %sext2434 = ashr exact i64 %conv1875, 32
  %conv1887 = and i64 %sext2434, -8192
  %call1889 = call i8* @Perl_safesysrealloc(i8* %221, i64 %conv1887) #7
  store i8* %call1889, i8** %arena1880, align 8, !tbaa !0
  store i64 %conv1887, i64* %asiz1871, align 8, !tbaa !4
  %sext2435 = shl i64 %sub.ptr.sub1883, 32
  %idx.ext1897 = ashr exact i64 %sext2435, 32
  %add.ptr1898 = getelementptr inbounds i8* %call1889, i64 %idx.ext1897
  store i8* %add.ptr1898, i8** %aptr1860, align 8, !tbaa !0
  %add.ptr1904 = getelementptr inbounds i8* %call1889, i64 %conv1887
  store i8* %add.ptr1904, i8** %aend1864, align 8, !tbaa !0
  %.pre2482 = load i32* %wlen, align 4, !tbaa !3
  br label %if.end1907

if.end1907:                                       ; preds = %if.then1867, %if.then1858
  %222 = phi i32 [ %.pre2482, %if.then1867 ], [ %218, %if.then1858 ]
  %223 = phi i8* [ %add.ptr1898, %if.then1867 ], [ %217, %if.then1858 ]
  %conv1910 = sext i32 %222 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %223, i8* %pv.0, i64 %conv1910, i32 1, i1 false)
  %224 = load i32* %wlen, align 4, !tbaa !3
  %225 = load i8** %aptr1860, align 8, !tbaa !0
  %idx.ext1913 = sext i32 %224 to i64
  %add.ptr1914 = getelementptr inbounds i8* %225, i64 %idx.ext1913
  store i8* %add.ptr1914, i8** %aptr1860, align 8, !tbaa !0
  br label %if.end1933

if.else1915:                                      ; preds = %if.end1855
  %226 = load i32* %wlen, align 4, !tbaa !3
  %conv1917 = sext i32 %226 to i64
  %call1918 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %216, i8* %pv.0, i64 %conv1917) #7
  %227 = load i32* %wlen, align 4, !tbaa !3
  %conv1919 = sext i32 %227 to i64
  %cmp1920 = icmp eq i64 %call1918, %conv1919
  br i1 %cmp1920, label %if.end1933, label %return

if.else1927:                                      ; preds = %if.else907
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  %call1928 = call i8* @Perl_sv_reftype(%struct.sv* %sv, i32 0) #7
  %228 = ptrtoint %struct.sv* %sv to i64
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str81, i64 0, i64 0), i8* %call1928, i64 %228) #7
  br label %if.end1933

if.end1933:                                       ; preds = %if.else714, %if.else899, %if.else1123, %if.end1061, %if.else1415, %if.else1622, %if.end1560, %if.else1915, %if.end893, %if.end1407, %if.end1115, %if.end1907, %if.end1614, %if.else1927, %if.else420, %if.then373, %if.else377, %if.end708, %if.else175, %if.then128, %if.else132, %if.else200, %if.then196, %if.else243
  br label %return

return:                                           ; preds = %if.else1915, %if.else1847, %if.else1771, %if.else1690, %if.else1622, %if.else1552, %if.else1488, %if.else1415, %if.else1347, %if.else1271, %if.else1191, %if.else1123, %if.else1053, %if.else989, %if.else899, %if.else836, %if.else714, %if.else651, %if.else420, %if.else356, %if.else243, %if.else175, %if.else102, %if.else37, %if.end1933, %if.end110
  %retval.0 = phi i32 [ 0, %if.end1933 ], [ 0, %if.end110 ], [ -1, %if.else37 ], [ -1, %if.else102 ], [ -1, %if.else175 ], [ -1, %if.else243 ], [ -1, %if.else356 ], [ -1, %if.else420 ], [ -1, %if.else651 ], [ -1, %if.else714 ], [ -1, %if.else836 ], [ -1, %if.else899 ], [ -1, %if.else989 ], [ -1, %if.else1053 ], [ -1, %if.else1123 ], [ -1, %if.else1191 ], [ -1, %if.else1271 ], [ -1, %if.else1347 ], [ -1, %if.else1415 ], [ -1, %if.else1488 ], [ -1, %if.else1552 ], [ -1, %if.else1622 ], [ -1, %if.else1690 ], [ -1, %if.else1771 ], [ -1, %if.else1847 ], [ -1, %if.else1915 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @store_array(%struct.stcxt* %cxt, %struct.av* %av) #1 {
entry:
  %len = alloca i32, align 4
  %y = alloca i32, align 4
  %call = call i32 @Perl_av_len(%struct.av* %av) #7
  %add = add nsw i32 %call, 1
  store i32 %add, i32* %len, align 4, !tbaa !3
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %0 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.else34

if.then:                                          ; preds = %entry
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %1 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %2 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %1, %2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %1, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 2, i8* %1, align 1, !tbaa !1
  br label %if.end41

if.else:                                          ; preds = %if.then
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %3 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %4 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add7 = shl i64 %3, 32
  %conv = add i64 %add7, 35184372088832
  %sext = ashr exact i64 %conv, 32
  %conv14 = and i64 %sext, -8192
  %call15 = call i8* @Perl_safesysrealloc(i8* %4, i64 %conv14) #7
  store i8* %call15, i8** %arena, align 8, !tbaa !0
  store i64 %conv14, i64* %asiz, align 8, !tbaa !4
  %sext348 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext348, 32
  %add.ptr = getelementptr inbounds i8* %call15, i64 %idx.ext
  %add.ptr28 = getelementptr inbounds i8* %call15, i64 %conv14
  store i8* %add.ptr28, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr33 = getelementptr inbounds i8* %call15, i64 %add.ptr.sum
  store i8* %incdec.ptr33, i8** %aptr, align 8, !tbaa !0
  store i8 2, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end41

if.else34:                                        ; preds = %entry
  %call36 = call i32 @PerlIO_putc(%struct._PerlIO** %0, i32 2) #7
  %cmp37 = icmp eq i32 %call36, -1
  br i1 %cmp37, label %return, label %if.end41

if.end41:                                         ; preds = %if.else34, %if.then2, %if.else
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %5 = load i32* %netorder, align 4, !tbaa !3
  %tobool42 = icmp eq i32 %5, 0
  br i1 %tobool42, label %if.else119, label %if.then43

if.then43:                                        ; preds = %if.end41
  %6 = load i32* %len, align 4, !tbaa !3
  %7 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %6) #3, !srcloc !37
  store i32 %7, i32* %y, align 4, !tbaa !3
  %8 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool45 = icmp eq %struct._PerlIO** %8, null
  br i1 %tobool45, label %if.then46, label %if.else111

if.then46:                                        ; preds = %if.then43
  %aptr48 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %9 = load i8** %aptr48, align 8, !tbaa !0
  %add.ptr49 = getelementptr inbounds i8* %9, i64 4
  %aend51 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %10 = load i8** %aend51, align 8, !tbaa !0
  %cmp52 = icmp ugt i8* %add.ptr49, %10
  br i1 %cmp52, label %if.then54, label %if.end93

if.then54:                                        ; preds = %if.then46
  %asiz57 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %11 = load i64* %asiz57, align 8, !tbaa !4
  %arena66 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %12 = load i8** %arena66, align 8, !tbaa !0
  %sub.ptr.lhs.cast67 = ptrtoint i8* %9 to i64
  %sub.ptr.rhs.cast68 = ptrtoint i8* %12 to i64
  %sub.ptr.sub69 = sub i64 %sub.ptr.lhs.cast67, %sub.ptr.rhs.cast68
  %add59 = shl i64 %11, 32
  %conv61 = add i64 %add59, 35197256990720
  %sext353 = ashr exact i64 %conv61, 32
  %conv73 = and i64 %sext353, -8192
  %call75 = call i8* @Perl_safesysrealloc(i8* %12, i64 %conv73) #7
  store i8* %call75, i8** %arena66, align 8, !tbaa !0
  store i64 %conv73, i64* %asiz57, align 8, !tbaa !4
  %sext354 = shl i64 %sub.ptr.sub69, 32
  %idx.ext83 = ashr exact i64 %sext354, 32
  %add.ptr84 = getelementptr inbounds i8* %call75, i64 %idx.ext83
  store i8* %add.ptr84, i8** %aptr48, align 8, !tbaa !0
  %add.ptr90 = getelementptr inbounds i8* %call75, i64 %conv73
  store i8* %add.ptr90, i8** %aend51, align 8, !tbaa !0
  br label %if.end93

if.end93:                                         ; preds = %if.then54, %if.then46
  %13 = phi i8* [ %add.ptr84, %if.then54 ], [ %9, %if.then46 ]
  %14 = ptrtoint i8* %13 to i64
  %and98 = and i64 %14, -4
  %cmp99 = icmp eq i64 %14, %and98
  br i1 %cmp99, label %if.then101, label %if.else104

if.then101:                                       ; preds = %if.end93
  %15 = load i32* %y, align 4, !tbaa !3
  %16 = bitcast i8* %13 to i32*
  store i32 %15, i32* %16, align 4, !tbaa !3
  br label %if.end107

if.else104:                                       ; preds = %if.end93
  %17 = bitcast i8* %13 to i32*
  %18 = load i32* %y, align 4
  store i32 %18, i32* %17, align 1
  %.pre357 = load i8** %aptr48, align 8, !tbaa !0
  br label %if.end107

if.end107:                                        ; preds = %if.else104, %if.then101
  %19 = phi i8* [ %.pre357, %if.else104 ], [ %13, %if.then101 ]
  %add.ptr110 = getelementptr inbounds i8* %19, i64 4
  store i8* %add.ptr110, i8** %aptr48, align 8, !tbaa !0
  br label %for.cond.preheader

if.else111:                                       ; preds = %if.then43
  %20 = bitcast i32* %y to i8*
  %call113 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %8, i8* %20, i64 4) #7
  %cmp114 = icmp eq i64 %call113, 4
  br i1 %cmp114, label %for.cond.preheader, label %return

if.else119:                                       ; preds = %if.end41
  %21 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool121 = icmp eq %struct._PerlIO** %21, null
  br i1 %tobool121, label %if.then122, label %if.else187

if.then122:                                       ; preds = %if.else119
  %aptr124 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %22 = load i8** %aptr124, align 8, !tbaa !0
  %add.ptr125 = getelementptr inbounds i8* %22, i64 4
  %aend127 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %23 = load i8** %aend127, align 8, !tbaa !0
  %cmp128 = icmp ugt i8* %add.ptr125, %23
  br i1 %cmp128, label %if.then130, label %if.end169

if.then130:                                       ; preds = %if.then122
  %asiz133 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %24 = load i64* %asiz133, align 8, !tbaa !4
  %arena142 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %25 = load i8** %arena142, align 8, !tbaa !0
  %sub.ptr.lhs.cast143 = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast144 = ptrtoint i8* %25 to i64
  %sub.ptr.sub145 = sub i64 %sub.ptr.lhs.cast143, %sub.ptr.rhs.cast144
  %add135 = shl i64 %24, 32
  %conv137 = add i64 %add135, 35197256990720
  %sext351 = ashr exact i64 %conv137, 32
  %conv149 = and i64 %sext351, -8192
  %call151 = call i8* @Perl_safesysrealloc(i8* %25, i64 %conv149) #7
  store i8* %call151, i8** %arena142, align 8, !tbaa !0
  store i64 %conv149, i64* %asiz133, align 8, !tbaa !4
  %sext352 = shl i64 %sub.ptr.sub145, 32
  %idx.ext159 = ashr exact i64 %sext352, 32
  %add.ptr160 = getelementptr inbounds i8* %call151, i64 %idx.ext159
  store i8* %add.ptr160, i8** %aptr124, align 8, !tbaa !0
  %add.ptr166 = getelementptr inbounds i8* %call151, i64 %conv149
  store i8* %add.ptr166, i8** %aend127, align 8, !tbaa !0
  br label %if.end169

if.end169:                                        ; preds = %if.then130, %if.then122
  %26 = phi i8* [ %add.ptr160, %if.then130 ], [ %22, %if.then122 ]
  %27 = ptrtoint i8* %26 to i64
  %and174 = and i64 %27, -4
  %cmp175 = icmp eq i64 %27, %and174
  br i1 %cmp175, label %if.then177, label %if.else180

if.then177:                                       ; preds = %if.end169
  %28 = load i32* %len, align 4, !tbaa !3
  %29 = bitcast i8* %26 to i32*
  store i32 %28, i32* %29, align 4, !tbaa !3
  br label %if.end183

if.else180:                                       ; preds = %if.end169
  %30 = bitcast i8* %26 to i32*
  %31 = load i32* %len, align 4
  store i32 %31, i32* %30, align 1
  %.pre = load i8** %aptr124, align 8, !tbaa !0
  br label %if.end183

if.end183:                                        ; preds = %if.else180, %if.then177
  %32 = phi i8* [ %.pre, %if.else180 ], [ %26, %if.then177 ]
  %add.ptr186 = getelementptr inbounds i8* %32, i64 4
  store i8* %add.ptr186, i8** %aptr124, align 8, !tbaa !0
  br label %for.cond.preheader

if.else187:                                       ; preds = %if.else119
  %33 = bitcast i32* %len to i8*
  %call189 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %21, i8* %33, i64 4) #7
  %cmp190 = icmp eq i64 %call189, 4
  br i1 %cmp190, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %if.else111, %if.else187, %if.end183, %if.end107
  %34 = load i32* %len, align 4, !tbaa !3
  %cmp196355 = icmp sgt i32 %34, 0
  br i1 %cmp196355, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %aptr205 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend207 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %asiz217 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %arena226 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.0356 = phi i32 [ 0, %for.body.lr.ph ], [ %inc270, %for.inc ]
  %call198 = call %struct.sv** @Perl_av_fetch(%struct.av* %av, i32 %i.0356, i32 0) #7
  %tobool199 = icmp eq %struct.sv** %call198, null
  br i1 %tobool199, label %if.then200, label %if.end265

if.then200:                                       ; preds = %for.body
  %35 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %35, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %36 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool202 = icmp eq %struct._PerlIO** %36, null
  br i1 %tobool202, label %if.then203, label %if.else257

if.then203:                                       ; preds = %if.then200
  %37 = load i8** %aptr205, align 8, !tbaa !0
  %38 = load i8** %aend207, align 8, !tbaa !0
  %cmp208 = icmp ult i8* %37, %38
  br i1 %cmp208, label %if.then210, label %if.else214

if.then210:                                       ; preds = %if.then203
  %incdec.ptr213 = getelementptr inbounds i8* %37, i64 1
  store i8* %incdec.ptr213, i8** %aptr205, align 8, !tbaa !0
  store i8 14, i8* %37, align 1, !tbaa !1
  br label %for.inc

if.else214:                                       ; preds = %if.then203
  %39 = load i64* %asiz217, align 8, !tbaa !4
  %40 = load i8** %arena226, align 8, !tbaa !0
  %sub.ptr.lhs.cast227 = ptrtoint i8* %37 to i64
  %sub.ptr.rhs.cast228 = ptrtoint i8* %40 to i64
  %sub.ptr.sub229 = sub i64 %sub.ptr.lhs.cast227, %sub.ptr.rhs.cast228
  %add219 = shl i64 %39, 32
  %conv221 = add i64 %add219, 35184372088832
  %sext349 = ashr exact i64 %conv221, 32
  %conv233 = and i64 %sext349, -8192
  %call235 = call i8* @Perl_safesysrealloc(i8* %40, i64 %conv233) #7
  store i8* %call235, i8** %arena226, align 8, !tbaa !0
  store i64 %conv233, i64* %asiz217, align 8, !tbaa !4
  %sext350 = shl i64 %sub.ptr.sub229, 32
  %idx.ext243 = ashr exact i64 %sext350, 32
  %add.ptr244 = getelementptr inbounds i8* %call235, i64 %idx.ext243
  %add.ptr250 = getelementptr inbounds i8* %call235, i64 %conv233
  store i8* %add.ptr250, i8** %aend207, align 8, !tbaa !0
  %add.ptr244.sum = add i64 %idx.ext243, 1
  %incdec.ptr255 = getelementptr inbounds i8* %call235, i64 %add.ptr244.sum
  store i8* %incdec.ptr255, i8** %aptr205, align 8, !tbaa !0
  store i8 14, i8* %add.ptr244, align 1, !tbaa !1
  br label %for.inc

if.else257:                                       ; preds = %if.then200
  %call259 = call i32 @PerlIO_putc(%struct._PerlIO** %36, i32 14) #7
  %cmp260 = icmp eq i32 %call259, -1
  br i1 %cmp260, label %return, label %for.inc

if.end265:                                        ; preds = %for.body
  %41 = load %struct.sv** %call198, align 8, !tbaa !0
  %call266 = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %41) #6
  %tobool267 = icmp eq i32 %call266, 0
  br i1 %tobool267, label %for.inc, label %return

for.inc:                                          ; preds = %if.end265, %if.else214, %if.then210, %if.else257
  %inc270 = add nsw i32 %i.0356, 1
  %42 = load i32* %len, align 4, !tbaa !3
  %cmp196 = icmp slt i32 %inc270, %42
  br i1 %cmp196, label %for.body, label %return

return:                                           ; preds = %for.cond.preheader, %if.end265, %if.else257, %for.inc, %if.else187, %if.else111, %if.else34
  %retval.0 = phi i32 [ -1, %if.else34 ], [ -1, %if.else111 ], [ -1, %if.else187 ], [ 0, %for.cond.preheader ], [ -1, %if.else257 ], [ %call266, %if.end265 ], [ 0, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @store_hash(%struct.stcxt* %cxt, %struct.hv* %hv) #1 {
entry:
  %len = alloca i32, align 4
  %y = alloca i32, align 4
  %keylen_tmp = alloca i64, align 8
  %keylen = alloca i32, align 4
  %is_utf8 = alloca i8, align 1
  %y564 = alloca i32, align 4
  %len805 = alloca i32, align 4
  %y958 = alloca i32, align 4
  %sv_any = getelementptr inbounds %struct.hv* %hv, i64 0, i32 0
  %0 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_keys = getelementptr inbounds %struct.xpvhv* %0, i64 0, i32 3
  %1 = load i64* %xhv_keys, align 8, !tbaa !4
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.hv* %hv, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %3 = and i32 %2, -2139095040
  %4 = icmp ne i32 %3, 0
  %and5 = lshr i32 %2, 23
  %and5.tr = trunc i32 %and5 to i8
  %conv8 = and i8 %and5.tr, 1
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %5 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool12 = icmp ne %struct._PerlIO** %5, null
  br i1 %4, label %if.then11, label %if.else123

if.then11:                                        ; preds = %entry
  br i1 %tobool12, label %if.else50, label %if.then13

if.then13:                                        ; preds = %if.then11
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %6 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %7 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %6, %7
  br i1 %cmp, label %if.then16, label %if.else19

if.then16:                                        ; preds = %if.then13
  %incdec.ptr = getelementptr inbounds i8* %6, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 25, i8* %6, align 1, !tbaa !1
  br label %if.end57

if.else19:                                        ; preds = %if.then13
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %8 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %9 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add21 = shl i64 %8, 32
  %conv23 = add i64 %add21, 35184372088832
  %sext1523 = ashr exact i64 %conv23, 32
  %conv30 = and i64 %sext1523, -8192
  %call = call i8* @Perl_safesysrealloc(i8* %9, i64 %conv30) #7
  store i8* %call, i8** %arena, align 8, !tbaa !0
  store i64 %conv30, i64* %asiz, align 8, !tbaa !4
  %sext1524 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext1524, 32
  %add.ptr = getelementptr inbounds i8* %call, i64 %idx.ext
  %add.ptr43 = getelementptr inbounds i8* %call, i64 %conv30
  store i8* %add.ptr43, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr48 = getelementptr inbounds i8* %call, i64 %add.ptr.sum
  store i8* %incdec.ptr48, i8** %aptr, align 8, !tbaa !0
  store i8 25, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end57

if.else50:                                        ; preds = %if.then11
  %call52 = call i32 @PerlIO_putc(%struct._PerlIO** %5, i32 25) #7
  %cmp53 = icmp eq i32 %call52, -1
  br i1 %cmp53, label %return, label %if.end57

if.end57:                                         ; preds = %if.else50, %if.then16, %if.else19
  %10 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool59 = icmp eq %struct._PerlIO** %10, null
  br i1 %tobool59, label %if.then60, label %if.else114

if.then60:                                        ; preds = %if.end57
  %aptr62 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %11 = load i8** %aptr62, align 8, !tbaa !0
  %aend64 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %12 = load i8** %aend64, align 8, !tbaa !0
  %cmp65 = icmp ult i8* %11, %12
  br i1 %cmp65, label %if.then67, label %if.else71

if.then67:                                        ; preds = %if.then60
  %incdec.ptr70 = getelementptr inbounds i8* %11, i64 1
  store i8* %incdec.ptr70, i8** %aptr62, align 8, !tbaa !0
  store i8 %conv8, i8* %11, align 1, !tbaa !1
  br label %if.end188

if.else71:                                        ; preds = %if.then60
  %asiz74 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %13 = load i64* %asiz74, align 8, !tbaa !4
  %arena83 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %14 = load i8** %arena83, align 8, !tbaa !0
  %sub.ptr.lhs.cast84 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast85 = ptrtoint i8* %14 to i64
  %sub.ptr.sub86 = sub i64 %sub.ptr.lhs.cast84, %sub.ptr.rhs.cast85
  %add76 = shl i64 %13, 32
  %conv78 = add i64 %add76, 35184372088832
  %sext1525 = ashr exact i64 %conv78, 32
  %conv90 = and i64 %sext1525, -8192
  %call92 = call i8* @Perl_safesysrealloc(i8* %14, i64 %conv90) #7
  store i8* %call92, i8** %arena83, align 8, !tbaa !0
  store i64 %conv90, i64* %asiz74, align 8, !tbaa !4
  %sext1526 = shl i64 %sub.ptr.sub86, 32
  %idx.ext100 = ashr exact i64 %sext1526, 32
  %add.ptr101 = getelementptr inbounds i8* %call92, i64 %idx.ext100
  %add.ptr107 = getelementptr inbounds i8* %call92, i64 %conv90
  store i8* %add.ptr107, i8** %aend64, align 8, !tbaa !0
  %add.ptr101.sum = add i64 %idx.ext100, 1
  %incdec.ptr112 = getelementptr inbounds i8* %call92, i64 %add.ptr101.sum
  store i8* %incdec.ptr112, i8** %aptr62, align 8, !tbaa !0
  store i8 %conv8, i8* %add.ptr101, align 1, !tbaa !1
  br label %if.end188

if.else114:                                       ; preds = %if.end57
  %conv116 = zext i8 %conv8 to i32
  %call117 = call i32 @PerlIO_putc(%struct._PerlIO** %10, i32 %conv116) #7
  %cmp118 = icmp eq i32 %call117, -1
  br i1 %cmp118, label %return, label %if.end188

if.else123:                                       ; preds = %entry
  br i1 %tobool12, label %if.else180, label %if.then126

if.then126:                                       ; preds = %if.else123
  %aptr128 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %15 = load i8** %aptr128, align 8, !tbaa !0
  %aend130 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %16 = load i8** %aend130, align 8, !tbaa !0
  %cmp131 = icmp ult i8* %15, %16
  br i1 %cmp131, label %if.then133, label %if.else137

if.then133:                                       ; preds = %if.then126
  %incdec.ptr136 = getelementptr inbounds i8* %15, i64 1
  store i8* %incdec.ptr136, i8** %aptr128, align 8, !tbaa !0
  store i8 3, i8* %15, align 1, !tbaa !1
  br label %if.end188

if.else137:                                       ; preds = %if.then126
  %asiz140 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %17 = load i64* %asiz140, align 8, !tbaa !4
  %arena149 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %18 = load i8** %arena149, align 8, !tbaa !0
  %sub.ptr.lhs.cast150 = ptrtoint i8* %15 to i64
  %sub.ptr.rhs.cast151 = ptrtoint i8* %18 to i64
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151
  %add142 = shl i64 %17, 32
  %conv144 = add i64 %add142, 35184372088832
  %sext = ashr exact i64 %conv144, 32
  %conv156 = and i64 %sext, -8192
  %call158 = call i8* @Perl_safesysrealloc(i8* %18, i64 %conv156) #7
  store i8* %call158, i8** %arena149, align 8, !tbaa !0
  store i64 %conv156, i64* %asiz140, align 8, !tbaa !4
  %sext1502 = shl i64 %sub.ptr.sub152, 32
  %idx.ext166 = ashr exact i64 %sext1502, 32
  %add.ptr167 = getelementptr inbounds i8* %call158, i64 %idx.ext166
  %add.ptr173 = getelementptr inbounds i8* %call158, i64 %conv156
  store i8* %add.ptr173, i8** %aend130, align 8, !tbaa !0
  %add.ptr167.sum = add i64 %idx.ext166, 1
  %incdec.ptr178 = getelementptr inbounds i8* %call158, i64 %add.ptr167.sum
  store i8* %incdec.ptr178, i8** %aptr128, align 8, !tbaa !0
  store i8 3, i8* %add.ptr167, align 1, !tbaa !1
  br label %if.end188

if.else180:                                       ; preds = %if.else123
  %call182 = call i32 @PerlIO_putc(%struct._PerlIO** %5, i32 3) #7
  %cmp183 = icmp eq i32 %call182, -1
  br i1 %cmp183, label %return, label %if.end188

if.end188:                                        ; preds = %if.else137, %if.then133, %if.else180, %if.else71, %if.then67, %if.else114
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %19 = load i32* %netorder, align 4, !tbaa !3
  %tobool189 = icmp eq i32 %19, 0
  br i1 %tobool189, label %if.else266, label %if.then190

if.then190:                                       ; preds = %if.end188
  %20 = load i32* %len, align 4, !tbaa !3
  %21 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %20) #3, !srcloc !38
  store i32 %21, i32* %y, align 4, !tbaa !3
  %22 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool192 = icmp eq %struct._PerlIO** %22, null
  br i1 %tobool192, label %if.then193, label %if.else258

if.then193:                                       ; preds = %if.then190
  %aptr195 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %23 = load i8** %aptr195, align 8, !tbaa !0
  %add.ptr196 = getelementptr inbounds i8* %23, i64 4
  %aend198 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %24 = load i8** %aend198, align 8, !tbaa !0
  %cmp199 = icmp ugt i8* %add.ptr196, %24
  br i1 %cmp199, label %if.then201, label %if.end240

if.then201:                                       ; preds = %if.then193
  %asiz204 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %25 = load i64* %asiz204, align 8, !tbaa !4
  %arena213 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %26 = load i8** %arena213, align 8, !tbaa !0
  %sub.ptr.lhs.cast214 = ptrtoint i8* %23 to i64
  %sub.ptr.rhs.cast215 = ptrtoint i8* %26 to i64
  %sub.ptr.sub216 = sub i64 %sub.ptr.lhs.cast214, %sub.ptr.rhs.cast215
  %add206 = shl i64 %25, 32
  %conv208 = add i64 %add206, 35197256990720
  %sext1521 = ashr exact i64 %conv208, 32
  %conv220 = and i64 %sext1521, -8192
  %call222 = call i8* @Perl_safesysrealloc(i8* %26, i64 %conv220) #7
  store i8* %call222, i8** %arena213, align 8, !tbaa !0
  store i64 %conv220, i64* %asiz204, align 8, !tbaa !4
  %sext1522 = shl i64 %sub.ptr.sub216, 32
  %idx.ext230 = ashr exact i64 %sext1522, 32
  %add.ptr231 = getelementptr inbounds i8* %call222, i64 %idx.ext230
  store i8* %add.ptr231, i8** %aptr195, align 8, !tbaa !0
  %add.ptr237 = getelementptr inbounds i8* %call222, i64 %conv220
  store i8* %add.ptr237, i8** %aend198, align 8, !tbaa !0
  br label %if.end240

if.end240:                                        ; preds = %if.then201, %if.then193
  %27 = phi i8* [ %add.ptr231, %if.then201 ], [ %23, %if.then193 ]
  %28 = ptrtoint i8* %27 to i64
  %and245 = and i64 %28, -4
  %cmp246 = icmp eq i64 %28, %and245
  br i1 %cmp246, label %if.then248, label %if.else251

if.then248:                                       ; preds = %if.end240
  %29 = load i32* %y, align 4, !tbaa !3
  %30 = bitcast i8* %27 to i32*
  store i32 %29, i32* %30, align 4, !tbaa !3
  br label %if.end254

if.else251:                                       ; preds = %if.end240
  %31 = bitcast i8* %27 to i32*
  %32 = load i32* %y, align 4
  store i32 %32, i32* %31, align 1
  %.pre1554 = load i8** %aptr195, align 8, !tbaa !0
  br label %if.end254

if.end254:                                        ; preds = %if.else251, %if.then248
  %33 = phi i8* [ %.pre1554, %if.else251 ], [ %27, %if.then248 ]
  %add.ptr257 = getelementptr inbounds i8* %33, i64 4
  store i8* %add.ptr257, i8** %aptr195, align 8, !tbaa !0
  br label %if.end342

if.else258:                                       ; preds = %if.then190
  %34 = bitcast i32* %y to i8*
  %call260 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %22, i8* %34, i64 4) #7
  %cmp261 = icmp eq i64 %call260, 4
  br i1 %cmp261, label %if.end342, label %return

if.else266:                                       ; preds = %if.end188
  %35 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool268 = icmp eq %struct._PerlIO** %35, null
  br i1 %tobool268, label %if.then269, label %if.else334

if.then269:                                       ; preds = %if.else266
  %aptr271 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %36 = load i8** %aptr271, align 8, !tbaa !0
  %add.ptr272 = getelementptr inbounds i8* %36, i64 4
  %aend274 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %37 = load i8** %aend274, align 8, !tbaa !0
  %cmp275 = icmp ugt i8* %add.ptr272, %37
  br i1 %cmp275, label %if.then277, label %if.end316

if.then277:                                       ; preds = %if.then269
  %asiz280 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %38 = load i64* %asiz280, align 8, !tbaa !4
  %arena289 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %39 = load i8** %arena289, align 8, !tbaa !0
  %sub.ptr.lhs.cast290 = ptrtoint i8* %36 to i64
  %sub.ptr.rhs.cast291 = ptrtoint i8* %39 to i64
  %sub.ptr.sub292 = sub i64 %sub.ptr.lhs.cast290, %sub.ptr.rhs.cast291
  %add282 = shl i64 %38, 32
  %conv284 = add i64 %add282, 35197256990720
  %sext1519 = ashr exact i64 %conv284, 32
  %conv296 = and i64 %sext1519, -8192
  %call298 = call i8* @Perl_safesysrealloc(i8* %39, i64 %conv296) #7
  store i8* %call298, i8** %arena289, align 8, !tbaa !0
  store i64 %conv296, i64* %asiz280, align 8, !tbaa !4
  %sext1520 = shl i64 %sub.ptr.sub292, 32
  %idx.ext306 = ashr exact i64 %sext1520, 32
  %add.ptr307 = getelementptr inbounds i8* %call298, i64 %idx.ext306
  store i8* %add.ptr307, i8** %aptr271, align 8, !tbaa !0
  %add.ptr313 = getelementptr inbounds i8* %call298, i64 %conv296
  store i8* %add.ptr313, i8** %aend274, align 8, !tbaa !0
  br label %if.end316

if.end316:                                        ; preds = %if.then277, %if.then269
  %40 = phi i8* [ %add.ptr307, %if.then277 ], [ %36, %if.then269 ]
  %41 = ptrtoint i8* %40 to i64
  %and321 = and i64 %41, -4
  %cmp322 = icmp eq i64 %41, %and321
  br i1 %cmp322, label %if.then324, label %if.else327

if.then324:                                       ; preds = %if.end316
  %42 = load i32* %len, align 4, !tbaa !3
  %43 = bitcast i8* %40 to i32*
  store i32 %42, i32* %43, align 4, !tbaa !3
  br label %if.end330

if.else327:                                       ; preds = %if.end316
  %44 = bitcast i8* %40 to i32*
  %45 = load i32* %len, align 4
  store i32 %45, i32* %44, align 1
  %.pre = load i8** %aptr271, align 8, !tbaa !0
  br label %if.end330

if.end330:                                        ; preds = %if.else327, %if.then324
  %46 = phi i8* [ %.pre, %if.else327 ], [ %40, %if.then324 ]
  %add.ptr333 = getelementptr inbounds i8* %46, i64 4
  store i8* %add.ptr333, i8** %aptr271, align 8, !tbaa !0
  br label %if.end342

if.else334:                                       ; preds = %if.else266
  %47 = bitcast i32* %len to i8*
  %call336 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %35, i8* %47, i64 4) #7
  %cmp337 = icmp eq i64 %call336, 4
  br i1 %cmp337, label %if.end342, label %return

if.end342:                                        ; preds = %if.else258, %if.else334, %if.end330, %if.end254
  %48 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_riter = getelementptr inbounds %struct.xpvhv* %48, i64 0, i32 7
  %49 = load i32* %xhv_riter, align 4, !tbaa !3
  %xhv_eiter = getelementptr inbounds %struct.xpvhv* %48, i64 0, i32 8
  %50 = load %struct.he** %xhv_eiter, align 8, !tbaa !0
  %call345 = call i32 @Perl_hv_iterinit(%struct.hv* %hv) #7
  %optype = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 1
  %51 = load i32* %optype, align 4, !tbaa !3
  %and346 = and i32 %51, 4
  %tobool347 = icmp eq i32 %and346, 0
  br i1 %tobool347, label %land.lhs.true, label %for.cond800.preheader

land.lhs.true:                                    ; preds = %if.end342
  %canonical = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 16
  %52 = load i32* %canonical, align 4, !tbaa !3
  %cmp348 = icmp eq i32 %52, 1
  br i1 %cmp348, label %if.then411, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp351 = icmp slt i32 %52, 0
  br i1 %cmp351, label %land.lhs.true353, label %for.cond800.preheader

land.lhs.true353:                                 ; preds = %lor.lhs.false
  %call354 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([20 x i8]* @.str80, i64 0, i64 0), i32 1) #7
  %tobool355 = icmp eq %struct.sv* %call354, null
  br i1 %tobool355, label %cond.end405.thread, label %cond.false

cond.end405.thread:                               ; preds = %land.lhs.true353
  store i32 0, i32* %canonical, align 4, !tbaa !3
  br label %for.cond800.preheader

for.cond800.preheader:                            ; preds = %if.end342, %cond.end405, %lor.lhs.false, %cond.end405.thread
  %53 = load i32* %len, align 4, !tbaa !3
  %cmp8011540 = icmp sgt i32 %53, 0
  br i1 %cmp8011540, label %for.body803.lr.ph, label %out

for.body803.lr.ph:                                ; preds = %for.cond800.preheader
  %tobool822 = icmp eq i8 %conv8, 0
  %aptr886 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend888 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %asiz898 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %arena907 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %54 = bitcast i32* %len805 to i8*
  %55 = bitcast i32* %y958 to i8*
  br label %for.body803

cond.false:                                       ; preds = %land.lhs.true353
  %call356 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([20 x i8]* @.str80, i64 0, i64 0), i32 1) #7
  %sv_flags357 = getelementptr inbounds %struct.sv* %call356, i64 0, i32 2
  %56 = load i32* %sv_flags357, align 4, !tbaa !3
  %and358 = and i32 %56, 262144
  %tobool359 = icmp eq i32 %and358, 0
  %call361 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([20 x i8]* @.str80, i64 0, i64 0), i32 1) #7
  br i1 %tobool359, label %cond.false376, label %cond.true360

cond.true360:                                     ; preds = %cond.false
  %sv_any362 = getelementptr inbounds %struct.sv* %call361, i64 0, i32 0
  %57 = load i8** %sv_any362, align 8, !tbaa !0
  %58 = bitcast i8* %57 to %struct.xpv*
  store %struct.xpv* %58, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool363 = icmp eq i8* %57, null
  br i1 %tobool363, label %land.end374, label %land.rhs

land.rhs:                                         ; preds = %cond.true360
  %xpv_cur = getelementptr inbounds i8* %57, i64 8
  %59 = bitcast i8* %xpv_cur to i64*
  %60 = load i64* %59, align 8, !tbaa !4
  %cmp364 = icmp ugt i64 %60, 1
  br i1 %cmp364, label %land.end374, label %lor.rhs366

lor.rhs366:                                       ; preds = %land.rhs
  %tobool368 = icmp eq i64 %60, 0
  br i1 %tobool368, label %land.end374, label %land.rhs369

land.rhs369:                                      ; preds = %lor.rhs366
  %xpv_pv = bitcast i8* %57 to i8**
  %61 = load i8** %xpv_pv, align 8, !tbaa !0
  %62 = load i8* %61, align 1, !tbaa !1
  %cmp371 = icmp ne i8 %62, 48
  br label %land.end374

land.end374:                                      ; preds = %lor.rhs366, %cond.true360, %land.rhs, %land.rhs369
  %63 = phi i1 [ false, %cond.true360 ], [ true, %land.rhs ], [ false, %lor.rhs366 ], [ %cmp371, %land.rhs369 ]
  %cond375 = zext i1 %63 to i32
  br label %cond.end405

cond.false376:                                    ; preds = %cond.false
  %sv_flags378 = getelementptr inbounds %struct.sv* %call361, i64 0, i32 2
  %64 = load i32* %sv_flags378, align 4, !tbaa !3
  %and379 = and i32 %64, 65536
  %tobool380 = icmp eq i32 %and379, 0
  %call382 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([20 x i8]* @.str80, i64 0, i64 0), i32 1) #7
  br i1 %tobool380, label %cond.false386, label %cond.true381

cond.true381:                                     ; preds = %cond.false376
  %sv_any383 = getelementptr inbounds %struct.sv* %call382, i64 0, i32 0
  %65 = load i8** %sv_any383, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %65, i64 24
  %66 = bitcast i8* %xiv_iv to i64*
  %67 = load i64* %66, align 8, !tbaa !4
  %cmp384 = icmp ne i64 %67, 0
  %conv385 = zext i1 %cmp384 to i32
  br label %cond.end405

cond.false386:                                    ; preds = %cond.false376
  %sv_flags388 = getelementptr inbounds %struct.sv* %call382, i64 0, i32 2
  %68 = load i32* %sv_flags388, align 4, !tbaa !3
  %and389 = and i32 %68, 131072
  %tobool390 = icmp eq i32 %and389, 0
  %call392 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([20 x i8]* @.str80, i64 0, i64 0), i32 1) #7
  br i1 %tobool390, label %cond.false396, label %cond.true391

cond.true391:                                     ; preds = %cond.false386
  %sv_any393 = getelementptr inbounds %struct.sv* %call392, i64 0, i32 0
  %69 = load i8** %sv_any393, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %69, i64 32
  %70 = bitcast i8* %xnv_nv to double*
  %71 = load double* %70, align 8, !tbaa !6
  %cmp394 = fcmp une double %71, 0.000000e+00
  %conv395 = zext i1 %cmp394 to i32
  br label %cond.end405

cond.false396:                                    ; preds = %cond.false386
  %call398 = call signext i8 @Perl_sv_2bool(%struct.sv* %call392) #7
  %conv399 = sext i8 %call398 to i32
  br label %cond.end405

cond.end405:                                      ; preds = %land.end374, %cond.true391, %cond.false396, %cond.true381
  %cond406 = phi i32 [ %cond375, %land.end374 ], [ %conv385, %cond.true381 ], [ %conv395, %cond.true391 ], [ %conv399, %cond.false396 ]
  %tobool407 = icmp ne i32 %cond406, 0
  %cond408 = zext i1 %tobool407 to i32
  store i32 %cond408, i32* %canonical, align 4, !tbaa !3
  br i1 %tobool407, label %if.then411, label %for.cond800.preheader

if.then411:                                       ; preds = %cond.end405, %land.lhs.true
  %call412 = call %struct.av* @Perl_newAV() #7
  %72 = load i32* %len, align 4, !tbaa !3
  %cmp4131534 = icmp sgt i32 %72, 0
  %sv_any417 = getelementptr inbounds %struct.av* %call412, i64 0, i32 0
  br i1 %cmp4131534, label %for.body, label %for.end

for.body:                                         ; preds = %if.then411, %for.body
  %i.01535 = phi i32 [ %inc, %for.body ], [ 0, %if.then411 ]
  %call415 = call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %hv, i32 1) #7
  %call416 = call %struct.sv* @Perl_hv_iterkeysv(%struct.he* %call415) #7
  %73 = load %struct.xpvav** %sv_any417, align 8, !tbaa !0
  %xav_fill = getelementptr inbounds %struct.xpvav* %73, i64 0, i32 1
  %74 = load i64* %xav_fill, align 8, !tbaa !4
  %add418 = add nsw i64 %74, 1
  %conv419 = trunc i64 %add418 to i32
  %call420 = call %struct.sv** @Perl_av_store(%struct.av* %call412, i32 %conv419, %struct.sv* %call416) #7
  %inc = add nsw i32 %i.01535, 1
  %75 = load i32* %len, align 4, !tbaa !3
  %cmp413 = icmp slt i32 %inc, %75
  br i1 %cmp413, label %for.body, label %for.end

for.end:                                          ; preds = %if.then411, %for.body
  %.lcssa = phi i32 [ %75, %for.body ], [ %72, %if.then411 ]
  %76 = load %struct.xpvav** %sv_any417, align 8, !tbaa !0
  %xav_array = getelementptr inbounds %struct.xpvav* %76, i64 0, i32 0
  %77 = load i8** %xav_array, align 8, !tbaa !0
  %78 = bitcast i8* %77 to %struct.sv**
  %conv422 = sext i32 %.lcssa to i64
  call void @Perl_sortsv(%struct.sv** %78, i64 %conv422, i32 (%struct.sv*, %struct.sv*)* @Perl_sv_cmp) #7
  %79 = load i32* %len, align 4, !tbaa !3
  %cmp4241532 = icmp sgt i32 %79, 0
  br i1 %cmp4241532, label %for.body426.lr.ph, label %for.end798

for.body426.lr.ph:                                ; preds = %for.end
  %tobool451 = icmp eq i8 %conv8, 0
  %aptr498 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %aend500 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %asiz510 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %arena519 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %80 = bitcast i32* %keylen to i8*
  %81 = bitcast i32* %y564 to i8*
  br label %for.body426

for.body426:                                      ; preds = %for.body426.lr.ph, %for.inc796
  %i.11533 = phi i32 [ 0, %for.body426.lr.ph ], [ %inc797, %for.inc796 ]
  %82 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xnv_nv428 = getelementptr inbounds %struct.xpvhv* %82, i64 0, i32 4
  %83 = load double* %xnv_nv428, align 8, !tbaa !6
  %call431 = call %struct.sv* @Perl_av_shift(%struct.av* %call412) #7
  %call433 = call %struct.he* @Perl_hv_fetch_ent(%struct.hv* %hv, %struct.sv* %call431, i32 0, i32 0) #7
  %tobool434 = icmp eq %struct.he* %call433, null
  br i1 %tobool434, label %if.else439, label %if.then435

if.then435:                                       ; preds = %for.body426
  %hent_val = getelementptr inbounds %struct.he* %call433, i64 0, i32 2
  %84 = load %struct.sv** %hent_val, align 8, !tbaa !0
  %tobool436 = icmp eq %struct.sv* %84, null
  br i1 %tobool436, label %return, label %if.end444

if.else439:                                       ; preds = %for.body426
  %conv429 = fptosi double %83 to i32
  %cmp440 = icmp slt i32 %conv429, 0
  br i1 %cmp440, label %return, label %if.end444

if.end444:                                        ; preds = %if.else439, %if.then435
  %val.0 = phi %struct.sv* [ %84, %if.then435 ], [ @PL_sv_undef, %if.else439 ]
  %flags.0 = phi i8 [ 0, %if.then435 ], [ 16, %if.else439 ]
  %call445 = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %val.0) #6
  %tobool446 = icmp eq i32 %call445, 0
  br i1 %tobool446, label %if.end448, label %out

if.end448:                                        ; preds = %if.end444
  br i1 %tobool451, label %if.end459, label %land.lhs.true452

land.lhs.true452:                                 ; preds = %if.end448
  %sv_flags453 = getelementptr inbounds %struct.sv* %val.0, i64 0, i32 2
  %85 = load i32* %sv_flags453, align 4, !tbaa !3
  %and454 = lshr i32 %85, 21
  %and454.tr = trunc i32 %and454 to i8
  %86 = and i8 %and454.tr, 4
  %87 = or i8 %86, %flags.0
  br label %if.end459

if.end459:                                        ; preds = %land.lhs.true452, %if.end448
  %flags.1 = phi i8 [ %flags.0, %if.end448 ], [ %87, %land.lhs.true452 ]
  %sv_flags460 = getelementptr inbounds %struct.sv* %call431, i64 0, i32 2
  %88 = load i32* %sv_flags460, align 4, !tbaa !3
  %and461 = and i32 %88, 262144
  %cmp462 = icmp eq i32 %and461, 0
  br i1 %cmp462, label %cond.false469, label %cond.true464

cond.true464:                                     ; preds = %if.end459
  %sv_any465 = getelementptr inbounds %struct.sv* %call431, i64 0, i32 0
  %89 = load i8** %sv_any465, align 8, !tbaa !0
  %xpv_cur466 = getelementptr inbounds i8* %89, i64 8
  %90 = bitcast i8* %xpv_cur466 to i64*
  %91 = load i64* %90, align 8, !tbaa !4
  store i64 %91, i64* %keylen_tmp, align 8, !tbaa !4
  %xpv_pv468 = bitcast i8* %89 to i8**
  %92 = load i8** %xpv_pv468, align 8, !tbaa !0
  br label %cond.end471

cond.false469:                                    ; preds = %if.end459
  %call470 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call431, i64* %keylen_tmp, i32 2) #7
  %.pre1547 = load i64* %keylen_tmp, align 8, !tbaa !4
  br label %cond.end471

cond.end471:                                      ; preds = %cond.false469, %cond.true464
  %93 = phi i64 [ %91, %cond.true464 ], [ %.pre1547, %cond.false469 ]
  %cond472 = phi i8* [ %92, %cond.true464 ], [ %call470, %cond.false469 ]
  %conv473 = trunc i64 %93 to i32
  store i32 %conv473, i32* %keylen, align 4, !tbaa !3
  %94 = load i32* %sv_flags460, align 4, !tbaa !3
  %and475 = and i32 %94, 536870912
  %tobool476 = icmp eq i32 %and475, 0
  br i1 %tobool476, label %if.end491, label %if.then477

if.then477:                                       ; preds = %cond.end471
  store i8 1, i8* %is_utf8, align 1, !tbaa !1
  %call478 = call i8* @Perl_bytes_from_utf8(i8* %cond472, i64* %keylen_tmp, i8* %is_utf8) #7
  %cmp479 = icmp eq i8* %call478, %cond472
  br i1 %cmp479, label %if.else486, label %if.then481

if.then481:                                       ; preds = %if.then477
  %95 = load i64* %keylen_tmp, align 8, !tbaa !4
  %conv482 = trunc i64 %95 to i32
  store i32 %conv482, i32* %keylen, align 4, !tbaa !3
  %or484 = or i8 %flags.1, 2
  br label %if.end491

if.else486:                                       ; preds = %if.then477
  %or488 = or i8 %flags.1, 1
  br label %if.end491

if.end491:                                        ; preds = %cond.end471, %if.then481, %if.else486
  %keyval.0 = phi i8* [ %call478, %if.then481 ], [ %cond472, %if.else486 ], [ %cond472, %cond.end471 ]
  %flags.2 = phi i8 [ %or484, %if.then481 ], [ %or488, %if.else486 ], [ %flags.1, %cond.end471 ]
  br i1 %4, label %if.then493, label %if.end560

if.then493:                                       ; preds = %if.end491
  %96 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool495 = icmp eq %struct._PerlIO** %96, null
  br i1 %tobool495, label %if.then496, label %if.else550

if.then496:                                       ; preds = %if.then493
  %97 = load i8** %aptr498, align 8, !tbaa !0
  %98 = load i8** %aend500, align 8, !tbaa !0
  %cmp501 = icmp ult i8* %97, %98
  br i1 %cmp501, label %if.then503, label %if.else507

if.then503:                                       ; preds = %if.then496
  %incdec.ptr506 = getelementptr inbounds i8* %97, i64 1
  store i8* %incdec.ptr506, i8** %aptr498, align 8, !tbaa !0
  store i8 %flags.2, i8* %97, align 1, !tbaa !1
  br label %if.end560

if.else507:                                       ; preds = %if.then496
  %99 = load i64* %asiz510, align 8, !tbaa !4
  %100 = load i8** %arena519, align 8, !tbaa !0
  %sub.ptr.lhs.cast520 = ptrtoint i8* %97 to i64
  %sub.ptr.rhs.cast521 = ptrtoint i8* %100 to i64
  %sub.ptr.sub522 = sub i64 %sub.ptr.lhs.cast520, %sub.ptr.rhs.cast521
  %add512 = shl i64 %99, 32
  %conv514 = add i64 %add512, 35184372088832
  %sext1517 = ashr exact i64 %conv514, 32
  %conv526 = and i64 %sext1517, -8192
  %call528 = call i8* @Perl_safesysrealloc(i8* %100, i64 %conv526) #7
  store i8* %call528, i8** %arena519, align 8, !tbaa !0
  store i64 %conv526, i64* %asiz510, align 8, !tbaa !4
  %sext1518 = shl i64 %sub.ptr.sub522, 32
  %idx.ext536 = ashr exact i64 %sext1518, 32
  %add.ptr537 = getelementptr inbounds i8* %call528, i64 %idx.ext536
  %add.ptr543 = getelementptr inbounds i8* %call528, i64 %conv526
  store i8* %add.ptr543, i8** %aend500, align 8, !tbaa !0
  %add.ptr537.sum = add i64 %idx.ext536, 1
  %incdec.ptr548 = getelementptr inbounds i8* %call528, i64 %add.ptr537.sum
  store i8* %incdec.ptr548, i8** %aptr498, align 8, !tbaa !0
  store i8 %flags.2, i8* %add.ptr537, align 1, !tbaa !1
  br label %if.end560

if.else550:                                       ; preds = %if.then493
  %conv552 = zext i8 %flags.2 to i32
  %call553 = call i32 @PerlIO_putc(%struct._PerlIO** %96, i32 %conv552) #7
  %cmp554 = icmp eq i32 %call553, -1
  br i1 %cmp554, label %return, label %if.end560

if.end560:                                        ; preds = %if.end491, %if.else507, %if.then503, %if.else550
  %101 = load i32* %netorder, align 4, !tbaa !3
  %tobool562 = icmp eq i32 %101, 0
  br i1 %tobool562, label %if.else642, label %if.then563

if.then563:                                       ; preds = %if.end560
  %102 = load i32* %keylen, align 4, !tbaa !3
  %103 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %102) #3, !srcloc !39
  store i32 %103, i32* %y564, align 4, !tbaa !3
  %104 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool568 = icmp eq %struct._PerlIO** %104, null
  br i1 %tobool568, label %if.then569, label %if.else634

if.then569:                                       ; preds = %if.then563
  %105 = load i8** %aptr498, align 8, !tbaa !0
  %add.ptr572 = getelementptr inbounds i8* %105, i64 4
  %106 = load i8** %aend500, align 8, !tbaa !0
  %cmp575 = icmp ugt i8* %add.ptr572, %106
  br i1 %cmp575, label %if.then577, label %if.end616

if.then577:                                       ; preds = %if.then569
  %107 = load i64* %asiz510, align 8, !tbaa !4
  %108 = load i8** %arena519, align 8, !tbaa !0
  %sub.ptr.lhs.cast590 = ptrtoint i8* %105 to i64
  %sub.ptr.rhs.cast591 = ptrtoint i8* %108 to i64
  %sub.ptr.sub592 = sub i64 %sub.ptr.lhs.cast590, %sub.ptr.rhs.cast591
  %add582 = shl i64 %107, 32
  %conv584 = add i64 %add582, 35197256990720
  %sext1515 = ashr exact i64 %conv584, 32
  %conv596 = and i64 %sext1515, -8192
  %call598 = call i8* @Perl_safesysrealloc(i8* %108, i64 %conv596) #7
  store i8* %call598, i8** %arena519, align 8, !tbaa !0
  store i64 %conv596, i64* %asiz510, align 8, !tbaa !4
  %sext1516 = shl i64 %sub.ptr.sub592, 32
  %idx.ext606 = ashr exact i64 %sext1516, 32
  %add.ptr607 = getelementptr inbounds i8* %call598, i64 %idx.ext606
  store i8* %add.ptr607, i8** %aptr498, align 8, !tbaa !0
  %add.ptr613 = getelementptr inbounds i8* %call598, i64 %conv596
  store i8* %add.ptr613, i8** %aend500, align 8, !tbaa !0
  br label %if.end616

if.end616:                                        ; preds = %if.then577, %if.then569
  %109 = phi i8* [ %add.ptr607, %if.then577 ], [ %105, %if.then569 ]
  %110 = ptrtoint i8* %109 to i64
  %and621 = and i64 %110, -4
  %cmp622 = icmp eq i64 %110, %and621
  br i1 %cmp622, label %if.then624, label %if.else627

if.then624:                                       ; preds = %if.end616
  %111 = load i32* %y564, align 4, !tbaa !3
  %112 = bitcast i8* %109 to i32*
  store i32 %111, i32* %112, align 4, !tbaa !3
  br label %if.end630

if.else627:                                       ; preds = %if.end616
  %113 = bitcast i8* %109 to i32*
  %114 = load i32* %y564, align 4
  store i32 %114, i32* %113, align 1
  %.pre1550 = load i8** %aptr498, align 8, !tbaa !0
  br label %if.end630

if.end630:                                        ; preds = %if.else627, %if.then624
  %115 = phi i8* [ %.pre1550, %if.else627 ], [ %109, %if.then624 ]
  %add.ptr633 = getelementptr inbounds i8* %115, i64 4
  store i8* %add.ptr633, i8** %aptr498, align 8, !tbaa !0
  br label %if.end718

if.else634:                                       ; preds = %if.then563
  %call636 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %104, i8* %81, i64 4) #7
  %cmp637 = icmp eq i64 %call636, 4
  br i1 %cmp637, label %if.end718, label %return

if.else642:                                       ; preds = %if.end560
  %116 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool644 = icmp eq %struct._PerlIO** %116, null
  br i1 %tobool644, label %if.then645, label %if.else710

if.then645:                                       ; preds = %if.else642
  %117 = load i8** %aptr498, align 8, !tbaa !0
  %add.ptr648 = getelementptr inbounds i8* %117, i64 4
  %118 = load i8** %aend500, align 8, !tbaa !0
  %cmp651 = icmp ugt i8* %add.ptr648, %118
  br i1 %cmp651, label %if.then653, label %if.end692

if.then653:                                       ; preds = %if.then645
  %119 = load i64* %asiz510, align 8, !tbaa !4
  %120 = load i8** %arena519, align 8, !tbaa !0
  %sub.ptr.lhs.cast666 = ptrtoint i8* %117 to i64
  %sub.ptr.rhs.cast667 = ptrtoint i8* %120 to i64
  %sub.ptr.sub668 = sub i64 %sub.ptr.lhs.cast666, %sub.ptr.rhs.cast667
  %add658 = shl i64 %119, 32
  %conv660 = add i64 %add658, 35197256990720
  %sext1513 = ashr exact i64 %conv660, 32
  %conv672 = and i64 %sext1513, -8192
  %call674 = call i8* @Perl_safesysrealloc(i8* %120, i64 %conv672) #7
  store i8* %call674, i8** %arena519, align 8, !tbaa !0
  store i64 %conv672, i64* %asiz510, align 8, !tbaa !4
  %sext1514 = shl i64 %sub.ptr.sub668, 32
  %idx.ext682 = ashr exact i64 %sext1514, 32
  %add.ptr683 = getelementptr inbounds i8* %call674, i64 %idx.ext682
  store i8* %add.ptr683, i8** %aptr498, align 8, !tbaa !0
  %add.ptr689 = getelementptr inbounds i8* %call674, i64 %conv672
  store i8* %add.ptr689, i8** %aend500, align 8, !tbaa !0
  br label %if.end692

if.end692:                                        ; preds = %if.then653, %if.then645
  %121 = phi i8* [ %add.ptr683, %if.then653 ], [ %117, %if.then645 ]
  %122 = ptrtoint i8* %121 to i64
  %and697 = and i64 %122, -4
  %cmp698 = icmp eq i64 %122, %and697
  br i1 %cmp698, label %if.then700, label %if.else703

if.then700:                                       ; preds = %if.end692
  %123 = load i32* %keylen, align 4, !tbaa !3
  %124 = bitcast i8* %121 to i32*
  store i32 %123, i32* %124, align 4, !tbaa !3
  br label %if.end706

if.else703:                                       ; preds = %if.end692
  %125 = bitcast i8* %121 to i32*
  %126 = load i32* %keylen, align 4
  store i32 %126, i32* %125, align 1
  %.pre1548 = load i8** %aptr498, align 8, !tbaa !0
  br label %if.end706

if.end706:                                        ; preds = %if.else703, %if.then700
  %127 = phi i8* [ %.pre1548, %if.else703 ], [ %121, %if.then700 ]
  %add.ptr709 = getelementptr inbounds i8* %127, i64 4
  store i8* %add.ptr709, i8** %aptr498, align 8, !tbaa !0
  br label %if.end718

if.else710:                                       ; preds = %if.else642
  %call712 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %116, i8* %80, i64 4) #7
  %cmp713 = icmp eq i64 %call712, 4
  br i1 %cmp713, label %if.end718, label %return

if.end718:                                        ; preds = %if.else634, %if.else710, %if.end706, %if.end630
  %128 = load i32* %keylen, align 4, !tbaa !3
  %tobool719 = icmp eq i32 %128, 0
  br i1 %tobool719, label %if.end790, label %if.then720

if.then720:                                       ; preds = %if.end718
  %129 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool722 = icmp eq %struct._PerlIO** %129, null
  br i1 %tobool722, label %if.then723, label %if.else780

if.then723:                                       ; preds = %if.then720
  %130 = load i8** %aptr498, align 8, !tbaa !0
  %idx.ext726 = sext i32 %128 to i64
  %add.ptr727 = getelementptr inbounds i8* %130, i64 %idx.ext726
  %131 = load i8** %aend500, align 8, !tbaa !0
  %cmp730 = icmp ugt i8* %add.ptr727, %131
  br i1 %cmp730, label %if.then732, label %if.end772

if.then732:                                       ; preds = %if.then723
  %132 = load i64* %asiz510, align 8, !tbaa !4
  %add737 = add i64 %132, %idx.ext726
  %133 = load i8** %arena519, align 8, !tbaa !0
  %sub.ptr.lhs.cast746 = ptrtoint i8* %130 to i64
  %sub.ptr.rhs.cast747 = ptrtoint i8* %133 to i64
  %sub.ptr.sub748 = sub i64 %sub.ptr.lhs.cast746, %sub.ptr.rhs.cast747
  %add738 = shl i64 %add737, 32
  %conv740 = add i64 %add738, 35180077121536
  %sext1511 = ashr exact i64 %conv740, 32
  %conv752 = and i64 %sext1511, -8192
  %call754 = call i8* @Perl_safesysrealloc(i8* %133, i64 %conv752) #7
  store i8* %call754, i8** %arena519, align 8, !tbaa !0
  store i64 %conv752, i64* %asiz510, align 8, !tbaa !4
  %sext1512 = shl i64 %sub.ptr.sub748, 32
  %idx.ext762 = ashr exact i64 %sext1512, 32
  %add.ptr763 = getelementptr inbounds i8* %call754, i64 %idx.ext762
  store i8* %add.ptr763, i8** %aptr498, align 8, !tbaa !0
  %add.ptr769 = getelementptr inbounds i8* %call754, i64 %conv752
  store i8* %add.ptr769, i8** %aend500, align 8, !tbaa !0
  %.pre1549 = load i32* %keylen, align 4, !tbaa !3
  br label %if.end772

if.end772:                                        ; preds = %if.then732, %if.then723
  %134 = phi i32 [ %.pre1549, %if.then732 ], [ %128, %if.then723 ]
  %135 = phi i8* [ %add.ptr763, %if.then732 ], [ %130, %if.then723 ]
  %conv775 = sext i32 %134 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %keyval.0, i64 %conv775, i32 1, i1 false)
  %136 = load i32* %keylen, align 4, !tbaa !3
  %137 = load i8** %aptr498, align 8, !tbaa !0
  %idx.ext778 = sext i32 %136 to i64
  %add.ptr779 = getelementptr inbounds i8* %137, i64 %idx.ext778
  store i8* %add.ptr779, i8** %aptr498, align 8, !tbaa !0
  br label %if.end790

if.else780:                                       ; preds = %if.then720
  %conv782 = sext i32 %128 to i64
  %call783 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %129, i8* %keyval.0, i64 %conv782) #7
  %138 = load i32* %keylen, align 4, !tbaa !3
  %conv784 = sext i32 %138 to i64
  %cmp785 = icmp eq i64 %call783, %conv784
  br i1 %cmp785, label %if.end790, label %return

if.end790:                                        ; preds = %if.else780, %if.end718, %if.end772
  %and792 = and i8 %flags.2, 2
  %tobool793 = icmp eq i8 %and792, 0
  br i1 %tobool793, label %for.inc796, label %if.then794

if.then794:                                       ; preds = %if.end790
  call void @Perl_safesysfree(i8* %keyval.0) #7
  br label %for.inc796

for.inc796:                                       ; preds = %if.end790, %if.then794
  %inc797 = add nsw i32 %i.11533, 1
  %139 = load i32* %len, align 4, !tbaa !3
  %cmp424 = icmp slt i32 %inc797, %139
  br i1 %cmp424, label %for.body426, label %for.end798

for.end798:                                       ; preds = %for.inc796, %for.end
  call void @Perl_av_undef(%struct.av* %call412) #7
  %140 = bitcast %struct.av* %call412 to %struct.sv*
  call void @Perl_sv_free(%struct.sv* %140) #7
  br label %out

for.body803:                                      ; preds = %for.body803.lr.ph, %for.inc1186
  %i.21542 = phi i32 [ 0, %for.body803.lr.ph ], [ %inc1187, %for.inc1186 ]
  %key804.01541 = phi i8* [ undef, %for.body803.lr.ph ], [ %key804.1, %for.inc1186 ]
  %call808 = call %struct.he* @Perl_hv_iternext_flags(%struct.hv* %hv, i32 1) #7
  %tobool810 = icmp eq %struct.he* %call808, null
  br i1 %tobool810, label %return, label %cond.end814

cond.end814:                                      ; preds = %for.body803
  %call812 = call %struct.sv* @Perl_hv_iterval(%struct.hv* %hv, %struct.he* %call808) #7
  %cmp816 = icmp eq %struct.sv* %call812, null
  br i1 %cmp816, label %return, label %if.end819

if.end819:                                        ; preds = %cond.end814
  br i1 %tobool822, label %land.end827, label %land.rhs823

land.rhs823:                                      ; preds = %if.end819
  %sv_flags824 = getelementptr inbounds %struct.sv* %call812, i64 0, i32 2
  %141 = load i32* %sv_flags824, align 4, !tbaa !3
  %and825 = lshr i32 %141, 21
  %and825.tr = trunc i32 %and825 to i8
  %phitmp = and i8 %and825.tr, 4
  br label %land.end827

land.end827:                                      ; preds = %if.end819, %land.rhs823
  %142 = phi i8 [ 0, %if.end819 ], [ %phitmp, %land.rhs823 ]
  %cmp830 = icmp eq %struct.sv* %call812, @PL_sv_placeholder
  %or834 = or i8 %142, 16
  %PL_sv_undef.cond815 = select i1 %cmp830, %struct.sv* @PL_sv_undef, %struct.sv* %call812
  %or834. = select i1 %cmp830, i8 %or834, i8 %142
  %call837 = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %PL_sv_undef.cond815) #6
  %tobool838 = icmp eq i32 %call837, 0
  br i1 %tobool838, label %if.end840, label %out

if.end840:                                        ; preds = %land.end827
  %hent_hek = getelementptr inbounds %struct.he* %call808, i64 0, i32 1
  %143 = load %struct.hek** %hent_hek, align 8, !tbaa !0
  %hek_len = getelementptr inbounds %struct.hek* %143, i64 0, i32 1
  %144 = load i32* %hek_len, align 4, !tbaa !3
  store i32 %144, i32* %len805, align 4, !tbaa !3
  %cmp841 = icmp eq i32 %144, -2
  %arraydecay = getelementptr inbounds %struct.hek* %143, i64 0, i32 2, i64 0
  br i1 %cmp841, label %if.then843, label %if.else848

if.then843:                                       ; preds = %if.end840
  %145 = bitcast i8* %arraydecay to %struct.sv**
  %146 = load %struct.sv** %145, align 8, !tbaa !0
  %or846 = or i8 %or834., 8
  br label %if.end879

if.else848:                                       ; preds = %if.end840
  %147 = load i32* %hek_len, align 4, !tbaa !3
  %idx.ext852 = sext i32 %147 to i64
  %add.ptr853.sum = add i64 %idx.ext852, 1
  %add.ptr854 = getelementptr inbounds %struct.hek* %143, i64 0, i32 2, i64 %add.ptr853.sum
  %148 = load i8* %add.ptr854, align 1, !tbaa !1
  %and856 = and i8 %148, 1
  %149 = or i8 %and856, %or834.
  %and870 = and i8 %148, 2
  %150 = or i8 %149, %and870
  br label %if.end879

if.end879:                                        ; preds = %if.else848, %if.then843
  %key_sv.0 = phi %struct.sv* [ %146, %if.then843 ], [ null, %if.else848 ]
  %flags806.3 = phi i8 [ %or846, %if.then843 ], [ %150, %if.else848 ]
  %key804.1 = phi i8* [ %key804.01541, %if.then843 ], [ %arraydecay, %if.else848 ]
  br i1 %4, label %if.then881, label %if.end948

if.then881:                                       ; preds = %if.end879
  %151 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool883 = icmp eq %struct._PerlIO** %151, null
  br i1 %tobool883, label %if.then884, label %if.else938

if.then884:                                       ; preds = %if.then881
  %152 = load i8** %aptr886, align 8, !tbaa !0
  %153 = load i8** %aend888, align 8, !tbaa !0
  %cmp889 = icmp ult i8* %152, %153
  br i1 %cmp889, label %if.then891, label %if.else895

if.then891:                                       ; preds = %if.then884
  %incdec.ptr894 = getelementptr inbounds i8* %152, i64 1
  store i8* %incdec.ptr894, i8** %aptr886, align 8, !tbaa !0
  store i8 %flags806.3, i8* %152, align 1, !tbaa !1
  br label %if.end948

if.else895:                                       ; preds = %if.then884
  %154 = load i64* %asiz898, align 8, !tbaa !4
  %155 = load i8** %arena907, align 8, !tbaa !0
  %sub.ptr.lhs.cast908 = ptrtoint i8* %152 to i64
  %sub.ptr.rhs.cast909 = ptrtoint i8* %155 to i64
  %sub.ptr.sub910 = sub i64 %sub.ptr.lhs.cast908, %sub.ptr.rhs.cast909
  %add900 = shl i64 %154, 32
  %conv902 = add i64 %add900, 35184372088832
  %sext1509 = ashr exact i64 %conv902, 32
  %conv914 = and i64 %sext1509, -8192
  %call916 = call i8* @Perl_safesysrealloc(i8* %155, i64 %conv914) #7
  store i8* %call916, i8** %arena907, align 8, !tbaa !0
  store i64 %conv914, i64* %asiz898, align 8, !tbaa !4
  %sext1510 = shl i64 %sub.ptr.sub910, 32
  %idx.ext924 = ashr exact i64 %sext1510, 32
  %add.ptr925 = getelementptr inbounds i8* %call916, i64 %idx.ext924
  %add.ptr931 = getelementptr inbounds i8* %call916, i64 %conv914
  store i8* %add.ptr931, i8** %aend888, align 8, !tbaa !0
  %add.ptr925.sum = add i64 %idx.ext924, 1
  %incdec.ptr936 = getelementptr inbounds i8* %call916, i64 %add.ptr925.sum
  store i8* %incdec.ptr936, i8** %aptr886, align 8, !tbaa !0
  store i8 %flags806.3, i8* %add.ptr925, align 1, !tbaa !1
  br label %if.end948

if.else938:                                       ; preds = %if.then881
  %conv940 = zext i8 %flags806.3 to i32
  %call941 = call i32 @PerlIO_putc(%struct._PerlIO** %151, i32 %conv940) #7
  %cmp942 = icmp eq i32 %call941, -1
  br i1 %cmp942, label %return, label %if.end948

if.end948:                                        ; preds = %if.end879, %if.else895, %if.then891, %if.else938
  %and950 = and i8 %flags806.3, 8
  %tobool951 = icmp eq i8 %and950, 0
  br i1 %tobool951, label %if.else954, label %if.then952

if.then952:                                       ; preds = %if.end948
  %call953 = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %key_sv.0) #6
  br label %for.inc1186

if.else954:                                       ; preds = %if.end948
  %156 = load i32* %netorder, align 4, !tbaa !3
  %tobool956 = icmp eq i32 %156, 0
  br i1 %tobool956, label %if.else1036, label %if.then957

if.then957:                                       ; preds = %if.else954
  %157 = load i32* %len805, align 4, !tbaa !3
  %158 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %157) #3, !srcloc !40
  store i32 %158, i32* %y958, align 4, !tbaa !3
  %159 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool962 = icmp eq %struct._PerlIO** %159, null
  br i1 %tobool962, label %if.then963, label %if.else1028

if.then963:                                       ; preds = %if.then957
  %160 = load i8** %aptr886, align 8, !tbaa !0
  %add.ptr966 = getelementptr inbounds i8* %160, i64 4
  %161 = load i8** %aend888, align 8, !tbaa !0
  %cmp969 = icmp ugt i8* %add.ptr966, %161
  br i1 %cmp969, label %if.then971, label %if.end1010

if.then971:                                       ; preds = %if.then963
  %162 = load i64* %asiz898, align 8, !tbaa !4
  %163 = load i8** %arena907, align 8, !tbaa !0
  %sub.ptr.lhs.cast984 = ptrtoint i8* %160 to i64
  %sub.ptr.rhs.cast985 = ptrtoint i8* %163 to i64
  %sub.ptr.sub986 = sub i64 %sub.ptr.lhs.cast984, %sub.ptr.rhs.cast985
  %add976 = shl i64 %162, 32
  %conv978 = add i64 %add976, 35197256990720
  %sext1507 = ashr exact i64 %conv978, 32
  %conv990 = and i64 %sext1507, -8192
  %call992 = call i8* @Perl_safesysrealloc(i8* %163, i64 %conv990) #7
  store i8* %call992, i8** %arena907, align 8, !tbaa !0
  store i64 %conv990, i64* %asiz898, align 8, !tbaa !4
  %sext1508 = shl i64 %sub.ptr.sub986, 32
  %idx.ext1000 = ashr exact i64 %sext1508, 32
  %add.ptr1001 = getelementptr inbounds i8* %call992, i64 %idx.ext1000
  store i8* %add.ptr1001, i8** %aptr886, align 8, !tbaa !0
  %add.ptr1007 = getelementptr inbounds i8* %call992, i64 %conv990
  store i8* %add.ptr1007, i8** %aend888, align 8, !tbaa !0
  br label %if.end1010

if.end1010:                                       ; preds = %if.then971, %if.then963
  %164 = phi i8* [ %add.ptr1001, %if.then971 ], [ %160, %if.then963 ]
  %165 = ptrtoint i8* %164 to i64
  %and1015 = and i64 %165, -4
  %cmp1016 = icmp eq i64 %165, %and1015
  br i1 %cmp1016, label %if.then1018, label %if.else1021

if.then1018:                                      ; preds = %if.end1010
  %166 = load i32* %y958, align 4, !tbaa !3
  %167 = bitcast i8* %164 to i32*
  store i32 %166, i32* %167, align 4, !tbaa !3
  br label %if.end1024

if.else1021:                                      ; preds = %if.end1010
  %168 = bitcast i8* %164 to i32*
  %169 = load i32* %y958, align 4
  store i32 %169, i32* %168, align 1
  %.pre1553 = load i8** %aptr886, align 8, !tbaa !0
  br label %if.end1024

if.end1024:                                       ; preds = %if.else1021, %if.then1018
  %170 = phi i8* [ %.pre1553, %if.else1021 ], [ %164, %if.then1018 ]
  %add.ptr1027 = getelementptr inbounds i8* %170, i64 4
  store i8* %add.ptr1027, i8** %aptr886, align 8, !tbaa !0
  br label %if.end1112

if.else1028:                                      ; preds = %if.then957
  %call1030 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %159, i8* %55, i64 4) #7
  %cmp1031 = icmp eq i64 %call1030, 4
  br i1 %cmp1031, label %if.end1112, label %return

if.else1036:                                      ; preds = %if.else954
  %171 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool1038 = icmp eq %struct._PerlIO** %171, null
  br i1 %tobool1038, label %if.then1039, label %if.else1104

if.then1039:                                      ; preds = %if.else1036
  %172 = load i8** %aptr886, align 8, !tbaa !0
  %add.ptr1042 = getelementptr inbounds i8* %172, i64 4
  %173 = load i8** %aend888, align 8, !tbaa !0
  %cmp1045 = icmp ugt i8* %add.ptr1042, %173
  br i1 %cmp1045, label %if.then1047, label %if.end1086

if.then1047:                                      ; preds = %if.then1039
  %174 = load i64* %asiz898, align 8, !tbaa !4
  %175 = load i8** %arena907, align 8, !tbaa !0
  %sub.ptr.lhs.cast1060 = ptrtoint i8* %172 to i64
  %sub.ptr.rhs.cast1061 = ptrtoint i8* %175 to i64
  %sub.ptr.sub1062 = sub i64 %sub.ptr.lhs.cast1060, %sub.ptr.rhs.cast1061
  %add1052 = shl i64 %174, 32
  %conv1054 = add i64 %add1052, 35197256990720
  %sext1505 = ashr exact i64 %conv1054, 32
  %conv1066 = and i64 %sext1505, -8192
  %call1068 = call i8* @Perl_safesysrealloc(i8* %175, i64 %conv1066) #7
  store i8* %call1068, i8** %arena907, align 8, !tbaa !0
  store i64 %conv1066, i64* %asiz898, align 8, !tbaa !4
  %sext1506 = shl i64 %sub.ptr.sub1062, 32
  %idx.ext1076 = ashr exact i64 %sext1506, 32
  %add.ptr1077 = getelementptr inbounds i8* %call1068, i64 %idx.ext1076
  store i8* %add.ptr1077, i8** %aptr886, align 8, !tbaa !0
  %add.ptr1083 = getelementptr inbounds i8* %call1068, i64 %conv1066
  store i8* %add.ptr1083, i8** %aend888, align 8, !tbaa !0
  br label %if.end1086

if.end1086:                                       ; preds = %if.then1047, %if.then1039
  %176 = phi i8* [ %add.ptr1077, %if.then1047 ], [ %172, %if.then1039 ]
  %177 = ptrtoint i8* %176 to i64
  %and1091 = and i64 %177, -4
  %cmp1092 = icmp eq i64 %177, %and1091
  br i1 %cmp1092, label %if.then1094, label %if.else1097

if.then1094:                                      ; preds = %if.end1086
  %178 = load i32* %len805, align 4, !tbaa !3
  %179 = bitcast i8* %176 to i32*
  store i32 %178, i32* %179, align 4, !tbaa !3
  br label %if.end1100

if.else1097:                                      ; preds = %if.end1086
  %180 = bitcast i8* %176 to i32*
  %181 = load i32* %len805, align 4
  store i32 %181, i32* %180, align 1
  %.pre1551 = load i8** %aptr886, align 8, !tbaa !0
  br label %if.end1100

if.end1100:                                       ; preds = %if.else1097, %if.then1094
  %182 = phi i8* [ %.pre1551, %if.else1097 ], [ %176, %if.then1094 ]
  %add.ptr1103 = getelementptr inbounds i8* %182, i64 4
  store i8* %add.ptr1103, i8** %aptr886, align 8, !tbaa !0
  br label %if.end1112

if.else1104:                                      ; preds = %if.else1036
  %call1106 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %171, i8* %54, i64 4) #7
  %cmp1107 = icmp eq i64 %call1106, 4
  br i1 %cmp1107, label %if.end1112, label %return

if.end1112:                                       ; preds = %if.else1028, %if.else1104, %if.end1100, %if.end1024
  %183 = load i32* %len805, align 4, !tbaa !3
  %tobool1113 = icmp eq i32 %183, 0
  br i1 %tobool1113, label %for.inc1186, label %if.then1114

if.then1114:                                      ; preds = %if.end1112
  %184 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool1116 = icmp eq %struct._PerlIO** %184, null
  br i1 %tobool1116, label %if.then1117, label %if.else1174

if.then1117:                                      ; preds = %if.then1114
  %185 = load i8** %aptr886, align 8, !tbaa !0
  %idx.ext1120 = sext i32 %183 to i64
  %add.ptr1121 = getelementptr inbounds i8* %185, i64 %idx.ext1120
  %186 = load i8** %aend888, align 8, !tbaa !0
  %cmp1124 = icmp ugt i8* %add.ptr1121, %186
  br i1 %cmp1124, label %if.then1126, label %if.end1166

if.then1126:                                      ; preds = %if.then1117
  %187 = load i64* %asiz898, align 8, !tbaa !4
  %add1131 = add i64 %187, %idx.ext1120
  %188 = load i8** %arena907, align 8, !tbaa !0
  %sub.ptr.lhs.cast1140 = ptrtoint i8* %185 to i64
  %sub.ptr.rhs.cast1141 = ptrtoint i8* %188 to i64
  %sub.ptr.sub1142 = sub i64 %sub.ptr.lhs.cast1140, %sub.ptr.rhs.cast1141
  %add1132 = shl i64 %add1131, 32
  %conv1134 = add i64 %add1132, 35180077121536
  %sext1503 = ashr exact i64 %conv1134, 32
  %conv1146 = and i64 %sext1503, -8192
  %call1148 = call i8* @Perl_safesysrealloc(i8* %188, i64 %conv1146) #7
  store i8* %call1148, i8** %arena907, align 8, !tbaa !0
  store i64 %conv1146, i64* %asiz898, align 8, !tbaa !4
  %sext1504 = shl i64 %sub.ptr.sub1142, 32
  %idx.ext1156 = ashr exact i64 %sext1504, 32
  %add.ptr1157 = getelementptr inbounds i8* %call1148, i64 %idx.ext1156
  store i8* %add.ptr1157, i8** %aptr886, align 8, !tbaa !0
  %add.ptr1163 = getelementptr inbounds i8* %call1148, i64 %conv1146
  store i8* %add.ptr1163, i8** %aend888, align 8, !tbaa !0
  %.pre1552 = load i32* %len805, align 4, !tbaa !3
  br label %if.end1166

if.end1166:                                       ; preds = %if.then1126, %if.then1117
  %189 = phi i32 [ %.pre1552, %if.then1126 ], [ %183, %if.then1117 ]
  %190 = phi i8* [ %add.ptr1157, %if.then1126 ], [ %185, %if.then1117 ]
  %conv1169 = sext i32 %189 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %key804.1, i64 %conv1169, i32 1, i1 false)
  %191 = load i32* %len805, align 4, !tbaa !3
  %192 = load i8** %aptr886, align 8, !tbaa !0
  %idx.ext1172 = sext i32 %191 to i64
  %add.ptr1173 = getelementptr inbounds i8* %192, i64 %idx.ext1172
  store i8* %add.ptr1173, i8** %aptr886, align 8, !tbaa !0
  br label %for.inc1186

if.else1174:                                      ; preds = %if.then1114
  %conv1176 = sext i32 %183 to i64
  %call1177 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %184, i8* %key804.1, i64 %conv1176) #7
  %193 = load i32* %len805, align 4, !tbaa !3
  %conv1178 = sext i32 %193 to i64
  %cmp1179 = icmp eq i64 %call1177, %conv1178
  br i1 %cmp1179, label %for.inc1186, label %return

for.inc1186:                                      ; preds = %if.else1174, %if.end1112, %if.then952, %if.end1166
  %inc1187 = add nsw i32 %i.21542, 1
  %194 = load i32* %len, align 4, !tbaa !3
  %cmp801 = icmp slt i32 %inc1187, %194
  br i1 %cmp801, label %for.body803, label %out

out:                                              ; preds = %for.cond800.preheader, %land.end827, %for.inc1186, %if.end444, %for.end798
  %ret.2 = phi i32 [ 0, %for.end798 ], [ %call445, %if.end444 ], [ 0, %for.cond800.preheader ], [ %call837, %land.end827 ], [ 0, %for.inc1186 ]
  %195 = load %struct.xpvhv** %sv_any, align 8, !tbaa !0
  %xhv_riter1191 = getelementptr inbounds %struct.xpvhv* %195, i64 0, i32 7
  store i32 %49, i32* %xhv_riter1191, align 4, !tbaa !3
  %xhv_eiter1193 = getelementptr inbounds %struct.xpvhv* %195, i64 0, i32 8
  store %struct.he* %50, %struct.he** %xhv_eiter1193, align 8, !tbaa !0
  br label %return

return:                                           ; preds = %for.body803, %if.else1174, %if.else1104, %if.else1028, %if.else938, %cond.end814, %if.else780, %if.else710, %if.else634, %if.else550, %if.else439, %if.then435, %if.else334, %if.else258, %if.else180, %if.else114, %if.else50, %out
  %retval.0 = phi i32 [ %ret.2, %out ], [ -1, %if.else50 ], [ -1, %if.else114 ], [ -1, %if.else180 ], [ -1, %if.else258 ], [ -1, %if.else334 ], [ -1, %if.else780 ], [ -1, %if.else710 ], [ -1, %if.else634 ], [ -1, %if.else550 ], [ 1, %if.else439 ], [ 1, %if.then435 ], [ 1, %for.body803 ], [ -1, %if.else1174 ], [ -1, %if.else1104 ], [ -1, %if.else1028 ], [ -1, %if.else938 ], [ 1, %cond.end814 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @store_tied(%struct.stcxt* %cxt, %struct.sv* %sv) #1 {
entry:
  %sv_flags = getelementptr inbounds %struct.sv* %sv, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %0, 255
  %cmp = icmp eq i32 %and, 11
  br i1 %cmp, label %if.then, label %if.else43

if.then:                                          ; preds = %entry
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %1 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool = icmp eq %struct._PerlIO** %1, null
  br i1 %tobool, label %if.then1, label %if.else35

if.then1:                                         ; preds = %if.then
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %2 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %3 = load i8** %aend, align 8, !tbaa !0
  %cmp3 = icmp ult i8* %2, %3
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then1
  %incdec.ptr = getelementptr inbounds i8* %2, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 12, i8* %2, align 1, !tbaa !1
  br label %if.end177

if.else:                                          ; preds = %if.then1
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %4 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %5 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add8 = shl i64 %4, 32
  %conv = add i64 %add8, 35184372088832
  %sext256 = ashr exact i64 %conv, 32
  %conv16 = and i64 %sext256, -8192
  %call = tail call i8* @Perl_safesysrealloc(i8* %5, i64 %conv16) #7
  store i8* %call, i8** %arena, align 8, !tbaa !0
  store i64 %conv16, i64* %asiz, align 8, !tbaa !4
  %sext257 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext257, 32
  %add.ptr = getelementptr inbounds i8* %call, i64 %idx.ext
  %add.ptr29 = getelementptr inbounds i8* %call, i64 %conv16
  store i8* %add.ptr29, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr34 = getelementptr inbounds i8* %call, i64 %add.ptr.sum
  store i8* %incdec.ptr34, i8** %aptr, align 8, !tbaa !0
  store i8 12, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end177

if.else35:                                        ; preds = %if.then
  %call37 = tail call i32 @PerlIO_putc(%struct._PerlIO** %1, i32 12) #7
  %cmp38 = icmp eq i32 %call37, -1
  br i1 %cmp38, label %return, label %if.end177

if.else43:                                        ; preds = %entry
  %cmp44 = icmp eq i32 %and, 10
  %fio47 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %6 = load %struct._PerlIO*** %fio47, align 8, !tbaa !0
  %tobool48 = icmp ne %struct._PerlIO** %6, null
  br i1 %cmp44, label %if.then46, label %if.else111

if.then46:                                        ; preds = %if.else43
  br i1 %tobool48, label %if.else103, label %if.then49

if.then49:                                        ; preds = %if.then46
  %aptr51 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %7 = load i8** %aptr51, align 8, !tbaa !0
  %aend53 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %8 = load i8** %aend53, align 8, !tbaa !0
  %cmp54 = icmp ult i8* %7, %8
  br i1 %cmp54, label %if.then56, label %if.else60

if.then56:                                        ; preds = %if.then49
  %incdec.ptr59 = getelementptr inbounds i8* %7, i64 1
  store i8* %incdec.ptr59, i8** %aptr51, align 8, !tbaa !0
  store i8 11, i8* %7, align 1, !tbaa !1
  br label %if.end177

if.else60:                                        ; preds = %if.then49
  %asiz63 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %9 = load i64* %asiz63, align 8, !tbaa !4
  %arena72 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %10 = load i8** %arena72, align 8, !tbaa !0
  %sub.ptr.lhs.cast73 = ptrtoint i8* %7 to i64
  %sub.ptr.rhs.cast74 = ptrtoint i8* %10 to i64
  %sub.ptr.sub75 = sub i64 %sub.ptr.lhs.cast73, %sub.ptr.rhs.cast74
  %add65 = shl i64 %9, 32
  %conv67 = add i64 %add65, 35184372088832
  %sext254 = ashr exact i64 %conv67, 32
  %conv79 = and i64 %sext254, -8192
  %call81 = tail call i8* @Perl_safesysrealloc(i8* %10, i64 %conv79) #7
  store i8* %call81, i8** %arena72, align 8, !tbaa !0
  store i64 %conv79, i64* %asiz63, align 8, !tbaa !4
  %sext255 = shl i64 %sub.ptr.sub75, 32
  %idx.ext89 = ashr exact i64 %sext255, 32
  %add.ptr90 = getelementptr inbounds i8* %call81, i64 %idx.ext89
  %add.ptr96 = getelementptr inbounds i8* %call81, i64 %conv79
  store i8* %add.ptr96, i8** %aend53, align 8, !tbaa !0
  %add.ptr90.sum = add i64 %idx.ext89, 1
  %incdec.ptr101 = getelementptr inbounds i8* %call81, i64 %add.ptr90.sum
  store i8* %incdec.ptr101, i8** %aptr51, align 8, !tbaa !0
  store i8 11, i8* %add.ptr90, align 1, !tbaa !1
  br label %if.end177

if.else103:                                       ; preds = %if.then46
  %call105 = tail call i32 @PerlIO_putc(%struct._PerlIO** %6, i32 11) #7
  %cmp106 = icmp eq i32 %call105, -1
  br i1 %cmp106, label %return, label %if.end177

if.else111:                                       ; preds = %if.else43
  br i1 %tobool48, label %if.else168, label %if.then114

if.then114:                                       ; preds = %if.else111
  %aptr116 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %11 = load i8** %aptr116, align 8, !tbaa !0
  %aend118 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %12 = load i8** %aend118, align 8, !tbaa !0
  %cmp119 = icmp ult i8* %11, %12
  br i1 %cmp119, label %if.then121, label %if.else125

if.then121:                                       ; preds = %if.then114
  %incdec.ptr124 = getelementptr inbounds i8* %11, i64 1
  store i8* %incdec.ptr124, i8** %aptr116, align 8, !tbaa !0
  store i8 13, i8* %11, align 1, !tbaa !1
  br label %if.end177

if.else125:                                       ; preds = %if.then114
  %asiz128 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %13 = load i64* %asiz128, align 8, !tbaa !4
  %arena137 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %14 = load i8** %arena137, align 8, !tbaa !0
  %sub.ptr.lhs.cast138 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast139 = ptrtoint i8* %14 to i64
  %sub.ptr.sub140 = sub i64 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %add130 = shl i64 %13, 32
  %conv132 = add i64 %add130, 35184372088832
  %sext = ashr exact i64 %conv132, 32
  %conv144 = and i64 %sext, -8192
  %call146 = tail call i8* @Perl_safesysrealloc(i8* %14, i64 %conv144) #7
  store i8* %call146, i8** %arena137, align 8, !tbaa !0
  store i64 %conv144, i64* %asiz128, align 8, !tbaa !4
  %sext253 = shl i64 %sub.ptr.sub140, 32
  %idx.ext154 = ashr exact i64 %sext253, 32
  %add.ptr155 = getelementptr inbounds i8* %call146, i64 %idx.ext154
  %add.ptr161 = getelementptr inbounds i8* %call146, i64 %conv144
  store i8* %add.ptr161, i8** %aend118, align 8, !tbaa !0
  %add.ptr155.sum = add i64 %idx.ext154, 1
  %incdec.ptr166 = getelementptr inbounds i8* %call146, i64 %add.ptr155.sum
  store i8* %incdec.ptr166, i8** %aptr116, align 8, !tbaa !0
  store i8 13, i8* %add.ptr155, align 1, !tbaa !1
  br label %if.end177

if.else168:                                       ; preds = %if.else111
  %call170 = tail call i32 @PerlIO_putc(%struct._PerlIO** %6, i32 13) #7
  %cmp171 = icmp eq i32 %call170, -1
  br i1 %cmp171, label %return, label %if.end177

if.end177:                                        ; preds = %if.else125, %if.then121, %if.else168, %if.else103, %if.then56, %if.else60, %if.else, %if.then4, %if.else35
  %mtype.0 = phi i32 [ 80, %if.else35 ], [ 80, %if.then4 ], [ 80, %if.else ], [ 80, %if.else103 ], [ 80, %if.then56 ], [ 80, %if.else60 ], [ 113, %if.else168 ], [ 113, %if.then121 ], [ 113, %if.else125 ]
  %call179 = tail call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 %mtype.0) #7
  %tobool180 = icmp eq %struct.magic* %call179, null
  br i1 %tobool180, label %if.then181, label %if.end188

if.then181:                                       ; preds = %if.end177
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then181
  %cmp185 = icmp eq i32 %and, 10
  %cond = select i1 %cmp185, i8* getelementptr inbounds ([6 x i8]* @.str78, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str79, i64 0, i64 0)
  br label %cond.end

cond.end:                                         ; preds = %if.then181, %cond.false
  %cond187 = phi i8* [ %cond, %cond.false ], [ getelementptr inbounds ([5 x i8]* @.str77, i64 0, i64 0), %if.then181 ]
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([42 x i8]* @.str76, i64 0, i64 0), i32 %mtype.0, i8* %cond187) #7
  br label %if.end188

if.end188:                                        ; preds = %if.end177, %cond.end
  %mg_obj = getelementptr inbounds %struct.magic* %call179, i64 0, i32 5
  %15 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %tobool189 = icmp eq %struct.sv* %15, null
  br i1 %tobool189, label %cond.false192, label %cond.end194

cond.false192:                                    ; preds = %if.end188
  %call193 = tail call %struct.sv* @Perl_newSV(i64 0) #7
  br label %cond.end194

cond.end194:                                      ; preds = %if.end188, %cond.false192
  %cond195 = phi %struct.sv* [ %call193, %cond.false192 ], [ %15, %if.end188 ]
  %call196 = tail call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %cond195) #6
  br label %return

return:                                           ; preds = %cond.end194, %if.else168, %if.else103, %if.else35
  %retval.0 = phi i32 [ -1, %if.else35 ], [ -1, %if.else103 ], [ -1, %if.else168 ], [ %call196, %cond.end194 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @store_tied_item(%struct.stcxt* %cxt, %struct.sv* %sv) #1 {
entry:
  %idx = alloca i32, align 4
  %y = alloca i32, align 4
  %call = call %struct.magic* @Perl_mg_find(%struct.sv* %sv, i32 112) #7
  %tobool = icmp eq %struct.magic* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([56 x i8]* @.str75, i64 0, i64 0)) #7
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %mg_ptr = getelementptr inbounds %struct.magic* %call, i64 0, i32 6
  %0 = load i8** %mg_ptr, align 8, !tbaa !0
  %tobool1 = icmp eq i8* %0, null
  br i1 %tobool1, label %if.else55, label %if.then2

if.then2:                                         ; preds = %if.end
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %1 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool3 = icmp eq %struct._PerlIO** %1, null
  br i1 %tobool3, label %if.then4, label %if.else38

if.then4:                                         ; preds = %if.then2
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %2 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %3 = load i8** %aend, align 8, !tbaa !0
  %cmp = icmp ult i8* %2, %3
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then4
  %incdec.ptr = getelementptr inbounds i8* %2, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 21, i8* %2, align 1, !tbaa !1
  br label %if.end45

if.else:                                          ; preds = %if.then4
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %4 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %5 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add10 = shl i64 %4, 32
  %conv = add i64 %add10, 35184372088832
  %sext367 = ashr exact i64 %conv, 32
  %conv17 = and i64 %sext367, -8192
  %call18 = call i8* @Perl_safesysrealloc(i8* %5, i64 %conv17) #7
  store i8* %call18, i8** %arena, align 8, !tbaa !0
  store i64 %conv17, i64* %asiz, align 8, !tbaa !4
  %sext368 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext368, 32
  %add.ptr = getelementptr inbounds i8* %call18, i64 %idx.ext
  %add.ptr31 = getelementptr inbounds i8* %call18, i64 %conv17
  store i8* %add.ptr31, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr36 = getelementptr inbounds i8* %call18, i64 %add.ptr.sum
  store i8* %incdec.ptr36, i8** %aptr, align 8, !tbaa !0
  store i8 21, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end45

if.else38:                                        ; preds = %if.then2
  %call40 = call i32 @PerlIO_putc(%struct._PerlIO** %1, i32 21) #7
  %cmp41 = icmp eq i32 %call40, -1
  br i1 %cmp41, label %return, label %if.end45

if.end45:                                         ; preds = %if.else38, %if.then6, %if.else
  %mg_obj = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %6 = load %struct.sv** %mg_obj, align 8, !tbaa !0
  %call46 = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %6) #6
  %tobool47 = icmp eq i32 %call46, 0
  br i1 %tobool47, label %if.end49, label %return

if.end49:                                         ; preds = %if.end45
  %7 = load i8** %mg_ptr, align 8, !tbaa !0
  %8 = bitcast i8* %7 to %struct.sv*
  %call51 = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %8) #6
  %tobool52 = icmp eq i32 %call51, 0
  br i1 %tobool52, label %if.end279, label %return

if.else55:                                        ; preds = %if.end
  %mg_len = getelementptr inbounds %struct.magic* %call, i64 0, i32 7
  %9 = load i32* %mg_len, align 4, !tbaa !3
  store i32 %9, i32* %idx, align 4, !tbaa !3
  %fio56 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %10 = load %struct._PerlIO*** %fio56, align 8, !tbaa !0
  %tobool57 = icmp eq %struct._PerlIO** %10, null
  br i1 %tobool57, label %if.then58, label %if.else112

if.then58:                                        ; preds = %if.else55
  %aptr60 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %11 = load i8** %aptr60, align 8, !tbaa !0
  %aend62 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %12 = load i8** %aend62, align 8, !tbaa !0
  %cmp63 = icmp ult i8* %11, %12
  br i1 %cmp63, label %if.then65, label %if.else69

if.then65:                                        ; preds = %if.then58
  %incdec.ptr68 = getelementptr inbounds i8* %11, i64 1
  store i8* %incdec.ptr68, i8** %aptr60, align 8, !tbaa !0
  store i8 22, i8* %11, align 1, !tbaa !1
  br label %if.end119

if.else69:                                        ; preds = %if.then58
  %asiz72 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %13 = load i64* %asiz72, align 8, !tbaa !4
  %arena81 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %14 = load i8** %arena81, align 8, !tbaa !0
  %sub.ptr.lhs.cast82 = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast83 = ptrtoint i8* %14 to i64
  %sub.ptr.sub84 = sub i64 %sub.ptr.lhs.cast82, %sub.ptr.rhs.cast83
  %add74 = shl i64 %13, 32
  %conv76 = add i64 %add74, 35184372088832
  %sext = ashr exact i64 %conv76, 32
  %conv88 = and i64 %sext, -8192
  %call90 = call i8* @Perl_safesysrealloc(i8* %14, i64 %conv88) #7
  store i8* %call90, i8** %arena81, align 8, !tbaa !0
  store i64 %conv88, i64* %asiz72, align 8, !tbaa !4
  %sext362 = shl i64 %sub.ptr.sub84, 32
  %idx.ext98 = ashr exact i64 %sext362, 32
  %add.ptr99 = getelementptr inbounds i8* %call90, i64 %idx.ext98
  %add.ptr105 = getelementptr inbounds i8* %call90, i64 %conv88
  store i8* %add.ptr105, i8** %aend62, align 8, !tbaa !0
  %add.ptr99.sum = add i64 %idx.ext98, 1
  %incdec.ptr110 = getelementptr inbounds i8* %call90, i64 %add.ptr99.sum
  store i8* %incdec.ptr110, i8** %aptr60, align 8, !tbaa !0
  store i8 22, i8* %add.ptr99, align 1, !tbaa !1
  br label %if.end119

if.else112:                                       ; preds = %if.else55
  %call114 = call i32 @PerlIO_putc(%struct._PerlIO** %10, i32 22) #7
  %cmp115 = icmp eq i32 %call114, -1
  br i1 %cmp115, label %return, label %if.end119

if.end119:                                        ; preds = %if.else112, %if.then65, %if.else69
  %mg_obj120 = getelementptr inbounds %struct.magic* %call, i64 0, i32 5
  %15 = load %struct.sv** %mg_obj120, align 8, !tbaa !0
  %call121 = call fastcc i32 @store(%struct.stcxt* %cxt, %struct.sv* %15) #6
  %tobool122 = icmp eq i32 %call121, 0
  br i1 %tobool122, label %if.end124, label %return

if.end124:                                        ; preds = %if.end119
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %16 = load i32* %netorder, align 4, !tbaa !3
  %tobool125 = icmp eq i32 %16, 0
  br i1 %tobool125, label %if.else202, label %if.then126

if.then126:                                       ; preds = %if.end124
  %17 = load i32* %idx, align 4, !tbaa !3
  %18 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %17) #3, !srcloc !41
  store i32 %18, i32* %y, align 4, !tbaa !3
  %19 = load %struct._PerlIO*** %fio56, align 8, !tbaa !0
  %tobool128 = icmp eq %struct._PerlIO** %19, null
  br i1 %tobool128, label %if.then129, label %if.else194

if.then129:                                       ; preds = %if.then126
  %aptr131 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %20 = load i8** %aptr131, align 8, !tbaa !0
  %add.ptr132 = getelementptr inbounds i8* %20, i64 4
  %aend134 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %21 = load i8** %aend134, align 8, !tbaa !0
  %cmp135 = icmp ugt i8* %add.ptr132, %21
  br i1 %cmp135, label %if.then137, label %if.end176

if.then137:                                       ; preds = %if.then129
  %asiz140 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %22 = load i64* %asiz140, align 8, !tbaa !4
  %arena149 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %23 = load i8** %arena149, align 8, !tbaa !0
  %sub.ptr.lhs.cast150 = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast151 = ptrtoint i8* %23 to i64
  %sub.ptr.sub152 = sub i64 %sub.ptr.lhs.cast150, %sub.ptr.rhs.cast151
  %add142 = shl i64 %22, 32
  %conv144 = add i64 %add142, 35197256990720
  %sext365 = ashr exact i64 %conv144, 32
  %conv156 = and i64 %sext365, -8192
  %call158 = call i8* @Perl_safesysrealloc(i8* %23, i64 %conv156) #7
  store i8* %call158, i8** %arena149, align 8, !tbaa !0
  store i64 %conv156, i64* %asiz140, align 8, !tbaa !4
  %sext366 = shl i64 %sub.ptr.sub152, 32
  %idx.ext166 = ashr exact i64 %sext366, 32
  %add.ptr167 = getelementptr inbounds i8* %call158, i64 %idx.ext166
  store i8* %add.ptr167, i8** %aptr131, align 8, !tbaa !0
  %add.ptr173 = getelementptr inbounds i8* %call158, i64 %conv156
  store i8* %add.ptr173, i8** %aend134, align 8, !tbaa !0
  br label %if.end176

if.end176:                                        ; preds = %if.then137, %if.then129
  %24 = phi i8* [ %add.ptr167, %if.then137 ], [ %20, %if.then129 ]
  %25 = ptrtoint i8* %24 to i64
  %and181 = and i64 %25, -4
  %cmp182 = icmp eq i64 %25, %and181
  br i1 %cmp182, label %if.then184, label %if.else187

if.then184:                                       ; preds = %if.end176
  %26 = load i32* %y, align 4, !tbaa !3
  %27 = bitcast i8* %24 to i32*
  store i32 %26, i32* %27, align 4, !tbaa !3
  br label %if.end190

if.else187:                                       ; preds = %if.end176
  %28 = bitcast i8* %24 to i32*
  %29 = load i32* %y, align 4
  store i32 %29, i32* %28, align 1
  %.pre369 = load i8** %aptr131, align 8, !tbaa !0
  br label %if.end190

if.end190:                                        ; preds = %if.else187, %if.then184
  %30 = phi i8* [ %.pre369, %if.else187 ], [ %24, %if.then184 ]
  %add.ptr193 = getelementptr inbounds i8* %30, i64 4
  store i8* %add.ptr193, i8** %aptr131, align 8, !tbaa !0
  br label %if.end279

if.else194:                                       ; preds = %if.then126
  %31 = bitcast i32* %y to i8*
  %call196 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %19, i8* %31, i64 4) #7
  %cmp197 = icmp eq i64 %call196, 4
  br i1 %cmp197, label %if.end279, label %return

if.else202:                                       ; preds = %if.end124
  %32 = load %struct._PerlIO*** %fio56, align 8, !tbaa !0
  %tobool204 = icmp eq %struct._PerlIO** %32, null
  br i1 %tobool204, label %if.then205, label %if.else270

if.then205:                                       ; preds = %if.else202
  %aptr207 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %33 = load i8** %aptr207, align 8, !tbaa !0
  %add.ptr208 = getelementptr inbounds i8* %33, i64 4
  %aend210 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %34 = load i8** %aend210, align 8, !tbaa !0
  %cmp211 = icmp ugt i8* %add.ptr208, %34
  br i1 %cmp211, label %if.then213, label %if.end252

if.then213:                                       ; preds = %if.then205
  %asiz216 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %35 = load i64* %asiz216, align 8, !tbaa !4
  %arena225 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %36 = load i8** %arena225, align 8, !tbaa !0
  %sub.ptr.lhs.cast226 = ptrtoint i8* %33 to i64
  %sub.ptr.rhs.cast227 = ptrtoint i8* %36 to i64
  %sub.ptr.sub228 = sub i64 %sub.ptr.lhs.cast226, %sub.ptr.rhs.cast227
  %add218 = shl i64 %35, 32
  %conv220 = add i64 %add218, 35197256990720
  %sext363 = ashr exact i64 %conv220, 32
  %conv232 = and i64 %sext363, -8192
  %call234 = call i8* @Perl_safesysrealloc(i8* %36, i64 %conv232) #7
  store i8* %call234, i8** %arena225, align 8, !tbaa !0
  store i64 %conv232, i64* %asiz216, align 8, !tbaa !4
  %sext364 = shl i64 %sub.ptr.sub228, 32
  %idx.ext242 = ashr exact i64 %sext364, 32
  %add.ptr243 = getelementptr inbounds i8* %call234, i64 %idx.ext242
  store i8* %add.ptr243, i8** %aptr207, align 8, !tbaa !0
  %add.ptr249 = getelementptr inbounds i8* %call234, i64 %conv232
  store i8* %add.ptr249, i8** %aend210, align 8, !tbaa !0
  br label %if.end252

if.end252:                                        ; preds = %if.then213, %if.then205
  %37 = phi i8* [ %add.ptr243, %if.then213 ], [ %33, %if.then205 ]
  %38 = ptrtoint i8* %37 to i64
  %and257 = and i64 %38, -4
  %cmp258 = icmp eq i64 %38, %and257
  br i1 %cmp258, label %if.then260, label %if.else263

if.then260:                                       ; preds = %if.end252
  %39 = load i32* %idx, align 4, !tbaa !3
  %40 = bitcast i8* %37 to i32*
  store i32 %39, i32* %40, align 4, !tbaa !3
  br label %if.end266

if.else263:                                       ; preds = %if.end252
  %41 = bitcast i8* %37 to i32*
  %42 = load i32* %idx, align 4
  store i32 %42, i32* %41, align 1
  %.pre = load i8** %aptr207, align 8, !tbaa !0
  br label %if.end266

if.end266:                                        ; preds = %if.else263, %if.then260
  %43 = phi i8* [ %.pre, %if.else263 ], [ %37, %if.then260 ]
  %add.ptr269 = getelementptr inbounds i8* %43, i64 4
  store i8* %add.ptr269, i8** %aptr207, align 8, !tbaa !0
  br label %if.end279

if.else270:                                       ; preds = %if.else202
  %44 = bitcast i32* %idx to i8*
  %call272 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %32, i8* %44, i64 4) #7
  %cmp273 = icmp eq i64 %call272, 4
  br i1 %cmp273, label %if.end279, label %return

if.end279:                                        ; preds = %if.end49, %if.else194, %if.else270, %if.end190, %if.end266
  br label %return

return:                                           ; preds = %if.else270, %if.else194, %if.end119, %if.else112, %if.end49, %if.end45, %if.else38, %if.end279
  %retval.0 = phi i32 [ 0, %if.end279 ], [ -1, %if.else38 ], [ %call46, %if.end45 ], [ %call51, %if.end49 ], [ -1, %if.else112 ], [ %call121, %if.end119 ], [ -1, %if.else194 ], [ -1, %if.else270 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @store_code(%struct.stcxt* %cxt, %struct.cv* %cv) #1 {
entry:
  %len = alloca i32, align 4
  %y = alloca i32, align 4
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %deparse = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 14
  %1 = load i32* %deparse, align 4, !tbaa !3
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp2 = icmp slt i32 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([18 x i8]* @.str68, i64 0, i64 0), i32 1) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %cond.end44.thread, label %cond.false

cond.end44.thread:                                ; preds = %land.lhs.true
  store i32 0, i32* %deparse, align 4, !tbaa !3
  br label %if.then

cond.false:                                       ; preds = %land.lhs.true
  %call3 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([18 x i8]* @.str68, i64 0, i64 0), i32 1) #7
  %sv_flags = getelementptr inbounds %struct.sv* %call3, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %2, 262144
  %tobool4 = icmp eq i32 %and, 0
  %call6 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([18 x i8]* @.str68, i64 0, i64 0), i32 1) #7
  br i1 %tobool4, label %cond.false15, label %cond.true5

cond.true5:                                       ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %call6, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !0
  %4 = bitcast i8* %3 to %struct.xpv*
  store %struct.xpv* %4, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool7 = icmp eq i8* %3, null
  br i1 %tobool7, label %land.end14, label %land.rhs

land.rhs:                                         ; preds = %cond.true5
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  %cmp8 = icmp ugt i64 %6, 1
  br i1 %cmp8, label %land.end14, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool10 = icmp eq i64 %6, 0
  br i1 %tobool10, label %land.end14, label %land.rhs11

land.rhs11:                                       ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %3 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !0
  %8 = load i8* %7, align 1, !tbaa !1
  %cmp12 = icmp ne i8 %8, 48
  br label %land.end14

land.end14:                                       ; preds = %lor.rhs, %cond.true5, %land.rhs, %land.rhs11
  %9 = phi i1 [ false, %cond.true5 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp12, %land.rhs11 ]
  %cond = zext i1 %9 to i32
  br label %cond.end44

cond.false15:                                     ; preds = %cond.false
  %sv_flags17 = getelementptr inbounds %struct.sv* %call6, i64 0, i32 2
  %10 = load i32* %sv_flags17, align 4, !tbaa !3
  %and18 = and i32 %10, 65536
  %tobool19 = icmp eq i32 %and18, 0
  %call21 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([18 x i8]* @.str68, i64 0, i64 0), i32 1) #7
  br i1 %tobool19, label %cond.false25, label %cond.true20

cond.true20:                                      ; preds = %cond.false15
  %sv_any22 = getelementptr inbounds %struct.sv* %call21, i64 0, i32 0
  %11 = load i8** %sv_any22, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %11, i64 24
  %12 = bitcast i8* %xiv_iv to i64*
  %13 = load i64* %12, align 8, !tbaa !4
  %cmp23 = icmp ne i64 %13, 0
  %conv24 = zext i1 %cmp23 to i32
  br label %cond.end44

cond.false25:                                     ; preds = %cond.false15
  %sv_flags27 = getelementptr inbounds %struct.sv* %call21, i64 0, i32 2
  %14 = load i32* %sv_flags27, align 4, !tbaa !3
  %and28 = and i32 %14, 131072
  %tobool29 = icmp eq i32 %and28, 0
  %call31 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([18 x i8]* @.str68, i64 0, i64 0), i32 1) #7
  br i1 %tobool29, label %cond.false35, label %cond.true30

cond.true30:                                      ; preds = %cond.false25
  %sv_any32 = getelementptr inbounds %struct.sv* %call31, i64 0, i32 0
  %15 = load i8** %sv_any32, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %15, i64 32
  %16 = bitcast i8* %xnv_nv to double*
  %17 = load double* %16, align 8, !tbaa !6
  %cmp33 = fcmp une double %17, 0.000000e+00
  %conv34 = zext i1 %cmp33 to i32
  br label %cond.end44

cond.false35:                                     ; preds = %cond.false25
  %call37 = call signext i8 @Perl_sv_2bool(%struct.sv* %call31) #7
  %conv38 = sext i8 %call37 to i32
  br label %cond.end44

cond.end44:                                       ; preds = %land.end14, %cond.true30, %cond.false35, %cond.true20
  %cond45 = phi i32 [ %cond, %land.end14 ], [ %conv24, %cond.true20 ], [ %conv34, %cond.true30 ], [ %conv38, %cond.false35 ]
  %tobool46 = icmp ne i32 %cond45, 0
  %cond47 = zext i1 %tobool46 to i32
  store i32 %cond47, i32* %deparse, align 4, !tbaa !3
  br i1 %tobool46, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end44.thread, %cond.end44, %entry
  %18 = bitcast %struct.cv* %cv to %struct.sv*
  %call50 = call i32 @store_other(%struct.stcxt* %cxt, %struct.sv* %18) #6
  br label %return

if.end:                                           ; preds = %cond.end44, %lor.lhs.false
  %call51 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([11 x i8]* @.str69, i64 0, i64 0), i64 10) #7
  %call52 = call %struct.sv* @Perl_newSVnv(double 6.100000e-01) #7
  call void (i32, %struct.sv*, %struct.sv*, ...)* @Perl_load_module(i32 2, %struct.sv* %call51, %struct.sv* %call52) #7
  call void @Perl_push_scope() #7
  call void @Perl_save_int(i32* @PL_tmps_floor) #7
  %19 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  store i32 %19, i32* @PL_tmps_floor, align 4, !tbaa !3
  %20 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr = getelementptr inbounds i32* %20, i64 1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %21 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp53 = icmp eq i32* %incdec.ptr, %21
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end
  call void @Perl_markstack_grow() #7
  %.pre = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end
  %22 = phi i32* [ %.pre, %if.then55 ], [ %incdec.ptr, %if.end ]
  %23 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.sv** %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div926 = lshr exact i64 %sub.ptr.sub, 3
  %conv57 = trunc i64 %sub.ptr.div926 to i32
  store i32 %conv57, i32* %22, align 4, !tbaa !3
  %24 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast58 = ptrtoint %struct.sv** %24 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.lhs.cast
  %cmp62 = icmp slt i64 %sub.ptr.sub60, 8
  br i1 %cmp62, label %if.then64, label %if.end66

if.then64:                                        ; preds = %if.end56
  %call65 = call %struct.sv** @Perl_stack_grow(%struct.sv** %0, %struct.sv** %0, i32 1) #7
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.end56
  %sp.0 = phi %struct.sv** [ %call65, %if.then64 ], [ %0, %if.end56 ]
  %call67 = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([11 x i8]* @.str69, i64 0, i64 0), i64 10) #7
  %call68 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call67) #7
  %incdec.ptr69 = getelementptr inbounds %struct.sv** %sp.0, i64 1
  store %struct.sv* %call68, %struct.sv** %incdec.ptr69, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr69, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call70 = call i32 @Perl_call_method(i8* getelementptr inbounds ([4 x i8]* @.str70, i64 0, i64 0), i32 0) #7
  %25 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp71 = icmp eq i32 %call70, 1
  br i1 %cmp71, label %if.end74, label %if.then73

if.then73:                                        ; preds = %if.end66
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([46 x i8]* @.str71, i64 0, i64 0)) #7
  br label %if.end74

if.end74:                                         ; preds = %if.end66, %if.then73
  %incdec.ptr75 = getelementptr inbounds %struct.sv** %25, i64 -1
  %26 = load %struct.sv** %25, align 8, !tbaa !0
  %27 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  %incdec.ptr76 = getelementptr inbounds i32* %27, i64 1
  store i32* %incdec.ptr76, i32** @PL_markstack_ptr, align 8, !tbaa !0
  %28 = load i32** @PL_markstack_max, align 8, !tbaa !0
  %cmp77 = icmp eq i32* %incdec.ptr76, %28
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %if.end74
  call void @Perl_markstack_grow() #7
  %.pre946 = load i32** @PL_markstack_ptr, align 8, !tbaa !0
  br label %if.end80

if.end80:                                         ; preds = %if.then79, %if.end74
  %29 = phi i32* [ %.pre946, %if.then79 ], [ %incdec.ptr76, %if.end74 ]
  %30 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !0
  %sub.ptr.lhs.cast81 = ptrtoint %struct.sv** %incdec.ptr75 to i64
  %sub.ptr.rhs.cast82 = ptrtoint %struct.sv** %30 to i64
  %sub.ptr.sub83 = sub i64 %sub.ptr.lhs.cast81, %sub.ptr.rhs.cast82
  %sub.ptr.div84927 = lshr exact i64 %sub.ptr.sub83, 3
  %conv85 = trunc i64 %sub.ptr.div84927 to i32
  store i32 %conv85, i32* %29, align 4, !tbaa !3
  %31 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast86 = ptrtoint %struct.sv** %31 to i64
  %sub.ptr.sub88 = sub i64 %sub.ptr.lhs.cast86, %sub.ptr.lhs.cast81
  %cmp90 = icmp slt i64 %sub.ptr.sub88, 8
  br i1 %cmp90, label %if.then92, label %if.end94

if.then92:                                        ; preds = %if.end80
  %call93 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr75, %struct.sv** %incdec.ptr75, i32 1) #7
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end80
  %sp.1 = phi %struct.sv** [ %call93, %if.then92 ], [ %incdec.ptr75, %if.end80 ]
  %incdec.ptr95 = getelementptr inbounds %struct.sv** %sp.1, i64 1
  store %struct.sv* %26, %struct.sv** %incdec.ptr95, align 8, !tbaa !0
  %32 = load %struct.sv*** @PL_stack_max, align 8, !tbaa !0
  %sub.ptr.lhs.cast96 = ptrtoint %struct.sv** %32 to i64
  %sub.ptr.rhs.cast97 = ptrtoint %struct.sv** %incdec.ptr95 to i64
  %sub.ptr.sub98 = sub i64 %sub.ptr.lhs.cast96, %sub.ptr.rhs.cast97
  %cmp100 = icmp slt i64 %sub.ptr.sub98, 8
  br i1 %cmp100, label %if.then102, label %if.end104

if.then102:                                       ; preds = %if.end94
  %call103 = call %struct.sv** @Perl_stack_grow(%struct.sv** %incdec.ptr95, %struct.sv** %incdec.ptr95, i32 1) #7
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end94
  %sp.2 = phi %struct.sv** [ %call103, %if.then102 ], [ %incdec.ptr95, %if.end94 ]
  %33 = bitcast %struct.cv* %cv to %struct.sv*
  %call105 = call %struct.sv* @Perl_newRV(%struct.sv* %33) #7
  %call106 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call105) #7
  %incdec.ptr107 = getelementptr inbounds %struct.sv** %sp.2, i64 1
  store %struct.sv* %call106, %struct.sv** %incdec.ptr107, align 8, !tbaa !0
  store %struct.sv** %incdec.ptr107, %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %call108 = call i32 @Perl_call_method(i8* getelementptr inbounds ([13 x i8]* @.str72, i64 0, i64 0), i32 0) #7
  %34 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !0
  %cmp109 = icmp eq i32 %call108, 1
  br i1 %cmp109, label %if.end113, label %if.then111

if.then111:                                       ; preds = %if.end104
  %s_dirty112 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty112, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([55 x i8]* @.str73, i64 0, i64 0)) #7
  br label %if.end113

if.end113:                                        ; preds = %if.end104, %if.then111
  %35 = load %struct.sv** %34, align 8, !tbaa !0
  %sv_any115 = getelementptr inbounds %struct.sv* %35, i64 0, i32 0
  %36 = load i8** %sv_any115, align 8, !tbaa !0
  %xpv_len = getelementptr inbounds i8* %36, i64 16
  %37 = bitcast i8* %xpv_len to i64*
  %38 = load i64* %37, align 8, !tbaa !4
  %conv116 = trunc i64 %38 to i32
  store i32 %conv116, i32* %len, align 4, !tbaa !3
  %sv_flags117 = getelementptr inbounds %struct.sv* %35, i64 0, i32 2
  %39 = load i32* %sv_flags117, align 4, !tbaa !3
  %and118 = and i32 %39, 262144
  %cmp119 = icmp eq i32 %and118, 0
  br i1 %cmp119, label %cond.false124, label %cond.true121

cond.true121:                                     ; preds = %if.end113
  %xpv_pv123 = bitcast i8* %36 to i8**
  %40 = load i8** %xpv_pv123, align 8, !tbaa !0
  br label %cond.end126

cond.false124:                                    ; preds = %if.end113
  %call125 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %35) #7
  %.pre947 = load i32* %len, align 4, !tbaa !3
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false124, %cond.true121
  %41 = phi i32 [ %conv116, %cond.true121 ], [ %.pre947, %cond.false124 ]
  %cond127 = phi i8* [ %40, %cond.true121 ], [ %call125, %cond.false124 ]
  %call128 = call i64 @strlen(i8* %cond127) #7
  %cmp130 = icmp eq i32 %41, 0
  br i1 %cmp130, label %if.then148, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %cond.end126
  %42 = load i32* %sv_flags117, align 4, !tbaa !3
  %and134 = and i32 %42, 262144
  %cmp135 = icmp eq i32 %and134, 0
  br i1 %cmp135, label %cond.false140, label %cond.true137

cond.true137:                                     ; preds = %lor.lhs.false132
  %43 = load i8** %sv_any115, align 8, !tbaa !0
  %xpv_pv139 = bitcast i8* %43 to i8**
  %44 = load i8** %xpv_pv139, align 8, !tbaa !0
  br label %cond.end142

cond.false140:                                    ; preds = %lor.lhs.false132
  %call141 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %35) #7
  br label %cond.end142

cond.end142:                                      ; preds = %cond.false140, %cond.true137
  %cond143 = phi i8* [ %44, %cond.true137 ], [ %call141, %cond.false140 ]
  %sext = shl i64 %call128, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr.sum = add i64 %idx.ext, -1
  %add.ptr144 = getelementptr inbounds i8* %cond143, i64 %add.ptr.sum
  %45 = load i8* %add.ptr144, align 1, !tbaa !1
  %cmp146 = icmp eq i8 %45, 59
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %cond.end142, %cond.end126
  %s_dirty149 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty149, align 4, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([101 x i8]* @.str74, i64 0, i64 0)) #7
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %cond.end142
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %46 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool151 = icmp eq %struct._PerlIO** %46, null
  br i1 %tobool151, label %if.then152, label %if.else196

if.then152:                                       ; preds = %if.end150
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %47 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %48 = load i8** %aend, align 8, !tbaa !0
  %cmp154 = icmp ult i8* %47, %48
  br i1 %cmp154, label %if.then156, label %if.else

if.then156:                                       ; preds = %if.then152
  %incdec.ptr159 = getelementptr inbounds i8* %47, i64 1
  store i8* %incdec.ptr159, i8** %aptr, align 8, !tbaa !0
  store i8 26, i8* %47, align 1, !tbaa !1
  br label %if.end203

if.else:                                          ; preds = %if.then152
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %49 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %50 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast167 = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast168 = ptrtoint i8* %50 to i64
  %sub.ptr.sub169 = sub i64 %sub.ptr.lhs.cast167, %sub.ptr.rhs.cast168
  %add161 = shl i64 %49, 32
  %conv163 = add i64 %add161, 35184372088832
  %sext928 = ashr exact i64 %conv163, 32
  %conv173 = and i64 %sext928, -8192
  %call174 = call i8* @Perl_safesysrealloc(i8* %50, i64 %conv173) #7
  store i8* %call174, i8** %arena, align 8, !tbaa !0
  store i64 %conv173, i64* %asiz, align 8, !tbaa !4
  %sext929 = shl i64 %sub.ptr.sub169, 32
  %idx.ext182 = ashr exact i64 %sext929, 32
  %add.ptr183 = getelementptr inbounds i8* %call174, i64 %idx.ext182
  %add.ptr189 = getelementptr inbounds i8* %call174, i64 %conv173
  store i8* %add.ptr189, i8** %aend, align 8, !tbaa !0
  %add.ptr183.sum = add i64 %idx.ext182, 1
  %incdec.ptr194 = getelementptr inbounds i8* %call174, i64 %add.ptr183.sum
  store i8* %incdec.ptr194, i8** %aptr, align 8, !tbaa !0
  store i8 26, i8* %add.ptr183, align 1, !tbaa !1
  br label %if.end203

if.else196:                                       ; preds = %if.end150
  %call198 = call i32 @PerlIO_putc(%struct._PerlIO** %46, i32 26) #7
  %cmp199 = icmp eq i32 %call198, -1
  br i1 %cmp199, label %return, label %if.end203

if.end203:                                        ; preds = %if.else196, %if.then156, %if.else
  %tagnum = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 9
  %51 = load i64* %tagnum, align 8, !tbaa !4
  %inc = add nsw i64 %51, 1
  store i64 %inc, i64* %tagnum, align 8, !tbaa !4
  %52 = load i32* %len, align 4, !tbaa !3
  %cmp204 = icmp slt i32 %52, 256
  br i1 %cmp204, label %if.then206, label %if.else431

if.then206:                                       ; preds = %if.end203
  %conv207 = trunc i32 %52 to i8
  %53 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool209 = icmp eq %struct._PerlIO** %53, null
  br i1 %tobool209, label %if.then210, label %if.else264

if.then210:                                       ; preds = %if.then206
  %aptr212 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %54 = load i8** %aptr212, align 8, !tbaa !0
  %aend214 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %55 = load i8** %aend214, align 8, !tbaa !0
  %cmp215 = icmp ult i8* %54, %55
  br i1 %cmp215, label %if.then217, label %if.else221

if.then217:                                       ; preds = %if.then210
  %incdec.ptr220 = getelementptr inbounds i8* %54, i64 1
  store i8* %incdec.ptr220, i8** %aptr212, align 8, !tbaa !0
  store i8 10, i8* %54, align 1, !tbaa !1
  br label %if.end271

if.else221:                                       ; preds = %if.then210
  %asiz224 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %56 = load i64* %asiz224, align 8, !tbaa !4
  %arena233 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %57 = load i8** %arena233, align 8, !tbaa !0
  %sub.ptr.lhs.cast234 = ptrtoint i8* %54 to i64
  %sub.ptr.rhs.cast235 = ptrtoint i8* %57 to i64
  %sub.ptr.sub236 = sub i64 %sub.ptr.lhs.cast234, %sub.ptr.rhs.cast235
  %add226 = shl i64 %56, 32
  %conv228 = add i64 %add226, 35184372088832
  %sext938 = ashr exact i64 %conv228, 32
  %conv240 = and i64 %sext938, -8192
  %call242 = call i8* @Perl_safesysrealloc(i8* %57, i64 %conv240) #7
  store i8* %call242, i8** %arena233, align 8, !tbaa !0
  store i64 %conv240, i64* %asiz224, align 8, !tbaa !4
  %sext939 = shl i64 %sub.ptr.sub236, 32
  %idx.ext250 = ashr exact i64 %sext939, 32
  %add.ptr251 = getelementptr inbounds i8* %call242, i64 %idx.ext250
  %add.ptr257 = getelementptr inbounds i8* %call242, i64 %conv240
  store i8* %add.ptr257, i8** %aend214, align 8, !tbaa !0
  %add.ptr251.sum = add i64 %idx.ext250, 1
  %incdec.ptr262 = getelementptr inbounds i8* %call242, i64 %add.ptr251.sum
  store i8* %incdec.ptr262, i8** %aptr212, align 8, !tbaa !0
  store i8 10, i8* %add.ptr251, align 1, !tbaa !1
  br label %if.end271

if.else264:                                       ; preds = %if.then206
  %call266 = call i32 @PerlIO_putc(%struct._PerlIO** %53, i32 10) #7
  %cmp267 = icmp eq i32 %call266, -1
  br i1 %cmp267, label %return, label %if.end271

if.end271:                                        ; preds = %if.else264, %if.then217, %if.else221
  %58 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool273 = icmp eq %struct._PerlIO** %58, null
  br i1 %tobool273, label %if.then274, label %if.else328

if.then274:                                       ; preds = %if.end271
  %aptr276 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %59 = load i8** %aptr276, align 8, !tbaa !0
  %aend278 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %60 = load i8** %aend278, align 8, !tbaa !0
  %cmp279 = icmp ult i8* %59, %60
  br i1 %cmp279, label %if.then281, label %if.else285

if.then281:                                       ; preds = %if.then274
  %incdec.ptr284 = getelementptr inbounds i8* %59, i64 1
  store i8* %incdec.ptr284, i8** %aptr276, align 8, !tbaa !0
  store i8 %conv207, i8* %59, align 1, !tbaa !1
  br label %if.end336

if.else285:                                       ; preds = %if.then274
  %asiz288 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %61 = load i64* %asiz288, align 8, !tbaa !4
  %arena297 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %62 = load i8** %arena297, align 8, !tbaa !0
  %sub.ptr.lhs.cast298 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast299 = ptrtoint i8* %62 to i64
  %sub.ptr.sub300 = sub i64 %sub.ptr.lhs.cast298, %sub.ptr.rhs.cast299
  %add290 = shl i64 %61, 32
  %conv292 = add i64 %add290, 35184372088832
  %sext940 = ashr exact i64 %conv292, 32
  %conv304 = and i64 %sext940, -8192
  %call306 = call i8* @Perl_safesysrealloc(i8* %62, i64 %conv304) #7
  store i8* %call306, i8** %arena297, align 8, !tbaa !0
  store i64 %conv304, i64* %asiz288, align 8, !tbaa !4
  %sext941 = shl i64 %sub.ptr.sub300, 32
  %idx.ext314 = ashr exact i64 %sext941, 32
  %add.ptr315 = getelementptr inbounds i8* %call306, i64 %idx.ext314
  %add.ptr321 = getelementptr inbounds i8* %call306, i64 %conv304
  store i8* %add.ptr321, i8** %aend278, align 8, !tbaa !0
  %add.ptr315.sum = add i64 %idx.ext314, 1
  %incdec.ptr326 = getelementptr inbounds i8* %call306, i64 %add.ptr315.sum
  store i8* %incdec.ptr326, i8** %aptr276, align 8, !tbaa !0
  store i8 %conv207, i8* %add.ptr315, align 1, !tbaa !1
  br label %if.end336

if.else328:                                       ; preds = %if.end271
  %conv330 = and i32 %52, 255
  %call331 = call i32 @PerlIO_putc(%struct._PerlIO** %58, i32 %conv330) #7
  %cmp332 = icmp eq i32 %call331, -1
  br i1 %cmp332, label %return, label %if.end336

if.end336:                                        ; preds = %if.else328, %if.then281, %if.else285
  %63 = load i32* %len, align 4, !tbaa !3
  %tobool337 = icmp eq i32 %63, 0
  br i1 %tobool337, label %if.end741, label %if.then338

if.then338:                                       ; preds = %if.end336
  %64 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool340 = icmp eq %struct._PerlIO** %64, null
  br i1 %tobool340, label %if.then341, label %if.else409

if.then341:                                       ; preds = %if.then338
  %aptr343 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %65 = load i8** %aptr343, align 8, !tbaa !0
  %idx.ext344 = sext i32 %63 to i64
  %add.ptr345 = getelementptr inbounds i8* %65, i64 %idx.ext344
  %aend347 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %66 = load i8** %aend347, align 8, !tbaa !0
  %cmp348 = icmp ugt i8* %add.ptr345, %66
  br i1 %cmp348, label %if.then350, label %if.end390

if.then350:                                       ; preds = %if.then341
  %asiz354 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %67 = load i64* %asiz354, align 8, !tbaa !4
  %add355 = add i64 %67, %idx.ext344
  %arena363 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %68 = load i8** %arena363, align 8, !tbaa !0
  %sub.ptr.lhs.cast364 = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast365 = ptrtoint i8* %68 to i64
  %sub.ptr.sub366 = sub i64 %sub.ptr.lhs.cast364, %sub.ptr.rhs.cast365
  %add356 = shl i64 %add355, 32
  %conv358 = add i64 %add356, 35180077121536
  %sext942 = ashr exact i64 %conv358, 32
  %conv370 = and i64 %sext942, -8192
  %call372 = call i8* @Perl_safesysrealloc(i8* %68, i64 %conv370) #7
  store i8* %call372, i8** %arena363, align 8, !tbaa !0
  store i64 %conv370, i64* %asiz354, align 8, !tbaa !4
  %sext943 = shl i64 %sub.ptr.sub366, 32
  %idx.ext380 = ashr exact i64 %sext943, 32
  %add.ptr381 = getelementptr inbounds i8* %call372, i64 %idx.ext380
  store i8* %add.ptr381, i8** %aptr343, align 8, !tbaa !0
  %add.ptr387 = getelementptr inbounds i8* %call372, i64 %conv370
  store i8* %add.ptr387, i8** %aend347, align 8, !tbaa !0
  br label %if.end390

if.end390:                                        ; preds = %if.then350, %if.then341
  %69 = phi i8* [ %add.ptr381, %if.then350 ], [ %65, %if.then341 ]
  %70 = load i32* %sv_flags117, align 4, !tbaa !3
  %and394 = and i32 %70, 262144
  %cmp395 = icmp eq i32 %and394, 0
  br i1 %cmp395, label %cond.false400, label %cond.true397

cond.true397:                                     ; preds = %if.end390
  %71 = load i8** %sv_any115, align 8, !tbaa !0
  %xpv_pv399 = bitcast i8* %71 to i8**
  %72 = load i8** %xpv_pv399, align 8, !tbaa !0
  br label %cond.end402

cond.false400:                                    ; preds = %if.end390
  %call401 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %35) #7
  br label %cond.end402

cond.end402:                                      ; preds = %cond.false400, %cond.true397
  %cond403 = phi i8* [ %72, %cond.true397 ], [ %call401, %cond.false400 ]
  %73 = load i32* %len, align 4, !tbaa !3
  %conv404 = sext i32 %73 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %cond403, i64 %conv404, i32 1, i1 false)
  %74 = load i32* %len, align 4, !tbaa !3
  %75 = load i8** %aptr343, align 8, !tbaa !0
  %idx.ext407 = sext i32 %74 to i64
  %add.ptr408 = getelementptr inbounds i8* %75, i64 %idx.ext407
  store i8* %add.ptr408, i8** %aptr343, align 8, !tbaa !0
  br label %if.end741

if.else409:                                       ; preds = %if.then338
  %76 = load i32* %sv_flags117, align 4, !tbaa !3
  %and412 = and i32 %76, 262144
  %cmp413 = icmp eq i32 %and412, 0
  br i1 %cmp413, label %cond.false418, label %cond.true415

cond.true415:                                     ; preds = %if.else409
  %77 = load i8** %sv_any115, align 8, !tbaa !0
  %xpv_pv417 = bitcast i8* %77 to i8**
  %78 = load i8** %xpv_pv417, align 8, !tbaa !0
  br label %cond.end420

cond.false418:                                    ; preds = %if.else409
  %call419 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %35) #7
  %.pre948 = load i32* %len, align 4, !tbaa !3
  br label %cond.end420

cond.end420:                                      ; preds = %cond.false418, %cond.true415
  %79 = phi i32 [ %63, %cond.true415 ], [ %.pre948, %cond.false418 ]
  %cond421 = phi i8* [ %78, %cond.true415 ], [ %call419, %cond.false418 ]
  %conv422 = sext i32 %79 to i64
  %call423 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %64, i8* %cond421, i64 %conv422) #7
  %80 = load i32* %len, align 4, !tbaa !3
  %conv424 = sext i32 %80 to i64
  %cmp425 = icmp eq i64 %call423, %conv424
  br i1 %cmp425, label %if.end741, label %return

if.else431:                                       ; preds = %if.end203
  %81 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool433 = icmp eq %struct._PerlIO** %81, null
  br i1 %tobool433, label %if.then434, label %if.else488

if.then434:                                       ; preds = %if.else431
  %aptr436 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %82 = load i8** %aptr436, align 8, !tbaa !0
  %aend438 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %83 = load i8** %aend438, align 8, !tbaa !0
  %cmp439 = icmp ult i8* %82, %83
  br i1 %cmp439, label %if.then441, label %if.else445

if.then441:                                       ; preds = %if.then434
  %incdec.ptr444 = getelementptr inbounds i8* %82, i64 1
  store i8* %incdec.ptr444, i8** %aptr436, align 8, !tbaa !0
  store i8 1, i8* %82, align 1, !tbaa !1
  br label %if.end495

if.else445:                                       ; preds = %if.then434
  %asiz448 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %84 = load i64* %asiz448, align 8, !tbaa !4
  %arena457 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %85 = load i8** %arena457, align 8, !tbaa !0
  %sub.ptr.lhs.cast458 = ptrtoint i8* %82 to i64
  %sub.ptr.rhs.cast459 = ptrtoint i8* %85 to i64
  %sub.ptr.sub460 = sub i64 %sub.ptr.lhs.cast458, %sub.ptr.rhs.cast459
  %add450 = shl i64 %84, 32
  %conv452 = add i64 %add450, 35184372088832
  %sext930 = ashr exact i64 %conv452, 32
  %conv464 = and i64 %sext930, -8192
  %call466 = call i8* @Perl_safesysrealloc(i8* %85, i64 %conv464) #7
  store i8* %call466, i8** %arena457, align 8, !tbaa !0
  store i64 %conv464, i64* %asiz448, align 8, !tbaa !4
  %sext931 = shl i64 %sub.ptr.sub460, 32
  %idx.ext474 = ashr exact i64 %sext931, 32
  %add.ptr475 = getelementptr inbounds i8* %call466, i64 %idx.ext474
  %add.ptr481 = getelementptr inbounds i8* %call466, i64 %conv464
  store i8* %add.ptr481, i8** %aend438, align 8, !tbaa !0
  %add.ptr475.sum = add i64 %idx.ext474, 1
  %incdec.ptr486 = getelementptr inbounds i8* %call466, i64 %add.ptr475.sum
  store i8* %incdec.ptr486, i8** %aptr436, align 8, !tbaa !0
  store i8 1, i8* %add.ptr475, align 1, !tbaa !1
  br label %if.end495

if.else488:                                       ; preds = %if.else431
  %call490 = call i32 @PerlIO_putc(%struct._PerlIO** %81, i32 1) #7
  %cmp491 = icmp eq i32 %call490, -1
  br i1 %cmp491, label %return, label %if.end495

if.end495:                                        ; preds = %if.else488, %if.then441, %if.else445
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %86 = load i32* %netorder, align 4, !tbaa !3
  %tobool496 = icmp eq i32 %86, 0
  br i1 %tobool496, label %if.else573, label %if.then497

if.then497:                                       ; preds = %if.end495
  %87 = load i32* %len, align 4, !tbaa !3
  %88 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %87) #3, !srcloc !42
  store i32 %88, i32* %y, align 4, !tbaa !3
  %89 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool499 = icmp eq %struct._PerlIO** %89, null
  br i1 %tobool499, label %if.then500, label %if.else565

if.then500:                                       ; preds = %if.then497
  %aptr502 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %90 = load i8** %aptr502, align 8, !tbaa !0
  %add.ptr503 = getelementptr inbounds i8* %90, i64 4
  %aend505 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %91 = load i8** %aend505, align 8, !tbaa !0
  %cmp506 = icmp ugt i8* %add.ptr503, %91
  br i1 %cmp506, label %if.then508, label %if.end547

if.then508:                                       ; preds = %if.then500
  %asiz511 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %92 = load i64* %asiz511, align 8, !tbaa !4
  %arena520 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %93 = load i8** %arena520, align 8, !tbaa !0
  %sub.ptr.lhs.cast521 = ptrtoint i8* %90 to i64
  %sub.ptr.rhs.cast522 = ptrtoint i8* %93 to i64
  %sub.ptr.sub523 = sub i64 %sub.ptr.lhs.cast521, %sub.ptr.rhs.cast522
  %add513 = shl i64 %92, 32
  %conv515 = add i64 %add513, 35197256990720
  %sext936 = ashr exact i64 %conv515, 32
  %conv527 = and i64 %sext936, -8192
  %call529 = call i8* @Perl_safesysrealloc(i8* %93, i64 %conv527) #7
  store i8* %call529, i8** %arena520, align 8, !tbaa !0
  store i64 %conv527, i64* %asiz511, align 8, !tbaa !4
  %sext937 = shl i64 %sub.ptr.sub523, 32
  %idx.ext537 = ashr exact i64 %sext937, 32
  %add.ptr538 = getelementptr inbounds i8* %call529, i64 %idx.ext537
  store i8* %add.ptr538, i8** %aptr502, align 8, !tbaa !0
  %add.ptr544 = getelementptr inbounds i8* %call529, i64 %conv527
  store i8* %add.ptr544, i8** %aend505, align 8, !tbaa !0
  br label %if.end547

if.end547:                                        ; preds = %if.then508, %if.then500
  %94 = phi i8* [ %add.ptr538, %if.then508 ], [ %90, %if.then500 ]
  %95 = ptrtoint i8* %94 to i64
  %and552 = and i64 %95, -4
  %cmp553 = icmp eq i64 %95, %and552
  br i1 %cmp553, label %if.then555, label %if.else558

if.then555:                                       ; preds = %if.end547
  %96 = load i32* %y, align 4, !tbaa !3
  %97 = bitcast i8* %94 to i32*
  store i32 %96, i32* %97, align 4, !tbaa !3
  br label %if.end561

if.else558:                                       ; preds = %if.end547
  %98 = bitcast i8* %94 to i32*
  %99 = load i32* %y, align 4
  store i32 %99, i32* %98, align 1
  %.pre950 = load i8** %aptr502, align 8, !tbaa !0
  br label %if.end561

if.end561:                                        ; preds = %if.else558, %if.then555
  %100 = phi i8* [ %.pre950, %if.else558 ], [ %94, %if.then555 ]
  %add.ptr564 = getelementptr inbounds i8* %100, i64 4
  store i8* %add.ptr564, i8** %aptr502, align 8, !tbaa !0
  br label %if.end649

if.else565:                                       ; preds = %if.then497
  %101 = bitcast i32* %y to i8*
  %call567 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %89, i8* %101, i64 4) #7
  %cmp568 = icmp eq i64 %call567, 4
  br i1 %cmp568, label %if.end649, label %return

if.else573:                                       ; preds = %if.end495
  %102 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool575 = icmp eq %struct._PerlIO** %102, null
  br i1 %tobool575, label %if.then576, label %if.else641

if.then576:                                       ; preds = %if.else573
  %aptr578 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %103 = load i8** %aptr578, align 8, !tbaa !0
  %add.ptr579 = getelementptr inbounds i8* %103, i64 4
  %aend581 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %104 = load i8** %aend581, align 8, !tbaa !0
  %cmp582 = icmp ugt i8* %add.ptr579, %104
  br i1 %cmp582, label %if.then584, label %if.end623

if.then584:                                       ; preds = %if.then576
  %asiz587 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %105 = load i64* %asiz587, align 8, !tbaa !4
  %arena596 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %106 = load i8** %arena596, align 8, !tbaa !0
  %sub.ptr.lhs.cast597 = ptrtoint i8* %103 to i64
  %sub.ptr.rhs.cast598 = ptrtoint i8* %106 to i64
  %sub.ptr.sub599 = sub i64 %sub.ptr.lhs.cast597, %sub.ptr.rhs.cast598
  %add589 = shl i64 %105, 32
  %conv591 = add i64 %add589, 35197256990720
  %sext934 = ashr exact i64 %conv591, 32
  %conv603 = and i64 %sext934, -8192
  %call605 = call i8* @Perl_safesysrealloc(i8* %106, i64 %conv603) #7
  store i8* %call605, i8** %arena596, align 8, !tbaa !0
  store i64 %conv603, i64* %asiz587, align 8, !tbaa !4
  %sext935 = shl i64 %sub.ptr.sub599, 32
  %idx.ext613 = ashr exact i64 %sext935, 32
  %add.ptr614 = getelementptr inbounds i8* %call605, i64 %idx.ext613
  store i8* %add.ptr614, i8** %aptr578, align 8, !tbaa !0
  %add.ptr620 = getelementptr inbounds i8* %call605, i64 %conv603
  store i8* %add.ptr620, i8** %aend581, align 8, !tbaa !0
  br label %if.end623

if.end623:                                        ; preds = %if.then584, %if.then576
  %107 = phi i8* [ %add.ptr614, %if.then584 ], [ %103, %if.then576 ]
  %108 = ptrtoint i8* %107 to i64
  %and628 = and i64 %108, -4
  %cmp629 = icmp eq i64 %108, %and628
  br i1 %cmp629, label %if.then631, label %if.else634

if.then631:                                       ; preds = %if.end623
  %109 = load i32* %len, align 4, !tbaa !3
  %110 = bitcast i8* %107 to i32*
  store i32 %109, i32* %110, align 4, !tbaa !3
  br label %if.end637

if.else634:                                       ; preds = %if.end623
  %111 = bitcast i8* %107 to i32*
  %112 = load i32* %len, align 4
  store i32 %112, i32* %111, align 1
  %.pre949 = load i8** %aptr578, align 8, !tbaa !0
  br label %if.end637

if.end637:                                        ; preds = %if.else634, %if.then631
  %113 = phi i8* [ %.pre949, %if.else634 ], [ %107, %if.then631 ]
  %add.ptr640 = getelementptr inbounds i8* %113, i64 4
  store i8* %add.ptr640, i8** %aptr578, align 8, !tbaa !0
  br label %if.end649

if.else641:                                       ; preds = %if.else573
  %114 = bitcast i32* %len to i8*
  %call643 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %102, i8* %114, i64 4) #7
  %cmp644 = icmp eq i64 %call643, 4
  br i1 %cmp644, label %if.end649, label %return

if.end649:                                        ; preds = %if.else641, %if.else565, %if.end637, %if.end561
  %115 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool651 = icmp eq %struct._PerlIO** %115, null
  br i1 %tobool651, label %if.then652, label %if.else720

if.then652:                                       ; preds = %if.end649
  %aptr654 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %116 = load i8** %aptr654, align 8, !tbaa !0
  %117 = load i32* %len, align 4, !tbaa !3
  %idx.ext655 = sext i32 %117 to i64
  %add.ptr656 = getelementptr inbounds i8* %116, i64 %idx.ext655
  %aend658 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %118 = load i8** %aend658, align 8, !tbaa !0
  %cmp659 = icmp ugt i8* %add.ptr656, %118
  br i1 %cmp659, label %if.then661, label %if.end701

if.then661:                                       ; preds = %if.then652
  %asiz665 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %119 = load i64* %asiz665, align 8, !tbaa !4
  %add666 = add i64 %119, %idx.ext655
  %arena674 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %120 = load i8** %arena674, align 8, !tbaa !0
  %sub.ptr.lhs.cast675 = ptrtoint i8* %116 to i64
  %sub.ptr.rhs.cast676 = ptrtoint i8* %120 to i64
  %sub.ptr.sub677 = sub i64 %sub.ptr.lhs.cast675, %sub.ptr.rhs.cast676
  %add667 = shl i64 %add666, 32
  %conv669 = add i64 %add667, 35180077121536
  %sext932 = ashr exact i64 %conv669, 32
  %conv681 = and i64 %sext932, -8192
  %call683 = call i8* @Perl_safesysrealloc(i8* %120, i64 %conv681) #7
  store i8* %call683, i8** %arena674, align 8, !tbaa !0
  store i64 %conv681, i64* %asiz665, align 8, !tbaa !4
  %sext933 = shl i64 %sub.ptr.sub677, 32
  %idx.ext691 = ashr exact i64 %sext933, 32
  %add.ptr692 = getelementptr inbounds i8* %call683, i64 %idx.ext691
  store i8* %add.ptr692, i8** %aptr654, align 8, !tbaa !0
  %add.ptr698 = getelementptr inbounds i8* %call683, i64 %conv681
  store i8* %add.ptr698, i8** %aend658, align 8, !tbaa !0
  br label %if.end701

if.end701:                                        ; preds = %if.then661, %if.then652
  %121 = phi i8* [ %add.ptr692, %if.then661 ], [ %116, %if.then652 ]
  %122 = load i32* %sv_flags117, align 4, !tbaa !3
  %and705 = and i32 %122, 262144
  %cmp706 = icmp eq i32 %and705, 0
  br i1 %cmp706, label %cond.false711, label %cond.true708

cond.true708:                                     ; preds = %if.end701
  %123 = load i8** %sv_any115, align 8, !tbaa !0
  %xpv_pv710 = bitcast i8* %123 to i8**
  %124 = load i8** %xpv_pv710, align 8, !tbaa !0
  br label %cond.end713

cond.false711:                                    ; preds = %if.end701
  %call712 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %35) #7
  br label %cond.end713

cond.end713:                                      ; preds = %cond.false711, %cond.true708
  %cond714 = phi i8* [ %124, %cond.true708 ], [ %call712, %cond.false711 ]
  %125 = load i32* %len, align 4, !tbaa !3
  %conv715 = sext i32 %125 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %cond714, i64 %conv715, i32 1, i1 false)
  %126 = load i32* %len, align 4, !tbaa !3
  %127 = load i8** %aptr654, align 8, !tbaa !0
  %idx.ext718 = sext i32 %126 to i64
  %add.ptr719 = getelementptr inbounds i8* %127, i64 %idx.ext718
  store i8* %add.ptr719, i8** %aptr654, align 8, !tbaa !0
  br label %if.end741

if.else720:                                       ; preds = %if.end649
  %128 = load i32* %sv_flags117, align 4, !tbaa !3
  %and723 = and i32 %128, 262144
  %cmp724 = icmp eq i32 %and723, 0
  br i1 %cmp724, label %cond.false729, label %cond.true726

cond.true726:                                     ; preds = %if.else720
  %129 = load i8** %sv_any115, align 8, !tbaa !0
  %xpv_pv728 = bitcast i8* %129 to i8**
  %130 = load i8** %xpv_pv728, align 8, !tbaa !0
  br label %cond.end731

cond.false729:                                    ; preds = %if.else720
  %call730 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %35) #7
  br label %cond.end731

cond.end731:                                      ; preds = %cond.false729, %cond.true726
  %cond732 = phi i8* [ %130, %cond.true726 ], [ %call730, %cond.false729 ]
  %131 = load i32* %len, align 4, !tbaa !3
  %conv733 = sext i32 %131 to i64
  %call734 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %115, i8* %cond732, i64 %conv733) #7
  %132 = load i32* %len, align 4, !tbaa !3
  %conv735 = sext i32 %132 to i64
  %cmp736 = icmp eq i64 %call734, %conv735
  br i1 %cmp736, label %if.end741, label %return

if.end741:                                        ; preds = %cond.end420, %if.end336, %cond.end731, %cond.end713, %cond.end402
  %133 = load i32* @PL_tmps_ix, align 4, !tbaa !3
  %134 = load i32* @PL_tmps_floor, align 4, !tbaa !3
  %cmp742 = icmp sgt i32 %133, %134
  br i1 %cmp742, label %if.then744, label %if.end745

if.then744:                                       ; preds = %if.end741
  call void @Perl_free_tmps() #7
  br label %if.end745

if.end745:                                        ; preds = %if.then744, %if.end741
  call void @Perl_pop_scope() #7
  br label %return

return:                                           ; preds = %cond.end731, %if.else641, %if.else565, %if.else488, %cond.end420, %if.else328, %if.else264, %if.else196, %if.end745, %if.then
  %retval.0 = phi i32 [ %call50, %if.then ], [ 0, %if.end745 ], [ -1, %if.else196 ], [ -1, %if.else264 ], [ -1, %if.else328 ], [ -1, %cond.end420 ], [ -1, %if.else488 ], [ -1, %if.else565 ], [ -1, %if.else641 ], [ -1, %cond.end731 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @store_other(%struct.stcxt* %cxt, %struct.sv* %sv) #1 {
entry:
  %len = alloca i32, align 4
  %y = alloca i32, align 4
  %forgive_me = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 13
  %0 = load i32* %forgive_me, align 4, !tbaa !3
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %cmp2 = icmp slt i32 %0, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  %tobool = icmp eq %struct.sv* %call, null
  br i1 %tobool, label %cond.end44.thread, label %cond.false

cond.end44.thread:                                ; preds = %land.lhs.true
  store i32 0, i32* %forgive_me, align 4, !tbaa !3
  br label %if.then

cond.false:                                       ; preds = %land.lhs.true
  %call3 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  %sv_flags = getelementptr inbounds %struct.sv* %call3, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !3
  %and = and i32 %1, 262144
  %tobool4 = icmp eq i32 %and, 0
  %call6 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  br i1 %tobool4, label %cond.false15, label %cond.true5

cond.true5:                                       ; preds = %cond.false
  %sv_any = getelementptr inbounds %struct.sv* %call6, i64 0, i32 0
  %2 = load i8** %sv_any, align 8, !tbaa !0
  %3 = bitcast i8* %2 to %struct.xpv*
  store %struct.xpv* %3, %struct.xpv** @PL_Xpv, align 8, !tbaa !0
  %tobool7 = icmp eq i8* %2, null
  br i1 %tobool7, label %land.end14, label %land.rhs

land.rhs:                                         ; preds = %cond.true5
  %xpv_cur = getelementptr inbounds i8* %2, i64 8
  %4 = bitcast i8* %xpv_cur to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  %cmp8 = icmp ugt i64 %5, 1
  br i1 %cmp8, label %land.end14, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool10 = icmp eq i64 %5, 0
  br i1 %tobool10, label %land.end14, label %land.rhs11

land.rhs11:                                       ; preds = %lor.rhs
  %xpv_pv = bitcast i8* %2 to i8**
  %6 = load i8** %xpv_pv, align 8, !tbaa !0
  %7 = load i8* %6, align 1, !tbaa !1
  %cmp12 = icmp ne i8 %7, 48
  br label %land.end14

land.end14:                                       ; preds = %lor.rhs, %cond.true5, %land.rhs, %land.rhs11
  %8 = phi i1 [ false, %cond.true5 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp12, %land.rhs11 ]
  %cond = zext i1 %8 to i32
  br label %cond.end44

cond.false15:                                     ; preds = %cond.false
  %sv_flags17 = getelementptr inbounds %struct.sv* %call6, i64 0, i32 2
  %9 = load i32* %sv_flags17, align 4, !tbaa !3
  %and18 = and i32 %9, 65536
  %tobool19 = icmp eq i32 %and18, 0
  %call21 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  br i1 %tobool19, label %cond.false25, label %cond.true20

cond.true20:                                      ; preds = %cond.false15
  %sv_any22 = getelementptr inbounds %struct.sv* %call21, i64 0, i32 0
  %10 = load i8** %sv_any22, align 8, !tbaa !0
  %xiv_iv = getelementptr inbounds i8* %10, i64 24
  %11 = bitcast i8* %xiv_iv to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %cmp23 = icmp ne i64 %12, 0
  %conv24 = zext i1 %cmp23 to i32
  br label %cond.end44

cond.false25:                                     ; preds = %cond.false15
  %sv_flags27 = getelementptr inbounds %struct.sv* %call21, i64 0, i32 2
  %13 = load i32* %sv_flags27, align 4, !tbaa !3
  %and28 = and i32 %13, 131072
  %tobool29 = icmp eq i32 %and28, 0
  %call31 = call %struct.sv* @Perl_get_sv(i8* getelementptr inbounds ([21 x i8]* @.str51, i64 0, i64 0), i32 1) #7
  br i1 %tobool29, label %cond.false35, label %cond.true30

cond.true30:                                      ; preds = %cond.false25
  %sv_any32 = getelementptr inbounds %struct.sv* %call31, i64 0, i32 0
  %14 = load i8** %sv_any32, align 8, !tbaa !0
  %xnv_nv = getelementptr inbounds i8* %14, i64 32
  %15 = bitcast i8* %xnv_nv to double*
  %16 = load double* %15, align 8, !tbaa !6
  %cmp33 = fcmp une double %16, 0.000000e+00
  %conv34 = zext i1 %cmp33 to i32
  br label %cond.end44

cond.false35:                                     ; preds = %cond.false25
  %call37 = call signext i8 @Perl_sv_2bool(%struct.sv* %call31) #7
  %conv38 = sext i8 %call37 to i32
  br label %cond.end44

cond.end44:                                       ; preds = %land.end14, %cond.true30, %cond.false35, %cond.true20
  %cond45 = phi i32 [ %cond, %land.end14 ], [ %conv24, %cond.true20 ], [ %conv34, %cond.true30 ], [ %conv38, %cond.false35 ]
  %tobool46 = icmp ne i32 %cond45, 0
  %cond47 = zext i1 %tobool46 to i32
  store i32 %cond47, i32* %forgive_me, align 4, !tbaa !3
  br i1 %tobool46, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end44.thread, %cond.end44, %entry
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  %call50 = call i8* @Perl_sv_reftype(%struct.sv* %sv, i32 0) #7
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([21 x i8]* @.str65, i64 0, i64 0), i8* %call50) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end44, %lor.lhs.false
  %call51 = call i8* @Perl_sv_reftype(%struct.sv* %sv, i32 0) #7
  %17 = ptrtoint %struct.sv* %sv to i64
  call void (i8*, ...)* @Perl_warn(i8* getelementptr inbounds ([27 x i8]* @.str66, i64 0, i64 0), i8* %call51, i64 %17) #7
  %call52 = call i8* @Perl_sv_reftype(%struct.sv* %sv, i32 0) #7
  %call53 = call i32 (i8*, i8*, ...)* @sprintf(i8* getelementptr inbounds ([80 x i8]* @store_other.buf, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8]* @.str67, i64 0, i64 0), i8* %call52, i64 %17, i32 0) #7
  %call54 = call i64 @strlen(i8* getelementptr inbounds ([80 x i8]* @store_other.buf, i64 0, i64 0)) #7
  %conv55 = trunc i64 %call54 to i32
  store i32 %conv55, i32* %len, align 4, !tbaa !3
  %cmp56 = icmp slt i32 %conv55, 256
  br i1 %cmp56, label %if.then58, label %if.else244

if.then58:                                        ; preds = %if.end
  %conv59 = trunc i64 %call54 to i8
  %fio = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %18 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool60 = icmp eq %struct._PerlIO** %18, null
  br i1 %tobool60, label %if.then61, label %if.else99

if.then61:                                        ; preds = %if.then58
  %aptr = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %19 = load i8** %aptr, align 8, !tbaa !0
  %aend = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %20 = load i8** %aend, align 8, !tbaa !0
  %cmp63 = icmp ult i8* %19, %20
  br i1 %cmp63, label %if.then65, label %if.else

if.then65:                                        ; preds = %if.then61
  %incdec.ptr = getelementptr inbounds i8* %19, i64 1
  store i8* %incdec.ptr, i8** %aptr, align 8, !tbaa !0
  store i8 10, i8* %19, align 1, !tbaa !1
  br label %if.end106

if.else:                                          ; preds = %if.then61
  %asiz = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %21 = load i64* %asiz, align 8, !tbaa !4
  %arena = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %22 = load i8** %arena, align 8, !tbaa !0
  %sub.ptr.lhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add69 = shl i64 %21, 32
  %conv71 = add i64 %add69, 35184372088832
  %sext673 = ashr exact i64 %conv71, 32
  %conv78 = and i64 %sext673, -8192
  %call79 = call i8* @Perl_safesysrealloc(i8* %22, i64 %conv78) #7
  store i8* %call79, i8** %arena, align 8, !tbaa !0
  store i64 %conv78, i64* %asiz, align 8, !tbaa !4
  %sext674 = shl i64 %sub.ptr.sub, 32
  %idx.ext = ashr exact i64 %sext674, 32
  %add.ptr = getelementptr inbounds i8* %call79, i64 %idx.ext
  %add.ptr92 = getelementptr inbounds i8* %call79, i64 %conv78
  store i8* %add.ptr92, i8** %aend, align 8, !tbaa !0
  %add.ptr.sum = add i64 %idx.ext, 1
  %incdec.ptr97 = getelementptr inbounds i8* %call79, i64 %add.ptr.sum
  store i8* %incdec.ptr97, i8** %aptr, align 8, !tbaa !0
  store i8 10, i8* %add.ptr, align 1, !tbaa !1
  br label %if.end106

if.else99:                                        ; preds = %if.then58
  %call101 = call i32 @PerlIO_putc(%struct._PerlIO** %18, i32 10) #7
  %cmp102 = icmp eq i32 %call101, -1
  br i1 %cmp102, label %return, label %if.end106

if.end106:                                        ; preds = %if.else99, %if.then65, %if.else
  %23 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool108 = icmp eq %struct._PerlIO** %23, null
  br i1 %tobool108, label %if.then109, label %if.else163

if.then109:                                       ; preds = %if.end106
  %aptr111 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %24 = load i8** %aptr111, align 8, !tbaa !0
  %aend113 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %25 = load i8** %aend113, align 8, !tbaa !0
  %cmp114 = icmp ult i8* %24, %25
  br i1 %cmp114, label %if.then116, label %if.else120

if.then116:                                       ; preds = %if.then109
  %incdec.ptr119 = getelementptr inbounds i8* %24, i64 1
  store i8* %incdec.ptr119, i8** %aptr111, align 8, !tbaa !0
  store i8 %conv59, i8* %24, align 1, !tbaa !1
  br label %if.end171

if.else120:                                       ; preds = %if.then109
  %asiz123 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %26 = load i64* %asiz123, align 8, !tbaa !4
  %arena132 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %27 = load i8** %arena132, align 8, !tbaa !0
  %sub.ptr.lhs.cast133 = ptrtoint i8* %24 to i64
  %sub.ptr.rhs.cast134 = ptrtoint i8* %27 to i64
  %sub.ptr.sub135 = sub i64 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134
  %add125 = shl i64 %26, 32
  %conv127 = add i64 %add125, 35184372088832
  %sext675 = ashr exact i64 %conv127, 32
  %conv139 = and i64 %sext675, -8192
  %call141 = call i8* @Perl_safesysrealloc(i8* %27, i64 %conv139) #7
  store i8* %call141, i8** %arena132, align 8, !tbaa !0
  store i64 %conv139, i64* %asiz123, align 8, !tbaa !4
  %sext676 = shl i64 %sub.ptr.sub135, 32
  %idx.ext149 = ashr exact i64 %sext676, 32
  %add.ptr150 = getelementptr inbounds i8* %call141, i64 %idx.ext149
  %add.ptr156 = getelementptr inbounds i8* %call141, i64 %conv139
  store i8* %add.ptr156, i8** %aend113, align 8, !tbaa !0
  %add.ptr150.sum = add i64 %idx.ext149, 1
  %incdec.ptr161 = getelementptr inbounds i8* %call141, i64 %add.ptr150.sum
  store i8* %incdec.ptr161, i8** %aptr111, align 8, !tbaa !0
  store i8 %conv59, i8* %add.ptr150, align 1, !tbaa !1
  br label %if.end171

if.else163:                                       ; preds = %if.end106
  %conv165 = and i32 %conv55, 255
  %call166 = call i32 @PerlIO_putc(%struct._PerlIO** %23, i32 %conv165) #7
  %cmp167 = icmp eq i32 %call166, -1
  br i1 %cmp167, label %return, label %if.end171

if.end171:                                        ; preds = %if.else163, %if.then116, %if.else120
  %28 = load i32* %len, align 4, !tbaa !3
  %tobool172 = icmp eq i32 %28, 0
  br i1 %tobool172, label %if.end532, label %if.then173

if.then173:                                       ; preds = %if.end171
  %29 = load %struct._PerlIO*** %fio, align 8, !tbaa !0
  %tobool175 = icmp eq %struct._PerlIO** %29, null
  br i1 %tobool175, label %if.then176, label %if.else233

if.then176:                                       ; preds = %if.then173
  %aptr178 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %30 = load i8** %aptr178, align 8, !tbaa !0
  %idx.ext179 = sext i32 %28 to i64
  %add.ptr180 = getelementptr inbounds i8* %30, i64 %idx.ext179
  %aend182 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %31 = load i8** %aend182, align 8, !tbaa !0
  %cmp183 = icmp ugt i8* %add.ptr180, %31
  br i1 %cmp183, label %if.then185, label %if.end225

if.then185:                                       ; preds = %if.then176
  %asiz189 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %32 = load i64* %asiz189, align 8, !tbaa !4
  %add190 = add i64 %32, %idx.ext179
  %arena198 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %33 = load i8** %arena198, align 8, !tbaa !0
  %sub.ptr.lhs.cast199 = ptrtoint i8* %30 to i64
  %sub.ptr.rhs.cast200 = ptrtoint i8* %33 to i64
  %sub.ptr.sub201 = sub i64 %sub.ptr.lhs.cast199, %sub.ptr.rhs.cast200
  %add191 = shl i64 %add190, 32
  %conv193 = add i64 %add191, 35180077121536
  %sext677 = ashr exact i64 %conv193, 32
  %conv205 = and i64 %sext677, -8192
  %call207 = call i8* @Perl_safesysrealloc(i8* %33, i64 %conv205) #7
  store i8* %call207, i8** %arena198, align 8, !tbaa !0
  store i64 %conv205, i64* %asiz189, align 8, !tbaa !4
  %sext678 = shl i64 %sub.ptr.sub201, 32
  %idx.ext215 = ashr exact i64 %sext678, 32
  %add.ptr216 = getelementptr inbounds i8* %call207, i64 %idx.ext215
  store i8* %add.ptr216, i8** %aptr178, align 8, !tbaa !0
  %add.ptr222 = getelementptr inbounds i8* %call207, i64 %conv205
  store i8* %add.ptr222, i8** %aend182, align 8, !tbaa !0
  %.pre = load i32* %len, align 4, !tbaa !3
  br label %if.end225

if.end225:                                        ; preds = %if.then185, %if.then176
  %34 = phi i32 [ %.pre, %if.then185 ], [ %28, %if.then176 ]
  %35 = phi i8* [ %add.ptr216, %if.then185 ], [ %30, %if.then176 ]
  %conv228 = sext i32 %34 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* getelementptr inbounds ([80 x i8]* @store_other.buf, i64 0, i64 0), i64 %conv228, i32 1, i1 false)
  %36 = load i32* %len, align 4, !tbaa !3
  %37 = load i8** %aptr178, align 8, !tbaa !0
  %idx.ext231 = sext i32 %36 to i64
  %add.ptr232 = getelementptr inbounds i8* %37, i64 %idx.ext231
  store i8* %add.ptr232, i8** %aptr178, align 8, !tbaa !0
  br label %if.end532

if.else233:                                       ; preds = %if.then173
  %conv235 = sext i32 %28 to i64
  %call236 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %29, i8* getelementptr inbounds ([80 x i8]* @store_other.buf, i64 0, i64 0), i64 %conv235) #7
  %38 = load i32* %len, align 4, !tbaa !3
  %conv237 = sext i32 %38 to i64
  %cmp238 = icmp eq i64 %call236, %conv237
  br i1 %cmp238, label %if.end532, label %return

if.else244:                                       ; preds = %if.end
  %fio245 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 23
  %39 = load %struct._PerlIO*** %fio245, align 8, !tbaa !0
  %tobool246 = icmp eq %struct._PerlIO** %39, null
  br i1 %tobool246, label %if.then247, label %if.else301

if.then247:                                       ; preds = %if.else244
  %aptr249 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %40 = load i8** %aptr249, align 8, !tbaa !0
  %aend251 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %41 = load i8** %aend251, align 8, !tbaa !0
  %cmp252 = icmp ult i8* %40, %41
  br i1 %cmp252, label %if.then254, label %if.else258

if.then254:                                       ; preds = %if.then247
  %incdec.ptr257 = getelementptr inbounds i8* %40, i64 1
  store i8* %incdec.ptr257, i8** %aptr249, align 8, !tbaa !0
  store i8 1, i8* %40, align 1, !tbaa !1
  br label %if.end308

if.else258:                                       ; preds = %if.then247
  %asiz261 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %42 = load i64* %asiz261, align 8, !tbaa !4
  %arena270 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %43 = load i8** %arena270, align 8, !tbaa !0
  %sub.ptr.lhs.cast271 = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast272 = ptrtoint i8* %43 to i64
  %sub.ptr.sub273 = sub i64 %sub.ptr.lhs.cast271, %sub.ptr.rhs.cast272
  %add263 = shl i64 %42, 32
  %conv265 = add i64 %add263, 35184372088832
  %sext = ashr exact i64 %conv265, 32
  %conv277 = and i64 %sext, -8192
  %call279 = call i8* @Perl_safesysrealloc(i8* %43, i64 %conv277) #7
  store i8* %call279, i8** %arena270, align 8, !tbaa !0
  store i64 %conv277, i64* %asiz261, align 8, !tbaa !4
  %sext666 = shl i64 %sub.ptr.sub273, 32
  %idx.ext287 = ashr exact i64 %sext666, 32
  %add.ptr288 = getelementptr inbounds i8* %call279, i64 %idx.ext287
  %add.ptr294 = getelementptr inbounds i8* %call279, i64 %conv277
  store i8* %add.ptr294, i8** %aend251, align 8, !tbaa !0
  %add.ptr288.sum = add i64 %idx.ext287, 1
  %incdec.ptr299 = getelementptr inbounds i8* %call279, i64 %add.ptr288.sum
  store i8* %incdec.ptr299, i8** %aptr249, align 8, !tbaa !0
  store i8 1, i8* %add.ptr288, align 1, !tbaa !1
  br label %if.end308

if.else301:                                       ; preds = %if.else244
  %call303 = call i32 @PerlIO_putc(%struct._PerlIO** %39, i32 1) #7
  %cmp304 = icmp eq i32 %call303, -1
  br i1 %cmp304, label %return, label %if.end308

if.end308:                                        ; preds = %if.else301, %if.then254, %if.else258
  %netorder = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 11
  %44 = load i32* %netorder, align 4, !tbaa !3
  %tobool309 = icmp eq i32 %44, 0
  br i1 %tobool309, label %if.else386, label %if.then310

if.then310:                                       ; preds = %if.end308
  %45 = load i32* %len, align 4, !tbaa !3
  %46 = call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %45) #3, !srcloc !43
  store i32 %46, i32* %y, align 4, !tbaa !3
  %47 = load %struct._PerlIO*** %fio245, align 8, !tbaa !0
  %tobool312 = icmp eq %struct._PerlIO** %47, null
  br i1 %tobool312, label %if.then313, label %if.else378

if.then313:                                       ; preds = %if.then310
  %aptr315 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %48 = load i8** %aptr315, align 8, !tbaa !0
  %add.ptr316 = getelementptr inbounds i8* %48, i64 4
  %aend318 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %49 = load i8** %aend318, align 8, !tbaa !0
  %cmp319 = icmp ugt i8* %add.ptr316, %49
  br i1 %cmp319, label %if.then321, label %if.end360

if.then321:                                       ; preds = %if.then313
  %asiz324 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %50 = load i64* %asiz324, align 8, !tbaa !4
  %arena333 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %51 = load i8** %arena333, align 8, !tbaa !0
  %sub.ptr.lhs.cast334 = ptrtoint i8* %48 to i64
  %sub.ptr.rhs.cast335 = ptrtoint i8* %51 to i64
  %sub.ptr.sub336 = sub i64 %sub.ptr.lhs.cast334, %sub.ptr.rhs.cast335
  %add326 = shl i64 %50, 32
  %conv328 = add i64 %add326, 35197256990720
  %sext671 = ashr exact i64 %conv328, 32
  %conv340 = and i64 %sext671, -8192
  %call342 = call i8* @Perl_safesysrealloc(i8* %51, i64 %conv340) #7
  store i8* %call342, i8** %arena333, align 8, !tbaa !0
  store i64 %conv340, i64* %asiz324, align 8, !tbaa !4
  %sext672 = shl i64 %sub.ptr.sub336, 32
  %idx.ext350 = ashr exact i64 %sext672, 32
  %add.ptr351 = getelementptr inbounds i8* %call342, i64 %idx.ext350
  store i8* %add.ptr351, i8** %aptr315, align 8, !tbaa !0
  %add.ptr357 = getelementptr inbounds i8* %call342, i64 %conv340
  store i8* %add.ptr357, i8** %aend318, align 8, !tbaa !0
  br label %if.end360

if.end360:                                        ; preds = %if.then321, %if.then313
  %52 = phi i8* [ %add.ptr351, %if.then321 ], [ %48, %if.then313 ]
  %53 = ptrtoint i8* %52 to i64
  %and365 = and i64 %53, -4
  %cmp366 = icmp eq i64 %53, %and365
  br i1 %cmp366, label %if.then368, label %if.else371

if.then368:                                       ; preds = %if.end360
  %54 = load i32* %y, align 4, !tbaa !3
  %55 = bitcast i8* %52 to i32*
  store i32 %54, i32* %55, align 4, !tbaa !3
  br label %if.end374

if.else371:                                       ; preds = %if.end360
  %56 = bitcast i8* %52 to i32*
  %57 = load i32* %y, align 4
  store i32 %57, i32* %56, align 1
  %.pre683 = load i8** %aptr315, align 8, !tbaa !0
  br label %if.end374

if.end374:                                        ; preds = %if.else371, %if.then368
  %58 = phi i8* [ %.pre683, %if.else371 ], [ %52, %if.then368 ]
  %add.ptr377 = getelementptr inbounds i8* %58, i64 4
  store i8* %add.ptr377, i8** %aptr315, align 8, !tbaa !0
  br label %if.end462

if.else378:                                       ; preds = %if.then310
  %59 = bitcast i32* %y to i8*
  %call380 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %47, i8* %59, i64 4) #7
  %cmp381 = icmp eq i64 %call380, 4
  br i1 %cmp381, label %if.end462, label %return

if.else386:                                       ; preds = %if.end308
  %60 = load %struct._PerlIO*** %fio245, align 8, !tbaa !0
  %tobool388 = icmp eq %struct._PerlIO** %60, null
  br i1 %tobool388, label %if.then389, label %if.else454

if.then389:                                       ; preds = %if.else386
  %aptr391 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %61 = load i8** %aptr391, align 8, !tbaa !0
  %add.ptr392 = getelementptr inbounds i8* %61, i64 4
  %aend394 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %62 = load i8** %aend394, align 8, !tbaa !0
  %cmp395 = icmp ugt i8* %add.ptr392, %62
  br i1 %cmp395, label %if.then397, label %if.end436

if.then397:                                       ; preds = %if.then389
  %asiz400 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %63 = load i64* %asiz400, align 8, !tbaa !4
  %arena409 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %64 = load i8** %arena409, align 8, !tbaa !0
  %sub.ptr.lhs.cast410 = ptrtoint i8* %61 to i64
  %sub.ptr.rhs.cast411 = ptrtoint i8* %64 to i64
  %sub.ptr.sub412 = sub i64 %sub.ptr.lhs.cast410, %sub.ptr.rhs.cast411
  %add402 = shl i64 %63, 32
  %conv404 = add i64 %add402, 35197256990720
  %sext669 = ashr exact i64 %conv404, 32
  %conv416 = and i64 %sext669, -8192
  %call418 = call i8* @Perl_safesysrealloc(i8* %64, i64 %conv416) #7
  store i8* %call418, i8** %arena409, align 8, !tbaa !0
  store i64 %conv416, i64* %asiz400, align 8, !tbaa !4
  %sext670 = shl i64 %sub.ptr.sub412, 32
  %idx.ext426 = ashr exact i64 %sext670, 32
  %add.ptr427 = getelementptr inbounds i8* %call418, i64 %idx.ext426
  store i8* %add.ptr427, i8** %aptr391, align 8, !tbaa !0
  %add.ptr433 = getelementptr inbounds i8* %call418, i64 %conv416
  store i8* %add.ptr433, i8** %aend394, align 8, !tbaa !0
  br label %if.end436

if.end436:                                        ; preds = %if.then397, %if.then389
  %65 = phi i8* [ %add.ptr427, %if.then397 ], [ %61, %if.then389 ]
  %66 = ptrtoint i8* %65 to i64
  %and441 = and i64 %66, -4
  %cmp442 = icmp eq i64 %66, %and441
  br i1 %cmp442, label %if.then444, label %if.else447

if.then444:                                       ; preds = %if.end436
  %67 = load i32* %len, align 4, !tbaa !3
  %68 = bitcast i8* %65 to i32*
  store i32 %67, i32* %68, align 4, !tbaa !3
  br label %if.end450

if.else447:                                       ; preds = %if.end436
  %69 = bitcast i8* %65 to i32*
  %70 = load i32* %len, align 4
  store i32 %70, i32* %69, align 1
  %.pre681 = load i8** %aptr391, align 8, !tbaa !0
  br label %if.end450

if.end450:                                        ; preds = %if.else447, %if.then444
  %71 = phi i8* [ %.pre681, %if.else447 ], [ %65, %if.then444 ]
  %add.ptr453 = getelementptr inbounds i8* %71, i64 4
  store i8* %add.ptr453, i8** %aptr391, align 8, !tbaa !0
  br label %if.end462

if.else454:                                       ; preds = %if.else386
  %72 = bitcast i32* %len to i8*
  %call456 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %60, i8* %72, i64 4) #7
  %cmp457 = icmp eq i64 %call456, 4
  br i1 %cmp457, label %if.end462, label %return

if.end462:                                        ; preds = %if.else454, %if.else378, %if.end450, %if.end374
  %73 = load %struct._PerlIO*** %fio245, align 8, !tbaa !0
  %tobool464 = icmp eq %struct._PerlIO** %73, null
  br i1 %tobool464, label %if.then465, label %if.else522

if.then465:                                       ; preds = %if.end462
  %aptr467 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 2
  %74 = load i8** %aptr467, align 8, !tbaa !0
  %75 = load i32* %len, align 4, !tbaa !3
  %idx.ext468 = sext i32 %75 to i64
  %add.ptr469 = getelementptr inbounds i8* %74, i64 %idx.ext468
  %aend471 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 3
  %76 = load i8** %aend471, align 8, !tbaa !0
  %cmp472 = icmp ugt i8* %add.ptr469, %76
  br i1 %cmp472, label %if.then474, label %if.end514

if.then474:                                       ; preds = %if.then465
  %asiz478 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 1
  %77 = load i64* %asiz478, align 8, !tbaa !4
  %add479 = add i64 %77, %idx.ext468
  %arena487 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 21, i32 0
  %78 = load i8** %arena487, align 8, !tbaa !0
  %sub.ptr.lhs.cast488 = ptrtoint i8* %74 to i64
  %sub.ptr.rhs.cast489 = ptrtoint i8* %78 to i64
  %sub.ptr.sub490 = sub i64 %sub.ptr.lhs.cast488, %sub.ptr.rhs.cast489
  %add480 = shl i64 %add479, 32
  %conv482 = add i64 %add480, 35180077121536
  %sext667 = ashr exact i64 %conv482, 32
  %conv494 = and i64 %sext667, -8192
  %call496 = call i8* @Perl_safesysrealloc(i8* %78, i64 %conv494) #7
  store i8* %call496, i8** %arena487, align 8, !tbaa !0
  store i64 %conv494, i64* %asiz478, align 8, !tbaa !4
  %sext668 = shl i64 %sub.ptr.sub490, 32
  %idx.ext504 = ashr exact i64 %sext668, 32
  %add.ptr505 = getelementptr inbounds i8* %call496, i64 %idx.ext504
  store i8* %add.ptr505, i8** %aptr467, align 8, !tbaa !0
  %add.ptr511 = getelementptr inbounds i8* %call496, i64 %conv494
  store i8* %add.ptr511, i8** %aend471, align 8, !tbaa !0
  %.pre682 = load i32* %len, align 4, !tbaa !3
  br label %if.end514

if.end514:                                        ; preds = %if.then474, %if.then465
  %79 = phi i32 [ %.pre682, %if.then474 ], [ %75, %if.then465 ]
  %80 = phi i8* [ %add.ptr505, %if.then474 ], [ %74, %if.then465 ]
  %conv517 = sext i32 %79 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %80, i8* getelementptr inbounds ([80 x i8]* @store_other.buf, i64 0, i64 0), i64 %conv517, i32 1, i1 false)
  %81 = load i32* %len, align 4, !tbaa !3
  %82 = load i8** %aptr467, align 8, !tbaa !0
  %idx.ext520 = sext i32 %81 to i64
  %add.ptr521 = getelementptr inbounds i8* %82, i64 %idx.ext520
  store i8* %add.ptr521, i8** %aptr467, align 8, !tbaa !0
  br label %if.end532

if.else522:                                       ; preds = %if.end462
  %83 = load i32* %len, align 4, !tbaa !3
  %conv524 = sext i32 %83 to i64
  %call525 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %73, i8* getelementptr inbounds ([80 x i8]* @store_other.buf, i64 0, i64 0), i64 %conv524) #7
  %84 = load i32* %len, align 4, !tbaa !3
  %conv526 = sext i32 %84 to i64
  %cmp527 = icmp eq i64 %call525, %conv526
  br i1 %cmp527, label %if.end532, label %return

if.end532:                                        ; preds = %if.else233, %if.end171, %if.else522, %if.end514, %if.end225
  br label %return

return:                                           ; preds = %if.else522, %if.else454, %if.else378, %if.else301, %if.else233, %if.else163, %if.else99, %if.end532
  %retval.0 = phi i32 [ 0, %if.end532 ], [ -1, %if.else99 ], [ -1, %if.else163 ], [ -1, %if.else233 ], [ -1, %if.else301 ], [ -1, %if.else378 ], [ -1, %if.else454 ], [ -1, %if.else522 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Perl_warn(i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #5

; Function Attrs: optsize
declare void @Perl_load_module(i32, %struct.sv*, %struct.sv*, ...) #2

; Function Attrs: optsize
declare i32 @Perl_call_method(i8*, i32) #2

; Function Attrs: optsize
declare %struct.he* @Perl_hv_iternext_flags(%struct.hv*, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterkeysv(%struct.he*) #2

; Function Attrs: optsize
declare void @Perl_sortsv(%struct.sv**, i64, i32 (%struct.sv*, %struct.sv*)*) #2

; Function Attrs: optsize
declare i32 @Perl_sv_cmp(%struct.sv*, %struct.sv*) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_av_shift(%struct.av*) #2

; Function Attrs: optsize
declare %struct.he* @Perl_hv_fetch_ent(%struct.hv*, %struct.sv*, i32, i32) #2

; Function Attrs: optsize
declare %struct.sv* @Perl_hv_iterval(%struct.hv*, %struct.he*) #2

; Function Attrs: optsize
declare i32 @Perl_av_len(%struct.av*) #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv(%struct.sv*) #2

; Function Attrs: optsize
declare double @Perl_sv_2nv(%struct.sv*) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @known_class(%struct.stcxt* nocapture %cxt, i8* %name, i32 %len, i32* nocapture %classnum) #1 {
entry:
  %hclass1 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 6
  %0 = load %struct.hv** %hclass1, align 8, !tbaa !0
  %call = tail call %struct.sv** @Perl_hv_fetch(%struct.hv* %0, i8* %name, i32 %len, i32 0) #7
  %tobool = icmp eq %struct.sv** %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.sv** %call, align 8, !tbaa !0
  %2 = ptrtoint %struct.sv* %1 to i64
  %and = and i64 %2, 4294967295
  br label %return

if.end:                                           ; preds = %entry
  %classnum2 = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 10
  %3 = load i64* %classnum2, align 8, !tbaa !4
  %inc = add nsw i64 %3, 1
  store i64 %inc, i64* %classnum2, align 8, !tbaa !4
  %4 = inttoptr i64 %inc to %struct.sv*
  %call4 = tail call %struct.sv** @Perl_hv_store(%struct.hv* %0, i8* %name, i32 %len, %struct.sv* %4, i32 0) #7
  %tobool5 = icmp eq %struct.sv** %call4, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %s_dirty = getelementptr inbounds %struct.stcxt* %cxt, i64 0, i32 18
  store i32 1, i32* %s_dirty, align 4, !tbaa !3
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str83, i64 0, i64 0)) #7
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then6
  %5 = load i64* %classnum2, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.end7, %if.then
  %storemerge.in = phi i64 [ %5, %if.end7 ], [ %and, %if.then ]
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 1, %if.then ]
  %storemerge = trunc i64 %storemerge.in to i32
  store i32 %storemerge, i32* %classnum, align 4, !tbaa !3
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{i64 0, i64 8, metadata !0, i64 8, i64 8, metadata !4, i64 16, i64 8, metadata !0, i64 24, i64 8, metadata !0}
!6 = metadata !{metadata !"double", metadata !1}
!7 = metadata !{i32 -2144907402}
!8 = metadata !{i32 -2144903147}
!9 = metadata !{i32 -2144966711}
!10 = metadata !{i32 -2144924129}
!11 = metadata !{i32 -2144921241}
!12 = metadata !{i32 -2144917802}
!13 = metadata !{i32 -2144956676}
!14 = metadata !{i32 -2144946353}
!15 = metadata !{i32 -2144943834}
!16 = metadata !{i32 -2144941316}
!17 = metadata !{i32 -2144996310}
!18 = metadata !{i32 -2144998242}
!19 = metadata !{i32 -2144991836}
!20 = metadata !{i32 -2144989899}
!21 = metadata !{i32 -2144987557}
!22 = metadata !{i32 -2144983738}
!23 = metadata !{i32 -2144981879}
!24 = metadata !{i32 -2144968143}
!25 = metadata !{i32 -2144938512}
!26 = metadata !{i32 -2144935436}
!27 = metadata !{i32 -2145006360}
!28 = metadata !{i32 -2145063009}
!29 = metadata !{i32 -2145057775}
!30 = metadata !{i32 -2145051196}
!31 = metadata !{i32 -2145044475}
!32 = metadata !{i32 -2145039574}
!33 = metadata !{i32 -2145032469}
!34 = metadata !{i32 -2145024606}
!35 = metadata !{i32 -2145153050}
!36 = metadata !{i32 -2145141969}
!37 = metadata !{i32 -2145135085}
!38 = metadata !{i32 -2145125351}
!39 = metadata !{i32 -2145117382}
!40 = metadata !{i32 -2145109858}
!41 = metadata !{i32 -2145079180}
!42 = metadata !{i32 -2145092278}
!43 = metadata !{i32 -2145011806}

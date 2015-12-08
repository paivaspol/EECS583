; ModuleID = '../../SPEC/benchspec/CPU2006/400.perlbench/src/perlio.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PerlIO = type { %struct._PerlIO*, %struct._PerlIO_funcs*, i32 }
%struct._PerlIO_funcs = type { i64, i8*, i64, i32, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)*, i64 (%struct._PerlIO**)*, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)*, i64 (%struct._PerlIO**)*, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)*, i64 (%struct._PerlIO**)*, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i8*, i64)*, i64 (%struct._PerlIO**, i64, i32)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, void (%struct._PerlIO**)*, void (%struct._PerlIO**)*, i8* (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, i8* (%struct._PerlIO**)*, i64 (%struct._PerlIO**)*, void (%struct._PerlIO**, i8*, i64)* }
%struct.sv = type { i8*, i32, i32 }
%struct.PerlIO_list_s = type { i64, i64, i64, %struct.PerlIO_pair_t* }
%struct.PerlIO_pair_t = type { %struct._PerlIO_funcs*, %struct.sv* }
%struct.clone_params = type { %struct.av*, i64, %struct.interpreter* }
%struct.av = type { %struct.xpvav*, i32, i32 }
%struct.xpvav = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.sv**, %struct.sv*, i8 }
%struct.magic = type { %struct.magic*, %struct.mgvtbl*, i16, i8, i8, %struct.sv*, i8*, i32 }
%struct.mgvtbl = type { i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*)*, i32 (%struct.sv*, %struct.magic*, %struct.sv*, i8*, i32)*, i32 (%struct.magic*, %struct.clone_params*)* }
%struct.hv = type { %struct.xpvhv*, i32, i32 }
%struct.xpvhv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, i32, %struct.he*, %struct.pmop*, i8* }
%struct.he = type { %struct.he*, %struct.hek*, %struct.sv* }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.pmop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, %struct.op*, %struct.op*, %struct.op*, %struct.op*, %struct.pmop*, %struct.regexp*, i32, i32, i8, %struct.hv* }
%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }
%struct.regexp = type { i32*, i32*, %struct.regnode*, %struct.reg_substr_data*, i8*, %struct.reg_data*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.regnode] }
%struct.regnode = type { i8, i8, i16 }
%struct.reg_substr_data = type opaque
%struct.reg_data = type opaque
%struct.interpreter = type { i8 }
%struct.xpv = type { i8*, i64, i64 }
%struct.cop = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8, i8*, %struct.hv*, %struct.gv*, i32, i32, i32, %struct.sv*, %struct.sv* }
%struct.gv = type { %struct.xpvgv*, i32, i32 }
%struct.xpvgv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.gp*, i8*, i64, %struct.hv*, i8 }
%struct.gp = type { %struct.sv*, i32, %struct.io*, %struct.cv*, %struct.av*, %struct.hv*, %struct.gv*, %struct.cv*, i32, i32, i32, i8* }
%struct.io = type { %struct.xpvio*, i32, i32 }
%struct.xpvio = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct._PerlIO**, %struct._PerlIO**, %union.anon, i64, i64, i64, i64, i8*, %struct.gv*, i8*, %struct.gv*, i8*, %struct.gv*, i16, i8, i8 }
%union.anon = type { %struct.__dirstream* }
%struct.__dirstream = type opaque
%struct.cv = type { %struct.xpvcv*, i32, i32 }
%struct.xpvcv = type { i8*, i64, i64, i64, double, %struct.magic*, %struct.hv*, %struct.hv*, %struct.op*, %struct.op*, void (%struct.cv*)*, %union.any, %struct.gv*, i8*, i64, %struct.av*, %struct.cv*, i16, i32 }
%union.any = type { i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.PerlIOUnix = type { %struct._PerlIO, i32, i32 }

@PL_perlio = external global %struct._PerlIO**
@PL_Sv = external global %struct.sv*
@PL_sv_undef = external global %struct.sv
@PL_known_layers = external global %struct.PerlIO_list_s*
@PL_subname = external global %struct.sv*
@PL_def_layerlist = external global %struct.PerlIO_list_s*
@PL_in_load_module = external global i32
@.str4 = private unnamed_addr constant [56 x i8] c"Recursive call to Perl_load_module in PerlIO_find_layer\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"PerlIO\00", align 1
@.str6 = private unnamed_addr constant [26 x i8] c"PerlIO::Layer::NoWarnings\00", align 1
@PL_warnhook = external global %struct.sv*
@.str8 = private unnamed_addr constant [14 x i8] c"PerlIO::Layer\00", align 1
@PL_stack_sp = external global %struct.sv**
@PL_stack_base = external global %struct.sv**
@PL_markstack_ptr = external global i32*
@.str10 = private unnamed_addr constant [31 x i8] c"Usage class->find(name[,load])\00", align 1
@PL_Xpv = external global %struct.xpv*
@PL_curcop = external global %struct.cop*
@PL_dowarn = external global i8
@.str12 = private unnamed_addr constant [68 x i8] c"Invalid separator character %c%c%c in PerlIO layer specification %s\00", align 1
@.str13 = private unnamed_addr constant [49 x i8] c"Argument list not closed for PerlIO layer \22%.*s\22\00", align 1
@.str14 = private unnamed_addr constant [28 x i8] c"Unknown PerlIO layer \22%.*s\22\00", align 1
@PerlIO_perlio = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([7 x i8]* @.str42, i32 0, i32 0), i64 72, i32 3, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOBuf_pushed, i64 (%struct._PerlIO**)* @PerlIOBuf_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIOBuf_open, i64 (%struct._PerlIO**)* @PerlIOBase_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOBase_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOBuf_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOBuf_seek, i64 (%struct._PerlIO**)* @PerlIOBuf_tell, i64 (%struct._PerlIO**)* @PerlIOBuf_close, i64 (%struct._PerlIO**)* @PerlIOBuf_flush, i64 (%struct._PerlIO**)* @PerlIOBuf_fill, i64 (%struct._PerlIO**)* @PerlIOBase_eof, i64 (%struct._PerlIO**)* @PerlIOBase_error, void (%struct._PerlIO**)* @PerlIOBase_clearerr, void (%struct._PerlIO**)* @PerlIOBase_setlinebuf, i8* (%struct._PerlIO**)* @PerlIOBuf_get_base, i64 (%struct._PerlIO**)* @PerlIOBuf_bufsiz, i8* (%struct._PerlIO**)* @PerlIOBuf_get_ptr, i64 (%struct._PerlIO**)* @PerlIOBuf_get_cnt, void (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_set_ptrcnt }, align 8
@PerlIO_stdio = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([6 x i8]* @.str41, i32 0, i32 0), i64 32, i32 3, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOStdio_pushed, i64 (%struct._PerlIO**)* @PerlIOBase_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIOStdio_open, i64 (%struct._PerlIO**)* @PerlIOBase_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOStdio_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOStdio_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOStdio_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOStdio_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOStdio_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOStdio_seek, i64 (%struct._PerlIO**)* @PerlIOStdio_tell, i64 (%struct._PerlIO**)* @PerlIOStdio_close, i64 (%struct._PerlIO**)* @PerlIOStdio_flush, i64 (%struct._PerlIO**)* @PerlIOStdio_fill, i64 (%struct._PerlIO**)* @PerlIOStdio_eof, i64 (%struct._PerlIO**)* @PerlIOStdio_error, void (%struct._PerlIO**)* @PerlIOStdio_clearerr, void (%struct._PerlIO**)* @PerlIOStdio_setlinebuf, i8* (%struct._PerlIO**)* @PerlIOStdio_get_base, i64 (%struct._PerlIO**)* @PerlIOStdio_get_bufsiz, i8* (%struct._PerlIO**)* @PerlIOStdio_get_ptr, i64 (%struct._PerlIO**)* @PerlIOStdio_get_cnt, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@.str17 = private unnamed_addr constant [34 x i8] c"panic: PerlIO layer array corrupt\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@PerlIO_remove = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), i64 0, i32 32784, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOPop_pushed, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* null, i64 (%struct._PerlIO**)* null, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i64, i32)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@PerlIO_unix = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([5 x i8]* @.str38, i32 0, i32 0), i64 32, i32 1, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOUnix_pushed, i64 (%struct._PerlIO**)* @PerlIOBase_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIOUnix_open, i64 (%struct._PerlIO**)* @PerlIOBase_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOUnix_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOUnix_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOUnix_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBase_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOUnix_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOUnix_seek, i64 (%struct._PerlIO**)* @PerlIOUnix_tell, i64 (%struct._PerlIO**)* @PerlIOUnix_close, i64 (%struct._PerlIO**)* @PerlIOBase_noop_ok, i64 (%struct._PerlIO**)* @PerlIOBase_noop_fail, i64 (%struct._PerlIO**)* @PerlIOBase_eof, i64 (%struct._PerlIO**)* @PerlIOBase_error, void (%struct._PerlIO**)* @PerlIOBase_clearerr, void (%struct._PerlIO**)* @PerlIOBase_setlinebuf, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@PerlIO_raw = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([4 x i8]* @.str33, i32 0, i32 0), i64 0, i32 16, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIORaw_pushed, i64 (%struct._PerlIO**)* @PerlIOBase_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIORaw_open, i64 (%struct._PerlIO**)* null, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i64, i32)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@PerlIO_crlf = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([5 x i8]* @.str44, i32 0, i32 0), i64 80, i32 7, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOCrlf_pushed, i64 (%struct._PerlIO**)* @PerlIOBuf_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* @PerlIOBuf_open, i64 (%struct._PerlIO**)* @PerlIOCrlf_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOBase_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOBuf_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOCrlf_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOCrlf_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOBuf_seek, i64 (%struct._PerlIO**)* @PerlIOBuf_tell, i64 (%struct._PerlIO**)* @PerlIOBuf_close, i64 (%struct._PerlIO**)* @PerlIOCrlf_flush, i64 (%struct._PerlIO**)* @PerlIOBuf_fill, i64 (%struct._PerlIO**)* @PerlIOBase_eof, i64 (%struct._PerlIO**)* @PerlIOBase_error, void (%struct._PerlIO**)* @PerlIOBase_clearerr, void (%struct._PerlIO**)* @PerlIOBase_setlinebuf, i8* (%struct._PerlIO**)* @PerlIOBuf_get_base, i64 (%struct._PerlIO**)* @PerlIOBuf_bufsiz, i8* (%struct._PerlIO**)* @PerlIOBuf_get_ptr, i64 (%struct._PerlIO**)* @PerlIOCrlf_get_cnt, void (%struct._PerlIO**, i8*, i64)* @PerlIOCrlf_set_ptrcnt }, align 8
@PerlIO_utf8 = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([5 x i8]* @.str31, i32 0, i32 0), i64 0, i32 32784, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOUtf8_pushed, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* null, i64 (%struct._PerlIO**)* null, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i64, i32)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@PerlIO_byte = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([6 x i8]* @.str32, i32 0, i32 0), i64 0, i32 16, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOUtf8_pushed, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* null, i64 (%struct._PerlIO**)* null, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* null, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i8*, i64)* null, i64 (%struct._PerlIO**, i64, i32)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, void (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, i8* (%struct._PerlIO**)* null, i64 (%struct._PerlIO**)* null, void (%struct._PerlIO**, i8*, i64)* null }, align 8
@.str19 = private unnamed_addr constant [20 x i8] c"PerlIO::Layer::find\00", align 1
@.str20 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/400.perlbench/src/perlio.c\00", align 1
@.str21 = private unnamed_addr constant [3 x i8] c"Ir\00", align 1
@.str22 = private unnamed_addr constant [3 x i8] c"Iw\00", align 1
@.str23 = private unnamed_addr constant [31 x i8] c"Layer does not match this perl\00", align 1
@.str25 = private unnamed_addr constant [7 x i8] c"(Null)\00", align 1
@.str28 = private unnamed_addr constant [39 x i8] c"More than one argument to open(,':%s')\00", align 1
@.str31 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str32 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str33 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@PerlIO_pending = global %struct._PerlIO_funcs { i64 224, i8* getelementptr inbounds ([8 x i8]* @.str43, i32 0, i32 0), i64 72, i32 3, i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* @PerlIOPending_pushed, i64 (%struct._PerlIO**)* @PerlIOBuf_popped, %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* null, i64 (%struct._PerlIO**)* @PerlIOBase_binmode, %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* null, i64 (%struct._PerlIO**)* @PerlIOBase_fileno, %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* @PerlIOBuf_dup, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOPending_read, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_unread, i64 (%struct._PerlIO**, i8*, i64)* @PerlIOBuf_write, i64 (%struct._PerlIO**, i64, i32)* @PerlIOPending_seek, i64 (%struct._PerlIO**)* @PerlIOBuf_tell, i64 (%struct._PerlIO**)* @PerlIOPending_close, i64 (%struct._PerlIO**)* @PerlIOPending_flush, i64 (%struct._PerlIO**)* @PerlIOPending_fill, i64 (%struct._PerlIO**)* @PerlIOBase_eof, i64 (%struct._PerlIO**)* @PerlIOBase_error, void (%struct._PerlIO**)* @PerlIOBase_clearerr, void (%struct._PerlIO**)* @PerlIOBase_setlinebuf, i8* (%struct._PerlIO**)* @PerlIOBuf_get_base, i64 (%struct._PerlIO**)* @PerlIOBuf_bufsiz, i8* (%struct._PerlIO**)* @PerlIOBuf_get_ptr, i64 (%struct._PerlIO**)* @PerlIOBuf_get_cnt, void (%struct._PerlIO**, i8*, i64)* @PerlIOPending_set_ptrcnt }, align 8
@.str34 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PerlIO_fd_refcnt = common global [2048 x i32] zeroinitializer, align 16
@PL_sig_pending = external global i32
@.str38 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str39 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdin = external global %struct._IO_FILE*
@stdout = external global %struct._IO_FILE*
@stderr = external global %struct._IO_FILE*
@.str41 = private unnamed_addr constant [6 x i8] c"stdio\00", align 1
@.str42 = private unnamed_addr constant [7 x i8] c"perlio\00", align 1
@.str43 = private unnamed_addr constant [8 x i8] c"pending\00", align 1
@.str44 = private unnamed_addr constant [5 x i8] c"crlf\00", align 1
@.str45 = private unnamed_addr constant [32 x i8] c"Don't know how to get file name\00", align 1
@.str46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str47 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@PL_stderrgv = external global %struct.gv*
@.str48 = private unnamed_addr constant [45 x i8] c"panic: sprintf overflow - memory corrupted!\0A\00", align 1
@.str49 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str50 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str51 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@.str52 = private unnamed_addr constant [5 x i8] c"Code\00", align 1
@.str53 = private unnamed_addr constant [5 x i8] c"Glob\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i32 @perlsio_binmode(%struct._IO_FILE* nocapture %fp, i32 %iotype, i32 %mode) #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_intmode2str(i32 %rawmode, i8* nocapture %mode, i32* %writing) #1 {
entry:
  %and = and i32 %rawmode, 3
  switch i32 %and, label %sw.default [
    i32 0, label %sw.epilog
    i32 1, label %sw.bb1
  ]

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.default, %sw.bb1
  %ptype.0 = phi i32 [ 43, %sw.default ], [ 62, %sw.bb1 ], [ 60, %entry ]
  %tobool = icmp eq i32* %writing, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %writing, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  store i8 114, i8* %mode, align 1, !tbaa !1
  br label %if.end42

if.else:                                          ; preds = %if.end
  %and6 = and i32 %rawmode, 1024
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.else19, label %if.then8

if.then8:                                         ; preds = %if.else
  store i8 97, i8* %mode, align 1, !tbaa !1
  %cmp12 = icmp eq i32 %and, 1
  br i1 %cmp12, label %if.end42, label %if.then14

if.then14:                                        ; preds = %if.then8
  %arrayidx17 = getelementptr inbounds i8* %mode, i64 1
  store i8 43, i8* %arrayidx17, align 1, !tbaa !1
  br label %if.end42

if.else19:                                        ; preds = %if.else
  %cmp20 = icmp eq i32 %and, 1
  br i1 %cmp20, label %if.then22, label %if.else26

if.then22:                                        ; preds = %if.else19
  store i8 119, i8* %mode, align 1, !tbaa !1
  br label %if.end42

if.else26:                                        ; preds = %if.else19
  store i8 114, i8* %mode, align 1, !tbaa !1
  %arrayidx32 = getelementptr inbounds i8* %mode, i64 1
  store i8 43, i8* %arrayidx32, align 1, !tbaa !1
  br label %if.end42

if.end42:                                         ; preds = %if.then5, %if.then22, %if.else26, %if.then14, %if.then8
  %ix.0 = phi i64 [ 1, %if.then5 ], [ 2, %if.then14 ], [ 1, %if.then8 ], [ 1, %if.then22 ], [ 2, %if.else26 ]
  %arrayidx44 = getelementptr inbounds i8* %mode, i64 %ix.0
  store i8 0, i8* %arrayidx44, align 1, !tbaa !1
  ret i32 %ptype.0
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_debug(i8* nocapture %fmt, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  call void @llvm.va_end(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_allocate() #1 {
entry:
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool16 = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool16, label %while.end, label %while.body

while.cond.loopexit:                              ; preds = %for.cond
  %1 = load %struct._PerlIO** %3, align 8
  %2 = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 0
  %tobool = icmp eq %struct._PerlIO* %1, null
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.loopexit
  %3 = phi %struct._PerlIO** [ %2, %while.cond.loopexit ], [ %0, %entry ]
  %4 = bitcast %struct._PerlIO** %3 to %struct._PerlIO***
  br label %for.body

for.cond:                                         ; preds = %for.body
  %cmp = icmp slt i32 %inc, 64
  br i1 %cmp, label %for.body, label %while.cond.loopexit

for.body:                                         ; preds = %while.body, %for.cond
  %i.014 = phi i32 [ 1, %while.body ], [ %inc, %for.cond ]
  %f.013 = phi %struct._PerlIO** [ %3, %while.body ], [ %incdec.ptr, %for.cond ]
  %incdec.ptr = getelementptr inbounds %struct._PerlIO** %f.013, i64 1
  %5 = load %struct._PerlIO** %incdec.ptr, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %5, null
  %inc = add nsw i32 %i.014, 1
  br i1 %tobool1, label %return, label %for.cond

while.end:                                        ; preds = %while.cond.loopexit, %entry
  %last.0.lcssa = phi %struct._PerlIO*** [ @PL_perlio, %entry ], [ %4, %while.cond.loopexit ]
  %call = tail call i8* @Perl_safesysmalloc(i64 512) #9
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 512, i32 1, i1 false)
  %tobool2 = icmp eq i8* %call, null
  br i1 %tobool2, label %return, label %if.end4

if.end4:                                          ; preds = %while.end
  %6 = bitcast i8* %call to %struct._PerlIO**
  store %struct._PerlIO** %6, %struct._PerlIO*** %last.0.lcssa, align 8, !tbaa !3
  %add.ptr = getelementptr inbounds i8* %call, i64 8
  %7 = bitcast i8* %add.ptr to %struct._PerlIO**
  br label %return

return:                                           ; preds = %for.body, %while.end, %if.end4
  %retval.0 = phi %struct._PerlIO** [ %7, %if.end4 ], [ null, %while.end ], [ %incdec.ptr, %for.body ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: optsize
declare i8* @Perl_safesysmalloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_fdupopen(%struct._PerlIO** %f, %struct.clone_params* %param, i32 %flags) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else11, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else11, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, %struct._PerlIO** %f, %struct.clone_params* %param) #10
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Dup = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 10
  %2 = load %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)** %Dup, align 8, !tbaa !3
  %tobool5 = icmp eq %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* %2, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call %struct._PerlIO** @PerlIO_allocate() #10
  %call8 = tail call %struct._PerlIO** %2(%struct._PerlIO** %call, %struct._PerlIO** %f, %struct.clone_params* %param, i32 %flags) #9
  br label %return

if.else:                                          ; preds = %land.lhs.true4, %if.then
  %call9 = tail call %struct._PerlIO** @PerlIO_allocate() #10
  %call10 = tail call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %call9, %struct._PerlIO** %f, %struct.clone_params* %param, i32 %flags) #10
  br label %return

if.else11:                                        ; preds = %land.lhs.true, %entry
  %call12 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call12, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.else11, %if.else, %if.then6
  %retval.0 = phi %struct._PerlIO** [ %call8, %if.then6 ], [ %call10, %if.else ], [ null, %if.else11 ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #1 {
entry:
  %buf = alloca [8 x i8], align 1
  %0 = load %struct._PerlIO** %o, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %tobool = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool, label %if.end9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %1, null
  br i1 %tobool1, label %if.end9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %2, null
  br i1 %tobool3, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Dup = getelementptr inbounds %struct._PerlIO_funcs* %2, i64 0, i32 10
  %3 = load %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)** %Dup, align 8, !tbaa !3
  %tobool5 = icmp eq %struct._PerlIO** (%struct._PerlIO**, %struct._PerlIO**, %struct.clone_params*, i32)* %3, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = call %struct._PerlIO** %3(%struct._PerlIO** %f, %struct._PerlIO** %next, %struct.clone_params* %param, i32 %flags) #9
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true4, %if.then
  %call8 = call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %f, %struct._PerlIO** %next, %struct.clone_params* %param, i32 %flags) #10
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %entry, %if.then6, %if.else
  %f.addr.0 = phi %struct._PerlIO** [ %call, %if.then6 ], [ %call8, %if.else ], [ %f, %land.lhs.true ], [ %f, %entry ]
  %tobool10 = icmp eq %struct._PerlIO** %f.addr.0, null
  br i1 %tobool10, label %if.end24, label %if.then11

if.then11:                                        ; preds = %if.end9
  %4 = load %struct._PerlIO** %o, align 8, !tbaa !3
  %tab12 = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 1
  %5 = load %struct._PerlIO_funcs** %tab12, align 8, !tbaa !3
  %name = getelementptr inbounds %struct._PerlIO_funcs* %5, i64 0, i32 1
  %6 = load i8** %name, align 8, !tbaa !3
  call void (i8*, ...)* @PerlIO_debug(i8* undef, i8* %6, %struct._PerlIO** %f.addr.0, %struct._PerlIO** %o, %struct.clone_params* %param) #10
  %Getarg = getelementptr inbounds %struct._PerlIO_funcs* %5, i64 0, i32 8
  %7 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg, align 8, !tbaa !3
  %tobool13 = icmp eq %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* %7, null
  br i1 %tobool13, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.then11
  %call16 = call %struct.sv* %7(%struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.then14
  %arg.0 = phi %struct.sv* [ %call16, %if.then14 ], [ null, %if.then11 ]
  %arraydecay = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 0
  %call19 = call i8* @PerlIO_modestr(%struct._PerlIO** %o, i8* %arraydecay) #10
  %call20 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f.addr.0, %struct._PerlIO_funcs* %5, i8* %call19, %struct.sv* %arg.0) #10
  %tobool21 = icmp eq %struct.sv* %arg.0, null
  br i1 %tobool21, label %if.end24, label %if.then22

if.then22:                                        ; preds = %if.end18
  call void @Perl_sv_free(%struct.sv* %arg.0) #9
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %if.end9, %if.then22
  %f.addr.1 = phi %struct._PerlIO** [ %call20, %if.then22 ], [ %call20, %if.end18 ], [ null, %if.end9 ]
  ret %struct._PerlIO** %f.addr.1
}

; Function Attrs: optsize
declare i32* @__errno_location() #3

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_cleantable(%struct._PerlIO*** nocapture %tablep) #1 {
entry:
  %0 = load %struct._PerlIO*** %tablep, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._PerlIO** %0 to %struct._PerlIO***
  tail call void @PerlIO_cleantable(%struct._PerlIO*** %1) #10
  br label %for.body

for.body:                                         ; preds = %if.then, %for.inc
  %indvars.iv = phi i64 [ 63, %if.then ], [ %indvars.iv.next, %for.inc ]
  %add.ptr = getelementptr inbounds %struct._PerlIO** %0, i64 %indvars.iv
  %2 = load %struct._PerlIO** %add.ptr, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %2, null
  br i1 %tobool1, label %for.inc, label %if.then2

if.then2:                                         ; preds = %for.body
  %call = tail call i32 @Perl_PerlIO_close(%struct._PerlIO** %add.ptr) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then2
  %indvars.iv.next = add i64 %indvars.iv, -1
  %3 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %4 = bitcast %struct._PerlIO** %0 to i8*
  tail call void @Perl_safesysfree(i8* %4) #9
  store %struct._PerlIO** null, %struct._PerlIO*** %tablep, align 8, !tbaa !3
  br label %if.end3

if.end3:                                          ; preds = %entry, %for.end
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_close(%struct._PerlIO** %f) #1 {
entry:
  %call = tail call i32 @PerlIO__close(%struct._PerlIO** %f) #10
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %while.end, label %land.rhs

land.rhs:                                         ; preds = %while.body, %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %while.end, label %while.body

while.body:                                       ; preds = %land.rhs
  tail call void @PerlIO_pop(%struct._PerlIO** %f) #10
  br label %land.rhs

while.end:                                        ; preds = %land.rhs, %entry
  ret i32 %call
}

; Function Attrs: optsize
declare void @Perl_safesysfree(i8*) #3

; Function Attrs: nounwind optsize uwtable
define %struct.PerlIO_list_s* @PerlIO_list_alloc() #1 {
entry:
  %call = tail call i8* @Perl_safesysmalloc(i64 32) #9
  %0 = bitcast i8* %call to %struct.PerlIO_list_s*
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 32, i32 1, i1 false)
  %refcnt = bitcast i8* %call to i64*
  store i64 1, i64* %refcnt, align 8, !tbaa !4
  ret %struct.PerlIO_list_s* %0
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_list_free(%struct.PerlIO_list_s* %Perl_list) #1 {
entry:
  %tobool = icmp eq %struct.PerlIO_list_s* %Perl_list, null
  br i1 %tobool, label %if.end14, label %if.then

if.then:                                          ; preds = %entry
  %refcnt = getelementptr inbounds %struct.PerlIO_list_s* %Perl_list, i64 0, i32 0
  %0 = load i64* %refcnt, align 8, !tbaa !4
  %dec = add nsw i64 %0, -1
  store i64 %dec, i64* %refcnt, align 8, !tbaa !4
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.then1, label %if.end14

if.then1:                                         ; preds = %if.then
  %array = getelementptr inbounds %struct.PerlIO_list_s* %Perl_list, i64 0, i32 3
  %1 = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  %tobool2 = icmp eq %struct.PerlIO_pair_t* %1, null
  br i1 %tobool2, label %if.end12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then1
  %cur = getelementptr inbounds %struct.PerlIO_list_s* %Perl_list, i64 0, i32 1
  %2 = load i64* %cur, align 8, !tbaa !4
  %cmp425 = icmp sgt i64 %2, 0
  br i1 %cmp425, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %3 = phi i64 [ %7, %for.inc ], [ %2, %for.cond.preheader ]
  %4 = phi %struct.PerlIO_pair_t* [ %6, %for.inc ], [ %1, %for.cond.preheader ]
  %i.026 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %arg = getelementptr inbounds %struct.PerlIO_pair_t* %4, i64 %i.026, i32 1
  %5 = load %struct.sv** %arg, align 8, !tbaa !3
  %tobool6 = icmp eq %struct.sv* %5, null
  br i1 %tobool6, label %for.inc, label %if.then7

if.then7:                                         ; preds = %for.body
  tail call void @Perl_sv_free(%struct.sv* %5) #9
  %.pre = load i64* %cur, align 8, !tbaa !4
  %.pre28 = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then7
  %6 = phi %struct.PerlIO_pair_t* [ %4, %for.body ], [ %.pre28, %if.then7 ]
  %7 = phi i64 [ %3, %for.body ], [ %.pre, %if.then7 ]
  %inc = add nsw i64 %i.026, 1
  %cmp4 = icmp slt i64 %inc, %7
  br i1 %cmp4, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %.lcssa = phi %struct.PerlIO_pair_t* [ %1, %for.cond.preheader ], [ %6, %for.inc ]
  %8 = bitcast %struct.PerlIO_pair_t* %.lcssa to i8*
  tail call void @Perl_safesysfree(i8* %8) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then1, %for.end
  %9 = bitcast %struct.PerlIO_list_s* %Perl_list to i8*
  tail call void @Perl_safesysfree(i8* %9) #9
  br label %if.end14

if.end14:                                         ; preds = %entry, %if.then, %if.end12
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free(%struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_list_push(%struct.PerlIO_list_s* nocapture %Perl_list, %struct._PerlIO_funcs* %funcs, %struct.sv* %arg) #1 {
entry:
  %cur = getelementptr inbounds %struct.PerlIO_list_s* %Perl_list, i64 0, i32 1
  %0 = load i64* %cur, align 8, !tbaa !4
  %len = getelementptr inbounds %struct.PerlIO_list_s* %Perl_list, i64 0, i32 2
  %1 = load i64* %len, align 8, !tbaa !4
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  %array12.phi.trans.insert = getelementptr inbounds %struct.PerlIO_list_s* %Perl_list, i64 0, i32 3
  %.pre = load %struct.PerlIO_pair_t** %array12.phi.trans.insert, align 8, !tbaa !3
  br label %if.end10

if.then:                                          ; preds = %entry
  %add = add nsw i64 %1, 8
  store i64 %add, i64* %len, align 8, !tbaa !4
  %array = getelementptr inbounds %struct.PerlIO_list_s* %Perl_list, i64 0, i32 3
  %2 = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  %tobool = icmp eq %struct.PerlIO_pair_t* %2, null
  br i1 %tobool, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %3 = bitcast %struct.PerlIO_pair_t* %2 to i8*
  %mul = shl i64 %add, 4
  %call = tail call i8* @Perl_safesysrealloc(i8* %3, i64 %mul) #9
  %4 = bitcast i8* %call to %struct.PerlIO_pair_t*
  store %struct.PerlIO_pair_t* %4, %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  br label %if.end10

if.else:                                          ; preds = %if.then
  %mul7 = shl i64 %add, 4
  %call8 = tail call i8* @Perl_safesysmalloc(i64 %mul7) #9
  %5 = bitcast i8* %call8 to %struct.PerlIO_pair_t*
  store %struct.PerlIO_pair_t* %5, %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  br label %if.end10

if.end10:                                         ; preds = %entry.if.end10_crit_edge, %if.then2, %if.else
  %6 = phi %struct.PerlIO_pair_t* [ %.pre, %entry.if.end10_crit_edge ], [ %4, %if.then2 ], [ %5, %if.else ]
  %7 = load i64* %cur, align 8, !tbaa !4
  %inc = add nsw i64 %7, 1
  store i64 %inc, i64* %cur, align 8, !tbaa !4
  %funcs13 = getelementptr inbounds %struct.PerlIO_pair_t* %6, i64 %7, i32 0
  store %struct._PerlIO_funcs* %funcs, %struct._PerlIO_funcs** %funcs13, align 8, !tbaa !3
  %arg14 = getelementptr inbounds %struct.PerlIO_pair_t* %6, i64 %7, i32 1
  store %struct.sv* %arg, %struct.sv** %arg14, align 8, !tbaa !3
  %tobool15 = icmp eq %struct.sv* %arg, null
  br i1 %tobool15, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end10
  store %struct.sv* %arg, %struct.sv** @PL_Sv, align 8, !tbaa !3
  %sv_refcnt = getelementptr inbounds %struct.sv* %arg, i64 0, i32 1
  %8 = load i32* %sv_refcnt, align 4, !tbaa !0
  %inc18 = add i32 %8, 1
  store i32 %inc18, i32* %sv_refcnt, align 4, !tbaa !0
  br label %if.end20

if.end20:                                         ; preds = %if.end10, %if.then16
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_safesysrealloc(i8*, i64) #3

; Function Attrs: nounwind optsize uwtable
define %struct.PerlIO_list_s* @PerlIO_clone_list(%struct.PerlIO_list_s* %proto, %struct.clone_params* nocapture %param) #1 {
entry:
  %tobool = icmp eq %struct.PerlIO_list_s* %proto, null
  br i1 %tobool, label %if.end13, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i8* @Perl_safesysmalloc(i64 32) #9
  %0 = bitcast i8* %call.i to %struct.PerlIO_list_s*
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 32, i32 1, i1 false) #2
  %refcnt.i = bitcast i8* %call.i to i64*
  store i64 1, i64* %refcnt.i, align 8, !tbaa !4
  %cur = getelementptr inbounds %struct.PerlIO_list_s* %proto, i64 0, i32 1
  %1 = load i64* %cur, align 8, !tbaa !4
  %cmp24 = icmp sgt i64 %1, 0
  br i1 %cmp24, label %for.body.lr.ph, label %if.end13

for.body.lr.ph:                                   ; preds = %if.then
  %array = getelementptr inbounds %struct.PerlIO_list_s* %proto, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %2 = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  %arg2 = getelementptr inbounds %struct.PerlIO_pair_t* %2, i64 %indvars.iv, i32 1
  %3 = load %struct.sv** %arg2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct.sv* %3, null
  br i1 %tobool3, label %if.end, label %PerlIO_sv_dup.exit

PerlIO_sv_dup.exit:                               ; preds = %for.body
  %call.i23 = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %3) #9
  %.pre = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.body, %PerlIO_sv_dup.exit
  %4 = phi %struct.PerlIO_pair_t* [ %.pre, %PerlIO_sv_dup.exit ], [ %2, %for.body ]
  %arg.0 = phi %struct.sv* [ %call.i23, %PerlIO_sv_dup.exit ], [ null, %for.body ]
  %funcs = getelementptr inbounds %struct.PerlIO_pair_t* %4, i64 %indvars.iv, i32 0
  %5 = load %struct._PerlIO_funcs** %funcs, align 8, !tbaa !3
  tail call void @PerlIO_list_push(%struct.PerlIO_list_s* %0, %struct._PerlIO_funcs* %5, %struct.sv* %arg.0) #10
  %indvars.iv.next = add i64 %indvars.iv, 1
  %6 = load i64* %cur, align 8, !tbaa !4
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %if.end13

if.end13:                                         ; preds = %if.then, %if.end, %entry
  %Perl_list.0 = phi %struct.PerlIO_list_s* [ null, %entry ], [ %0, %if.end ], [ %0, %if.then ]
  ret %struct.PerlIO_list_s* %Perl_list.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @PerlIO_sv_dup(%struct.sv* %arg, %struct.clone_params* nocapture %param) #1 {
entry:
  %tobool = icmp eq %struct.sv* %arg, null
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call %struct.sv* @Perl_newSVsv(%struct.sv* %arg) #9
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.sv* [ %call, %if.end ], [ null, %entry ]
  ret %struct.sv* %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define void @PerlIO_clone(%struct.interpreter* nocapture %proto, %struct.clone_params* nocapture %param) #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_destruct() #1 {
entry:
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool22 = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool22, label %while.end7, label %while.body

while.cond.loopexit:                              ; preds = %while.end
  %1 = load %struct._PerlIO** %3, align 8
  %2 = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 0
  %tobool = icmp eq %struct._PerlIO* %1, null
  br i1 %tobool, label %while.end7, label %while.body

while.body:                                       ; preds = %entry, %while.cond.loopexit
  %3 = phi %struct._PerlIO** [ %2, %while.cond.loopexit ], [ %0, %entry ]
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.end, %while.body
  %.pn = phi %struct._PerlIO** [ %3, %while.body ], [ %f.021, %while.end ]
  %i.020 = phi i32 [ 1, %while.body ], [ %inc, %while.end ]
  %f.021 = getelementptr inbounds %struct._PerlIO** %.pn, i64 1
  %4 = load %struct._PerlIO** %f.021, align 8, !tbaa !3
  %tobool21617 = icmp eq %struct._PerlIO* %4, null
  br i1 %tobool21617, label %while.end, label %while.body3.lr.ph

while.body3.lr.ph:                                ; preds = %while.cond1.preheader, %if.else
  %5 = phi %struct._PerlIO* [ %11, %if.else ], [ %4, %while.cond1.preheader ]
  %x.0.ph18 = phi %struct._PerlIO** [ %next, %if.else ], [ %f.021, %while.cond1.preheader ]
  br label %while.body3

while.body3:                                      ; preds = %while.body3.lr.ph, %if.then
  %6 = phi %struct._PerlIO* [ %5, %while.body3.lr.ph ], [ %10, %if.then ]
  %tab = getelementptr inbounds %struct._PerlIO* %6, i64 0, i32 1
  %7 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %kind = getelementptr inbounds %struct._PerlIO_funcs* %7, i64 0, i32 3
  %8 = load i32* %kind, align 4, !tbaa !0
  %and = and i32 %8, 65536
  %tobool4 = icmp eq i32 %and, 0
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %while.body3
  %name = getelementptr inbounds %struct._PerlIO_funcs* %7, i64 0, i32 1
  %9 = load i8** %name, align 8, !tbaa !3
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i8* %9) #10
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %x.0.ph18) #10
  tail call void @PerlIO_pop(%struct._PerlIO** %x.0.ph18) #10
  %10 = load %struct._PerlIO** %x.0.ph18, align 8, !tbaa !3
  %tobool2 = icmp eq %struct._PerlIO* %10, null
  br i1 %tobool2, label %while.end, label %while.body3

if.else:                                          ; preds = %while.body3
  %next = getelementptr inbounds %struct._PerlIO* %6, i64 0, i32 0
  %11 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool216 = icmp eq %struct._PerlIO* %11, null
  br i1 %tobool216, label %while.end, label %while.body3.lr.ph

while.end:                                        ; preds = %while.cond1.preheader, %if.else, %if.then
  %inc = add nsw i32 %i.020, 1
  %exitcond = icmp eq i32 %inc, 64
  br i1 %exitcond, label %while.cond.loopexit, label %while.cond1.preheader

while.end7:                                       ; preds = %while.cond.loopexit, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %while.cond.preheader, label %if.then

while.cond.preheader:                             ; preds = %entry
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool1134 = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool1134, label %return, label %while.body

if.then:                                          ; preds = %entry
  %1 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %1, null
  br i1 %tobool1, label %if.else8, label %if.then2

if.then2:                                         ; preds = %if.then
  %tab3 = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab3, align 8, !tbaa !3
  %tobool4 = icmp eq %struct._PerlIO_funcs* %2, null
  br i1 %tobool4, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  %Flush = getelementptr inbounds %struct._PerlIO_funcs* %2, i64 0, i32 17
  %3 = load i64 (%struct._PerlIO**)** %Flush, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %3, null
  br i1 %tobool5, label %return, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  %call = tail call i64 %3(%struct._PerlIO** %f) #9
  %conv = trunc i64 %call to i32
  br label %return

if.else8:                                         ; preds = %if.then
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, %struct._PerlIO** %f) #10
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

while.cond.loopexit:                              ; preds = %if.end
  %4 = load %struct._PerlIO** %6, align 8
  %5 = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 0
  %tobool11 = icmp eq %struct._PerlIO* %4, null
  br i1 %tobool11, label %return, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %6 = phi %struct._PerlIO** [ %5, %while.cond.loopexit ], [ %0, %while.cond.preheader ]
  %code.035 = phi i32 [ %code.2, %while.cond.loopexit ], [ 0, %while.cond.preheader ]
  br label %for.body

for.body:                                         ; preds = %if.end, %while.body
  %.pn = phi %struct._PerlIO** [ %6, %while.body ], [ %f.addr.033, %if.end ]
  %i.032 = phi i32 [ 1, %while.body ], [ %inc, %if.end ]
  %code.131 = phi i32 [ %code.035, %while.body ], [ %code.2, %if.end ]
  %f.addr.033 = getelementptr inbounds %struct._PerlIO** %.pn, i64 1
  %7 = load %struct._PerlIO** %f.addr.033, align 8, !tbaa !3
  %tobool13 = icmp eq %struct._PerlIO* %7, null
  br i1 %tobool13, label %if.end, label %land.lhs.true14

land.lhs.true14:                                  ; preds = %for.body
  %call15 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f.addr.033) #10
  %cmp16 = icmp eq i32 %call15, 0
  %code.1. = select i1 %cmp16, i32 %code.131, i32 -1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true14, %for.body
  %code.2 = phi i32 [ %code.131, %for.body ], [ %code.1., %land.lhs.true14 ]
  %inc = add nsw i32 %i.032, 1
  %exitcond = icmp eq i32 %inc, 64
  br i1 %exitcond, label %while.cond.loopexit, label %for.body

return:                                           ; preds = %while.cond.preheader, %while.cond.loopexit, %if.then2, %land.lhs.true, %if.else8, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %if.else8 ], [ 0, %land.lhs.true ], [ 0, %if.then2 ], [ 0, %while.cond.preheader ], [ %code.2, %while.cond.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_pop(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %tab = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %name = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 1
  %2 = load i8** %name, align 8, !tbaa !3
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, %struct._PerlIO** %f, i8* %2) #10
  %3 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %Popped = getelementptr inbounds %struct._PerlIO_funcs* %3, i64 0, i32 5
  %4 = load i64 (%struct._PerlIO**)** %Popped, align 8, !tbaa !3
  %tobool2 = icmp eq i64 (%struct._PerlIO**)* %4, null
  br i1 %tobool2, label %if.end7, label %if.then3

if.then3:                                         ; preds = %if.then
  %call = tail call i64 %4(%struct._PerlIO** %f) #9
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.end7, label %if.end8

if.end7:                                          ; preds = %if.then3, %if.then
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %5 = load %struct._PerlIO** %next, align 8, !tbaa !3
  store %struct._PerlIO* %5, %struct._PerlIO** %f, align 8, !tbaa !3
  %6 = bitcast %struct._PerlIO* %0 to i8*
  tail call void @Perl_safesysfree(i8* %6) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %entry, %if.end7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct.av* @PerlIO_get_layers(%struct._PerlIO** %f) #1 {
entry:
  %l = alloca %struct._PerlIO*, align 8
  %call = call %struct.av* @Perl_newAV() #9
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %land.lhs.true
  store %struct._PerlIO* %0, %struct._PerlIO** %l, align 8, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cond.end21
  %storemerge30 = phi %struct._PerlIO* [ %0, %while.body.lr.ph ], [ %8, %cond.end21 ]
  %tab = getelementptr inbounds %struct._PerlIO* %storemerge30, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %cond.end21, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %while.body
  %name6 = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 1
  %2 = load i8** %name6, align 8, !tbaa !3
  %tobool7 = icmp eq i8* %2, null
  br i1 %tobool7, label %land.lhs.true13, label %cond.end

cond.end:                                         ; preds = %land.lhs.true4
  %call10 = call %struct.sv* @Perl_newSVpv(i8* %2, i64 0) #9
  %.pre = load %struct._PerlIO** %l, align 8, !tbaa !3
  %tab11.phi.trans.insert = getelementptr inbounds %struct._PerlIO* %.pre, i64 0, i32 1
  %.pre31 = load %struct._PerlIO_funcs** %tab11.phi.trans.insert, align 8, !tbaa !3
  %tobool12 = icmp eq %struct._PerlIO_funcs* %.pre31, null
  br i1 %tobool12, label %cond.end21, label %land.lhs.true13

land.lhs.true13:                                  ; preds = %land.lhs.true4, %cond.end
  %cond36 = phi %struct.sv* [ %call10, %cond.end ], [ @PL_sv_undef, %land.lhs.true4 ]
  %3 = phi %struct._PerlIO_funcs* [ %.pre31, %cond.end ], [ %1, %land.lhs.true4 ]
  %Getarg = getelementptr inbounds %struct._PerlIO_funcs* %3, i64 0, i32 8
  %4 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg, align 8, !tbaa !3
  %tobool15 = icmp eq %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* %4, null
  br i1 %tobool15, label %cond.end21, label %cond.true16

cond.true16:                                      ; preds = %land.lhs.true13
  %call19 = call %struct.sv* %4(%struct._PerlIO** %l, %struct.clone_params* null, i32 0) #9
  br label %cond.end21

cond.end21:                                       ; preds = %while.body, %land.lhs.true13, %cond.end, %cond.true16
  %cond33 = phi %struct.sv* [ %cond36, %cond.true16 ], [ %cond36, %land.lhs.true13 ], [ %call10, %cond.end ], [ @PL_sv_undef, %while.body ]
  %cond22 = phi %struct.sv* [ %call19, %cond.true16 ], [ @PL_sv_undef, %land.lhs.true13 ], [ @PL_sv_undef, %cond.end ], [ @PL_sv_undef, %while.body ]
  call void @Perl_av_push(%struct.av* %call, %struct.sv* %cond33) #9
  call void @Perl_av_push(%struct.av* %call, %struct.sv* %cond22) #9
  %5 = load %struct._PerlIO** %l, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %5, i64 0, i32 2
  %6 = load i32* %flags, align 4, !tbaa !0
  %conv = zext i32 %6 to i64
  %call23 = call %struct.sv* @Perl_newSViv(i64 %conv) #9
  call void @Perl_av_push(%struct.av* %call, %struct.sv* %call23) #9
  %7 = load %struct._PerlIO** %l, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %7, i64 0, i32 0
  %8 = load %struct._PerlIO** %next, align 8, !tbaa !3
  store %struct._PerlIO* %8, %struct._PerlIO** %l, align 8, !tbaa !3
  %tobool2 = icmp eq %struct._PerlIO* %8, null
  br i1 %tobool2, label %if.end, label %while.body

if.end:                                           ; preds = %cond.end21, %land.lhs.true, %entry
  ret %struct.av* %call
}

; Function Attrs: optsize
declare %struct.av* @Perl_newAV() #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpv(i8*, i64) #3

; Function Attrs: optsize
declare void @Perl_av_push(%struct.av*, %struct.sv*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newSViv(i64) #3

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %name, i64 %len, i32 %load) #1 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.end28, %entry
  %len.tr = phi i64 [ %len, %entry ], [ %len.addr.0, %if.end28 ]
  %load.tr = phi i32 [ %load, %entry ], [ 0, %if.end28 ]
  %cmp = icmp slt i64 %len.tr, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %tailrecurse
  %call = tail call i64 @strlen(i8* %name) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %tailrecurse
  %len.addr.0 = phi i64 [ %call, %if.then ], [ %len.tr, %tailrecurse ]
  %0 = load %struct.PerlIO_list_s** @PL_known_layers, align 8, !tbaa !3
  %cur51 = getelementptr inbounds %struct.PerlIO_list_s* %0, i64 0, i32 1
  %1 = load i64* %cur51, align 8, !tbaa !4
  %cmp152 = icmp sgt i64 %1, 0
  br i1 %cmp152, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %array.phi.trans.insert = getelementptr inbounds %struct.PerlIO_list_s* %0, i64 0, i32 3
  %.pre = load %struct.PerlIO_pair_t** %array.phi.trans.insert, align 8, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.053 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %funcs = getelementptr inbounds %struct.PerlIO_pair_t* %.pre, i64 %i.053, i32 0
  %2 = load %struct._PerlIO_funcs** %funcs, align 8, !tbaa !3
  %name2 = getelementptr inbounds %struct._PerlIO_funcs* %2, i64 0, i32 1
  %3 = load i8** %name2, align 8, !tbaa !3
  %call3 = tail call i32 @memcmp(i8* %3, i8* %name, i64 %len.addr.0) #9
  %tobool = icmp eq i32 %call3, 0
  br i1 %tobool, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx5 = getelementptr inbounds i8* %3, i64 %len.addr.0
  %4 = load i8* %arrayidx5, align 1, !tbaa !1
  %cmp6 = icmp eq i8 %4, 0
  br i1 %cmp6, label %if.then8, label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  %conv9 = trunc i64 %len.addr.0 to i32
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i32 %conv9, i8* %name, %struct._PerlIO_funcs* %2) #10
  br label %return

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %inc = add nsw i64 %i.053, 1
  %cmp1 = icmp slt i64 %inc, %1
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %if.end
  %tobool11 = icmp ne i32 %load.tr, 0
  %5 = load %struct.sv** @PL_subname, align 8, !tbaa !3
  %tobool13 = icmp ne %struct.sv* %5, null
  %or.cond = and i1 %tobool11, %tobool13
  %6 = load %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  %tobool15 = icmp ne %struct.PerlIO_list_s* %6, null
  %or.cond33 = and i1 %or.cond, %tobool15
  br i1 %or.cond33, label %land.lhs.true16, label %if.end31

land.lhs.true16:                                  ; preds = %for.end
  %cur17 = getelementptr inbounds %struct.PerlIO_list_s* %6, i64 0, i32 1
  %7 = load i64* %cur17, align 8, !tbaa !4
  %cmp18 = icmp sgt i64 %7, 1
  br i1 %cmp18, label %if.then20, label %if.end31

if.then20:                                        ; preds = %land.lhs.true16
  %8 = load i32* @PL_in_load_module, align 4, !tbaa !0
  %tobool21 = icmp eq i32 %8, 0
  br i1 %tobool21, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then20
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([56 x i8]* @.str4, i64 0, i64 0)) #9
  br label %return

if.else:                                          ; preds = %if.then20
  %call23 = tail call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i64 6) #9
  %call24 = tail call %struct.sv* @Perl_newSVpvn(i8* %name, i64 %len.addr.0) #9
  %call25 = tail call %struct.cv* @Perl_get_cv(i8* getelementptr inbounds ([26 x i8]* @.str6, i64 0, i64 0), i32 0) #9
  tail call void @Perl_push_scope() #9
  tail call void @Perl_save_int(i32* @PL_in_load_module) #9
  %tobool26 = icmp eq %struct.cv* %call25, null
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.else
  tail call void @Perl_save_sptr(%struct.sv** @PL_warnhook) #9
  %9 = bitcast %struct.cv* %call25 to %struct.sv*
  store %struct.sv* %9, %struct.sv** @PL_warnhook, align 8, !tbaa !3
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then27
  %10 = load i32* @PL_in_load_module, align 4, !tbaa !0
  %inc29 = add nsw i32 %10, 1
  store i32 %inc29, i32* @PL_in_load_module, align 4, !tbaa !0
  tail call void (i32, %struct.sv*, %struct.sv*, ...)* @Perl_load_module(i32 0, %struct.sv* %call23, %struct.sv* null, %struct.sv* %call24, %struct.sv* null) #9
  %11 = load i32* @PL_in_load_module, align 4, !tbaa !0
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* @PL_in_load_module, align 4, !tbaa !0
  tail call void @Perl_pop_scope() #9
  br label %tailrecurse

if.end31:                                         ; preds = %land.lhs.true16, %for.end
  %conv32 = trunc i64 %len.addr.0 to i32
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i32 %conv32, i8* %name) #10
  br label %return

return:                                           ; preds = %if.end31, %if.then22, %if.then8
  %retval.0 = phi %struct._PerlIO_funcs* [ %2, %if.then8 ], [ null, %if.then22 ], [ null, %if.end31 ]
  ret %struct._PerlIO_funcs* %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #4

; Function Attrs: optsize
declare void @Perl_croak(i8*, ...) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVpvn(i8*, i64) #3

; Function Attrs: optsize
declare %struct.cv* @Perl_get_cv(i8*, i32) #3

; Function Attrs: optsize
declare void @Perl_push_scope() #3

; Function Attrs: optsize
declare void @Perl_save_int(i32*) #3

; Function Attrs: optsize
declare void @Perl_save_sptr(%struct.sv**) #3

; Function Attrs: optsize
declare void @Perl_load_module(i32, %struct.sv*, %struct.sv*, ...) #3

; Function Attrs: optsize
declare void @Perl_pop_scope() #3

; Function Attrs: nounwind optsize uwtable
define %struct.sv* @PerlIO_tab_sv(%struct._PerlIO_funcs* %tab) #1 {
entry:
  %call = tail call %struct.hv* @Perl_gv_stashpv(i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i32 1) #9
  %0 = ptrtoint %struct._PerlIO_funcs* %tab to i64
  %call1 = tail call %struct.sv* @Perl_newSViv(i64 %0) #9
  %call2 = tail call %struct.sv* @Perl_newRV_noinc(%struct.sv* %call1) #9
  %call3 = tail call %struct.sv* @Perl_sv_bless(%struct.sv* %call2, %struct.hv* %call) #9
  ret %struct.sv* %call3
}

; Function Attrs: optsize
declare %struct.hv* @Perl_gv_stashpv(i8*, i32) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_bless(%struct.sv*, %struct.hv*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_newRV_noinc(%struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define void @XS_PerlIO__Layer__NoWarnings(%struct.cv* nocapture %cv) #1 {
entry:
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %4 = and i64 %sub.ptr.sub3, 34359738360
  %tobool = icmp eq i64 %4, 0
  %add = shl nsw i64 %idx.ext, 32
  %sext.pre = add i64 %add, 4294967296
  %idx.ext14.pre = ashr exact i64 %sext.pre, 32
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idx.ext14.pre
  %5 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %5, i64 0, i32 2
  %6 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %6, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %5, i64 0, i32 0
  %7 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %7 to i8**
  %8 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %5) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ %call, %cond.false ]
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i8* %cond) #10
  %.pre = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %9 = phi %struct.sv** [ %.pre, %cond.end ], [ %1, %entry ]
  %add.ptr15.sum = add i64 %idx.ext14.pre, -1
  %add.ptr16 = getelementptr inbounds %struct.sv** %9, i64 %add.ptr15.sum
  store %struct.sv** %add.ptr16, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_nolen(%struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define void @XS_PerlIO__Layer__find(%struct.cv* nocapture %cv) #1 {
entry:
  %len = alloca i64, align 8
  %0 = load %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  %1 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %2 = load i32** @PL_markstack_ptr, align 8, !tbaa !3
  %incdec.ptr = getelementptr inbounds i32* %2, i64 -1
  store i32* %incdec.ptr, i32** @PL_markstack_ptr, align 8, !tbaa !3
  %3 = load i32* %2, align 4, !tbaa !0
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.sv** %1, i64 %idx.ext
  %sub.ptr.lhs.cast = ptrtoint %struct.sv** %add.ptr to i64
  %sub.ptr.lhs.cast1 = ptrtoint %struct.sv** %0 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.lhs.cast
  %sub.ptr.div4126 = lshr exact i64 %sub.ptr.sub3, 3
  %conv5 = trunc i64 %sub.ptr.div4126 to i32
  %cmp = icmp slt i32 %conv5, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str10, i64 0, i64 0)) #9
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr.idx = shl nsw i64 %idx.ext, 32
  store i64 0, i64* %len, align 8, !tbaa !4
  %add7 = add i64 %add.ptr.idx, 4294967296
  %sext = add i64 %add.ptr.idx, 8589934592
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds %struct.sv** %1, i64 %idxprom
  %4 = load %struct.sv** %arrayidx, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %5, 262144
  %cmp8 = icmp eq i32 %and, 0
  br i1 %cmp8, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.else
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %6, i64 8
  %7 = bitcast i8* %xpv_cur to i64*
  %8 = load i64* %7, align 8, !tbaa !4
  store i64 %8, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %6 to i8**
  %9 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %4, i64* %len, i32 2) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ %call, %cond.false ]
  %cmp20 = icmp sgt i32 %conv5, 2
  br i1 %cmp20, label %cond.true22, label %cond.end95

cond.true22:                                      ; preds = %cond.end
  %sext128 = add i64 %add.ptr.idx, 12884901888
  %idxprom24 = ashr exact i64 %sext128, 32
  %10 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx25 = getelementptr inbounds %struct.sv** %10, i64 %idxprom24
  %11 = load %struct.sv** %arrayidx25, align 8, !tbaa !3
  %tobool = icmp eq %struct.sv* %11, null
  br i1 %tobool, label %cond.end95, label %cond.false27

cond.false27:                                     ; preds = %cond.true22
  %sv_flags31 = getelementptr inbounds %struct.sv* %11, i64 0, i32 2
  %12 = load i32* %sv_flags31, align 4, !tbaa !0
  %and32 = and i32 %12, 262144
  %tobool33 = icmp eq i32 %and32, 0
  br i1 %tobool33, label %cond.false52, label %cond.true34

cond.true34:                                      ; preds = %cond.false27
  %sv_any38 = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %13 = load i8** %sv_any38, align 8, !tbaa !3
  %14 = bitcast i8* %13 to %struct.xpv*
  store %struct.xpv* %14, %struct.xpv** @PL_Xpv, align 8, !tbaa !3
  %tobool39 = icmp eq i8* %13, null
  br i1 %tobool39, label %land.end50, label %land.rhs

land.rhs:                                         ; preds = %cond.true34
  %xpv_cur40 = getelementptr inbounds i8* %13, i64 8
  %15 = bitcast i8* %xpv_cur40 to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %cmp41 = icmp ugt i64 %16, 1
  br i1 %cmp41, label %land.end50, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %tobool44 = icmp eq i64 %16, 0
  br i1 %tobool44, label %land.end50, label %land.rhs45

land.rhs45:                                       ; preds = %lor.rhs
  %xpv_pv46 = bitcast i8* %13 to i8**
  %17 = load i8** %xpv_pv46, align 8, !tbaa !3
  %18 = load i8* %17, align 1, !tbaa !1
  %cmp48 = icmp ne i8 %18, 48
  br label %land.end50

land.end50:                                       ; preds = %lor.rhs, %cond.true34, %land.rhs, %land.rhs45
  %19 = phi i1 [ false, %cond.true34 ], [ true, %land.rhs ], [ false, %lor.rhs ], [ %cmp48, %land.rhs45 ]
  %cond51 = zext i1 %19 to i8
  br label %cond.end95

cond.false52:                                     ; preds = %cond.false27
  %and57 = and i32 %12, 65536
  %tobool58 = icmp eq i32 %and57, 0
  br i1 %tobool58, label %cond.false66, label %cond.true59

cond.true59:                                      ; preds = %cond.false52
  %sv_any63 = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %20 = load i8** %sv_any63, align 8, !tbaa !3
  %xiv_iv = getelementptr inbounds i8* %20, i64 24
  %21 = bitcast i8* %xiv_iv to i64*
  %22 = load i64* %21, align 8, !tbaa !4
  %cmp64 = icmp ne i64 %22, 0
  %conv65 = zext i1 %cmp64 to i8
  br label %cond.end95

cond.false66:                                     ; preds = %cond.false52
  %and71 = and i32 %12, 131072
  %tobool72 = icmp eq i32 %and71, 0
  br i1 %tobool72, label %cond.false80, label %cond.true73

cond.true73:                                      ; preds = %cond.false66
  %sv_any77 = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %23 = load i8** %sv_any77, align 8, !tbaa !3
  %xnv_nv = getelementptr inbounds i8* %23, i64 32
  %24 = bitcast i8* %xnv_nv to double*
  %25 = load double* %24, align 8, !tbaa !5
  %cmp78 = fcmp une double %25, 0.000000e+00
  %conv79 = zext i1 %cmp78 to i8
  br label %cond.end95

cond.false80:                                     ; preds = %cond.false66
  %call84 = call signext i8 @Perl_sv_2bool(%struct.sv* %11) #9
  br label %cond.end95

cond.end95:                                       ; preds = %cond.true22, %cond.end, %cond.true59, %cond.false80, %cond.true73, %land.end50
  %cond96 = phi i8 [ %cond51, %land.end50 ], [ %conv65, %cond.true59 ], [ %conv79, %cond.true73 ], [ %call84, %cond.false80 ], [ 0, %cond.end ], [ 0, %cond.true22 ]
  %26 = load i64* %len, align 8, !tbaa !4
  %conv98 = sext i8 %cond96 to i32
  %call99 = call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %cond, i64 %26, i32 %conv98) #10
  %tobool100 = icmp eq %struct._PerlIO_funcs* %call99, null
  br i1 %tobool100, label %cond.end105, label %cond.true101

cond.true101:                                     ; preds = %cond.end95
  %call102 = call %struct.sv* @PerlIO_tab_sv(%struct._PerlIO_funcs* %call99) #10
  %call103 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call102) #9
  br label %cond.end105

cond.end105:                                      ; preds = %cond.end95, %cond.true101
  %cond106 = phi %struct.sv* [ %call103, %cond.true101 ], [ @PL_sv_undef, %cond.end95 ]
  %idxprom108 = ashr exact i64 %add7, 32
  %27 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %arrayidx109 = getelementptr inbounds %struct.sv** %27, i64 %idxprom108
  store %struct.sv* %cond106, %struct.sv** %arrayidx109, align 8, !tbaa !3
  %28 = load %struct.sv*** @PL_stack_base, align 8, !tbaa !3
  %add.ptr111 = getelementptr inbounds %struct.sv** %28, i64 %idxprom108
  store %struct.sv** %add.ptr111, %struct.sv*** @PL_stack_sp, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %cond.end105, %if.then
  ret void
}

; Function Attrs: optsize
declare i8* @Perl_sv_2pv_flags(%struct.sv*, i64*, i32) #3

; Function Attrs: optsize
declare signext i8 @Perl_sv_2bool(%struct.sv*) #3

; Function Attrs: optsize
declare %struct.sv* @Perl_sv_2mortal(%struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_define_layer(%struct._PerlIO_funcs* %tab) #1 {
entry:
  %0 = load %struct.PerlIO_list_s** @PL_known_layers, align 8, !tbaa !3
  %tobool = icmp eq %struct.PerlIO_list_s* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i8* @Perl_safesysmalloc(i64 32) #9
  %1 = bitcast i8* %call.i to %struct.PerlIO_list_s*
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 32, i32 1, i1 false) #2
  %refcnt.i = bitcast i8* %call.i to i64*
  store i64 1, i64* %refcnt.i, align 8, !tbaa !4
  store %struct.PerlIO_list_s* %1, %struct.PerlIO_list_s** @PL_known_layers, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %2 = phi %struct.PerlIO_list_s* [ %0, %entry ], [ %1, %if.then ]
  tail call void @PerlIO_list_push(%struct.PerlIO_list_s* %2, %struct._PerlIO_funcs* %tab, %struct.sv* null) #10
  %name = getelementptr inbounds %struct._PerlIO_funcs* %tab, i64 0, i32 1
  %3 = load i8** %name, align 8, !tbaa !3
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i8* %3, %struct._PerlIO_funcs* %tab) #10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_parse_layers(%struct.PerlIO_list_s* nocapture %av, i8* %names) #1 {
entry:
  %tobool = icmp eq i8* %names, null
  br i1 %tobool, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = load i8* %names, align 1, !tbaa !1
  %tobool1312 = icmp eq i8 %0, 0
  br i1 %tobool1312, label %return, label %while.cond2

while.cond2:                                      ; preds = %while.cond.backedge, %while.cond.preheader, %while.body22
  %1 = phi i8 [ %.pre, %while.body22 ], [ %54, %while.cond.backedge ], [ %0, %while.cond.preheader ]
  %s.1 = phi i8* [ %incdec.ptr, %while.body22 ], [ %s.0.be, %while.cond.backedge ], [ %names, %while.cond.preheader ]
  switch i8 %1, label %if.then24 [
    i8 32, label %while.body22
    i8 9, label %while.body22
    i8 10, label %while.body22
    i8 13, label %while.body22
    i8 12, label %while.body22
    i8 58, label %while.body22
    i8 0, label %while.cond.backedge
  ]

while.body22:                                     ; preds = %while.cond2, %while.cond2, %while.cond2, %while.cond2, %while.cond2, %while.cond2
  %incdec.ptr = getelementptr inbounds i8* %s.1, i64 1
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !1
  br label %while.cond2

if.then24:                                        ; preds = %while.cond2
  %.off = add i8 %1, -65
  %2 = icmp ult i8 %.off, 26
  br i1 %2, label %do.body, label %lor.lhs.false31

lor.lhs.false31:                                  ; preds = %if.then24
  %.off268 = add i8 %1, -97
  %3 = icmp ult i8 %.off268, 26
  %cmp41 = icmp eq i8 %1, 95
  %or.cond266 = or i1 %3, %cmp41
  br i1 %or.cond266, label %do.body, label %if.then43

if.then43:                                        ; preds = %lor.lhs.false31
  %cmp45 = icmp eq i8 %1, 39
  %4 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings = getelementptr inbounds %struct.cop* %4, i64 0, i32 14
  %5 = load %struct.sv** %cop_warnings, align 8, !tbaa !3
  %cmp48 = icmp eq %struct.sv* %5, null
  br i1 %cmp48, label %lor.lhs.false62, label %land.lhs.true50

land.lhs.true50:                                  ; preds = %if.then43
  %6 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings51 = getelementptr inbounds %struct.cop* %6, i64 0, i32 14
  %7 = load %struct.sv** %cop_warnings51, align 8, !tbaa !3
  %cmp52 = icmp eq %struct.sv* %7, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp52, label %lor.lhs.false62, label %land.lhs.true54

land.lhs.true54:                                  ; preds = %land.lhs.true50
  %8 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings55 = getelementptr inbounds %struct.cop* %8, i64 0, i32 14
  %9 = load %struct.sv** %cop_warnings55, align 8, !tbaa !3
  %cmp56 = icmp eq %struct.sv* %9, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp56, label %if.then70, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %land.lhs.true54
  %10 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings59 = getelementptr inbounds %struct.cop* %10, i64 0, i32 14
  %11 = load %struct.sv** %cop_warnings59, align 8, !tbaa !3
  %sv_any = getelementptr inbounds %struct.sv* %11, i64 0, i32 0
  %12 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %12 to i8**
  %13 = load i8** %xpv_pv, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i8* %13, i64 2
  %14 = load i8* %arrayidx, align 1, !tbaa !1
  %and = and i8 %14, 1
  %tobool61 = icmp eq i8 %and, 0
  br i1 %tobool61, label %lor.lhs.false62, label %if.then70

lor.lhs.false62:                                  ; preds = %lor.lhs.false58, %land.lhs.true50, %if.then43
  %15 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings63 = getelementptr inbounds %struct.cop* %15, i64 0, i32 14
  %16 = load %struct.sv** %cop_warnings63, align 8, !tbaa !3
  %cmp64 = icmp eq %struct.sv* %16, null
  br i1 %cmp64, label %land.lhs.true66, label %if.end

land.lhs.true66:                                  ; preds = %lor.lhs.false62
  %17 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and68 = and i8 %17, 1
  %tobool69 = icmp eq i8 %and68, 0
  br i1 %tobool69, label %if.end, label %if.then70

if.then70:                                        ; preds = %lor.lhs.false58, %land.lhs.true66, %land.lhs.true54
  %conv71 = select i1 %cmp45, i32 34, i32 39
  %18 = load i8* %s.1, align 1, !tbaa !1
  %conv72 = sext i8 %18 to i32
  tail call void (i32, i8*, ...)* @Perl_warner(i32 8, i8* getelementptr inbounds ([68 x i8]* @.str12, i64 0, i64 0), i32 %conv71, i32 %conv72, i32 %conv71, i8* %s.1) #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true66, %if.then70, %lor.lhs.false62
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %return

do.body:                                          ; preds = %lor.lhs.false91, %do.body, %lor.lhs.false31, %if.then24
  %e.0 = phi i8* [ %s.1, %if.then24 ], [ %s.1, %lor.lhs.false31 ], [ %incdec.ptr75, %do.body ], [ %incdec.ptr75, %lor.lhs.false91 ]
  %incdec.ptr75 = getelementptr inbounds i8* %e.0, i64 1
  %19 = load i8* %incdec.ptr75, align 1, !tbaa !1
  %.off269 = add i8 %19, -65
  %20 = icmp ult i8 %.off269, 26
  %.off270 = add i8 %19, -97
  %21 = icmp ult i8 %.off270, 26
  %or.cond = or i1 %20, %21
  br i1 %or.cond, label %do.body, label %lor.lhs.false91

lor.lhs.false91:                                  ; preds = %do.body
  %.off271 = add i8 %19, -48
  %22 = icmp ult i8 %.off271, 10
  %cmp101 = icmp eq i8 %19, 95
  %or.cond267 = or i1 %22, %cmp101
  br i1 %or.cond267, label %do.body, label %do.end

do.end:                                           ; preds = %lor.lhs.false91
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr75 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %s.1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp105 = icmp eq i8 %19, 40
  br i1 %cmp105, label %if.then107, label %if.end163

if.then107:                                       ; preds = %do.end
  %incdec.ptr108 = getelementptr inbounds i8* %e.0, i64 2
  %sub.ptr.rhs.cast118 = ptrtoint i8* %incdec.ptr108 to i64
  br label %while.body111.lr.ph

while.body111.lr.ph:                              ; preds = %sw.bb, %if.then107, %while.cond109.outer276.backedge
  %nesting.0.ph278290 = phi i32 [ %inc, %while.cond109.outer276.backedge ], [ 1, %if.then107 ], [ %dec, %sw.bb ]
  %e.1.ph277289 = phi i8* [ %incdec.ptr112, %while.cond109.outer276.backedge ], [ %incdec.ptr108, %if.then107 ], [ %incdec.ptr112, %sw.bb ]
  br label %while.body111

while.body111:                                    ; preds = %sw.bb122, %while.body111, %while.body111.lr.ph
  %e.1284 = phi i8* [ %e.1.ph277289, %while.body111.lr.ph ], [ %incdec.ptr112, %while.body111 ], [ %incdec.ptr123, %sw.bb122 ]
  %incdec.ptr112 = getelementptr inbounds i8* %e.1284, i64 1
  %23 = load i8* %e.1284, align 1, !tbaa !1
  %conv113 = sext i8 %23 to i32
  switch i32 %conv113, label %while.body111 [
    i32 41, label %sw.bb
    i32 40, label %while.cond109.outer276.backedge
    i32 92, label %sw.bb122
    i32 0, label %sw.bb127
  ]

sw.bb:                                            ; preds = %while.body111
  %dec = add nsw i32 %nesting.0.ph278290, -1
  %cmp114 = icmp eq i32 %dec, 0
  br i1 %cmp114, label %if.end163.loopexit.loopexit.loopexit, label %while.body111.lr.ph

while.cond109.outer276.backedge:                  ; preds = %while.body111
  %inc = add nsw i32 %nesting.0.ph278290, 1
  %tobool110 = icmp eq i32 %inc, 0
  br i1 %tobool110, label %if.end163, label %while.body111.lr.ph

sw.bb122:                                         ; preds = %while.body111
  %incdec.ptr123 = getelementptr inbounds i8* %e.1284, i64 2
  %24 = load i8* %incdec.ptr112, align 1, !tbaa !1
  %tobool124 = icmp eq i8 %24, 0
  br i1 %tobool124, label %sw.bb127, label %while.body111

sw.bb127:                                         ; preds = %sw.bb122, %while.body111
  %e.2 = phi i8* [ %incdec.ptr112, %while.body111 ], [ %incdec.ptr123, %sw.bb122 ]
  %incdec.ptr128 = getelementptr inbounds i8* %e.2, i64 -1
  %25 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings129 = getelementptr inbounds %struct.cop* %25, i64 0, i32 14
  %26 = load %struct.sv** %cop_warnings129, align 8, !tbaa !3
  %cmp130 = icmp eq %struct.sv* %26, null
  br i1 %cmp130, label %lor.lhs.false148, label %land.lhs.true132

land.lhs.true132:                                 ; preds = %sw.bb127
  %27 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings133 = getelementptr inbounds %struct.cop* %27, i64 0, i32 14
  %28 = load %struct.sv** %cop_warnings133, align 8, !tbaa !3
  %cmp134 = icmp eq %struct.sv* %28, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp134, label %lor.lhs.false148, label %land.lhs.true136

land.lhs.true136:                                 ; preds = %land.lhs.true132
  %29 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings137 = getelementptr inbounds %struct.cop* %29, i64 0, i32 14
  %30 = load %struct.sv** %cop_warnings137, align 8, !tbaa !3
  %cmp138 = icmp eq %struct.sv* %30, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp138, label %if.then156, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %land.lhs.true136
  %31 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings141 = getelementptr inbounds %struct.cop* %31, i64 0, i32 14
  %32 = load %struct.sv** %cop_warnings141, align 8, !tbaa !3
  %sv_any142 = getelementptr inbounds %struct.sv* %32, i64 0, i32 0
  %33 = load i8** %sv_any142, align 8, !tbaa !3
  %xpv_pv143 = bitcast i8* %33 to i8**
  %34 = load i8** %xpv_pv143, align 8, !tbaa !3
  %arrayidx144 = getelementptr inbounds i8* %34, i64 2
  %35 = load i8* %arrayidx144, align 1, !tbaa !1
  %and146 = and i8 %35, 1
  %tobool147 = icmp eq i8 %and146, 0
  br i1 %tobool147, label %lor.lhs.false148, label %if.then156

lor.lhs.false148:                                 ; preds = %lor.lhs.false140, %land.lhs.true132, %sw.bb127
  %36 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings149 = getelementptr inbounds %struct.cop* %36, i64 0, i32 14
  %37 = load %struct.sv** %cop_warnings149, align 8, !tbaa !3
  %cmp150 = icmp eq %struct.sv* %37, null
  br i1 %cmp150, label %land.lhs.true152, label %return

land.lhs.true152:                                 ; preds = %lor.lhs.false148
  %38 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and154 = and i8 %38, 1
  %tobool155 = icmp eq i8 %and154, 0
  br i1 %tobool155, label %return, label %if.then156

if.then156:                                       ; preds = %lor.lhs.false140, %land.lhs.true152, %land.lhs.true136
  %sub.ptr.lhs.cast157 = ptrtoint i8* %incdec.ptr128 to i64
  %sub.ptr.sub159 = sub i64 %sub.ptr.lhs.cast157, %sub.ptr.rhs.cast
  %conv160 = trunc i64 %sub.ptr.sub159 to i32
  tail call void (i32, i8*, ...)* @Perl_warner(i32 8, i8* getelementptr inbounds ([49 x i8]* @.str13, i64 0, i64 0), i32 %conv160, i8* %s.1) #9
  br label %return

if.end163.loopexit.loopexit.loopexit:             ; preds = %sw.bb
  %sub.ptr.lhs.cast117 = ptrtoint i8* %e.1284 to i64
  %sub.ptr.sub119 = sub i64 %sub.ptr.lhs.cast117, %sub.ptr.rhs.cast118
  br label %if.end163

if.end163:                                        ; preds = %while.cond109.outer276.backedge, %if.end163.loopexit.loopexit.loopexit, %do.end
  %e.3 = phi i8* [ %incdec.ptr75, %do.end ], [ %incdec.ptr112, %if.end163.loopexit.loopexit.loopexit ], [ %incdec.ptr112, %while.cond109.outer276.backedge ]
  %as.0 = phi i8* [ null, %do.end ], [ %incdec.ptr108, %if.end163.loopexit.loopexit.loopexit ], [ %incdec.ptr108, %while.cond109.outer276.backedge ]
  %alen.1 = phi i64 [ 0, %do.end ], [ %sub.ptr.sub119, %if.end163.loopexit.loopexit.loopexit ], [ 0, %while.cond109.outer276.backedge ]
  %cmp164 = icmp ugt i8* %e.3, %s.1
  br i1 %cmp164, label %if.then166, label %while.cond.backedge

if.then166:                                       ; preds = %if.end163
  %39 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings167 = getelementptr inbounds %struct.cop* %39, i64 0, i32 14
  %40 = load %struct.sv** %cop_warnings167, align 8, !tbaa !3
  %cmp168 = icmp eq %struct.sv* %40, null
  br i1 %cmp168, label %lor.rhs186, label %land.lhs.true170

land.lhs.true170:                                 ; preds = %if.then166
  %41 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings171 = getelementptr inbounds %struct.cop* %41, i64 0, i32 14
  %42 = load %struct.sv** %cop_warnings171, align 8, !tbaa !3
  %cmp172 = icmp eq %struct.sv* %42, inttoptr (i64 32 to %struct.sv*)
  br i1 %cmp172, label %lor.rhs186, label %land.lhs.true174

land.lhs.true174:                                 ; preds = %land.lhs.true170
  %43 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings175 = getelementptr inbounds %struct.cop* %43, i64 0, i32 14
  %44 = load %struct.sv** %cop_warnings175, align 8, !tbaa !3
  %cmp176 = icmp eq %struct.sv* %44, inttoptr (i64 16 to %struct.sv*)
  br i1 %cmp176, label %lor.end193, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %land.lhs.true174
  %45 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings179 = getelementptr inbounds %struct.cop* %45, i64 0, i32 14
  %46 = load %struct.sv** %cop_warnings179, align 8, !tbaa !3
  %sv_any180 = getelementptr inbounds %struct.sv* %46, i64 0, i32 0
  %47 = load i8** %sv_any180, align 8, !tbaa !3
  %xpv_pv181 = bitcast i8* %47 to i8**
  %48 = load i8** %xpv_pv181, align 8, !tbaa !3
  %arrayidx182 = getelementptr inbounds i8* %48, i64 2
  %49 = load i8* %arrayidx182, align 1, !tbaa !1
  %and184 = and i8 %49, 1
  %tobool185 = icmp eq i8 %and184, 0
  br i1 %tobool185, label %lor.rhs186, label %lor.end193

lor.rhs186:                                       ; preds = %lor.lhs.false178, %land.lhs.true170, %if.then166
  %50 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_warnings187 = getelementptr inbounds %struct.cop* %50, i64 0, i32 14
  %51 = load %struct.sv** %cop_warnings187, align 8, !tbaa !3
  %cmp188 = icmp eq %struct.sv* %51, null
  br i1 %cmp188, label %land.rhs, label %lor.end193

land.rhs:                                         ; preds = %lor.rhs186
  %52 = load i8* @PL_dowarn, align 1, !tbaa !1
  %and191 = and i8 %52, 1
  %tobool192 = icmp ne i8 %and191, 0
  br label %lor.end193

lor.end193:                                       ; preds = %lor.lhs.false178, %lor.rhs186, %land.rhs, %land.lhs.true174
  %53 = phi i1 [ true, %lor.lhs.false178 ], [ true, %land.lhs.true174 ], [ false, %lor.rhs186 ], [ %tobool192, %land.rhs ]
  %call195 = tail call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %s.1, i64 %sub.ptr.sub, i32 1) #10
  %tobool196 = icmp eq %struct._PerlIO_funcs* %call195, null
  br i1 %tobool196, label %if.else, label %if.then197

if.then197:                                       ; preds = %lor.end193
  %tobool198 = icmp eq i8* %as.0, null
  br i1 %tobool198, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then197
  %call199 = tail call %struct.sv* @Perl_newSVpvn(i8* %as.0, i64 %alen.1) #9
  br label %cond.end

cond.end:                                         ; preds = %if.then197, %cond.true
  %cond200 = phi %struct.sv* [ %call199, %cond.true ], [ @PL_sv_undef, %if.then197 ]
  tail call void @PerlIO_list_push(%struct.PerlIO_list_s* %av, %struct._PerlIO_funcs* %call195, %struct.sv* %cond200) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end163, %while.cond2, %cond.end
  %s.0.be = phi i8* [ %e.3, %cond.end ], [ %s.1, %while.cond2 ], [ %e.3, %if.end163 ]
  %54 = load i8* %s.0.be, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %54, 0
  br i1 %tobool1, label %return, label %while.cond2

if.else:                                          ; preds = %lor.end193
  br i1 %53, label %if.then202, label %return

if.then202:                                       ; preds = %if.else
  %conv203 = trunc i64 %sub.ptr.sub to i32
  tail call void (i32, i8*, ...)* @Perl_warner(i32 8, i8* getelementptr inbounds ([28 x i8]* @.str14, i64 0, i64 0), i32 %conv203, i8* %s.1) #9
  br label %return

return:                                           ; preds = %while.cond.preheader, %while.cond.backedge, %entry, %if.else, %if.then202, %lor.lhs.false148, %if.then156, %land.lhs.true152, %if.end
  %retval.0 = phi i32 [ -1, %if.end ], [ -1, %land.lhs.true152 ], [ -1, %if.then156 ], [ -1, %lor.lhs.false148 ], [ -1, %if.then202 ], [ -1, %if.else ], [ 0, %entry ], [ 0, %while.cond.backedge ], [ 0, %while.cond.preheader ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @Perl_warner(i32, i8*, ...) #3

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_default_buffer(%struct.PerlIO_list_s* nocapture %av) #1 {
entry:
  %0 = load void (%struct._PerlIO**, i8*, i64)** getelementptr inbounds (%struct._PerlIO_funcs* @PerlIO_stdio, i64 0, i32 27), align 8, !tbaa !3
  %tobool = icmp ne void (%struct._PerlIO**, i8*, i64)* %0, null
  %PerlIO_stdio.PerlIO_perlio = select i1 %tobool, %struct._PerlIO_funcs* @PerlIO_stdio, %struct._PerlIO_funcs* @PerlIO_perlio
  %name = getelementptr inbounds %struct._PerlIO_funcs* %PerlIO_stdio.PerlIO_perlio, i64 0, i32 1
  %1 = load i8** %name, align 8, !tbaa !3
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i8* %1) #10
  %2 = load i8** %name, align 8, !tbaa !3
  %call = tail call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %2, i64 0, i32 0) #10
  tail call void @PerlIO_list_push(%struct.PerlIO_list_s* %av, %struct._PerlIO_funcs* %call, %struct.sv* @PL_sv_undef) #10
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define %struct.sv* @PerlIO_arg_fetch(%struct.PerlIO_list_s* nocapture %av, i64 %n) #5 {
entry:
  %array = getelementptr inbounds %struct.PerlIO_list_s* %av, i64 0, i32 3
  %0 = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  %arg = getelementptr inbounds %struct.PerlIO_pair_t* %0, i64 %n, i32 1
  %1 = load %struct.sv** %arg, align 8, !tbaa !3
  ret %struct.sv* %1
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* nocapture %av, i64 %n, %struct._PerlIO_funcs* %def) #1 {
entry:
  %cmp = icmp sgt i64 %n, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cur = getelementptr inbounds %struct.PerlIO_list_s* %av, i64 0, i32 1
  %0 = load i64* %cur, align 8, !tbaa !4
  %cmp1 = icmp sgt i64 %0, %n
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %array = getelementptr inbounds %struct.PerlIO_list_s* %av, i64 0, i32 3
  %1 = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  %funcs = getelementptr inbounds %struct.PerlIO_pair_t* %1, i64 %n, i32 0
  %2 = load %struct._PerlIO_funcs** %funcs, align 8, !tbaa !3
  %name = getelementptr inbounds %struct._PerlIO_funcs* %2, i64 0, i32 1
  %3 = load i8** %name, align 8, !tbaa !3
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i64 %n, i8* %3) #10
  %4 = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  %funcs4 = getelementptr inbounds %struct.PerlIO_pair_t* %4, i64 %n, i32 0
  %5 = load %struct._PerlIO_funcs** %funcs4, align 8, !tbaa !3
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %tobool = icmp eq %struct._PerlIO_funcs* %def, null
  br i1 %tobool, label %if.then5, label %return

if.then5:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([34 x i8]* @.str17, i64 0, i64 0)) #9
  br label %return

return:                                           ; preds = %if.then5, %if.end, %if.then
  %retval.0 = phi %struct._PerlIO_funcs* [ %5, %if.then ], [ %def, %if.end ], [ null, %if.then5 ]
  ret %struct._PerlIO_funcs* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOPop_pushed(%struct._PerlIO** %f, i8* nocapture %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* nocapture %tab) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  tail call void @PerlIO_pop(%struct._PerlIO** %f) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ -1, %land.lhs.true ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct.PerlIO_list_s* @PerlIO_default_layers() #1 {
entry:
  %0 = load %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  %tobool = icmp eq %struct.PerlIO_list_s* %0, null
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i8* @Perl_safesysmalloc(i64 32) #9
  %1 = bitcast i8* %call.i to %struct.PerlIO_list_s*
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 32, i32 1, i1 false) #2
  %refcnt.i = bitcast i8* %call.i to i64*
  store i64 1, i64* %refcnt.i, align 8, !tbaa !4
  store %struct.PerlIO_list_s* %1, %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  tail call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_unix) #10
  tail call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_raw) #10
  tail call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_perlio) #10
  tail call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_stdio) #10
  tail call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_crlf) #10
  tail call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_utf8) #10
  tail call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_remove) #10
  tail call void @PerlIO_define_layer(%struct._PerlIO_funcs* @PerlIO_byte) #10
  %2 = load %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  %3 = load i8** getelementptr inbounds (%struct._PerlIO_funcs* @PerlIO_unix, i64 0, i32 1), align 8, !tbaa !3
  %call1 = tail call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* %3, i64 0, i32 0) #10
  tail call void @PerlIO_list_push(%struct.PerlIO_list_s* %2, %struct._PerlIO_funcs* %call1, %struct.sv* @PL_sv_undef) #10
  %4 = load %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  tail call void @PerlIO_default_buffer(%struct.PerlIO_list_s* %4) #10
  %.pre = load %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.then
  %5 = phi %struct.PerlIO_list_s* [ %0, %entry ], [ %.pre, %if.then ]
  %cur = getelementptr inbounds %struct.PerlIO_list_s* %5, i64 0, i32 1
  %6 = load i64* %cur, align 8, !tbaa !4
  %cmp = icmp slt i64 %6, 2
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end5
  tail call void @PerlIO_default_buffer(%struct.PerlIO_list_s* %5) #10
  %.pre9 = load %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end5
  %7 = phi %struct.PerlIO_list_s* [ %.pre9, %if.then6 ], [ %5, %if.end5 ]
  ret %struct.PerlIO_list_s* %7
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_boot_core_PerlIO() #1 {
entry:
  %call = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), void (%struct.cv*)* @XS_PerlIO__Layer__find, i8* getelementptr inbounds ([56 x i8]* @.str20, i64 0, i64 0)) #9
  %call1 = tail call %struct.cv* @Perl_newXS(i8* getelementptr inbounds ([26 x i8]* @.str6, i64 0, i64 0), void (%struct.cv*)* @XS_PerlIO__Layer__NoWarnings, i8* getelementptr inbounds ([56 x i8]* @.str20, i64 0, i64 0)) #9
  ret void
}

; Function Attrs: optsize
declare %struct.cv* @Perl_newXS(i8*, void (%struct.cv*)*, i8*) #3

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO_funcs* @PerlIO_default_layer(i32 %n) #1 {
entry:
  %call = tail call %struct.PerlIO_list_s* @PerlIO_default_layers() #10
  %cmp = icmp slt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %cur = getelementptr inbounds %struct.PerlIO_list_s* %call, i64 0, i32 1
  %0 = load i64* %cur, align 8, !tbaa !4
  %conv7 = zext i32 %n to i64
  %add = add nsw i64 %0, %conv7
  %conv1 = trunc i64 %add to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %n.addr.0 = phi i32 [ %conv1, %if.then ], [ %n, %entry ]
  %conv2 = sext i32 %n.addr.0 to i64
  %call3 = tail call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %call, i64 %conv2, %struct._PerlIO_funcs* @PerlIO_stdio) #10
  ret %struct._PerlIO_funcs* %call3
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_stdstreams() #1 {
entry:
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call %struct._PerlIO** @PerlIO_allocate() #10
  %call.i = tail call %struct._PerlIO** @PerlIO_openn(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str21, i64 0, i64 0), i32 0, i32 0, i32 0, %struct._PerlIO** null, i32 0, %struct.sv** null) #9
  %call.i4 = tail call %struct._PerlIO** @PerlIO_openn(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0), i32 1, i32 0, i32 0, %struct._PerlIO** null, i32 0, %struct.sv** null) #9
  %call.i5 = tail call %struct._PerlIO** @PerlIO_openn(i8* null, i8* getelementptr inbounds ([3 x i8]* @.str22, i64 0, i64 0), i32 2, i32 0, i32 0, %struct._PerlIO** null, i32 0, %struct.sv** null) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_fdopen(i32 %fd, i8* %mode) #1 {
entry:
  %call = tail call %struct._PerlIO** @PerlIO_openn(i8* null, i8* %mode, i32 %fd, i32 0, i32 0, %struct._PerlIO** null, i32 0, %struct.sv** null) #10
  ret %struct._PerlIO** %call
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f, %struct._PerlIO_funcs* %tab, i8* %mode, %struct.sv* %arg) #1 {
entry:
  %fsize = getelementptr inbounds %struct._PerlIO_funcs* %tab, i64 0, i32 0
  %0 = load i64* %fsize, align 8, !tbaa !4
  %cmp = icmp eq i64 %0, 224
  br i1 %cmp, label %if.end, label %mismatch

mismatch:                                         ; preds = %entry, %if.then1
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([31 x i8]* @.str23, i64 0, i64 0)) #9
  br label %if.end

if.end:                                           ; preds = %entry, %mismatch
  %size = getelementptr inbounds %struct._PerlIO_funcs* %tab, i64 0, i32 2
  %1 = load i64* %size, align 8, !tbaa !4
  %tobool = icmp eq i64 %1, 0
  br i1 %tobool, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  %cmp3 = icmp ult i64 %1, 24
  br i1 %cmp3, label %mismatch, label %if.end5

if.end5:                                          ; preds = %if.then1
  %call = tail call i8* @Perl_safesysmalloc(i64 %1) #9
  %tobool7 = icmp eq i8* %call, null
  %tobool8 = icmp eq %struct._PerlIO** %f, null
  %or.cond = or i1 %tobool7, %tobool8
  br i1 %or.cond, label %if.end41, label %if.then9

if.then9:                                         ; preds = %if.end5
  %2 = bitcast i8* %call to %struct._PerlIO*
  %3 = load i64* %size, align 8, !tbaa !4
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %3, i32 1, i1 false)
  %4 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next = bitcast i8* %call to %struct._PerlIO**
  store %struct._PerlIO* %4, %struct._PerlIO** %next, align 8, !tbaa !3
  %tab12 = getelementptr inbounds i8* %call, i64 8
  %5 = bitcast i8* %tab12 to %struct._PerlIO_funcs**
  store %struct._PerlIO_funcs* %tab, %struct._PerlIO_funcs** %5, align 8, !tbaa !3
  store %struct._PerlIO* %2, %struct._PerlIO** %f, align 8, !tbaa !3
  %name = getelementptr inbounds %struct._PerlIO_funcs* %tab, i64 0, i32 1
  %6 = load i8** %name, align 8, !tbaa !3
  %tobool13 = icmp ne i8* %mode, null
  %cond = select i1 %tobool13, i8* %mode, i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0)
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, %struct._PerlIO** %f, i8* %6, i8* %cond, %struct.sv* %arg) #10
  %7 = load %struct._PerlIO_funcs** %5, align 8, !tbaa !3
  %Pushed = getelementptr inbounds %struct._PerlIO_funcs* %7, i64 0, i32 4
  %8 = load i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)** %Pushed, align 8, !tbaa !3
  %tobool15 = icmp eq i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* %8, null
  br i1 %tobool15, label %if.end41, label %land.lhs.true16

land.lhs.true16:                                  ; preds = %if.then9
  %call19 = tail call i64 %8(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #9
  %cmp20 = icmp eq i64 %call19, 0
  br i1 %cmp20, label %if.end41, label %if.then21

if.then21:                                        ; preds = %land.lhs.true16
  tail call void @PerlIO_pop(%struct._PerlIO** %f) #10
  br label %return

if.else:                                          ; preds = %if.end
  %tobool24 = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool24, label %if.end41, label %if.then25

if.then25:                                        ; preds = %if.else
  %name26 = getelementptr inbounds %struct._PerlIO_funcs* %tab, i64 0, i32 1
  %9 = load i8** %name26, align 8, !tbaa !3
  %tobool27 = icmp ne i8* %mode, null
  %cond31 = select i1 %tobool27, i8* %mode, i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0)
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, %struct._PerlIO** %f, i8* %9, i8* %cond31, %struct.sv* %arg) #10
  %Pushed32 = getelementptr inbounds %struct._PerlIO_funcs* %tab, i64 0, i32 4
  %10 = load i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)** %Pushed32, align 8, !tbaa !3
  %tobool33 = icmp eq i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)* %10, null
  br i1 %tobool33, label %if.end41, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.then25
  %call36 = tail call i64 %10(%struct._PerlIO** %f, i8* %mode, %struct.sv* %arg, %struct._PerlIO_funcs* %tab) #9
  %cmp37 = icmp eq i64 %call36, 0
  br i1 %cmp37, label %if.end41, label %return

if.end41:                                         ; preds = %land.lhs.true16, %if.then9, %if.end5, %land.lhs.true34, %if.then25, %if.else
  br label %return

return:                                           ; preds = %land.lhs.true34, %if.end41, %if.then21
  %retval.0 = phi %struct._PerlIO** [ null, %if.then21 ], [ %f, %if.end41 ], [ null, %land.lhs.true34 ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBase_binmode(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %kind = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 3
  %2 = load i32* %kind, align 4, !tbaa !0
  %and = and i32 %2, 1
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !0
  %and4 = and i32 %3, -32769
  store i32 %and4, i32* %flags, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %if.then
  tail call void @PerlIO_pop(%struct._PerlIO** %f) #10
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then3, %if.else
  %retval.0 = phi i64 [ 0, %if.else ], [ 0, %if.then3 ], [ -1, %land.lhs.true ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIORaw_pushed(%struct._PerlIO** %f, i8* nocapture %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* nocapture %tab) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %return, label %land.rhs.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph:                             ; preds = %land.lhs.true
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %land.rhs.lr.ph.lr.ph, %if.then10
  %t.0.ph39 = phi %struct._PerlIO** [ %f, %land.rhs.lr.ph.lr.ph ], [ %next.t.0, %if.then10 ]
  br label %land.rhs

land.rhs:                                         ; preds = %if.else14, %land.rhs.lr.ph
  %1 = load %struct._PerlIO** %t.0.ph39, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO* %1, null
  br i1 %tobool3, label %land.lhs.true17, label %while.body

while.body:                                       ; preds = %land.rhs
  %tab4 = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab4, align 8, !tbaa !3
  %Binmode = getelementptr inbounds %struct._PerlIO_funcs* %2, i64 0, i32 7
  %3 = load i64 (%struct._PerlIO**)** %Binmode, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %3, null
  br i1 %tobool5, label %if.else14, label %if.then6

if.then6:                                         ; preds = %while.body
  %call9 = tail call i64 %3(%struct._PerlIO** %f) #9
  %cmp = icmp eq i64 %call9, 0
  br i1 %cmp, label %if.then10, label %return

if.then10:                                        ; preds = %if.then6
  %4 = load %struct._PerlIO** %t.0.ph39, align 8, !tbaa !3
  %cmp11 = icmp eq %struct._PerlIO* %4, %1
  %next = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 0
  %next.t.0 = select i1 %cmp11, %struct._PerlIO** %next, %struct._PerlIO** %t.0.ph39
  %tobool2 = icmp eq %struct._PerlIO** %next.t.0, null
  br i1 %tobool2, label %land.lhs.true17, label %land.rhs.lr.ph

if.else14:                                        ; preds = %while.body
  tail call void @PerlIO_pop(%struct._PerlIO** %t.0.ph39) #10
  br label %land.rhs

land.lhs.true17:                                  ; preds = %land.rhs, %if.then10
  %5 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool18 = icmp eq %struct._PerlIO* %5, null
  br i1 %tobool18, label %return, label %if.then19

if.then19:                                        ; preds = %land.lhs.true17
  %tab20 = getelementptr inbounds %struct._PerlIO* %5, i64 0, i32 1
  %6 = load %struct._PerlIO_funcs** %tab20, align 8, !tbaa !3
  %name = getelementptr inbounds %struct._PerlIO_funcs* %6, i64 0, i32 1
  %7 = load i8** %name, align 8, !tbaa !3
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, %struct._PerlIO** %f, i8* %7) #10
  br label %return

return:                                           ; preds = %if.then6, %entry, %land.lhs.true, %land.lhs.true17, %if.then19
  %retval.0 = phi i64 [ 0, %if.then19 ], [ -1, %land.lhs.true17 ], [ -1, %land.lhs.true ], [ -1, %entry ], [ -1, %if.then6 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_apply_layera(%struct._PerlIO** %f, i8* %mode, %struct.PerlIO_list_s* nocapture %layers, i64 %n, i64 %max) #1 {
entry:
  %array.i = getelementptr inbounds %struct.PerlIO_list_s* %layers, i64 0, i32 3
  %cmp11 = icmp slt i64 %n, %max
  br i1 %cmp11, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end5
  %n.addr.012 = phi i64 [ %inc, %if.end5 ], [ %n, %entry ]
  %call = tail call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %layers, i64 %n.addr.012, %struct._PerlIO_funcs* null) #10
  %tobool = icmp eq %struct._PerlIO_funcs* %call, null
  br i1 %tobool, label %if.end5, label %if.then

if.then:                                          ; preds = %while.body
  %0 = load %struct.PerlIO_pair_t** %array.i, align 8, !tbaa !3
  %arg.i = getelementptr inbounds %struct.PerlIO_pair_t* %0, i64 %n.addr.012, i32 1
  %1 = load %struct.sv** %arg.i, align 8, !tbaa !3
  %call2 = tail call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f, %struct._PerlIO_funcs* %call, i8* %mode, %struct.sv* %1) #10
  %tobool3 = icmp eq %struct._PerlIO** %call2, null
  br i1 %tobool3, label %while.end, label %if.end5

if.end5:                                          ; preds = %if.then, %while.body
  %inc = add nsw i64 %n.addr.012, 1
  %cmp = icmp slt i64 %inc, %max
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %if.end5, %if.then, %entry
  %code.0 = phi i32 [ 0, %entry ], [ -1, %if.then ], [ 0, %if.end5 ]
  ret i32 %code.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_apply_layers(%struct._PerlIO** %f, i8* %mode, i8* %names) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  %tobool1 = icmp eq i8* %names, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i8* @Perl_safesysmalloc(i64 32) #9
  %0 = bitcast i8* %call.i to %struct.PerlIO_list_s*
  tail call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 32, i32 1, i1 false) #2
  %refcnt.i = bitcast i8* %call.i to i64*
  store i64 1, i64* %refcnt.i, align 8, !tbaa !4
  %call2 = tail call i32 @PerlIO_parse_layers(%struct.PerlIO_list_s* %0, i8* %names) #10
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %cur = getelementptr inbounds i8* %call.i, i64 8
  %1 = bitcast i8* %cur to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %call4 = tail call i32 @PerlIO_apply_layera(%struct._PerlIO** %f, i8* %mode, %struct.PerlIO_list_s* %0, i64 0, i64 %2) #10
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %code.0 = phi i32 [ %call4, %if.then3 ], [ %call2, %if.then ]
  tail call void @PerlIO_list_free(%struct.PerlIO_list_s* %0) #10
  br label %if.end5

if.end5:                                          ; preds = %entry, %if.end
  %code.1 = phi i32 [ %code.0, %if.end ], [ 0, %entry ]
  ret i32 %code.1
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_binmode(%struct._PerlIO** %f, i32 %iotype, i32 %mode, i8* %names) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tab = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %name = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 1
  %2 = load i8** %name, align 8, !tbaa !3
  %tobool = icmp ne i8* %names, null
  %cond = select i1 %tobool, i8* %names, i8* getelementptr inbounds ([7 x i8]* @.str25, i64 0, i64 0)
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, %struct._PerlIO** %f, i8* %2, i32 %iotype, i32 %mode, i8* %cond) #10
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @PerlIO_apply_layers(%struct._PerlIO** %f, i8* null, i8* %names) #10
  %cmp = icmp eq i32 %call, 0
  br label %return

if.else:                                          ; preds = %entry
  %call3 = tail call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f, %struct._PerlIO_funcs* @PerlIO_raw, i8* null, %struct.sv* null) #10
  %tobool4 = icmp ne %struct._PerlIO** %call3, null
  br label %return

return:                                           ; preds = %if.else, %if.then
  %cmp.sink = phi i1 [ %cmp, %if.then ], [ %tobool4, %if.else ]
  %cond2 = zext i1 %cmp.sink to i32
  ret i32 %cond2
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO__close(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else10, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Close = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 16
  %2 = load i64 (%struct._PerlIO**)** %Close, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f) #9
  %conv = trunc i64 %call to i32
  br label %return

if.else:                                          ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i64 @PerlIOBase_close(%struct._PerlIO** %f) #10
  %conv9 = trunc i64 %call8 to i32
  br label %return

if.else10:                                        ; preds = %land.lhs.true, %entry
  %call11 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call11, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.else10, %if.else, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ %conv9, %if.else ], [ -1, %if.else10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBase_close(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else17, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else17, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %land.lhs.true
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %conv = sext i32 %call to i64
  %1 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %2, -2098689
  store i32 %and, i32* %flags, align 4, !tbaa !0
  br label %land.rhs

land.rhs:                                         ; preds = %if.else, %land.rhs.lr.ph
  %.pn = phi %struct._PerlIO* [ %0, %land.rhs.lr.ph ], [ %3, %if.else ]
  %n.034 = getelementptr inbounds %struct._PerlIO* %.pn, i64 0, i32 0
  %3 = load %struct._PerlIO** %n.034, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO* %3, null
  br i1 %tobool3, label %if.end19, label %while.body

while.body:                                       ; preds = %land.rhs
  %tab4 = getelementptr inbounds %struct._PerlIO* %3, i64 0, i32 1
  %4 = load %struct._PerlIO_funcs** %tab4, align 8, !tbaa !3
  %tobool5 = icmp eq %struct._PerlIO_funcs* %4, null
  br i1 %tobool5, label %if.else, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %while.body
  %Close = getelementptr inbounds %struct._PerlIO_funcs* %4, i64 0, i32 16
  %5 = load i64 (%struct._PerlIO**)** %Close, align 8, !tbaa !3
  %tobool7 = icmp eq i64 (%struct._PerlIO**)* %5, null
  br i1 %tobool7, label %if.else, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6
  %call10 = tail call i64 %5(%struct._PerlIO** %n.034) #9
  %cmp = icmp eq i64 %call10, 0
  %conv. = select i1 %cmp, i64 %conv, i64 -1
  ret i64 %conv.

if.else:                                          ; preds = %land.lhs.true6, %while.body
  %flags13 = getelementptr inbounds %struct._PerlIO* %3, i64 0, i32 2
  %6 = load i32* %flags13, align 4, !tbaa !0
  %and14 = and i32 %6, -2098689
  store i32 %and14, i32* %flags13, align 4, !tbaa !0
  br label %land.rhs

if.else17:                                        ; preds = %land.lhs.true, %entry
  %call18 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call18, align 4, !tbaa !0
  br label %if.end19

if.end19:                                         ; preds = %land.rhs, %if.else17
  %code.0 = phi i64 [ -1, %if.else17 ], [ %conv, %land.rhs ]
  ret i64 %code.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_fileno(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else10, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %cond.true.i, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Fileno = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 9
  %2 = load i64 (%struct._PerlIO**)** %Fileno, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %cond.true.i, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f) #9
  %conv = trunc i64 %call to i32
  br label %return

cond.true.i:                                      ; preds = %land.lhs.true4, %if.then
  %next.i = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %call.i = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %next.i) #9
  br label %return

if.else10:                                        ; preds = %land.lhs.true, %entry
  %call11 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call11, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %cond.true.i, %if.else10, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %if.else10 ], [ %call.i, %cond.true.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBase_fileno(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %cond.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %cond.end, label %cond.true

cond.true:                                        ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %call = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %next) #10
  %phitmp = sext i32 %call to i64
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi i64 [ %phitmp, %cond.true ], [ -1, %land.lhs.true ], [ -1, %entry ]
  ret i64 %cond
}

; Function Attrs: nounwind optsize uwtable
define %struct.PerlIO_list_s* @PerlIO_resolve_layers(i8* %layers, i8* nocapture %mode, i32 %narg, %struct.sv** nocapture %args) #1 {
entry:
  %call = tail call %struct.PerlIO_list_s* @PerlIO_default_layers() #10
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @PerlIO_stdstreams() #10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool1 = icmp eq i32 %narg, 0
  br i1 %tobool1, label %if.end13, label %if.then2

if.then2:                                         ; preds = %if.end
  %1 = load %struct.sv** %args, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %2, 524288
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  %call4 = tail call i32 @Perl_sv_isobject(%struct.sv* %1) #9
  %tobool5 = icmp eq i32 %call4, 0
  br i1 %tobool5, label %if.then6, label %if.end13

if.then6:                                         ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !3
  %xrv_rv = bitcast i8* %3 to %struct.sv**
  %4 = load %struct.sv** %xrv_rv, align 8, !tbaa !3
  %sv_flags.i = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags.i, align 4, !tbaa !0
  %and.i = and i32 %5, 255
  %cmp.i = icmp ult i32 %and.i, 10
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then6
  %call.i = tail call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([7 x i8]* @.str49, i64 0, i64 0), i64 6, i32 1) #9
  br label %PerlIO_layer_from_ref.exit

if.end.i:                                         ; preds = %if.then6
  switch i32 %and.i, label %if.end13 [
    i32 10, label %sw.bb.i
    i32 11, label %sw.bb4.i
    i32 12, label %sw.bb6.i
    i32 13, label %sw.bb8.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %call3.i = tail call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([6 x i8]* @.str50, i64 0, i64 0), i64 5, i32 0) #9
  br label %PerlIO_layer_from_ref.exit

sw.bb4.i:                                         ; preds = %if.end.i
  %call5.i = tail call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([5 x i8]* @.str51, i64 0, i64 0), i64 4, i32 0) #9
  br label %PerlIO_layer_from_ref.exit

sw.bb6.i:                                         ; preds = %if.end.i
  %call7.i = tail call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([5 x i8]* @.str52, i64 0, i64 0), i64 4, i32 0) #9
  br label %PerlIO_layer_from_ref.exit

sw.bb8.i:                                         ; preds = %if.end.i
  %call9.i = tail call %struct._PerlIO_funcs* @PerlIO_find_layer(i8* getelementptr inbounds ([5 x i8]* @.str53, i64 0, i64 0), i64 4, i32 0) #9
  br label %PerlIO_layer_from_ref.exit

PerlIO_layer_from_ref.exit:                       ; preds = %if.then.i, %sw.bb.i, %sw.bb4.i, %sw.bb6.i, %sw.bb8.i
  %retval.0.i = phi %struct._PerlIO_funcs* [ %call.i, %if.then.i ], [ %call9.i, %sw.bb8.i ], [ %call7.i, %sw.bb6.i ], [ %call5.i, %sw.bb4.i ], [ %call3.i, %sw.bb.i ]
  %tobool8 = icmp eq %struct._PerlIO_funcs* %retval.0.i, null
  br i1 %tobool8, label %if.end13, label %if.then9

if.then9:                                         ; preds = %PerlIO_layer_from_ref.exit
  %call.i59 = tail call i8* @Perl_safesysmalloc(i64 32) #9
  %6 = bitcast i8* %call.i59 to %struct.PerlIO_list_s*
  tail call void @llvm.memset.p0i8.i64(i8* %call.i59, i8 0, i64 32, i32 1, i1 false) #2
  %refcnt.i = bitcast i8* %call.i59 to i64*
  store i64 1, i64* %refcnt.i, align 8, !tbaa !4
  tail call void @PerlIO_list_push(%struct.PerlIO_list_s* %6, %struct._PerlIO_funcs* %retval.0.i, %struct.sv* @PL_sv_undef) #10
  br label %if.end13

if.end13:                                         ; preds = %if.end.i, %PerlIO_layer_from_ref.exit, %land.lhs.true, %if.then2, %if.end, %if.then9
  %def.0 = phi %struct.PerlIO_list_s* [ %call, %land.lhs.true ], [ %6, %if.then9 ], [ %call, %PerlIO_layer_from_ref.exit ], [ %call, %if.then2 ], [ %call, %if.end ], [ %call, %if.end.i ]
  %incdef.0 = phi i32 [ 1, %land.lhs.true ], [ 0, %if.then9 ], [ 1, %PerlIO_layer_from_ref.exit ], [ 1, %if.then2 ], [ 1, %if.end ], [ 1, %if.end.i ]
  %tobool14 = icmp eq i8* %layers, null
  br i1 %tobool14, label %if.end17, label %land.lhs.true19

if.end17:                                         ; preds = %if.end13
  %call16 = tail call fastcc i8* @PerlIO_context_layers(i8* %mode) #10
  %tobool18 = icmp eq i8* %call16, null
  br i1 %tobool18, label %if.else36, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %if.end13, %if.end17
  %layers.addr.064 = phi i8* [ %call16, %if.end17 ], [ %layers, %if.end13 ]
  %7 = load i8* %layers.addr.064, align 1, !tbaa !1
  %tobool20 = icmp eq i8 %7, 0
  br i1 %tobool20, label %if.else36, label %if.then21

if.then21:                                        ; preds = %land.lhs.true19
  %tobool22 = icmp eq i32 %incdef.0, 0
  br i1 %tobool22, label %if.end30, label %if.then23

if.then23:                                        ; preds = %if.then21
  %cur = getelementptr inbounds %struct.PerlIO_list_s* %def.0, i64 0, i32 1
  %call.i60 = tail call i8* @Perl_safesysmalloc(i64 32) #9
  %8 = bitcast i8* %call.i60 to %struct.PerlIO_list_s*
  tail call void @llvm.memset.p0i8.i64(i8* %call.i60, i8 0, i64 32, i32 1, i1 false) #2
  %refcnt.i61 = bitcast i8* %call.i60 to i64*
  store i64 1, i64* %refcnt.i61, align 8, !tbaa !4
  %9 = load i64* %cur, align 8, !tbaa !4
  %cmp65 = icmp sgt i64 %9, 0
  br i1 %cmp65, label %for.body.lr.ph, label %if.end30

for.body.lr.ph:                                   ; preds = %if.then23
  %array = getelementptr inbounds %struct.PerlIO_list_s* %def.0, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.066 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %10 = load %struct.PerlIO_pair_t** %array, align 8, !tbaa !3
  %funcs = getelementptr inbounds %struct.PerlIO_pair_t* %10, i64 %i.066, i32 0
  %11 = load %struct._PerlIO_funcs** %funcs, align 8, !tbaa !3
  %arg29 = getelementptr inbounds %struct.PerlIO_pair_t* %10, i64 %i.066, i32 1
  %12 = load %struct.sv** %arg29, align 8, !tbaa !3
  tail call void @PerlIO_list_push(%struct.PerlIO_list_s* %8, %struct._PerlIO_funcs* %11, %struct.sv* %12) #10
  %inc = add nsw i64 %i.066, 1
  %13 = load i64* %cur, align 8, !tbaa !4
  %cmp = icmp slt i64 %inc, %13
  br i1 %cmp, label %for.body, label %if.end30

if.end30:                                         ; preds = %if.then23, %for.body, %if.then21
  %av.0 = phi %struct.PerlIO_list_s* [ %def.0, %if.then21 ], [ %8, %for.body ], [ %8, %if.then23 ]
  %call31 = tail call i32 @PerlIO_parse_layers(%struct.PerlIO_list_s* %av.0, i8* %layers.addr.064) #10
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %return, label %if.else35

if.else35:                                        ; preds = %if.end30
  tail call void @PerlIO_list_free(%struct.PerlIO_list_s* %av.0) #10
  br label %return

if.else36:                                        ; preds = %land.lhs.true19, %if.end17
  %tobool37 = icmp eq i32 %incdef.0, 0
  br i1 %tobool37, label %return, label %if.then38

if.then38:                                        ; preds = %if.else36
  %refcnt = getelementptr inbounds %struct.PerlIO_list_s* %def.0, i64 0, i32 0
  %14 = load i64* %refcnt, align 8, !tbaa !4
  %inc39 = add nsw i64 %14, 1
  store i64 %inc39, i64* %refcnt, align 8, !tbaa !4
  br label %return

return:                                           ; preds = %if.then38, %if.else36, %if.end30, %if.else35
  %retval.0 = phi %struct.PerlIO_list_s* [ null, %if.else35 ], [ %av.0, %if.end30 ], [ %def.0, %if.else36 ], [ %def.0, %if.then38 ]
  ret %struct.PerlIO_list_s* %retval.0
}

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(%struct.sv*) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i8* @PerlIO_context_layers(i8* nocapture %mode) #1 {
entry:
  %len = alloca i64, align 8
  %0 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %tobool = icmp eq %struct.cop* %0, null
  br i1 %tobool, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %1 = load volatile %struct.cop** @PL_curcop, align 8, !tbaa !3
  %cop_io = getelementptr inbounds %struct.cop* %1, i64 0, i32 15
  %2 = load %struct.sv** %cop_io, align 8, !tbaa !3
  %tobool1 = icmp eq %struct.sv* %2, null
  br i1 %tobool1, label %if.end16, label %if.then2

if.then2:                                         ; preds = %if.then
  %sv_flags = getelementptr inbounds %struct.sv* %2, i64 0, i32 2
  %3 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %3, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then2
  %sv_any = getelementptr inbounds %struct.sv* %2, i64 0, i32 0
  %4 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %4, i64 8
  %5 = bitcast i8* %xpv_cur to i64*
  %6 = load i64* %5, align 8, !tbaa !4
  store i64 %6, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %4 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.then2
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %2, i64* %len, i32 2) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ %call, %cond.false ]
  %tobool4 = icmp eq i8* %cond, null
  br i1 %tobool4, label %if.end16, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %8 = load i8* %mode, align 1, !tbaa !1
  %cmp5 = icmp eq i8 %8, 114
  br i1 %cmp5, label %if.end16, label %if.then7

if.then7:                                         ; preds = %land.lhs.true
  %call8 = call i8* @strchr(i8* %cond, i32 0) #9
  %tobool9 = icmp eq i8* %call8, null
  br i1 %tobool9, label %if.end16, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.then7
  %sub.ptr.lhs.cast = ptrtoint i8* %call8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %cond to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %9 = load i64* %len, align 8, !tbaa !4
  %cmp11 = icmp ult i64 %sub.ptr.sub, %9
  %add.ptr = getelementptr inbounds i8* %call8, i64 1
  %add.ptr.cond = select i1 %cmp11, i8* %add.ptr, i8* %cond
  ret i8* %add.ptr.cond

if.end16:                                         ; preds = %if.then7, %land.lhs.true, %cond.end, %if.then, %entry
  %type.0 = phi i8* [ %cond, %if.then7 ], [ %cond, %land.lhs.true ], [ null, %cond.end ], [ null, %if.then ], [ null, %entry ]
  ret i8* %type.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_openn(i8* %layers, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #1 {
entry:
  %l = alloca %struct._PerlIO*, align 8
  %tobool = icmp ne %struct._PerlIO** %f, null
  %tobool.not = xor i1 %tobool, true
  %cmp = icmp eq i32 %narg, 1
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %land.lhs.true1, label %if.else

land.lhs.true1:                                   ; preds = %entry
  %0 = load %struct.sv** %args, align 8, !tbaa !3
  %cmp2 = icmp eq %struct.sv* %0, @PL_sv_undef
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true1
  %call = call %struct._PerlIO** @PerlIO_tmpfile() #10
  %tobool3 = icmp eq %struct._PerlIO** %call, null
  br i1 %tobool3, label %return, label %if.then4

if.then4:                                         ; preds = %if.then
  %tobool5 = icmp eq i8* %layers, null
  br i1 %tobool5, label %if.end, label %land.lhs.true9

if.end:                                           ; preds = %if.then4
  %call7 = call fastcc i8* @PerlIO_context_layers(i8* %mode) #10
  %tobool8 = icmp eq i8* %call7, null
  br i1 %tobool8, label %return, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.then4, %if.end
  %layers.addr.0131 = phi i8* [ %call7, %if.end ], [ %layers, %if.then4 ]
  %1 = load i8* %layers.addr.0131, align 1, !tbaa !1
  %tobool10 = icmp eq i8 %1, 0
  br i1 %tobool10, label %return, label %if.then11

if.then11:                                        ; preds = %land.lhs.true9
  %call12 = call i32 @PerlIO_apply_layers(%struct._PerlIO** %call, i8* %mode, i8* %layers.addr.0131) #10
  br label %return

if.else:                                          ; preds = %entry, %land.lhs.true1
  br i1 %tobool, label %land.lhs.true16, label %if.else27

land.lhs.true16:                                  ; preds = %if.else
  %2 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool17 = icmp eq %struct._PerlIO* %2, null
  br i1 %tobool17, label %if.else27, label %if.then18

if.then18:                                        ; preds = %land.lhs.true16
  store %struct._PerlIO* %2, %struct._PerlIO** %l, align 8, !tbaa !3
  %call.i = call i8* @Perl_safesysmalloc(i64 32) #9
  %3 = bitcast i8* %call.i to %struct.PerlIO_list_s*
  call void @llvm.memset.p0i8.i64(i8* %call.i, i8 0, i64 32, i32 1, i1 false) #2
  %refcnt.i = bitcast i8* %call.i to i64*
  store i64 1, i64* %refcnt.i, align 8, !tbaa !4
  %.pr = load %struct._PerlIO** %l, align 8, !tbaa !3
  %tobool20143 = icmp eq %struct._PerlIO* %.pr, null
  br i1 %tobool20143, label %if.end32, label %while.body

while.body:                                       ; preds = %if.then18, %cond.end
  %4 = phi %struct._PerlIO* [ %9, %cond.end ], [ %.pr, %if.then18 ]
  %tab21 = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 1
  %5 = load %struct._PerlIO_funcs** %tab21, align 8, !tbaa !3
  %Getarg = getelementptr inbounds %struct._PerlIO_funcs* %5, i64 0, i32 8
  %6 = load %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)** %Getarg, align 8, !tbaa !3
  %tobool22 = icmp eq %struct.sv* (%struct._PerlIO**, %struct.clone_params*, i32)* %6, null
  br i1 %tobool22, label %cond.end, label %cond.true

cond.true:                                        ; preds = %while.body
  %call25 = call %struct.sv* %6(%struct._PerlIO** %l, %struct.clone_params* null, i32 0) #9
  %.pre = load %struct._PerlIO** %l, align 8, !tbaa !3
  %tab26.phi.trans.insert = getelementptr inbounds %struct._PerlIO* %.pre, i64 0, i32 1
  %.pre147 = load %struct._PerlIO_funcs** %tab26.phi.trans.insert, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %while.body, %cond.true
  %7 = phi %struct._PerlIO_funcs* [ %.pre147, %cond.true ], [ %5, %while.body ]
  %cond = phi %struct.sv* [ %call25, %cond.true ], [ @PL_sv_undef, %while.body ]
  call void @PerlIO_list_push(%struct.PerlIO_list_s* %3, %struct._PerlIO_funcs* %7, %struct.sv* %cond) #10
  %8 = load %struct._PerlIO** %l, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %8, i64 0, i32 0
  %9 = load %struct._PerlIO** %next, align 8, !tbaa !3
  store %struct._PerlIO* %9, %struct._PerlIO** %l, align 8, !tbaa !3
  %tobool20 = icmp eq %struct._PerlIO* %9, null
  br i1 %tobool20, label %if.end32, label %while.body

if.else27:                                        ; preds = %land.lhs.true16, %if.else
  %call28 = call %struct.PerlIO_list_s* @PerlIO_resolve_layers(i8* %layers, i8* %mode, i32 %narg, %struct.sv** %args) #10
  %tobool29 = icmp eq %struct.PerlIO_list_s* %call28, null
  br i1 %tobool29, label %return, label %if.end32

if.end32:                                         ; preds = %if.then18, %cond.end, %if.else27
  %layera.0 = phi %struct.PerlIO_list_s* [ %call28, %if.else27 ], [ %3, %cond.end ], [ %3, %if.then18 ]
  %cur = getelementptr inbounds %struct.PerlIO_list_s* %layera.0, i64 0, i32 1
  %10 = load i64* %cur, align 8, !tbaa !4
  %cmp34140 = icmp sgt i64 %10, 0
  br i1 %cmp34140, label %while.body36, label %if.end77

while.body36:                                     ; preds = %if.end32, %while.cond33.backedge
  %n.0142.in = phi i64 [ %n.0142, %while.cond33.backedge ], [ %10, %if.end32 ]
  %n.0142 = add nsw i64 %n.0142.in, -1
  %call37 = call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %layera.0, i64 %n.0142, %struct._PerlIO_funcs* null) #10
  %tobool38 = icmp eq %struct._PerlIO_funcs* %call37, null
  br i1 %tobool38, label %while.cond33.backedge, label %land.lhs.true39

land.lhs.true39:                                  ; preds = %while.body36
  %Open = getelementptr inbounds %struct._PerlIO_funcs* %call37, i64 0, i32 6
  %11 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open, align 8, !tbaa !3
  %tobool40 = icmp eq %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %11, null
  br i1 %tobool40, label %while.cond33.backedge, label %if.then45

while.cond33.backedge:                            ; preds = %land.lhs.true39, %while.body36
  %cmp34 = icmp sgt i64 %n.0142, 0
  br i1 %cmp34, label %while.body36, label %if.end77

if.then45:                                        ; preds = %land.lhs.true39
  %cmp46 = icmp sgt i32 %narg, 1
  br i1 %cmp46, label %land.lhs.true48, label %if.end51

land.lhs.true48:                                  ; preds = %if.then45
  %kind = getelementptr inbounds %struct._PerlIO_funcs* %call37, i64 0, i32 3
  %12 = load i32* %kind, align 4, !tbaa !0
  %and = and i32 %12, 131072
  %tobool49 = icmp eq i32 %and, 0
  br i1 %tobool49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %land.lhs.true48
  %name = getelementptr inbounds %struct._PerlIO_funcs* %call37, i64 0, i32 1
  %13 = load i8** %name, align 8, !tbaa !3
  call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([39 x i8]* @.str28, i64 0, i64 0), i8* %13) #9
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true48, %if.then50, %if.then45
  %name52 = getelementptr inbounds %struct._PerlIO_funcs* %call37, i64 0, i32 1
  %14 = load i8** %name52, align 8, !tbaa !3
  call void (i8*, ...)* @PerlIO_debug(i8* undef, i8* %14, i8* %layers, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #10
  %15 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open, align 8, !tbaa !3
  %tobool54 = icmp eq %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %15, null
  br i1 %tobool54, label %if.end60.thread, label %if.end60

if.end60.thread:                                  ; preds = %if.end51
  %call59 = call i32* @__errno_location() #9
  store i32 22, i32* %call59, align 4, !tbaa !0
  br label %if.end77

if.end60:                                         ; preds = %if.end51
  %call57 = call %struct._PerlIO** %15(%struct._PerlIO_funcs* %call37, %struct.PerlIO_list_s* %layera.0, i64 %n.0142, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #9
  %tobool61 = icmp eq %struct._PerlIO** %call57, null
  br i1 %tobool61, label %if.end77, label %if.then62

if.then62:                                        ; preds = %if.end60
  %16 = load i64* %cur, align 8, !tbaa !4
  %cmp64 = icmp slt i64 %n.0142.in, %16
  br i1 %cmp64, label %if.then66, label %if.end77

if.then66:                                        ; preds = %if.then62
  %call69 = call i32 @PerlIO_apply_layera(%struct._PerlIO** %call57, i8* %mode, %struct.PerlIO_list_s* %layera.0, i64 %n.0142.in, i64 %16) #10
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.end77, label %if.then72

if.then72:                                        ; preds = %if.then66
  %call73 = call i32 @Perl_PerlIO_close(%struct._PerlIO** %call57) #10
  br label %if.end77

if.end77:                                         ; preds = %if.end32, %while.cond33.backedge, %if.end60.thread, %if.then66, %if.end60, %if.then72, %if.then62
  %f.addr.1 = phi %struct._PerlIO** [ null, %if.then72 ], [ %call57, %if.then66 ], [ %call57, %if.then62 ], [ null, %if.end60 ], [ null, %if.end60.thread ], [ %f, %while.cond33.backedge ], [ %f, %if.end32 ]
  call void @PerlIO_list_free(%struct.PerlIO_list_s* %layera.0) #10
  br label %return

return:                                           ; preds = %if.end77, %if.then11, %if.then, %if.end, %land.lhs.true9, %if.else27
  %retval.0 = phi %struct._PerlIO** [ null, %if.else27 ], [ %f.addr.1, %if.end77 ], [ %call, %if.then11 ], [ %call, %land.lhs.true9 ], [ %call, %if.end ], [ null, %if.then ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_tmpfile() #1 {
entry:
  %call = tail call %struct._IO_FILE* @tmpfile() #9
  %tobool = icmp eq %struct._IO_FILE* %call, null
  br i1 %tobool, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %call1 = tail call %struct._PerlIO** @PerlIO_allocate() #10
  %call2 = tail call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %call1, %struct._PerlIO_funcs* @PerlIO_stdio, i8* getelementptr inbounds ([3 x i8]* @.str47, i64 0, i64 0), %struct.sv* null) #10
  %tobool3 = icmp eq %struct._PerlIO** %call2, null
  br i1 %tobool3, label %if.end9, label %if.then4

if.then4:                                         ; preds = %if.then
  %0 = load %struct._PerlIO** %call2, align 8, !tbaa !3
  %tobool5 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool5, label %if.end9, label %if.then6

if.then6:                                         ; preds = %if.then4
  %1 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 0
  %call.c = bitcast %struct._IO_FILE* %call to %struct._PerlIO*
  store %struct._PerlIO* %call.c, %struct._PerlIO** %1, align 8, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.then, %entry, %if.then6
  %f.0 = phi %struct._PerlIO** [ %call2, %if.then6 ], [ %call2, %if.then4 ], [ null, %if.then ], [ null, %entry ]
  ret %struct._PerlIO** %f.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_PerlIO_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Read = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 11
  %2 = load i64 (%struct._PerlIO**, i8*, i64)** %Read, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**, i8*, i64)* %2, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #9
  br label %return

if.else:                                          ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i64 @PerlIOBase_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #10
  br label %return

if.else9:                                         ; preds = %land.lhs.true, %entry
  %call10 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call10, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.else9, %if.else, %if.then6
  %retval.0 = phi i64 [ %call, %if.then6 ], [ %call8, %if.else ], [ -1, %if.else9 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBase_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 1024
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %if.then2, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then
  %cmp55 = icmp eq i64 %count, 0
  br i1 %cmp55, label %while.end, label %while.body

if.then2:                                         ; preds = %if.then
  %or = or i32 %1, 2048
  store i32 %or, i32* %flags, align 4, !tbaa !0
  %call = tail call i32* @__errno_location() #9
  store i32 9, i32* %call, align 4, !tbaa !0
  br label %return

while.body:                                       ; preds = %if.then23, %while.cond.preheader, %while.cond.backedge
  %buf.057 = phi i8* [ %buf.1, %while.cond.backedge ], [ %vbuf, %while.cond.preheader ], [ %buf.1, %if.then23 ]
  %count.addr.056 = phi i64 [ %count.addr.1, %while.cond.backedge ], [ %count, %while.cond.preheader ], [ %count.addr.1, %if.then23 ]
  %call4 = tail call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %f) #10
  %conv = sext i32 %call4 to i64
  %cmp5 = icmp sgt i32 %call4, 0
  br i1 %cmp5, label %if.end10, label %if.end18

if.end10:                                         ; preds = %while.body
  %cmp8 = icmp slt i64 %count.addr.056, %conv
  %cond = select i1 %cmp8, i64 %count.addr.056, i64 %conv
  %cmp11 = icmp sgt i64 %cond, 0
  br i1 %cmp11, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end10
  %call14 = tail call i8* @Perl_PerlIO_get_ptr(%struct._PerlIO** %f) #10
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %buf.057, i8* %call14, i64 %cond, i32 1, i1 false)
  %add.ptr = getelementptr inbounds i8* %call14, i64 %cond
  %sub = sub nsw i64 %conv, %cond
  %conv15 = trunc i64 %sub to i32
  tail call void @Perl_PerlIO_set_ptrcnt(%struct._PerlIO** %f, i8* %add.ptr, i32 %conv15) #10
  %sub16 = sub i64 %count.addr.056, %cond
  %add.ptr17 = getelementptr inbounds i8* %buf.057, i64 %cond
  br label %if.end18

if.end18:                                         ; preds = %while.body, %if.then13, %if.end10
  %count.addr.1 = phi i64 [ %sub16, %if.then13 ], [ %count.addr.056, %if.end10 ], [ %count.addr.056, %while.body ]
  %buf.1 = phi i8* [ %add.ptr17, %if.then13 ], [ %buf.057, %if.end10 ], [ %buf.057, %while.body ]
  %avail.0 = phi i64 [ %sub, %if.then13 ], [ %conv, %if.end10 ], [ %conv, %while.body ]
  %cmp19 = icmp ne i64 %count.addr.1, 0
  %cmp21 = icmp slt i64 %avail.0, 1
  %or.cond = and i1 %cmp19, %cmp21
  br i1 %or.cond, label %if.then23, label %while.cond.backedge

if.then23:                                        ; preds = %if.end18
  %call24 = tail call i32 @Perl_PerlIO_fill(%struct._PerlIO** %f) #10
  %cmp25 = icmp ne i32 %call24, 0
  %cmp = icmp eq i64 %count.addr.1, 0
  %or.cond59 = or i1 %cmp25, %cmp
  br i1 %or.cond59, label %while.end, label %while.body

while.cond.backedge:                              ; preds = %if.end18
  %cmp.old = icmp eq i64 %count.addr.1, 0
  br i1 %cmp.old, label %while.end, label %while.body

while.end:                                        ; preds = %if.then23, %while.cond.backedge, %while.cond.preheader
  %buf.2 = phi i8* [ %vbuf, %while.cond.preheader ], [ %buf.1, %if.then23 ], [ %buf.1, %while.cond.backedge ]
  %sub.ptr.lhs.cast = ptrtoint i8* %buf.2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %vbuf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

return:                                           ; preds = %entry, %while.end, %if.then2
  %retval.0 = phi i64 [ %sub.ptr.sub, %while.end ], [ 0, %if.then2 ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_PerlIO_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else9, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else9, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Unread = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 12
  %2 = load i64 (%struct._PerlIO**, i8*, i64)** %Unread, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**, i8*, i64)* %2, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #9
  br label %return

if.else:                                          ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i64 @PerlIOBase_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #10
  br label %return

if.else9:                                         ; preds = %land.lhs.true, %entry
  %call10 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call10, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.else9, %if.else, %if.then6
  %retval.0 = phi i64 [ %call, %if.then6 ], [ %call8, %if.else ], [ -1, %if.else9 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBase_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %call = tail call i64 @Perl_PerlIO_tell(%struct._PerlIO** %f) #10
  %call1 = tail call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f, %struct._PerlIO_funcs* @PerlIO_pending, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0), %struct.sv* null) #10
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %1 = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 0
  %call.c = inttoptr i64 %call to %struct._PerlIO*
  store %struct._PerlIO* %call.c, %struct._PerlIO** %1, align 8, !tbaa !4
  %call2 = tail call i64 @PerlIOBuf_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #10
  ret i64 %call2
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_PerlIO_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Write = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 13
  %2 = load i64 (%struct._PerlIO**, i8*, i64)** %Write, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**, i8*, i64)* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #9
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call8, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i64 [ %call, %if.then6 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Seek = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 14
  %2 = load i64 (%struct._PerlIO**, i64, i32)** %Seek, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**, i64, i32)* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f, i64 %offset, i32 %whence) #9
  %conv = trunc i64 %call to i32
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call8, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @Perl_PerlIO_tell(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Tell = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 15
  %2 = load i64 (%struct._PerlIO**)** %Tell, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f) #9
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call8, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i64 [ %call, %if.then6 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIOBase_flush_linebuf() #1 {
entry:
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool12 = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool12, label %while.end, label %while.body

while.cond.loopexit:                              ; preds = %if.end
  %1 = load %struct._PerlIO** %3, align 8
  %2 = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 0
  %tobool = icmp eq %struct._PerlIO* %1, null
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond.loopexit
  %3 = phi %struct._PerlIO** [ %2, %while.cond.loopexit ], [ %0, %entry ]
  br label %for.body

for.body:                                         ; preds = %if.end, %while.body
  %.pn = phi %struct._PerlIO** [ %3, %while.body ], [ %f.011, %if.end ]
  %i.010 = phi i32 [ 1, %while.body ], [ %inc, %if.end ]
  %f.011 = getelementptr inbounds %struct._PerlIO** %.pn, i64 1
  %4 = load %struct._PerlIO** %f.011, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %4, null
  br i1 %tobool1, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %flags = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 2
  %5 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %5, 524800
  %cmp2 = icmp eq i32 %and, 524800
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f.011) #10
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then, %land.lhs.true
  %inc = add nsw i32 %i.010, 1
  %exitcond = icmp eq i32 %inc, 64
  br i1 %exitcond, label %while.cond.loopexit, label %for.body

while.end:                                        ; preds = %while.cond.loopexit, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_fill(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Fill = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 18
  %2 = load i64 (%struct._PerlIO**)** %Fill, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f) #9
  %conv = trunc i64 %call to i32
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call8, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_isutf8(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = lshr i32 %1, 15
  %and.lobit = and i32 %and, 1
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call = tail call i32* @__errno_location() #9
  store i32 9, i32* %call, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %and.lobit, %if.then ], [ -1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_eof(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else10, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.then.i, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Eof = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 19
  %2 = load i64 (%struct._PerlIO**)** %Eof, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.then.i, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f) #9
  %conv = trunc i64 %call to i32
  br label %return

if.then.i:                                        ; preds = %land.lhs.true4, %if.then
  %flags.i = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %3 = load i32* %flags.i, align 4, !tbaa !0
  %and.i = lshr i32 %3, 8
  %and.lobit.i = and i32 %and.i, 1
  br label %return

if.else10:                                        ; preds = %land.lhs.true, %entry
  %call11 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call11, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then.i, %if.else10, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %if.else10 ], [ %and.lobit.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i64 @PerlIOBase_eof(%struct._PerlIO** %f) #5 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = lshr i32 %1, 8
  %and.lobit = and i32 %and, 1
  %conv25 = zext i32 %and.lobit to i64
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i64 [ %conv25, %if.then ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_error(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else10, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.then.i, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Error = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 20
  %2 = load i64 (%struct._PerlIO**)** %Error, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.then.i, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f) #9
  %conv = trunc i64 %call to i32
  br label %return

if.then.i:                                        ; preds = %land.lhs.true4, %if.then
  %flags.i = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %3 = load i32* %flags.i, align 4, !tbaa !0
  %and.i = lshr i32 %3, 11
  %and.lobit.i = and i32 %and.i, 1
  br label %return

if.else10:                                        ; preds = %land.lhs.true, %entry
  %call11 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call11, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then.i, %if.else10, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %if.else10 ], [ %and.lobit.i, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i64 @PerlIOBase_error(%struct._PerlIO** %f) #5 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = lshr i32 %1, 11
  %and.lobit = and i32 %and, 1
  %conv25 = zext i32 %and.lobit to i64
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i64 [ %conv25, %if.then ], [ 1, %land.lhs.true ], [ 1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_PerlIO_clearerr(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Clearerr = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 21
  %2 = load void (%struct._PerlIO**)** %Clearerr, align 8, !tbaa !3
  %tobool5 = icmp eq void (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  tail call void %2(%struct._PerlIO** %f) #9
  br label %if.end9

if.else:                                          ; preds = %land.lhs.true4, %if.then
  tail call void @PerlIOBase_clearerr(%struct._PerlIO** %f) #10
  br label %if.end9

if.else8:                                         ; preds = %land.lhs.true, %entry
  %call = tail call i32* @__errno_location() #9
  store i32 9, i32* %call, align 4, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.else, %if.else8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIOBase_clearerr(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.end6, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.end6, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, -2305
  store i32 %and, i32* %flags, align 4, !tbaa !0
  %2 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool4 = icmp eq %struct._PerlIO* %2, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then
  tail call void @Perl_PerlIO_clearerr(%struct._PerlIO** %next) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then, %land.lhs.true, %entry, %if.then5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_PerlIO_setlinebuf(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.then.i, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Setlinebuf = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 22
  %2 = load void (%struct._PerlIO**)** %Setlinebuf, align 8, !tbaa !3
  %tobool5 = icmp eq void (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.then.i, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  tail call void %2(%struct._PerlIO** %f) #9
  br label %if.end9

if.then.i:                                        ; preds = %land.lhs.true4, %if.then
  %flags.i = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %3 = load i32* %flags.i, align 4, !tbaa !0
  %or.i = or i32 %3, 524288
  store i32 %or.i, i32* %flags.i, align 4, !tbaa !0
  br label %if.end9

if.else8:                                         ; preds = %land.lhs.true, %entry
  %call = tail call i32* @__errno_location() #9
  store i32 9, i32* %call, align 4, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %if.then.i, %if.then6, %if.else8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIOBase_setlinebuf(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %1, 524288
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_has_base(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %Get_base = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 23
  %2 = load i8* (%struct._PerlIO**)** %Get_base, align 8, !tbaa !3
  %cmp = icmp ne i8* (%struct._PerlIO**)* %2, null
  %conv = zext i1 %cmp to i32
  br label %return

if.end:                                           ; preds = %if.then
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call5, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then4
  %retval.0 = phi i32 [ %conv, %if.then4 ], [ 0, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_fast_gets(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 4194304
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %tab4 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab4, align 8, !tbaa !3
  %tobool5 = icmp eq %struct._PerlIO_funcs* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs* %2, i64 0, i32 27
  %3 = load void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8, !tbaa !3
  %cmp = icmp ne void (%struct._PerlIO**, i8*, i64)* %3, null
  %conv = zext i1 %cmp to i32
  br label %return

if.end:                                           ; preds = %if.then
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %call7 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call7, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ 0, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_has_cntptr(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %Get_ptr = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 25
  %2 = load i8* (%struct._PerlIO**)** %Get_ptr, align 8, !tbaa !3
  %cmp = icmp eq i8* (%struct._PerlIO**)* %2, null
  br i1 %cmp, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.then4
  %Get_cnt = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 26
  %3 = load i64 (%struct._PerlIO**)** %Get_cnt, align 8, !tbaa !3
  %cmp5 = icmp ne i64 (%struct._PerlIO**)* %3, null
  br label %land.end

land.end:                                         ; preds = %if.then4, %land.rhs
  %4 = phi i1 [ false, %if.then4 ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  br label %return

if.end:                                           ; preds = %if.then
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call6 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call6, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %land.end
  %retval.0 = phi i32 [ %land.ext, %land.end ], [ 0, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_canset_cnt(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 27
  %2 = load void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8, !tbaa !3
  %cmp = icmp ne void (%struct._PerlIO**, i8*, i64)* %2, null
  %conv = zext i1 %cmp to i32
  br label %return

if.end:                                           ; preds = %if.then
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call5, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then4
  %retval.0 = phi i32 [ %conv, %if.then4 ], [ 0, %if.else ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Get_base = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 23
  %2 = load i8* (%struct._PerlIO**)** %Get_base, align 8, !tbaa !3
  %tobool5 = icmp eq i8* (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i8* %2(%struct._PerlIO** %f) #9
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call8, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i8* [ %call, %if.then6 ], [ null, %if.else ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_get_bufsiz(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Get_bufsiz = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 24
  %2 = load i64 (%struct._PerlIO**)** %Get_bufsiz, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f) #9
  %conv = trunc i64 %call to i32
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call8, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @Perl_PerlIO_get_ptr(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Get_ptr = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 25
  %2 = load i8* (%struct._PerlIO**)** %Get_ptr, align 8, !tbaa !3
  %tobool5 = icmp eq i8* (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i8* %2(%struct._PerlIO** %f) #9
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call8, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i8* [ %call, %if.then6 ], [ null, %if.else ], [ null, %if.end ]
  ret i8* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.end, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Get_cnt = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 26
  %2 = load i64 (%struct._PerlIO**)** %Get_cnt, align 8, !tbaa !3
  %tobool5 = icmp eq i64 (%struct._PerlIO**)* %2, null
  br i1 %tobool5, label %if.end, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %call = tail call i64 %2(%struct._PerlIO** %f) #9
  %conv = trunc i64 %call to i32
  br label %return

if.end:                                           ; preds = %land.lhs.true4, %if.then
  %call8 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call8, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then6
  %retval.0 = phi i32 [ %conv, %if.then6 ], [ -1, %if.else ], [ -1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_PerlIO_set_cnt(%struct._PerlIO** %f, i32 %cnt) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 27
  %2 = load void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8, !tbaa !3
  %tobool5 = icmp eq void (%struct._PerlIO**, i8*, i64)* %2, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %conv = sext i32 %cnt to i64
  tail call void %2(%struct._PerlIO** %f, i8* null, i64 %conv) #9
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true4, %if.then
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %if.end10

if.else8:                                         ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.else, %if.else8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Perl_PerlIO_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i32 %cnt) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else8, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %tab2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %1 = load %struct._PerlIO_funcs** %tab2, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._PerlIO_funcs* %1, null
  br i1 %tobool3, label %if.else, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %if.then
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs* %1, i64 0, i32 27
  %2 = load void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8, !tbaa !3
  %tobool5 = icmp eq void (%struct._PerlIO**, i8*, i64)* %2, null
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true4
  %conv = sext i32 %cnt to i64
  tail call void %2(%struct._PerlIO** %f, i8* %ptr, i64 %conv) #9
  br label %if.end10

if.else:                                          ; preds = %land.lhs.true4, %if.then
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %if.end10

if.else8:                                         ; preds = %land.lhs.true, %entry
  %call9 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call9, align 4, !tbaa !0
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.else, %if.else8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOUtf8_pushed(%struct._PerlIO** %f, i8* nocapture %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* nocapture %tab) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %return, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %kind = getelementptr inbounds %struct._PerlIO_funcs* %tab, i64 0, i32 3
  %1 = load i32* %kind, align 4, !tbaa !0
  %and = and i32 %1, 32768
  %tobool2 = icmp eq i32 %and, 0
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !0
  %and5 = and i32 %2, -32769
  %or = or i32 %2, 32768
  %storemerge = select i1 %tobool2, i32 %and5, i32 %or
  store i32 %storemerge, i32* %flags, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %land.lhs.true, %if.then
  %retval.0 = phi i64 [ 0, %if.then ], [ -1, %land.lhs.true ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIORaw_open(%struct._PerlIO_funcs* nocapture %self, %struct.PerlIO_list_s* %layers, i64 %n, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %old, i32 %narg, %struct.sv** %args) #1 {
entry:
  %call.i = tail call %struct.PerlIO_list_s* @PerlIO_default_layers() #9
  %call3.i = tail call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %call.i, i64 0, %struct._PerlIO_funcs* @PerlIO_stdio) #9
  %tobool = icmp eq %struct._PerlIO_funcs* %call3.i, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %Open = getelementptr inbounds %struct._PerlIO_funcs* %call3.i, i64 0, i32 6
  %0 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %0, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %sub = add nsw i64 %n, -1
  %call3 = tail call %struct._PerlIO** %0(%struct._PerlIO_funcs* %call3.i, %struct.PerlIO_list_s* %layers, i64 %sub, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %old, i32 %narg, %struct.sv** %args) #9
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call4 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call4, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._PerlIO** [ %call3, %if.then ], [ null, %if.end ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @PerlIOBase_popped(%struct._PerlIO** nocapture %f) #0 {
entry:
  ret i64 0
}

; Function Attrs: nounwind optsize uwtable
define i8* @PerlIO_modestr(%struct._PerlIO** %f, i8* %buf) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.end31, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.end31, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %flags2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags2, align 4, !tbaa !0
  %conv = zext i32 %1 to i64
  %and = and i64 %conv, 8192
  %tobool3 = icmp eq i64 %and, 0
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then
  %incdec.ptr = getelementptr inbounds i8* %buf, i64 1
  store i8 97, i8* %buf, align 1, !tbaa !1
  %and5 = and i64 %conv, 1024
  %tobool6 = icmp eq i64 %and5, 0
  br i1 %tobool6, label %if.end31, label %if.then7

if.then7:                                         ; preds = %if.then4
  %incdec.ptr8 = getelementptr inbounds i8* %buf, i64 2
  store i8 43, i8* %incdec.ptr, align 1, !tbaa !1
  br label %if.end31

if.else:                                          ; preds = %if.then
  %and9 = and i64 %conv, 1024
  %tobool10 = icmp eq i64 %and9, 0
  br i1 %tobool10, label %if.else18, label %if.then11

if.then11:                                        ; preds = %if.else
  %incdec.ptr12 = getelementptr inbounds i8* %buf, i64 1
  store i8 114, i8* %buf, align 1, !tbaa !1
  %and13 = and i64 %conv, 512
  %tobool14 = icmp eq i64 %and13, 0
  br i1 %tobool14, label %if.end31, label %if.then15

if.then15:                                        ; preds = %if.then11
  %incdec.ptr16 = getelementptr inbounds i8* %buf, i64 2
  store i8 43, i8* %incdec.ptr12, align 1, !tbaa !1
  br label %if.end31

if.else18:                                        ; preds = %if.else
  %and19 = and i64 %conv, 512
  %tobool20 = icmp eq i64 %and19, 0
  br i1 %tobool20, label %if.end31, label %if.then21

if.then21:                                        ; preds = %if.else18
  %incdec.ptr22 = getelementptr inbounds i8* %buf, i64 1
  store i8 119, i8* %buf, align 1, !tbaa !1
  br label %if.end31

if.end31:                                         ; preds = %if.then21, %if.then4, %if.then11, %if.else18, %land.lhs.true, %entry, %if.then7, %if.then15
  %s.0 = phi i8* [ %incdec.ptr8, %if.then7 ], [ %incdec.ptr, %if.then4 ], [ %incdec.ptr16, %if.then15 ], [ %incdec.ptr12, %if.then11 ], [ %incdec.ptr22, %if.then21 ], [ %buf, %if.else18 ], [ %buf, %land.lhs.true ], [ %buf, %entry ]
  store i8 0, i8* %s.0, align 1, !tbaa !1
  ret i8* %buf
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBase_pushed(%struct._PerlIO** nocapture %f, i8* %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* nocapture %tab) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, -13825
  store i32 %and, i32* %flags, align 4, !tbaa !0
  %Set_ptrcnt = getelementptr inbounds %struct._PerlIO_funcs* %tab, i64 0, i32 27
  %2 = load void (%struct._PerlIO**, i8*, i64)** %Set_ptrcnt, align 8, !tbaa !3
  %cmp = icmp eq void (%struct._PerlIO**, i8*, i64)* %2, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %or = or i32 %and, 4194304
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i32 [ %and, %entry ], [ %or, %if.then ]
  %tobool = icmp eq i8* %mode, null
  br i1 %tobool, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %4 = load i8* %mode, align 1, !tbaa !1
  switch i8 %4, label %if.end9 [
    i8 35, label %if.then8
    i8 73, label %if.then8
  ]

if.then8:                                         ; preds = %if.then2, %if.then2
  %incdec.ptr = getelementptr inbounds i8* %mode, i64 1
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !1
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.then8
  %5 = phi i8 [ %.pre, %if.then8 ], [ %4, %if.then2 ]
  %mode.addr.0 = phi i8* [ %incdec.ptr, %if.then8 ], [ %mode, %if.then2 ]
  %incdec.ptr10 = getelementptr inbounds i8* %mode.addr.0, i64 1
  %conv11 = sext i8 %5 to i32
  switch i32 %conv11, label %sw.default [
    i32 114, label %sw.bb
    i32 97, label %sw.bb14
    i32 119, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end9
  %or13 = or i32 %3, 1024
  store i32 %or13, i32* %flags, align 4, !tbaa !0
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %sw.bb17, %sw.bb14, %sw.bb
  %6 = phi i32 [ %or19, %sw.bb17 ], [ %or16, %sw.bb14 ], [ %or13, %sw.bb ]
  %7 = load i8* %incdec.ptr10, align 1, !tbaa !1
  %tobool2060 = icmp eq i8 %7, 0
  br i1 %tobool2060, label %return, label %while.body

sw.bb14:                                          ; preds = %if.end9
  %or16 = or i32 %3, 8704
  store i32 %or16, i32* %flags, align 4, !tbaa !0
  br label %while.cond.preheader

sw.bb17:                                          ; preds = %if.end9
  %or19 = or i32 %3, 4608
  store i32 %or19, i32* %flags, align 4, !tbaa !0
  br label %while.cond.preheader

sw.default:                                       ; preds = %if.end9
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %return

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %8 = phi i32 [ %10, %while.cond.backedge ], [ %6, %while.cond.preheader ]
  %9 = phi i8 [ %11, %while.cond.backedge ], [ %7, %while.cond.preheader ]
  %mode.addr.161 = phi i8* [ %incdec.ptr21, %while.cond.backedge ], [ %incdec.ptr10, %while.cond.preheader ]
  %incdec.ptr21 = getelementptr inbounds i8* %mode.addr.161, i64 1
  %conv22 = sext i8 %9 to i32
  switch i32 %conv22, label %sw.default32 [
    i32 43, label %sw.bb23
    i32 98, label %sw.bb26
    i32 116, label %sw.bb29
  ]

sw.bb23:                                          ; preds = %while.body
  %or25 = or i32 %8, 1536
  store i32 %or25, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

sw.bb26:                                          ; preds = %while.body
  %and28 = and i32 %8, -16385
  store i32 %and28, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

sw.bb29:                                          ; preds = %while.body
  %or31 = or i32 %8, 16384
  store i32 %or31, i32* %flags, align 4, !tbaa !0
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.bb29, %sw.bb26, %sw.bb23
  %10 = phi i32 [ %or31, %sw.bb29 ], [ %and28, %sw.bb26 ], [ %or25, %sw.bb23 ]
  %11 = load i8* %incdec.ptr21, align 1, !tbaa !1
  %tobool20 = icmp eq i8 %11, 0
  br i1 %tobool20, label %return, label %while.body

sw.default32:                                     ; preds = %while.body
  %call33 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call33, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %12 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool35 = icmp eq %struct._PerlIO* %12, null
  br i1 %tobool35, label %return, label %if.then36

if.then36:                                        ; preds = %if.else
  %flags38 = getelementptr inbounds %struct._PerlIO* %12, i64 0, i32 2
  %13 = load i32* %flags38, align 4, !tbaa !0
  %and39 = and i32 %13, 13824
  %or41 = or i32 %3, %and39
  store i32 %or41, i32* %flags, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %while.cond.preheader, %while.cond.backedge, %if.then36, %if.else, %sw.default32, %sw.default
  %retval.0 = phi i64 [ -1, %sw.default ], [ -1, %sw.default32 ], [ 0, %if.else ], [ 0, %if.then36 ], [ 0, %while.cond.backedge ], [ 0, %while.cond.preheader ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 131072
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %buf1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %2 = bitcast %struct._PerlIO* %buf1 to i8**
  %3 = load i8** %2, align 8, !tbaa !3
  %tobool2 = icmp eq i8* %3, null
  br i1 %tobool2, label %if.end5, label %if.then8

if.end5:                                          ; preds = %if.end
  %call4 = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %.pr = load i8** %2, align 8, !tbaa !3
  %tobool7 = icmp eq i8* %.pr, null
  br i1 %tobool7, label %if.end38, label %if.then8

if.then8:                                         ; preds = %if.end5, %if.end
  %4 = phi i8* [ %3, %if.end ], [ %.pr, %if.end5 ]
  %5 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags9 = getelementptr inbounds %struct._PerlIO* %5, i64 0, i32 2
  %6 = load i32* %flags9, align 4, !tbaa !0
  %and10 = and i32 %6, 262144
  %tobool11 = icmp eq i32 %and10, 0
  br i1 %tobool11, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then8
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %7 = bitcast i32* %ptr to i8**
  %8 = load i8** %7, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end20

if.else:                                          ; preds = %if.then8
  %bufsiz = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 1
  %9 = bitcast %struct._PerlIO_funcs** %bufsiz to i64*
  %10 = load i64* %9, align 8, !tbaa !4
  %add.ptr15 = getelementptr inbounds i8* %4, i64 %10
  %end = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %add.ptr15.c = bitcast i8* %add.ptr15 to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %add.ptr15.c, %struct._PerlIO_funcs** %end, align 8, !tbaa !3
  %ptr17 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %11 = bitcast i32* %ptr17 to i8**
  store i8* %add.ptr15, i8** %11, align 8, !tbaa !3
  %12 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags18 = getelementptr inbounds %struct._PerlIO* %12, i64 0, i32 2
  %13 = load i32* %flags18, align 4, !tbaa !0
  %or = or i32 %13, 262144
  store i32 %or, i32* %flags18, align 4, !tbaa !0
  %posn = getelementptr inbounds %struct._PerlIO* %0, i64 2
  %14 = bitcast %struct._PerlIO* %posn to i64*
  %15 = load i64* %14, align 8, !tbaa !4
  %sub = sub i64 %15, %10
  %16 = getelementptr inbounds %struct._PerlIO* %posn, i64 0, i32 0
  %sub.c = inttoptr i64 %sub to %struct._PerlIO*
  store %struct._PerlIO* %sub.c, %struct._PerlIO** %16, align 8, !tbaa !4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then12
  %17 = phi i8* [ %8, %if.then12 ], [ %add.ptr15, %if.else ]
  %avail.0 = phi i64 [ %sub.ptr.sub, %if.then12 ], [ %10, %if.else ]
  %cmp = icmp sgt i64 %avail.0, %count
  %count.avail.0 = select i1 %cmp, i64 %count, i64 %avail.0
  %cmp23 = icmp sgt i64 %count.avail.0, 0
  br i1 %cmp23, label %if.then24, label %if.end38

if.then24:                                        ; preds = %if.end20
  %ptr25 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %18 = bitcast i32* %ptr25 to i8**
  %idx.neg = sub i64 0, %count.avail.0
  %add.ptr26 = getelementptr inbounds i8* %17, i64 %idx.neg
  store i8* %add.ptr26, i8** %18, align 8, !tbaa !3
  %add.ptr.sum = sub i64 %count, %count.avail.0
  %add.ptr28 = getelementptr inbounds i8* %vbuf, i64 %add.ptr.sum
  %cmp30 = icmp eq i8* %add.ptr28, %add.ptr26
  br i1 %cmp30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.then24
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr26, i8* %add.ptr28, i64 %count.avail.0, i32 1, i1 false)
  br label %if.end33

if.end33:                                         ; preds = %if.then24, %if.then31
  %19 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags35 = getelementptr inbounds %struct._PerlIO* %19, i64 0, i32 2
  %20 = load i32* %flags35, align 4, !tbaa !0
  %and36 = and i32 %20, -257
  store i32 %and36, i32* %flags35, align 4, !tbaa !0
  br label %if.end38

if.end38:                                         ; preds = %if.end5, %if.end20, %if.end33
  %count.addr.0 = phi i64 [ %add.ptr.sum, %if.end33 ], [ %count, %if.end20 ], [ %count, %if.end5 ]
  %unread.0 = phi i64 [ %count.avail.0, %if.end33 ], [ 0, %if.end20 ], [ 0, %if.end5 ]
  %cmp39 = icmp eq i64 %count.addr.0, 0
  br i1 %cmp39, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end38
  %call41 = tail call i64 @PerlIOBase_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count.addr.0) #10
  %add42 = add nsw i64 %call41, %unread.0
  br label %if.end43

if.end43:                                         ; preds = %if.end38, %if.then40
  %unread.1 = phi i64 [ %add42, %if.then40 ], [ %unread.0, %if.end38 ]
  ret i64 %unread.1
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #2

; Function Attrs: nounwind optsize readnone uwtable
define i64 @PerlIOBase_noop_ok(%struct._PerlIO** nocapture %f) #0 {
entry:
  ret i64 0
}

; Function Attrs: nounwind optsize readnone uwtable
define i64 @PerlIOBase_noop_fail(%struct._PerlIO** nocapture %f) #0 {
entry:
  ret i64 -1
}

; Function Attrs: optsize
declare %struct.sv* @Perl_newSVsv(%struct.sv*) #3

; Function Attrs: nounwind optsize readnone uwtable
define void @PerlIO_init() #0 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIOUnix_refcnt_inc(i32 %fd) #1 {
entry:
  %0 = icmp ult i32 %fd, 2048
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %fd to i64
  %arrayidx = getelementptr inbounds [2048 x i32]* @PerlIO_fd_refcnt, i64 0, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %arrayidx, align 4, !tbaa !0
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i32 %fd, i32 %inc) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIOUnix_refcnt_dec(i32 %fd) #1 {
entry:
  %0 = icmp ult i32 %fd, 2048
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %fd to i64
  %arrayidx = getelementptr inbounds [2048 x i32]* @PerlIO_fd_refcnt, i64 0, i64 %idxprom
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %arrayidx, align 4, !tbaa !0
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef, i32 %fd, i32 %dec) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cnt.0 = phi i32 [ %dec, %if.then ], [ 0, %entry ]
  ret i32 %cnt.0
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_cleanup() #1 {
entry:
  tail call void (i8*, ...)* @PerlIO_debug(i8* undef) #10
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %i.016 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  tail call void @PerlIOUnix_refcnt_inc(i32 %i.016) #10
  %inc = add nsw i32 %i.016, 1
  %exitcond17 = icmp eq i32 %inc, 3
  br i1 %exitcond17, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  tail call void @PerlIO_cleantable(%struct._PerlIO*** @PL_perlio) #10
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.end
  %i.115 = phi i32 [ 0, %for.end ], [ %inc5, %for.body3 ]
  %call = tail call i32 @PerlIOUnix_refcnt_dec(i32 %i.115) #10
  %inc5 = add nsw i32 %i.115, 1
  %exitcond = icmp eq i32 %inc5, 3
  br i1 %exitcond, label %for.end6, label %for.body3

for.end6:                                         ; preds = %for.body3
  %0 = load %struct.PerlIO_list_s** @PL_known_layers, align 8, !tbaa !3
  %tobool = icmp eq %struct.PerlIO_list_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.end6
  tail call void @PerlIO_list_free(%struct.PerlIO_list_s* %0) #10
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** @PL_known_layers, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %for.end6, %if.then
  %1 = load %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  %tobool7 = icmp eq %struct.PerlIO_list_s* %1, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  tail call void @PerlIO_list_free(%struct.PerlIO_list_s* %1) #10
  store %struct.PerlIO_list_s* null, %struct.PerlIO_list_s** @PL_def_layerlist, align 8, !tbaa !3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIOUnix_oflags(i8* nocapture %mode) #1 {
entry:
  %0 = load i8* %mode, align 1, !tbaa !1
  switch i8 %0, label %if.end [
    i8 73, label %if.then
    i8 35, label %if.then
  ]

if.then:                                          ; preds = %entry, %entry
  %incdec.ptr = getelementptr inbounds i8* %mode, i64 1
  %.pre = load i8* %incdec.ptr, align 1, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi i8 [ %.pre, %if.then ], [ %0, %entry ]
  %mode.addr.0 = phi i8* [ %incdec.ptr, %if.then ], [ %mode, %entry ]
  %conv5 = sext i8 %1 to i32
  switch i32 %conv5, label %sw.epilog [
    i32 114, label %sw.bb
    i32 119, label %sw.bb13
    i32 97, label %sw.bb22
  ]

sw.bb:                                            ; preds = %if.end
  %incdec.ptr6 = getelementptr inbounds i8* %mode.addr.0, i64 1
  %2 = load i8* %incdec.ptr6, align 1, !tbaa !1
  %cmp8 = icmp eq i8 %2, 43
  %incdec.ptr11 = getelementptr inbounds i8* %mode.addr.0, i64 2
  %incdec.ptr11.incdec.ptr6 = select i1 %cmp8, i8* %incdec.ptr11, i8* %incdec.ptr6
  %. = select i1 %cmp8, i32 2, i32 0
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  %incdec.ptr14 = getelementptr inbounds i8* %mode.addr.0, i64 1
  %3 = load i8* %incdec.ptr14, align 1, !tbaa !1
  %cmp16 = icmp eq i8 %3, 43
  %incdec.ptr19 = getelementptr inbounds i8* %mode.addr.0, i64 2
  %incdec.ptr19.incdec.ptr14 = select i1 %cmp16, i8* %incdec.ptr19, i8* %incdec.ptr14
  %.74 = select i1 %cmp16, i32 578, i32 577
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %incdec.ptr23 = getelementptr inbounds i8* %mode.addr.0, i64 1
  %4 = load i8* %incdec.ptr23, align 1, !tbaa !1
  %cmp25 = icmp eq i8 %4, 43
  %incdec.ptr29 = getelementptr inbounds i8* %mode.addr.0, i64 2
  %incdec.ptr29.incdec.ptr23 = select i1 %cmp25, i8* %incdec.ptr29, i8* %incdec.ptr23
  %.75 = select i1 %cmp25, i32 1090, i32 1089
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb13, %sw.bb, %if.end
  %mode.addr.1 = phi i8* [ %mode.addr.0, %if.end ], [ %incdec.ptr11.incdec.ptr6, %sw.bb ], [ %incdec.ptr19.incdec.ptr14, %sw.bb13 ], [ %incdec.ptr29.incdec.ptr23, %sw.bb22 ]
  %oflags.0 = phi i32 [ -1, %if.end ], [ %., %sw.bb ], [ %.74, %sw.bb13 ], [ %.75, %sw.bb22 ]
  %5 = load i8* %mode.addr.1, align 1, !tbaa !1
  switch i8 %5, label %if.end45 [
    i8 98, label %if.then36
    i8 116, label %if.then42
  ]

if.then36:                                        ; preds = %sw.epilog
  %incdec.ptr37 = getelementptr inbounds i8* %mode.addr.1, i64 1
  br label %if.end45

if.then42:                                        ; preds = %sw.epilog
  %incdec.ptr43 = getelementptr inbounds i8* %mode.addr.1, i64 1
  br label %if.end45

if.end45:                                         ; preds = %sw.epilog, %if.then42, %if.then36
  %mode.addr.2 = phi i8* [ %incdec.ptr37, %if.then36 ], [ %incdec.ptr43, %if.then42 ], [ %mode.addr.1, %sw.epilog ]
  %6 = load i8* %mode.addr.2, align 1, !tbaa !1
  %tobool = icmp ne i8 %6, 0
  %cmp48 = icmp eq i32 %oflags.0, -1
  %or.cond = or i1 %tobool, %cmp48
  br i1 %or.cond, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end45
  %call = tail call i32* @__errno_location() #9
  store i32 22, i32* %call, align 4, !tbaa !0
  br label %if.end51

if.end51:                                         ; preds = %if.end45, %if.then50
  %oflags.2 = phi i32 [ -1, %if.then50 ], [ %oflags.0, %if.end45 ]
  ret i32 %oflags.2
}

; Function Attrs: nounwind optsize readonly uwtable
define i64 @PerlIOUnix_fileno(%struct._PerlIO** nocapture %f) #5 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %fd = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %fd to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %conv = sext i32 %2 to i64
  ret i64 %conv
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOUnix_pushed(%struct._PerlIO** nocapture %f, i8* %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* nocapture %tab) #1 {
entry:
  %call = tail call i64 @PerlIOBase_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* undef, %struct._PerlIO_funcs* %tab) #10
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %1 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %next) #10
  %2 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next3 = getelementptr inbounds %struct._PerlIO* %2, i64 0, i32 0
  %call4 = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %next3) #10
  %tobool5 = icmp eq i8* %mode, null
  br i1 %tobool5, label %cond.end, label %cond.true

cond.true:                                        ; preds = %if.then
  %call6 = tail call i32 @PerlIOUnix_oflags(i8* %mode) #10
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi i32 [ %call6, %cond.true ], [ -1, %if.then ]
  %3 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %4 = bitcast %struct._PerlIO* %3 to %struct.PerlIOUnix*
  %fd1.i = getelementptr inbounds %struct._PerlIO* %3, i64 1
  %5 = bitcast %struct._PerlIO* %fd1.i to i32*
  store i32 %call4, i32* %5, align 4, !tbaa !0
  %oflags.i = getelementptr inbounds %struct.PerlIOUnix* %4, i64 0, i32 2
  store i32 %cond, i32* %oflags.i, align 4, !tbaa !0
  tail call void @PerlIOUnix_refcnt_inc(i32 %call4) #9
  %.pre = load %struct._PerlIO** %f, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %cond.end
  %6 = phi %struct._PerlIO* [ %0, %entry ], [ %.pre, %cond.end ]
  %flags = getelementptr inbounds %struct._PerlIO* %6, i64 0, i32 2
  %7 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %7, 2097152
  store i32 %or, i32* %flags, align 4, !tbaa !0
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOUnix_seek(%struct._PerlIO** nocapture %f, i64 %offset, i32 %whence) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 16777216
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #9
  store i32 29, i32* %call, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %entry
  %fd1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %2 = bitcast %struct._PerlIO* %fd1 to i32*
  %3 = load i32* %2, align 4, !tbaa !0
  %call2 = tail call i64 @lseek(i32 %3, i64 %offset, i32 %whence) #9
  %cmp = icmp eq i64 %call2, -1
  br i1 %cmp, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %4 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags5 = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 2
  %5 = load i32* %flags5, align 4, !tbaa !0
  %and6 = and i32 %5, -257
  store i32 %and6, i32* %flags5, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.end4, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ 0, %if.end4 ], [ -1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare i64 @lseek(i32, i64, i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIOUnix_open(%struct._PerlIO_funcs* %self, %struct.PerlIO_list_s* nocapture %layers, i64 %n, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** nocapture %args) #1 {
entry:
  %tobool = icmp ne %struct._PerlIO** %f, null
  br i1 %tobool, label %land.lhs.true, label %if.end4

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.end4, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 2097152
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.then
  %tab = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %Close = getelementptr inbounds %struct._PerlIO_funcs* %2, i64 0, i32 16
  %3 = load i64 (%struct._PerlIO**)** %Close, align 8, !tbaa !3
  %call = tail call i64 %3(%struct._PerlIO** %f) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then, %land.lhs.true, %if.then3, %entry
  %cmp = icmp sgt i32 %narg, 0
  br i1 %cmp, label %if.then5, label %if.end19

if.then5:                                         ; preds = %if.end4
  %4 = load %struct.sv** %args, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %4, i64 0, i32 2
  %5 = load i32* %sv_flags, align 4, !tbaa !0
  %and6 = and i32 %5, 262144
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then5
  %sv_any = getelementptr inbounds %struct.sv* %4, i64 0, i32 0
  %6 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %6 to i8**
  %7 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  %call8 = tail call i8* @Perl_sv_2pv_nolen(%struct.sv* %4) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ %call8, %cond.false ]
  %8 = load i8* %mode, align 1, !tbaa !1
  %cmp9 = icmp eq i8 %8, 35
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %cond.end
  %incdec.ptr = getelementptr inbounds i8* %mode, i64 1
  br label %if.end13

if.else:                                          ; preds = %cond.end
  %call12 = tail call i32 @PerlIOUnix_oflags(i8* %mode) #10
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  %imode.addr.0 = phi i32 [ %imode, %if.then11 ], [ %call12, %if.else ]
  %perm.addr.0 = phi i32 [ %perm, %if.then11 ], [ 438, %if.else ]
  %mode.addr.0 = phi i8* [ %incdec.ptr, %if.then11 ], [ %mode, %if.else ]
  %cmp14 = icmp eq i32 %imode.addr.0, -1
  br i1 %cmp14, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i32 (i8*, i32, ...)* @open(i8* %cond, i32 %imode.addr.0, i32 %perm.addr.0) #9
  br label %if.end19

if.end19:                                         ; preds = %if.end13, %if.then16, %if.end4
  %imode.addr.1 = phi i32 [ %imode.addr.0, %if.then16 ], [ -1, %if.end13 ], [ %imode, %if.end4 ]
  %fd.addr.0 = phi i32 [ %call17, %if.then16 ], [ %fd, %if.end13 ], [ %fd, %if.end4 ]
  %mode.addr.1 = phi i8* [ %mode.addr.0, %if.then16 ], [ %mode.addr.0, %if.end13 ], [ %mode, %if.end4 ]
  %cmp20 = icmp sgt i32 %fd.addr.0, -1
  br i1 %cmp20, label %if.then22, label %return

if.then22:                                        ; preds = %if.end19
  %9 = load i8* %mode.addr.1, align 1, !tbaa !1
  %cmp24 = icmp eq i8 %9, 73
  %incdec.ptr27 = getelementptr inbounds i8* %mode.addr.1, i64 1
  %incdec.ptr27.mode.addr.1 = select i1 %cmp24, i8* %incdec.ptr27, i8* %mode.addr.1
  br i1 %tobool, label %land.lhs.true34, label %if.end32

if.end32:                                         ; preds = %if.then22
  %call31 = tail call %struct._PerlIO** @PerlIO_allocate() #10
  %tobool33 = icmp eq %struct._PerlIO** %call31, null
  br i1 %tobool33, label %if.then36, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %if.end32, %if.then22
  %f.addr.077 = phi %struct._PerlIO** [ %f, %if.then22 ], [ %call31, %if.end32 ]
  %10 = load %struct._PerlIO** %f.addr.077, align 8, !tbaa !3
  %tobool35 = icmp eq %struct._PerlIO* %10, null
  br i1 %tobool35, label %if.then36, label %if.end42

if.then36:                                        ; preds = %land.lhs.true34, %if.end32
  %f.addr.078 = phi %struct._PerlIO** [ %f.addr.077, %land.lhs.true34 ], [ null, %if.end32 ]
  %array.i = getelementptr inbounds %struct.PerlIO_list_s* %layers, i64 0, i32 3
  %11 = load %struct.PerlIO_pair_t** %array.i, align 8, !tbaa !3
  %arg.i = getelementptr inbounds %struct.PerlIO_pair_t* %11, i64 %n, i32 1
  %12 = load %struct.sv** %arg.i, align 8, !tbaa !3
  %call38 = tail call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f.addr.078, %struct._PerlIO_funcs* %self, i8* %incdec.ptr27.mode.addr.1, %struct.sv* %12) #10
  %tobool39 = icmp eq %struct._PerlIO** %call38, null
  br i1 %tobool39, label %return, label %if.then36.if.end42_crit_edge

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  %.pre = load %struct._PerlIO** %call38, align 8, !tbaa !3
  br label %if.end42

if.end42:                                         ; preds = %if.then36.if.end42_crit_edge, %land.lhs.true34
  %13 = phi %struct._PerlIO* [ %10, %land.lhs.true34 ], [ %.pre, %if.then36.if.end42_crit_edge ]
  %f.addr.1 = phi %struct._PerlIO** [ %f.addr.077, %land.lhs.true34 ], [ %call38, %if.then36.if.end42_crit_edge ]
  %14 = bitcast %struct._PerlIO* %13 to %struct.PerlIOUnix*
  %fd1.i = getelementptr inbounds %struct._PerlIO* %13, i64 1
  %15 = bitcast %struct._PerlIO* %fd1.i to i32*
  store i32 %fd.addr.0, i32* %15, align 4, !tbaa !0
  %oflags.i = getelementptr inbounds %struct.PerlIOUnix* %14, i64 0, i32 2
  store i32 %imode.addr.1, i32* %oflags.i, align 4, !tbaa !0
  tail call void @PerlIOUnix_refcnt_inc(i32 %fd.addr.0) #9
  %16 = load %struct._PerlIO** %f.addr.1, align 8, !tbaa !3
  %flags43 = getelementptr inbounds %struct._PerlIO* %16, i64 0, i32 2
  %17 = load i32* %flags43, align 4, !tbaa !0
  %or = or i32 %17, 2097152
  store i32 %or, i32* %flags43, align 4, !tbaa !0
  %18 = load i8* %incdec.ptr27.mode.addr.1, align 1, !tbaa !1
  %cmp45 = icmp eq i8 %18, 97
  br i1 %cmp45, label %if.then47, label %return

if.then47:                                        ; preds = %if.end42
  %call48 = tail call i64 @PerlIOUnix_seek(%struct._PerlIO** %f.addr.1, i64 0, i32 2) #10
  br label %return

return:                                           ; preds = %if.end19, %if.end42, %if.then47, %if.then36
  %retval.0 = phi %struct._PerlIO** [ null, %if.then36 ], [ %f.addr.1, %if.then47 ], [ %f.addr.1, %if.end42 ], [ null, %if.end19 ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: optsize
declare i32 @open(i8* nocapture, i32, ...) #3

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIOUnix_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #1 {
entry:
  %0 = load %struct._PerlIO** %o, align 8, !tbaa !3
  %1 = bitcast %struct._PerlIO* %0 to %struct.PerlIOUnix*
  %fd1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %2 = bitcast %struct._PerlIO* %fd1 to i32*
  %3 = load i32* %2, align 4, !tbaa !0
  %and = and i32 %flags, 2
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @dup(i32 %3) #9
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %fd.0 = phi i32 [ %call, %if.then ], [ %3, %entry ]
  %4 = icmp ult i32 %fd.0, 2048
  br i1 %4, label %if.then3, label %return

if.then3:                                         ; preds = %if.end
  %call4 = tail call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #10
  %tobool5 = icmp eq %struct._PerlIO** %call4, null
  br i1 %tobool5, label %return, label %if.then6

if.then6:                                         ; preds = %if.then3
  %oflags = getelementptr inbounds %struct.PerlIOUnix* %1, i64 0, i32 2
  %5 = load i32* %oflags, align 4, !tbaa !0
  %6 = load %struct._PerlIO** %call4, align 8, !tbaa !3
  %7 = bitcast %struct._PerlIO* %6 to %struct.PerlIOUnix*
  %fd1.i = getelementptr inbounds %struct._PerlIO* %6, i64 1
  %8 = bitcast %struct._PerlIO* %fd1.i to i32*
  store i32 %fd.0, i32* %8, align 4, !tbaa !0
  %oflags.i = getelementptr inbounds %struct.PerlIOUnix* %7, i64 0, i32 2
  store i32 %5, i32* %oflags.i, align 4, !tbaa !0
  tail call void @PerlIOUnix_refcnt_inc(i32 %fd.0) #9
  br label %return

return:                                           ; preds = %if.end, %if.then3, %if.then6
  %retval.0 = phi %struct._PerlIO** [ %call4, %if.then6 ], [ null, %if.then3 ], [ null, %if.end ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: optsize
declare i32 @dup(i32) #3

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOUnix_read(%struct._PerlIO** nocapture %f, i8* nocapture %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %fd1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %fd1 to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !0
  %4 = and i32 %3, 3328
  %5 = icmp eq i32 %4, 1024
  br i1 %5, label %while.body.preheader, label %return

while.body.preheader:                             ; preds = %entry
  %call40 = tail call i64 @read(i32 %2, i8* %vbuf, i64 %count) #9
  %cmp41 = icmp sgt i64 %call40, -1
  br i1 %cmp41, label %if.else, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %while.body.preheader, %while.body.backedge
  %call42 = phi i64 [ %call, %while.body.backedge ], [ %call40, %while.body.preheader ]
  %call6 = tail call i32* @__errno_location() #9
  %6 = load i32* %call6, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %6, 4
  br i1 %cmp7, label %if.end24, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false5
  %cmp9 = icmp slt i64 %call42, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then8
  %call11 = tail call i32* @__errno_location() #9
  %7 = load i32* %call11, align 4, !tbaa !0
  %cmp12 = icmp eq i32 %7, 11
  br i1 %cmp12, label %return, label %if.then13

if.then13:                                        ; preds = %if.then10
  %8 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags14 = getelementptr inbounds %struct._PerlIO* %8, i64 0, i32 2
  %9 = load i32* %flags14, align 4, !tbaa !0
  %or = or i32 %9, 2048
  store i32 %or, i32* %flags14, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %while.body.preheader, %while.body.backedge, %if.then8
  %call39 = phi i64 [ %call42, %if.then8 ], [ %call40, %while.body.preheader ], [ %call, %while.body.backedge ]
  %cmp16 = icmp ne i64 %call39, 0
  %cmp17 = icmp eq i64 %count, 0
  %or.cond36 = or i1 %cmp16, %cmp17
  br i1 %or.cond36, label %return, label %if.then18

if.then18:                                        ; preds = %if.else
  %10 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags19 = getelementptr inbounds %struct._PerlIO* %10, i64 0, i32 2
  %11 = load i32* %flags19, align 4, !tbaa !0
  %or20 = or i32 %11, 256
  store i32 %or20, i32* %flags19, align 4, !tbaa !0
  %call21 = tail call i32* @__errno_location() #9
  store i32 0, i32* %call21, align 4, !tbaa !0
  br label %return

if.end24:                                         ; preds = %lor.lhs.false5
  %12 = load i32* @PL_sig_pending, align 4, !tbaa !0
  %tobool25 = icmp eq i32 %12, 0
  br i1 %tobool25, label %while.body.backedge, label %if.then26

if.then26:                                        ; preds = %if.end24
  tail call void @Perl_despatch_signals() #9
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.then26, %if.end24
  %call = tail call i64 @read(i32 %2, i8* %vbuf, i64 %count) #9
  %cmp = icmp sgt i64 %call, -1
  br i1 %cmp, label %if.else, label %lor.lhs.false5

return:                                           ; preds = %if.then13, %if.then18, %if.then10, %if.else, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %call39, %if.else ], [ %call42, %if.then10 ], [ 0, %if.then18 ], [ %call42, %if.then13 ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare i64 @read(i32, i8* nocapture, i64) #3

; Function Attrs: optsize
declare void @Perl_despatch_signals() #3

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOUnix_write(%struct._PerlIO** nocapture %f, i8* nocapture %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %fd1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %fd1 to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %call19 = tail call i64 @write(i32 %2, i8* %vbuf, i64 %count) #9
  %cmp20 = icmp sgt i64 %call19, -1
  br i1 %cmp20, label %if.end9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %while.body.backedge
  %call21 = phi i64 [ %call, %while.body.backedge ], [ %call19, %entry ]
  %call2 = tail call i32* @__errno_location() #9
  %3 = load i32* %call2, align 4, !tbaa !0
  %cmp3 = icmp eq i32 %3, 4
  br i1 %cmp3, label %if.end10, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %cmp4 = icmp slt i64 %call21, 0
  br i1 %cmp4, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.then
  %call6 = tail call i32* @__errno_location() #9
  %4 = load i32* %call6, align 4, !tbaa !0
  %cmp7 = icmp eq i32 %4, 11
  br i1 %cmp7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then5
  %5 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %5, i64 0, i32 2
  %6 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %6, 2048
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %if.end9

if.end9:                                          ; preds = %entry, %while.body.backedge, %if.then5, %if.then8, %if.then
  %call18 = phi i64 [ %call21, %if.then5 ], [ %call21, %if.then8 ], [ %call21, %if.then ], [ %call19, %entry ], [ %call, %while.body.backedge ]
  ret i64 %call18

if.end10:                                         ; preds = %lor.lhs.false
  %7 = load i32* @PL_sig_pending, align 4, !tbaa !0
  %tobool = icmp eq i32 %7, 0
  br i1 %tobool, label %while.body.backedge, label %if.then11

if.then11:                                        ; preds = %if.end10
  tail call void @Perl_despatch_signals() #9
  br label %while.body.backedge

while.body.backedge:                              ; preds = %if.then11, %if.end10
  %call = tail call i64 @write(i32 %2, i8* %vbuf, i64 %count) #9
  %cmp = icmp sgt i64 %call, -1
  br i1 %cmp, label %if.end9, label %lor.lhs.false
}

; Function Attrs: optsize
declare i64 @write(i32, i8* nocapture, i64) #3

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOUnix_tell(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %fd = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %fd to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %call = tail call i64 @lseek(i32 %2, i64 0, i32 1) #9
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOUnix_close(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %fd1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %fd1 to i32*
  %2 = load i32* %1, align 4, !tbaa !0
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %3, 2097152
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @PerlIOUnix_refcnt_dec(i32 %2) #10
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then2, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then
  %call731 = tail call i32 @close(i32 %2) #9
  %cmp832 = icmp eq i32 %call731, 0
  br i1 %cmp832, label %if.then17, label %while.body

if.then2:                                         ; preds = %if.then
  %4 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags3 = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 2
  %5 = load i32* %flags3, align 4, !tbaa !0
  %and4 = and i32 %5, -2097153
  store i32 %and4, i32* %flags3, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry
  %call5 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call5, align 4, !tbaa !0
  br label %return

while.body:                                       ; preds = %while.cond.preheader, %while.cond.backedge
  %call9 = tail call i32* @__errno_location() #9
  %6 = load i32* %call9, align 4, !tbaa !0
  %cmp10 = icmp eq i32 %6, 4
  br i1 %cmp10, label %if.end12, label %return

if.end12:                                         ; preds = %while.body
  %7 = load i32* @PL_sig_pending, align 4, !tbaa !0
  %tobool13 = icmp eq i32 %7, 0
  br i1 %tobool13, label %while.cond.backedge, label %if.then14

if.then14:                                        ; preds = %if.end12
  tail call void @Perl_despatch_signals() #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then14, %if.end12
  %call7 = tail call i32 @close(i32 %2) #9
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then17, label %while.body

if.then17:                                        ; preds = %while.cond.backedge, %while.cond.preheader
  %8 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags18 = getelementptr inbounds %struct._PerlIO* %8, i64 0, i32 2
  %9 = load i32* %flags18, align 4, !tbaa !0
  %and19 = and i32 %9, -2097153
  store i32 %and19, i32* %flags18, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %while.body, %if.then17, %if.else, %if.then2
  %retval.0 = phi i64 [ 0, %if.then2 ], [ -1, %if.else ], [ 0, %if.then17 ], [ -1, %while.body ]
  ret i64 %retval.0
}

; Function Attrs: optsize
declare i32 @close(i32) #3

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_fileno(%struct._PerlIO** %f) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.end, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %stdio = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %tobool3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %call = tail call i32 @fileno(%struct._IO_FILE* %2) #9
  %conv = sext i32 %call to i64
  br label %return

if.end:                                           ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %call4 = tail call i32* @__errno_location() #9
  store i32 9, i32* %call4, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ -1, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fileno(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i8* @PerlIOStdio_mode(i8* %mode, i8* %tmode) #1 {
entry:
  %tobool = icmp eq i8* %mode, null
  br i1 %tobool, label %if.end, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %0 = load i8* %mode, align 1, !tbaa !1
  %tobool17 = icmp eq i8 %0, 0
  br i1 %tobool17, label %if.end, label %while.body

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %1 = phi i8 [ %2, %while.body ], [ %0, %while.cond.preheader ]
  %mode.addr.09 = phi i8* [ %incdec.ptr, %while.body ], [ %mode, %while.cond.preheader ]
  %tmode.addr.08 = phi i8* [ %incdec.ptr2, %while.body ], [ %tmode, %while.cond.preheader ]
  %incdec.ptr = getelementptr inbounds i8* %mode.addr.09, i64 1
  %incdec.ptr2 = getelementptr inbounds i8* %tmode.addr.08, i64 1
  store i8 %1, i8* %tmode.addr.08, align 1, !tbaa !1
  %2 = load i8* %incdec.ptr, align 1, !tbaa !1
  %tobool1 = icmp eq i8 %2, 0
  br i1 %tobool1, label %if.end, label %while.body

if.end:                                           ; preds = %while.cond.preheader, %while.body, %entry
  %tmode.addr.1 = phi i8* [ %tmode, %entry ], [ %tmode, %while.cond.preheader ], [ %incdec.ptr2, %while.body ]
  store i8 0, i8* %tmode.addr.1, align 1, !tbaa !1
  ret i8* %tmode
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* %tab) #1 {
entry:
  %tmode = alloca [8 x i8], align 1
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.end20, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.end20, label %land.lhs.true2

land.lhs.true2:                                   ; preds = %land.lhs.true
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %1 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool6 = icmp eq %struct._PerlIO* %1, null
  br i1 %tobool6, label %if.end20, label %if.then

if.then:                                          ; preds = %land.lhs.true2
  %tab7 = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab7, align 8, !tbaa !3
  %cmp = icmp eq %struct._PerlIO_funcs* %2, %tab
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @PerlIO_pop(%struct._PerlIO** %f) #10
  br label %return

if.else:                                          ; preds = %if.then
  %call = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %next) #10
  %cmp9 = icmp sgt i32 %call, -1
  br i1 %cmp9, label %land.lhs.true10, label %return

land.lhs.true10:                                  ; preds = %if.else
  %arraydecay = getelementptr inbounds [8 x i8]* %tmode, i64 0, i64 0
  %tobool.i = icmp eq i8* %mode, null
  br i1 %tobool.i, label %PerlIOStdio_mode.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %land.lhs.true10
  %3 = load i8* %mode, align 1, !tbaa !1
  %tobool17.i = icmp eq i8 %3, 0
  br i1 %tobool17.i, label %PerlIOStdio_mode.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %4 = phi i8 [ %5, %while.body.i ], [ %3, %while.cond.preheader.i ]
  %mode.addr.09.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %mode, %while.cond.preheader.i ]
  %tmode.addr.08.i = phi i8* [ %incdec.ptr2.i, %while.body.i ], [ %arraydecay, %while.cond.preheader.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %mode.addr.09.i, i64 1
  %incdec.ptr2.i = getelementptr inbounds i8* %tmode.addr.08.i, i64 1
  store i8 %4, i8* %tmode.addr.08.i, align 1, !tbaa !1
  %5 = load i8* %incdec.ptr.i, align 1, !tbaa !1
  %tobool1.i = icmp eq i8 %5, 0
  br i1 %tobool1.i, label %PerlIOStdio_mode.exit, label %while.body.i

PerlIOStdio_mode.exit:                            ; preds = %while.body.i, %land.lhs.true10, %while.cond.preheader.i
  %tmode.addr.1.i = phi i8* [ %arraydecay, %land.lhs.true10 ], [ %arraydecay, %while.cond.preheader.i ], [ %incdec.ptr2.i, %while.body.i ]
  store i8 0, i8* %tmode.addr.1.i, align 1, !tbaa !1
  %call12 = call %struct._IO_FILE* @fdopen(i32 %call, i8* %arraydecay) #9
  %tobool13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %tobool13, label %return, label %if.then14

if.then14:                                        ; preds = %PerlIOStdio_mode.exit
  %6 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %7 = getelementptr inbounds %struct._PerlIO* %6, i64 1, i32 0
  %call12.c = bitcast %struct._IO_FILE* %call12 to %struct._PerlIO*
  store %struct._PerlIO* %call12.c, %struct._PerlIO** %7, align 8, !tbaa !3
  %8 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next16 = getelementptr inbounds %struct._PerlIO* %8, i64 0, i32 0
  %call17 = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %next16) #10
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true2, %land.lhs.true, %entry, %if.then14
  %mode.addr.0 = phi i8* [ %arraydecay, %if.then14 ], [ %mode, %land.lhs.true2 ], [ %mode, %land.lhs.true ], [ %mode, %entry ]
  %call21 = call i64 @PerlIOBase_pushed(%struct._PerlIO** %f, i8* %mode.addr.0, %struct.sv* undef, %struct._PerlIO_funcs* %tab) #10
  br label %return

return:                                           ; preds = %if.else, %PerlIOStdio_mode.exit, %if.end20, %if.then8
  %retval.0 = phi i64 [ 0, %if.then8 ], [ %call21, %if.end20 ], [ -1, %PerlIOStdio_mode.exit ], [ -1, %if.else ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fdopen(i32, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_importFILE(%struct._IO_FILE* %stdio, i8* %mode) #1 {
entry:
  %tobool = icmp eq %struct._IO_FILE* %stdio, null
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %tobool1 = icmp eq i8* %mode, null
  br i1 %tobool1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %0 = load i8* %mode, align 1, !tbaa !1
  %tobool2 = icmp eq i8 %0, 0
  br i1 %tobool2, label %if.then3, label %if.end18

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %call = tail call i32 @fileno(%struct._IO_FILE* %stdio) #9
  %call4 = tail call i32 @dup(i32 %call) #9
  %call5 = tail call %struct._IO_FILE* @fdopen(i32 %call4, i8* getelementptr inbounds ([3 x i8]* @.str39, i64 0, i64 0)) #9
  %tobool6 = icmp eq %struct._IO_FILE* %call5, null
  br i1 %tobool6, label %if.end, label %if.end16

if.end:                                           ; preds = %if.then3
  %call8 = tail call %struct._IO_FILE* @fdopen(i32 %call4, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0)) #9
  %tobool9 = icmp eq %struct._IO_FILE* %call8, null
  br i1 %tobool9, label %if.end12, label %if.end16

if.end12:                                         ; preds = %if.end
  %call11 = tail call %struct._IO_FILE* @fdopen(i32 %call4, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #9
  %tobool13 = icmp eq %struct._IO_FILE* %call11, null
  br i1 %tobool13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end12
  %call15 = tail call i32 @close(i32 %call4) #9
  br label %return

if.end16:                                         ; preds = %if.then3, %if.end, %if.end12
  %f2.141 = phi %struct._IO_FILE* [ %call11, %if.end12 ], [ %call8, %if.end ], [ %call5, %if.then3 ]
  %mode.addr.140 = phi i8* [ getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0), %if.end12 ], [ getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0), %if.end ], [ getelementptr inbounds ([3 x i8]* @.str39, i64 0, i64 0), %if.then3 ]
  %call17 = tail call i32 @fclose(%struct._IO_FILE* %f2.141) #9
  br label %if.end18

if.end18:                                         ; preds = %lor.lhs.false, %if.end16
  %mode.addr.2 = phi i8* [ %mode, %lor.lhs.false ], [ %mode.addr.140, %if.end16 ]
  %call19 = tail call %struct._PerlIO** @PerlIO_allocate() #10
  %call20 = tail call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %call19, %struct._PerlIO_funcs* @PerlIO_stdio, i8* %mode.addr.2, %struct.sv* null) #10
  %tobool21 = icmp eq %struct._PerlIO** %call20, null
  br i1 %tobool21, label %return, label %if.then22

if.then22:                                        ; preds = %if.end18
  %1 = load %struct._PerlIO** %call20, align 8, !tbaa !3
  %2 = getelementptr inbounds %struct._PerlIO* %1, i64 1, i32 0
  %stdio.c = bitcast %struct._IO_FILE* %stdio to %struct._PerlIO*
  store %struct._PerlIO* %stdio.c, %struct._PerlIO** %2, align 8, !tbaa !3
  br label %return

return:                                           ; preds = %if.then22, %entry, %if.end18, %if.then14
  %retval.0 = phi %struct._PerlIO** [ null, %if.then14 ], [ %call20, %if.then22 ], [ null, %if.end18 ], [ null, %entry ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIOStdio_open(%struct._PerlIO_funcs* %self, %struct.PerlIO_list_s* nocapture %layers, i64 %n, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** nocapture %args) #1 {
entry:
  %tmode = alloca [8 x i8], align 1
  %tobool = icmp ne %struct._PerlIO** %f, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct.sv** %args, align 8, !tbaa !3
  %sv_flags = getelementptr inbounds %struct.sv* %1, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %2, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %1, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_pv = bitcast i8* %3 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i8* @Perl_sv_2pv_nolen(%struct.sv* %1) #9
  %.pre = load %struct._PerlIO** %f, align 8, !tbaa !3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi %struct._PerlIO* [ %0, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %stdio2 = getelementptr inbounds %struct._PerlIO* %5, i64 1
  %6 = bitcast %struct._PerlIO* %stdio2 to %struct._IO_FILE**
  %7 = load %struct._IO_FILE** %6, align 8, !tbaa !3
  %call3 = call i32 @fileno(%struct._IO_FILE* %7) #9
  %call4 = call i32 @PerlIOUnix_refcnt_dec(i32 %call3) #10
  %arraydecay = getelementptr inbounds [8 x i8]* %tmode, i64 0, i64 0
  %tobool.i = icmp eq i8* %mode, null
  br i1 %tobool.i, label %PerlIOStdio_mode.exit, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %cond.end
  %8 = load i8* %mode, align 1, !tbaa !1
  %tobool17.i = icmp eq i8 %8, 0
  br i1 %tobool17.i, label %PerlIOStdio_mode.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %9 = phi i8 [ %10, %while.body.i ], [ %8, %while.cond.preheader.i ]
  %mode.addr.09.i = phi i8* [ %incdec.ptr.i, %while.body.i ], [ %mode, %while.cond.preheader.i ]
  %tmode.addr.08.i = phi i8* [ %incdec.ptr2.i, %while.body.i ], [ %arraydecay, %while.cond.preheader.i ]
  %incdec.ptr.i = getelementptr inbounds i8* %mode.addr.09.i, i64 1
  %incdec.ptr2.i = getelementptr inbounds i8* %tmode.addr.08.i, i64 1
  store i8 %9, i8* %tmode.addr.08.i, align 1, !tbaa !1
  %10 = load i8* %incdec.ptr.i, align 1, !tbaa !1
  %tobool1.i = icmp eq i8 %10, 0
  br i1 %tobool1.i, label %PerlIOStdio_mode.exit, label %while.body.i

PerlIOStdio_mode.exit:                            ; preds = %while.body.i, %cond.end, %while.cond.preheader.i
  %tmode.addr.1.i = phi i8* [ %arraydecay, %cond.end ], [ %arraydecay, %while.cond.preheader.i ], [ %incdec.ptr2.i, %while.body.i ]
  store i8 0, i8* %tmode.addr.1.i, align 1, !tbaa !1
  %11 = load %struct._IO_FILE** %6, align 8, !tbaa !3
  %call7 = call %struct._IO_FILE* @freopen(i8* %cond, i8* %arraydecay, %struct._IO_FILE* %11) #9
  %12 = load %struct._IO_FILE** %6, align 8, !tbaa !3
  %tobool9 = icmp eq %struct._IO_FILE* %12, null
  br i1 %tobool9, label %return, label %if.end

if.end:                                           ; preds = %PerlIOStdio_mode.exit
  %13 = getelementptr inbounds %struct._PerlIO* %stdio2, i64 0, i32 0
  %call7.c = bitcast %struct._IO_FILE* %call7 to %struct._PerlIO*
  store %struct._PerlIO* %call7.c, %struct._PerlIO** %13, align 8, !tbaa !3
  %call13 = call i32 @fileno(%struct._IO_FILE* %call7) #9
  call void @PerlIOUnix_refcnt_inc(i32 %call13) #10
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %cmp14 = icmp sgt i32 %narg, 0
  br i1 %cmp14, label %if.then15, label %if.end56

if.then15:                                        ; preds = %if.else
  %14 = load %struct.sv** %args, align 8, !tbaa !3
  %sv_flags17 = getelementptr inbounds %struct.sv* %14, i64 0, i32 2
  %15 = load i32* %sv_flags17, align 4, !tbaa !0
  %and18 = and i32 %15, 262144
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %cond.false23, label %cond.true20

cond.true20:                                      ; preds = %if.then15
  %sv_any21 = getelementptr inbounds %struct.sv* %14, i64 0, i32 0
  %16 = load i8** %sv_any21, align 8, !tbaa !3
  %xpv_pv22 = bitcast i8* %16 to i8**
  %17 = load i8** %xpv_pv22, align 8, !tbaa !3
  br label %cond.end25

cond.false23:                                     ; preds = %if.then15
  %call24 = call i8* @Perl_sv_2pv_nolen(%struct.sv* %14) #9
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false23, %cond.true20
  %cond26 = phi i8* [ %17, %cond.true20 ], [ %call24, %cond.false23 ]
  %18 = load i8* %mode, align 1, !tbaa !1
  %cmp27 = icmp eq i8 %18, 35
  br i1 %cmp27, label %if.then29, label %if.else31

if.then29:                                        ; preds = %cond.end25
  %incdec.ptr = getelementptr inbounds i8* %mode, i64 1
  %call30 = call i32 (i8*, i32, ...)* @open(i8* %cond26, i32 %imode, i32 %perm) #9
  br label %if.end56

if.else31:                                        ; preds = %cond.end25
  %call33 = call %struct._IO_FILE* @fopen(i8* %cond26, i8* %mode) #9
  %tobool34 = icmp eq %struct._IO_FILE* %call33, null
  br i1 %tobool34, label %return, label %if.then35

if.then35:                                        ; preds = %if.else31
  br i1 %tobool, label %if.then42, label %if.then38

if.then38:                                        ; preds = %if.then35
  %call39 = call %struct._PerlIO** @PerlIO_allocate() #10
  br label %if.then42

if.then42:                                        ; preds = %if.then35, %if.then38
  %f.addr.0 = phi %struct._PerlIO** [ %f, %if.then35 ], [ %call39, %if.then38 ]
  %arraydecay43 = getelementptr inbounds [8 x i8]* %tmode, i64 0, i64 0
  %tobool.i131 = icmp eq i8* %mode, null
  br i1 %tobool.i131, label %PerlIOStdio_mode.exit141, label %while.cond.preheader.i133

while.cond.preheader.i133:                        ; preds = %if.then42
  %19 = load i8* %mode, align 1, !tbaa !1
  %tobool17.i132 = icmp eq i8 %19, 0
  br i1 %tobool17.i132, label %PerlIOStdio_mode.exit141, label %while.body.i139

while.body.i139:                                  ; preds = %while.cond.preheader.i133, %while.body.i139
  %20 = phi i8 [ %21, %while.body.i139 ], [ %19, %while.cond.preheader.i133 ]
  %mode.addr.09.i134 = phi i8* [ %incdec.ptr.i136, %while.body.i139 ], [ %mode, %while.cond.preheader.i133 ]
  %tmode.addr.08.i135 = phi i8* [ %incdec.ptr2.i137, %while.body.i139 ], [ %arraydecay43, %while.cond.preheader.i133 ]
  %incdec.ptr.i136 = getelementptr inbounds i8* %mode.addr.09.i134, i64 1
  %incdec.ptr2.i137 = getelementptr inbounds i8* %tmode.addr.08.i135, i64 1
  store i8 %20, i8* %tmode.addr.08.i135, align 1, !tbaa !1
  %21 = load i8* %incdec.ptr.i136, align 1, !tbaa !1
  %tobool1.i138 = icmp eq i8 %21, 0
  br i1 %tobool1.i138, label %PerlIOStdio_mode.exit141, label %while.body.i139

PerlIOStdio_mode.exit141:                         ; preds = %while.body.i139, %if.then42, %while.cond.preheader.i133
  %tmode.addr.1.i140 = phi i8* [ %arraydecay43, %if.then42 ], [ %arraydecay43, %while.cond.preheader.i133 ], [ %incdec.ptr2.i137, %while.body.i139 ]
  store i8 0, i8* %tmode.addr.1.i140, align 1, !tbaa !1
  %array.i = getelementptr inbounds %struct.PerlIO_list_s* %layers, i64 0, i32 3
  %22 = load %struct.PerlIO_pair_t** %array.i, align 8, !tbaa !3
  %arg.i = getelementptr inbounds %struct.PerlIO_pair_t* %22, i64 %n, i32 1
  %23 = load %struct.sv** %arg.i, align 8, !tbaa !3
  %call47 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f.addr.0, %struct._PerlIO_funcs* %self, i8* %arraydecay43, %struct.sv* %23) #10
  %tobool48 = icmp eq %struct._PerlIO** %call47, null
  br i1 %tobool48, label %return, label %if.then49

if.then49:                                        ; preds = %PerlIOStdio_mode.exit141
  %24 = load %struct._PerlIO** %call47, align 8, !tbaa !3
  %25 = getelementptr inbounds %struct._PerlIO* %24, i64 1, i32 0
  %call33.c = bitcast %struct._IO_FILE* %call33 to %struct._PerlIO*
  store %struct._PerlIO* %call33.c, %struct._PerlIO** %25, align 8, !tbaa !3
  %call52 = call i32 @fileno(%struct._IO_FILE* %call33) #9
  call void @PerlIOUnix_refcnt_inc(i32 %call52) #10
  br label %return

if.end56:                                         ; preds = %if.then29, %if.else
  %fd.addr.0 = phi i32 [ %call30, %if.then29 ], [ %fd, %if.else ]
  %mode.addr.1 = phi i8* [ %incdec.ptr, %if.then29 ], [ %mode, %if.else ]
  %cmp57 = icmp sgt i32 %fd.addr.0, -1
  br i1 %cmp57, label %if.then59, label %return

if.then59:                                        ; preds = %if.end56
  %26 = load i8* %mode.addr.1, align 1, !tbaa !1
  %cmp62 = icmp eq i8 %26, 73
  %incdec.ptr65 = getelementptr inbounds i8* %mode.addr.1, i64 1
  %incdec.ptr65.mode.addr.1 = select i1 %cmp62, i8* %incdec.ptr65, i8* %mode.addr.1
  br i1 %cmp62, label %if.then68, label %if.else71

if.then68:                                        ; preds = %if.then59
  switch i32 %fd.addr.0, label %return [
    i32 0, label %sw.bb
    i32 1, label %sw.bb69
    i32 2, label %sw.bb70
  ]

sw.bb:                                            ; preds = %if.then68
  %27 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  br label %if.end75

sw.bb69:                                          ; preds = %if.then68
  %28 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  br label %if.end75

sw.bb70:                                          ; preds = %if.then68
  %29 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  br label %if.end75

if.else71:                                        ; preds = %if.then59
  %arraydecay72 = getelementptr inbounds [8 x i8]* %tmode, i64 0, i64 0
  %tobool.i144 = icmp eq i8* %incdec.ptr65.mode.addr.1, null
  br i1 %tobool.i144, label %PerlIOStdio_mode.exit154, label %while.cond.preheader.i146

while.cond.preheader.i146:                        ; preds = %if.else71
  %30 = load i8* %incdec.ptr65.mode.addr.1, align 1, !tbaa !1
  %tobool17.i145 = icmp eq i8 %30, 0
  br i1 %tobool17.i145, label %PerlIOStdio_mode.exit154, label %while.body.i152

while.body.i152:                                  ; preds = %while.cond.preheader.i146, %while.body.i152
  %31 = phi i8 [ %32, %while.body.i152 ], [ %30, %while.cond.preheader.i146 ]
  %mode.addr.09.i147 = phi i8* [ %incdec.ptr.i149, %while.body.i152 ], [ %incdec.ptr65.mode.addr.1, %while.cond.preheader.i146 ]
  %tmode.addr.08.i148 = phi i8* [ %incdec.ptr2.i150, %while.body.i152 ], [ %arraydecay72, %while.cond.preheader.i146 ]
  %incdec.ptr.i149 = getelementptr inbounds i8* %mode.addr.09.i147, i64 1
  %incdec.ptr2.i150 = getelementptr inbounds i8* %tmode.addr.08.i148, i64 1
  store i8 %31, i8* %tmode.addr.08.i148, align 1, !tbaa !1
  %32 = load i8* %incdec.ptr.i149, align 1, !tbaa !1
  %tobool1.i151 = icmp eq i8 %32, 0
  br i1 %tobool1.i151, label %PerlIOStdio_mode.exit154, label %while.body.i152

PerlIOStdio_mode.exit154:                         ; preds = %while.body.i152, %if.else71, %while.cond.preheader.i146
  %tmode.addr.1.i153 = phi i8* [ %arraydecay72, %if.else71 ], [ %arraydecay72, %while.cond.preheader.i146 ], [ %incdec.ptr2.i150, %while.body.i152 ]
  store i8 0, i8* %tmode.addr.1.i153, align 1, !tbaa !1
  %call74 = call %struct._IO_FILE* @fdopen(i32 %fd.addr.0, i8* %arraydecay72) #9
  br label %if.end75

if.end75:                                         ; preds = %sw.bb, %sw.bb69, %sw.bb70, %PerlIOStdio_mode.exit154
  %mode.addr.3 = phi i8* [ %incdec.ptr65.mode.addr.1, %sw.bb70 ], [ %incdec.ptr65.mode.addr.1, %sw.bb69 ], [ %incdec.ptr65.mode.addr.1, %sw.bb ], [ %arraydecay72, %PerlIOStdio_mode.exit154 ]
  %stdio60.0 = phi %struct._IO_FILE* [ %29, %sw.bb70 ], [ %28, %sw.bb69 ], [ %27, %sw.bb ], [ %call74, %PerlIOStdio_mode.exit154 ]
  %tobool76 = icmp eq %struct._IO_FILE* %stdio60.0, null
  br i1 %tobool76, label %return, label %if.then77

if.then77:                                        ; preds = %if.end75
  br i1 %tobool, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.then77
  %call81 = call %struct._PerlIO** @PerlIO_allocate() #10
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.then77
  %f.addr.1 = phi %struct._PerlIO** [ %f, %if.then77 ], [ %call81, %if.then80 ]
  %array.i142 = getelementptr inbounds %struct.PerlIO_list_s* %layers, i64 0, i32 3
  %33 = load %struct.PerlIO_pair_t** %array.i142, align 8, !tbaa !3
  %arg.i143 = getelementptr inbounds %struct.PerlIO_pair_t* %33, i64 %n, i32 1
  %34 = load %struct.sv** %arg.i143, align 8, !tbaa !3
  %call84 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f.addr.1, %struct._PerlIO_funcs* %self, i8* %mode.addr.3, %struct.sv* %34) #10
  %tobool85 = icmp eq %struct._PerlIO** %call84, null
  br i1 %tobool85, label %return, label %if.then86

if.then86:                                        ; preds = %if.end82
  %35 = load %struct._PerlIO** %call84, align 8, !tbaa !3
  %36 = getelementptr inbounds %struct._PerlIO* %35, i64 1, i32 0
  %stdio60.0.c = bitcast %struct._IO_FILE* %stdio60.0 to %struct._PerlIO*
  store %struct._PerlIO* %stdio60.0.c, %struct._PerlIO** %36, align 8, !tbaa !3
  %call89 = call i32 @fileno(%struct._IO_FILE* %stdio60.0) #9
  call void @PerlIOUnix_refcnt_inc(i32 %call89) #10
  br label %return

return:                                           ; preds = %if.then68, %if.end56, %if.end75, %if.then86, %if.end82, %if.else31, %if.then49, %PerlIOStdio_mode.exit141, %PerlIOStdio_mode.exit, %if.end
  %retval.0 = phi %struct._PerlIO** [ %f, %if.end ], [ null, %PerlIOStdio_mode.exit ], [ null, %PerlIOStdio_mode.exit141 ], [ %call47, %if.then49 ], [ null, %if.else31 ], [ null, %if.end82 ], [ %call84, %if.then86 ], [ null, %if.end75 ], [ null, %if.end56 ], [ null, %if.then68 ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: optsize
declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIOStdio_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #1 {
entry:
  %mode = alloca [8 x i8], align 1
  %call = call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #10
  %tobool = icmp eq %struct._PerlIO** %call, null
  br i1 %tobool, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %0 = load %struct._PerlIO** %o, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %call2 = call i32 @fileno(%struct._IO_FILE* %2) #9
  %and = and i32 %flags, 2
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.end10, label %if.then4

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @fileno(%struct._IO_FILE* %2) #9
  %call6 = call i32 @dup(i32 %call5) #9
  %cmp = icmp sgt i32 %call6, -1
  br i1 %cmp, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.then4
  %arraydecay = getelementptr inbounds [8 x i8]* %mode, i64 0, i64 0
  %call8 = call i8* @PerlIO_modestr(%struct._PerlIO** %o, i8* %arraydecay) #10
  %call9 = call %struct._IO_FILE* @fdopen(i32 %call6, i8* %call8) #9
  br label %set_this

if.end10:                                         ; preds = %if.then, %if.then4
  %arraydecay11 = getelementptr inbounds [8 x i8]* %mode, i64 0, i64 0
  %call12 = call i8* @PerlIO_modestr(%struct._PerlIO** %o, i8* %arraydecay11) #10
  %call13 = call %struct._IO_FILE* @fdopen(i32 %call2, i8* %call12) #9
  br label %set_this

set_this:                                         ; preds = %if.end10, %if.then7
  %stdio.0 = phi %struct._IO_FILE* [ %call9, %if.then7 ], [ %call13, %if.end10 ]
  %3 = load %struct._PerlIO** %call, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct._PerlIO* %3, i64 1, i32 0
  %stdio.0.c = bitcast %struct._IO_FILE* %stdio.0 to %struct._PerlIO*
  store %struct._PerlIO* %stdio.0.c, %struct._PerlIO** %4, align 8, !tbaa !3
  %call15 = call i32 @fileno(%struct._IO_FILE* %stdio.0) #9
  call void @PerlIOUnix_refcnt_inc(i32 %call15) #10
  br label %if.end16

if.end16:                                         ; preds = %entry, %set_this
  ret %struct._PerlIO** %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_close(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %tobool = icmp eq %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32* @__errno_location() #9
  store i32 9, i32* %call, align 4, !tbaa !0
  br label %return

if.else:                                          ; preds = %entry
  %call2 = tail call i32 @fileno(%struct._IO_FILE* %2) #9
  %call3 = tail call i32 @PerlIOUnix_refcnt_dec(i32 %call2) #10
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.then6, label %if.end24

if.then6:                                         ; preds = %if.else
  %3 = load %struct._IO_FILE** @stdin, align 8, !tbaa !3
  %cmp7 = icmp eq %struct._IO_FILE* %2, %3
  br i1 %cmp7, label %return, label %if.else9

if.else9:                                         ; preds = %if.then6
  %4 = load %struct._IO_FILE** @stdout, align 8, !tbaa !3
  %cmp10 = icmp eq %struct._IO_FILE* %2, %4
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !3
  %cmp11 = icmp eq %struct._IO_FILE* %2, %5
  %or.cond = or i1 %cmp10, %cmp11
  %call13 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br i1 %or.cond, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.else9
  %conv = sext i32 %call13 to i64
  br label %return

if.end15:                                         ; preds = %if.else9
  %call18 = tail call i32* @__errno_location() #9
  %6 = load i32* %call18, align 4, !tbaa !0
  %_fileno.i = getelementptr inbounds %struct._IO_FILE* %2, i64 0, i32 14
  store i32 -1, i32* %_fileno.i, align 4, !tbaa !0
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.end15
  %invalidate.1 = phi i1 [ false, %if.end15 ], [ true, %if.else ]
  %saveerr.0 = phi i32 [ %6, %if.end15 ], [ 0, %if.else ]
  %call25 = tail call i32 @fclose(%struct._IO_FILE* %2) #9
  %conv26 = sext i32 %call25 to i64
  %cmp28 = icmp eq i32 %call25, 0
  %or.cond58 = or i1 %invalidate.1, %cmp28
  br i1 %or.cond58, label %return, label %if.then30

if.then30:                                        ; preds = %if.end24
  %call31 = tail call i32* @__errno_location() #9
  store i32 %saveerr.0, i32* %call31, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.then30, %if.end24, %if.then6, %if.then12, %if.then
  %retval.0 = phi i64 [ %conv, %if.then12 ], [ -1, %if.then ], [ 0, %if.then6 ], [ 0, %if.then30 ], [ %conv26, %if.end24 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_read(%struct._PerlIO** nocapture %f, i8* nocapture %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %cmp = icmp eq i64 %count, 1
  br label %for.cond

for.cond:                                         ; preds = %if.end19, %entry
  %got.0 = phi i64 [ 0, %entry ], [ %got.2, %if.end19 ]
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %call = tail call i32 @fgetc(%struct._IO_FILE* %2) #9
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.end4, label %if.end9.thread

if.end9.thread:                                   ; preds = %if.then
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %vbuf, align 1, !tbaa !1
  br label %for.end

if.else:                                          ; preds = %for.cond
  %call3 = tail call i64 @fread(i8* %vbuf, i64 1, i64 %count, %struct._IO_FILE* %2) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then, %if.else
  %got.1 = phi i64 [ %got.0, %if.then ], [ %call3, %if.else ]
  %cmp5 = icmp eq i64 %got.1, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %call7 = tail call i32 @ferror(%struct._IO_FILE* %2) #9
  %not.tobool = icmp ne i32 %call7, 0
  %got.1. = sext i1 %not.tobool to i64
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %got.2 = phi i64 [ %got.1, %if.end4 ], [ %got.1., %land.lhs.true ]
  %cmp10 = icmp sgt i64 %got.2, -1
  br i1 %cmp10, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end9
  %call12 = tail call i32* @__errno_location() #9
  %3 = load i32* %call12, align 4, !tbaa !0
  %cmp13 = icmp eq i32 %3, 4
  br i1 %cmp13, label %if.end16, label %for.end

if.end16:                                         ; preds = %lor.lhs.false
  %4 = load i32* @PL_sig_pending, align 4, !tbaa !0
  %tobool17 = icmp eq i32 %4, 0
  br i1 %tobool17, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end16
  tail call void @Perl_despatch_signals() #9
  br label %if.end19

if.end19:                                         ; preds = %if.end16, %if.then18
  %call20 = tail call i32* @__errno_location() #9
  store i32 0, i32* %call20, align 4, !tbaa !0
  br label %for.cond

for.end:                                          ; preds = %lor.lhs.false, %if.end9, %if.end9.thread
  %got.229 = phi i64 [ 1, %if.end9.thread ], [ %got.2, %if.end9 ], [ %got.2, %lor.lhs.false ]
  ret i64 %got.229
}

; Function Attrs: nounwind optsize
declare i32 @fgetc(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %call = tail call i32 @PerlIO_has_cntptr(%struct._PerlIO** %f) #10
  %tobool = icmp eq i32 %call, 0
  br i1 %tobool, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE* %2, i64 0, i32 1
  %cmp44 = icmp eq i64 %count, 0
  br i1 %cmp44, label %if.end21, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then
  %add.ptr = getelementptr inbounds i8* %vbuf, i64 %count
  %3 = load i8** %_IO_read_ptr, align 8, !tbaa !3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end15
  %count.addr.048 = phi i64 [ %count, %while.body.lr.ph ], [ %dec, %if.end15 ]
  %buf.047 = phi i8* [ %add.ptr, %while.body.lr.ph ], [ %incdec.ptr, %if.end15 ]
  %eptr.046 = phi i8* [ %3, %while.body.lr.ph ], [ %5, %if.end15 ]
  %unread.045 = phi i64 [ 0, %while.body.lr.ph ], [ %inc, %if.end15 ]
  %incdec.ptr = getelementptr inbounds i8* %buf.047, i64 -1
  %4 = load i8* %incdec.ptr, align 1, !tbaa !1
  %conv37 = zext i8 %4 to i32
  %call1 = tail call i32 @ungetc(i32 %conv37, %struct._IO_FILE* %2) #9
  %cmp2 = icmp eq i32 %call1, %conv37
  br i1 %cmp2, label %if.end, label %if.end16

if.end:                                           ; preds = %while.body
  %5 = load i8** %_IO_read_ptr, align 8, !tbaa !3
  %incdec.ptr6 = getelementptr inbounds i8* %eptr.046, i64 -1
  %cmp7 = icmp eq i8* %5, %incdec.ptr6
  br i1 %cmp7, label %lor.lhs.false, label %if.then13

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i8* %5, align 1, !tbaa !1
  %cmp11 = icmp eq i8 %6, %4
  br i1 %cmp11, label %if.end15, label %if.then13

if.then13:                                        ; preds = %lor.lhs.false, %if.end
  %call14 = tail call i32 @fgetc(%struct._IO_FILE* %2) #9
  br label %if.end16

if.end15:                                         ; preds = %lor.lhs.false
  %dec = add i64 %count.addr.048, -1
  %inc = add nsw i64 %unread.045, 1
  %cmp = icmp eq i64 %dec, 0
  br i1 %cmp, label %if.end21, label %while.body

if.end16:                                         ; preds = %while.body, %entry, %if.then13
  %unread.1 = phi i64 [ %unread.045, %if.then13 ], [ 0, %entry ], [ %unread.045, %while.body ]
  %count.addr.1 = phi i64 [ %count.addr.048, %if.then13 ], [ %count, %entry ], [ %count.addr.048, %while.body ]
  %cmp17 = icmp eq i64 %count.addr.1, 0
  br i1 %cmp17, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end16
  %call20 = tail call i64 @PerlIOBase_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count.addr.1) #10
  %add = add nsw i64 %call20, %unread.1
  br label %if.end21

if.end21:                                         ; preds = %if.then, %if.end15, %if.end16, %if.then19
  %unread.2 = phi i64 [ %add, %if.then19 ], [ %unread.1, %if.end16 ], [ 0, %if.then ], [ %inc, %if.end15 ]
  ret i64 %unread.2
}

; Function Attrs: nounwind optsize
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_write(%struct._PerlIO** nocapture %f, i8* nocapture %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio7 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio7 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %call8 = tail call i64 @fwrite(i8* %vbuf, i64 1, i64 %count, %struct._IO_FILE* %2) #9
  %cmp9 = icmp sgt i64 %call8, -1
  br i1 %cmp9, label %for.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry, %if.end4
  %call10 = phi i64 [ %call, %if.end4 ], [ %call8, %entry ]
  %call1 = tail call i32* @__errno_location() #9
  %3 = load i32* %call1, align 4, !tbaa !0
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.end, label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32* @PL_sig_pending, align 4, !tbaa !0
  %tobool = icmp eq i32 %4, 0
  br i1 %tobool, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  tail call void @Perl_despatch_signals() #9
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %call5 = tail call i32* @__errno_location() #9
  store i32 0, i32* %call5, align 4, !tbaa !0
  %5 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio = getelementptr inbounds %struct._PerlIO* %5, i64 1
  %6 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %7 = load %struct._IO_FILE** %6, align 8, !tbaa !3
  %call = tail call i64 @fwrite(i8* %vbuf, i64 1, i64 %count, %struct._IO_FILE* %7) #9
  %cmp = icmp sgt i64 %call, -1
  br i1 %cmp, label %for.end, label %lor.lhs.false

for.end:                                          ; preds = %if.end4, %lor.lhs.false, %entry
  %call.lcssa = phi i64 [ %call8, %entry ], [ %call10, %lor.lhs.false ], [ %call, %if.end4 ]
  ret i64 %call.lcssa
}

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_seek(%struct._PerlIO** nocapture %f, i64 %offset, i32 %whence) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %call = tail call i32 @fseek(%struct._IO_FILE* %2, i64 %offset, i32 %whence) #9
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #6

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_tell(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %call = tail call i64 @ftell(%struct._IO_FILE* %2) #9
  ret i64 %call
}

; Function Attrs: nounwind optsize
declare i64 @ftell(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_flush(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 512
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %return, label %if.then

if.then:                                          ; preds = %entry
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %2 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %3 = load %struct._IO_FILE** %2, align 8, !tbaa !3
  %call = tail call i32 @fflush(%struct._IO_FILE* %3) #9
  %conv = sext i32 %call to i64
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i64 [ %conv, %if.then ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_eof(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %call = tail call i32 @feof(%struct._IO_FILE* %2) #9
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind optsize
declare i32 @feof(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize readonly uwtable
define i64 @PerlIOStdio_error(%struct._PerlIO** nocapture %f) #5 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %call = tail call i32 @ferror(%struct._IO_FILE* %2) #9
  %conv = sext i32 %call to i64
  ret i64 %conv
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIOStdio_clearerr(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  tail call void @clearerr(%struct._IO_FILE* %2) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @clearerr(%struct._IO_FILE* nocapture) #6

; Function Attrs: nounwind optsize uwtable
define void @PerlIOStdio_setlinebuf(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %call = tail call i32 @setvbuf(%struct._IO_FILE* %2, i8* null, i32 1, i64 0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) #6

; Function Attrs: nounwind optsize readonly uwtable
define i8* @PerlIOStdio_get_base(%struct._PerlIO** nocapture %f) #5 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %_IO_read_base = getelementptr inbounds %struct._IO_FILE* %2, i64 0, i32 3
  %3 = load i8** %_IO_read_base, align 8, !tbaa !3
  ret i8* %3
}

; Function Attrs: nounwind optsize readonly uwtable
define i64 @PerlIOStdio_get_bufsiz(%struct._PerlIO** nocapture %f) #5 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE* %2, i64 0, i32 2
  %3 = load i8** %_IO_read_end, align 8, !tbaa !3
  %_IO_read_base = getelementptr inbounds %struct._IO_FILE* %2, i64 0, i32 3
  %4 = load i8** %_IO_read_base, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind optsize readonly uwtable
define i8* @PerlIOStdio_get_ptr(%struct._PerlIO** nocapture %f) #5 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE* %2, i64 0, i32 1
  %3 = load i8** %_IO_read_ptr, align 8, !tbaa !3
  ret i8* %3
}

; Function Attrs: nounwind optsize readonly uwtable
define i64 @PerlIOStdio_get_cnt(%struct._PerlIO** nocapture %f) #5 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE* %2, i64 0, i32 2
  %3 = load i8** %_IO_read_end, align 8, !tbaa !3
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE* %2, i64 0, i32 1
  %4 = load i8** %_IO_read_ptr, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: noreturn nounwind optsize uwtable
define void @PerlIOStdio_set_ptrcnt(%struct._PerlIO** nocapture %f, i8* nocapture %ptr, i64 %cnt) #7 {
entry:
  tail call void @abort() #11
  unreachable
}

; Function Attrs: noreturn optsize
declare void @abort() #8

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOStdio_fill(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %stdio1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %stdio1 to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %3, 512
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @fflush(%struct._IO_FILE* %2) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end3, label %return

if.end3:                                          ; preds = %if.then, %entry
  %call4 = tail call i32 @fgetc(%struct._IO_FILE* %2) #9
  %cmp5 = icmp eq i32 %call4, -1
  br i1 %cmp5, label %return, label %if.end7

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @ungetc(i32 %call4, %struct._IO_FILE* %2) #9
  %not.cmp9 = icmp ne i32 %call8, %call4
  %. = sext i1 %not.cmp9 to i64
  br label %return

return:                                           ; preds = %if.end7, %if.end3, %if.then
  %retval.0 = phi i64 [ -1, %if.then ], [ -1, %if.end3 ], [ %., %if.end7 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @PerlIO_exportFILE(%struct._PerlIO** %f, i8* %mode) #1 {
entry:
  %buf = alloca [8 x i8], align 1
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.end17, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %tobool2 = icmp eq i8* %mode, null
  br i1 %tobool2, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %1 = load i8* %mode, align 1, !tbaa !1
  %tobool3 = icmp eq i8 %1, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  %arraydecay = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 0
  %call5 = call i8* @PerlIO_modestr(%struct._PerlIO** %f, i8* %arraydecay) #10
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %if.then4
  %mode.addr.0 = phi i8* [ %mode, %lor.lhs.false ], [ %call5, %if.then4 ]
  %call6 = call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %f) #10
  %call7 = call %struct._IO_FILE* @fdopen(i32 %call6, i8* %mode.addr.0) #9
  %tobool8 = icmp eq %struct._IO_FILE* %call7, null
  br i1 %tobool8, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end
  %2 = load %struct._PerlIO** %f, align 8, !tbaa !3
  store %struct._PerlIO* null, %struct._PerlIO** %f, align 8, !tbaa !3
  %arraydecay10 = getelementptr inbounds [8 x i8]* %buf, i64 0, i64 0
  %call11 = call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f, %struct._PerlIO_funcs* @PerlIO_stdio, i8* %arraydecay10, %struct.sv* null) #10
  %tobool12 = icmp eq %struct._PerlIO** %call11, null
  br i1 %tobool12, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.then9
  %3 = load %struct._PerlIO** %call11, align 8, !tbaa !3
  %4 = getelementptr inbounds %struct._PerlIO* %3, i64 1, i32 0
  %call7.c = bitcast %struct._IO_FILE* %call7 to %struct._PerlIO*
  store %struct._PerlIO* %call7.c, %struct._PerlIO** %4, align 8, !tbaa !3
  %5 = load %struct._PerlIO** %call11, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %5, i64 0, i32 0
  store %struct._PerlIO* %2, %struct._PerlIO** %next, align 8, !tbaa !3
  br label %if.end17

if.else:                                          ; preds = %if.then9
  store %struct._PerlIO* %2, %struct._PerlIO** %f, align 8, !tbaa !3
  br label %if.end17

if.end17:                                         ; preds = %if.end, %land.lhs.true, %entry, %if.else, %if.then13
  %stdio.0 = phi %struct._IO_FILE* [ %call7, %if.then13 ], [ %call7, %if.else ], [ null, %if.end ], [ null, %land.lhs.true ], [ null, %entry ]
  ret %struct._IO_FILE* %stdio.0
}

; Function Attrs: nounwind optsize uwtable
define %struct._IO_FILE* @PerlIO_findFILE(%struct._PerlIO** %f) #1 {
entry:
  %l.05 = load %struct._PerlIO** %f, align 8
  %tobool6 = icmp eq %struct._PerlIO* %l.05, null
  br i1 %tobool6, label %while.end, label %while.body

while.cond:                                       ; preds = %while.body
  %next = getelementptr inbounds %struct._PerlIO* %l.07, i64 0, i32 0
  %l.0 = load %struct._PerlIO** %next, align 8
  %tobool = icmp eq %struct._PerlIO* %l.0, null
  br i1 %tobool, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %while.cond
  %l.07 = phi %struct._PerlIO* [ %l.0, %while.cond ], [ %l.05, %entry ]
  %tab = getelementptr inbounds %struct._PerlIO* %l.07, i64 0, i32 1
  %0 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %cmp = icmp eq %struct._PerlIO_funcs* %0, @PerlIO_stdio
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %while.body
  %stdio = getelementptr inbounds %struct._PerlIO* %l.07, i64 1
  %1 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %2 = load %struct._IO_FILE** %1, align 8, !tbaa !3
  br label %return

while.end:                                        ; preds = %while.cond, %entry
  %call = tail call %struct._IO_FILE* @PerlIO_exportFILE(%struct._PerlIO** %f, i8* null) #10
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi %struct._IO_FILE* [ %2, %if.then ], [ %call, %while.end ]
  ret %struct._IO_FILE* %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_releaseFILE(%struct._PerlIO** %p, %struct._IO_FILE* %f) #1 {
entry:
  %0 = load %struct._PerlIO** %p, align 8, !tbaa !3
  %tobool8 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool8, label %return, label %while.body

while.body:                                       ; preds = %entry, %if.end3
  %1 = phi %struct._PerlIO* [ %5, %if.end3 ], [ %0, %entry ]
  %p.addr.09 = phi %struct._PerlIO** [ %next, %if.end3 ], [ %p, %entry ]
  %tab = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %cmp = icmp eq %struct._PerlIO_funcs* %2, @PerlIO_stdio
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %while.body
  %stdio = getelementptr inbounds %struct._PerlIO* %1, i64 1
  %3 = bitcast %struct._PerlIO* %stdio to %struct._IO_FILE**
  %4 = load %struct._IO_FILE** %3, align 8, !tbaa !3
  %cmp1 = icmp eq %struct._IO_FILE* %4, %f
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.then
  tail call void @PerlIO_pop(%struct._PerlIO** %p.addr.09) #10
  br label %return

if.end3:                                          ; preds = %if.then, %while.body
  %next = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 0
  %5 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO* %5, null
  br i1 %tobool, label %return, label %while.body

return:                                           ; preds = %entry, %if.end3, %if.then2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* nocapture %tab) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %call = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %f) #10
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @isatty(i32 %call) #9
  %tobool = icmp eq i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %2, 8912896
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %3 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %3, i64 0, i32 0
  %4 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool2 = icmp eq %struct._PerlIO* %4, null
  br i1 %tobool2, label %if.end10, label %if.then3

if.then3:                                         ; preds = %if.end
  %call5 = tail call i64 @Perl_PerlIO_tell(%struct._PerlIO** %next) #10
  %cmp6 = icmp eq i64 %call5, -1
  br i1 %cmp6, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.then3
  %5 = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 0
  %call5.c = inttoptr i64 %call5 to %struct._PerlIO*
  store %struct._PerlIO* %call5.c, %struct._PerlIO** %5, align 8, !tbaa !4
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %if.end, %if.then7
  %call11 = tail call i64 @PerlIOBase_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* undef, %struct._PerlIO_funcs* %tab) #10
  ret i64 %call11
}

; Function Attrs: optsize
declare i32 @isatty(i32) #3

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIOBuf_open(%struct._PerlIO_funcs* %self, %struct.PerlIO_list_s* %layers, i64 %n, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #1 {
entry:
  %tobool = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %next2 = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %sub = add nsw i64 %n, -1
  %1 = load %struct._PerlIO** %next2, align 8, !tbaa !3
  %tab3 = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab3, align 8, !tbaa !3
  %call = tail call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %layers, i64 %sub, %struct._PerlIO_funcs* %2) #10
  %tobool4 = icmp eq %struct._PerlIO_funcs* %call, null
  br i1 %tobool4, label %if.end, label %land.lhs.true5

land.lhs.true5:                                   ; preds = %if.then
  %Open = getelementptr inbounds %struct._PerlIO_funcs* %call, i64 0, i32 6
  %3 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open, align 8, !tbaa !3
  %tobool6 = icmp eq %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %3, null
  br i1 %tobool6, label %if.end, label %if.then7

if.then7:                                         ; preds = %land.lhs.true5
  %call10 = tail call %struct._PerlIO** %3(%struct._PerlIO_funcs* %call, %struct.PerlIO_list_s* %layers, i64 %sub, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %next2, i32 %narg, %struct.sv** %args) #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5, %if.then, %if.then7
  %next.0 = phi %struct._PerlIO** [ %call10, %if.then7 ], [ %next2, %land.lhs.true5 ], [ %next2, %if.then ]
  %tobool11 = icmp eq %struct._PerlIO** %next.0, null
  br i1 %tobool11, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tab12 = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 1
  %5 = load %struct._PerlIO_funcs** %tab12, align 8, !tbaa !3
  %Pushed = getelementptr inbounds %struct._PerlIO_funcs* %5, i64 0, i32 4
  %6 = load i64 (%struct._PerlIO**, i8*, %struct.sv*, %struct._PerlIO_funcs*)** %Pushed, align 8, !tbaa !3
  %array.i = getelementptr inbounds %struct.PerlIO_list_s* %layers, i64 0, i32 3
  %7 = load %struct.PerlIO_pair_t** %array.i, align 8, !tbaa !3
  %arg.i = getelementptr inbounds %struct.PerlIO_pair_t* %7, i64 %n, i32 1
  %8 = load %struct.sv** %arg.i, align 8, !tbaa !3
  %call14 = tail call i64 %6(%struct._PerlIO** %f, i8* %mode, %struct.sv* %8, %struct._PerlIO_funcs* %self) #9
  %cmp = icmp eq i64 %call14, 0
  br i1 %cmp, label %if.end54, label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %sub18 = add nsw i64 %n, -1
  %call.i = tail call %struct.PerlIO_list_s* @PerlIO_default_layers() #9
  %call3.i = tail call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %call.i, i64 0, %struct._PerlIO_funcs* @PerlIO_stdio) #9
  %call20 = tail call %struct._PerlIO_funcs* @PerlIO_layer_fetch(%struct.PerlIO_list_s* %layers, i64 %sub18, %struct._PerlIO_funcs* %call3.i) #10
  %9 = load i8* %mode, align 1, !tbaa !1
  %cmp21 = icmp eq i8 %9, 73
  %tobool25 = icmp eq %struct._PerlIO_funcs* %call20, null
  br i1 %tobool25, label %if.else33, label %land.lhs.true26

land.lhs.true26:                                  ; preds = %if.else
  %Open27 = getelementptr inbounds %struct._PerlIO_funcs* %call20, i64 0, i32 6
  %10 = load %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)** %Open27, align 8, !tbaa !3
  %tobool28 = icmp eq %struct._PerlIO** (%struct._PerlIO_funcs*, %struct.PerlIO_list_s*, i64, i8*, i32, i32, i32, %struct._PerlIO**, i32, %struct.sv**)* %10, null
  br i1 %tobool28, label %if.else33, label %if.then29

if.then29:                                        ; preds = %land.lhs.true26
  %call32 = tail call %struct._PerlIO** %10(%struct._PerlIO_funcs* %call20, %struct.PerlIO_list_s* %layers, i64 %sub18, i8* %mode, i32 %fd, i32 %imode, i32 %perm, %struct._PerlIO** %f, i32 %narg, %struct.sv** %args) #9
  br label %if.end35

if.else33:                                        ; preds = %land.lhs.true26, %if.else
  %call34 = tail call i32* @__errno_location() #9
  store i32 22, i32* %call34, align 4, !tbaa !0
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then29
  %f.addr.0 = phi %struct._PerlIO** [ %call32, %if.then29 ], [ %f, %if.else33 ]
  %tobool36 = icmp eq %struct._PerlIO** %f.addr.0, null
  br i1 %tobool36, label %if.end54, label %if.then37

if.then37:                                        ; preds = %if.end35
  %array.i94 = getelementptr inbounds %struct.PerlIO_list_s* %layers, i64 0, i32 3
  %11 = load %struct.PerlIO_pair_t** %array.i94, align 8, !tbaa !3
  %arg.i95 = getelementptr inbounds %struct.PerlIO_pair_t* %11, i64 %n, i32 1
  %12 = load %struct.sv** %arg.i95, align 8, !tbaa !3
  %call39 = tail call %struct._PerlIO** @PerlIO_push(%struct._PerlIO** %f.addr.0, %struct._PerlIO_funcs* %self, i8* %mode, %struct.sv* %12) #10
  %cmp40 = icmp eq %struct._PerlIO** %call39, null
  br i1 %cmp40, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.then37
  %call43 = tail call i32 @Perl_PerlIO_close(%struct._PerlIO** %f.addr.0) #10
  br label %return

if.else44:                                        ; preds = %if.then37
  %call45 = tail call i32 @Perl_PerlIO_fileno(%struct._PerlIO** %f.addr.0) #10
  %cmp48 = icmp eq i32 %call45, 2
  %or.cond = and i1 %cmp21, %cmp48
  br i1 %or.cond, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.else44
  %13 = load %struct._PerlIO** %f.addr.0, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %13, i64 0, i32 2
  %14 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %14, 65536
  store i32 %or, i32* %flags, align 4, !tbaa !0
  br label %if.end54

if.end54:                                         ; preds = %lor.lhs.false, %if.end35, %if.else44, %if.then50
  %f.addr.1 = phi %struct._PerlIO** [ %f, %lor.lhs.false ], [ %f.addr.0, %if.then50 ], [ %f.addr.0, %if.else44 ], [ null, %if.end35 ]
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end54, %if.then42
  %retval.0 = phi %struct._PerlIO** [ %f.addr.1, %if.end54 ], [ null, %if.then42 ], [ null, %lor.lhs.false ], [ null, %if.end ]
  ret %struct._PerlIO** %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_flush(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 131072
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.else14, label %if.then

if.then:                                          ; preds = %entry
  %buf1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %2 = bitcast %struct._PerlIO* %buf1 to i8**
  %3 = load i8** %2, align 8, !tbaa !3
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %4 = bitcast i32* %ptr to i8**
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then4, %if.then
  %p.0.ph = phi i8* [ %3, %if.then ], [ %add.ptr, %if.then4 ]
  %sub.ptr.rhs.cast = ptrtoint i8* %p.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %lor.lhs.false
  %5 = load i8** %4, align 8, !tbaa !3
  %cmp = icmp ult i8* %p.0.ph, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = tail call i64 @Perl_PerlIO_write(%struct._PerlIO** %next, i8* %p.0.ph, i64 %sub.ptr.sub) #10
  %cmp3 = icmp sgt i64 %call, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %while.body
  %add.ptr = getelementptr inbounds i8* %p.0.ph, i64 %call
  br label %while.cond.outer

if.else:                                          ; preds = %while.body
  %cmp5 = icmp slt i64 %call, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %call6 = tail call i32 @Perl_PerlIO_error(%struct._PerlIO** %next) #10
  %tobool7 = icmp eq i32 %call6, 0
  br i1 %tobool7, label %while.cond, label %if.then8

if.then8:                                         ; preds = %lor.lhs.false, %if.else
  %6 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags9 = getelementptr inbounds %struct._PerlIO* %6, i64 0, i32 2
  %7 = load i32* %flags9, align 4, !tbaa !0
  %or = or i32 %7, 2048
  store i32 %or, i32* %flags9, align 4, !tbaa !0
  br label %while.end

while.end:                                        ; preds = %while.cond, %if.then8
  %code.0 = phi i32 [ -1, %if.then8 ], [ 0, %while.cond ]
  %sub.ptr.rhs.cast12 = ptrtoint i8* %3 to i64
  %sub.ptr.sub13 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast12
  %posn = getelementptr inbounds %struct._PerlIO* %0, i64 2
  %8 = bitcast %struct._PerlIO* %posn to i64*
  %9 = load i64* %8, align 8, !tbaa !4
  %add = add nsw i64 %sub.ptr.sub13, %9
  %10 = getelementptr inbounds %struct._PerlIO* %posn, i64 0, i32 0
  %add.c = inttoptr i64 %add to %struct._PerlIO*
  store %struct._PerlIO* %add.c, %struct._PerlIO** %10, align 8, !tbaa !4
  br label %if.end49

if.else14:                                        ; preds = %entry
  %and16 = and i32 %1, 262144
  %tobool17 = icmp eq i32 %and16, 0
  br i1 %tobool17, label %if.else14.if.end49_crit_edge, label %if.then18

if.else14.if.end49_crit_edge:                     ; preds = %if.else14
  %ptr52.pre = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %.pre109 = bitcast i32* %ptr52.pre to i8**
  br label %if.end49

if.then18:                                        ; preds = %if.else14
  %call20 = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %ptr21 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %11 = bitcast i32* %ptr21 to i8**
  %12 = load i8** %11, align 8, !tbaa !3
  %sub.ptr.lhs.cast22 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %call20 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %posn25 = getelementptr inbounds %struct._PerlIO* %0, i64 2
  %13 = bitcast %struct._PerlIO* %posn25 to i64*
  %14 = load i64* %13, align 8, !tbaa !4
  %add26 = add nsw i64 %sub.ptr.sub24, %14
  %15 = getelementptr inbounds %struct._PerlIO* %posn25, i64 0, i32 0
  %add26.c = inttoptr i64 %add26 to %struct._PerlIO*
  store %struct._PerlIO* %add26.c, %struct._PerlIO** %15, align 8, !tbaa !4
  %end = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %16 = load %struct._PerlIO_funcs** %end, align 8
  %17 = bitcast %struct._PerlIO_funcs* %16 to i8*
  %cmp28 = icmp ult i8* %12, %17
  br i1 %cmp28, label %if.then29, label %if.end49

if.then29:                                        ; preds = %if.then18
  %tobool30 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool30, label %if.else40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then29
  %18 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool31 = icmp eq %struct._PerlIO* %18, null
  br i1 %tobool31, label %if.else40, label %land.lhs.true32

land.lhs.true32:                                  ; preds = %land.lhs.true
  %call34 = tail call i32 @Perl_PerlIO_seek(%struct._PerlIO** %next, i64 %add26, i32 0) #10
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then36, label %land.lhs.true32.if.else40_crit_edge

land.lhs.true32.if.else40_crit_edge:              ; preds = %land.lhs.true32
  %.pre = load i8** %11, align 8, !tbaa !3
  %.pre108 = load i64* %13, align 8, !tbaa !4
  br label %if.else40

if.then36:                                        ; preds = %land.lhs.true32
  %19 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next37 = getelementptr inbounds %struct._PerlIO* %19, i64 0, i32 0
  %call38 = tail call i64 @Perl_PerlIO_tell(%struct._PerlIO** %next37) #10
  %call38.c = inttoptr i64 %call38 to %struct._PerlIO*
  store %struct._PerlIO* %call38.c, %struct._PerlIO** %15, align 8, !tbaa !4
  br label %if.end49

if.else40:                                        ; preds = %land.lhs.true32.if.else40_crit_edge, %land.lhs.true, %if.then29
  %20 = phi i64 [ %.pre108, %land.lhs.true32.if.else40_crit_edge ], [ %add26, %land.lhs.true ], [ %add26, %if.then29 ]
  %21 = phi i8* [ %.pre, %land.lhs.true32.if.else40_crit_edge ], [ %12, %land.lhs.true ], [ %12, %if.then29 ]
  %sub.ptr.lhs.cast42 = ptrtoint i8* %21 to i64
  %sub.ptr.sub44101 = sub i64 %sub.ptr.rhs.cast23, %sub.ptr.lhs.cast42
  %sub = add i64 %sub.ptr.sub44101, %20
  %sub.c = inttoptr i64 %sub to %struct._PerlIO*
  store %struct._PerlIO* %sub.c, %struct._PerlIO** %15, align 8, !tbaa !4
  br label %return

if.end49:                                         ; preds = %if.then18, %if.else14.if.end49_crit_edge, %if.then36, %while.end
  %.pre-phi = phi i8** [ %.pre109, %if.else14.if.end49_crit_edge ], [ %11, %if.then36 ], [ %4, %while.end ], [ %11, %if.then18 ]
  %n.0 = phi %struct._PerlIO** [ %next, %if.else14.if.end49_crit_edge ], [ %next37, %if.then36 ], [ %next, %while.end ], [ %next, %if.then18 ]
  %code.1 = phi i32 [ 0, %if.else14.if.end49_crit_edge ], [ 0, %if.then36 ], [ %code.0, %while.end ], [ 0, %if.then18 ]
  %buf50 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %22 = bitcast %struct._PerlIO* %buf50 to i8**
  %23 = load i8** %22, align 8, !tbaa !3
  %end51 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %.c = bitcast i8* %23 to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %.c, %struct._PerlIO_funcs** %end51, align 8, !tbaa !3
  store i8* %23, i8** %.pre-phi, align 8, !tbaa !3
  %24 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags53 = getelementptr inbounds %struct._PerlIO* %24, i64 0, i32 2
  %25 = load i32* %flags53, align 4, !tbaa !0
  %and54 = and i32 %25, -393217
  store i32 %and54, i32* %flags53, align 4, !tbaa !0
  %tobool55 = icmp eq %struct._PerlIO** %n.0, null
  br i1 %tobool55, label %if.end63, label %land.lhs.true56

land.lhs.true56:                                  ; preds = %if.end49
  %26 = load %struct._PerlIO** %n.0, align 8, !tbaa !3
  %tobool57 = icmp eq %struct._PerlIO* %26, null
  br i1 %tobool57, label %if.end63, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true56
  %call59 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %n.0) #10
  %cmp60 = icmp eq i32 %call59, 0
  %code.1. = select i1 %cmp60, i32 %code.1, i32 -1
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true58, %land.lhs.true56, %if.end49
  %code.2 = phi i32 [ %code.1, %land.lhs.true56 ], [ %code.1, %if.end49 ], [ %code.1., %land.lhs.true58 ]
  %conv64 = sext i32 %code.2 to i64
  br label %return

return:                                           ; preds = %if.end63, %if.else40
  %retval.0 = phi i64 [ %conv64, %if.end63 ], [ 0, %if.else40 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_fill(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %1, i64 0, i32 2
  %2 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %2, 8388608
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  tail call void @PerlIOBase_flush_linebuf() #10
  br label %if.end2

if.end2:                                          ; preds = %if.end, %if.then1
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %3 = bitcast %struct._PerlIO* %buf to i8**
  %4 = load i8** %3, align 8, !tbaa !3
  %tobool3 = icmp eq i8* %4, null
  br i1 %tobool3, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %if.end2
  %call5 = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %.pre = load i8** %3, align 8, !tbaa !3
  %end110 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %.c111 = bitcast i8* %.pre to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %.c111, %struct._PerlIO_funcs** %end110, align 8, !tbaa !3
  %ptr112 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %5 = bitcast i32* %ptr112 to i8**
  store i8* %.pre, i8** %5, align 8, !tbaa !3
  br label %land.lhs.true

if.end6:                                          ; preds = %if.end2
  %end = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %.c = bitcast i8* %4 to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %.c, %struct._PerlIO_funcs** %end, align 8, !tbaa !3
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %6 = bitcast i32* %ptr to i8**
  store i8* %4, i8** %6, align 8, !tbaa !3
  %tobool8 = icmp eq %struct._PerlIO* %0, null
  br i1 %tobool8, label %if.then10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end6.thread, %if.end6
  %7 = phi i8** [ %5, %if.end6.thread ], [ %6, %if.end6 ]
  %end114 = phi %struct._PerlIO_funcs** [ %end110, %if.end6.thread ], [ %end, %if.end6 ]
  %8 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %tobool9 = icmp eq %struct._PerlIO* %8, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %land.lhs.true, %if.end6
  %9 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags11 = getelementptr inbounds %struct._PerlIO* %9, i64 0, i32 2
  %10 = load i32* %flags11, align 4, !tbaa !0
  %or = or i32 %10, 256
  store i32 %or, i32* %flags11, align 4, !tbaa !0
  br label %return

if.end12:                                         ; preds = %land.lhs.true
  %call13 = tail call i32 @PerlIO_fast_gets(%struct._PerlIO** %next) #10
  %tobool14 = icmp eq i32 %call13, 0
  br i1 %tobool14, label %if.else49, label %if.then15

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %next) #10
  %conv = sext i32 %call16 to i64
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %if.then19, label %if.end35

if.then19:                                        ; preds = %if.then15
  %call20 = tail call i32 @Perl_PerlIO_fill(%struct._PerlIO** %next) #10
  %conv21 = sext i32 %call20 to i64
  %cmp22 = icmp eq i32 %call20, 0
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.then19
  %call25 = tail call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %next) #10
  %conv26 = sext i32 %call25 to i64
  br label %if.end35

if.else:                                          ; preds = %if.then19
  %call27 = tail call i32 @Perl_PerlIO_error(%struct._PerlIO** %next) #10
  %tobool28 = icmp eq i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true29, label %if.end35

land.lhs.true29:                                  ; preds = %if.else
  %call30 = tail call i32 @Perl_PerlIO_eof(%struct._PerlIO** %next) #10
  %tobool31 = icmp eq i32 %call30, 0
  %conv21. = select i1 %tobool31, i64 %conv21, i64 0
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true29, %if.else, %if.then24, %if.then15
  %avail.0 = phi i64 [ %conv26, %if.then24 ], [ %conv21, %if.else ], [ %conv, %if.then15 ], [ %conv21., %land.lhs.true29 ]
  %cmp36 = icmp sgt i64 %avail.0, 0
  br i1 %cmp36, label %if.then38, label %if.then56

if.then38:                                        ; preds = %if.end35
  %call40 = tail call i8* @Perl_PerlIO_get_ptr(%struct._PerlIO** %next) #10
  %bufsiz = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 1
  %11 = bitcast %struct._PerlIO_funcs** %bufsiz to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %cmp41 = icmp sgt i64 %avail.0, %12
  %.avail.0 = select i1 %cmp41, i64 %12, i64 %avail.0
  %13 = load i8** %3, align 8, !tbaa !3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %call40, i64 %.avail.0, i32 1, i1 false)
  %add.ptr = getelementptr inbounds i8* %call40, i64 %.avail.0
  %sub = sub nsw i64 %avail.0, %.avail.0
  %conv47 = trunc i64 %sub to i32
  tail call void @Perl_PerlIO_set_ptrcnt(%struct._PerlIO** %next, i8* %add.ptr, i32 %conv47) #10
  br label %if.end53

if.else49:                                        ; preds = %if.end12
  %14 = load i8** %7, align 8, !tbaa !3
  %bufsiz51 = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 1
  %15 = bitcast %struct._PerlIO_funcs** %bufsiz51 to i64*
  %16 = load i64* %15, align 8, !tbaa !4
  %call52 = tail call i64 @Perl_PerlIO_read(%struct._PerlIO** %next, i8* %14, i64 %16) #10
  br label %if.end53

if.end53:                                         ; preds = %if.then38, %if.else49
  %avail.2 = phi i64 [ %.avail.0, %if.then38 ], [ %call52, %if.else49 ]
  %cmp54 = icmp slt i64 %avail.2, 1
  br i1 %cmp54, label %if.then56, label %if.end66

if.then56:                                        ; preds = %if.end35, %if.end53
  %avail.2109 = phi i64 [ %avail.2, %if.end53 ], [ %avail.0, %if.end35 ]
  %cmp57 = icmp eq i64 %avail.2109, 0
  %17 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags60 = getelementptr inbounds %struct._PerlIO* %17, i64 0, i32 2
  %18 = load i32* %flags60, align 4, !tbaa !0
  %storemerge.v = select i1 %cmp57, i32 256, i32 2048
  %storemerge = or i32 %18, %storemerge.v
  store i32 %storemerge, i32* %flags60, align 4, !tbaa !0
  br label %return

if.end66:                                         ; preds = %if.end53
  %19 = load i8** %3, align 8, !tbaa !3
  %add.ptr68 = getelementptr inbounds i8* %19, i64 %avail.2
  %add.ptr68.c = bitcast i8* %add.ptr68 to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %add.ptr68.c, %struct._PerlIO_funcs** %end114, align 8, !tbaa !3
  %20 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags70 = getelementptr inbounds %struct._PerlIO* %20, i64 0, i32 2
  %21 = load i32* %flags70, align 4, !tbaa !0
  %or71 = or i32 %21, 262144
  store i32 %or71, i32* %flags70, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %entry, %if.end66, %if.then56, %if.then10
  %retval.0 = phi i64 [ -1, %if.then56 ], [ 0, %if.end66 ], [ -1, %if.then10 ], [ -1, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO** %f, null
  %tobool1 = icmp eq %struct._PerlIO* %0, null
  %or.cond = or i1 %tobool, %tobool1
  br i1 %or.cond, label %return, label %if.then

if.then:                                          ; preds = %entry
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %1 = bitcast i32* %ptr to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool2 = icmp eq i8* %2, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %call = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then3
  %call4 = tail call i64 @PerlIOBase_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #10
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call4, %if.end ], [ 0, %entry ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf1 to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %.pre = load %struct._PerlIO** %f, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct._PerlIO* [ %0, %entry ], [ %.pre, %if.then ]
  %flags = getelementptr inbounds %struct._PerlIO* %3, i64 0, i32 2
  %4 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %4, 512
  %tobool2 = icmp eq i32 %and, 0
  br i1 %tobool2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  %and6 = and i32 %4, 262144
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.end12, label %if.then8

if.then8:                                         ; preds = %if.end4
  %call9 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then8.if.end12_crit_edge, label %return

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  %.pre123 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags13.phi.trans.insert = getelementptr inbounds %struct._PerlIO* %.pre123, i64 0, i32 2
  %.pre124 = load i32* %flags13.phi.trans.insert, align 4, !tbaa !0
  br label %if.end12

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %if.end4
  %5 = phi i32 [ %.pre124, %if.then8.if.end12_crit_edge ], [ %4, %if.end4 ]
  %and14 = and i32 %5, 524288
  %tobool15 = icmp eq i32 %and14, 0
  br i1 %tobool15, label %while.cond22.preheader, label %if.then16

if.then16:                                        ; preds = %if.end12
  %add.ptr = getelementptr inbounds i8* %vbuf, i64 %count
  br label %while.cond

while.cond:                                       ; preds = %land.rhs, %if.then16
  %flushptr.0 = phi i8* [ %add.ptr, %if.then16 ], [ %add.ptr18, %land.rhs ]
  %cmp17 = icmp ugt i8* %flushptr.0, %vbuf
  br i1 %cmp17, label %land.rhs, label %while.cond22.preheader

land.rhs:                                         ; preds = %while.cond
  %add.ptr18 = getelementptr inbounds i8* %flushptr.0, i64 -1
  %6 = load i8* %add.ptr18, align 1, !tbaa !1
  %cmp19 = icmp eq i8 %6, 10
  br i1 %cmp19, label %while.cond22.preheader, label %while.cond

while.cond22.preheader:                           ; preds = %while.cond, %land.rhs, %if.end12
  %flushptr.1.ph = phi i8* [ %vbuf, %if.end12 ], [ %flushptr.0, %land.rhs ], [ %flushptr.0, %while.cond ]
  %cmp23116 = icmp eq i64 %count, 0
  br i1 %cmp23116, label %while.end64, label %while.body25.lr.ph

while.body25.lr.ph:                               ; preds = %while.cond22.preheader
  %bufsiz = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 1
  %7 = bitcast %struct._PerlIO_funcs** %bufsiz to i64*
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %8 = bitcast i32* %ptr to i8**
  %sub.ptr.lhs.cast37 = ptrtoint i8* %flushptr.1.ph to i64
  br label %while.body25

while.body25:                                     ; preds = %while.cond22.backedge, %while.body25.lr.ph
  %written.0119 = phi i64 [ 0, %while.body25.lr.ph ], [ %written.1, %while.cond22.backedge ]
  %buf.0118 = phi i8* [ %vbuf, %while.body25.lr.ph ], [ %buf.1, %while.cond22.backedge ]
  %count.addr.0117 = phi i64 [ %count, %while.body25.lr.ph ], [ %count.addr.1, %while.cond22.backedge ]
  %9 = load i64* %7, align 8, !tbaa !4
  %10 = load i8** %8, align 8, !tbaa !3
  %11 = load i8** %1, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub115 = sub i64 %sub.ptr.rhs.cast, %sub.ptr.lhs.cast
  %sub = add i64 %sub.ptr.sub115, %9
  %cmp27 = icmp slt i64 %count.addr.0117, %sub
  %count.addr.0.sub = select i1 %cmp27, i64 %count.addr.0117, i64 %sub
  %cmp31 = icmp ugt i8* %flushptr.1.ph, %buf.0118
  br i1 %cmp31, label %land.lhs.true, label %if.end40

land.lhs.true:                                    ; preds = %while.body25
  %add.ptr33 = getelementptr inbounds i8* %buf.0118, i64 %count.addr.0.sub
  %cmp34 = icmp ugt i8* %flushptr.1.ph, %add.ptr33
  br i1 %cmp34, label %if.end40, label %if.then36

if.then36:                                        ; preds = %land.lhs.true
  %sub.ptr.rhs.cast38 = ptrtoint i8* %buf.0118 to i64
  %sub.ptr.sub39 = sub i64 %sub.ptr.lhs.cast37, %sub.ptr.rhs.cast38
  br label %if.end40

if.end40:                                         ; preds = %land.lhs.true, %while.body25, %if.then36
  %avail.1 = phi i64 [ %sub.ptr.sub39, %if.then36 ], [ %count.addr.0.sub, %while.body25 ], [ %count.addr.0.sub, %land.lhs.true ]
  %12 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags41 = getelementptr inbounds %struct._PerlIO* %12, i64 0, i32 2
  %13 = load i32* %flags41, align 4, !tbaa !0
  %or = or i32 %13, 131072
  store i32 %or, i32* %flags41, align 4, !tbaa !0
  %tobool42 = icmp eq i64 %avail.1, 0
  br i1 %tobool42, label %if.end54, label %if.then43

if.then43:                                        ; preds = %if.end40
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %buf.0118, i64 %avail.1, i32 1, i1 false)
  %sub45 = sub i64 %count.addr.0117, %avail.1
  %add.ptr46 = getelementptr inbounds i8* %buf.0118, i64 %avail.1
  %add = add i64 %avail.1, %written.0119
  %14 = load i8** %8, align 8, !tbaa !3
  %add.ptr48 = getelementptr inbounds i8* %14, i64 %avail.1
  store i8* %add.ptr48, i8** %8, align 8, !tbaa !3
  %cmp49 = icmp eq i8* %add.ptr46, %flushptr.1.ph
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then43
  %call52 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %.pre122 = load i8** %8, align 8, !tbaa !3
  br label %if.end54

if.end54:                                         ; preds = %if.then43, %if.end40, %if.then51
  %15 = phi i8* [ %.pre122, %if.then51 ], [ %10, %if.end40 ], [ %add.ptr48, %if.then43 ]
  %count.addr.1 = phi i64 [ %sub45, %if.then51 ], [ %count.addr.0117, %if.end40 ], [ %sub45, %if.then43 ]
  %buf.1 = phi i8* [ %flushptr.1.ph, %if.then51 ], [ %buf.0118, %if.end40 ], [ %add.ptr46, %if.then43 ]
  %written.1 = phi i64 [ %add, %if.then51 ], [ %written.0119, %if.end40 ], [ %add, %if.then43 ]
  %16 = load i8** %1, align 8, !tbaa !3
  %17 = load i64* %7, align 8, !tbaa !4
  %add.ptr58 = getelementptr inbounds i8* %16, i64 %17
  %cmp59 = icmp ult i8* %15, %add.ptr58
  br i1 %cmp59, label %while.cond22.backedge, label %if.then61

if.then61:                                        ; preds = %if.end54
  %call62 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %while.cond22.backedge

while.cond22.backedge:                            ; preds = %if.then61, %if.end54
  %cmp23 = icmp eq i64 %count.addr.1, 0
  br i1 %cmp23, label %while.cond22.while.end64_crit_edge, label %while.body25

while.cond22.while.end64_crit_edge:               ; preds = %while.cond22.backedge
  %.pre120 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags65.phi.trans.insert = getelementptr inbounds %struct._PerlIO* %.pre120, i64 0, i32 2
  %.pre121 = load i32* %flags65.phi.trans.insert, align 4, !tbaa !0
  br label %while.end64

while.end64:                                      ; preds = %while.cond22.while.end64_crit_edge, %while.cond22.preheader
  %18 = phi i32 [ %.pre121, %while.cond22.while.end64_crit_edge ], [ %5, %while.cond22.preheader ]
  %written.0.lcssa = phi i64 [ %written.1, %while.cond22.while.end64_crit_edge ], [ 0, %while.cond22.preheader ]
  %and66 = and i32 %18, 65536
  %tobool67 = icmp eq i32 %and66, 0
  br i1 %tobool67, label %return, label %if.then68

if.then68:                                        ; preds = %while.end64
  %call69 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %return

return:                                           ; preds = %if.then68, %while.end64, %if.then8, %if.end
  %retval.0 = phi i64 [ 0, %if.end ], [ 0, %if.then8 ], [ %written.0.lcssa, %while.end64 ], [ %written.0.lcssa, %if.then68 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #1 {
entry:
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %conv = sext i32 %call to i64
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, -257
  store i32 %and, i32* %flags, align 4, !tbaa !0
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %call2 = tail call i32 @Perl_PerlIO_seek(%struct._PerlIO** %next, i64 %offset, i32 %whence) #10
  %conv3 = sext i32 %call2 to i64
  %cmp4 = icmp eq i32 %call2, 0
  br i1 %cmp4, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then
  %2 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next7 = getelementptr inbounds %struct._PerlIO* %2, i64 0, i32 0
  %call8 = tail call i64 @Perl_PerlIO_tell(%struct._PerlIO** %next7) #10
  %3 = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 0
  %call8.c = inttoptr i64 %call8 to %struct._PerlIO*
  store %struct._PerlIO* %call8.c, %struct._PerlIO** %3, align 8, !tbaa !4
  br label %if.end9

if.end9:                                          ; preds = %if.then, %if.then6, %entry
  %code.0 = phi i64 [ %conv3, %if.then6 ], [ %conv3, %if.then ], [ %conv, %entry ]
  ret i64 %code.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_tell(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %posn1 = getelementptr inbounds %struct._PerlIO* %0, i64 2
  %1 = bitcast %struct._PerlIO* %posn1 to i64*
  %2 = load i64* %1, align 8, !tbaa !4
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %3 = load i32* %flags, align 4, !tbaa !0
  %4 = and i32 %3, 139264
  %5 = icmp eq i32 %4, 139264
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %6 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %next = getelementptr inbounds %struct._PerlIO* %6, i64 0, i32 0
  %call5 = tail call i64 @Perl_PerlIO_tell(%struct._PerlIO** %next) #10
  %7 = getelementptr inbounds %struct._PerlIO* %posn1, i64 0, i32 0
  %call5.c = inttoptr i64 %call5 to %struct._PerlIO*
  store %struct._PerlIO* %call5.c, %struct._PerlIO** %7, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %posn.0 = phi i64 [ %call5, %if.then ], [ %2, %entry ]
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %8 = bitcast %struct._PerlIO* %buf to i8**
  %9 = load i8** %8, align 8, !tbaa !3
  %tobool7 = icmp eq i8* %9, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %10 = bitcast i32* %ptr to i8**
  %11 = load i8** %10, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %posn.0, %sub.ptr.rhs.cast
  %add = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then8
  %posn.1 = phi i64 [ %add, %if.then8 ], [ %posn.0, %if.end ]
  ret i64 %posn.1
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_popped(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %oneword = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 2
  %3 = bitcast i32* %oneword to i8*
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @Perl_safesysfree(i8* %2) #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %4 = bitcast %struct._PerlIO* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false)
  %5 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %5, i64 0, i32 2
  %6 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %6, -393217
  store i32 %and, i32* %flags, align 4, !tbaa !0
  ret i64 0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_close(%struct._PerlIO** %f) #1 {
entry:
  %call = tail call i64 @PerlIOBase_close(%struct._PerlIO** %f) #10
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %oneword = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 2
  %3 = bitcast i32* %oneword to i8*
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @Perl_safesysfree(i8* %2) #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %4 = bitcast %struct._PerlIO* %buf to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 24, i32 8, i1 false)
  %5 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %5, i64 0, i32 2
  %6 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %6, -393217
  store i32 %and, i32* %flags, align 4, !tbaa !0
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i8* @PerlIOBuf_get_ptr(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %3 = bitcast i32* %ptr to i8**
  %4 = load i8** %3, align 8, !tbaa !3
  ret i8* %4
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_get_cnt(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %.pre = load %struct._PerlIO** %f, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct._PerlIO* [ %0, %entry ], [ %.pre, %if.then ]
  %flags = getelementptr inbounds %struct._PerlIO* %3, i64 0, i32 2
  %4 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %4, 262144
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %end = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %5 = load %struct._PerlIO_funcs** %end, align 8
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %6 = bitcast i32* %ptr to i8**
  %7 = load i8** %6, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint %struct._PerlIO_funcs* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

return:                                           ; preds = %if.end, %if.then2
  %retval.0 = phi i64 [ %sub.ptr.sub, %if.then2 ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i8* @PerlIOBuf_get_base(%struct._PerlIO** nocapture %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %bufsiz = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 1
  %3 = bitcast %struct._PerlIO_funcs** %bufsiz to i64*
  %4 = load i64* %3, align 8, !tbaa !4
  %tobool1 = icmp eq i64 %4, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  store %struct._PerlIO_funcs* inttoptr (i64 4096 to %struct._PerlIO_funcs*), %struct._PerlIO_funcs** %bufsiz, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then2
  %5 = phi i64 [ %4, %if.then ], [ 4096, %if.then2 ]
  %call = tail call i8* @Perl_safesysmalloc(i64 %5) #9
  %6 = getelementptr inbounds %struct._PerlIO* %buf, i64 0, i32 0
  %call.c = bitcast i8* %call to %struct._PerlIO*
  store %struct._PerlIO* %call.c, %struct._PerlIO** %6, align 8, !tbaa !3
  %7 = load i64* %3, align 8, !tbaa !4
  tail call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %7, i32 1, i1 false)
  %8 = load i8** %1, align 8, !tbaa !3
  %tobool11 = icmp eq i8* %8, null
  br i1 %tobool11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %oneword = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 2
  %.c = bitcast i32* %oneword to %struct._PerlIO*
  store %struct._PerlIO* %.c, %struct._PerlIO** %6, align 8, !tbaa !3
  store %struct._PerlIO_funcs* inttoptr (i64 8 to %struct._PerlIO_funcs*), %struct._PerlIO_funcs** %bufsiz, align 8, !tbaa !4
  %9 = bitcast i32* %oneword to i8*
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then12
  %10 = phi i8* [ %8, %if.end ], [ %9, %if.then12 ]
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %11 = bitcast i32* %ptr to i8**
  store i8* %10, i8** %11, align 8, !tbaa !3
  %end = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %.c36 = bitcast i8* %10 to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %.c36, %struct._PerlIO_funcs** %end, align 8, !tbaa !3
  br label %if.end18

if.end18:                                         ; preds = %entry, %if.end15
  %12 = phi i8* [ %2, %entry ], [ %10, %if.end15 ]
  ret i8* %12
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOBuf_bufsiz(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %.pre = load i8** %1, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i8* [ %2, %entry ], [ %.pre, %if.then ]
  %end = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %4 = load %struct._PerlIO_funcs** %end, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct._PerlIO_funcs* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  ret i64 %sub.ptr.sub
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIOBuf_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i64 %cnt) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %ptr1 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %3 = bitcast i32* %ptr1 to i8**
  store i8* %ptr, i8** %3, align 8, !tbaa !3
  %call2 = tail call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %f) #10
  %4 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 2
  %5 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %5, 262144
  store i32 %or, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIOBuf_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #1 {
entry:
  %call = tail call %struct._PerlIO** @PerlIOBase_dup(%struct._PerlIO** %f, %struct._PerlIO** %o, %struct.clone_params* %param, i32 %flags) #10
  ret %struct._PerlIO** %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOPending_fill(%struct._PerlIO** %f) #1 {
entry:
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  ret i64 0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOPending_close(%struct._PerlIO** %f) #1 {
entry:
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %call1 = tail call i32 @Perl_PerlIO_close(%struct._PerlIO** %f) #10
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOPending_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #1 {
entry:
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  %call1 = tail call i32 @Perl_PerlIO_seek(%struct._PerlIO** %f, i64 %offset, i32 %whence) #10
  %conv = sext i32 %call1 to i64
  ret i64 %conv
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOPending_flush(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %oneword = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 2
  %3 = bitcast i32* %oneword to i8*
  %cmp = icmp eq i8* %2, %3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  tail call void @Perl_safesysfree(i8* %2) #9
  %4 = getelementptr inbounds %struct._PerlIO* %buf, i64 0, i32 0
  store %struct._PerlIO* null, %struct._PerlIO** %4, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  tail call void @PerlIO_pop(%struct._PerlIO** %f) #10
  ret i64 0
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIOPending_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i64 %cnt) #1 {
entry:
  %cmp = icmp slt i64 %cnt, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @PerlIOBuf_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i64 undef) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOPending_pushed(%struct._PerlIO** nocapture %f, i8* %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* nocapture %tab) #1 {
entry:
  %call = tail call i64 @PerlIOBase_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* undef, %struct._PerlIO_funcs* %tab) #10
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, -4227073
  %next = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 0
  %2 = load %struct._PerlIO** %next, align 8, !tbaa !3
  %flags1 = getelementptr inbounds %struct._PerlIO* %2, i64 0, i32 2
  %3 = load i32* %flags1, align 4, !tbaa !0
  %and2 = and i32 %3, 4227072
  %or = or i32 %and2, %and
  store i32 %or, i32* %flags, align 4, !tbaa !0
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOPending_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %call = tail call i32 @Perl_PerlIO_get_cnt(%struct._PerlIO** %f) #10
  %conv = sext i32 %call to i64
  %cmp = icmp sgt i64 %conv, %count
  %count.conv = select i1 %cmp, i64 %count, i64 %conv
  %cmp2 = icmp sgt i64 %count.conv, 0
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %entry
  %call5 = tail call i64 @PerlIOBuf_read(%struct._PerlIO** %f, i8* %vbuf, i64 %count.conv) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry
  %got.0 = phi i64 [ %call5, %if.then4 ], [ 0, %entry ]
  %cmp7 = icmp sgt i64 %got.0, -1
  %cmp9 = icmp slt i64 %got.0, %count
  %or.cond = and i1 %cmp7, %cmp9
  br i1 %or.cond, label %if.then11, label %if.end19

if.then11:                                        ; preds = %if.end6
  %add.ptr = getelementptr inbounds i8* %vbuf, i64 %got.0
  %sub = sub i64 %count, %got.0
  %call12 = tail call i64 @Perl_PerlIO_read(%struct._PerlIO** %f, i8* %add.ptr, i64 %sub) #10
  %cmp13 = icmp sgt i64 %call12, -1
  %cmp15 = icmp eq i64 %got.0, 0
  %or.cond35 = or i1 %cmp13, %cmp15
  %add = select i1 %or.cond35, i64 %call12, i64 0
  %add.got.0 = add nsw i64 %add, %got.0
  ret i64 %add.got.0

if.end19:                                         ; preds = %if.end6
  ret i64 %got.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOCrlf_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* nocapture %arg, %struct._PerlIO_funcs* nocapture %tab) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %1, 16384
  store i32 %or, i32* %flags, align 4, !tbaa !0
  %call = tail call i64 @PerlIOBuf_pushed(%struct._PerlIO** %f, i8* %mode, %struct.sv* undef, %struct._PerlIO_funcs* %tab) #10
  %.pn.pre = load %struct._PerlIO** %f, align 8
  br label %while.cond

while.cond:                                       ; preds = %land.lhs.true, %entry
  %.pn = phi %struct._PerlIO* [ %.pn.pre, %entry ], [ %2, %land.lhs.true ]
  %tobool = icmp eq %struct._PerlIO* %.pn, null
  br i1 %tobool, label %return, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %g.0 = getelementptr inbounds %struct._PerlIO* %.pn, i64 0, i32 0
  %2 = load %struct._PerlIO** %g.0, align 8, !tbaa !3
  %tobool1 = icmp eq %struct._PerlIO* %2, null
  br i1 %tobool1, label %return, label %land.lhs.true

land.lhs.true:                                    ; preds = %land.rhs
  %tab3 = getelementptr inbounds %struct._PerlIO* %2, i64 0, i32 1
  %3 = load %struct._PerlIO_funcs** %tab3, align 8, !tbaa !3
  %cmp = icmp eq %struct._PerlIO_funcs* %3, @PerlIO_crlf
  br i1 %cmp, label %if.then, label %while.cond

if.then:                                          ; preds = %land.lhs.true
  %flags4 = getelementptr inbounds %struct._PerlIO* %2, i64 0, i32 2
  %4 = load i32* %flags4, align 4, !tbaa !0
  %and = and i32 %4, 16384
  %tobool5 = icmp eq i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %or8 = or i32 %4, 16384
  store i32 %or8, i32* %flags4, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then6
  tail call void @PerlIO_pop(%struct._PerlIO** %f) #10
  br label %return

return:                                           ; preds = %land.rhs, %while.cond, %if.end
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOCrlf_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %nl = getelementptr inbounds %struct._PerlIO* %0, i64 3
  %1 = bitcast %struct._PerlIO* %nl to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 13, i8* %2, align 1, !tbaa !1
  %3 = getelementptr inbounds %struct._PerlIO* %nl, i64 0, i32 0
  store %struct._PerlIO* null, %struct._PerlIO** %3, align 8, !tbaa !3
  %.pre = load %struct._PerlIO** %f, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = phi %struct._PerlIO* [ %0, %entry ], [ %.pre, %if.then ]
  %flags = getelementptr inbounds %struct._PerlIO* %4, i64 0, i32 2
  %5 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %5, 16384
  %tobool3 = icmp eq i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call = tail call i64 @PerlIOBuf_unread(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #10
  br label %return

if.else:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8* %vbuf, i64 %count
  %and6 = and i32 %5, 131072
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.else
  %call9 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %buf11 = getelementptr inbounds %struct._PerlIO* %4, i64 1
  %6 = bitcast %struct._PerlIO* %buf11 to i8**
  %7 = load i8** %6, align 8, !tbaa !3
  %tobool12 = icmp eq i8* %7, null
  br i1 %tobool12, label %if.end15, label %if.then18

if.end15:                                         ; preds = %if.end10
  %call14 = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %.pr = load i8** %6, align 8, !tbaa !3
  %tobool17 = icmp eq i8* %.pr, null
  br i1 %tobool17, label %return, label %if.then18

if.then18:                                        ; preds = %if.end15, %if.end10
  %8 = phi i8* [ %7, %if.end10 ], [ %.pr, %if.end15 ]
  %9 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags19 = getelementptr inbounds %struct._PerlIO* %9, i64 0, i32 2
  %10 = load i32* %flags19, align 4, !tbaa !0
  %and20 = and i32 %10, 262144
  %tobool21 = icmp eq i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.then18.while.cond.preheader_crit_edge

if.then18.while.cond.preheader_crit_edge:         ; preds = %if.then18
  %ptr28.pre = getelementptr inbounds %struct._PerlIO* %4, i64 1, i32 2
  %.pre95 = bitcast i32* %ptr28.pre to i8**
  br label %while.cond.preheader

if.then22:                                        ; preds = %if.then18
  %bufsiz = getelementptr inbounds %struct._PerlIO* %4, i64 2, i32 1
  %11 = bitcast %struct._PerlIO_funcs** %bufsiz to i64*
  %12 = load i64* %11, align 8, !tbaa !4
  %add.ptr24 = getelementptr inbounds i8* %8, i64 %12
  %ptr = getelementptr inbounds %struct._PerlIO* %4, i64 1, i32 2
  %13 = bitcast i32* %ptr to i8**
  store i8* %add.ptr24, i8** %13, align 8, !tbaa !3
  %end = getelementptr inbounds %struct._PerlIO* %4, i64 1, i32 1
  %add.ptr24.c = bitcast i8* %add.ptr24 to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %add.ptr24.c, %struct._PerlIO_funcs** %end, align 8, !tbaa !3
  %14 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags25 = getelementptr inbounds %struct._PerlIO* %14, i64 0, i32 2
  %15 = load i32* %flags25, align 4, !tbaa !0
  %or = or i32 %15, 262144
  store i32 %or, i32* %flags25, align 4, !tbaa !0
  %posn = getelementptr inbounds %struct._PerlIO* %4, i64 2
  %16 = bitcast %struct._PerlIO* %posn to i64*
  %17 = load i64* %16, align 8, !tbaa !4
  %sub = sub i64 %17, %12
  %18 = getelementptr inbounds %struct._PerlIO* %posn, i64 0, i32 0
  %sub.c = inttoptr i64 %sub to %struct._PerlIO*
  store %struct._PerlIO* %sub.c, %struct._PerlIO** %18, align 8, !tbaa !4
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then18.while.cond.preheader_crit_edge, %if.then22
  %.pre-phi = phi i8** [ %.pre95, %if.then18.while.cond.preheader_crit_edge ], [ %13, %if.then22 ]
  %cmp89 = icmp eq i64 %count, 0
  br i1 %cmp89, label %return, label %land.rhs

land.rhs:                                         ; preds = %while.cond.preheader, %while.cond.backedge.land.rhs_crit_edge
  %19 = phi i8* [ %.pre94, %while.cond.backedge.land.rhs_crit_edge ], [ %8, %while.cond.preheader ]
  %unread.092 = phi i64 [ %unread.0.be, %while.cond.backedge.land.rhs_crit_edge ], [ 0, %while.cond.preheader ]
  %count.addr.091 = phi i64 [ %count.addr.0.be, %while.cond.backedge.land.rhs_crit_edge ], [ %count, %while.cond.preheader ]
  %buf.090 = phi i8* [ %incdec.ptr, %while.cond.backedge.land.rhs_crit_edge ], [ %add.ptr, %while.cond.preheader ]
  %20 = load i8** %.pre-phi, align 8, !tbaa !3
  %cmp30 = icmp ugt i8* %20, %19
  br i1 %cmp30, label %while.body, label %return

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8* %buf.090, i64 -1
  %21 = load i8* %incdec.ptr, align 1, !tbaa !1
  %cmp31 = icmp eq i8 %21, 10
  br i1 %cmp31, label %if.then33, label %if.else47

if.then33:                                        ; preds = %while.body
  %add.ptr35 = getelementptr inbounds i8* %20, i64 -2
  %cmp37 = icmp ult i8* %add.ptr35, %19
  br i1 %cmp37, label %return, label %if.then39

if.then39:                                        ; preds = %if.then33
  %incdec.ptr41 = getelementptr inbounds i8* %20, i64 -1
  store i8* %incdec.ptr41, i8** %.pre-phi, align 8, !tbaa !3
  store i8 10, i8* %incdec.ptr41, align 1, !tbaa !1
  %22 = load i8** %.pre-phi, align 8, !tbaa !3
  %incdec.ptr43 = getelementptr inbounds i8* %22, i64 -1
  store i8* %incdec.ptr43, i8** %.pre-phi, align 8, !tbaa !3
  store i8 13, i8* %incdec.ptr43, align 1, !tbaa !1
  br label %while.cond.backedge

if.else47:                                        ; preds = %while.body
  %incdec.ptr50 = getelementptr inbounds i8* %20, i64 -1
  store i8* %incdec.ptr50, i8** %.pre-phi, align 8, !tbaa !3
  store i8 %21, i8* %incdec.ptr50, align 1, !tbaa !1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else47, %if.then39
  %unread.0.be = add nsw i64 %unread.092, 1
  %count.addr.0.be = add i64 %count.addr.091, -1
  %cmp = icmp eq i64 %count.addr.0.be, 0
  br i1 %cmp, label %return, label %while.cond.backedge.land.rhs_crit_edge

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  %.pre94 = load i8** %6, align 8, !tbaa !3
  br label %land.rhs

return:                                           ; preds = %while.cond.preheader, %land.rhs, %if.then33, %while.cond.backedge, %if.end15, %if.then4
  %retval.0 = phi i64 [ %call, %if.then4 ], [ 0, %if.end15 ], [ 0, %while.cond.preheader ], [ %unread.092, %land.rhs ], [ %unread.092, %if.then33 ], [ %unread.0.be, %while.cond.backedge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOCrlf_get_cnt(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %.pre = load %struct._PerlIO** %f, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct._PerlIO* [ %0, %entry ], [ %.pre, %if.then ]
  %flags = getelementptr inbounds %struct._PerlIO* %3, i64 0, i32 2
  %4 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %4, 262144
  %tobool1 = icmp eq i32 %and, 0
  br i1 %tobool1, label %return, label %if.then2

if.then2:                                         ; preds = %if.end
  %and4 = and i32 %4, 16384
  %tobool5 = icmp eq i32 %and4, 0
  %nl64.pre = getelementptr inbounds %struct._PerlIO* %3, i64 3
  %.pre130 = bitcast %struct._PerlIO* %nl64.pre to i8**
  br i1 %tobool5, label %if.end63, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then2
  %5 = load i8** %.pre130, align 8, !tbaa !3
  %tobool6 = icmp eq i8* %5, null
  br i1 %tobool6, label %cond.false, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i8* %5, align 1, !tbaa !1
  %cmp = icmp eq i8 %6, 13
  br i1 %cmp, label %if.then9.while.cond.preheader_crit_edge, label %if.end63

if.then9.while.cond.preheader_crit_edge:          ; preds = %lor.lhs.false
  %ptr39.pre = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %.pre131 = bitcast i32* %ptr39.pre to i8**
  br label %while.cond.preheader

cond.false:                                       ; preds = %land.lhs.true
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %7 = bitcast i32* %ptr to i8**
  %8 = load i8** %7, align 8, !tbaa !3
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then9.while.cond.preheader_crit_edge, %cond.false
  %.pre-phi132 = phi i8** [ %.pre131, %if.then9.while.cond.preheader_crit_edge ], [ %7, %cond.false ]
  %nl10.0.ph = phi i8* [ %5, %if.then9.while.cond.preheader_crit_edge ], [ %8, %cond.false ]
  %end = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %9 = getelementptr inbounds %struct._PerlIO* %buf, i64 0, i32 0
  %bufsiz = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 1
  %10 = bitcast %struct._PerlIO_funcs** %bufsiz to i64*
  %.pre128 = load %struct._PerlIO_funcs** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.then30, %while.body, %while.cond.preheader
  %11 = phi %struct._PerlIO_funcs* [ %.pre128, %while.cond.preheader ], [ %11, %while.body ], [ %15, %if.then30 ]
  %nl10.0 = phi i8* [ %nl10.0.ph, %while.cond.preheader ], [ %incdec.ptr, %while.body ], [ %add.ptr, %if.then30 ]
  %12 = bitcast %struct._PerlIO_funcs* %11 to i8*
  %cmp14 = icmp ult i8* %nl10.0, %12
  br i1 %cmp14, label %land.rhs, label %if.end63

land.rhs:                                         ; preds = %while.cond
  %13 = load i8* %nl10.0, align 1, !tbaa !1
  %cmp17 = icmp eq i8 %13, 13
  br i1 %cmp17, label %land.lhs.true22, label %while.body

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8* %nl10.0, i64 1
  br label %while.cond

land.lhs.true22:                                  ; preds = %land.rhs
  %14 = load i8* %nl10.0, align 1, !tbaa !1
  %cmp24 = icmp eq i8 %14, 13
  br i1 %cmp24, label %test, label %if.end63

test:                                             ; preds = %land.lhs.true22, %if.else45.test_crit_edge
  %15 = phi %struct._PerlIO_funcs* [ %.pre129, %if.else45.test_crit_edge ], [ %11, %land.lhs.true22 ]
  %nl10.1 = phi i8* [ %incdec.ptr53, %if.else45.test_crit_edge ], [ %nl10.0, %land.lhs.true22 ]
  %add.ptr = getelementptr inbounds i8* %nl10.1, i64 1
  %16 = bitcast %struct._PerlIO_funcs* %15 to i8*
  %cmp28 = icmp ult i8* %add.ptr, %16
  br i1 %cmp28, label %if.then30, label %if.else38

if.then30:                                        ; preds = %test
  %17 = load i8* %add.ptr, align 1, !tbaa !1
  %cmp32 = icmp eq i8 %17, 10
  br i1 %cmp32, label %if.then34, label %while.cond

if.then34:                                        ; preds = %if.then30
  store i8 10, i8* %nl10.1, align 1, !tbaa !1
  %18 = getelementptr inbounds %struct._PerlIO* %nl64.pre, i64 0, i32 0
  %nl10.1.c116 = bitcast i8* %nl10.1 to %struct._PerlIO*
  store %struct._PerlIO* %nl10.1.c116, %struct._PerlIO** %18, align 8, !tbaa !3
  br label %if.end63

if.else38:                                        ; preds = %test
  %19 = load i8** %.pre-phi132, align 8, !tbaa !3
  %cmp40 = icmp ult i8* %19, %nl10.1
  br i1 %cmp40, label %if.then42, label %if.else45

if.then42:                                        ; preds = %if.else38
  %20 = getelementptr inbounds %struct._PerlIO* %nl64.pre, i64 0, i32 0
  %nl10.1.c = bitcast i8* %nl10.1 to %struct._PerlIO*
  store %struct._PerlIO* %nl10.1.c, %struct._PerlIO** %20, align 8, !tbaa !3
  %21 = load i8** %.pre-phi132, align 8, !tbaa !3
  %sub.ptr.lhs.cast = ptrtoint i8* %nl10.1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

if.else45:                                        ; preds = %if.else38
  %incdec.ptr47 = getelementptr inbounds i8* %19, i64 1
  store i8* %incdec.ptr47, i8** %.pre-phi132, align 8, !tbaa !3
  %22 = load i8** %1, align 8, !tbaa !3
  %incdec.ptr49 = getelementptr inbounds i8* %22, i64 1
  %incdec.ptr49.c = bitcast i8* %incdec.ptr49 to %struct._PerlIO*
  store %struct._PerlIO* %incdec.ptr49.c, %struct._PerlIO** %9, align 8, !tbaa !3
  %23 = load i64* %10, align 8, !tbaa !4
  %dec = add i64 %23, -1
  %dec.c = inttoptr i64 %dec to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %dec.c, %struct._PerlIO_funcs** %bufsiz, align 8, !tbaa !4
  %call50 = tail call i32 @Perl_PerlIO_fill(%struct._PerlIO** %f) #10
  %24 = load i64* %10, align 8, !tbaa !4
  %inc = add i64 %24, 1
  %inc.c = inttoptr i64 %inc to %struct._PerlIO_funcs*
  store %struct._PerlIO_funcs* %inc.c, %struct._PerlIO_funcs** %bufsiz, align 8, !tbaa !4
  %25 = load i8** %1, align 8, !tbaa !3
  %incdec.ptr53 = getelementptr inbounds i8* %25, i64 -1
  %incdec.ptr53.c = bitcast i8* %incdec.ptr53 to %struct._PerlIO*
  store %struct._PerlIO* %incdec.ptr53.c, %struct._PerlIO** %9, align 8, !tbaa !3
  store i8* %incdec.ptr53, i8** %.pre-phi132, align 8, !tbaa !3
  store i8 13, i8* %incdec.ptr53, align 1, !tbaa !1
  %cmp56 = icmp eq i32 %call50, 0
  br i1 %cmp56, label %if.else45.test_crit_edge, label %if.end63

if.else45.test_crit_edge:                         ; preds = %if.else45
  %.pre129 = load %struct._PerlIO_funcs** %end, align 8
  br label %test

if.end63:                                         ; preds = %if.then2, %while.cond, %land.lhs.true22, %if.else45, %if.then34, %lor.lhs.false
  %26 = load i8** %.pre130, align 8, !tbaa !3
  %tobool65 = icmp eq i8* %26, null
  br i1 %tobool65, label %cond.false69, label %cond.true66

cond.true66:                                      ; preds = %if.end63
  %add.ptr68 = getelementptr inbounds i8* %26, i64 1
  br label %cond.end71

cond.false69:                                     ; preds = %if.end63
  %end70 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %27 = load %struct._PerlIO_funcs** %end70, align 8
  %28 = bitcast %struct._PerlIO_funcs* %27 to i8*
  br label %cond.end71

cond.end71:                                       ; preds = %cond.false69, %cond.true66
  %cond72 = phi i8* [ %add.ptr68, %cond.true66 ], [ %28, %cond.false69 ]
  %ptr73 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %29 = bitcast i32* %ptr73 to i8**
  %30 = load i8** %29, align 8, !tbaa !3
  %sub.ptr.lhs.cast74 = ptrtoint i8* %cond72 to i64
  %sub.ptr.rhs.cast75 = ptrtoint i8* %30 to i64
  %sub.ptr.sub76 = sub i64 %sub.ptr.lhs.cast74, %sub.ptr.rhs.cast75
  br label %return

return:                                           ; preds = %if.end, %cond.end71, %if.then42
  %retval.0 = phi i64 [ %sub.ptr.sub76, %cond.end71 ], [ %sub.ptr.sub, %if.then42 ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIOCrlf_set_ptrcnt(%struct._PerlIO** %f, i8* %ptr, i64 %cnt) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %buf = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %1 = bitcast %struct._PerlIO* %buf to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %tobool1 = icmp eq i8* %ptr, null
  %nl = getelementptr inbounds %struct._PerlIO* %0, i64 3
  %3 = bitcast %struct._PerlIO* %nl to i8**
  %4 = load i8** %3, align 8, !tbaa !3
  br i1 %tobool1, label %if.then2, label %if.end15

if.then2:                                         ; preds = %if.end
  %tobool3 = icmp eq i8* %4, null
  br i1 %tobool3, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.then2
  %add.ptr = getelementptr inbounds i8* %4, i64 1
  %end = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %5 = load %struct._PerlIO_funcs** %end, align 8
  %6 = bitcast %struct._PerlIO_funcs* %5 to i8*
  %cmp = icmp eq i8* %add.ptr, %6
  br i1 %cmp, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.then4
  %7 = load i8* %4, align 1, !tbaa !1
  %cmp7 = icmp eq i8 %7, 13
  %.add.ptr = select i1 %cmp7, i8* %4, i8* %add.ptr
  br label %if.end12

if.else:                                          ; preds = %if.then2
  %end11 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 1
  %8 = load %struct._PerlIO_funcs** %end11, align 8
  %9 = bitcast %struct._PerlIO_funcs* %8 to i8*
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true, %if.then4, %if.else
  %ptr.addr.0 = phi i8* [ %add.ptr, %if.then4 ], [ %9, %if.else ], [ %.add.ptr, %land.lhs.true ]
  %idx.neg = sub i64 0, %cnt
  %add.ptr13 = getelementptr inbounds i8* %ptr.addr.0, i64 %idx.neg
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.end12
  %ptr.addr.1 = phi i8* [ %add.ptr13, %if.end12 ], [ %ptr, %if.end ]
  %tobool17 = icmp ne i8* %4, null
  %cmp20 = icmp ugt i8* %ptr.addr.1, %4
  %or.cond = and i1 %tobool17, %cmp20
  br i1 %or.cond, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end15
  store i8 13, i8* %4, align 1, !tbaa !1
  %10 = getelementptr inbounds %struct._PerlIO* %0, i64 3, i32 0
  store %struct._PerlIO* null, %struct._PerlIO** %10, align 8, !tbaa !3
  %incdec.ptr25 = getelementptr inbounds i8* %ptr.addr.1, i64 1
  br label %if.end27

if.end27:                                         ; preds = %if.end15, %if.then22
  %ptr.addr.2 = phi i8* [ %incdec.ptr25, %if.then22 ], [ %ptr.addr.1, %if.end15 ]
  %ptr28 = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %11 = bitcast i32* %ptr28 to i8**
  store i8* %ptr.addr.2, i8** %11, align 8, !tbaa !3
  %12 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %12, i64 0, i32 2
  %13 = load i32* %flags, align 4, !tbaa !0
  %or = or i32 %13, 262144
  store i32 %or, i32* %flags, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOCrlf_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call i64 @PerlIOBuf_write(%struct._PerlIO** %f, i8* %vbuf, i64 %count) #10
  br label %return

if.else:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8* %vbuf, i64 %count
  %buf1 = getelementptr inbounds %struct._PerlIO* %0, i64 1
  %2 = bitcast %struct._PerlIO* %buf1 to i8**
  %3 = load i8** %2, align 8, !tbaa !3
  %tobool2 = icmp eq i8* %3, null
  br i1 %tobool2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %call4 = tail call i8* @Perl_PerlIO_get_base(%struct._PerlIO** %f) #10
  %.pre = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags5.phi.trans.insert = getelementptr inbounds %struct._PerlIO* %.pre, i64 0, i32 2
  %.pre96 = load i32* %flags5.phi.trans.insert, align 4, !tbaa !0
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %4 = phi i32 [ %1, %if.else ], [ %.pre96, %if.then3 ]
  %5 = phi %struct._PerlIO* [ %0, %if.else ], [ %.pre, %if.then3 ]
  %and6 = and i32 %4, 512
  %tobool7 = icmp eq i32 %and6, 0
  br i1 %tobool7, label %return, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end
  %cmp91 = icmp sgt i64 %count, 0
  br i1 %cmp91, label %while.body.lr.ph, label %while.end51

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %bufsiz = getelementptr inbounds %struct._PerlIO* %0, i64 2, i32 1
  %6 = bitcast %struct._PerlIO_funcs** %bufsiz to i64*
  %ptr = getelementptr inbounds %struct._PerlIO* %0, i64 1, i32 2
  %7 = bitcast i32* %ptr to i8**
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge, %while.body.lr.ph
  %8 = phi i32 [ %4, %while.body.lr.ph ], [ %.pre100, %while.cond.backedge ]
  %9 = phi %struct._PerlIO* [ %5, %while.body.lr.ph ], [ %.pre99, %while.cond.backedge ]
  %buf.092 = phi i8* [ %vbuf, %while.body.lr.ph ], [ %buf.0.be, %while.cond.backedge ]
  %10 = load i8** %2, align 8, !tbaa !3
  %11 = load i64* %6, align 8, !tbaa !4
  %add.ptr11 = getelementptr inbounds i8* %10, i64 %11
  %flags12 = getelementptr inbounds %struct._PerlIO* %9, i64 0, i32 2
  %or = or i32 %8, 131072
  store i32 %or, i32* %flags12, align 4, !tbaa !0
  br label %while.cond13

while.cond13:                                     ; preds = %if.end44, %while.body
  %buf.1 = phi i8* [ %buf.092, %while.body ], [ %buf.2, %if.end44 ]
  %cmp14 = icmp ult i8* %buf.1, %add.ptr
  br i1 %cmp14, label %land.rhs, label %while.cond.backedge

land.rhs:                                         ; preds = %while.cond13
  %12 = load i8** %7, align 8, !tbaa !3
  %cmp15 = icmp ult i8* %12, %add.ptr11
  br i1 %cmp15, label %while.body16, label %while.cond.backedge

while.body16:                                     ; preds = %land.rhs
  %13 = load i8* %buf.1, align 1, !tbaa !1
  %cmp17 = icmp eq i8 %13, 10
  br i1 %cmp17, label %if.then19, label %if.else38

if.then19:                                        ; preds = %while.body16
  %add.ptr21 = getelementptr inbounds i8* %12, i64 2
  %cmp22 = icmp ugt i8* %add.ptr21, %add.ptr11
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.then19
  %call25 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %while.cond.backedge

if.else26:                                        ; preds = %if.then19
  %incdec.ptr = getelementptr inbounds i8* %12, i64 1
  store i8* %incdec.ptr, i8** %7, align 8, !tbaa !3
  store i8 13, i8* %12, align 1, !tbaa !1
  %14 = load i8** %7, align 8, !tbaa !3
  %incdec.ptr29 = getelementptr inbounds i8* %14, i64 1
  store i8* %incdec.ptr29, i8** %7, align 8, !tbaa !3
  store i8 10, i8* %14, align 1, !tbaa !1
  %incdec.ptr30 = getelementptr inbounds i8* %buf.1, i64 1
  %15 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags31 = getelementptr inbounds %struct._PerlIO* %15, i64 0, i32 2
  %16 = load i32* %flags31, align 4, !tbaa !0
  %and32 = and i32 %16, 524288
  %tobool33 = icmp eq i32 %and32, 0
  br i1 %tobool33, label %if.end44, label %if.then34

if.then34:                                        ; preds = %if.else26
  %call35 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %while.cond.backedge

if.else38:                                        ; preds = %while.body16
  %incdec.ptr39 = getelementptr inbounds i8* %buf.1, i64 1
  %incdec.ptr43 = getelementptr inbounds i8* %12, i64 1
  store i8* %incdec.ptr43, i8** %7, align 8, !tbaa !3
  store i8 %13, i8* %12, align 1, !tbaa !1
  br label %if.end44

if.end44:                                         ; preds = %if.else26, %if.else38
  %buf.2 = phi i8* [ %incdec.ptr30, %if.else26 ], [ %incdec.ptr39, %if.else38 ]
  %17 = load i8** %7, align 8, !tbaa !3
  %cmp46 = icmp ult i8* %17, %add.ptr11
  br i1 %cmp46, label %while.cond13, label %if.then48

if.then48:                                        ; preds = %if.end44
  %call49 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %land.rhs, %while.cond13, %if.then48, %if.then34, %if.then24
  %buf.0.be = phi i8* [ %buf.1, %if.then24 ], [ %incdec.ptr30, %if.then34 ], [ %buf.2, %if.then48 ], [ %buf.1, %while.cond13 ], [ %buf.1, %land.rhs ]
  %cmp = icmp ult i8* %buf.0.be, %add.ptr
  %.pre99 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags12.phi.trans.insert = getelementptr inbounds %struct._PerlIO* %.pre99, i64 0, i32 2
  %.pre100 = load i32* %flags12.phi.trans.insert, align 4, !tbaa !0
  br i1 %cmp, label %while.body, label %while.end51

while.end51:                                      ; preds = %while.cond.backedge, %while.cond.preheader
  %18 = phi i32 [ %4, %while.cond.preheader ], [ %.pre100, %while.cond.backedge ]
  %buf.0.lcssa = phi i8* [ %vbuf, %while.cond.preheader ], [ %buf.0.be, %while.cond.backedge ]
  %and53 = and i32 %18, 65536
  %tobool54 = icmp eq i32 %and53, 0
  br i1 %tobool54, label %if.end57, label %if.then55

if.then55:                                        ; preds = %while.end51
  %call56 = tail call i32 @Perl_PerlIO_flush(%struct._PerlIO** %f) #10
  br label %if.end57

if.end57:                                         ; preds = %while.end51, %if.then55
  %sub.ptr.lhs.cast = ptrtoint i8* %buf.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %vbuf to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %return

return:                                           ; preds = %if.end, %if.end57, %if.then
  %retval.0 = phi i64 [ %sub.ptr.sub, %if.end57 ], [ %call, %if.then ], [ 0, %if.end ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOCrlf_flush(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %nl = getelementptr inbounds %struct._PerlIO* %0, i64 3
  %1 = bitcast %struct._PerlIO* %nl to i8**
  %2 = load i8** %1, align 8, !tbaa !3
  %tobool = icmp eq i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 13, i8* %2, align 1, !tbaa !1
  %3 = getelementptr inbounds %struct._PerlIO* %nl, i64 0, i32 0
  store %struct._PerlIO* null, %struct._PerlIO** %3, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call = tail call i64 @PerlIOBuf_flush(%struct._PerlIO** %f) #10
  ret i64 %call
}

; Function Attrs: nounwind optsize uwtable
define i64 @PerlIOCrlf_binmode(%struct._PerlIO** %f) #1 {
entry:
  %0 = load %struct._PerlIO** %f, align 8, !tbaa !3
  %flags = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 2
  %1 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %1, 16384
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %1, -16385
  store i32 %and2, i32* %flags, align 4, !tbaa !0
  %tab = getelementptr inbounds %struct._PerlIO* %0, i64 0, i32 1
  %2 = load %struct._PerlIO_funcs** %tab, align 8, !tbaa !3
  %cmp = icmp eq %struct._PerlIO_funcs* %2, @PerlIO_crlf
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  tail call void @PerlIO_pop(%struct._PerlIO** %f) #10
  br label %if.end4

if.end4:                                          ; preds = %entry, %if.then, %if.then3
  ret i64 0
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @Perl_PerlIO_stdin() #1 {
entry:
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @PerlIO_stdstreams() #10
  %.pre = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct._PerlIO** [ %0, %entry ], [ %.pre, %if.then ]
  %arrayidx = getelementptr inbounds %struct._PerlIO** %1, i64 1
  ret %struct._PerlIO** %arrayidx
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @Perl_PerlIO_stdout() #1 {
entry:
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @PerlIO_stdstreams() #10
  %.pre = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct._PerlIO** [ %0, %entry ], [ %.pre, %if.then ]
  %arrayidx = getelementptr inbounds %struct._PerlIO** %1, i64 2
  ret %struct._PerlIO** %arrayidx
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @Perl_PerlIO_stderr() #1 {
entry:
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @PerlIO_stdstreams() #10
  %.pre = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct._PerlIO** [ %0, %entry ], [ %.pre, %if.then ]
  %arrayidx = getelementptr inbounds %struct._PerlIO** %1, i64 3
  ret %struct._PerlIO** %arrayidx
}

; Function Attrs: nounwind optsize uwtable
define noalias i8* @PerlIO_getname(%struct._PerlIO** nocapture %f, i8* nocapture %buf) #1 {
entry:
  tail call void (i8*, ...)* @Perl_croak(i8* getelementptr inbounds ([32 x i8]* @.str45, i64 0, i64 0)) #9
  ret i8* null
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_open(i8* %path, i8* %mode) #1 {
entry:
  %name = alloca %struct.sv*, align 8
  %call = call i64 @strlen(i8* %path) #9
  %call1 = call %struct.sv* @Perl_newSVpvn(i8* %path, i64 %call) #9
  %call2 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1) #9
  store %struct.sv* %call2, %struct.sv** %name, align 8, !tbaa !3
  %call3 = call %struct._PerlIO** @PerlIO_openn(i8* null, i8* %mode, i32 -1, i32 0, i32 0, %struct._PerlIO** null, i32 1, %struct.sv** %name) #10
  ret %struct._PerlIO** %call3
}

; Function Attrs: nounwind optsize uwtable
define %struct._PerlIO** @PerlIO_reopen(i8* %path, i8* %mode, %struct._PerlIO** %f) #1 {
entry:
  %name = alloca %struct.sv*, align 8
  %call = call i64 @strlen(i8* %path) #9
  %call1 = call %struct.sv* @Perl_newSVpvn(i8* %path, i64 %call) #9
  %call2 = call %struct.sv* @Perl_sv_2mortal(%struct.sv* %call1) #9
  store %struct.sv* %call2, %struct.sv** %name, align 8, !tbaa !3
  %call3 = call %struct._PerlIO** @PerlIO_openn(i8* null, i8* %mode, i32 -1, i32 0, i32 0, %struct._PerlIO** %f, i32 1, %struct.sv** %name) #10
  ret %struct._PerlIO** %call3
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_getc(%struct._PerlIO** %f) #1 {
entry:
  %buf = alloca [1 x i8], align 1
  %arraydecay = getelementptr inbounds [1 x i8]* %buf, i64 0, i64 0
  %call = call i64 @Perl_PerlIO_read(%struct._PerlIO** %f, i8* %arraydecay, i64 1) #10
  %cmp = icmp eq i64 %call, 1
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %0 = load i8* %arraydecay, align 1, !tbaa !1
  %conv = zext i8 %0 to i32
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i32 [ %conv, %if.then ], [ -1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_ungetc(%struct._PerlIO** %f, i32 %ch) #1 {
entry:
  %buf = alloca i8, align 1
  %cmp = icmp eq i32 %ch, -1
  br i1 %cmp, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %conv = trunc i32 %ch to i8
  store i8 %conv, i8* %buf, align 1, !tbaa !1
  %call = call i64 @Perl_PerlIO_unread(%struct._PerlIO** %f, i8* %buf, i64 1) #10
  %cmp1 = icmp eq i64 %call, 1
  br i1 %cmp1, label %return, label %if.end4

if.end4:                                          ; preds = %entry, %if.then
  br label %return

return:                                           ; preds = %if.then, %if.end4
  %retval.0 = phi i32 [ -1, %if.end4 ], [ %ch, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_putc(%struct._PerlIO** %f, i32 %ch) #1 {
entry:
  %buf = alloca i8, align 1
  %conv = trunc i32 %ch to i8
  store i8 %conv, i8* %buf, align 1, !tbaa !1
  %call = call i64 @Perl_PerlIO_write(%struct._PerlIO** %f, i8* %buf, i64 1) #10
  %conv1 = trunc i64 %call to i32
  ret i32 %conv1
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_puts(%struct._PerlIO** %f, i8* %s) #1 {
entry:
  %call = tail call i64 @strlen(i8* %s) #9
  %call1 = tail call i64 @Perl_PerlIO_write(%struct._PerlIO** %f, i8* %s, i64 %call) #10
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind optsize uwtable
define void @PerlIO_rewind(%struct._PerlIO** %f) #1 {
entry:
  %call = tail call i32 @Perl_PerlIO_seek(%struct._PerlIO** %f, i64 0, i32 0) #10
  tail call void @Perl_PerlIO_clearerr(%struct._PerlIO** %f) #10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_vprintf(%struct._PerlIO** %f, i8* %fmt, %struct.__va_list_tag* %ap) #1 {
entry:
  %len = alloca i64, align 8
  %apc = alloca [1 x %struct.__va_list_tag], align 16
  %call = call %struct.sv* @Perl_newSVpvn(i8* getelementptr inbounds ([1 x i8]* @.str46, i64 0, i64 0), i64 0) #9
  %0 = bitcast [1 x %struct.__va_list_tag]* %apc to i8*
  %1 = bitcast %struct.__va_list_tag* %ap to i8*
  call void @llvm.va_copy(i8* %0, i8* %1)
  call void @Perl_sv_vcatpvf(%struct.sv* %call, i8* %fmt, [1 x %struct.__va_list_tag]* %apc) #9
  %sv_flags = getelementptr inbounds %struct.sv* %call, i64 0, i32 2
  %2 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %2, 262144
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %sv_any = getelementptr inbounds %struct.sv* %call, i64 0, i32 0
  %3 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %3, i64 8
  %4 = bitcast i8* %xpv_cur to i64*
  %5 = load i64* %4, align 8, !tbaa !4
  store i64 %5, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %3 to i8**
  %6 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call2 = call i8* @Perl_sv_2pv_flags(%struct.sv* %call, i64* %len, i32 2) #9
  %.pre = load i64* %len, align 8, !tbaa !4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %7 = phi i64 [ %5, %cond.true ], [ %.pre, %cond.false ]
  %cond = phi i8* [ %6, %cond.true ], [ %call2, %cond.false ]
  %call3 = call i64 @Perl_PerlIO_write(%struct._PerlIO** %f, i8* %cond, i64 %7) #10
  call void @Perl_sv_free(%struct.sv* %call) #9
  %conv = trunc i64 %call3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare void @llvm.va_copy(i8*, i8*) #2

; Function Attrs: optsize
declare void @Perl_sv_vcatpvf(%struct.sv*, i8*, [1 x %struct.__va_list_tag]*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_printf(%struct._PerlIO** %f, i8* %fmt, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call i32 @PerlIO_vprintf(%struct._PerlIO** %f, i8* %fmt, %struct.__va_list_tag* %arraydecay) #10
  call void @llvm.va_end(i8* %arraydecay1)
  ret i32 %call
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_stdoutf(i8* %fmt, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool.i = icmp eq %struct._PerlIO** %0, null
  br i1 %tobool.i, label %if.then.i, label %Perl_PerlIO_stdout.exit

if.then.i:                                        ; preds = %entry
  call void @PerlIO_stdstreams() #9
  %.pre.i = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  br label %Perl_PerlIO_stdout.exit

Perl_PerlIO_stdout.exit:                          ; preds = %entry, %if.then.i
  %1 = phi %struct._PerlIO** [ %0, %entry ], [ %.pre.i, %if.then.i ]
  %arrayidx.i = getelementptr inbounds %struct._PerlIO** %1, i64 2
  %call3 = call i32 @PerlIO_vprintf(%struct._PerlIO** %arrayidx.i, i8* %fmt, %struct.__va_list_tag* %arraydecay) #10
  call void @llvm.va_end(i8* %arraydecay1)
  ret i32 %call3
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @tmpfile() #6

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_setpos(%struct._PerlIO** %f, %struct.sv* %pos) #1 {
entry:
  %len = alloca i64, align 8
  %sv_flags = getelementptr inbounds %struct.sv* %pos, i64 0, i32 2
  %0 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %0, 118423552
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %and2 = and i32 %0, 262144
  %cmp = icmp eq i32 %and2, 0
  br i1 %cmp, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then
  %sv_any = getelementptr inbounds %struct.sv* %pos, i64 0, i32 0
  %1 = load i8** %sv_any, align 8, !tbaa !3
  %xpv_cur = getelementptr inbounds i8* %1, i64 8
  %2 = bitcast i8* %xpv_cur to i64*
  %3 = load i64* %2, align 8, !tbaa !4
  store i64 %3, i64* %len, align 8, !tbaa !4
  %xpv_pv = bitcast i8* %1 to i8**
  %4 = load i8** %xpv_pv, align 8, !tbaa !3
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %call = call i8* @Perl_sv_2pv_flags(%struct.sv* %pos, i64* %len, i32 2) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ %call, %cond.false ]
  %5 = bitcast i8* %cond to i64*
  %tobool4 = icmp eq %struct._PerlIO** %f, null
  br i1 %tobool4, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %6 = load i64* %len, align 8, !tbaa !4
  %cmp5 = icmp eq i64 %6, 8
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %7 = load i64* %5, align 8, !tbaa !4
  %call7 = call i32 @Perl_PerlIO_seek(%struct._PerlIO** %f, i64 %7, i32 0) #10
  br label %return

if.end8:                                          ; preds = %cond.end, %entry, %land.lhs.true
  %call9 = call i32* @__errno_location() #9
  store i32 22, i32* %call9, align 4, !tbaa !0
  br label %return

return:                                           ; preds = %if.end8, %if.then6
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ -1, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_getpos(%struct._PerlIO** %f, %struct.sv* %pos) #1 {
entry:
  %posn = alloca i64, align 8
  %call = call i64 @Perl_PerlIO_tell(%struct._PerlIO** %f) #10
  store i64 %call, i64* %posn, align 8, !tbaa !4
  %0 = bitcast i64* %posn to i8*
  call void @Perl_sv_setpvn(%struct.sv* %pos, i8* %0, i64 8) #9
  %1 = load i64* %posn, align 8, !tbaa !4
  %cmp = icmp eq i64 %1, -1
  %cond = sext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: optsize
declare void @Perl_sv_setpvn(%struct.sv*, i8*, i64) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_vsprintf(i8* nocapture %s, i32 %n, i8* nocapture %fmt, %struct.__va_list_tag* %ap) #1 {
entry:
  %call = tail call i32 @vsprintf(i8* %s, i8* %fmt, %struct.__va_list_tag* %ap) #9
  %cmp = icmp sgt i32 %n, -1
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %call1 = tail call i64 @strlen(i8* %s) #9
  %conv = sext i32 %n to i64
  %cmp2 = icmp ult i64 %call1, %conv
  br i1 %cmp2, label %if.end22, label %if.then4

if.then4:                                         ; preds = %if.then
  %0 = load %struct.gv** @PL_stderrgv, align 8, !tbaa !3
  %tobool = icmp eq %struct.gv* %0, null
  br i1 %tobool, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then4
  %sv_flags = getelementptr inbounds %struct.gv* %0, i64 0, i32 2
  %1 = load i32* %sv_flags, align 4, !tbaa !0
  %and = and i32 %1, 255
  %cmp5 = icmp eq i32 %and, 13
  br i1 %cmp5, label %land.lhs.true7, label %cond.false

land.lhs.true7:                                   ; preds = %land.lhs.true
  %sv_any = getelementptr inbounds %struct.gv* %0, i64 0, i32 0
  %2 = load %struct.xpvgv** %sv_any, align 8, !tbaa !3
  %xgv_gp = getelementptr inbounds %struct.xpvgv* %2, i64 0, i32 7
  %3 = load %struct.gp** %xgv_gp, align 8, !tbaa !3
  %gp_io = getelementptr inbounds %struct.gp* %3, i64 0, i32 2
  %4 = load %struct.io** %gp_io, align 8, !tbaa !3
  %tobool8 = icmp eq %struct.io* %4, null
  br i1 %tobool8, label %cond.false, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %sv_any13 = getelementptr inbounds %struct.io* %4, i64 0, i32 0
  %5 = load %struct.xpvio** %sv_any13, align 8, !tbaa !3
  %xio_ofp = getelementptr inbounds %struct.xpvio* %5, i64 0, i32 8
  %6 = load %struct._PerlIO*** %xio_ofp, align 8, !tbaa !3
  %tobool14 = icmp eq %struct._PerlIO** %6, null
  br i1 %tobool14, label %cond.false, label %cond.end

cond.false:                                       ; preds = %land.lhs.true9, %land.lhs.true7, %if.then4, %land.lhs.true
  %7 = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  %tobool.i = icmp eq %struct._PerlIO** %7, null
  br i1 %tobool.i, label %if.then.i, label %Perl_PerlIO_stderr.exit

if.then.i:                                        ; preds = %cond.false
  tail call void @PerlIO_stdstreams() #9
  %.pre.i = load %struct._PerlIO*** @PL_perlio, align 8, !tbaa !3
  br label %Perl_PerlIO_stderr.exit

Perl_PerlIO_stderr.exit:                          ; preds = %cond.false, %if.then.i
  %8 = phi %struct._PerlIO** [ %7, %cond.false ], [ %.pre.i, %if.then.i ]
  %arrayidx.i = getelementptr inbounds %struct._PerlIO** %8, i64 3
  br label %cond.end

cond.end:                                         ; preds = %land.lhs.true9, %Perl_PerlIO_stderr.exit
  %cond = phi %struct._PerlIO** [ %arrayidx.i, %Perl_PerlIO_stderr.exit ], [ %6, %land.lhs.true9 ]
  %call1.i = tail call i64 @Perl_PerlIO_write(%struct._PerlIO** %cond, i8* getelementptr inbounds ([45 x i8]* @.str48, i64 0, i64 0), i64 44) #9
  tail call void @Perl_my_exit(i32 1) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then, %cond.end, %entry
  ret i32 %call
}

; Function Attrs: nounwind optsize
declare i32 @vsprintf(i8* nocapture, i8* nocapture, %struct.__va_list_tag*) #6

; Function Attrs: optsize
declare void @Perl_my_exit(i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @PerlIO_sprintf(i8* nocapture %s, i32 %n, i8* nocapture %fmt, ...) #1 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0
  %arraydecay1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %call = call i32 @PerlIO_vsprintf(i8* %s, i32 %n, i8* %fmt, %struct.__va_list_tag* %arraydecay) #10
  call void @llvm.va_end(i8* %arraydecay1)
  ret i32 %call
}

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"long", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}

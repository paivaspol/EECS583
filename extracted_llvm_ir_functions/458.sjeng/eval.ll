; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@std_material = global [14 x i32] [i32 0, i32 100, i32 -100, i32 310, i32 -310, i32 4000, i32 -4000, i32 500, i32 -500, i32 900, i32 -900, i32 325, i32 -325, i32 0], align 16
@zh_material = global [14 x i32] [i32 0, i32 100, i32 -100, i32 210, i32 -210, i32 4000, i32 -4000, i32 250, i32 -250, i32 450, i32 -450, i32 230, i32 -230, i32 0], align 16
@suicide_material = global [14 x i32] [i32 0, i32 15, i32 -15, i32 150, i32 -150, i32 500, i32 -500, i32 150, i32 -150, i32 50, i32 -50, i32 0, i32 0, i32 0], align 16
@losers_material = global [14 x i32] [i32 0, i32 80, i32 -80, i32 320, i32 -320, i32 1000, i32 -1000, i32 350, i32 -350, i32 400, i32 -400, i32 270, i32 -270, i32 0], align 16
@material = global [14 x i32] zeroinitializer, align 16
@Xfile = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xrank = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xdiagl = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@Xdiagr = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 0, i32 0, i32 0, i32 0, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 13, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 0, i32 0, i32 0, i32 0, i32 12, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0, i32 0, i32 11, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 0, i32 0, i32 0, i32 0, i32 10, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 0, i32 0, i32 0, i32 0, i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@sqcolor = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@pcsqbishop = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 10, i32 5, i32 10, i32 10, i32 5, i32 10, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 5, i32 6, i32 15, i32 15, i32 6, i32 5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 3, i32 15, i32 10, i32 10, i32 15, i32 3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 3, i32 15, i32 10, i32 10, i32 15, i32 3, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 5, i32 6, i32 15, i32 15, i32 6, i32 5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 10, i32 5, i32 10, i32 10, i32 5, i32 10, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 -10, i32 -5, i32 -5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_knight = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 25, i32 25, i32 25, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 35, i32 35, i32 35, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 10, i32 25, i32 20, i32 25, i32 25, i32 10, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 20, i32 20, i32 20, i32 20, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -35, i32 -10, i32 -10, i32 -10, i32 -10, i32 -35, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_knight = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -35, i32 -10, i32 -10, i32 -10, i32 -10, i32 -35, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 3, i32 3, i32 0, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 15, i32 15, i32 15, i32 15, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 0, i32 20, i32 20, i32 20, i32 20, i32 0, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 10, i32 25, i32 20, i32 25, i32 25, i32 10, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 35, i32 35, i32 35, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -10, i32 15, i32 25, i32 25, i32 25, i32 25, i32 15, i32 -10, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -10, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_pawn = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 25, i32 35, i32 5, i32 5, i32 50, i32 45, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 20, i32 20, i32 10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 12, i32 18, i32 18, i32 27, i32 27, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 25, i32 30, i32 30, i32 35, i32 35, i32 35, i32 30, i32 25, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_pawn = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 30, i32 30, i32 30, i32 35, i32 35, i32 35, i32 30, i32 25, i32 0, i32 0, i32 0, i32 0, i32 12, i32 18, i32 18, i32 27, i32 27, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 20, i32 20, i32 10, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 14, i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 25, i32 25, i32 35, i32 5, i32 5, i32 50, i32 45, i32 30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_king = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -100, i32 7, i32 4, i32 0, i32 10, i32 4, i32 7, i32 -100, i32 0, i32 0, i32 0, i32 0, i32 -250, i32 -200, i32 -150, i32 -100, i32 -100, i32 -150, i32 -200, i32 -250, i32 0, i32 0, i32 0, i32 0, i32 -350, i32 -300, i32 -300, i32 -250, i32 -250, i32 -300, i32 -300, i32 -350, i32 0, i32 0, i32 0, i32 0, i32 -400, i32 -400, i32 -400, i32 -350, i32 -350, i32 -400, i32 -400, i32 -400, i32 0, i32 0, i32 0, i32 0, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_king = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 -500, i32 0, i32 0, i32 0, i32 0, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 -450, i32 0, i32 0, i32 0, i32 0, i32 -400, i32 -400, i32 -400, i32 -350, i32 -350, i32 -400, i32 -400, i32 -400, i32 0, i32 0, i32 0, i32 0, i32 -350, i32 -300, i32 -300, i32 -250, i32 -250, i32 -300, i32 -300, i32 -350, i32 0, i32 0, i32 0, i32 0, i32 -250, i32 -200, i32 -150, i32 -100, i32 -100, i32 -150, i32 -200, i32 -250, i32 0, i32 0, i32 0, i32 0, i32 -100, i32 7, i32 4, i32 0, i32 10, i32 4, i32 7, i32 -100, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_queen = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 10, i32 10, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 0, i32 0, i32 0, i32 0, i32 -60, i32 -40, i32 -40, i32 -60, i32 -60, i32 -40, i32 -40, i32 -60, i32 0, i32 0, i32 0, i32 0, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_queen = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 -40, i32 0, i32 0, i32 0, i32 0, i32 -60, i32 -40, i32 -40, i32 -60, i32 -60, i32 -40, i32 -40, i32 -60, i32 0, i32 0, i32 0, i32 0, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 -30, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 5, i32 5, i32 10, i32 10, i32 5, i32 5, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@black_rook = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 25, i32 25, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -30, i32 -30, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@white_rook = constant [144 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 -15, i32 -15, i32 -15, i32 -10, i32 -10, i32 -15, i32 -15, i32 -15, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -30, i32 -30, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 -20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 15, i32 20, i32 25, i32 25, i32 20, i32 15, i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@upscale = constant [64 x i32] [i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 92, i32 93, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117], align 16
@pre_p_tropism = global [9 x i32] [i32 9999, i32 40, i32 20, i32 10, i32 3, i32 1, i32 1, i32 0, i32 9999], align 16
@pre_r_tropism = global [9 x i32] [i32 9999, i32 50, i32 40, i32 15, i32 5, i32 1, i32 1, i32 0, i32 9999], align 16
@pre_n_tropism = global [9 x i32] [i32 9999, i32 50, i32 70, i32 35, i32 10, i32 2, i32 1, i32 0, i32 9999], align 16
@pre_q_tropism = global [9 x i32] [i32 9999, i32 100, i32 60, i32 20, i32 5, i32 2, i32 0, i32 0, i32 9999], align 16
@pre_b_tropism = global [9 x i32] [i32 9999, i32 50, i32 25, i32 15, i32 5, i32 2, i32 2, i32 2, i32 9999], align 16
@ksafety_scaled = global [15 x [9 x i32]] [[9 x i32] [i32 -5, i32 5, i32 10, i32 15, i32 50, i32 80, i32 150, i32 150, i32 150], [9 x i32] [i32 -5, i32 15, i32 20, i32 25, i32 70, i32 150, i32 200, i32 200, i32 200], [9 x i32] [i32 -5, i32 15, i32 30, i32 30, i32 100, i32 200, i32 300, i32 300, i32 300], [9 x i32] [i32 -10, i32 20, i32 40, i32 40, i32 100, i32 200, i32 300, i32 300, i32 400], [9 x i32] [i32 -10, i32 30, i32 50, i32 80, i32 150, i32 300, i32 400, i32 400, i32 500], [9 x i32] [i32 -10, i32 35, i32 60, i32 100, i32 200, i32 250, i32 400, i32 400, i32 500], [9 x i32] [i32 -10, i32 40, i32 70, i32 110, i32 210, i32 300, i32 500, i32 500, i32 600], [9 x i32] [i32 -10, i32 45, i32 75, i32 125, i32 215, i32 300, i32 500, i32 600, i32 700], [9 x i32] [i32 -10, i32 60, i32 90, i32 130, i32 240, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 95, i32 145, i32 260, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 100, i32 150, i32 270, i32 350, i32 500, i32 600, i32 700], [9 x i32] [i32 -15, i32 60, i32 110, i32 160, i32 280, i32 400, i32 600, i32 700, i32 800], [9 x i32] [i32 -20, i32 70, i32 115, i32 165, i32 290, i32 400, i32 600, i32 700, i32 800], [9 x i32] [i32 -20, i32 80, i32 120, i32 170, i32 300, i32 450, i32 700, i32 800, i32 900], [9 x i32] [i32 -20, i32 80, i32 125, i32 175, i32 310, i32 450, i32 700, i32 800, i32 900]], align 16
@rookdistance = external global [144 x [144 x i32]]
@distance = external global [144 x [144 x i32]]
@p_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@b_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@n_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@r_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@q_tropism = common global [144 x [144 x i8]] zeroinitializer, align 16
@Variant = external global i32
@white_to_move = external global i32
@cfg_devscale = external global i32
@comp_color = external global i32
@white_hand_eval = external global i32
@black_hand_eval = external global i32
@piece_count = external global i32
@pieces = external global [62 x i32]
@board = external global [144 x i32]
@bking_loc = external global i32
@wking_loc = external global i32
@white_castled = external global i32
@moved = external global [144 x i32]
@black_castled = external global i32
@cfg_smarteval = external global i32
@cfg_attackeval = external global i32
@Material = common global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define void @initialize_eval() #0 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc23, %entry
  %indvars.iv326 = phi i64 [ 0, %entry ], [ %indvars.iv.next327, %for.inc23 ]
  %0 = trunc i64 %indvars.iv326 to i32
  %and = and i32 %0, 7
  %shr = ashr i32 %0, 3
  %arrayidx10 = getelementptr inbounds [64 x i32]* @upscale, i64 0, i64 %indvars.iv326
  %1 = load i32* %arrayidx10, align 4, !tbaa !0
  %idxprom11 = sext i32 %1 to i64
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv322 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next323, %for.body3 ]
  %2 = trunc i64 %indvars.iv322 to i32
  %and4 = and i32 %2, 7
  %sub = sub nsw i32 %and, %and4
  %ispos310 = icmp sgt i32 %sub, -1
  %neg311 = sub i32 0, %sub
  %3 = select i1 %ispos310, i32 %sub, i32 %neg311
  %shr5 = ashr i32 %2, 3
  %sub6 = sub nsw i32 %shr, %shr5
  %ispos312 = icmp sgt i32 %sub6, -1
  %neg313 = sub i32 0, %sub6
  %4 = select i1 %ispos312, i32 %sub6, i32 %neg313
  %add = add nsw i32 %3, %4
  %arrayidx = getelementptr inbounds [64 x i32]* @upscale, i64 0, i64 %indvars.iv322
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom8 = sext i32 %5 to i64
  %arrayidx13 = getelementptr inbounds [144 x [144 x i32]]* @rookdistance, i64 0, i64 %idxprom11, i64 %idxprom8
  store i32 %add, i32* %arrayidx13, align 4, !tbaa !0
  %cmp14 = icmp sgt i32 %3, %4
  %cond = select i1 %cmp14, i32 %3, i32 %4
  %arrayidx22 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom11, i64 %idxprom8
  store i32 %cond, i32* %arrayidx22, align 4, !tbaa !0
  %indvars.iv.next323 = add i64 %indvars.iv322, 1
  %lftr.wideiv324 = trunc i64 %indvars.iv.next323 to i32
  %exitcond325 = icmp eq i32 %lftr.wideiv324, 64
  br i1 %exitcond325, label %for.inc23, label %for.body3

for.inc23:                                        ; preds = %for.body3
  %indvars.iv.next327 = add i64 %indvars.iv326, 1
  %lftr.wideiv328 = trunc i64 %indvars.iv.next327 to i32
  %exitcond329 = icmp eq i32 %lftr.wideiv328, 64
  br i1 %exitcond329, label %for.cond29.preheader, label %for.cond1.preheader

for.cond29.preheader:                             ; preds = %for.inc23, %for.inc218
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %for.inc218 ], [ 0, %for.inc23 ]
  %arrayidx33 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %indvars.iv318
  %6 = load i32* %arrayidx33, align 4, !tbaa !0
  %arrayidx39 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %indvars.iv318
  %7 = load i32* %arrayidx39, align 4, !tbaa !0
  br label %for.body31

for.body31:                                       ; preds = %for.body31, %for.cond29.preheader
  %indvars.iv = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next, %for.body31 ]
  %arrayidx35 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %indvars.iv
  %8 = load i32* %arrayidx35, align 4, !tbaa !0
  %sub36 = sub nsw i32 %6, %8
  %ispos = icmp sgt i32 %sub36, -1
  %neg = sub i32 0, %sub36
  %9 = select i1 %ispos, i32 %sub36, i32 %neg
  %arrayidx41 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %indvars.iv
  %10 = load i32* %arrayidx41, align 4, !tbaa !0
  %sub42 = sub nsw i32 %7, %10
  %ispos282 = icmp sgt i32 %sub42, -1
  %neg283 = sub i32 0, %sub42
  %11 = select i1 %ispos282, i32 %sub42, i32 %neg283
  %cmp44 = icmp sgt i32 %9, %11
  %sub36.sub42 = select i1 %cmp44, i32 %sub36, i32 %sub42
  %ispos284 = icmp sgt i32 %sub36.sub42, -1
  %neg285 = sub i32 0, %sub36.sub42
  %12 = select i1 %ispos284, i32 %sub36.sub42, i32 %neg285
  %idxprom61 = sext i32 %12 to i64
  %arrayidx62 = getelementptr inbounds [9 x i32]* @pre_p_tropism, i64 0, i64 %idxprom61
  %13 = load i32* %arrayidx62, align 4, !tbaa !0
  %conv = trunc i32 %13 to i8
  %arrayidx66 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv
  store i8 %conv, i8* %arrayidx66, align 1, !tbaa !1
  %arrayidx98 = getelementptr inbounds [9 x i32]* @pre_b_tropism, i64 0, i64 %idxprom61
  %14 = load i32* %arrayidx98, align 4, !tbaa !0
  %conv99 = trunc i32 %14 to i8
  %arrayidx103 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv
  store i8 %conv99, i8* %arrayidx103, align 1, !tbaa !1
  %arrayidx135 = getelementptr inbounds [9 x i32]* @pre_n_tropism, i64 0, i64 %idxprom61
  %15 = load i32* %arrayidx135, align 4, !tbaa !0
  %conv136 = trunc i32 %15 to i8
  %arrayidx140 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv
  store i8 %conv136, i8* %arrayidx140, align 1, !tbaa !1
  %arrayidx172 = getelementptr inbounds [9 x i32]* @pre_r_tropism, i64 0, i64 %idxprom61
  %16 = load i32* %arrayidx172, align 4, !tbaa !0
  %conv173 = trunc i32 %16 to i8
  %arrayidx177 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv
  store i8 %conv173, i8* %arrayidx177, align 1, !tbaa !1
  %arrayidx209 = getelementptr inbounds [9 x i32]* @pre_q_tropism, i64 0, i64 %idxprom61
  %17 = load i32* %arrayidx209, align 4, !tbaa !0
  %conv210 = trunc i32 %17 to i8
  %arrayidx214 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv
  store i8 %conv210, i8* %arrayidx214, align 1, !tbaa !1
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 144
  br i1 %exitcond, label %for.inc218, label %for.body31

for.inc218:                                       ; preds = %for.body31
  %indvars.iv.next319 = add i64 %indvars.iv318, 1
  %lftr.wideiv320 = trunc i64 %indvars.iv.next319 to i32
  %exitcond321 = icmp eq i32 %lftr.wideiv320, 144
  br i1 %exitcond321, label %for.end220, label %for.cond29.preheader

for.end220:                                       ; preds = %for.inc218
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @eval(i32 %alpha, i32 %beta) #0 {
entry:
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  store i32 0, i32* %score, align 4, !tbaa !0
  %0 = load i32* @Variant, align 4, !tbaa !0
  switch i32 %0, label %if.end9 [
    i32 2, label %if.then
    i32 3, label %if.then2
    i32 4, label %if.then6
  ]

if.then:                                          ; preds = %entry
  %call = call i32 @std_eval(i32 %alpha, i32 %beta) #2
  br label %return

if.then2:                                         ; preds = %entry
  %call3 = call i32 @suicide_eval() #2
  br label %return

if.then6:                                         ; preds = %entry
  %call7 = call i32 @losers_eval() #2
  br label %return

if.end9:                                          ; preds = %entry
  store i32 0, i32* %in_cache, align 4, !tbaa !0
  call void @checkECache(i32* %score, i32* %in_cache) #2
  %1 = load i32* %in_cache, align 4, !tbaa !0
  %tobool = icmp eq i32 %1, 0
  br i1 %tobool, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end9
  %2 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %2, 1
  %3 = load i32* %score, align 4, !tbaa !0
  %sub = sub nsw i32 0, %3
  %.sub = select i1 %cmp11, i32 %3, i32 %sub
  ret i32 %.sub

if.end14:                                         ; preds = %if.end9
  %4 = load i32* @cfg_devscale, align 4, !tbaa !0
  %tobool15 = icmp eq i32 %4, 0
  br i1 %tobool15, label %if.end47, label %if.then16

if.then16:                                        ; preds = %if.end14
  %5 = load i32* @white_to_move, align 4, !tbaa !0
  %6 = load i32* @comp_color, align 4, !tbaa !0
  %cmp17 = icmp eq i32 %5, %6
  br i1 %cmp17, label %if.then31, label %if.then18

if.then18:                                        ; preds = %if.then16
  %7 = load i32* @white_hand_eval, align 4, !tbaa !0
  %cmp19 = icmp slt i32 %7, 201
  %8 = load i32* @Variant, align 4, !tbaa !0
  %cmp20 = icmp ne i32 %8, 1
  %or.cond = and i1 %cmp19, %cmp20
  br i1 %or.cond, label %if.end47, label %if.end29.thread982

if.end29.thread982:                               ; preds = %if.then18
  %not.cmp23983 = icmp slt i32 %7, 700
  %.984 = zext i1 %not.cmp23983 to i32
  br label %if.end47

if.then31:                                        ; preds = %if.then16
  %9 = load i32* @black_hand_eval, align 4, !tbaa !0
  %sub32 = sub nsw i32 0, %9
  %cmp33 = icmp slt i32 %sub32, 201
  %10 = load i32* @Variant, align 4, !tbaa !0
  %cmp35 = icmp ne i32 %10, 1
  %or.cond872 = and i1 %cmp33, %cmp35
  br i1 %or.cond872, label %if.end47, label %if.else37

if.else37:                                        ; preds = %if.then31
  %not.cmp39 = icmp slt i32 %sub32, 700
  %.956 = zext i1 %not.cmp39 to i32
  br label %if.end47

if.end47:                                         ; preds = %if.then18, %if.end29.thread982, %if.end14, %if.else37, %if.then31
  %wdev_dscale.1 = phi i32 [ 0, %if.then31 ], [ 0, %if.else37 ], [ 0, %if.end14 ], [ %.984, %if.end29.thread982 ], [ 2, %if.then18 ]
  %bdev_dscale.0 = phi i32 [ 2, %if.then31 ], [ %.956, %if.else37 ], [ 0, %if.end14 ], [ 0, %if.end29.thread982 ], [ 0, %if.then18 ]
  %11 = load i32* @piece_count, align 4, !tbaa !0
  %cmp48958 = icmp slt i32 %11, 1
  br i1 %cmp48958, label %if.end47.for.end_crit_edge, label %for.body.lr.ph

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  %.pre974 = load i32* @wking_loc, align 4, !tbaa !0
  %.pre975 = load i32* @bking_loc, align 4, !tbaa !0
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end47
  %12 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom58 = sext i32 %12 to i64
  %13 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom69 = sext i32 %13 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %a.0959 = phi i32 [ 1, %for.body.lr.ph ], [ %a.1, %for.inc ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv
  %14 = load i32* %arrayidx, align 4, !tbaa !0
  %tobool49 = icmp eq i32 %14, 0
  br i1 %tobool49, label %for.inc, label %if.else51

if.else51:                                        ; preds = %for.body
  %inc = add nsw i32 %a.0959, 1
  %idxprom53 = sext i32 %14 to i64
  %arrayidx54 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom53
  %15 = load i32* %arrayidx54, align 4, !tbaa !0
  switch i32 %15, label %for.inc [
    i32 1, label %sw.bb
    i32 2, label %sw.bb63
    i32 7, label %sw.bb75
    i32 8, label %sw.bb87
    i32 11, label %sw.bb99
    i32 12, label %sw.bb111
    i32 3, label %sw.bb123
    i32 4, label %sw.bb135
    i32 9, label %sw.bb147
    i32 10, label %sw.bb159
  ]

sw.bb:                                            ; preds = %if.else51
  %16 = load i32* %score, align 4, !tbaa !0
  %add = add nsw i32 %16, 100
  %arrayidx56 = getelementptr inbounds [144 x i32]* @white_pawn, i64 0, i64 %idxprom53
  %17 = load i32* %arrayidx56, align 4, !tbaa !0
  %shr = ashr i32 %17, %wdev_dscale.1
  %add57 = add nsw i32 %shr, %add
  %arrayidx61 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %idxprom53, i64 %idxprom58
  %18 = load i8* %arrayidx61, align 1, !tbaa !1
  %conv = zext i8 %18 to i32
  %add62 = add nsw i32 %conv, %add57
  store i32 %add62, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb63:                                          ; preds = %if.else51
  %19 = load i32* %score, align 4, !tbaa !0
  %sub64 = add nsw i32 %19, -100
  %arrayidx66 = getelementptr inbounds [144 x i32]* @black_pawn, i64 0, i64 %idxprom53
  %20 = load i32* %arrayidx66, align 4, !tbaa !0
  %shr67 = ashr i32 %20, %bdev_dscale.0
  %sub68 = sub nsw i32 %sub64, %shr67
  %arrayidx72 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %idxprom53, i64 %idxprom69
  %21 = load i8* %arrayidx72, align 1, !tbaa !1
  %conv73 = zext i8 %21 to i32
  %sub74 = sub nsw i32 %sub68, %conv73
  store i32 %sub74, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb75:                                          ; preds = %if.else51
  %22 = load i32* %score, align 4, !tbaa !0
  %add76 = add nsw i32 %22, 250
  %arrayidx78 = getelementptr inbounds [144 x i32]* @white_rook, i64 0, i64 %idxprom53
  %23 = load i32* %arrayidx78, align 4, !tbaa !0
  %shr79 = ashr i32 %23, %wdev_dscale.1
  %add80 = add nsw i32 %shr79, %add76
  %arrayidx84 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %idxprom53, i64 %idxprom58
  %24 = load i8* %arrayidx84, align 1, !tbaa !1
  %conv85 = zext i8 %24 to i32
  %add86 = add nsw i32 %conv85, %add80
  store i32 %add86, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb87:                                          ; preds = %if.else51
  %25 = load i32* %score, align 4, !tbaa !0
  %sub88 = add nsw i32 %25, -250
  %arrayidx90 = getelementptr inbounds [144 x i32]* @black_rook, i64 0, i64 %idxprom53
  %26 = load i32* %arrayidx90, align 4, !tbaa !0
  %shr91 = ashr i32 %26, %bdev_dscale.0
  %sub92 = sub nsw i32 %sub88, %shr91
  %arrayidx96 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %idxprom53, i64 %idxprom69
  %27 = load i8* %arrayidx96, align 1, !tbaa !1
  %conv97 = zext i8 %27 to i32
  %sub98 = sub nsw i32 %sub92, %conv97
  store i32 %sub98, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb99:                                          ; preds = %if.else51
  %28 = load i32* %score, align 4, !tbaa !0
  %add100 = add nsw i32 %28, 230
  %arrayidx102 = getelementptr inbounds [144 x i32]* @pcsqbishop, i64 0, i64 %idxprom53
  %29 = load i32* %arrayidx102, align 4, !tbaa !0
  %shr103 = ashr i32 %29, %wdev_dscale.1
  %add104 = add nsw i32 %shr103, %add100
  %arrayidx108 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %idxprom53, i64 %idxprom58
  %30 = load i8* %arrayidx108, align 1, !tbaa !1
  %conv109 = zext i8 %30 to i32
  %add110 = add nsw i32 %conv109, %add104
  store i32 %add110, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb111:                                         ; preds = %if.else51
  %31 = load i32* %score, align 4, !tbaa !0
  %sub112 = add nsw i32 %31, -230
  %arrayidx114 = getelementptr inbounds [144 x i32]* @pcsqbishop, i64 0, i64 %idxprom53
  %32 = load i32* %arrayidx114, align 4, !tbaa !0
  %shr115 = ashr i32 %32, %bdev_dscale.0
  %sub116 = sub nsw i32 %sub112, %shr115
  %arrayidx120 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %idxprom53, i64 %idxprom69
  %33 = load i8* %arrayidx120, align 1, !tbaa !1
  %conv121 = zext i8 %33 to i32
  %sub122 = sub nsw i32 %sub116, %conv121
  store i32 %sub122, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb123:                                         ; preds = %if.else51
  %34 = load i32* %score, align 4, !tbaa !0
  %add124 = add nsw i32 %34, 210
  %arrayidx126 = getelementptr inbounds [144 x i32]* @white_knight, i64 0, i64 %idxprom53
  %35 = load i32* %arrayidx126, align 4, !tbaa !0
  %shr127 = ashr i32 %35, %wdev_dscale.1
  %add128 = add nsw i32 %shr127, %add124
  %arrayidx132 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %idxprom53, i64 %idxprom58
  %36 = load i8* %arrayidx132, align 1, !tbaa !1
  %conv133 = zext i8 %36 to i32
  %add134 = add nsw i32 %conv133, %add128
  store i32 %add134, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb135:                                         ; preds = %if.else51
  %37 = load i32* %score, align 4, !tbaa !0
  %sub136 = add nsw i32 %37, -210
  %arrayidx138 = getelementptr inbounds [144 x i32]* @black_knight, i64 0, i64 %idxprom53
  %38 = load i32* %arrayidx138, align 4, !tbaa !0
  %shr139 = ashr i32 %38, %bdev_dscale.0
  %sub140 = sub nsw i32 %sub136, %shr139
  %arrayidx144 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %idxprom53, i64 %idxprom69
  %39 = load i8* %arrayidx144, align 1, !tbaa !1
  %conv145 = zext i8 %39 to i32
  %sub146 = sub nsw i32 %sub140, %conv145
  store i32 %sub146, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb147:                                         ; preds = %if.else51
  %40 = load i32* %score, align 4, !tbaa !0
  %add148 = add nsw i32 %40, 450
  %arrayidx150 = getelementptr inbounds [144 x i32]* @white_queen, i64 0, i64 %idxprom53
  %41 = load i32* %arrayidx150, align 4, !tbaa !0
  %shr151 = ashr i32 %41, %wdev_dscale.1
  %add152 = add nsw i32 %shr151, %add148
  %arrayidx156 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %idxprom53, i64 %idxprom58
  %42 = load i8* %arrayidx156, align 1, !tbaa !1
  %conv157 = zext i8 %42 to i32
  %add158 = add nsw i32 %conv157, %add152
  store i32 %add158, i32* %score, align 4, !tbaa !0
  br label %for.inc

sw.bb159:                                         ; preds = %if.else51
  %43 = load i32* %score, align 4, !tbaa !0
  %sub160 = add nsw i32 %43, -450
  %arrayidx162 = getelementptr inbounds [144 x i32]* @black_queen, i64 0, i64 %idxprom53
  %44 = load i32* %arrayidx162, align 4, !tbaa !0
  %shr163 = ashr i32 %44, %bdev_dscale.0
  %sub164 = sub nsw i32 %sub160, %shr163
  %arrayidx168 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %idxprom53, i64 %idxprom69
  %45 = load i8* %arrayidx168, align 1, !tbaa !1
  %conv169 = zext i8 %45 to i32
  %sub170 = sub nsw i32 %sub164, %conv169
  store i32 %sub170, i32* %score, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %sw.bb, %sw.bb63, %sw.bb75, %sw.bb87, %sw.bb99, %sw.bb111, %sw.bb123, %sw.bb135, %sw.bb147, %sw.bb159, %if.else51
  %a.1 = phi i32 [ %inc, %if.else51 ], [ %inc, %sw.bb159 ], [ %inc, %sw.bb147 ], [ %inc, %sw.bb135 ], [ %inc, %sw.bb123 ], [ %inc, %sw.bb111 ], [ %inc, %sw.bb99 ], [ %inc, %sw.bb87 ], [ %inc, %sw.bb75 ], [ %inc, %sw.bb63 ], [ %inc, %sw.bb ], [ %a.0959, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp48 = icmp sgt i32 %a.1, %11
  br i1 %cmp48, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end47.for.end_crit_edge
  %46 = phi i32 [ %.pre975, %if.end47.for.end_crit_edge ], [ %12, %for.inc ]
  %47 = phi i32 [ %.pre974, %if.end47.for.end_crit_edge ], [ %13, %for.inc ]
  %idxprom172 = sext i32 %47 to i64
  %arrayidx173 = getelementptr inbounds [144 x i32]* @white_king, i64 0, i64 %idxprom172
  %48 = load i32* %arrayidx173, align 4, !tbaa !0
  %shr174 = ashr i32 %48, %bdev_dscale.0
  %49 = load i32* %score, align 4, !tbaa !0
  %add175 = add nsw i32 %49, %shr174
  %idxprom176 = sext i32 %46 to i64
  %arrayidx177 = getelementptr inbounds [144 x i32]* @black_king, i64 0, i64 %idxprom176
  %50 = load i32* %arrayidx177, align 4, !tbaa !0
  %shr178 = ashr i32 %50, %wdev_dscale.1
  %sub179 = sub nsw i32 %add175, %shr178
  store i32 %sub179, i32* %score, align 4, !tbaa !0
  %51 = load i32* @white_castled, align 4, !tbaa !0
  %tobool180 = icmp eq i32 %51, 0
  %52 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !tbaa !0
  %tobool182 = icmp ne i32 %52, 0
  %or.cond873 = and i1 %tobool180, %tobool182
  br i1 %or.cond873, label %if.then183, label %if.end185

if.then183:                                       ; preds = %for.end
  %sub184 = add nsw i32 %sub179, -30
  store i32 %sub184, i32* %score, align 4, !tbaa !0
  br label %if.end185

if.end185:                                        ; preds = %for.end, %if.then183
  %53 = phi i32 [ %sub179, %for.end ], [ %sub184, %if.then183 ]
  %54 = load i32* @black_castled, align 4, !tbaa !0
  %tobool186 = icmp eq i32 %54, 0
  %55 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !tbaa !0
  %tobool188 = icmp ne i32 %55, 0
  %or.cond874 = and i1 %tobool186, %tobool188
  br i1 %or.cond874, label %if.then189, label %if.end191

if.then189:                                       ; preds = %if.end185
  %add190 = add nsw i32 %53, 30
  store i32 %add190, i32* %score, align 4, !tbaa !0
  br label %if.end191

if.end191:                                        ; preds = %if.end185, %if.then189
  %56 = phi i32 [ %53, %if.end185 ], [ %add190, %if.then189 ]
  %57 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 41), align 4, !tbaa !0
  %tobool192 = icmp eq i32 %57, 0
  %58 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 53), align 4, !tbaa !0
  %cmp194 = icmp ne i32 %58, 13
  %or.cond875 = and i1 %tobool192, %cmp194
  br i1 %or.cond875, label %if.then196, label %if.end198

if.then196:                                       ; preds = %if.end191
  %sub197 = add nsw i32 %56, -15
  store i32 %sub197, i32* %score, align 4, !tbaa !0
  br label %if.end198

if.end198:                                        ; preds = %if.end191, %if.then196
  %59 = phi i32 [ %56, %if.end191 ], [ %sub197, %if.then196 ]
  %60 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 42), align 4, !tbaa !0
  %tobool199 = icmp eq i32 %60, 0
  %61 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !tbaa !0
  %cmp201 = icmp ne i32 %61, 13
  %or.cond876 = and i1 %tobool199, %cmp201
  br i1 %or.cond876, label %if.then203, label %if.end205

if.then203:                                       ; preds = %if.end198
  %sub204 = add nsw i32 %59, -15
  store i32 %sub204, i32* %score, align 4, !tbaa !0
  br label %if.end205

if.end205:                                        ; preds = %if.end198, %if.then203
  %62 = phi i32 [ %59, %if.end198 ], [ %sub204, %if.then203 ]
  %63 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 101), align 4, !tbaa !0
  %tobool206 = icmp eq i32 %63, 0
  %64 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 89), align 4, !tbaa !0
  %cmp208 = icmp ne i32 %64, 13
  %or.cond877 = and i1 %tobool206, %cmp208
  br i1 %or.cond877, label %if.then210, label %if.end212

if.then210:                                       ; preds = %if.end205
  %add211 = add nsw i32 %62, 15
  store i32 %add211, i32* %score, align 4, !tbaa !0
  br label %if.end212

if.end212:                                        ; preds = %if.end205, %if.then210
  %65 = phi i32 [ %62, %if.end205 ], [ %add211, %if.then210 ]
  %66 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 102), align 4, !tbaa !0
  %tobool213 = icmp eq i32 %66, 0
  %67 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !tbaa !0
  %cmp215 = icmp ne i32 %67, 13
  %or.cond878 = and i1 %tobool213, %cmp215
  br i1 %or.cond878, label %if.then217, label %if.end219

if.then217:                                       ; preds = %if.end212
  %add218 = add nsw i32 %65, 15
  store i32 %add218, i32* %score, align 4, !tbaa !0
  br label %if.end219

if.end219:                                        ; preds = %if.end212, %if.then217
  %68 = phi i32 [ %65, %if.end212 ], [ %add218, %if.then217 ]
  %69 = load i32* @cfg_smarteval, align 4, !tbaa !0
  %tobool220 = icmp eq i32 %69, 0
  br i1 %tobool220, label %if.end640, label %if.then221

if.then221:                                       ; preds = %if.end219
  %.off = add i32 %47, -29
  %70 = icmp ugt i32 %.off, 1
  br i1 %70, label %if.then227, label %if.end279

if.then227:                                       ; preds = %if.then221
  %add228 = add nsw i32 %47, 11
  %idxprom229 = sext i32 %add228 to i64
  %arrayidx230 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom229
  %71 = load i32* %arrayidx230, align 4, !tbaa !0
  %cmp231 = icmp eq i32 %71, 1
  br i1 %cmp231, label %if.end235, label %if.then233

if.then233:                                       ; preds = %if.then227
  %sub234 = add nsw i32 %68, -24
  store i32 %sub234, i32* %score, align 4, !tbaa !0
  br label %if.end235

if.end235:                                        ; preds = %if.then227, %if.then233
  %72 = phi i32 [ %68, %if.then227 ], [ %sub234, %if.then233 ]
  %add236 = add nsw i32 %47, 12
  %idxprom237 = sext i32 %add236 to i64
  %arrayidx238 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom237
  %73 = load i32* %arrayidx238, align 4, !tbaa !0
  %cmp239 = icmp eq i32 %73, 1
  br i1 %cmp239, label %if.end243, label %if.then241

if.then241:                                       ; preds = %if.end235
  %sub242 = add nsw i32 %72, -35
  store i32 %sub242, i32* %score, align 4, !tbaa !0
  br label %if.end243

if.end243:                                        ; preds = %if.end235, %if.then241
  %74 = phi i32 [ %72, %if.end235 ], [ %sub242, %if.then241 ]
  %add244 = add nsw i32 %47, 13
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom245
  %75 = load i32* %arrayidx246, align 4, !tbaa !0
  %cmp247 = icmp eq i32 %75, 1
  br i1 %cmp247, label %if.end251, label %if.then249

if.then249:                                       ; preds = %if.end243
  %sub250 = add nsw i32 %74, -24
  store i32 %sub250, i32* %score, align 4, !tbaa !0
  br label %if.end251

if.end251:                                        ; preds = %if.end243, %if.then249
  %76 = phi i32 [ %74, %if.end243 ], [ %sub250, %if.then249 ]
  br i1 %tobool180, label %if.end279, label %if.then253

if.then253:                                       ; preds = %if.end251
  %sub254 = add nsw i32 %46, -25
  %idxprom255 = sext i32 %sub254 to i64
  %arrayidx256 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom255
  %77 = load i32* %arrayidx256, align 4, !tbaa !0
  %cmp257 = icmp eq i32 %77, 2
  br i1 %cmp257, label %if.then259, label %if.end261

if.then259:                                       ; preds = %if.then253
  %add260 = add nsw i32 %76, 11
  store i32 %add260, i32* %score, align 4, !tbaa !0
  br label %if.end261

if.end261:                                        ; preds = %if.then259, %if.then253
  %78 = phi i32 [ %add260, %if.then259 ], [ %76, %if.then253 ]
  %sub262 = add nsw i32 %46, -24
  %idxprom263 = sext i32 %sub262 to i64
  %arrayidx264 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom263
  %79 = load i32* %arrayidx264, align 4, !tbaa !0
  %cmp265 = icmp eq i32 %79, 2
  br i1 %cmp265, label %if.then267, label %if.end269

if.then267:                                       ; preds = %if.end261
  %add268 = add nsw i32 %78, 15
  store i32 %add268, i32* %score, align 4, !tbaa !0
  br label %if.end269

if.end269:                                        ; preds = %if.then267, %if.end261
  %80 = phi i32 [ %add268, %if.then267 ], [ %78, %if.end261 ]
  %sub270 = add nsw i32 %46, -23
  %idxprom271 = sext i32 %sub270 to i64
  %arrayidx272 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom271
  %81 = load i32* %arrayidx272, align 4, !tbaa !0
  %cmp273 = icmp eq i32 %81, 2
  br i1 %cmp273, label %if.then275, label %if.end279

if.then275:                                       ; preds = %if.end269
  %add276 = add nsw i32 %80, 11
  store i32 %add276, i32* %score, align 4, !tbaa !0
  br label %if.end279

if.end279:                                        ; preds = %if.end251, %if.then275, %if.end269, %if.then221
  %82 = phi i32 [ %76, %if.end251 ], [ %add276, %if.then275 ], [ %80, %if.end269 ], [ %68, %if.then221 ]
  %.off955 = add i32 %46, -113
  %83 = icmp ugt i32 %.off955, 1
  br i1 %83, label %if.then285, label %if.end337

if.then285:                                       ; preds = %if.end279
  %sub286 = add nsw i32 %46, -13
  %idxprom287 = sext i32 %sub286 to i64
  %arrayidx288 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom287
  %84 = load i32* %arrayidx288, align 4, !tbaa !0
  %cmp289 = icmp eq i32 %84, 2
  br i1 %cmp289, label %if.end293, label %if.then291

if.then291:                                       ; preds = %if.then285
  %add292 = add nsw i32 %82, 24
  store i32 %add292, i32* %score, align 4, !tbaa !0
  br label %if.end293

if.end293:                                        ; preds = %if.then285, %if.then291
  %85 = phi i32 [ %82, %if.then285 ], [ %add292, %if.then291 ]
  %sub294 = add nsw i32 %46, -12
  %idxprom295 = sext i32 %sub294 to i64
  %arrayidx296 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom295
  %86 = load i32* %arrayidx296, align 4, !tbaa !0
  %cmp297 = icmp eq i32 %86, 2
  br i1 %cmp297, label %if.end301, label %if.then299

if.then299:                                       ; preds = %if.end293
  %add300 = add nsw i32 %85, 35
  store i32 %add300, i32* %score, align 4, !tbaa !0
  br label %if.end301

if.end301:                                        ; preds = %if.end293, %if.then299
  %87 = phi i32 [ %85, %if.end293 ], [ %add300, %if.then299 ]
  %sub302 = add nsw i32 %46, -11
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom303
  %88 = load i32* %arrayidx304, align 4, !tbaa !0
  %cmp305 = icmp eq i32 %88, 2
  br i1 %cmp305, label %if.end309, label %if.then307

if.then307:                                       ; preds = %if.end301
  %add308 = add nsw i32 %87, 24
  store i32 %add308, i32* %score, align 4, !tbaa !0
  br label %if.end309

if.end309:                                        ; preds = %if.end301, %if.then307
  %89 = phi i32 [ %87, %if.end301 ], [ %add308, %if.then307 ]
  br i1 %tobool186, label %if.end337, label %if.then311

if.then311:                                       ; preds = %if.end309
  %sub312 = add nsw i32 %46, -25
  %idxprom313 = sext i32 %sub312 to i64
  %arrayidx314 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom313
  %90 = load i32* %arrayidx314, align 4, !tbaa !0
  %cmp315 = icmp eq i32 %90, 2
  br i1 %cmp315, label %if.then317, label %if.end319

if.then317:                                       ; preds = %if.then311
  %sub318 = add nsw i32 %89, -11
  store i32 %sub318, i32* %score, align 4, !tbaa !0
  br label %if.end319

if.end319:                                        ; preds = %if.then311, %if.then317
  %91 = phi i32 [ %sub318, %if.then317 ], [ %89, %if.then311 ]
  %sub320 = add nsw i32 %46, -24
  %idxprom321 = sext i32 %sub320 to i64
  %arrayidx322 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom321
  %92 = load i32* %arrayidx322, align 4, !tbaa !0
  %cmp323 = icmp eq i32 %92, 2
  br i1 %cmp323, label %if.then325, label %if.end327

if.then325:                                       ; preds = %if.end319
  %sub326 = add nsw i32 %91, -15
  store i32 %sub326, i32* %score, align 4, !tbaa !0
  br label %if.end327

if.end327:                                        ; preds = %if.end319, %if.then325
  %93 = phi i32 [ %sub326, %if.then325 ], [ %91, %if.end319 ]
  %sub328 = add nsw i32 %46, -23
  %idxprom329 = sext i32 %sub328 to i64
  %arrayidx330 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom329
  %94 = load i32* %arrayidx330, align 4, !tbaa !0
  %cmp331 = icmp eq i32 %94, 2
  br i1 %cmp331, label %if.then333, label %if.end337

if.then333:                                       ; preds = %if.end327
  %sub334 = add nsw i32 %93, -11
  store i32 %sub334, i32* %score, align 4, !tbaa !0
  br label %if.end337

if.end337:                                        ; preds = %if.end309, %if.then333, %if.end327, %if.end279
  %95 = phi i32 [ %89, %if.end309 ], [ %sub334, %if.then333 ], [ %93, %if.end327 ], [ %82, %if.end279 ]
  br i1 %tobool199, label %if.end357, label %if.then339

if.then339:                                       ; preds = %if.end337
  %add340 = add nsw i32 %95, 30
  %add343 = add nsw i32 %95, 55
  %add340.add343 = select i1 %tobool192, i32 %add340, i32 %add343
  %add340.add343985 = select i1 %tobool192, i32 %add340, i32 %add343
  store i32 %add340.add343, i32* %score, align 4, !tbaa !0
  %96 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 32), align 4, !tbaa !0
  %tobool345 = icmp eq i32 %96, 0
  br i1 %tobool345, label %if.end348, label %if.then346

if.then346:                                       ; preds = %if.then339
  %add347 = add nsw i32 %add340.add343985, 20
  store i32 %add347, i32* %score, align 4, !tbaa !0
  br label %if.end348

if.end348:                                        ; preds = %if.then339, %if.then346
  %97 = phi i32 [ %add340.add343985, %if.then339 ], [ %add347, %if.then346 ]
  %98 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 27), align 4, !tbaa !0
  %tobool349 = icmp eq i32 %98, 0
  br i1 %tobool349, label %if.end352, label %if.then350

if.then350:                                       ; preds = %if.end348
  %add351 = add nsw i32 %97, 15
  store i32 %add351, i32* %score, align 4, !tbaa !0
  br label %if.end352

if.end352:                                        ; preds = %if.end348, %if.then350
  %99 = phi i32 [ %97, %if.end348 ], [ %add351, %if.then350 ]
  %100 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 28), align 4, !tbaa !0
  %tobool353 = icmp eq i32 %100, 0
  br i1 %tobool353, label %if.end357, label %if.then354

if.then354:                                       ; preds = %if.end352
  %add355 = add nsw i32 %99, 10
  store i32 %add355, i32* %score, align 4, !tbaa !0
  br label %if.end357

if.end357:                                        ; preds = %if.end352, %if.end337, %if.then354
  %101 = phi i32 [ %99, %if.end352 ], [ %95, %if.end337 ], [ %add355, %if.then354 ]
  br i1 %tobool213, label %if.end377, label %if.then359

if.then359:                                       ; preds = %if.end357
  %sub360 = add nsw i32 %101, -30
  %sub363 = add nsw i32 %101, -55
  %sub360.sub363 = select i1 %tobool206, i32 %sub360, i32 %sub363
  %sub360.sub363986 = select i1 %tobool206, i32 %sub360, i32 %sub363
  store i32 %sub360.sub363, i32* %score, align 4, !tbaa !0
  %102 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 116), align 4, !tbaa !0
  %tobool365 = icmp eq i32 %102, 0
  br i1 %tobool365, label %if.end368, label %if.then366

if.then366:                                       ; preds = %if.then359
  %sub367 = add nsw i32 %sub360.sub363986, -20
  store i32 %sub367, i32* %score, align 4, !tbaa !0
  br label %if.end368

if.end368:                                        ; preds = %if.then359, %if.then366
  %103 = phi i32 [ %sub360.sub363986, %if.then359 ], [ %sub367, %if.then366 ]
  %104 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 111), align 4, !tbaa !0
  %tobool369 = icmp eq i32 %104, 0
  br i1 %tobool369, label %if.end372, label %if.then370

if.then370:                                       ; preds = %if.end368
  %sub371 = add nsw i32 %103, -15
  store i32 %sub371, i32* %score, align 4, !tbaa !0
  br label %if.end372

if.end372:                                        ; preds = %if.end368, %if.then370
  %105 = phi i32 [ %103, %if.end368 ], [ %sub371, %if.then370 ]
  %106 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 112), align 4, !tbaa !0
  %tobool373 = icmp eq i32 %106, 0
  br i1 %tobool373, label %if.end377, label %if.then374

if.then374:                                       ; preds = %if.end372
  %sub375 = add nsw i32 %105, -10
  store i32 %sub375, i32* %score, align 4, !tbaa !0
  br label %if.end377

if.end377:                                        ; preds = %if.end372, %if.end357, %if.then374
  %107 = phi i32 [ %105, %if.end372 ], [ %101, %if.end357 ], [ %sub375, %if.then374 ]
  %108 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4, !tbaa !0
  %cmp378 = icmp eq i32 %108, 1
  br i1 %cmp378, label %if.end387, label %land.lhs.true380

land.lhs.true380:                                 ; preds = %if.end377
  %109 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 55), align 4, !tbaa !0
  %cmp381 = icmp eq i32 %109, 2
  %110 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 66), align 4, !tbaa !0
  %cmp383 = icmp eq i32 %110, 2
  %or.cond881 = or i1 %cmp381, %cmp383
  br i1 %or.cond881, label %if.then385, label %if.end387

if.then385:                                       ; preds = %land.lhs.true380
  %sub386 = add nsw i32 %107, -30
  store i32 %sub386, i32* %score, align 4, !tbaa !0
  br label %if.end387

if.end387:                                        ; preds = %if.end377, %land.lhs.true380, %if.then385
  %111 = phi i32 [ %107, %if.end377 ], [ %107, %land.lhs.true380 ], [ %sub386, %if.then385 ]
  %112 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4, !tbaa !0
  %cmp388 = icmp eq i32 %112, 2
  br i1 %cmp388, label %if.end398, label %land.lhs.true390

land.lhs.true390:                                 ; preds = %if.end387
  %113 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 91), align 4, !tbaa !0
  %cmp391 = icmp eq i32 %113, 1
  %114 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 78), align 4, !tbaa !0
  %cmp394 = icmp eq i32 %114, 1
  %or.cond882 = or i1 %cmp391, %cmp394
  br i1 %or.cond882, label %if.then396, label %if.end398

if.then396:                                       ; preds = %land.lhs.true390
  %add397 = add nsw i32 %111, 30
  store i32 %add397, i32* %score, align 4, !tbaa !0
  br label %if.end398

if.end398:                                        ; preds = %land.lhs.true390, %if.end387, %if.then396
  %115 = phi i32 [ %add397, %if.then396 ], [ %111, %if.end387 ], [ %111, %land.lhs.true390 ]
  %add399 = add nsw i32 %47, 12
  %idxprom400 = sext i32 %add399 to i64
  %arrayidx401 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom400
  %116 = load i32* %arrayidx401, align 4, !tbaa !0
  switch i32 %116, label %if.end424 [
    i32 2, label %cond.false
    i32 12, label %cond.false
  ]

cond.false:                                       ; preds = %if.end398, %if.end398
  %sub411 = add nsw i32 %115, -35
  store i32 %sub411, i32* %score, align 4, !tbaa !0
  %call418 = call i32 @is_attacked(i32 %add399, i32 0) #2
  %tobool419 = icmp eq i32 %call418, 0
  br i1 %tobool419, label %if.end424, label %if.then420

if.then420:                                       ; preds = %cond.false
  %shr421 = lshr i32 150, %bdev_dscale.0
  %117 = load i32* %score, align 4, !tbaa !0
  %sub422 = sub nsw i32 %117, %shr421
  store i32 %sub422, i32* %score, align 4, !tbaa !0
  br label %if.end424

if.end424:                                        ; preds = %cond.false, %if.end398, %if.then420
  %118 = load i32* @bking_loc, align 4, !tbaa !0
  %sub425 = add nsw i32 %118, -12
  %idxprom426 = sext i32 %sub425 to i64
  %arrayidx427 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom426
  %119 = load i32* %arrayidx427, align 4, !tbaa !0
  switch i32 %119, label %if.end452 [
    i32 1, label %cond.false444
    i32 11, label %cond.false444
  ]

cond.false444:                                    ; preds = %if.end424, %if.end424
  %120 = load i32* %score, align 4, !tbaa !0
  %add437 = add nsw i32 %120, 35
  store i32 %add437, i32* %score, align 4, !tbaa !0
  %call446 = call i32 @is_attacked(i32 %sub425, i32 1) #2
  %tobool447 = icmp eq i32 %call446, 0
  br i1 %tobool447, label %if.end452, label %if.then448

if.then448:                                       ; preds = %cond.false444
  %shr449 = lshr i32 150, %wdev_dscale.1
  %121 = load i32* %score, align 4, !tbaa !0
  %add450 = add nsw i32 %121, %shr449
  store i32 %add450, i32* %score, align 4, !tbaa !0
  br label %if.end452

if.end452:                                        ; preds = %cond.false444, %if.end424, %if.then448
  %122 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 43), align 4, !tbaa !0
  %cmp453 = icmp eq i32 %122, 1
  %123 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !tbaa !0
  %cmp456 = icmp eq i32 %123, 1
  %or.cond883 = or i1 %cmp453, %cmp456
  %cmp459 = icmp eq i32 %123, 2
  %or.cond884 = or i1 %or.cond883, %cmp459
  %or.cond884.not = xor i1 %or.cond884, true
  %cmp462 = icmp eq i32 %123, 0
  %or.cond893 = or i1 %cmp462, %or.cond884.not
  br i1 %or.cond893, label %if.end485, label %cond.false465

cond.false465:                                    ; preds = %if.end452
  %call466 = call i32 @is_attacked(i32 54, i32 0) #2
  %tobool467 = icmp eq i32 %call466, 0
  br i1 %tobool467, label %if.end485, label %if.then468

if.then468:                                       ; preds = %cond.false465
  %124 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 43), align 4, !tbaa !0
  %cmp469 = icmp eq i32 %124, 1
  br i1 %cmp469, label %if.then471, label %if.end473

if.then471:                                       ; preds = %if.then468
  %125 = load i32* %score, align 4, !tbaa !0
  %add472 = add nsw i32 %125, 10
  store i32 %add472, i32* %score, align 4, !tbaa !0
  br label %if.end473

if.end473:                                        ; preds = %if.then471, %if.then468
  %126 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !tbaa !0
  switch i32 %126, label %if.end485 [
    i32 1, label %if.then476
    i32 2, label %if.then481
  ]

if.then476:                                       ; preds = %if.end473
  %127 = load i32* %score, align 4, !tbaa !0
  %add477 = add nsw i32 %127, 20
  store i32 %add477, i32* %score, align 4, !tbaa !0
  br label %if.end485

if.then481:                                       ; preds = %if.end473
  %128 = load i32* %score, align 4, !tbaa !0
  %sub482 = add nsw i32 %128, -15
  store i32 %sub482, i32* %score, align 4, !tbaa !0
  br label %if.end485

if.end485:                                        ; preds = %if.end473, %cond.false465, %if.end452, %if.then476, %if.then481
  %129 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 103), align 4, !tbaa !0
  %cmp486 = icmp eq i32 %129, 2
  %130 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !tbaa !0
  %cmp489 = icmp eq i32 %130, 2
  %or.cond885 = or i1 %cmp486, %cmp489
  %cmp492 = icmp eq i32 %130, 1
  %or.cond886 = or i1 %or.cond885, %cmp492
  %or.cond886.not = xor i1 %or.cond886, true
  %cmp495 = icmp eq i32 %130, 0
  %or.cond894 = or i1 %cmp495, %or.cond886.not
  br i1 %or.cond894, label %if.end518, label %cond.false498

cond.false498:                                    ; preds = %if.end485
  %call499 = call i32 @is_attacked(i32 90, i32 1) #2
  %tobool500 = icmp eq i32 %call499, 0
  br i1 %tobool500, label %if.end518, label %if.then501

if.then501:                                       ; preds = %cond.false498
  %131 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 103), align 4, !tbaa !0
  %cmp502 = icmp eq i32 %131, 2
  br i1 %cmp502, label %if.then504, label %if.end506

if.then504:                                       ; preds = %if.then501
  %132 = load i32* %score, align 4, !tbaa !0
  %sub505 = add nsw i32 %132, -10
  store i32 %sub505, i32* %score, align 4, !tbaa !0
  br label %if.end506

if.end506:                                        ; preds = %if.then504, %if.then501
  %133 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !tbaa !0
  switch i32 %133, label %if.end518 [
    i32 2, label %if.then509
    i32 1, label %if.then514
  ]

if.then509:                                       ; preds = %if.end506
  %134 = load i32* %score, align 4, !tbaa !0
  %sub510 = add nsw i32 %134, -20
  store i32 %sub510, i32* %score, align 4, !tbaa !0
  br label %if.end518

if.then514:                                       ; preds = %if.end506
  %135 = load i32* %score, align 4, !tbaa !0
  %add515 = add nsw i32 %135, 15
  store i32 %add515, i32* %score, align 4, !tbaa !0
  br label %if.end518

if.end518:                                        ; preds = %if.end506, %cond.false498, %if.end485, %if.then509, %if.then514
  %136 = load i32* @bking_loc, align 4, !tbaa !0
  %idxprom519 = sext i32 %136 to i64
  %arrayidx520 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom519
  %137 = load i32* %arrayidx520, align 4, !tbaa !0
  %cmp521 = icmp eq i32 %137, 0
  br i1 %cmp521, label %if.else530, label %cond.false524

cond.false524:                                    ; preds = %if.end518
  %call525 = call i32 @is_attacked(i32 %136, i32 1) #2
  %tobool526 = icmp eq i32 %call525, 0
  br i1 %tobool526, label %if.else530, label %if.then527

if.then527:                                       ; preds = %cond.false524
  %shr528 = lshr i32 50, %wdev_dscale.1
  %138 = load i32* %score, align 4, !tbaa !0
  %add529 = add nsw i32 %138, %shr528
  store i32 %add529, i32* %score, align 4, !tbaa !0
  br label %if.end543

if.else530:                                       ; preds = %cond.false524, %if.end518
  %139 = load i32* @wking_loc, align 4, !tbaa !0
  %idxprom531 = sext i32 %139 to i64
  %arrayidx532 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom531
  %140 = load i32* %arrayidx532, align 4, !tbaa !0
  %cmp533 = icmp eq i32 %140, 0
  br i1 %cmp533, label %if.end543, label %cond.false536

cond.false536:                                    ; preds = %if.else530
  %call537 = call i32 @is_attacked(i32 %139, i32 0) #2
  %tobool538 = icmp eq i32 %call537, 0
  br i1 %tobool538, label %if.end543, label %if.then539

if.then539:                                       ; preds = %cond.false536
  %shr540 = lshr i32 50, %bdev_dscale.0
  %141 = load i32* %score, align 4, !tbaa !0
  %sub541 = sub nsw i32 %141, %shr540
  store i32 %sub541, i32* %score, align 4, !tbaa !0
  br label %if.end543

if.end543:                                        ; preds = %cond.false536, %if.else530, %if.then539, %if.then527
  %142 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4, !tbaa !0
  %cmp544 = icmp eq i32 %142, 4
  br i1 %cmp544, label %cond.false551, label %if.end567

cond.false551:                                    ; preds = %if.end543
  %143 = load i32* %score, align 4, !tbaa !0
  %sub547 = add nsw i32 %143, -20
  store i32 %sub547, i32* %score, align 4, !tbaa !0
  %call552 = call i32 @is_attacked(i32 44, i32 0) #2
  %tobool553 = icmp eq i32 %call552, 0
  br i1 %tobool553, label %if.end556, label %if.then554

if.then554:                                       ; preds = %cond.false551
  %144 = load i32* %score, align 4, !tbaa !0
  %sub555 = add nsw i32 %144, -40
  store i32 %sub555, i32* %score, align 4, !tbaa !0
  br label %if.end556

if.end556:                                        ; preds = %cond.false551, %if.then554
  %145 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 32), align 4, !tbaa !0
  %cmp557 = icmp eq i32 %145, 7
  br i1 %cmp557, label %if.then559, label %if.end561

if.then559:                                       ; preds = %if.end556
  %146 = load i32* %score, align 4, !tbaa !0
  %add560 = add nsw i32 %146, 10
  store i32 %add560, i32* %score, align 4, !tbaa !0
  br label %if.end561

if.end561:                                        ; preds = %if.then559, %if.end556
  %147 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !tbaa !0
  %cmp562 = icmp eq i32 %147, 11
  br i1 %cmp562, label %if.then564, label %if.end567

if.then564:                                       ; preds = %if.end561
  %148 = load i32* %score, align 4, !tbaa !0
  %add565 = add nsw i32 %148, 10
  store i32 %add565, i32* %score, align 4, !tbaa !0
  br label %if.end567

if.end567:                                        ; preds = %if.end561, %if.end543, %if.then564
  %149 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4, !tbaa !0
  %cmp568 = icmp eq i32 %149, 3
  br i1 %cmp568, label %cond.false575, label %if.end591

cond.false575:                                    ; preds = %if.end567
  %150 = load i32* %score, align 4, !tbaa !0
  %add571 = add nsw i32 %150, 20
  store i32 %add571, i32* %score, align 4, !tbaa !0
  %call576 = call i32 @is_attacked(i32 104, i32 1) #2
  %tobool577 = icmp eq i32 %call576, 0
  br i1 %tobool577, label %if.end580, label %if.then578

if.then578:                                       ; preds = %cond.false575
  %151 = load i32* %score, align 4, !tbaa !0
  %add579 = add nsw i32 %151, 40
  store i32 %add579, i32* %score, align 4, !tbaa !0
  br label %if.end580

if.end580:                                        ; preds = %cond.false575, %if.then578
  %152 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 116), align 4, !tbaa !0
  %cmp581 = icmp eq i32 %152, 8
  br i1 %cmp581, label %if.then583, label %if.end585

if.then583:                                       ; preds = %if.end580
  %153 = load i32* %score, align 4, !tbaa !0
  %sub584 = add nsw i32 %153, -10
  store i32 %sub584, i32* %score, align 4, !tbaa !0
  br label %if.end585

if.end585:                                        ; preds = %if.then583, %if.end580
  %154 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !tbaa !0
  %cmp586 = icmp eq i32 %154, 12
  br i1 %cmp586, label %if.then588, label %if.end591

if.then588:                                       ; preds = %if.end585
  %155 = load i32* %score, align 4, !tbaa !0
  %sub589 = add nsw i32 %155, -10
  store i32 %sub589, i32* %score, align 4, !tbaa !0
  br label %if.end591

if.end591:                                        ; preds = %if.end585, %if.end567, %if.then588
  %156 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 57), align 4, !tbaa !0
  %cmp592 = icmp eq i32 %156, 12
  %157 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4, !tbaa !0
  %cmp595 = icmp ne i32 %157, 1
  %or.cond887 = and i1 %cmp592, %cmp595
  br i1 %or.cond887, label %if.then597, label %if.end615

if.then597:                                       ; preds = %if.end591
  %158 = load i32* %score, align 4, !tbaa !0
  %sub598 = add nsw i32 %158, -20
  store i32 %sub598, i32* %score, align 4, !tbaa !0
  %cmp599 = icmp eq i32 %157, 4
  br i1 %cmp599, label %if.then601, label %if.end615

if.then601:                                       ; preds = %if.then597
  %sub602 = add nsw i32 %158, -60
  store i32 %sub602, i32* %score, align 4, !tbaa !0
  %159 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !tbaa !0
  %cmp603 = icmp eq i32 %159, 5
  %160 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 32), align 4, !tbaa !0
  %cmp606 = icmp eq i32 %160, 5
  %or.cond888 = or i1 %cmp603, %cmp606
  %161 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4, !tbaa !0
  %cmp609 = icmp eq i32 %161, 5
  %or.cond889 = or i1 %or.cond888, %cmp609
  br i1 %or.cond889, label %if.then611, label %if.end615

if.then611:                                       ; preds = %if.then601
  %sub612 = add nsw i32 %158, -140
  store i32 %sub612, i32* %score, align 4, !tbaa !0
  br label %if.end615

if.end615:                                        ; preds = %if.then601, %if.then597, %if.end591, %if.then611
  %162 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 93), align 4, !tbaa !0
  %cmp616 = icmp eq i32 %162, 11
  %163 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4, !tbaa !0
  %cmp619 = icmp ne i32 %163, 2
  %or.cond890 = and i1 %cmp616, %cmp619
  br i1 %or.cond890, label %if.then621, label %if.end640

if.then621:                                       ; preds = %if.end615
  %164 = load i32* %score, align 4, !tbaa !0
  %add622 = add nsw i32 %164, 20
  store i32 %add622, i32* %score, align 4, !tbaa !0
  %cmp623 = icmp eq i32 %163, 3
  br i1 %cmp623, label %if.then625, label %if.end640

if.then625:                                       ; preds = %if.then621
  %add626 = add nsw i32 %164, 60
  store i32 %add626, i32* %score, align 4, !tbaa !0
  %165 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !tbaa !0
  %cmp627 = icmp eq i32 %165, 6
  %166 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 116), align 4, !tbaa !0
  %cmp630 = icmp eq i32 %166, 6
  %or.cond891 = or i1 %cmp627, %cmp630
  %167 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4, !tbaa !0
  %cmp633 = icmp eq i32 %167, 6
  %or.cond892 = or i1 %or.cond891, %cmp633
  br i1 %or.cond892, label %if.then635, label %if.end640

if.then635:                                       ; preds = %if.then625
  %add636 = add nsw i32 %164, 140
  store i32 %add636, i32* %score, align 4, !tbaa !0
  br label %if.end640

if.end640:                                        ; preds = %if.end219, %if.end615, %if.then635, %if.then625, %if.then621
  %168 = load i32* @cfg_attackeval, align 4, !tbaa !0
  %tobool641 = icmp eq i32 %168, 0
  br i1 %tobool641, label %if.end640.if.end864_crit_edge, label %if.then642

if.end640.if.end864_crit_edge:                    ; preds = %if.end640
  %.pre976 = load i32* @white_hand_eval, align 4, !tbaa !0
  %.pre977 = load i32* %score, align 4, !tbaa !0
  br label %if.end864

if.then642:                                       ; preds = %if.end640
  %169 = load i32* @wking_loc, align 4, !tbaa !0
  %sub643 = add nsw i32 %169, -13
  %idxprom644 = sext i32 %sub643 to i64
  %arrayidx645 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom644
  %170 = load i32* %arrayidx645, align 4, !tbaa !0
  %cmp646 = icmp eq i32 %170, 0
  br i1 %cmp646, label %cond.end, label %cond.false649

cond.false649:                                    ; preds = %if.then642
  %call651 = call i32 @nk_attacked(i32 %sub643, i32 0) #2
  %.pre = load i32* @wking_loc, align 4, !tbaa !0
  br label %cond.end

cond.end:                                         ; preds = %if.then642, %cond.false649
  %171 = phi i32 [ %.pre, %cond.false649 ], [ %169, %if.then642 ]
  %cond = phi i32 [ %call651, %cond.false649 ], [ 0, %if.then642 ]
  %sub653 = add nsw i32 %171, -12
  %idxprom654 = sext i32 %sub653 to i64
  %arrayidx655 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom654
  %172 = load i32* %arrayidx655, align 4, !tbaa !0
  %cmp656 = icmp eq i32 %172, 0
  br i1 %cmp656, label %cond.end662, label %cond.false659

cond.false659:                                    ; preds = %cond.end
  %call661 = call i32 @nk_attacked(i32 %sub653, i32 0) #2
  %.pre961 = load i32* @wking_loc, align 4, !tbaa !0
  br label %cond.end662

cond.end662:                                      ; preds = %cond.end, %cond.false659
  %173 = phi i32 [ %.pre961, %cond.false659 ], [ %171, %cond.end ]
  %cond663 = phi i32 [ %call661, %cond.false659 ], [ 0, %cond.end ]
  %add664 = add i32 %cond663, %cond
  %sub665 = add nsw i32 %173, -11
  %idxprom666 = sext i32 %sub665 to i64
  %arrayidx667 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom666
  %174 = load i32* %arrayidx667, align 4, !tbaa !0
  %cmp668 = icmp eq i32 %174, 0
  br i1 %cmp668, label %cond.end674, label %cond.false671

cond.false671:                                    ; preds = %cond.end662
  %call673 = call i32 @nk_attacked(i32 %sub665, i32 0) #2
  %.pre962 = load i32* @wking_loc, align 4, !tbaa !0
  br label %cond.end674

cond.end674:                                      ; preds = %cond.end662, %cond.false671
  %175 = phi i32 [ %.pre962, %cond.false671 ], [ %173, %cond.end662 ]
  %cond675 = phi i32 [ %call673, %cond.false671 ], [ 0, %cond.end662 ]
  %add676 = add i32 %add664, %cond675
  %sub677 = add nsw i32 %175, -1
  %idxprom678 = sext i32 %sub677 to i64
  %arrayidx679 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom678
  %176 = load i32* %arrayidx679, align 4, !tbaa !0
  %cmp680 = icmp eq i32 %176, 0
  br i1 %cmp680, label %cond.end686, label %cond.false683

cond.false683:                                    ; preds = %cond.end674
  %call685 = call i32 @nk_attacked(i32 %sub677, i32 0) #2
  %.pre963 = load i32* @wking_loc, align 4, !tbaa !0
  br label %cond.end686

cond.end686:                                      ; preds = %cond.end674, %cond.false683
  %177 = phi i32 [ %.pre963, %cond.false683 ], [ %175, %cond.end674 ]
  %cond687 = phi i32 [ %call685, %cond.false683 ], [ 0, %cond.end674 ]
  %add688 = add i32 %add676, %cond687
  %add689 = add nsw i32 %177, 1
  %idxprom690 = sext i32 %add689 to i64
  %arrayidx691 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom690
  %178 = load i32* %arrayidx691, align 4, !tbaa !0
  %cmp692 = icmp eq i32 %178, 0
  br i1 %cmp692, label %cond.end698, label %cond.false695

cond.false695:                                    ; preds = %cond.end686
  %call697 = call i32 @nk_attacked(i32 %add689, i32 0) #2
  %.pre964 = load i32* @wking_loc, align 4, !tbaa !0
  br label %cond.end698

cond.end698:                                      ; preds = %cond.end686, %cond.false695
  %179 = phi i32 [ %.pre964, %cond.false695 ], [ %177, %cond.end686 ]
  %cond699 = phi i32 [ %call697, %cond.false695 ], [ 0, %cond.end686 ]
  %add700 = add i32 %add688, %cond699
  %add701 = add nsw i32 %179, 11
  %idxprom702 = sext i32 %add701 to i64
  %arrayidx703 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom702
  %180 = load i32* %arrayidx703, align 4, !tbaa !0
  %cmp704 = icmp eq i32 %180, 0
  br i1 %cmp704, label %cond.end710, label %cond.false707

cond.false707:                                    ; preds = %cond.end698
  %call709 = call i32 @nk_attacked(i32 %add701, i32 0) #2
  %.pre965 = load i32* @wking_loc, align 4, !tbaa !0
  br label %cond.end710

cond.end710:                                      ; preds = %cond.end698, %cond.false707
  %181 = phi i32 [ %.pre965, %cond.false707 ], [ %179, %cond.end698 ]
  %cond711 = phi i32 [ %call709, %cond.false707 ], [ 0, %cond.end698 ]
  %add712 = add i32 %add700, %cond711
  %add713 = add nsw i32 %181, 12
  %idxprom714 = sext i32 %add713 to i64
  %arrayidx715 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom714
  %182 = load i32* %arrayidx715, align 4, !tbaa !0
  %cmp716 = icmp eq i32 %182, 0
  br i1 %cmp716, label %cond.end722, label %cond.false719

cond.false719:                                    ; preds = %cond.end710
  %call721 = call i32 @nk_attacked(i32 %add713, i32 0) #2
  %.pre966 = load i32* @wking_loc, align 4, !tbaa !0
  br label %cond.end722

cond.end722:                                      ; preds = %cond.end710, %cond.false719
  %183 = phi i32 [ %.pre966, %cond.false719 ], [ %181, %cond.end710 ]
  %cond723 = phi i32 [ %call721, %cond.false719 ], [ 0, %cond.end710 ]
  %add724 = add i32 %add712, %cond723
  %add725 = add nsw i32 %183, 13
  %idxprom726 = sext i32 %add725 to i64
  %arrayidx727 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom726
  %184 = load i32* %arrayidx727, align 4, !tbaa !0
  %cmp728 = icmp eq i32 %184, 0
  br i1 %cmp728, label %cond.end734, label %cond.false731

cond.false731:                                    ; preds = %cond.end722
  %call733 = call i32 @nk_attacked(i32 %add725, i32 0) #2
  br label %cond.end734

cond.end734:                                      ; preds = %cond.end722, %cond.false731
  %cond735 = phi i32 [ %call733, %cond.false731 ], [ 0, %cond.end722 ]
  %add736 = add i32 %add724, %cond735
  %185 = load i32* @black_hand_eval, align 4, !tbaa !0
  %cmp738 = icmp slt i32 %185, -1499
  br i1 %cmp738, label %if.end746, label %if.else741

if.else741:                                       ; preds = %cond.end734
  %div = sdiv i32 %185, -100
  %cmp742 = icmp sgt i32 %185, 99
  %186 = sext i32 %div to i64
  %phitmp = select i1 %cmp742, i64 0, i64 %186
  br label %if.end746

if.end746:                                        ; preds = %cond.end734, %if.else741
  %norm_black_hand_eval.0 = phi i64 [ %phitmp, %if.else741 ], [ 14, %cond.end734 ]
  %idxprom747 = sext i32 %add736 to i64
  %arrayidx750 = getelementptr inbounds [15 x [9 x i32]]* @ksafety_scaled, i64 0, i64 %norm_black_hand_eval.0, i64 %idxprom747
  %187 = load i32* %arrayidx750, align 4, !tbaa !0
  %188 = load i32* @bking_loc, align 4, !tbaa !0
  %sub752 = add nsw i32 %188, -13
  %idxprom753 = sext i32 %sub752 to i64
  %arrayidx754 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom753
  %189 = load i32* %arrayidx754, align 4, !tbaa !0
  %cmp755 = icmp eq i32 %189, 0
  br i1 %cmp755, label %cond.end761, label %cond.false758

cond.false758:                                    ; preds = %if.end746
  %call760 = call i32 @nk_attacked(i32 %sub752, i32 1) #2
  %.pre967 = load i32* @bking_loc, align 4, !tbaa !0
  br label %cond.end761

cond.end761:                                      ; preds = %if.end746, %cond.false758
  %190 = phi i32 [ %.pre967, %cond.false758 ], [ %188, %if.end746 ]
  %cond762 = phi i32 [ %call760, %cond.false758 ], [ 0, %if.end746 ]
  %sub764 = add nsw i32 %190, -12
  %idxprom765 = sext i32 %sub764 to i64
  %arrayidx766 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom765
  %191 = load i32* %arrayidx766, align 4, !tbaa !0
  %cmp767 = icmp eq i32 %191, 0
  br i1 %cmp767, label %cond.end773, label %cond.false770

cond.false770:                                    ; preds = %cond.end761
  %call772 = call i32 @nk_attacked(i32 %sub764, i32 1) #2
  %.pre968 = load i32* @bking_loc, align 4, !tbaa !0
  br label %cond.end773

cond.end773:                                      ; preds = %cond.end761, %cond.false770
  %192 = phi i32 [ %.pre968, %cond.false770 ], [ %190, %cond.end761 ]
  %cond774 = phi i32 [ %call772, %cond.false770 ], [ 0, %cond.end761 ]
  %add775 = add i32 %cond774, %cond762
  %sub776 = add nsw i32 %192, -11
  %idxprom777 = sext i32 %sub776 to i64
  %arrayidx778 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom777
  %193 = load i32* %arrayidx778, align 4, !tbaa !0
  %cmp779 = icmp eq i32 %193, 0
  br i1 %cmp779, label %cond.end785, label %cond.false782

cond.false782:                                    ; preds = %cond.end773
  %call784 = call i32 @nk_attacked(i32 %sub776, i32 1) #2
  %.pre969 = load i32* @bking_loc, align 4, !tbaa !0
  br label %cond.end785

cond.end785:                                      ; preds = %cond.end773, %cond.false782
  %194 = phi i32 [ %.pre969, %cond.false782 ], [ %192, %cond.end773 ]
  %cond786 = phi i32 [ %call784, %cond.false782 ], [ 0, %cond.end773 ]
  %add787 = add i32 %add775, %cond786
  %sub788 = add nsw i32 %194, -1
  %idxprom789 = sext i32 %sub788 to i64
  %arrayidx790 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom789
  %195 = load i32* %arrayidx790, align 4, !tbaa !0
  %cmp791 = icmp eq i32 %195, 0
  br i1 %cmp791, label %cond.end797, label %cond.false794

cond.false794:                                    ; preds = %cond.end785
  %call796 = call i32 @nk_attacked(i32 %sub788, i32 1) #2
  %.pre970 = load i32* @bking_loc, align 4, !tbaa !0
  br label %cond.end797

cond.end797:                                      ; preds = %cond.end785, %cond.false794
  %196 = phi i32 [ %.pre970, %cond.false794 ], [ %194, %cond.end785 ]
  %cond798 = phi i32 [ %call796, %cond.false794 ], [ 0, %cond.end785 ]
  %add799 = add i32 %add787, %cond798
  %add800 = add nsw i32 %196, 1
  %idxprom801 = sext i32 %add800 to i64
  %arrayidx802 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom801
  %197 = load i32* %arrayidx802, align 4, !tbaa !0
  %cmp803 = icmp eq i32 %197, 0
  br i1 %cmp803, label %cond.end809, label %cond.false806

cond.false806:                                    ; preds = %cond.end797
  %call808 = call i32 @nk_attacked(i32 %add800, i32 1) #2
  %.pre971 = load i32* @bking_loc, align 4, !tbaa !0
  br label %cond.end809

cond.end809:                                      ; preds = %cond.end797, %cond.false806
  %198 = phi i32 [ %.pre971, %cond.false806 ], [ %196, %cond.end797 ]
  %cond810 = phi i32 [ %call808, %cond.false806 ], [ 0, %cond.end797 ]
  %add811 = add i32 %add799, %cond810
  %add812 = add nsw i32 %198, 11
  %idxprom813 = sext i32 %add812 to i64
  %arrayidx814 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom813
  %199 = load i32* %arrayidx814, align 4, !tbaa !0
  %cmp815 = icmp eq i32 %199, 0
  br i1 %cmp815, label %cond.end821, label %cond.false818

cond.false818:                                    ; preds = %cond.end809
  %call820 = call i32 @nk_attacked(i32 %add812, i32 1) #2
  %.pre972 = load i32* @bking_loc, align 4, !tbaa !0
  br label %cond.end821

cond.end821:                                      ; preds = %cond.end809, %cond.false818
  %200 = phi i32 [ %.pre972, %cond.false818 ], [ %198, %cond.end809 ]
  %cond822 = phi i32 [ %call820, %cond.false818 ], [ 0, %cond.end809 ]
  %add823 = add i32 %add811, %cond822
  %add824 = add nsw i32 %200, 12
  %idxprom825 = sext i32 %add824 to i64
  %arrayidx826 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom825
  %201 = load i32* %arrayidx826, align 4, !tbaa !0
  %cmp827 = icmp eq i32 %201, 0
  br i1 %cmp827, label %cond.end833, label %cond.false830

cond.false830:                                    ; preds = %cond.end821
  %call832 = call i32 @nk_attacked(i32 %add824, i32 1) #2
  %.pre973 = load i32* @bking_loc, align 4, !tbaa !0
  br label %cond.end833

cond.end833:                                      ; preds = %cond.end821, %cond.false830
  %202 = phi i32 [ %.pre973, %cond.false830 ], [ %200, %cond.end821 ]
  %cond834 = phi i32 [ %call832, %cond.false830 ], [ 0, %cond.end821 ]
  %add835 = add i32 %add823, %cond834
  %add836 = add nsw i32 %202, 13
  %idxprom837 = sext i32 %add836 to i64
  %arrayidx838 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom837
  %203 = load i32* %arrayidx838, align 4, !tbaa !0
  %cmp839 = icmp eq i32 %203, 0
  br i1 %cmp839, label %cond.end845, label %cond.false842

cond.false842:                                    ; preds = %cond.end833
  %call844 = call i32 @nk_attacked(i32 %add836, i32 1) #2
  br label %cond.end845

cond.end845:                                      ; preds = %cond.end833, %cond.false842
  %cond846 = phi i32 [ %call844, %cond.false842 ], [ 0, %cond.end833 ]
  %add847 = add i32 %add835, %cond846
  %204 = load i32* @white_hand_eval, align 4, !tbaa !0
  %cmp849 = icmp sgt i32 %204, 1499
  br i1 %cmp849, label %if.end857, label %if.else852

if.else852:                                       ; preds = %cond.end845
  %div848 = sdiv i32 %204, 100
  %cmp853 = icmp slt i32 %204, -99
  %205 = sext i32 %div848 to i64
  %phitmp957 = select i1 %cmp853, i64 0, i64 %205
  br label %if.end857

if.end857:                                        ; preds = %cond.end845, %if.else852
  %norm_white_hand_eval.0 = phi i64 [ %phitmp957, %if.else852 ], [ 14, %cond.end845 ]
  %idxprom858 = sext i32 %add847 to i64
  %arrayidx861 = getelementptr inbounds [15 x [9 x i32]]* @ksafety_scaled, i64 0, i64 %norm_white_hand_eval.0, i64 %idxprom858
  %206 = load i32* %arrayidx861, align 4, !tbaa !0
  %add862 = sub i32 %206, %187
  %207 = load i32* %score, align 4, !tbaa !0
  %add863 = add nsw i32 %add862, %207
  store i32 %add863, i32* %score, align 4, !tbaa !0
  br label %if.end864

if.end864:                                        ; preds = %if.end640.if.end864_crit_edge, %if.end857
  %208 = phi i32 [ %.pre977, %if.end640.if.end864_crit_edge ], [ %add863, %if.end857 ]
  %209 = phi i32 [ %.pre976, %if.end640.if.end864_crit_edge ], [ %204, %if.end857 ]
  %210 = load i32* @black_hand_eval, align 4, !tbaa !0
  %add865 = add nsw i32 %210, %209
  %add866 = add nsw i32 %add865, %208
  store i32 %add866, i32* %score, align 4, !tbaa !0
  call void @storeECache(i32 %add866) #2
  %211 = load i32* @white_to_move, align 4, !tbaa !0
  %cmp867 = icmp eq i32 %211, 1
  %212 = load i32* %score, align 4, !tbaa !0
  %sub871 = sub nsw i32 0, %212
  %.sub871 = select i1 %cmp867, i32 %212, i32 %sub871
  br label %return

return:                                           ; preds = %if.end864, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ %call7, %if.then6 ], [ %.sub871, %if.end864 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @std_eval(i32, i32) #1

; Function Attrs: optsize
declare i32 @suicide_eval() #1

; Function Attrs: optsize
declare i32 @losers_eval() #1

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #1

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #1

; Function Attrs: optsize
declare i32 @nk_attacked(i32, i32) #1

; Function Attrs: optsize
declare void @storeECache(i32) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
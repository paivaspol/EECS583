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
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !9), !dbg !85
  br label %for.cond1.preheader, !dbg !85

for.cond1.preheader:                              ; preds = %for.inc23, %entry
  %indvars.iv326 = phi i64 [ 0, %entry ], [ %indvars.iv.next327, %for.inc23 ]
  %0 = trunc i64 %indvars.iv326 to i32, !dbg !87
  %and = and i32 %0, 7, !dbg !87
  %shr = ashr i32 %0, 3, !dbg !91
  %arrayidx10 = getelementptr inbounds [64 x i32]* @upscale, i64 0, i64 %indvars.iv326, !dbg !92
  %1 = load i32* %arrayidx10, align 4, !dbg !92, !tbaa !93
  %idxprom11 = sext i32 %1 to i64, !dbg !92
  br label %for.body3, !dbg !96

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv322 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next323, %for.body3 ]
  %2 = trunc i64 %indvars.iv322 to i32, !dbg !87
  %and4 = and i32 %2, 7, !dbg !87
  %sub = sub nsw i32 %and, %and4, !dbg !87
  %ispos310 = icmp sgt i32 %sub, -1, !dbg !87
  %neg311 = sub i32 0, %sub, !dbg !87
  %3 = select i1 %ispos310, i32 %sub, i32 %neg311, !dbg !87
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !12), !dbg !87
  %shr5 = ashr i32 %2, 3, !dbg !91
  %sub6 = sub nsw i32 %shr, %shr5, !dbg !91
  %ispos312 = icmp sgt i32 %sub6, -1, !dbg !91
  %neg313 = sub i32 0, %sub6, !dbg !91
  %4 = select i1 %ispos312, i32 %sub6, i32 %neg313, !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !13), !dbg !91
  %add = add nsw i32 %3, %4, !dbg !92
  %arrayidx = getelementptr inbounds [64 x i32]* @upscale, i64 0, i64 %indvars.iv322, !dbg !92
  %5 = load i32* %arrayidx, align 4, !dbg !92, !tbaa !93
  %idxprom8 = sext i32 %5 to i64, !dbg !92
  %arrayidx13 = getelementptr inbounds [144 x [144 x i32]]* @rookdistance, i64 0, i64 %idxprom11, i64 %idxprom8, !dbg !92
  store i32 %add, i32* %arrayidx13, align 4, !dbg !92, !tbaa !93
  %cmp14 = icmp sgt i32 %3, %4, !dbg !97
  %cond = select i1 %cmp14, i32 %3, i32 %4, !dbg !97
  %arrayidx22 = getelementptr inbounds [144 x [144 x i32]]* @distance, i64 0, i64 %idxprom11, i64 %idxprom8, !dbg !97
  store i32 %cond, i32* %arrayidx22, align 4, !dbg !97, !tbaa !93
  %indvars.iv.next323 = add i64 %indvars.iv322, 1, !dbg !96
  %lftr.wideiv324 = trunc i64 %indvars.iv.next323 to i32, !dbg !96
  %exitcond325 = icmp eq i32 %lftr.wideiv324, 64, !dbg !96
  br i1 %exitcond325, label %for.inc23, label %for.body3, !dbg !96

for.inc23:                                        ; preds = %for.body3
  %indvars.iv.next327 = add i64 %indvars.iv326, 1, !dbg !85
  %lftr.wideiv328 = trunc i64 %indvars.iv.next327 to i32, !dbg !85
  %exitcond329 = icmp eq i32 %lftr.wideiv328, 64, !dbg !85
  br i1 %exitcond329, label %for.cond29.preheader, label %for.cond1.preheader, !dbg !85

for.cond29.preheader:                             ; preds = %for.inc23, %for.inc218
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %for.inc218 ], [ 0, %for.inc23 ]
  %arrayidx33 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %indvars.iv318, !dbg !98
  %6 = load i32* %arrayidx33, align 4, !dbg !98, !tbaa !93
  %arrayidx39 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %indvars.iv318, !dbg !98
  %7 = load i32* %arrayidx39, align 4, !dbg !98, !tbaa !93
  br label %for.body31, !dbg !103

for.body31:                                       ; preds = %for.body31, %for.cond29.preheader
  %indvars.iv = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next, %for.body31 ]
  %arrayidx35 = getelementptr inbounds [144 x i32]* @Xrank, i64 0, i64 %indvars.iv, !dbg !98
  %8 = load i32* %arrayidx35, align 4, !dbg !98, !tbaa !93
  %sub36 = sub nsw i32 %6, %8, !dbg !98
  %ispos = icmp sgt i32 %sub36, -1, !dbg !98
  %neg = sub i32 0, %sub36, !dbg !98
  %9 = select i1 %ispos, i32 %sub36, i32 %neg, !dbg !98
  %arrayidx41 = getelementptr inbounds [144 x i32]* @Xfile, i64 0, i64 %indvars.iv, !dbg !98
  %10 = load i32* %arrayidx41, align 4, !dbg !98, !tbaa !93
  %sub42 = sub nsw i32 %7, %10, !dbg !98
  %ispos282 = icmp sgt i32 %sub42, -1, !dbg !98
  %neg283 = sub i32 0, %sub42, !dbg !98
  %11 = select i1 %ispos282, i32 %sub42, i32 %neg283, !dbg !98
  %cmp44 = icmp sgt i32 %9, %11, !dbg !98
  %sub36.sub42 = select i1 %cmp44, i32 %sub36, i32 %sub42, !dbg !98
  %ispos284 = icmp sgt i32 %sub36.sub42, -1, !dbg !98
  %neg285 = sub i32 0, %sub36.sub42, !dbg !98
  %12 = select i1 %ispos284, i32 %sub36.sub42, i32 %neg285, !dbg !98
  %idxprom61 = sext i32 %12 to i64, !dbg !98
  %arrayidx62 = getelementptr inbounds [9 x i32]* @pre_p_tropism, i64 0, i64 %idxprom61, !dbg !98
  %13 = load i32* %arrayidx62, align 4, !dbg !98, !tbaa !93
  %conv = trunc i32 %13 to i8, !dbg !98
  %arrayidx66 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv, !dbg !98
  store i8 %conv, i8* %arrayidx66, align 1, !dbg !98, !tbaa !94
  %arrayidx98 = getelementptr inbounds [9 x i32]* @pre_b_tropism, i64 0, i64 %idxprom61, !dbg !104
  %14 = load i32* %arrayidx98, align 4, !dbg !104, !tbaa !93
  %conv99 = trunc i32 %14 to i8, !dbg !104
  %arrayidx103 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv, !dbg !104
  store i8 %conv99, i8* %arrayidx103, align 1, !dbg !104, !tbaa !94
  %arrayidx135 = getelementptr inbounds [9 x i32]* @pre_n_tropism, i64 0, i64 %idxprom61, !dbg !105
  %15 = load i32* %arrayidx135, align 4, !dbg !105, !tbaa !93
  %conv136 = trunc i32 %15 to i8, !dbg !105
  %arrayidx140 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv, !dbg !105
  store i8 %conv136, i8* %arrayidx140, align 1, !dbg !105, !tbaa !94
  %arrayidx172 = getelementptr inbounds [9 x i32]* @pre_r_tropism, i64 0, i64 %idxprom61, !dbg !106
  %16 = load i32* %arrayidx172, align 4, !dbg !106, !tbaa !93
  %conv173 = trunc i32 %16 to i8, !dbg !106
  %arrayidx177 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv, !dbg !106
  store i8 %conv173, i8* %arrayidx177, align 1, !dbg !106, !tbaa !94
  %arrayidx209 = getelementptr inbounds [9 x i32]* @pre_q_tropism, i64 0, i64 %idxprom61, !dbg !107
  %17 = load i32* %arrayidx209, align 4, !dbg !107, !tbaa !93
  %conv210 = trunc i32 %17 to i8, !dbg !107
  %arrayidx214 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %indvars.iv318, i64 %indvars.iv, !dbg !107
  store i8 %conv210, i8* %arrayidx214, align 1, !dbg !107, !tbaa !94
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !103
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !103
  %exitcond = icmp eq i32 %lftr.wideiv, 144, !dbg !103
  br i1 %exitcond, label %for.inc218, label %for.body31, !dbg !103

for.inc218:                                       ; preds = %for.body31
  %indvars.iv.next319 = add i64 %indvars.iv318, 1, !dbg !108
  %lftr.wideiv320 = trunc i64 %indvars.iv.next319 to i32, !dbg !108
  %exitcond321 = icmp eq i32 %lftr.wideiv320, 144, !dbg !108
  br i1 %exitcond321, label %for.end220, label %for.cond29.preheader, !dbg !108

for.end220:                                       ; preds = %for.inc218
  ret void, !dbg !109
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize uwtable
define i32 @eval(i32 %alpha, i32 %beta) #0 {
entry:
  %score = alloca i32, align 4
  %in_cache = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32 %alpha}, i64 0, metadata !18), !dbg !110
  call void @llvm.dbg.value(metadata !{i32 %beta}, i64 0, metadata !19), !dbg !110
  call void @llvm.dbg.declare(metadata !{i32* %score}, metadata !23), !dbg !111
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !23), !dbg !111
  store i32 0, i32* %score, align 4, !dbg !111, !tbaa !93
  call void @llvm.dbg.declare(metadata !{i32* %in_cache}, metadata !24), !dbg !112
  %0 = load i32* @Variant, align 4, !dbg !113, !tbaa !93
  switch i32 %0, label %if.end9 [
    i32 2, label %if.then
    i32 3, label %if.then2
    i32 4, label %if.then6
  ], !dbg !113

if.then:                                          ; preds = %entry
  %call = call i32 @std_eval(i32 %alpha, i32 %beta) #3, !dbg !114
  br label %return, !dbg !114

if.then2:                                         ; preds = %entry
  %call3 = call i32 @suicide_eval() #3, !dbg !116
  br label %return, !dbg !116

if.then6:                                         ; preds = %entry
  %call7 = call i32 @losers_eval() #3, !dbg !118
  br label %return, !dbg !118

if.end9:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !24), !dbg !120
  store i32 0, i32* %in_cache, align 4, !dbg !120, !tbaa !93
  call void @checkECache(i32* %score, i32* %in_cache) #3, !dbg !121
  call void @llvm.dbg.value(metadata !{i32* %in_cache}, i64 0, metadata !24), !dbg !122
  %1 = load i32* %in_cache, align 4, !dbg !122, !tbaa !93
  %tobool = icmp eq i32 %1, 0, !dbg !122
  br i1 %tobool, label %if.end14, label %if.then10, !dbg !122

if.then10:                                        ; preds = %if.end9
  %2 = load i32* @white_to_move, align 4, !dbg !123, !tbaa !93
  %cmp11 = icmp eq i32 %2, 1, !dbg !123
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !123
  %3 = load i32* %score, align 4, !dbg !123, !tbaa !93
  %sub = sub nsw i32 0, %3, !dbg !125
  %.sub = select i1 %cmp11, i32 %3, i32 %sub, !dbg !123
  ret i32 %.sub, !dbg !123

if.end14:                                         ; preds = %if.end9
  %4 = load i32* @cfg_devscale, align 4, !dbg !126, !tbaa !93
  %tobool15 = icmp eq i32 %4, 0, !dbg !126
  br i1 %tobool15, label %if.end47, label %if.then16, !dbg !126

if.then16:                                        ; preds = %if.end14
  %5 = load i32* @white_to_move, align 4, !dbg !127, !tbaa !93
  %6 = load i32* @comp_color, align 4, !dbg !127, !tbaa !93
  %cmp17 = icmp eq i32 %5, %6, !dbg !127
  br i1 %cmp17, label %if.then31, label %if.then18, !dbg !127

if.then18:                                        ; preds = %if.then16
  %7 = load i32* @white_hand_eval, align 4, !dbg !129, !tbaa !93
  %cmp19 = icmp slt i32 %7, 201, !dbg !129
  %8 = load i32* @Variant, align 4, !dbg !129, !tbaa !93
  %cmp20 = icmp ne i32 %8, 1, !dbg !129
  %or.cond = and i1 %cmp19, %cmp20, !dbg !129
  br i1 %or.cond, label %if.end47, label %if.end29.thread982, !dbg !129

if.end29.thread982:                               ; preds = %if.then18
  %not.cmp23983 = icmp slt i32 %7, 700, !dbg !131
  %.984 = zext i1 %not.cmp23983 to i32, !dbg !131
  br label %if.end47, !dbg !133

if.then31:                                        ; preds = %if.then16
  %9 = load i32* @black_hand_eval, align 4, !dbg !134, !tbaa !93
  %sub32 = sub nsw i32 0, %9, !dbg !134
  %cmp33 = icmp slt i32 %sub32, 201, !dbg !134
  %10 = load i32* @Variant, align 4, !dbg !134, !tbaa !93
  %cmp35 = icmp ne i32 %10, 1, !dbg !134
  %or.cond872 = and i1 %cmp33, %cmp35, !dbg !134
  br i1 %or.cond872, label %if.end47, label %if.else37, !dbg !134

if.else37:                                        ; preds = %if.then31
  %not.cmp39 = icmp slt i32 %sub32, 700, !dbg !136
  %.956 = zext i1 %not.cmp39 to i32, !dbg !136
  br label %if.end47, !dbg !136

if.end47:                                         ; preds = %if.then18, %if.end29.thread982, %if.end14, %if.else37, %if.then31
  %wdev_dscale.1 = phi i32 [ 0, %if.then31 ], [ 0, %if.else37 ], [ 0, %if.end14 ], [ %.984, %if.end29.thread982 ], [ 2, %if.then18 ]
  %bdev_dscale.0 = phi i32 [ 2, %if.then31 ], [ %.956, %if.else37 ], [ 0, %if.end14 ], [ 0, %if.end29.thread982 ], [ 0, %if.then18 ]
  call void @llvm.dbg.value(metadata !138, i64 0, metadata !21), !dbg !139
  call void @llvm.dbg.value(metadata !138, i64 0, metadata !22), !dbg !139
  %11 = load i32* @piece_count, align 4, !dbg !139, !tbaa !93
  %cmp48958 = icmp slt i32 %11, 1, !dbg !139
  br i1 %cmp48958, label %if.end47.for.end_crit_edge, label %for.body.lr.ph, !dbg !139

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  %.pre974 = load i32* @wking_loc, align 4, !dbg !141, !tbaa !93
  %.pre975 = load i32* @bking_loc, align 4, !dbg !142, !tbaa !93
  br label %for.end, !dbg !139

for.body.lr.ph:                                   ; preds = %if.end47
  %12 = load i32* @bking_loc, align 4, !dbg !143, !tbaa !93
  %idxprom58 = sext i32 %12 to i64, !dbg !143
  %13 = load i32* @wking_loc, align 4, !dbg !146, !tbaa !93
  %idxprom69 = sext i32 %13 to i64, !dbg !146
  br label %for.body, !dbg !139

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %a.0959 = phi i32 [ 1, %for.body.lr.ph ], [ %a.1, %for.inc ]
  %arrayidx = getelementptr inbounds [62 x i32]* @pieces, i64 0, i64 %indvars.iv, !dbg !147
  %14 = load i32* %arrayidx, align 4, !dbg !147, !tbaa !93
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !20), !dbg !147
  %tobool49 = icmp eq i32 %14, 0, !dbg !148
  br i1 %tobool49, label %for.inc, label %if.else51, !dbg !148

if.else51:                                        ; preds = %for.body
  %inc = add nsw i32 %a.0959, 1, !dbg !149
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !21), !dbg !149
  %idxprom53 = sext i32 %14 to i64, !dbg !150
  %arrayidx54 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom53, !dbg !150
  %15 = load i32* %arrayidx54, align 4, !dbg !150, !tbaa !93
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
  ], !dbg !150

sw.bb:                                            ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !151
  %16 = load i32* %score, align 4, !dbg !151, !tbaa !93
  %add = add nsw i32 %16, 100, !dbg !151
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !23), !dbg !151
  %arrayidx56 = getelementptr inbounds [144 x i32]* @white_pawn, i64 0, i64 %idxprom53, !dbg !152
  %17 = load i32* %arrayidx56, align 4, !dbg !152, !tbaa !93
  %shr = ashr i32 %17, %wdev_dscale.1, !dbg !152
  %add57 = add nsw i32 %shr, %add, !dbg !152
  call void @llvm.dbg.value(metadata !{i32 %add57}, i64 0, metadata !23), !dbg !152
  %arrayidx61 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %idxprom53, i64 %idxprom58, !dbg !143
  %18 = load i8* %arrayidx61, align 1, !dbg !143, !tbaa !94
  %conv = zext i8 %18 to i32, !dbg !143
  %add62 = add nsw i32 %conv, %add57, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %add62}, i64 0, metadata !23), !dbg !143
  store i32 %add62, i32* %score, align 4, !dbg !143, !tbaa !93
  br label %for.inc, !dbg !153

sw.bb63:                                          ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !154
  %19 = load i32* %score, align 4, !dbg !154, !tbaa !93
  %sub64 = add nsw i32 %19, -100, !dbg !154
  call void @llvm.dbg.value(metadata !{i32 %sub64}, i64 0, metadata !23), !dbg !154
  %arrayidx66 = getelementptr inbounds [144 x i32]* @black_pawn, i64 0, i64 %idxprom53, !dbg !155
  %20 = load i32* %arrayidx66, align 4, !dbg !155, !tbaa !93
  %shr67 = ashr i32 %20, %bdev_dscale.0, !dbg !155
  %sub68 = sub nsw i32 %sub64, %shr67, !dbg !155
  call void @llvm.dbg.value(metadata !{i32 %sub68}, i64 0, metadata !23), !dbg !155
  %arrayidx72 = getelementptr inbounds [144 x [144 x i8]]* @p_tropism, i64 0, i64 %idxprom53, i64 %idxprom69, !dbg !146
  %21 = load i8* %arrayidx72, align 1, !dbg !146, !tbaa !94
  %conv73 = zext i8 %21 to i32, !dbg !146
  %sub74 = sub nsw i32 %sub68, %conv73, !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %sub74}, i64 0, metadata !23), !dbg !146
  store i32 %sub74, i32* %score, align 4, !dbg !146, !tbaa !93
  br label %for.inc, !dbg !156

sw.bb75:                                          ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !157
  %22 = load i32* %score, align 4, !dbg !157, !tbaa !93
  %add76 = add nsw i32 %22, 250, !dbg !157
  call void @llvm.dbg.value(metadata !{i32 %add76}, i64 0, metadata !23), !dbg !157
  %arrayidx78 = getelementptr inbounds [144 x i32]* @white_rook, i64 0, i64 %idxprom53, !dbg !158
  %23 = load i32* %arrayidx78, align 4, !dbg !158, !tbaa !93
  %shr79 = ashr i32 %23, %wdev_dscale.1, !dbg !158
  %add80 = add nsw i32 %shr79, %add76, !dbg !158
  call void @llvm.dbg.value(metadata !{i32 %add80}, i64 0, metadata !23), !dbg !158
  %arrayidx84 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %idxprom53, i64 %idxprom58, !dbg !159
  %24 = load i8* %arrayidx84, align 1, !dbg !159, !tbaa !94
  %conv85 = zext i8 %24 to i32, !dbg !159
  %add86 = add nsw i32 %conv85, %add80, !dbg !159
  call void @llvm.dbg.value(metadata !{i32 %add86}, i64 0, metadata !23), !dbg !159
  store i32 %add86, i32* %score, align 4, !dbg !159, !tbaa !93
  br label %for.inc, !dbg !160

sw.bb87:                                          ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !161
  %25 = load i32* %score, align 4, !dbg !161, !tbaa !93
  %sub88 = add nsw i32 %25, -250, !dbg !161
  call void @llvm.dbg.value(metadata !{i32 %sub88}, i64 0, metadata !23), !dbg !161
  %arrayidx90 = getelementptr inbounds [144 x i32]* @black_rook, i64 0, i64 %idxprom53, !dbg !162
  %26 = load i32* %arrayidx90, align 4, !dbg !162, !tbaa !93
  %shr91 = ashr i32 %26, %bdev_dscale.0, !dbg !162
  %sub92 = sub nsw i32 %sub88, %shr91, !dbg !162
  call void @llvm.dbg.value(metadata !{i32 %sub92}, i64 0, metadata !23), !dbg !162
  %arrayidx96 = getelementptr inbounds [144 x [144 x i8]]* @r_tropism, i64 0, i64 %idxprom53, i64 %idxprom69, !dbg !163
  %27 = load i8* %arrayidx96, align 1, !dbg !163, !tbaa !94
  %conv97 = zext i8 %27 to i32, !dbg !163
  %sub98 = sub nsw i32 %sub92, %conv97, !dbg !163
  call void @llvm.dbg.value(metadata !{i32 %sub98}, i64 0, metadata !23), !dbg !163
  store i32 %sub98, i32* %score, align 4, !dbg !163, !tbaa !93
  br label %for.inc, !dbg !164

sw.bb99:                                          ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !165
  %28 = load i32* %score, align 4, !dbg !165, !tbaa !93
  %add100 = add nsw i32 %28, 230, !dbg !165
  call void @llvm.dbg.value(metadata !{i32 %add100}, i64 0, metadata !23), !dbg !165
  %arrayidx102 = getelementptr inbounds [144 x i32]* @pcsqbishop, i64 0, i64 %idxprom53, !dbg !166
  %29 = load i32* %arrayidx102, align 4, !dbg !166, !tbaa !93
  %shr103 = ashr i32 %29, %wdev_dscale.1, !dbg !166
  %add104 = add nsw i32 %shr103, %add100, !dbg !166
  call void @llvm.dbg.value(metadata !{i32 %add104}, i64 0, metadata !23), !dbg !166
  %arrayidx108 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %idxprom53, i64 %idxprom58, !dbg !167
  %30 = load i8* %arrayidx108, align 1, !dbg !167, !tbaa !94
  %conv109 = zext i8 %30 to i32, !dbg !167
  %add110 = add nsw i32 %conv109, %add104, !dbg !167
  call void @llvm.dbg.value(metadata !{i32 %add110}, i64 0, metadata !23), !dbg !167
  store i32 %add110, i32* %score, align 4, !dbg !167, !tbaa !93
  br label %for.inc, !dbg !168

sw.bb111:                                         ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !169
  %31 = load i32* %score, align 4, !dbg !169, !tbaa !93
  %sub112 = add nsw i32 %31, -230, !dbg !169
  call void @llvm.dbg.value(metadata !{i32 %sub112}, i64 0, metadata !23), !dbg !169
  %arrayidx114 = getelementptr inbounds [144 x i32]* @pcsqbishop, i64 0, i64 %idxprom53, !dbg !170
  %32 = load i32* %arrayidx114, align 4, !dbg !170, !tbaa !93
  %shr115 = ashr i32 %32, %bdev_dscale.0, !dbg !170
  %sub116 = sub nsw i32 %sub112, %shr115, !dbg !170
  call void @llvm.dbg.value(metadata !{i32 %sub116}, i64 0, metadata !23), !dbg !170
  %arrayidx120 = getelementptr inbounds [144 x [144 x i8]]* @b_tropism, i64 0, i64 %idxprom53, i64 %idxprom69, !dbg !171
  %33 = load i8* %arrayidx120, align 1, !dbg !171, !tbaa !94
  %conv121 = zext i8 %33 to i32, !dbg !171
  %sub122 = sub nsw i32 %sub116, %conv121, !dbg !171
  call void @llvm.dbg.value(metadata !{i32 %sub122}, i64 0, metadata !23), !dbg !171
  store i32 %sub122, i32* %score, align 4, !dbg !171, !tbaa !93
  br label %for.inc, !dbg !172

sw.bb123:                                         ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !173
  %34 = load i32* %score, align 4, !dbg !173, !tbaa !93
  %add124 = add nsw i32 %34, 210, !dbg !173
  call void @llvm.dbg.value(metadata !{i32 %add124}, i64 0, metadata !23), !dbg !173
  %arrayidx126 = getelementptr inbounds [144 x i32]* @white_knight, i64 0, i64 %idxprom53, !dbg !174
  %35 = load i32* %arrayidx126, align 4, !dbg !174, !tbaa !93
  %shr127 = ashr i32 %35, %wdev_dscale.1, !dbg !174
  %add128 = add nsw i32 %shr127, %add124, !dbg !174
  call void @llvm.dbg.value(metadata !{i32 %add128}, i64 0, metadata !23), !dbg !174
  %arrayidx132 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %idxprom53, i64 %idxprom58, !dbg !175
  %36 = load i8* %arrayidx132, align 1, !dbg !175, !tbaa !94
  %conv133 = zext i8 %36 to i32, !dbg !175
  %add134 = add nsw i32 %conv133, %add128, !dbg !175
  call void @llvm.dbg.value(metadata !{i32 %add134}, i64 0, metadata !23), !dbg !175
  store i32 %add134, i32* %score, align 4, !dbg !175, !tbaa !93
  br label %for.inc, !dbg !176

sw.bb135:                                         ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !177
  %37 = load i32* %score, align 4, !dbg !177, !tbaa !93
  %sub136 = add nsw i32 %37, -210, !dbg !177
  call void @llvm.dbg.value(metadata !{i32 %sub136}, i64 0, metadata !23), !dbg !177
  %arrayidx138 = getelementptr inbounds [144 x i32]* @black_knight, i64 0, i64 %idxprom53, !dbg !178
  %38 = load i32* %arrayidx138, align 4, !dbg !178, !tbaa !93
  %shr139 = ashr i32 %38, %bdev_dscale.0, !dbg !178
  %sub140 = sub nsw i32 %sub136, %shr139, !dbg !178
  call void @llvm.dbg.value(metadata !{i32 %sub140}, i64 0, metadata !23), !dbg !178
  %arrayidx144 = getelementptr inbounds [144 x [144 x i8]]* @n_tropism, i64 0, i64 %idxprom53, i64 %idxprom69, !dbg !179
  %39 = load i8* %arrayidx144, align 1, !dbg !179, !tbaa !94
  %conv145 = zext i8 %39 to i32, !dbg !179
  %sub146 = sub nsw i32 %sub140, %conv145, !dbg !179
  call void @llvm.dbg.value(metadata !{i32 %sub146}, i64 0, metadata !23), !dbg !179
  store i32 %sub146, i32* %score, align 4, !dbg !179, !tbaa !93
  br label %for.inc, !dbg !180

sw.bb147:                                         ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !181
  %40 = load i32* %score, align 4, !dbg !181, !tbaa !93
  %add148 = add nsw i32 %40, 450, !dbg !181
  call void @llvm.dbg.value(metadata !{i32 %add148}, i64 0, metadata !23), !dbg !181
  %arrayidx150 = getelementptr inbounds [144 x i32]* @white_queen, i64 0, i64 %idxprom53, !dbg !182
  %41 = load i32* %arrayidx150, align 4, !dbg !182, !tbaa !93
  %shr151 = ashr i32 %41, %wdev_dscale.1, !dbg !182
  %add152 = add nsw i32 %shr151, %add148, !dbg !182
  call void @llvm.dbg.value(metadata !{i32 %add152}, i64 0, metadata !23), !dbg !182
  %arrayidx156 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %idxprom53, i64 %idxprom58, !dbg !183
  %42 = load i8* %arrayidx156, align 1, !dbg !183, !tbaa !94
  %conv157 = zext i8 %42 to i32, !dbg !183
  %add158 = add nsw i32 %conv157, %add152, !dbg !183
  call void @llvm.dbg.value(metadata !{i32 %add158}, i64 0, metadata !23), !dbg !183
  store i32 %add158, i32* %score, align 4, !dbg !183, !tbaa !93
  br label %for.inc, !dbg !184

sw.bb159:                                         ; preds = %if.else51
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !185
  %43 = load i32* %score, align 4, !dbg !185, !tbaa !93
  %sub160 = add nsw i32 %43, -450, !dbg !185
  call void @llvm.dbg.value(metadata !{i32 %sub160}, i64 0, metadata !23), !dbg !185
  %arrayidx162 = getelementptr inbounds [144 x i32]* @black_queen, i64 0, i64 %idxprom53, !dbg !186
  %44 = load i32* %arrayidx162, align 4, !dbg !186, !tbaa !93
  %shr163 = ashr i32 %44, %bdev_dscale.0, !dbg !186
  %sub164 = sub nsw i32 %sub160, %shr163, !dbg !186
  call void @llvm.dbg.value(metadata !{i32 %sub164}, i64 0, metadata !23), !dbg !186
  %arrayidx168 = getelementptr inbounds [144 x [144 x i8]]* @q_tropism, i64 0, i64 %idxprom53, i64 %idxprom69, !dbg !187
  %45 = load i8* %arrayidx168, align 1, !dbg !187, !tbaa !94
  %conv169 = zext i8 %45 to i32, !dbg !187
  %sub170 = sub nsw i32 %sub164, %conv169, !dbg !187
  call void @llvm.dbg.value(metadata !{i32 %sub170}, i64 0, metadata !23), !dbg !187
  store i32 %sub170, i32* %score, align 4, !dbg !187, !tbaa !93
  br label %for.inc, !dbg !188

for.inc:                                          ; preds = %for.body, %sw.bb, %sw.bb63, %sw.bb75, %sw.bb87, %sw.bb99, %sw.bb111, %sw.bb123, %sw.bb135, %sw.bb147, %sw.bb159, %if.else51
  %a.1 = phi i32 [ %inc, %if.else51 ], [ %inc, %sw.bb159 ], [ %inc, %sw.bb147 ], [ %inc, %sw.bb135 ], [ %inc, %sw.bb123 ], [ %inc, %sw.bb111 ], [ %inc, %sw.bb99 ], [ %inc, %sw.bb87 ], [ %inc, %sw.bb75 ], [ %inc, %sw.bb63 ], [ %inc, %sw.bb ], [ %a.0959, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !139
  %cmp48 = icmp sgt i32 %a.1, %11, !dbg !139
  br i1 %cmp48, label %for.end, label %for.body, !dbg !139

for.end:                                          ; preds = %for.inc, %if.end47.for.end_crit_edge
  %46 = phi i32 [ %.pre975, %if.end47.for.end_crit_edge ], [ %12, %for.inc ]
  %47 = phi i32 [ %.pre974, %if.end47.for.end_crit_edge ], [ %13, %for.inc ]
  %idxprom172 = sext i32 %47 to i64, !dbg !141
  %arrayidx173 = getelementptr inbounds [144 x i32]* @white_king, i64 0, i64 %idxprom172, !dbg !141
  %48 = load i32* %arrayidx173, align 4, !dbg !141, !tbaa !93
  %shr174 = ashr i32 %48, %bdev_dscale.0, !dbg !141
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !141
  %49 = load i32* %score, align 4, !dbg !141, !tbaa !93
  %add175 = add nsw i32 %49, %shr174, !dbg !141
  call void @llvm.dbg.value(metadata !{i32 %add175}, i64 0, metadata !23), !dbg !141
  %idxprom176 = sext i32 %46 to i64, !dbg !142
  %arrayidx177 = getelementptr inbounds [144 x i32]* @black_king, i64 0, i64 %idxprom176, !dbg !142
  %50 = load i32* %arrayidx177, align 4, !dbg !142, !tbaa !93
  %shr178 = ashr i32 %50, %wdev_dscale.1, !dbg !142
  %sub179 = sub nsw i32 %add175, %shr178, !dbg !142
  call void @llvm.dbg.value(metadata !{i32 %sub179}, i64 0, metadata !23), !dbg !142
  store i32 %sub179, i32* %score, align 4, !dbg !142, !tbaa !93
  %51 = load i32* @white_castled, align 4, !dbg !189, !tbaa !93
  %tobool180 = icmp eq i32 %51, 0, !dbg !189
  %52 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 30), align 4, !dbg !189, !tbaa !93
  %tobool182 = icmp ne i32 %52, 0, !dbg !189
  %or.cond873 = and i1 %tobool180, %tobool182, !dbg !189
  br i1 %or.cond873, label %if.then183, label %if.end185, !dbg !189

if.then183:                                       ; preds = %for.end
  %sub184 = add nsw i32 %sub179, -30, !dbg !190
  call void @llvm.dbg.value(metadata !{i32 %sub184}, i64 0, metadata !23), !dbg !190
  store i32 %sub184, i32* %score, align 4, !dbg !190, !tbaa !93
  br label %if.end185, !dbg !192

if.end185:                                        ; preds = %for.end, %if.then183
  %53 = phi i32 [ %sub179, %for.end ], [ %sub184, %if.then183 ]
  %54 = load i32* @black_castled, align 4, !dbg !193, !tbaa !93
  %tobool186 = icmp eq i32 %54, 0, !dbg !193
  %55 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 114), align 4, !dbg !193, !tbaa !93
  %tobool188 = icmp ne i32 %55, 0, !dbg !193
  %or.cond874 = and i1 %tobool186, %tobool188, !dbg !193
  br i1 %or.cond874, label %if.then189, label %if.end191, !dbg !193

if.then189:                                       ; preds = %if.end185
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !194
  %add190 = add nsw i32 %53, 30, !dbg !194
  call void @llvm.dbg.value(metadata !{i32 %add190}, i64 0, metadata !23), !dbg !194
  store i32 %add190, i32* %score, align 4, !dbg !194, !tbaa !93
  br label %if.end191, !dbg !196

if.end191:                                        ; preds = %if.end185, %if.then189
  %56 = phi i32 [ %53, %if.end185 ], [ %add190, %if.then189 ]
  %57 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 41), align 4, !dbg !197, !tbaa !93
  %tobool192 = icmp eq i32 %57, 0, !dbg !197
  %58 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 53), align 4, !dbg !197, !tbaa !93
  %cmp194 = icmp ne i32 %58, 13, !dbg !197
  %or.cond875 = and i1 %tobool192, %cmp194, !dbg !197
  br i1 %or.cond875, label %if.then196, label %if.end198, !dbg !197

if.then196:                                       ; preds = %if.end191
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !198
  %sub197 = add nsw i32 %56, -15, !dbg !198
  call void @llvm.dbg.value(metadata !{i32 %sub197}, i64 0, metadata !23), !dbg !198
  store i32 %sub197, i32* %score, align 4, !dbg !198, !tbaa !93
  br label %if.end198, !dbg !198

if.end198:                                        ; preds = %if.end191, %if.then196
  %59 = phi i32 [ %56, %if.end191 ], [ %sub197, %if.then196 ]
  %60 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 42), align 4, !dbg !199, !tbaa !93
  %tobool199 = icmp eq i32 %60, 0, !dbg !199
  %61 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !dbg !199, !tbaa !93
  %cmp201 = icmp ne i32 %61, 13, !dbg !199
  %or.cond876 = and i1 %tobool199, %cmp201, !dbg !199
  br i1 %or.cond876, label %if.then203, label %if.end205, !dbg !199

if.then203:                                       ; preds = %if.end198
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !200
  %sub204 = add nsw i32 %59, -15, !dbg !200
  call void @llvm.dbg.value(metadata !{i32 %sub204}, i64 0, metadata !23), !dbg !200
  store i32 %sub204, i32* %score, align 4, !dbg !200, !tbaa !93
  br label %if.end205, !dbg !200

if.end205:                                        ; preds = %if.end198, %if.then203
  %62 = phi i32 [ %59, %if.end198 ], [ %sub204, %if.then203 ]
  %63 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 101), align 4, !dbg !201, !tbaa !93
  %tobool206 = icmp eq i32 %63, 0, !dbg !201
  %64 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 89), align 4, !dbg !201, !tbaa !93
  %cmp208 = icmp ne i32 %64, 13, !dbg !201
  %or.cond877 = and i1 %tobool206, %cmp208, !dbg !201
  br i1 %or.cond877, label %if.then210, label %if.end212, !dbg !201

if.then210:                                       ; preds = %if.end205
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !202
  %add211 = add nsw i32 %62, 15, !dbg !202
  call void @llvm.dbg.value(metadata !{i32 %add211}, i64 0, metadata !23), !dbg !202
  store i32 %add211, i32* %score, align 4, !dbg !202, !tbaa !93
  br label %if.end212, !dbg !202

if.end212:                                        ; preds = %if.end205, %if.then210
  %65 = phi i32 [ %62, %if.end205 ], [ %add211, %if.then210 ]
  %66 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 102), align 4, !dbg !203, !tbaa !93
  %tobool213 = icmp eq i32 %66, 0, !dbg !203
  %67 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !dbg !203, !tbaa !93
  %cmp215 = icmp ne i32 %67, 13, !dbg !203
  %or.cond878 = and i1 %tobool213, %cmp215, !dbg !203
  br i1 %or.cond878, label %if.then217, label %if.end219, !dbg !203

if.then217:                                       ; preds = %if.end212
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !204
  %add218 = add nsw i32 %65, 15, !dbg !204
  call void @llvm.dbg.value(metadata !{i32 %add218}, i64 0, metadata !23), !dbg !204
  store i32 %add218, i32* %score, align 4, !dbg !204, !tbaa !93
  br label %if.end219, !dbg !204

if.end219:                                        ; preds = %if.end212, %if.then217
  %68 = phi i32 [ %65, %if.end212 ], [ %add218, %if.then217 ]
  %69 = load i32* @cfg_smarteval, align 4, !dbg !205, !tbaa !93
  %tobool220 = icmp eq i32 %69, 0, !dbg !205
  br i1 %tobool220, label %if.end640, label %if.then221, !dbg !205

if.then221:                                       ; preds = %if.end219
  %.off = add i32 %47, -29, !dbg !206
  %70 = icmp ugt i32 %.off, 1, !dbg !206
  br i1 %70, label %if.then227, label %if.end279, !dbg !206

if.then227:                                       ; preds = %if.then221
  %add228 = add nsw i32 %47, 11, !dbg !208
  %idxprom229 = sext i32 %add228 to i64, !dbg !208
  %arrayidx230 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom229, !dbg !208
  %71 = load i32* %arrayidx230, align 4, !dbg !208, !tbaa !93
  %cmp231 = icmp eq i32 %71, 1, !dbg !208
  br i1 %cmp231, label %if.end235, label %if.then233, !dbg !208

if.then233:                                       ; preds = %if.then227
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !208
  %sub234 = add nsw i32 %68, -24, !dbg !208
  call void @llvm.dbg.value(metadata !{i32 %sub234}, i64 0, metadata !23), !dbg !208
  store i32 %sub234, i32* %score, align 4, !dbg !208, !tbaa !93
  br label %if.end235, !dbg !208

if.end235:                                        ; preds = %if.then227, %if.then233
  %72 = phi i32 [ %68, %if.then227 ], [ %sub234, %if.then233 ]
  %add236 = add nsw i32 %47, 12, !dbg !210
  %idxprom237 = sext i32 %add236 to i64, !dbg !210
  %arrayidx238 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom237, !dbg !210
  %73 = load i32* %arrayidx238, align 4, !dbg !210, !tbaa !93
  %cmp239 = icmp eq i32 %73, 1, !dbg !210
  br i1 %cmp239, label %if.end243, label %if.then241, !dbg !210

if.then241:                                       ; preds = %if.end235
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !210
  %sub242 = add nsw i32 %72, -35, !dbg !210
  call void @llvm.dbg.value(metadata !{i32 %sub242}, i64 0, metadata !23), !dbg !210
  store i32 %sub242, i32* %score, align 4, !dbg !210, !tbaa !93
  br label %if.end243, !dbg !210

if.end243:                                        ; preds = %if.end235, %if.then241
  %74 = phi i32 [ %72, %if.end235 ], [ %sub242, %if.then241 ]
  %add244 = add nsw i32 %47, 13, !dbg !211
  %idxprom245 = sext i32 %add244 to i64, !dbg !211
  %arrayidx246 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom245, !dbg !211
  %75 = load i32* %arrayidx246, align 4, !dbg !211, !tbaa !93
  %cmp247 = icmp eq i32 %75, 1, !dbg !211
  br i1 %cmp247, label %if.end251, label %if.then249, !dbg !211

if.then249:                                       ; preds = %if.end243
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !211
  %sub250 = add nsw i32 %74, -24, !dbg !211
  call void @llvm.dbg.value(metadata !{i32 %sub250}, i64 0, metadata !23), !dbg !211
  store i32 %sub250, i32* %score, align 4, !dbg !211, !tbaa !93
  br label %if.end251, !dbg !211

if.end251:                                        ; preds = %if.end243, %if.then249
  %76 = phi i32 [ %74, %if.end243 ], [ %sub250, %if.then249 ]
  br i1 %tobool180, label %if.end279, label %if.then253, !dbg !212

if.then253:                                       ; preds = %if.end251
  %sub254 = add nsw i32 %46, -25, !dbg !213
  %idxprom255 = sext i32 %sub254 to i64, !dbg !213
  %arrayidx256 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom255, !dbg !213
  %77 = load i32* %arrayidx256, align 4, !dbg !213, !tbaa !93
  %cmp257 = icmp eq i32 %77, 2, !dbg !213
  br i1 %cmp257, label %if.then259, label %if.end261, !dbg !213

if.then259:                                       ; preds = %if.then253
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !213
  %add260 = add nsw i32 %76, 11, !dbg !213
  call void @llvm.dbg.value(metadata !{i32 %add260}, i64 0, metadata !23), !dbg !213
  store i32 %add260, i32* %score, align 4, !dbg !213, !tbaa !93
  br label %if.end261, !dbg !213

if.end261:                                        ; preds = %if.then259, %if.then253
  %78 = phi i32 [ %add260, %if.then259 ], [ %76, %if.then253 ]
  %sub262 = add nsw i32 %46, -24, !dbg !215
  %idxprom263 = sext i32 %sub262 to i64, !dbg !215
  %arrayidx264 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom263, !dbg !215
  %79 = load i32* %arrayidx264, align 4, !dbg !215, !tbaa !93
  %cmp265 = icmp eq i32 %79, 2, !dbg !215
  br i1 %cmp265, label %if.then267, label %if.end269, !dbg !215

if.then267:                                       ; preds = %if.end261
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !215
  %add268 = add nsw i32 %78, 15, !dbg !215
  call void @llvm.dbg.value(metadata !{i32 %add268}, i64 0, metadata !23), !dbg !215
  store i32 %add268, i32* %score, align 4, !dbg !215, !tbaa !93
  br label %if.end269, !dbg !215

if.end269:                                        ; preds = %if.then267, %if.end261
  %80 = phi i32 [ %add268, %if.then267 ], [ %78, %if.end261 ]
  %sub270 = add nsw i32 %46, -23, !dbg !216
  %idxprom271 = sext i32 %sub270 to i64, !dbg !216
  %arrayidx272 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom271, !dbg !216
  %81 = load i32* %arrayidx272, align 4, !dbg !216, !tbaa !93
  %cmp273 = icmp eq i32 %81, 2, !dbg !216
  br i1 %cmp273, label %if.then275, label %if.end279, !dbg !216

if.then275:                                       ; preds = %if.end269
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !216
  %add276 = add nsw i32 %80, 11, !dbg !216
  call void @llvm.dbg.value(metadata !{i32 %add276}, i64 0, metadata !23), !dbg !216
  store i32 %add276, i32* %score, align 4, !dbg !216, !tbaa !93
  br label %if.end279, !dbg !216

if.end279:                                        ; preds = %if.end251, %if.then275, %if.end269, %if.then221
  %82 = phi i32 [ %76, %if.end251 ], [ %add276, %if.then275 ], [ %80, %if.end269 ], [ %68, %if.then221 ]
  %.off955 = add i32 %46, -113, !dbg !217
  %83 = icmp ugt i32 %.off955, 1, !dbg !217
  br i1 %83, label %if.then285, label %if.end337, !dbg !217

if.then285:                                       ; preds = %if.end279
  %sub286 = add nsw i32 %46, -13, !dbg !218
  %idxprom287 = sext i32 %sub286 to i64, !dbg !218
  %arrayidx288 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom287, !dbg !218
  %84 = load i32* %arrayidx288, align 4, !dbg !218, !tbaa !93
  %cmp289 = icmp eq i32 %84, 2, !dbg !218
  br i1 %cmp289, label %if.end293, label %if.then291, !dbg !218

if.then291:                                       ; preds = %if.then285
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !218
  %add292 = add nsw i32 %82, 24, !dbg !218
  call void @llvm.dbg.value(metadata !{i32 %add292}, i64 0, metadata !23), !dbg !218
  store i32 %add292, i32* %score, align 4, !dbg !218, !tbaa !93
  br label %if.end293, !dbg !218

if.end293:                                        ; preds = %if.then285, %if.then291
  %85 = phi i32 [ %82, %if.then285 ], [ %add292, %if.then291 ]
  %sub294 = add nsw i32 %46, -12, !dbg !220
  %idxprom295 = sext i32 %sub294 to i64, !dbg !220
  %arrayidx296 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom295, !dbg !220
  %86 = load i32* %arrayidx296, align 4, !dbg !220, !tbaa !93
  %cmp297 = icmp eq i32 %86, 2, !dbg !220
  br i1 %cmp297, label %if.end301, label %if.then299, !dbg !220

if.then299:                                       ; preds = %if.end293
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !220
  %add300 = add nsw i32 %85, 35, !dbg !220
  call void @llvm.dbg.value(metadata !{i32 %add300}, i64 0, metadata !23), !dbg !220
  store i32 %add300, i32* %score, align 4, !dbg !220, !tbaa !93
  br label %if.end301, !dbg !220

if.end301:                                        ; preds = %if.end293, %if.then299
  %87 = phi i32 [ %85, %if.end293 ], [ %add300, %if.then299 ]
  %sub302 = add nsw i32 %46, -11, !dbg !221
  %idxprom303 = sext i32 %sub302 to i64, !dbg !221
  %arrayidx304 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom303, !dbg !221
  %88 = load i32* %arrayidx304, align 4, !dbg !221, !tbaa !93
  %cmp305 = icmp eq i32 %88, 2, !dbg !221
  br i1 %cmp305, label %if.end309, label %if.then307, !dbg !221

if.then307:                                       ; preds = %if.end301
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !221
  %add308 = add nsw i32 %87, 24, !dbg !221
  call void @llvm.dbg.value(metadata !{i32 %add308}, i64 0, metadata !23), !dbg !221
  store i32 %add308, i32* %score, align 4, !dbg !221, !tbaa !93
  br label %if.end309, !dbg !221

if.end309:                                        ; preds = %if.end301, %if.then307
  %89 = phi i32 [ %87, %if.end301 ], [ %add308, %if.then307 ]
  br i1 %tobool186, label %if.end337, label %if.then311, !dbg !222

if.then311:                                       ; preds = %if.end309
  %sub312 = add nsw i32 %46, -25, !dbg !223
  %idxprom313 = sext i32 %sub312 to i64, !dbg !223
  %arrayidx314 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom313, !dbg !223
  %90 = load i32* %arrayidx314, align 4, !dbg !223, !tbaa !93
  %cmp315 = icmp eq i32 %90, 2, !dbg !223
  br i1 %cmp315, label %if.then317, label %if.end319, !dbg !223

if.then317:                                       ; preds = %if.then311
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !223
  %sub318 = add nsw i32 %89, -11, !dbg !223
  call void @llvm.dbg.value(metadata !{i32 %sub318}, i64 0, metadata !23), !dbg !223
  store i32 %sub318, i32* %score, align 4, !dbg !223, !tbaa !93
  br label %if.end319, !dbg !223

if.end319:                                        ; preds = %if.then311, %if.then317
  %91 = phi i32 [ %sub318, %if.then317 ], [ %89, %if.then311 ]
  %sub320 = add nsw i32 %46, -24, !dbg !225
  %idxprom321 = sext i32 %sub320 to i64, !dbg !225
  %arrayidx322 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom321, !dbg !225
  %92 = load i32* %arrayidx322, align 4, !dbg !225, !tbaa !93
  %cmp323 = icmp eq i32 %92, 2, !dbg !225
  br i1 %cmp323, label %if.then325, label %if.end327, !dbg !225

if.then325:                                       ; preds = %if.end319
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !225
  %sub326 = add nsw i32 %91, -15, !dbg !225
  call void @llvm.dbg.value(metadata !{i32 %sub326}, i64 0, metadata !23), !dbg !225
  store i32 %sub326, i32* %score, align 4, !dbg !225, !tbaa !93
  br label %if.end327, !dbg !225

if.end327:                                        ; preds = %if.end319, %if.then325
  %93 = phi i32 [ %sub326, %if.then325 ], [ %91, %if.end319 ]
  %sub328 = add nsw i32 %46, -23, !dbg !226
  %idxprom329 = sext i32 %sub328 to i64, !dbg !226
  %arrayidx330 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom329, !dbg !226
  %94 = load i32* %arrayidx330, align 4, !dbg !226, !tbaa !93
  %cmp331 = icmp eq i32 %94, 2, !dbg !226
  br i1 %cmp331, label %if.then333, label %if.end337, !dbg !226

if.then333:                                       ; preds = %if.end327
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !226
  %sub334 = add nsw i32 %93, -11, !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %sub334}, i64 0, metadata !23), !dbg !226
  store i32 %sub334, i32* %score, align 4, !dbg !226, !tbaa !93
  br label %if.end337, !dbg !226

if.end337:                                        ; preds = %if.end309, %if.then333, %if.end327, %if.end279
  %95 = phi i32 [ %89, %if.end309 ], [ %sub334, %if.then333 ], [ %93, %if.end327 ], [ %82, %if.end279 ]
  br i1 %tobool199, label %if.end357, label %if.then339, !dbg !227

if.then339:                                       ; preds = %if.end337
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !228
  %add340 = add nsw i32 %95, 30, !dbg !228
  call void @llvm.dbg.value(metadata !{i32 %add340}, i64 0, metadata !23), !dbg !228
  %add343 = add nsw i32 %95, 55, !dbg !230
  call void @llvm.dbg.value(metadata !{i32 %add343}, i64 0, metadata !23), !dbg !230
  %add340.add343 = select i1 %tobool192, i32 %add340, i32 %add343, !dbg !230
  %add340.add343985 = select i1 %tobool192, i32 %add340, i32 %add343, !dbg !230
  call void @llvm.dbg.value(metadata !{i32 %add340.add343}, i64 0, metadata !23), !dbg !228
  store i32 %add340.add343, i32* %score, align 4, !dbg !228, !tbaa !93
  %96 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 32), align 4, !dbg !231, !tbaa !93
  %tobool345 = icmp eq i32 %96, 0, !dbg !231
  br i1 %tobool345, label %if.end348, label %if.then346, !dbg !231

if.then346:                                       ; preds = %if.then339
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !231
  %add347 = add nsw i32 %add340.add343985, 20, !dbg !231
  call void @llvm.dbg.value(metadata !{i32 %add347}, i64 0, metadata !23), !dbg !231
  store i32 %add347, i32* %score, align 4, !dbg !231, !tbaa !93
  br label %if.end348, !dbg !231

if.end348:                                        ; preds = %if.then339, %if.then346
  %97 = phi i32 [ %add340.add343985, %if.then339 ], [ %add347, %if.then346 ]
  %98 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 27), align 4, !dbg !232, !tbaa !93
  %tobool349 = icmp eq i32 %98, 0, !dbg !232
  br i1 %tobool349, label %if.end352, label %if.then350, !dbg !232

if.then350:                                       ; preds = %if.end348
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !232
  %add351 = add nsw i32 %97, 15, !dbg !232
  call void @llvm.dbg.value(metadata !{i32 %add351}, i64 0, metadata !23), !dbg !232
  store i32 %add351, i32* %score, align 4, !dbg !232, !tbaa !93
  br label %if.end352, !dbg !232

if.end352:                                        ; preds = %if.end348, %if.then350
  %99 = phi i32 [ %97, %if.end348 ], [ %add351, %if.then350 ]
  %100 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 28), align 4, !dbg !233, !tbaa !93
  %tobool353 = icmp eq i32 %100, 0, !dbg !233
  br i1 %tobool353, label %if.end357, label %if.then354, !dbg !233

if.then354:                                       ; preds = %if.end352
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !233
  %add355 = add nsw i32 %99, 10, !dbg !233
  call void @llvm.dbg.value(metadata !{i32 %add355}, i64 0, metadata !23), !dbg !233
  store i32 %add355, i32* %score, align 4, !dbg !233, !tbaa !93
  br label %if.end357, !dbg !233

if.end357:                                        ; preds = %if.end352, %if.end337, %if.then354
  %101 = phi i32 [ %99, %if.end352 ], [ %95, %if.end337 ], [ %add355, %if.then354 ]
  br i1 %tobool213, label %if.end377, label %if.then359, !dbg !234

if.then359:                                       ; preds = %if.end357
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !235
  %sub360 = add nsw i32 %101, -30, !dbg !235
  call void @llvm.dbg.value(metadata !{i32 %sub360}, i64 0, metadata !23), !dbg !235
  %sub363 = add nsw i32 %101, -55, !dbg !237
  call void @llvm.dbg.value(metadata !{i32 %sub363}, i64 0, metadata !23), !dbg !237
  %sub360.sub363 = select i1 %tobool206, i32 %sub360, i32 %sub363, !dbg !237
  %sub360.sub363986 = select i1 %tobool206, i32 %sub360, i32 %sub363, !dbg !237
  call void @llvm.dbg.value(metadata !{i32 %sub360.sub363}, i64 0, metadata !23), !dbg !235
  store i32 %sub360.sub363, i32* %score, align 4, !dbg !235, !tbaa !93
  %102 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 116), align 4, !dbg !238, !tbaa !93
  %tobool365 = icmp eq i32 %102, 0, !dbg !238
  br i1 %tobool365, label %if.end368, label %if.then366, !dbg !238

if.then366:                                       ; preds = %if.then359
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !238
  %sub367 = add nsw i32 %sub360.sub363986, -20, !dbg !238
  call void @llvm.dbg.value(metadata !{i32 %sub367}, i64 0, metadata !23), !dbg !238
  store i32 %sub367, i32* %score, align 4, !dbg !238, !tbaa !93
  br label %if.end368, !dbg !238

if.end368:                                        ; preds = %if.then359, %if.then366
  %103 = phi i32 [ %sub360.sub363986, %if.then359 ], [ %sub367, %if.then366 ]
  %104 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 111), align 4, !dbg !239, !tbaa !93
  %tobool369 = icmp eq i32 %104, 0, !dbg !239
  br i1 %tobool369, label %if.end372, label %if.then370, !dbg !239

if.then370:                                       ; preds = %if.end368
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !239
  %sub371 = add nsw i32 %103, -15, !dbg !239
  call void @llvm.dbg.value(metadata !{i32 %sub371}, i64 0, metadata !23), !dbg !239
  store i32 %sub371, i32* %score, align 4, !dbg !239, !tbaa !93
  br label %if.end372, !dbg !239

if.end372:                                        ; preds = %if.end368, %if.then370
  %105 = phi i32 [ %103, %if.end368 ], [ %sub371, %if.then370 ]
  %106 = load i32* getelementptr inbounds ([144 x i32]* @moved, i64 0, i64 112), align 4, !dbg !240, !tbaa !93
  %tobool373 = icmp eq i32 %106, 0, !dbg !240
  br i1 %tobool373, label %if.end377, label %if.then374, !dbg !240

if.then374:                                       ; preds = %if.end372
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !240
  %sub375 = add nsw i32 %105, -10, !dbg !240
  call void @llvm.dbg.value(metadata !{i32 %sub375}, i64 0, metadata !23), !dbg !240
  store i32 %sub375, i32* %score, align 4, !dbg !240, !tbaa !93
  br label %if.end377, !dbg !240

if.end377:                                        ; preds = %if.end372, %if.end357, %if.then374
  %107 = phi i32 [ %105, %if.end372 ], [ %101, %if.end357 ], [ %sub375, %if.then374 ]
  %108 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4, !dbg !241, !tbaa !93
  %cmp378 = icmp eq i32 %108, 1, !dbg !241
  br i1 %cmp378, label %if.end387, label %land.lhs.true380, !dbg !241

land.lhs.true380:                                 ; preds = %if.end377
  %109 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 55), align 4, !dbg !241, !tbaa !93
  %cmp381 = icmp eq i32 %109, 2, !dbg !241
  %110 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 66), align 4, !dbg !241, !tbaa !93
  %cmp383 = icmp eq i32 %110, 2, !dbg !241
  %or.cond881 = or i1 %cmp381, %cmp383, !dbg !241
  br i1 %or.cond881, label %if.then385, label %if.end387, !dbg !241

if.then385:                                       ; preds = %land.lhs.true380
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !242
  %sub386 = add nsw i32 %107, -30, !dbg !242
  call void @llvm.dbg.value(metadata !{i32 %sub386}, i64 0, metadata !23), !dbg !242
  store i32 %sub386, i32* %score, align 4, !dbg !242, !tbaa !93
  br label %if.end387, !dbg !242

if.end387:                                        ; preds = %if.end377, %land.lhs.true380, %if.then385
  %111 = phi i32 [ %107, %if.end377 ], [ %107, %land.lhs.true380 ], [ %sub386, %if.then385 ]
  %112 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4, !dbg !243, !tbaa !93
  %cmp388 = icmp eq i32 %112, 2, !dbg !243
  br i1 %cmp388, label %if.end398, label %land.lhs.true390, !dbg !243

land.lhs.true390:                                 ; preds = %if.end387
  %113 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 91), align 4, !dbg !243, !tbaa !93
  %cmp391 = icmp eq i32 %113, 1, !dbg !243
  %114 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 78), align 4, !dbg !243, !tbaa !93
  %cmp394 = icmp eq i32 %114, 1, !dbg !243
  %or.cond882 = or i1 %cmp391, %cmp394, !dbg !243
  br i1 %or.cond882, label %if.then396, label %if.end398, !dbg !243

if.then396:                                       ; preds = %land.lhs.true390
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !244
  %add397 = add nsw i32 %111, 30, !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %add397}, i64 0, metadata !23), !dbg !244
  store i32 %add397, i32* %score, align 4, !dbg !244, !tbaa !93
  br label %if.end398, !dbg !244

if.end398:                                        ; preds = %land.lhs.true390, %if.end387, %if.then396
  %115 = phi i32 [ %add397, %if.then396 ], [ %111, %if.end387 ], [ %111, %land.lhs.true390 ]
  %add399 = add nsw i32 %47, 12, !dbg !245
  %idxprom400 = sext i32 %add399 to i64, !dbg !245
  %arrayidx401 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom400, !dbg !245
  %116 = load i32* %arrayidx401, align 4, !dbg !245, !tbaa !93
  switch i32 %116, label %if.end424 [
    i32 2, label %cond.false
    i32 12, label %cond.false
  ], !dbg !245

cond.false:                                       ; preds = %if.end398, %if.end398
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !246
  %sub411 = add nsw i32 %115, -35, !dbg !246
  call void @llvm.dbg.value(metadata !{i32 %sub411}, i64 0, metadata !23), !dbg !246
  store i32 %sub411, i32* %score, align 4, !dbg !246, !tbaa !93
  %call418 = call i32 @is_attacked(i32 %add399, i32 0) #3, !dbg !248
  %tobool419 = icmp eq i32 %call418, 0, !dbg !248
  br i1 %tobool419, label %if.end424, label %if.then420, !dbg !248

if.then420:                                       ; preds = %cond.false
  %shr421 = lshr i32 150, %bdev_dscale.0, !dbg !249
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !249
  %117 = load i32* %score, align 4, !dbg !249, !tbaa !93
  %sub422 = sub nsw i32 %117, %shr421, !dbg !249
  call void @llvm.dbg.value(metadata !{i32 %sub422}, i64 0, metadata !23), !dbg !249
  store i32 %sub422, i32* %score, align 4, !dbg !249, !tbaa !93
  br label %if.end424, !dbg !249

if.end424:                                        ; preds = %cond.false, %if.end398, %if.then420
  %118 = load i32* @bking_loc, align 4, !dbg !250, !tbaa !93
  %sub425 = add nsw i32 %118, -12, !dbg !250
  %idxprom426 = sext i32 %sub425 to i64, !dbg !250
  %arrayidx427 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom426, !dbg !250
  %119 = load i32* %arrayidx427, align 4, !dbg !250, !tbaa !93
  switch i32 %119, label %if.end452 [
    i32 1, label %cond.false444
    i32 11, label %cond.false444
  ], !dbg !250

cond.false444:                                    ; preds = %if.end424, %if.end424
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !251
  %120 = load i32* %score, align 4, !dbg !251, !tbaa !93
  %add437 = add nsw i32 %120, 35, !dbg !251
  call void @llvm.dbg.value(metadata !{i32 %add437}, i64 0, metadata !23), !dbg !251
  store i32 %add437, i32* %score, align 4, !dbg !251, !tbaa !93
  %call446 = call i32 @is_attacked(i32 %sub425, i32 1) #3, !dbg !253
  %tobool447 = icmp eq i32 %call446, 0, !dbg !253
  br i1 %tobool447, label %if.end452, label %if.then448, !dbg !253

if.then448:                                       ; preds = %cond.false444
  %shr449 = lshr i32 150, %wdev_dscale.1, !dbg !254
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !254
  %121 = load i32* %score, align 4, !dbg !254, !tbaa !93
  %add450 = add nsw i32 %121, %shr449, !dbg !254
  call void @llvm.dbg.value(metadata !{i32 %add450}, i64 0, metadata !23), !dbg !254
  store i32 %add450, i32* %score, align 4, !dbg !254, !tbaa !93
  br label %if.end452, !dbg !254

if.end452:                                        ; preds = %cond.false444, %if.end424, %if.then448
  %122 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 43), align 4, !dbg !255, !tbaa !93
  %cmp453 = icmp eq i32 %122, 1, !dbg !255
  %123 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !dbg !255, !tbaa !93
  %cmp456 = icmp eq i32 %123, 1, !dbg !255
  %or.cond883 = or i1 %cmp453, %cmp456, !dbg !255
  %cmp459 = icmp eq i32 %123, 2, !dbg !255
  %or.cond884 = or i1 %or.cond883, %cmp459, !dbg !255
  %or.cond884.not = xor i1 %or.cond884, true, !dbg !255
  %cmp462 = icmp eq i32 %123, 0, !dbg !255
  %or.cond893 = or i1 %cmp462, %or.cond884.not, !dbg !255
  br i1 %or.cond893, label %if.end485, label %cond.false465, !dbg !255

cond.false465:                                    ; preds = %if.end452
  %call466 = call i32 @is_attacked(i32 54, i32 0) #3, !dbg !255
  %tobool467 = icmp eq i32 %call466, 0, !dbg !255
  br i1 %tobool467, label %if.end485, label %if.then468, !dbg !255

if.then468:                                       ; preds = %cond.false465
  %124 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 43), align 4, !dbg !256, !tbaa !93
  %cmp469 = icmp eq i32 %124, 1, !dbg !256
  br i1 %cmp469, label %if.then471, label %if.end473, !dbg !256

if.then471:                                       ; preds = %if.then468
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !256
  %125 = load i32* %score, align 4, !dbg !256, !tbaa !93
  %add472 = add nsw i32 %125, 10, !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %add472}, i64 0, metadata !23), !dbg !256
  store i32 %add472, i32* %score, align 4, !dbg !256, !tbaa !93
  br label %if.end473, !dbg !256

if.end473:                                        ; preds = %if.then471, %if.then468
  %126 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 54), align 4, !dbg !258, !tbaa !93
  switch i32 %126, label %if.end485 [
    i32 1, label %if.then476
    i32 2, label %if.then481
  ], !dbg !258

if.then476:                                       ; preds = %if.end473
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !258
  %127 = load i32* %score, align 4, !dbg !258, !tbaa !93
  %add477 = add nsw i32 %127, 20, !dbg !258
  call void @llvm.dbg.value(metadata !{i32 %add477}, i64 0, metadata !23), !dbg !258
  store i32 %add477, i32* %score, align 4, !dbg !258, !tbaa !93
  br label %if.end485, !dbg !258

if.then481:                                       ; preds = %if.end473
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !259
  %128 = load i32* %score, align 4, !dbg !259, !tbaa !93
  %sub482 = add nsw i32 %128, -15, !dbg !259
  call void @llvm.dbg.value(metadata !{i32 %sub482}, i64 0, metadata !23), !dbg !259
  store i32 %sub482, i32* %score, align 4, !dbg !259, !tbaa !93
  br label %if.end485, !dbg !259

if.end485:                                        ; preds = %if.end473, %cond.false465, %if.end452, %if.then476, %if.then481
  %129 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 103), align 4, !dbg !260, !tbaa !93
  %cmp486 = icmp eq i32 %129, 2, !dbg !260
  %130 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !dbg !260, !tbaa !93
  %cmp489 = icmp eq i32 %130, 2, !dbg !260
  %or.cond885 = or i1 %cmp486, %cmp489, !dbg !260
  %cmp492 = icmp eq i32 %130, 1, !dbg !260
  %or.cond886 = or i1 %or.cond885, %cmp492, !dbg !260
  %or.cond886.not = xor i1 %or.cond886, true, !dbg !260
  %cmp495 = icmp eq i32 %130, 0, !dbg !260
  %or.cond894 = or i1 %cmp495, %or.cond886.not, !dbg !260
  br i1 %or.cond894, label %if.end518, label %cond.false498, !dbg !260

cond.false498:                                    ; preds = %if.end485
  %call499 = call i32 @is_attacked(i32 90, i32 1) #3, !dbg !260
  %tobool500 = icmp eq i32 %call499, 0, !dbg !260
  br i1 %tobool500, label %if.end518, label %if.then501, !dbg !260

if.then501:                                       ; preds = %cond.false498
  %131 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 103), align 4, !dbg !261, !tbaa !93
  %cmp502 = icmp eq i32 %131, 2, !dbg !261
  br i1 %cmp502, label %if.then504, label %if.end506, !dbg !261

if.then504:                                       ; preds = %if.then501
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !261
  %132 = load i32* %score, align 4, !dbg !261, !tbaa !93
  %sub505 = add nsw i32 %132, -10, !dbg !261
  call void @llvm.dbg.value(metadata !{i32 %sub505}, i64 0, metadata !23), !dbg !261
  store i32 %sub505, i32* %score, align 4, !dbg !261, !tbaa !93
  br label %if.end506, !dbg !261

if.end506:                                        ; preds = %if.then504, %if.then501
  %133 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 90), align 4, !dbg !263, !tbaa !93
  switch i32 %133, label %if.end518 [
    i32 2, label %if.then509
    i32 1, label %if.then514
  ], !dbg !263

if.then509:                                       ; preds = %if.end506
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !263
  %134 = load i32* %score, align 4, !dbg !263, !tbaa !93
  %sub510 = add nsw i32 %134, -20, !dbg !263
  call void @llvm.dbg.value(metadata !{i32 %sub510}, i64 0, metadata !23), !dbg !263
  store i32 %sub510, i32* %score, align 4, !dbg !263, !tbaa !93
  br label %if.end518, !dbg !263

if.then514:                                       ; preds = %if.end506
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !264
  %135 = load i32* %score, align 4, !dbg !264, !tbaa !93
  %add515 = add nsw i32 %135, 15, !dbg !264
  call void @llvm.dbg.value(metadata !{i32 %add515}, i64 0, metadata !23), !dbg !264
  store i32 %add515, i32* %score, align 4, !dbg !264, !tbaa !93
  br label %if.end518, !dbg !264

if.end518:                                        ; preds = %if.end506, %cond.false498, %if.end485, %if.then509, %if.then514
  %136 = load i32* @bking_loc, align 4, !dbg !265, !tbaa !93
  %idxprom519 = sext i32 %136 to i64, !dbg !265
  %arrayidx520 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom519, !dbg !265
  %137 = load i32* %arrayidx520, align 4, !dbg !265, !tbaa !93
  %cmp521 = icmp eq i32 %137, 0, !dbg !265
  br i1 %cmp521, label %if.else530, label %cond.false524, !dbg !265

cond.false524:                                    ; preds = %if.end518
  %call525 = call i32 @is_attacked(i32 %136, i32 1) #3, !dbg !265
  %tobool526 = icmp eq i32 %call525, 0, !dbg !265
  br i1 %tobool526, label %if.else530, label %if.then527, !dbg !265

if.then527:                                       ; preds = %cond.false524
  %shr528 = lshr i32 50, %wdev_dscale.1, !dbg !266
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !266
  %138 = load i32* %score, align 4, !dbg !266, !tbaa !93
  %add529 = add nsw i32 %138, %shr528, !dbg !266
  call void @llvm.dbg.value(metadata !{i32 %add529}, i64 0, metadata !23), !dbg !266
  store i32 %add529, i32* %score, align 4, !dbg !266, !tbaa !93
  br label %if.end543, !dbg !266

if.else530:                                       ; preds = %cond.false524, %if.end518
  %139 = load i32* @wking_loc, align 4, !dbg !267, !tbaa !93
  %idxprom531 = sext i32 %139 to i64, !dbg !267
  %arrayidx532 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom531, !dbg !267
  %140 = load i32* %arrayidx532, align 4, !dbg !267, !tbaa !93
  %cmp533 = icmp eq i32 %140, 0, !dbg !267
  br i1 %cmp533, label %if.end543, label %cond.false536, !dbg !267

cond.false536:                                    ; preds = %if.else530
  %call537 = call i32 @is_attacked(i32 %139, i32 0) #3, !dbg !267
  %tobool538 = icmp eq i32 %call537, 0, !dbg !267
  br i1 %tobool538, label %if.end543, label %if.then539, !dbg !267

if.then539:                                       ; preds = %cond.false536
  %shr540 = lshr i32 50, %bdev_dscale.0, !dbg !268
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !268
  %141 = load i32* %score, align 4, !dbg !268, !tbaa !93
  %sub541 = sub nsw i32 %141, %shr540, !dbg !268
  call void @llvm.dbg.value(metadata !{i32 %sub541}, i64 0, metadata !23), !dbg !268
  store i32 %sub541, i32* %score, align 4, !dbg !268, !tbaa !93
  br label %if.end543, !dbg !268

if.end543:                                        ; preds = %cond.false536, %if.else530, %if.then539, %if.then527
  %142 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4, !dbg !269, !tbaa !93
  %cmp544 = icmp eq i32 %142, 4, !dbg !269
  br i1 %cmp544, label %cond.false551, label %if.end567, !dbg !269

cond.false551:                                    ; preds = %if.end543
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !270
  %143 = load i32* %score, align 4, !dbg !270, !tbaa !93
  %sub547 = add nsw i32 %143, -20, !dbg !270
  call void @llvm.dbg.value(metadata !{i32 %sub547}, i64 0, metadata !23), !dbg !270
  store i32 %sub547, i32* %score, align 4, !dbg !270, !tbaa !93
  %call552 = call i32 @is_attacked(i32 44, i32 0) #3, !dbg !272
  %tobool553 = icmp eq i32 %call552, 0, !dbg !272
  br i1 %tobool553, label %if.end556, label %if.then554, !dbg !272

if.then554:                                       ; preds = %cond.false551
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !272
  %144 = load i32* %score, align 4, !dbg !272, !tbaa !93
  %sub555 = add nsw i32 %144, -40, !dbg !272
  call void @llvm.dbg.value(metadata !{i32 %sub555}, i64 0, metadata !23), !dbg !272
  store i32 %sub555, i32* %score, align 4, !dbg !272, !tbaa !93
  br label %if.end556, !dbg !272

if.end556:                                        ; preds = %cond.false551, %if.then554
  %145 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 32), align 4, !dbg !273, !tbaa !93
  %cmp557 = icmp eq i32 %145, 7, !dbg !273
  br i1 %cmp557, label %if.then559, label %if.end561, !dbg !273

if.then559:                                       ; preds = %if.end556
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !273
  %146 = load i32* %score, align 4, !dbg !273, !tbaa !93
  %add560 = add nsw i32 %146, 10, !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %add560}, i64 0, metadata !23), !dbg !273
  store i32 %add560, i32* %score, align 4, !dbg !273, !tbaa !93
  br label %if.end561, !dbg !273

if.end561:                                        ; preds = %if.then559, %if.end556
  %147 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !dbg !274, !tbaa !93
  %cmp562 = icmp eq i32 %147, 11, !dbg !274
  br i1 %cmp562, label %if.then564, label %if.end567, !dbg !274

if.then564:                                       ; preds = %if.end561
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !274
  %148 = load i32* %score, align 4, !dbg !274, !tbaa !93
  %add565 = add nsw i32 %148, 10, !dbg !274
  call void @llvm.dbg.value(metadata !{i32 %add565}, i64 0, metadata !23), !dbg !274
  store i32 %add565, i32* %score, align 4, !dbg !274, !tbaa !93
  br label %if.end567, !dbg !274

if.end567:                                        ; preds = %if.end561, %if.end543, %if.then564
  %149 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4, !dbg !275, !tbaa !93
  %cmp568 = icmp eq i32 %149, 3, !dbg !275
  br i1 %cmp568, label %cond.false575, label %if.end591, !dbg !275

cond.false575:                                    ; preds = %if.end567
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !276
  %150 = load i32* %score, align 4, !dbg !276, !tbaa !93
  %add571 = add nsw i32 %150, 20, !dbg !276
  call void @llvm.dbg.value(metadata !{i32 %add571}, i64 0, metadata !23), !dbg !276
  store i32 %add571, i32* %score, align 4, !dbg !276, !tbaa !93
  %call576 = call i32 @is_attacked(i32 104, i32 1) #3, !dbg !278
  %tobool577 = icmp eq i32 %call576, 0, !dbg !278
  br i1 %tobool577, label %if.end580, label %if.then578, !dbg !278

if.then578:                                       ; preds = %cond.false575
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !278
  %151 = load i32* %score, align 4, !dbg !278, !tbaa !93
  %add579 = add nsw i32 %151, 40, !dbg !278
  call void @llvm.dbg.value(metadata !{i32 %add579}, i64 0, metadata !23), !dbg !278
  store i32 %add579, i32* %score, align 4, !dbg !278, !tbaa !93
  br label %if.end580, !dbg !278

if.end580:                                        ; preds = %cond.false575, %if.then578
  %152 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 116), align 4, !dbg !279, !tbaa !93
  %cmp581 = icmp eq i32 %152, 8, !dbg !279
  br i1 %cmp581, label %if.then583, label %if.end585, !dbg !279

if.then583:                                       ; preds = %if.end580
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !279
  %153 = load i32* %score, align 4, !dbg !279, !tbaa !93
  %sub584 = add nsw i32 %153, -10, !dbg !279
  call void @llvm.dbg.value(metadata !{i32 %sub584}, i64 0, metadata !23), !dbg !279
  store i32 %sub584, i32* %score, align 4, !dbg !279, !tbaa !93
  br label %if.end585, !dbg !279

if.end585:                                        ; preds = %if.then583, %if.end580
  %154 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !dbg !280, !tbaa !93
  %cmp586 = icmp eq i32 %154, 12, !dbg !280
  br i1 %cmp586, label %if.then588, label %if.end591, !dbg !280

if.then588:                                       ; preds = %if.end585
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !280
  %155 = load i32* %score, align 4, !dbg !280, !tbaa !93
  %sub589 = add nsw i32 %155, -10, !dbg !280
  call void @llvm.dbg.value(metadata !{i32 %sub589}, i64 0, metadata !23), !dbg !280
  store i32 %sub589, i32* %score, align 4, !dbg !280, !tbaa !93
  br label %if.end591, !dbg !280

if.end591:                                        ; preds = %if.end585, %if.end567, %if.then588
  %156 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 57), align 4, !dbg !281, !tbaa !93
  %cmp592 = icmp eq i32 %156, 12, !dbg !281
  %157 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 44), align 4, !dbg !281, !tbaa !93
  %cmp595 = icmp ne i32 %157, 1, !dbg !281
  %or.cond887 = and i1 %cmp592, %cmp595, !dbg !281
  br i1 %or.cond887, label %if.then597, label %if.end615, !dbg !281

if.then597:                                       ; preds = %if.end591
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !282
  %158 = load i32* %score, align 4, !dbg !282, !tbaa !93
  %sub598 = add nsw i32 %158, -20, !dbg !282
  call void @llvm.dbg.value(metadata !{i32 %sub598}, i64 0, metadata !23), !dbg !282
  store i32 %sub598, i32* %score, align 4, !dbg !282, !tbaa !93
  %cmp599 = icmp eq i32 %157, 4, !dbg !284
  br i1 %cmp599, label %if.then601, label %if.end615, !dbg !284

if.then601:                                       ; preds = %if.then597
  %sub602 = add nsw i32 %158, -60, !dbg !285
  call void @llvm.dbg.value(metadata !{i32 %sub602}, i64 0, metadata !23), !dbg !285
  store i32 %sub602, i32* %score, align 4, !dbg !285, !tbaa !93
  %159 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 31), align 4, !dbg !287, !tbaa !93
  %cmp603 = icmp eq i32 %159, 5, !dbg !287
  %160 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 32), align 4, !dbg !287, !tbaa !93
  %cmp606 = icmp eq i32 %160, 5, !dbg !287
  %or.cond888 = or i1 %cmp603, %cmp606, !dbg !287
  %161 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 33), align 4, !dbg !287, !tbaa !93
  %cmp609 = icmp eq i32 %161, 5, !dbg !287
  %or.cond889 = or i1 %or.cond888, %cmp609, !dbg !287
  br i1 %or.cond889, label %if.then611, label %if.end615, !dbg !287

if.then611:                                       ; preds = %if.then601
  %sub612 = add nsw i32 %158, -140, !dbg !288
  call void @llvm.dbg.value(metadata !{i32 %sub612}, i64 0, metadata !23), !dbg !288
  store i32 %sub612, i32* %score, align 4, !dbg !288, !tbaa !93
  br label %if.end615, !dbg !288

if.end615:                                        ; preds = %if.then601, %if.then597, %if.end591, %if.then611
  %162 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 93), align 4, !dbg !289, !tbaa !93
  %cmp616 = icmp eq i32 %162, 11, !dbg !289
  %163 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 104), align 4, !dbg !289, !tbaa !93
  %cmp619 = icmp ne i32 %163, 2, !dbg !289
  %or.cond890 = and i1 %cmp616, %cmp619, !dbg !289
  br i1 %or.cond890, label %if.then621, label %if.end640, !dbg !289

if.then621:                                       ; preds = %if.end615
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !290
  %164 = load i32* %score, align 4, !dbg !290, !tbaa !93
  %add622 = add nsw i32 %164, 20, !dbg !290
  call void @llvm.dbg.value(metadata !{i32 %add622}, i64 0, metadata !23), !dbg !290
  store i32 %add622, i32* %score, align 4, !dbg !290, !tbaa !93
  %cmp623 = icmp eq i32 %163, 3, !dbg !292
  br i1 %cmp623, label %if.then625, label %if.end640, !dbg !292

if.then625:                                       ; preds = %if.then621
  %add626 = add nsw i32 %164, 60, !dbg !293
  call void @llvm.dbg.value(metadata !{i32 %add626}, i64 0, metadata !23), !dbg !293
  store i32 %add626, i32* %score, align 4, !dbg !293, !tbaa !93
  %165 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 115), align 4, !dbg !295, !tbaa !93
  %cmp627 = icmp eq i32 %165, 6, !dbg !295
  %166 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 116), align 4, !dbg !295, !tbaa !93
  %cmp630 = icmp eq i32 %166, 6, !dbg !295
  %or.cond891 = or i1 %cmp627, %cmp630, !dbg !295
  %167 = load i32* getelementptr inbounds ([144 x i32]* @board, i64 0, i64 117), align 4, !dbg !295, !tbaa !93
  %cmp633 = icmp eq i32 %167, 6, !dbg !295
  %or.cond892 = or i1 %or.cond891, %cmp633, !dbg !295
  br i1 %or.cond892, label %if.then635, label %if.end640, !dbg !295

if.then635:                                       ; preds = %if.then625
  %add636 = add nsw i32 %164, 140, !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %add636}, i64 0, metadata !23), !dbg !296
  store i32 %add636, i32* %score, align 4, !dbg !296, !tbaa !93
  br label %if.end640, !dbg !296

if.end640:                                        ; preds = %if.end219, %if.end615, %if.then635, %if.then625, %if.then621
  %168 = load i32* @cfg_attackeval, align 4, !dbg !297, !tbaa !93
  %tobool641 = icmp eq i32 %168, 0, !dbg !297
  br i1 %tobool641, label %if.end640.if.end864_crit_edge, label %if.then642, !dbg !297

if.end640.if.end864_crit_edge:                    ; preds = %if.end640
  %.pre976 = load i32* @white_hand_eval, align 4, !dbg !298, !tbaa !93
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !298
  %.pre977 = load i32* %score, align 4, !dbg !298, !tbaa !93
  br label %if.end864, !dbg !297

if.then642:                                       ; preds = %if.end640
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !26), !dbg !299
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !25), !dbg !301
  %169 = load i32* @wking_loc, align 4, !dbg !302, !tbaa !93
  %sub643 = add nsw i32 %169, -13, !dbg !302
  %idxprom644 = sext i32 %sub643 to i64, !dbg !302
  %arrayidx645 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom644, !dbg !302
  %170 = load i32* %arrayidx645, align 4, !dbg !302, !tbaa !93
  %cmp646 = icmp eq i32 %170, 0, !dbg !302
  br i1 %cmp646, label %cond.end, label %cond.false649, !dbg !302

cond.false649:                                    ; preds = %if.then642
  %call651 = call i32 @nk_attacked(i32 %sub643, i32 0) #3, !dbg !302
  %.pre = load i32* @wking_loc, align 4, !dbg !303, !tbaa !93
  br label %cond.end, !dbg !302

cond.end:                                         ; preds = %if.then642, %cond.false649
  %171 = phi i32 [ %.pre, %cond.false649 ], [ %169, %if.then642 ]
  %cond = phi i32 [ %call651, %cond.false649 ], [ 0, %if.then642 ], !dbg !302
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !26), !dbg !302
  %sub653 = add nsw i32 %171, -12, !dbg !303
  %idxprom654 = sext i32 %sub653 to i64, !dbg !303
  %arrayidx655 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom654, !dbg !303
  %172 = load i32* %arrayidx655, align 4, !dbg !303, !tbaa !93
  %cmp656 = icmp eq i32 %172, 0, !dbg !303
  br i1 %cmp656, label %cond.end662, label %cond.false659, !dbg !303

cond.false659:                                    ; preds = %cond.end
  %call661 = call i32 @nk_attacked(i32 %sub653, i32 0) #3, !dbg !303
  %.pre961 = load i32* @wking_loc, align 4, !dbg !304, !tbaa !93
  br label %cond.end662, !dbg !303

cond.end662:                                      ; preds = %cond.end, %cond.false659
  %173 = phi i32 [ %.pre961, %cond.false659 ], [ %171, %cond.end ]
  %cond663 = phi i32 [ %call661, %cond.false659 ], [ 0, %cond.end ], !dbg !303
  %add664 = add i32 %cond663, %cond, !dbg !303
  call void @llvm.dbg.value(metadata !{i32 %add664}, i64 0, metadata !26), !dbg !303
  %sub665 = add nsw i32 %173, -11, !dbg !304
  %idxprom666 = sext i32 %sub665 to i64, !dbg !304
  %arrayidx667 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom666, !dbg !304
  %174 = load i32* %arrayidx667, align 4, !dbg !304, !tbaa !93
  %cmp668 = icmp eq i32 %174, 0, !dbg !304
  br i1 %cmp668, label %cond.end674, label %cond.false671, !dbg !304

cond.false671:                                    ; preds = %cond.end662
  %call673 = call i32 @nk_attacked(i32 %sub665, i32 0) #3, !dbg !304
  %.pre962 = load i32* @wking_loc, align 4, !dbg !305, !tbaa !93
  br label %cond.end674, !dbg !304

cond.end674:                                      ; preds = %cond.end662, %cond.false671
  %175 = phi i32 [ %.pre962, %cond.false671 ], [ %173, %cond.end662 ]
  %cond675 = phi i32 [ %call673, %cond.false671 ], [ 0, %cond.end662 ], !dbg !304
  %add676 = add i32 %add664, %cond675, !dbg !304
  call void @llvm.dbg.value(metadata !{i32 %add676}, i64 0, metadata !26), !dbg !304
  %sub677 = add nsw i32 %175, -1, !dbg !305
  %idxprom678 = sext i32 %sub677 to i64, !dbg !305
  %arrayidx679 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom678, !dbg !305
  %176 = load i32* %arrayidx679, align 4, !dbg !305, !tbaa !93
  %cmp680 = icmp eq i32 %176, 0, !dbg !305
  br i1 %cmp680, label %cond.end686, label %cond.false683, !dbg !305

cond.false683:                                    ; preds = %cond.end674
  %call685 = call i32 @nk_attacked(i32 %sub677, i32 0) #3, !dbg !305
  %.pre963 = load i32* @wking_loc, align 4, !dbg !306, !tbaa !93
  br label %cond.end686, !dbg !305

cond.end686:                                      ; preds = %cond.end674, %cond.false683
  %177 = phi i32 [ %.pre963, %cond.false683 ], [ %175, %cond.end674 ]
  %cond687 = phi i32 [ %call685, %cond.false683 ], [ 0, %cond.end674 ], !dbg !305
  %add688 = add i32 %add676, %cond687, !dbg !305
  call void @llvm.dbg.value(metadata !{i32 %add688}, i64 0, metadata !26), !dbg !305
  %add689 = add nsw i32 %177, 1, !dbg !306
  %idxprom690 = sext i32 %add689 to i64, !dbg !306
  %arrayidx691 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom690, !dbg !306
  %178 = load i32* %arrayidx691, align 4, !dbg !306, !tbaa !93
  %cmp692 = icmp eq i32 %178, 0, !dbg !306
  br i1 %cmp692, label %cond.end698, label %cond.false695, !dbg !306

cond.false695:                                    ; preds = %cond.end686
  %call697 = call i32 @nk_attacked(i32 %add689, i32 0) #3, !dbg !306
  %.pre964 = load i32* @wking_loc, align 4, !dbg !307, !tbaa !93
  br label %cond.end698, !dbg !306

cond.end698:                                      ; preds = %cond.end686, %cond.false695
  %179 = phi i32 [ %.pre964, %cond.false695 ], [ %177, %cond.end686 ]
  %cond699 = phi i32 [ %call697, %cond.false695 ], [ 0, %cond.end686 ], !dbg !306
  %add700 = add i32 %add688, %cond699, !dbg !306
  call void @llvm.dbg.value(metadata !{i32 %add700}, i64 0, metadata !26), !dbg !306
  %add701 = add nsw i32 %179, 11, !dbg !307
  %idxprom702 = sext i32 %add701 to i64, !dbg !307
  %arrayidx703 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom702, !dbg !307
  %180 = load i32* %arrayidx703, align 4, !dbg !307, !tbaa !93
  %cmp704 = icmp eq i32 %180, 0, !dbg !307
  br i1 %cmp704, label %cond.end710, label %cond.false707, !dbg !307

cond.false707:                                    ; preds = %cond.end698
  %call709 = call i32 @nk_attacked(i32 %add701, i32 0) #3, !dbg !307
  %.pre965 = load i32* @wking_loc, align 4, !dbg !308, !tbaa !93
  br label %cond.end710, !dbg !307

cond.end710:                                      ; preds = %cond.end698, %cond.false707
  %181 = phi i32 [ %.pre965, %cond.false707 ], [ %179, %cond.end698 ]
  %cond711 = phi i32 [ %call709, %cond.false707 ], [ 0, %cond.end698 ], !dbg !307
  %add712 = add i32 %add700, %cond711, !dbg !307
  call void @llvm.dbg.value(metadata !{i32 %add712}, i64 0, metadata !26), !dbg !307
  %add713 = add nsw i32 %181, 12, !dbg !308
  %idxprom714 = sext i32 %add713 to i64, !dbg !308
  %arrayidx715 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom714, !dbg !308
  %182 = load i32* %arrayidx715, align 4, !dbg !308, !tbaa !93
  %cmp716 = icmp eq i32 %182, 0, !dbg !308
  br i1 %cmp716, label %cond.end722, label %cond.false719, !dbg !308

cond.false719:                                    ; preds = %cond.end710
  %call721 = call i32 @nk_attacked(i32 %add713, i32 0) #3, !dbg !308
  %.pre966 = load i32* @wking_loc, align 4, !dbg !309, !tbaa !93
  br label %cond.end722, !dbg !308

cond.end722:                                      ; preds = %cond.end710, %cond.false719
  %183 = phi i32 [ %.pre966, %cond.false719 ], [ %181, %cond.end710 ]
  %cond723 = phi i32 [ %call721, %cond.false719 ], [ 0, %cond.end710 ], !dbg !308
  %add724 = add i32 %add712, %cond723, !dbg !308
  call void @llvm.dbg.value(metadata !{i32 %add724}, i64 0, metadata !26), !dbg !308
  %add725 = add nsw i32 %183, 13, !dbg !309
  %idxprom726 = sext i32 %add725 to i64, !dbg !309
  %arrayidx727 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom726, !dbg !309
  %184 = load i32* %arrayidx727, align 4, !dbg !309, !tbaa !93
  %cmp728 = icmp eq i32 %184, 0, !dbg !309
  br i1 %cmp728, label %cond.end734, label %cond.false731, !dbg !309

cond.false731:                                    ; preds = %cond.end722
  %call733 = call i32 @nk_attacked(i32 %add725, i32 0) #3, !dbg !309
  br label %cond.end734, !dbg !309

cond.end734:                                      ; preds = %cond.end722, %cond.false731
  %cond735 = phi i32 [ %call733, %cond.false731 ], [ 0, %cond.end722 ], !dbg !309
  %add736 = add i32 %add724, %cond735, !dbg !309
  call void @llvm.dbg.value(metadata !{i32 %add736}, i64 0, metadata !26), !dbg !309
  %185 = load i32* @black_hand_eval, align 4, !dbg !310, !tbaa !93
  call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !28), !dbg !310
  %cmp738 = icmp slt i32 %185, -1499, !dbg !311
  br i1 %cmp738, label %if.end746, label %if.else741, !dbg !311

if.else741:                                       ; preds = %cond.end734
  %div = sdiv i32 %185, -100, !dbg !310
  %cmp742 = icmp sgt i32 %185, 99, !dbg !312
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !28), !dbg !312
  %186 = sext i32 %div to i64, !dbg !312
  %phitmp = select i1 %cmp742, i64 0, i64 %186, !dbg !312
  br label %if.end746, !dbg !312

if.end746:                                        ; preds = %cond.end734, %if.else741
  %norm_black_hand_eval.0 = phi i64 [ %phitmp, %if.else741 ], [ 14, %cond.end734 ]
  %idxprom747 = sext i32 %add736 to i64, !dbg !313
  %arrayidx750 = getelementptr inbounds [15 x [9 x i32]]* @ksafety_scaled, i64 0, i64 %norm_black_hand_eval.0, i64 %idxprom747, !dbg !313
  %187 = load i32* %arrayidx750, align 4, !dbg !313, !tbaa !93
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !26), !dbg !314
  %188 = load i32* @bking_loc, align 4, !dbg !315, !tbaa !93
  %sub752 = add nsw i32 %188, -13, !dbg !315
  %idxprom753 = sext i32 %sub752 to i64, !dbg !315
  %arrayidx754 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom753, !dbg !315
  %189 = load i32* %arrayidx754, align 4, !dbg !315, !tbaa !93
  %cmp755 = icmp eq i32 %189, 0, !dbg !315
  br i1 %cmp755, label %cond.end761, label %cond.false758, !dbg !315

cond.false758:                                    ; preds = %if.end746
  %call760 = call i32 @nk_attacked(i32 %sub752, i32 1) #3, !dbg !315
  %.pre967 = load i32* @bking_loc, align 4, !dbg !316, !tbaa !93
  br label %cond.end761, !dbg !315

cond.end761:                                      ; preds = %if.end746, %cond.false758
  %190 = phi i32 [ %.pre967, %cond.false758 ], [ %188, %if.end746 ]
  %cond762 = phi i32 [ %call760, %cond.false758 ], [ 0, %if.end746 ], !dbg !315
  call void @llvm.dbg.value(metadata !{i32 %cond762}, i64 0, metadata !26), !dbg !315
  %sub764 = add nsw i32 %190, -12, !dbg !316
  %idxprom765 = sext i32 %sub764 to i64, !dbg !316
  %arrayidx766 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom765, !dbg !316
  %191 = load i32* %arrayidx766, align 4, !dbg !316, !tbaa !93
  %cmp767 = icmp eq i32 %191, 0, !dbg !316
  br i1 %cmp767, label %cond.end773, label %cond.false770, !dbg !316

cond.false770:                                    ; preds = %cond.end761
  %call772 = call i32 @nk_attacked(i32 %sub764, i32 1) #3, !dbg !316
  %.pre968 = load i32* @bking_loc, align 4, !dbg !317, !tbaa !93
  br label %cond.end773, !dbg !316

cond.end773:                                      ; preds = %cond.end761, %cond.false770
  %192 = phi i32 [ %.pre968, %cond.false770 ], [ %190, %cond.end761 ]
  %cond774 = phi i32 [ %call772, %cond.false770 ], [ 0, %cond.end761 ], !dbg !316
  %add775 = add i32 %cond774, %cond762, !dbg !316
  call void @llvm.dbg.value(metadata !{i32 %add775}, i64 0, metadata !26), !dbg !316
  %sub776 = add nsw i32 %192, -11, !dbg !317
  %idxprom777 = sext i32 %sub776 to i64, !dbg !317
  %arrayidx778 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom777, !dbg !317
  %193 = load i32* %arrayidx778, align 4, !dbg !317, !tbaa !93
  %cmp779 = icmp eq i32 %193, 0, !dbg !317
  br i1 %cmp779, label %cond.end785, label %cond.false782, !dbg !317

cond.false782:                                    ; preds = %cond.end773
  %call784 = call i32 @nk_attacked(i32 %sub776, i32 1) #3, !dbg !317
  %.pre969 = load i32* @bking_loc, align 4, !dbg !318, !tbaa !93
  br label %cond.end785, !dbg !317

cond.end785:                                      ; preds = %cond.end773, %cond.false782
  %194 = phi i32 [ %.pre969, %cond.false782 ], [ %192, %cond.end773 ]
  %cond786 = phi i32 [ %call784, %cond.false782 ], [ 0, %cond.end773 ], !dbg !317
  %add787 = add i32 %add775, %cond786, !dbg !317
  call void @llvm.dbg.value(metadata !{i32 %add787}, i64 0, metadata !26), !dbg !317
  %sub788 = add nsw i32 %194, -1, !dbg !318
  %idxprom789 = sext i32 %sub788 to i64, !dbg !318
  %arrayidx790 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom789, !dbg !318
  %195 = load i32* %arrayidx790, align 4, !dbg !318, !tbaa !93
  %cmp791 = icmp eq i32 %195, 0, !dbg !318
  br i1 %cmp791, label %cond.end797, label %cond.false794, !dbg !318

cond.false794:                                    ; preds = %cond.end785
  %call796 = call i32 @nk_attacked(i32 %sub788, i32 1) #3, !dbg !318
  %.pre970 = load i32* @bking_loc, align 4, !dbg !319, !tbaa !93
  br label %cond.end797, !dbg !318

cond.end797:                                      ; preds = %cond.end785, %cond.false794
  %196 = phi i32 [ %.pre970, %cond.false794 ], [ %194, %cond.end785 ]
  %cond798 = phi i32 [ %call796, %cond.false794 ], [ 0, %cond.end785 ], !dbg !318
  %add799 = add i32 %add787, %cond798, !dbg !318
  call void @llvm.dbg.value(metadata !{i32 %add799}, i64 0, metadata !26), !dbg !318
  %add800 = add nsw i32 %196, 1, !dbg !319
  %idxprom801 = sext i32 %add800 to i64, !dbg !319
  %arrayidx802 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom801, !dbg !319
  %197 = load i32* %arrayidx802, align 4, !dbg !319, !tbaa !93
  %cmp803 = icmp eq i32 %197, 0, !dbg !319
  br i1 %cmp803, label %cond.end809, label %cond.false806, !dbg !319

cond.false806:                                    ; preds = %cond.end797
  %call808 = call i32 @nk_attacked(i32 %add800, i32 1) #3, !dbg !319
  %.pre971 = load i32* @bking_loc, align 4, !dbg !320, !tbaa !93
  br label %cond.end809, !dbg !319

cond.end809:                                      ; preds = %cond.end797, %cond.false806
  %198 = phi i32 [ %.pre971, %cond.false806 ], [ %196, %cond.end797 ]
  %cond810 = phi i32 [ %call808, %cond.false806 ], [ 0, %cond.end797 ], !dbg !319
  %add811 = add i32 %add799, %cond810, !dbg !319
  call void @llvm.dbg.value(metadata !{i32 %add811}, i64 0, metadata !26), !dbg !319
  %add812 = add nsw i32 %198, 11, !dbg !320
  %idxprom813 = sext i32 %add812 to i64, !dbg !320
  %arrayidx814 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom813, !dbg !320
  %199 = load i32* %arrayidx814, align 4, !dbg !320, !tbaa !93
  %cmp815 = icmp eq i32 %199, 0, !dbg !320
  br i1 %cmp815, label %cond.end821, label %cond.false818, !dbg !320

cond.false818:                                    ; preds = %cond.end809
  %call820 = call i32 @nk_attacked(i32 %add812, i32 1) #3, !dbg !320
  %.pre972 = load i32* @bking_loc, align 4, !dbg !321, !tbaa !93
  br label %cond.end821, !dbg !320

cond.end821:                                      ; preds = %cond.end809, %cond.false818
  %200 = phi i32 [ %.pre972, %cond.false818 ], [ %198, %cond.end809 ]
  %cond822 = phi i32 [ %call820, %cond.false818 ], [ 0, %cond.end809 ], !dbg !320
  %add823 = add i32 %add811, %cond822, !dbg !320
  call void @llvm.dbg.value(metadata !{i32 %add823}, i64 0, metadata !26), !dbg !320
  %add824 = add nsw i32 %200, 12, !dbg !321
  %idxprom825 = sext i32 %add824 to i64, !dbg !321
  %arrayidx826 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom825, !dbg !321
  %201 = load i32* %arrayidx826, align 4, !dbg !321, !tbaa !93
  %cmp827 = icmp eq i32 %201, 0, !dbg !321
  br i1 %cmp827, label %cond.end833, label %cond.false830, !dbg !321

cond.false830:                                    ; preds = %cond.end821
  %call832 = call i32 @nk_attacked(i32 %add824, i32 1) #3, !dbg !321
  %.pre973 = load i32* @bking_loc, align 4, !dbg !322, !tbaa !93
  br label %cond.end833, !dbg !321

cond.end833:                                      ; preds = %cond.end821, %cond.false830
  %202 = phi i32 [ %.pre973, %cond.false830 ], [ %200, %cond.end821 ]
  %cond834 = phi i32 [ %call832, %cond.false830 ], [ 0, %cond.end821 ], !dbg !321
  %add835 = add i32 %add823, %cond834, !dbg !321
  call void @llvm.dbg.value(metadata !{i32 %add835}, i64 0, metadata !26), !dbg !321
  %add836 = add nsw i32 %202, 13, !dbg !322
  %idxprom837 = sext i32 %add836 to i64, !dbg !322
  %arrayidx838 = getelementptr inbounds [144 x i32]* @board, i64 0, i64 %idxprom837, !dbg !322
  %203 = load i32* %arrayidx838, align 4, !dbg !322, !tbaa !93
  %cmp839 = icmp eq i32 %203, 0, !dbg !322
  br i1 %cmp839, label %cond.end845, label %cond.false842, !dbg !322

cond.false842:                                    ; preds = %cond.end833
  %call844 = call i32 @nk_attacked(i32 %add836, i32 1) #3, !dbg !322
  br label %cond.end845, !dbg !322

cond.end845:                                      ; preds = %cond.end833, %cond.false842
  %cond846 = phi i32 [ %call844, %cond.false842 ], [ 0, %cond.end833 ], !dbg !322
  %add847 = add i32 %add835, %cond846, !dbg !322
  call void @llvm.dbg.value(metadata !{i32 %add847}, i64 0, metadata !26), !dbg !322
  %204 = load i32* @white_hand_eval, align 4, !dbg !323, !tbaa !93
  call void @llvm.dbg.value(metadata !{i32 %div848}, i64 0, metadata !27), !dbg !323
  %cmp849 = icmp sgt i32 %204, 1499, !dbg !324
  br i1 %cmp849, label %if.end857, label %if.else852, !dbg !324

if.else852:                                       ; preds = %cond.end845
  %div848 = sdiv i32 %204, 100, !dbg !323
  %cmp853 = icmp slt i32 %204, -99, !dbg !325
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !27), !dbg !325
  %205 = sext i32 %div848 to i64, !dbg !325
  %phitmp957 = select i1 %cmp853, i64 0, i64 %205, !dbg !325
  br label %if.end857, !dbg !325

if.end857:                                        ; preds = %cond.end845, %if.else852
  %norm_white_hand_eval.0 = phi i64 [ %phitmp957, %if.else852 ], [ 14, %cond.end845 ]
  %idxprom858 = sext i32 %add847 to i64, !dbg !326
  %arrayidx861 = getelementptr inbounds [15 x [9 x i32]]* @ksafety_scaled, i64 0, i64 %norm_white_hand_eval.0, i64 %idxprom858, !dbg !326
  %206 = load i32* %arrayidx861, align 4, !dbg !326, !tbaa !93
  %add862 = sub i32 %206, %187, !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %add862}, i64 0, metadata !25), !dbg !326
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !327
  %207 = load i32* %score, align 4, !dbg !327, !tbaa !93
  %add863 = add nsw i32 %add862, %207, !dbg !327
  call void @llvm.dbg.value(metadata !{i32 %add863}, i64 0, metadata !23), !dbg !327
  store i32 %add863, i32* %score, align 4, !dbg !327, !tbaa !93
  br label %if.end864, !dbg !328

if.end864:                                        ; preds = %if.end640.if.end864_crit_edge, %if.end857
  %208 = phi i32 [ %.pre977, %if.end640.if.end864_crit_edge ], [ %add863, %if.end857 ]
  %209 = phi i32 [ %.pre976, %if.end640.if.end864_crit_edge ], [ %204, %if.end857 ]
  %210 = load i32* @black_hand_eval, align 4, !dbg !298, !tbaa !93
  %add865 = add nsw i32 %210, %209, !dbg !298
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !298
  %add866 = add nsw i32 %add865, %208, !dbg !298
  call void @llvm.dbg.value(metadata !{i32 %add866}, i64 0, metadata !23), !dbg !298
  store i32 %add866, i32* %score, align 4, !dbg !298, !tbaa !93
  call void @storeECache(i32 %add866) #3, !dbg !329
  %211 = load i32* @white_to_move, align 4, !dbg !330, !tbaa !93
  %cmp867 = icmp eq i32 %211, 1, !dbg !330
  call void @llvm.dbg.value(metadata !{i32* %score}, i64 0, metadata !23), !dbg !331
  %212 = load i32* %score, align 4, !dbg !331, !tbaa !93
  %sub871 = sub nsw i32 0, %212, !dbg !333
  %.sub871 = select i1 %cmp867, i32 %212, i32 %sub871, !dbg !330
  br label %return, !dbg !330

return:                                           ; preds = %if.end864, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ %call7, %if.then6 ], [ %.sub871, %if.end864 ]
  ret i32 %retval.0, !dbg !335
}

; Function Attrs: optsize
declare i32 @std_eval(i32, i32) #2

; Function Attrs: optsize
declare i32 @suicide_eval() #2

; Function Attrs: optsize
declare i32 @losers_eval() #2

; Function Attrs: optsize
declare void @checkECache(i32*, i32*) #2

; Function Attrs: optsize
declare i32 @is_attacked(i32, i32) #2

; Function Attrs: optsize
declare i32 @nk_attacked(i32, i32) #2

; Function Attrs: optsize
declare void @storeECache(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !31, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"initialize_eval", metadata !"initialize_eval", metadata !"", i32 328, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @initialize_eval, null, null, metadata !8, i32 329} ; [ DW_TAG_subprogram ] [line 328] [def] [scope 329] [initialize_eval]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9, metadata !11, metadata !12, metadata !13}
!9 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 330, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 330]
!10 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!11 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 330, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 330]
!12 = metadata !{i32 786688, metadata !4, metadata !"sd", metadata !5, i32 330, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sd] [line 330]
!13 = metadata !{i32 786688, metadata !4, metadata !"sdi", metadata !5, i32 330, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sdi] [line 330]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"eval", metadata !"eval", metadata !"", i32 361, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32, i32)* @eval, null, null, metadata !17, i32 361} ; [ DW_TAG_subprogram ] [line 361] [def] [eval]
!15 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !10, metadata !10, metadata !10}
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30}
!18 = metadata !{i32 786689, metadata !14, metadata !"alpha", metadata !5, i32 16777577, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [alpha] [line 361]
!19 = metadata !{i32 786689, metadata !14, metadata !"beta", metadata !5, i32 33554793, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [beta] [line 361]
!20 = metadata !{i32 786688, metadata !14, metadata !"i", metadata !5, i32 365, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 365]
!21 = metadata !{i32 786688, metadata !14, metadata !"a", metadata !5, i32 365, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 365]
!22 = metadata !{i32 786688, metadata !14, metadata !"j", metadata !5, i32 365, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 365]
!23 = metadata !{i32 786688, metadata !14, metadata !"score", metadata !5, i32 366, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 366]
!24 = metadata !{i32 786688, metadata !14, metadata !"in_cache", metadata !5, i32 367, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_cache] [line 367]
!25 = metadata !{i32 786688, metadata !14, metadata !"safety", metadata !5, i32 368, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [safety] [line 368]
!26 = metadata !{i32 786688, metadata !14, metadata !"badsquares", metadata !5, i32 368, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [badsquares] [line 368]
!27 = metadata !{i32 786688, metadata !14, metadata !"norm_white_hand_eval", metadata !5, i32 369, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm_white_hand_eval] [line 369]
!28 = metadata !{i32 786688, metadata !14, metadata !"norm_black_hand_eval", metadata !5, i32 369, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [norm_black_hand_eval] [line 369]
!29 = metadata !{i32 786688, metadata !14, metadata !"wdev_dscale", metadata !5, i32 370, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wdev_dscale] [line 370]
!30 = metadata !{i32 786688, metadata !14, metadata !"bdev_dscale", metadata !5, i32 370, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bdev_dscale] [line 370]
!31 = metadata !{metadata !32, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !64, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !76, metadata !77, metadata !81, metadata !82, metadata !83, metadata !84}
!32 = metadata !{i32 786484, i32 0, null, metadata !"std_material", metadata !"std_material", metadata !"", metadata !5, i32 16, metadata !33, i32 0, i32 1, [14 x i32]* @std_material, null} ; [ DW_TAG_variable ] [std_material] [line 16] [def]
!33 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 448, i64 32, i32 0, i32 0, metadata !10, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from int]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 14}       ; [ DW_TAG_subrange_type ] [0, 13]
!36 = metadata !{i32 786484, i32 0, null, metadata !"zh_material", metadata !"zh_material", metadata !"", metadata !5, i32 18, metadata !33, i32 0, i32 1, [14 x i32]* @zh_material, null} ; [ DW_TAG_variable ] [zh_material] [line 18] [def]
!37 = metadata !{i32 786484, i32 0, null, metadata !"suicide_material", metadata !"suicide_material", metadata !"", metadata !5, i32 20, metadata !33, i32 0, i32 1, [14 x i32]* @suicide_material, null} ; [ DW_TAG_variable ] [suicide_material] [line 20] [def]
!38 = metadata !{i32 786484, i32 0, null, metadata !"losers_material", metadata !"losers_material", metadata !"", metadata !5, i32 22, metadata !33, i32 0, i32 1, [14 x i32]* @losers_material, null} ; [ DW_TAG_variable ] [losers_material] [line 22] [def]
!39 = metadata !{i32 786484, i32 0, null, metadata !"material", metadata !"material", metadata !"", metadata !5, i32 24, metadata !33, i32 0, i32 1, [14 x i32]* @material, null} ; [ DW_TAG_variable ] [material] [line 24] [def]
!40 = metadata !{i32 786484, i32 0, null, metadata !"Xfile", metadata !"Xfile", metadata !"", metadata !5, i32 26, metadata !41, i32 0, i32 1, [144 x i32]* @Xfile, null} ; [ DW_TAG_variable ] [Xfile] [line 26] [def]
!41 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4608, i64 32, i32 0, i32 0, metadata !42, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4608, align 32, offset 0] [from ]
!42 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786465, i64 0, i64 144}      ; [ DW_TAG_subrange_type ] [0, 143]
!45 = metadata !{i32 786484, i32 0, null, metadata !"Xrank", metadata !"Xrank", metadata !"", metadata !5, i32 42, metadata !41, i32 0, i32 1, [144 x i32]* @Xrank, null} ; [ DW_TAG_variable ] [Xrank] [line 42] [def]
!46 = metadata !{i32 786484, i32 0, null, metadata !"Xdiagl", metadata !"Xdiagl", metadata !"", metadata !5, i32 58, metadata !41, i32 0, i32 1, [144 x i32]* @Xdiagl, null} ; [ DW_TAG_variable ] [Xdiagl] [line 58] [def]
!47 = metadata !{i32 786484, i32 0, null, metadata !"Xdiagr", metadata !"Xdiagr", metadata !"", metadata !5, i32 74, metadata !41, i32 0, i32 1, [144 x i32]* @Xdiagr, null} ; [ DW_TAG_variable ] [Xdiagr] [line 74] [def]
!48 = metadata !{i32 786484, i32 0, null, metadata !"sqcolor", metadata !"sqcolor", metadata !"", metadata !5, i32 90, metadata !41, i32 0, i32 1, [144 x i32]* @sqcolor, null} ; [ DW_TAG_variable ] [sqcolor] [line 90] [def]
!49 = metadata !{i32 786484, i32 0, null, metadata !"pcsqbishop", metadata !"pcsqbishop", metadata !"", metadata !5, i32 109, metadata !41, i32 0, i32 1, [144 x i32]* @pcsqbishop, null} ; [ DW_TAG_variable ] [pcsqbishop] [line 109] [def]
!50 = metadata !{i32 786484, i32 0, null, metadata !"black_knight", metadata !"black_knight", metadata !"", metadata !5, i32 123, metadata !41, i32 0, i32 1, [144 x i32]* @black_knight, null} ; [ DW_TAG_variable ] [black_knight] [line 123] [def]
!51 = metadata !{i32 786484, i32 0, null, metadata !"white_knight", metadata !"white_knight", metadata !"", metadata !5, i32 137, metadata !41, i32 0, i32 1, [144 x i32]* @white_knight, null} ; [ DW_TAG_variable ] [white_knight] [line 137] [def]
!52 = metadata !{i32 786484, i32 0, null, metadata !"white_pawn", metadata !"white_pawn", metadata !"", metadata !5, i32 151, metadata !41, i32 0, i32 1, [144 x i32]* @white_pawn, null} ; [ DW_TAG_variable ] [white_pawn] [line 151] [def]
!53 = metadata !{i32 786484, i32 0, null, metadata !"black_pawn", metadata !"black_pawn", metadata !"", metadata !5, i32 167, metadata !41, i32 0, i32 1, [144 x i32]* @black_pawn, null} ; [ DW_TAG_variable ] [black_pawn] [line 167] [def]
!54 = metadata !{i32 786484, i32 0, null, metadata !"white_king", metadata !"white_king", metadata !"", metadata !5, i32 184, metadata !41, i32 0, i32 1, [144 x i32]* @white_king, null} ; [ DW_TAG_variable ] [white_king] [line 184] [def]
!55 = metadata !{i32 786484, i32 0, null, metadata !"black_king", metadata !"black_king", metadata !"", metadata !5, i32 199, metadata !41, i32 0, i32 1, [144 x i32]* @black_king, null} ; [ DW_TAG_variable ] [black_king] [line 199] [def]
!56 = metadata !{i32 786484, i32 0, null, metadata !"black_queen", metadata !"black_queen", metadata !"", metadata !5, i32 213, metadata !41, i32 0, i32 1, [144 x i32]* @black_queen, null} ; [ DW_TAG_variable ] [black_queen] [line 213] [def]
!57 = metadata !{i32 786484, i32 0, null, metadata !"white_queen", metadata !"white_queen", metadata !"", metadata !5, i32 228, metadata !41, i32 0, i32 1, [144 x i32]* @white_queen, null} ; [ DW_TAG_variable ] [white_queen] [line 228] [def]
!58 = metadata !{i32 786484, i32 0, null, metadata !"black_rook", metadata !"black_rook", metadata !"", metadata !5, i32 242, metadata !41, i32 0, i32 1, [144 x i32]* @black_rook, null} ; [ DW_TAG_variable ] [black_rook] [line 242] [def]
!59 = metadata !{i32 786484, i32 0, null, metadata !"white_rook", metadata !"white_rook", metadata !"", metadata !5, i32 258, metadata !41, i32 0, i32 1, [144 x i32]* @white_rook, null} ; [ DW_TAG_variable ] [white_rook] [line 258] [def]
!60 = metadata !{i32 786484, i32 0, null, metadata !"upscale", metadata !"upscale", metadata !"", metadata !5, i32 274, metadata !61, i32 0, i32 1, [64 x i32]* @upscale, null} ; [ DW_TAG_variable ] [upscale] [line 274] [def]
!61 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 2048, i64 32, i32 0, i32 0, metadata !42, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 32, offset 0] [from ]
!62 = metadata !{metadata !63}
!63 = metadata !{i32 786465, i64 0, i64 64}       ; [ DW_TAG_subrange_type ] [0, 63]
!64 = metadata !{i32 786484, i32 0, null, metadata !"pre_p_tropism", metadata !"pre_p_tropism", metadata !"", metadata !5, i32 288, metadata !65, i32 0, i32 1, [9 x i32]* @pre_p_tropism, null} ; [ DW_TAG_variable ] [pre_p_tropism] [line 288] [def]
!65 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !66, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 288, align 32, offset 0] [from int]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786465, i64 0, i64 9}        ; [ DW_TAG_subrange_type ] [0, 8]
!68 = metadata !{i32 786484, i32 0, null, metadata !"pre_r_tropism", metadata !"pre_r_tropism", metadata !"", metadata !5, i32 291, metadata !65, i32 0, i32 1, [9 x i32]* @pre_r_tropism, null} ; [ DW_TAG_variable ] [pre_r_tropism] [line 291] [def]
!69 = metadata !{i32 786484, i32 0, null, metadata !"pre_n_tropism", metadata !"pre_n_tropism", metadata !"", metadata !5, i32 294, metadata !65, i32 0, i32 1, [9 x i32]* @pre_n_tropism, null} ; [ DW_TAG_variable ] [pre_n_tropism] [line 294] [def]
!70 = metadata !{i32 786484, i32 0, null, metadata !"pre_q_tropism", metadata !"pre_q_tropism", metadata !"", metadata !5, i32 297, metadata !65, i32 0, i32 1, [9 x i32]* @pre_q_tropism, null} ; [ DW_TAG_variable ] [pre_q_tropism] [line 297] [def]
!71 = metadata !{i32 786484, i32 0, null, metadata !"pre_b_tropism", metadata !"pre_b_tropism", metadata !"", metadata !5, i32 300, metadata !65, i32 0, i32 1, [9 x i32]* @pre_b_tropism, null} ; [ DW_TAG_variable ] [pre_b_tropism] [line 300] [def]
!72 = metadata !{i32 786484, i32 0, null, metadata !"ksafety_scaled", metadata !"ksafety_scaled", metadata !"", metadata !5, i32 309, metadata !73, i32 0, i32 1, [15 x [9 x i32]]* @ksafety_scaled, null} ; [ DW_TAG_variable ] [ksafety_scaled] [line 309] [def]
!73 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 4320, i64 32, i32 0, i32 0, metadata !10, metadata !74, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 4320, align 32, offset 0] [from int]
!74 = metadata !{metadata !75, metadata !67}
!75 = metadata !{i32 786465, i64 0, i64 15}       ; [ DW_TAG_subrange_type ] [0, 14]
!76 = metadata !{i32 786484, i32 0, null, metadata !"Material", metadata !"Material", metadata !"", metadata !5, i32 15, metadata !10, i32 0, i32 1, i32* @Material, null} ; [ DW_TAG_variable ] [Material] [line 15] [def]
!77 = metadata !{i32 786484, i32 0, null, metadata !"p_tropism", metadata !"p_tropism", metadata !"", metadata !5, i32 303, metadata !78, i32 0, i32 1, [144 x [144 x i8]]* @p_tropism, null} ; [ DW_TAG_variable ] [p_tropism] [line 303] [def]
!78 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 165888, i64 8, i32 0, i32 0, metadata !79, metadata !80, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 165888, align 8, offset 0] [from unsigned char]
!79 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!80 = metadata !{metadata !44, metadata !44}
!81 = metadata !{i32 786484, i32 0, null, metadata !"q_tropism", metadata !"q_tropism", metadata !"", metadata !5, i32 304, metadata !78, i32 0, i32 1, [144 x [144 x i8]]* @q_tropism, null} ; [ DW_TAG_variable ] [q_tropism] [line 304] [def]
!82 = metadata !{i32 786484, i32 0, null, metadata !"n_tropism", metadata !"n_tropism", metadata !"", metadata !5, i32 305, metadata !78, i32 0, i32 1, [144 x [144 x i8]]* @n_tropism, null} ; [ DW_TAG_variable ] [n_tropism] [line 305] [def]
!83 = metadata !{i32 786484, i32 0, null, metadata !"r_tropism", metadata !"r_tropism", metadata !"", metadata !5, i32 306, metadata !78, i32 0, i32 1, [144 x [144 x i8]]* @r_tropism, null} ; [ DW_TAG_variable ] [r_tropism] [line 306] [def]
!84 = metadata !{i32 786484, i32 0, null, metadata !"b_tropism", metadata !"b_tropism", metadata !"", metadata !5, i32 307, metadata !78, i32 0, i32 1, [144 x [144 x i8]]* @b_tropism, null} ; [ DW_TAG_variable ] [b_tropism] [line 307] [def]
!85 = metadata !{i32 332, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !4, i32 332, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!87 = metadata !{i32 336, i32 0, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !89, i32 335, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 334, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!90 = metadata !{i32 786443, metadata !1, metadata !86, i32 333, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!91 = metadata !{i32 337, i32 0, metadata !88, null}
!92 = metadata !{i32 338, i32 0, metadata !88, null}
!93 = metadata !{metadata !"int", metadata !94}
!94 = metadata !{metadata !"omnipotent char", metadata !95}
!95 = metadata !{metadata !"Simple C/C++ TBAA"}
!96 = metadata !{i32 334, i32 0, metadata !89, null}
!97 = metadata !{i32 339, i32 0, metadata !88, null}
!98 = metadata !{i32 348, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !100, i32 346, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!100 = metadata !{i32 786443, metadata !1, metadata !101, i32 345, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!101 = metadata !{i32 786443, metadata !1, metadata !102, i32 344, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!102 = metadata !{i32 786443, metadata !1, metadata !4, i32 343, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!103 = metadata !{i32 345, i32 0, metadata !100, null}
!104 = metadata !{i32 350, i32 0, metadata !99, null}
!105 = metadata !{i32 352, i32 0, metadata !99, null}
!106 = metadata !{i32 354, i32 0, metadata !99, null}
!107 = metadata !{i32 356, i32 0, metadata !99, null}
!108 = metadata !{i32 343, i32 0, metadata !102, null}
!109 = metadata !{i32 359, i32 0, metadata !4, null}
!110 = metadata !{i32 361, i32 0, metadata !14, null}
!111 = metadata !{i32 366, i32 0, metadata !14, null}
!112 = metadata !{i32 367, i32 0, metadata !14, null}
!113 = metadata !{i32 372, i32 0, metadata !14, null}
!114 = metadata !{i32 374, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !14, i32 373, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!116 = metadata !{i32 378, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !14, i32 377, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!118 = metadata !{i32 382, i32 0, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !14, i32 381, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!120 = metadata !{i32 385, i32 0, metadata !14, null}
!121 = metadata !{i32 387, i32 0, metadata !14, null}
!122 = metadata !{i32 389, i32 0, metadata !14, null}
!123 = metadata !{i32 391, i32 0, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !14, i32 390, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!125 = metadata !{i32 392, i32 0, metadata !124, null}
!126 = metadata !{i32 397, i32 0, metadata !14, null}
!127 = metadata !{i32 400, i32 0, metadata !128, null}
!128 = metadata !{i32 786443, metadata !1, metadata !14, i32 398, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!129 = metadata !{i32 402, i32 0, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !128, i32 401, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!131 = metadata !{i32 411, i32 0, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !130, i32 408, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!133 = metadata !{i32 420, i32 0, metadata !128, null}
!134 = metadata !{i32 422, i32 0, metadata !135, null}
!135 = metadata !{i32 786443, metadata !1, metadata !128, i32 421, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!136 = metadata !{i32 431, i32 0, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !135, i32 428, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!138 = metadata !{i32 1}
!139 = metadata !{i32 447, i32 0, metadata !140, null}
!140 = metadata !{i32 786443, metadata !1, metadata !14, i32 447, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!141 = metadata !{i32 522, i32 0, metadata !14, null}
!142 = metadata !{i32 523, i32 0, metadata !14, null}
!143 = metadata !{i32 459, i32 0, metadata !144, null}
!144 = metadata !{i32 786443, metadata !1, metadata !145, i32 455, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!145 = metadata !{i32 786443, metadata !1, metadata !140, i32 447, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!146 = metadata !{i32 465, i32 0, metadata !144, null}
!147 = metadata !{i32 448, i32 0, metadata !145, null}
!148 = metadata !{i32 450, i32 0, metadata !145, null}
!149 = metadata !{i32 453, i32 0, metadata !145, null}
!150 = metadata !{i32 455, i32 0, metadata !145, null}
!151 = metadata !{i32 457, i32 0, metadata !144, null}
!152 = metadata !{i32 458, i32 0, metadata !144, null}
!153 = metadata !{i32 460, i32 0, metadata !144, null}
!154 = metadata !{i32 463, i32 0, metadata !144, null}
!155 = metadata !{i32 464, i32 0, metadata !144, null}
!156 = metadata !{i32 466, i32 0, metadata !144, null}
!157 = metadata !{i32 469, i32 0, metadata !144, null}
!158 = metadata !{i32 470, i32 0, metadata !144, null}
!159 = metadata !{i32 471, i32 0, metadata !144, null}
!160 = metadata !{i32 472, i32 0, metadata !144, null}
!161 = metadata !{i32 475, i32 0, metadata !144, null}
!162 = metadata !{i32 476, i32 0, metadata !144, null}
!163 = metadata !{i32 477, i32 0, metadata !144, null}
!164 = metadata !{i32 478, i32 0, metadata !144, null}
!165 = metadata !{i32 481, i32 0, metadata !144, null}
!166 = metadata !{i32 482, i32 0, metadata !144, null}
!167 = metadata !{i32 483, i32 0, metadata !144, null}
!168 = metadata !{i32 484, i32 0, metadata !144, null}
!169 = metadata !{i32 487, i32 0, metadata !144, null}
!170 = metadata !{i32 488, i32 0, metadata !144, null}
!171 = metadata !{i32 489, i32 0, metadata !144, null}
!172 = metadata !{i32 490, i32 0, metadata !144, null}
!173 = metadata !{i32 493, i32 0, metadata !144, null}
!174 = metadata !{i32 494, i32 0, metadata !144, null}
!175 = metadata !{i32 495, i32 0, metadata !144, null}
!176 = metadata !{i32 496, i32 0, metadata !144, null}
!177 = metadata !{i32 499, i32 0, metadata !144, null}
!178 = metadata !{i32 500, i32 0, metadata !144, null}
!179 = metadata !{i32 501, i32 0, metadata !144, null}
!180 = metadata !{i32 502, i32 0, metadata !144, null}
!181 = metadata !{i32 505, i32 0, metadata !144, null}
!182 = metadata !{i32 506, i32 0, metadata !144, null}
!183 = metadata !{i32 507, i32 0, metadata !144, null}
!184 = metadata !{i32 508, i32 0, metadata !144, null}
!185 = metadata !{i32 511, i32 0, metadata !144, null}
!186 = metadata !{i32 512, i32 0, metadata !144, null}
!187 = metadata !{i32 513, i32 0, metadata !144, null}
!188 = metadata !{i32 514, i32 0, metadata !144, null}
!189 = metadata !{i32 528, i32 0, metadata !14, null}
!190 = metadata !{i32 530, i32 0, metadata !191, null}
!191 = metadata !{i32 786443, metadata !1, metadata !14, i32 529, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!192 = metadata !{i32 531, i32 0, metadata !191, null}
!193 = metadata !{i32 532, i32 0, metadata !14, null}
!194 = metadata !{i32 534, i32 0, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !14, i32 533, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!196 = metadata !{i32 535, i32 0, metadata !195, null}
!197 = metadata !{i32 538, i32 0, metadata !14, null}
!198 = metadata !{i32 539, i32 0, metadata !14, null}
!199 = metadata !{i32 540, i32 0, metadata !14, null}
!200 = metadata !{i32 541, i32 0, metadata !14, null}
!201 = metadata !{i32 542, i32 0, metadata !14, null}
!202 = metadata !{i32 543, i32 0, metadata !14, null}
!203 = metadata !{i32 544, i32 0, metadata !14, null}
!204 = metadata !{i32 545, i32 0, metadata !14, null}
!205 = metadata !{i32 548, i32 0, metadata !14, null}
!206 = metadata !{i32 553, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !14, i32 549, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!208 = metadata !{i32 555, i32 0, metadata !209, null}
!209 = metadata !{i32 786443, metadata !1, metadata !207, i32 554, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!210 = metadata !{i32 556, i32 0, metadata !209, null}
!211 = metadata !{i32 557, i32 0, metadata !209, null}
!212 = metadata !{i32 560, i32 0, metadata !209, null}
!213 = metadata !{i32 562, i32 0, metadata !214, null}
!214 = metadata !{i32 786443, metadata !1, metadata !209, i32 561, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!215 = metadata !{i32 563, i32 0, metadata !214, null}
!216 = metadata !{i32 564, i32 0, metadata !214, null}
!217 = metadata !{i32 568, i32 0, metadata !207, null}
!218 = metadata !{i32 570, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !207, i32 569, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!220 = metadata !{i32 571, i32 0, metadata !219, null}
!221 = metadata !{i32 572, i32 0, metadata !219, null}
!222 = metadata !{i32 575, i32 0, metadata !219, null}
!223 = metadata !{i32 577, i32 0, metadata !224, null}
!224 = metadata !{i32 786443, metadata !1, metadata !219, i32 576, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!225 = metadata !{i32 578, i32 0, metadata !224, null}
!226 = metadata !{i32 579, i32 0, metadata !224, null}
!227 = metadata !{i32 583, i32 0, metadata !207, null}
!228 = metadata !{i32 585, i32 0, metadata !229, null}
!229 = metadata !{i32 786443, metadata !1, metadata !207, i32 584, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!230 = metadata !{i32 586, i32 0, metadata !229, null}
!231 = metadata !{i32 587, i32 0, metadata !229, null}
!232 = metadata !{i32 588, i32 0, metadata !229, null}
!233 = metadata !{i32 589, i32 0, metadata !229, null}
!234 = metadata !{i32 591, i32 0, metadata !207, null}
!235 = metadata !{i32 593, i32 0, metadata !236, null}
!236 = metadata !{i32 786443, metadata !1, metadata !207, i32 592, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!237 = metadata !{i32 594, i32 0, metadata !236, null}
!238 = metadata !{i32 595, i32 0, metadata !236, null}
!239 = metadata !{i32 596, i32 0, metadata !236, null}
!240 = metadata !{i32 597, i32 0, metadata !236, null}
!241 = metadata !{i32 603, i32 0, metadata !207, null}
!242 = metadata !{i32 604, i32 0, metadata !207, null}
!243 = metadata !{i32 605, i32 0, metadata !207, null}
!244 = metadata !{i32 606, i32 0, metadata !207, null}
!245 = metadata !{i32 614, i32 0, metadata !207, null}
!246 = metadata !{i32 616, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !207, i32 615, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!248 = metadata !{i32 617, i32 0, metadata !247, null}
!249 = metadata !{i32 618, i32 0, metadata !247, null}
!250 = metadata !{i32 620, i32 0, metadata !207, null}
!251 = metadata !{i32 622, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !207, i32 621, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!253 = metadata !{i32 623, i32 0, metadata !252, null}
!254 = metadata !{i32 624, i32 0, metadata !252, null}
!255 = metadata !{i32 630, i32 0, metadata !207, null}
!256 = metadata !{i32 632, i32 0, metadata !257, null}
!257 = metadata !{i32 786443, metadata !1, metadata !207, i32 631, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!258 = metadata !{i32 633, i32 0, metadata !257, null}
!259 = metadata !{i32 634, i32 0, metadata !257, null}
!260 = metadata !{i32 636, i32 0, metadata !207, null}
!261 = metadata !{i32 638, i32 0, metadata !262, null}
!262 = metadata !{i32 786443, metadata !1, metadata !207, i32 637, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!263 = metadata !{i32 639, i32 0, metadata !262, null}
!264 = metadata !{i32 640, i32 0, metadata !262, null}
!265 = metadata !{i32 645, i32 0, metadata !207, null}
!266 = metadata !{i32 646, i32 0, metadata !207, null}
!267 = metadata !{i32 647, i32 0, metadata !207, null}
!268 = metadata !{i32 648, i32 0, metadata !207, null}
!269 = metadata !{i32 653, i32 0, metadata !207, null}
!270 = metadata !{i32 655, i32 0, metadata !271, null}
!271 = metadata !{i32 786443, metadata !1, metadata !207, i32 654, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!272 = metadata !{i32 656, i32 0, metadata !271, null}
!273 = metadata !{i32 657, i32 0, metadata !271, null}
!274 = metadata !{i32 658, i32 0, metadata !271, null}
!275 = metadata !{i32 660, i32 0, metadata !207, null}
!276 = metadata !{i32 662, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !207, i32 661, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!278 = metadata !{i32 663, i32 0, metadata !277, null}
!279 = metadata !{i32 664, i32 0, metadata !277, null}
!280 = metadata !{i32 665, i32 0, metadata !277, null}
!281 = metadata !{i32 671, i32 0, metadata !207, null}
!282 = metadata !{i32 673, i32 0, metadata !283, null}
!283 = metadata !{i32 786443, metadata !1, metadata !207, i32 672, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!284 = metadata !{i32 674, i32 0, metadata !283, null}
!285 = metadata !{i32 676, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !283, i32 675, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!287 = metadata !{i32 677, i32 0, metadata !286, null}
!288 = metadata !{i32 678, i32 0, metadata !286, null}
!289 = metadata !{i32 681, i32 0, metadata !207, null}
!290 = metadata !{i32 683, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !207, i32 682, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!292 = metadata !{i32 684, i32 0, metadata !291, null}
!293 = metadata !{i32 686, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !291, i32 685, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!295 = metadata !{i32 687, i32 0, metadata !294, null}
!296 = metadata !{i32 688, i32 0, metadata !294, null}
!297 = metadata !{i32 693, i32 0, metadata !14, null}
!298 = metadata !{i32 733, i32 0, metadata !14, null}
!299 = metadata !{i32 695, i32 0, metadata !300, null}
!300 = metadata !{i32 786443, metadata !1, metadata !14, i32 694, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!301 = metadata !{i32 696, i32 0, metadata !300, null}
!302 = metadata !{i32 698, i32 0, metadata !300, null}
!303 = metadata !{i32 699, i32 0, metadata !300, null}
!304 = metadata !{i32 700, i32 0, metadata !300, null}
!305 = metadata !{i32 701, i32 0, metadata !300, null}
!306 = metadata !{i32 702, i32 0, metadata !300, null}
!307 = metadata !{i32 703, i32 0, metadata !300, null}
!308 = metadata !{i32 704, i32 0, metadata !300, null}
!309 = metadata !{i32 705, i32 0, metadata !300, null}
!310 = metadata !{i32 707, i32 0, metadata !300, null}
!311 = metadata !{i32 708, i32 0, metadata !300, null}
!312 = metadata !{i32 709, i32 0, metadata !300, null}
!313 = metadata !{i32 711, i32 0, metadata !300, null}
!314 = metadata !{i32 713, i32 0, metadata !300, null}
!315 = metadata !{i32 715, i32 0, metadata !300, null}
!316 = metadata !{i32 716, i32 0, metadata !300, null}
!317 = metadata !{i32 717, i32 0, metadata !300, null}
!318 = metadata !{i32 718, i32 0, metadata !300, null}
!319 = metadata !{i32 719, i32 0, metadata !300, null}
!320 = metadata !{i32 720, i32 0, metadata !300, null}
!321 = metadata !{i32 721, i32 0, metadata !300, null}
!322 = metadata !{i32 722, i32 0, metadata !300, null}
!323 = metadata !{i32 724, i32 0, metadata !300, null}
!324 = metadata !{i32 725, i32 0, metadata !300, null}
!325 = metadata !{i32 726, i32 0, metadata !300, null}
!326 = metadata !{i32 728, i32 0, metadata !300, null}
!327 = metadata !{i32 730, i32 0, metadata !300, null}
!328 = metadata !{i32 731, i32 0, metadata !300, null}
!329 = metadata !{i32 735, i32 0, metadata !14, null}
!330 = metadata !{i32 738, i32 0, metadata !14, null}
!331 = metadata !{i32 739, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !14, i32 738, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!333 = metadata !{i32 742, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !14, i32 741, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/458.sjeng/src/eval.c]
!335 = metadata !{i32 745, i32 0, metadata !14, null}

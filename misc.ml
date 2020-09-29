
#use "math.ml" ;;

(** Arithmetic operations on float vectors and float matrices. The symbol [$] is on the side of a vector,
the symbol [%] is on the side of a matrix.

Op�rations arithm�tiques sur les vecteurs et matrices r�els. Le symbole [$] se place du c�t� d'un vecteur,
le symbole [%] se place du c�t� d'une matrice. *)
let ( $+. ) x y = Matrix.vector_float_scal_add y x ;;
let ( +.$ ) x y = Matrix.vector_float_scal_add x y ;;
let ( $+.$ ) x y = Matrix.vector_float_plus x y ;;
let ( +.% ) x y = Matrix.matrix_float_scal_add x y ;;
let ( %+. ) x y = Matrix.matrix_float_scal_add y x ;;
let ( %+.%) x y = Matrix.matrix_float_plus x y ;;

let ( $-. ) x y = Matrix.vector_float_scal_left_sub y x ;;
let ( -.$ ) x y = Matrix.vector_float_scal_right_sub x y ;;
let ( $-.$ ) x y = Matrix.vector_float_minus x y ;;
let ( -.% ) x y = Matrix.matrix_float_scal_right_sub x y ;;
let ( %-. ) x y = Matrix.matrix_float_scal_left_sub y x ;;
let ( %-.%) x y = Matrix.matrix_float_minus x y ;;

let ( $*. ) x y = Matrix.vector_float_scal_mult y x ;;
let ( *.$ ) x y = Matrix.vector_float_scal_mult x y ;;
let ( $*.$ ) x y = Matrix.vector_float_scal_prod x y ;;
let ( $.*.$ ) x y = Matrix.vector_float_coeff_prod x y ;;
let ( *.% ) x y = Matrix.matrix_float_scal_mult x y ;;
let ( %*. ) x y = Matrix.matrix_float_scal_mult y x ;;
let ( %*.%) x y = Matrix.matrix_float_prod x y ;;
let ( %.*.%) x y = Matrix.matrix_float_coeff_prod x y ;;

let ( $/. ) x y = Matrix.vector_float_scal_left_div y x ;;
let ( /.$ ) x y = Matrix.vector_float_scal_right_div x y ;;
let ( $/.$ ) x y = Matrix.vector_float_coeff_div x y ;;
let ( /.% ) x y = Matrix.matrix_float_scal_right_div x y ;;
let ( %/. ) x y = Matrix.matrix_float_scal_left_div y x ;;
let ( %/.% ) x y = Matrix.matrix_float_right_quotient x y ;;
let ( %.:% ) x y = Matrix.matrix_float_left_quotient x y ;;





# irregularsudoku




:- use_module(library(clpfd)).
sudoku(Matrix):-
  length(Matrix, 9),
  maplist(same_length(Matrix), Matrix),
  append(Matrix, Elems), Elems ins 1..9,
  maplist(all_distinct, Matrix),
  transpose(Matrix, Matrix2),
  maplist(all_distinct, Matrix2),
  Matrix = [R1, R2, R3, R4, R5, R6, R7, R8, R9],
         R1 = [E11, E12, E13, E14, E15, E16, E17, E18, E19],
	 R2 = [E21, E22, E23, E24, E25, E26, E27, E28, E29],
	 R3 = [E31, E32, E33, E34, E35, E36, E37, E38, E39],
	 R4 = [E41, E42, E43, E44, E45, E46, E47, E48, E49],
	 R5 = [E51, E52, E53, E54, E55, E56, E57, E58, E59],
	 R6 = [E61, E62, E63, E64, E65, E66, E67, E68, E69],
	 R7 = [E71, E72, E73, E74, E75, E76, E77, E78, E79],
	 R8 = [E81, E82, E83, E84, E85, E86, E87, E88, E89],
	 R9 = [E91, E92, E93, E94, E95, E96, E97, E98, E99],

	 all_distinct([E11,E12,E13,E21,E22,E31,E32,E33,E42]),
         all_distinct([E14,E15,E16,E23,E24,E25,E35,E36,E45]),
         all_distinct([E17,E18,E19,E26,E27,E28,E29,E37,E39]),
         all_distinct([E41,E43,E51,E52,E53,E61,E62,E63,E72]),
         all_distinct([E71,E73,E81,E82,E83,E84,E91,E92,E93]),
         all_distinct([E34,E44,E54,E64,E55,E56,E46,E66,E76]),
         all_distinct([E74,E65,E75,E85,E86,E87,E94,E95,E96]),
         all_distinct([E38,E47,E48,E49,E57,E58,E59,E67,E69]),
         all_distinct([E77,E78,E79,E68,E97,E98,E89,E88,E99]).




sudoku1([[8,2,3,9,1,_,6,_,7],
              [6,7,8,_,_,1,_,9,4],
              [4,_,_,_,6,_,8,3,2],
              [7,1,2,6,_,5,_,_,9],
              [3,_,1,_,9,_,5,7,6],
              [5,4,9,_,8,_,_,_,_],
              [_,_,7,_,5,8,_,4,3],
              [9,_,4,_,7,6,_,_,_],
              [2,5,_,3,_,9,7,_,8]]).

              
	      
	      
# The code to return the output: 

?- sudoku1(S), sudoku(S); true.




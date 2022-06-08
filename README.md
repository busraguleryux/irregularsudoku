# irregularsudoku

/*


This is the final project for the course "Knowledge Representation" by Büşra Güleryüz.


The task is to write codes on SWI Prolog that will solve irregular sudoku puzzles. I am going to explain how to write the appropriate codes for this task.


Firstly we should start explaining how to use SWI Prolog. After installation of the program, when we open it we should click on "File" -> "New.." and create a new Prolog source, which will let us write the clauses for our purpose. We will write the clauses and save it by clicking Ctrl + C + B and compile the clauses to use them. 


All the codes written below will be entered into the Prolog source page unless otherwise stated.

First, we should start to use library "clpfd". 
This library provides CLP(FD): Constraint Logic Programming over Finite Domains.  CLP(FD) lets us reason about integers in a way that honors the relational nature of Prolog. (retrieved from https://www.swi-prolog.org/man/clpfd.html.) In order to load the library we use: 



:- use_module(library(clpfd)).


 


Now we can start explaining the basics and the functions which we are going to use in this process.


1) Length: Returns the output "true" if "Length" represents the number of elements in List. Can be used to find the length of a list or produce a list (holding variables) of length depicted. For example: 

?- length([a,b,c,d], 4). 
true. 

Or what we are going to use in this code is; 

"(...) 
length(Matrix, 9), 
(...)"
Indicates that the rows in our sudoku matrix have 9 elements.


2) Lists and maplisting: 

We can show lists as: L = [a, b, c] The first element of the list is called head, and the rest are called tail. If we write Tail = [b, c] then we can also write the list L as L = [ a | Tail]. Here the bar (|) separates the head and tail parts.


Maplisting shows us whether or not it is possible to apply one rule to all of the elements in a list. The return is "true" if yes, and "false" if no. For example: the code " ?-maplist(=(1), [1,2,3]). " returns the output "false", because in the list there are other elements that do not equal to 1. 

3) Append: It is defined as the operation which adds items of one list into another. For example:

?-append([a,b,c],[1,2,3],L1).
L1 = [a, b, c, 1, 2, 3].

4) Transpose: Transpose a list of lists of the same length. For example:

?- transpose([[1,2,3],[4,5,6],[7,8,9]], Tr).
Tr = [[1, 4, 7], [2, 5, 8], [3, 6, 9]].

And finally, depicting our matrix, I have depicted the rows of the matrix in: 

Matrix = [R1, R2, R3, R4, R5, R6, R7, R8, R9]. 

And then I have written every matrix cell of every row. And since this sudoku is an irregular sudoku, I had to depict every block by including each cell in respective blocks using all_distinct formula. For example: 


all_distinct([E11,E12,E13,E21,E22,E31,E32,E33,E42]) means that every cell in this formula represent one block. 

_______________________

I have created my own irregular sudoku via the website https://sudokuspoiler.com , I entered some random numbers into the cells and wrote my codes accordingly. 

I am entering my codes here along with another .pl document.

*/



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




sudoku5([[8,2,3,9,1,_,6,_,7],
              [6,7,8,_,_,1,_,9,4],
              [4,_,_,_,6,_,8,3,2],
              [7,1,2,6,_,5,_,_,9],
              [3,_,_,_,9,_,5,7,9],
              [5,4,9,_,8,_,_,_,_],
              [_,_,7,_,5,8,_,4,3],
              [9,_,4,_,7,6,_,_,_],
              [2,5,_,3,4,9,7,1,8]]).
              
              

# irregularsudoku


This is the final project for the course "Knowledge Representation" by Büşra Güleryüz.


The task is to write codes on SWI Prolog that will solve irregular sudoku puzzles. I am going to explain how to write the appropriate codes for this task.


Firstly we should start explaining how to use SWI Prolog. After installation of the program, when we open it we should click on "File" -> "New.." and create a new Prolog source, which will let us write the clauses for our purpose. We will write the clauses and save it by clicking Ctrl + C + B and compile the clauses to use them. 


All the codes written below will be entered into the Prolog source page unless otherwise stated.


First, we should start to use library "clpfd". 

This library provides CLP(FD): Constraint Logic Programming over Finite Domains.  CLP(FD) lets us reason about integers in a way that honors the relational nature of Prolog. (retrieved from https://www.swi-prolog.org/man/clpfd.html.) In order to load the library we use: 
*/


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



I have created my own irregular sudoku via the website https://sudokuspoiler.com , I entered some random numbers into the cells and wrote my codes accordingly. 


Here are the sudoku that i randomly created and the result that the website has returned; a visual example of the codes. A useful way to check the accuracy. 

![image](https://user-images.githubusercontent.com/75578167/174316445-7b8450e8-6f9b-4111-b853-c2c596417175.png)
![image](https://user-images.githubusercontent.com/75578167/174316508-15d55c14-dba8-417b-b10d-5b2abd90a6f3.png)




I am uploading my codes with another .pl document.

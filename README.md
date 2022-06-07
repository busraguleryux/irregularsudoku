# irregularsudoku


/*

This is the final project for the course "Knowledge Representation" by Büşra Güleryüz.


The task is to write codes on SWI Prolog that will solve irregular sudoku puzzles. I am going to explain how to write the appropriate codes for this task.


Firstly we should start explaining how to use SWI Prolog. After installation of the program, when we open it we should click on "File" -> "New.." and create a new Prolog source, which will let us write the clauses for our purpose. We will write the clauses and save it by clicking Ctrl + C + B and compile the clauses to use them. 


All the codes written below will be entered into the Prolog source page unless otherwise stated.

First, we should start to use library "clpfd". 
This library provides CLP(FD): Constraint Logic Programming over Finite Domains.  CLP(FD) lets us reason about integers in a way that honors the relational nature of Prolog. (retrieved from https://www.swi-prolog.org/man/clpfd.html.) In order to load the library we use: 
*/


:- use_module(library(clpfd)).


/* 


Now we can start explaining the basics and the functions which we are going to use in this process.

1) Lists and maplisting: 

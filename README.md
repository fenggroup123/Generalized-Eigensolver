# Generalized-Eigensolver
--------------------------------------------------------------------------------------------
Generalized eigensolver using AMG solver
-------------------------------------------------------------------------------------------
This is a generalized eigensolver for calculating the largest generalized eigenvalue and eigenvector using AMG solver, such as Lean Algebraic Multigrid solver (Livne, Oren E., and Achi Brandt. "Lean algebraic multigrid (LAMG): Fast graph Laplacian linear solver." SIAM Journal on Scientific Computing)


--------------------------------------------------------------------------------------------
How to Compile:
-------------------------------------------------------------------------------------------

make('compile') after you open matlab:

It will add to the MATLAB path and saves the path. In shared installations of MATLAB
the path is not saved for next session. So when you re-run MATLAB make sure that the directories are on the path. 


--------------------------------------------------------------------------------------------
Generalized eigensolver using AMG solver
-------------------------------------------------------------------------------------------
Main functions are included in this package: 
Ht.m for calculating the largest generalized eigenvalue: G*x=lambda*P*x


[ht, lambmax] = Ht(G, P)
 
INPUT:
G : Laplacian matrix of input graph (n-by-n matrix);
P : Laplacian matrix of input graph (n-by-n matrix);

OUTPUT:
ht: 		largest generalized eigenvector associated with eigenvalue lambmax
lambmax:    largest generalized eigenvalue 

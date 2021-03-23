% solve equation Ax=b using amg solver

function x = amgsolve(A, pfun)
	tStart = tic;
	x = pcg(A, b, 1e-3, 100, pfun);
	tSolve = toc(tStart);
end

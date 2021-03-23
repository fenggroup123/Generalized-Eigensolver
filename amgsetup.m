% amg solver setup for solving Ax=b  

function [amg, setup] = amgsetup(A)
	amg    = Solvers.newSolver('lamg', 'randomSeed', 1);
    tStart = tic;

	sumA = abs(sum(A));
	kk = find(sumA > 1e-8);
	if(length(kk)>0)
    	setup = amg.setup('sdd', A);
	else
    	setup = amg.setup('laplacian', A);
	end
	tSetup = toc(tStart);
end

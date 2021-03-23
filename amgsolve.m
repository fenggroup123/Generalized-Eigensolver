% solve equation Ax=b using amg solver

function x = amgsolve(amg, setup, b)
	setRandomSeed(now);
	% Turn on debugging printouts during the run
	core.logging.Logger.setLevel('lin.api.AcfComputer', core.logging.LogLevel.DEBUG);
	tStart = tic;
	[x, ~, ~, details] = amg.solve(setup, b, 'errorReductionTol', 1e-3);
	tSolve = toc(tStart);
end

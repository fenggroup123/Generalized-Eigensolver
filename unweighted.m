function L = unweighted(G)

	n = length(G);
	D = spdiags(diag(G), 0, n, n);
	[rr cc vv] = find(D-G);
	vv = ones(length(vv),1);
	AG= sparse(rr,cc, vv, n, n);
	L = spdiags(sum(AG)', 0, n, n)-AG;


function [ht, lambmax] = Ht(G, P)
% compute largest eigenvector and eigenvalue of G*v=lambda*P*v use power iteration with AMG solver
% input:  
%	G: original graph Laplacian
%	P: similar graph Laplacian to G
%% output:
%	ht: approximated largest eigenvector
%	lambmax: estimated max generalized eigenvalue of (P^-1)G

	maxiter = 100;
	lambmax0 = 1E10;
	relerr = 1;
	n = length(G);
	v2 = rand(n,1); % random h0 vector
	u1 = ones(n,1);
	u2 = v2-(u1'*v2)/(u1'*u1)*v2;
	h0 = u2/norm(u2);
	h0 = rand(n,1);
	h0 = h0/norm(h0);

	pfun = amgsetup(P);

	i = 1;
	% Get ht using power iteration, where ht = (S^(-1)Gr)^t*h0
	while (i<maxiter & relerr>1e-3)
		r0 = G*h0;
		h1 = amgsolve(P, pfun);

		h0 = h1/norm(h1);
		ht = h0;
		lambmax = ht'*G*ht/(ht'*P*ht);
		relerr = abs(lambmax-lambmax0)/lambmax0;
		lambmax0 = lambmax;
		i = i+1;
	end
end

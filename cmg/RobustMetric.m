function [score1, score2]=RobustMetric(Gx,Gy) 
[Lx]=laplacian(Gx); 
[Ly]=laplacian(Gy);

%Lx = unweighted(Lx);
%Ly = unweighted(Ly);

ts = tic();
[Uxy, Dxy]=eigs(Lx,Ly, 1, 'largestabs');
te = toc(ts);
Dxy
fprintf('eigs time %f with value %f\n\n', te, Dxy);


ts = tic();
[ht, lambmax] = Ht(Lx, Ly);
te = toc(ts);
fprintf('lamg time %f with value %f\n\n\n', te, lambmax);


score1=Dxy;
score2 = lambmax;
 

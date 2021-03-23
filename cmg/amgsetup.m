% amg solver setup for solving Ax=b  

function pfun = amgsetup(A)
	pfun = cmg_add(A);
end

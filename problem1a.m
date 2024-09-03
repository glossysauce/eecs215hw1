%input matrix A, matrix of vector unknowns
a = [5/6000 -1/3000 0; -1/3000 1/1000 -1/6000; 0 -1/6000 5/12000];

%input matrix B, column of vector knowns 
b = [.002; .006; -.002];

v1 = inv(a)*b
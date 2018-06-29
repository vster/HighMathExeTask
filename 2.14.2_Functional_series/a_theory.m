clear
syms x n i;
syms u(x,n);

S(x,n)=symsum(u(x,i),i,1,n)
% symsum(u(x, i), i, 1, n)
R(x,n)=symsum(u(x,i),i,n+1,inf)
% symsum(u(x, i), i, n + 1, Inf)
S(x)=S(x,n)+R(x,n)
% symsum(u(x, i), i, n + 1, Inf) + symsum(u(x, i), i, 1, n)
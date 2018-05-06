syms x n;
assume(n,'integer');
I=int(1/(1-x^n)^(1/n),x,0,1)
% pi/(n*sin(pi/n))
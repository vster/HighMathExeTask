syms x;
syms n m k;
assume(n>0)
assume(m>0)
I=int(x^(n-1)*(1-x^k)^(m-1),x,0,1)
% Сложно((
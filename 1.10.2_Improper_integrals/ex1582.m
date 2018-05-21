syms x a b p real;
assume(p<1)
I=int(1/(b-x)^p,x,a,b)
% -(b - a)^(1 - p)/(p - 1)
pretty(I)

assume(p>1)
I=int(1/(b-x)^p,x,a,b)
% NaN

assume(p==1)
I=int(1/(b-x)^p,x,a,b)
% Inf
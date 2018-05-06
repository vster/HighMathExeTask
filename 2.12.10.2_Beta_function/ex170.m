syms x a;
assume(a>0)
assume(a<1)
I=int(1/(x^a*(1+x)),x,0,inf)
% pi/sin(pi*a)
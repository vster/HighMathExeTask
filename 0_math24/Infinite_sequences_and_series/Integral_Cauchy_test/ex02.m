% Show that the generalized harmonic series 
% S=sum(n=1:inf)1/n^p converges for p> 1.

syms n p;
u(n,p)=1/n^p

syms x;
assume(p>1)
I=int(u(x,p),x,1,inf)
% 1/(p - 1) => S converges at p>1
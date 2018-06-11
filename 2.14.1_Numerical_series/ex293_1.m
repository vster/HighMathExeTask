syms n p;
assume(p>0);
u(n)=p^n/factorial(n)
P=symsum(u(n),n,1,inf)
% exp(p) - 1
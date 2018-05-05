syms x;
syms m n;
assume(m>0)
assume(m,'integer')
assume(n>0)
assume(n,'integer')

I1=int(x^m,x,0,1)
I1=1/(m + 1)

dI1=diff(I1,m)
% -1/(m + 1)^2
d2I1=diff(I1,m,2)
% 2/(m + 1)^3

I=int(x^m*log(x)^n,x,0,1)
% ((-1)^n*gamma(n + 1))/(m + 1)^(n + 1)
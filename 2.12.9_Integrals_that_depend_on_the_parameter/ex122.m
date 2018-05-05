syms x;
syms lam;
syms n;
assume(lam>0)
assume(n,'integer')
assume(n>0)

I1=int(1/(x^2+lam),x,0,+inf)
% pi/(2*lam^(1/2))
dI1=diff(I1,lam)
% -pi/(4*lam^(3/2))
d2I1=diff(I1,lam,2)
% (3*pi)/(8*lam^(5/2))

I=int(1/(x^2+lam)^(n+1),x,0,+inf)
% I=1*3*5..(2n-1)/(2*4*6..(2n))*pi/(2*lam^n*lam^(1/2))
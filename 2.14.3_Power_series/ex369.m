% Investigate the convergence of a power series
% sum (n=1:inf) (x-4)^n/sqrt(n)

syms x n;
u(x,n)=(x-4)^n/sqrt(n)
digits(3)

a(n)=1/sqrt(n)
R=limit(a(n)/a(n+1),n,inf)
% R=1 => -1<x-4<1 => 3<x<5

u1(n)=subs(u,x,3)
% (-1)^n/n^(1/2)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:5
     u2(i)=vpa(abs(u1(i)));
end
u2
% [ 1.0, 0.707, 0.577, 0.5, 0.447]

% 2 condition
L=limit(abs(u1(n)),n,inf)
% 0 => if x=3 then series converges

u3(n)=subs(u,x,5)
% 1/n^(1/2) => series diverges

% series conerges in 3<=x<5 




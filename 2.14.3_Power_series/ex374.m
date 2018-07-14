% Investigate the convergence of a power series
% sum (n=1:inf) x^(3*n)/((4*n-3)*8^n)

syms x n
u(x,n)=x^(3*n)/((4*n-3)*8^n)

% x^3=t
syms t;
u(t,n)=t^n/((4*n-3)*8^n)

a(n)=1/((4*n-3)*8^n)
R=limit(a(n)/a(n+1),n,inf)
% R=8 => -8<t<8

% t=8
u1(n)=subs(u,t,8)
% 1/(4*n - 3) => series diverges

% t=-8
u2(n)=subs(u,t,-8)
u2(n)=simplify(u2(n))
% (-1)^n/(4*n - 3)

% Use the Leibniz test
% 1 condition
syms i;
for i=1:5
     u3(i)=vpa(abs(u2(i)));
end
u3
% [ 1.0, 0.2, 0.111, 0.0769, 0.0588]

% 2 condition
L=limit(abs(u2(n)),n,inf)
% 0 => at t=-8 series converges

% -8<=t<8 => -8<=x^3<8 => -2<=x<2

% Compute the integral
% int(-pi:pi)D(z,N)dz

syms x N;
D(x,N)=sin((N+1/2)*x)/sin(x/2);

D1(x)=subs(D(x,N),N,10)
fplot(D1)
grid on;

syms z N;
for N=1:10
    ID=int(D(z,N),z,-pi,pi);
    disp([N ID])
end
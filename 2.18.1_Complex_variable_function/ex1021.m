z=sym(1-1i)
syms k
ro=abs(z)
% 2^(1/2)
phi=angle(z)
% -pi/4
w=log(abs(z))+(phi+sym(2*k*pi))*i

for n=0:3
    w1=subs(w,k,n)
end
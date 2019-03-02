clear
syms z n
a=(1-pi/2*i)
f=cosh(1-z)
for n=1:6
    df(n)=diff(f,z,n-1);
    df0(n)=subs(df(n),z,a);
    term(n)=df0(n)/factorial(n-1)*(z-a)^(n-1);
    disp([n,df(n),df0(n),term(n)])
end
term
% [ 0, pi/2 - z*1i + 1i, 0, -((z + (pi*1i)/2 - 1)^3*1i)/6, 0, -((z + (pi*1i)/2 - 1)^5*1i)/120]
ft=sum(term)
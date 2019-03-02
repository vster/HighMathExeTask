clear
syms z n
a=i
f=z^5
for n=1:6
    df(n)=diff(f,z,n-1);
    df0(n)=subs(df(n),z,a);
    term(n)=df0(n)/factorial(n-1)*(z-a)^(n-1);
    disp([n,df(n),df0(n),term(n)])
end
term
% [ 1i, 5*z - 5i, -(z - 1i)^2*10i, -10*(z - 1i)^3, (z - 1i)^4*5i, (z - 1i)^5]
ft=sum(term)
% 5*z - (z - 1i)^2*10i - 10*(z - 1i)^3 + (z - 1i)^4*5i + (z - 1i)^5 - 4i
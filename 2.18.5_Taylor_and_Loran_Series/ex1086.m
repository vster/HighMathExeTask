% Expand f(z)=1/z in powers of z-1

clear
syms z n
a=1
f=1/z
for n=1:6
    df(n)=diff(f,z,n-1);
    df0(n)=subs(df(n),z,a);
    term(n)=df0(n)/factorial(n-1)*(z-a)^(n-1);
    disp([n,df(n),df0(n),term(n)])
end
term
% [ 1, 1 - z, (z - 1)^2, -(z - 1)^3, (z - 1)^4, -(z - 1)^5]

% Put z1=z-1
% f(z1)=1/(1+z1)
% |z1|<1 => |z-1|<1

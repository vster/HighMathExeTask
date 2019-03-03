clear
syms z n
f(z)=2^z+2^(1/z)-2

s1=taylor(2^z,z, 'Order', 4)
% (log(2)^3*z^3)/6 + (log(2)^2*z^2)/2 + log(2)*z + 1
s2=subs(s1,z,1/z)
% log(2)^2/(2*z^2) + log(2)^3/(6*z^3) + log(2)/z + 1
Sl=s1+s2-2
% log(2)^2/(2*z^2) + (z^2*log(2)^2)/2 + log(2)^3/(6*z^3) + (z^3*log(2)^3)/6 + z*log(2) + log(2)/z

a=0
f1=2^z
for n=1:4
    df(n)=diff(f1,z,n-1);
    df0(n)=subs(df(n),z,a);
    term1(n)=df0(n)/factorial(n-1)*(z-a)^(n-1);
    disp([n,df(n),df0(n),term1(n)])
end
term1
% [ 1, z*log(2), (z^2*log(2)^2)/2, (z^3*log(2)^3)/6]
term2=subs(term1,z,1/z)
% [ 1, log(2)/z, log(2)^2/(2*z^2), log(2)^3/(6*z^3)]
Sl2=sum(term1)+sum(term2)-2
% log(2)^2/(2*z^2) + (z^2*log(2)^2)/2 + log(2)^3/(6*z^3) + (z^3*log(2)^3)/6 + z*log(2) + log(2)/z
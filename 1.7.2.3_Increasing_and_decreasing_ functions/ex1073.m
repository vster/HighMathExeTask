syms a b real;
% eq=x^2/25+y^2/9-1
% a^2/100+b^2/36=1

a=sqrt(100-25/9*b^2)
S=a*b

dS=diff(S,b)

b1=solve(dS)
% b=3*2^(1/2)

a1=subs(a,b,b1)
% a=5*2^(1/2)

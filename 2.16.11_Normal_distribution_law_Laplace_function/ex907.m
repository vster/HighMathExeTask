syms a b m sig
Pab=1/2*(erf((b-m)/(sig*sqrt(2)))-erf((a-m)/(sig*sqrt(2))))

P1=subs(Pab,[a b],[m m+sig])
% erf(2^(1/2)/2)/2
digits(2)
vpa(P1)
% 0.34

P2=subs(Pab,[a b],[m+sig m+2*sig])
% erf(2^(1/2))/2 - erf(2^(1/2)/2)/2
vpa(P2)
% 0.14

P3=subs(Pab,[a b],[m+2*sig m+3*sig])
% erf((3*2^(1/2))/2)/2 - erf(2^(1/2))/2
vpa(P3)
% 0.021
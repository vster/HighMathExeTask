syms a b m sig
Pab=1/2*(erf((b-m)/(sig*sqrt(2)))-erf((a-m)/(sig*sqrt(2))))
syms lam
P1=subs(Pab,[a b m sig],[a*lam b*lam m*lam sig*lam])
P1=simplify(P1)
% erf((2^(1/2)*(b - m))/(2*sig))/2 - erf((2^(1/2)*(a - m))/(2*sig))/2
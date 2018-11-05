syms n m p q
assume(0<=p<1)
q=1-p
p_m_n=comb(n,m)*p^m*q^(n-m)

% MX=n*p
% DX=n*p*q

MX=symsum(m*p_m_n,m,0,n)

DX=symsum(m^2*p_m_n,m,0,n)
clear
p1=0.5
q1=1-p1
n1=8
m1=6

syms n m p q
p_m_n=comb(n,m)*p^m*q^(n-m)
p_6_8=subs(p_m_n,[n m p q],[n1 m1 p1 q1])
% 7/64
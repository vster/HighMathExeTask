clear
p1=5/20
q1=1-p1
n1=4
m1=2

syms n m p q
p_m_n=comb(n,m)*p^m*q^(n-m)
p_2_4=subs(p_m_n,[n m p q],[n1 m1 p1 q1])
% 27/128
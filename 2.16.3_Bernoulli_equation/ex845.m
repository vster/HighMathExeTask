clear
p1=20/30
q1=1-p1
n1=3
m1=2

syms n m p q
p_m_n=comb(n,m)*p^m*q^(n-m)
p_2_3=subs(p_m_n,[n m p q],[n1 m1 p1 q1])
% 4/9
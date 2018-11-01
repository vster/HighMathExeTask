clear
p1=0.4
q1=1-p1
n1=10

syms n m p q
p_m_n=comb(n,m)*p^m*q^(n-m)
p_0_10=subs(p_m_n,[n m p q],[n1 0 p1 q1])
p_1_10=subs(p_m_n,[n m p q],[n1 1 p1 q1])
p_2_10=subs(p_m_n,[n m p q],[n1 2 p1 q1])
p_3_10=subs(p_m_n,[n m p q],[n1 3 p1 q1])
P=p_0_10+p_1_10+p_2_10+p_3_10
vpa(P)
% 0.3822806016

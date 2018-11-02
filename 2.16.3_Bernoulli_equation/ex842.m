clear
p1=0.5
q1=1-p1
n1=5

syms n m p q
p_m_n=comb(n,m)*p^m*q^(n-m)
p_0_5=subs(p_m_n,[n m p q],[n1 0 p1 q1])
p_1_5=subs(p_m_n,[n m p q],[n1 1 p1 q1])
p_2_5=subs(p_m_n,[n m p q],[n1 2 p1 q1])
p_3_5=subs(p_m_n,[n m p q],[n1 3 p1 q1])
P=p_0_5+p_1_5+p_2_5+p_3_5
% 13/16
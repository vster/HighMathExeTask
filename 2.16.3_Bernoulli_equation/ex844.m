clear
p1=0.5
q1=1-p1
n1=6

syms n m p q
p_m_n=comb(n,m)*p^m*q^(n-m)
P=0
for i=0:3
    P=P+subs(p_m_n,[n m p q],[n1 i p1 q1])
end
% 21/32
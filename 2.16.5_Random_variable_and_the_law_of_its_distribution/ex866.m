clear
p1=0.3
q1=1-p1
n1=3

syms n m p q
p_m_n=comb(n,m)*p^m*q^(n-m)
for i=0:3
    x(i+1)=i
    P(i+1)=vpa(subs(p_m_n,[n m p q],[n1 i p1 q1]))
end
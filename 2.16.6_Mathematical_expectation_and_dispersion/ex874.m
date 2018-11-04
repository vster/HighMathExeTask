% 6 w, 4 b
clear
p1=0.6
q1=1-p1
n1=5

syms n m p q
p_m_n=comb(n,m)*p^m*q^(n-m)
digits(3)
for i=0:5
    x(i+1)=i
    Px(i+1)=vpa(subs(p_m_n,[n m p q],[n1 i p1 q1]))
end
%      0     1     2     3     4     5
% [ 0.0102, 0.0768, 0.23, 0.346, 0.259, 0.0778]

MX=sum(x.*Px)
% 3.0

DX=sum(Px.*((x-MX).^2))
% 1.2
sigx=sqrt(DX)
% 1.1
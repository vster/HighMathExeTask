% Bernoulli equation
% p_m_n=comb(n,m)*p^m*q^(n-m)

% 20 white, 10 black

p=sym(2/3,'r')
q=1-p
n=4
m=2
p_2_4=comb(n,m)*p^m*q^(n-m)
% 8/27
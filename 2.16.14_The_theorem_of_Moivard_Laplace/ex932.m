% 80 white, 20 black
p=4/5
q=1/5
% |X/n-0.8|<0.1
% 0.7*n<X<0.9*n
syms n
alfa=0.7*n
beta=0.9*n
% P(0.7*n<X<0.9*n)
P=1/2*(erf((beta-n*p)/sqrt(2*n*p*q))-erf((alfa-n*p)/sqrt(2*n*p*q)))
% erf(n/(10*((8*n)/25)^(1/2)))
n1=solve(P==0.95,n)
% 32*erfinv(19/20)^2
vpa(n1)
% 61.46

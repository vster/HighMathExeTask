% |X/n-0.7|<0.05
% 0.65*n<X<0.75*n
% P(0.65*n<X<0.75*n)
syms n
alfa=0.65*n
beta=0.75*n
p=1/2
q=1/2
P=1/2*(erf((beta-n*p)/sqrt(2*n*p*q))-erf((alfa-n*p)/sqrt(2*n*p*q)))
pretty(P)
% erf(n/(4*(n/2)^(1/2)))/2 - erf((3*n)/(20*(n/2)^(1/2)))/2
P=1/2*(erf(5*sqrt(2*n)/20)-erf(3*sqrt(2*n)/20))
...
P=erf(sqrt(2*n)/20)    
n=solve(P==0.9,n)
% 200*erfinv(9/10)^2
digits(4)
vpa(n)
% 270.6
% Bernoulli theorem
% P(|m/n-p|<epsilon)>1-delta
% 0<delta<n*q/(n*epsilon^2)
n=1000
p=1/2
q=1-p
epsilon=0.1
% P(|m/1000-1/2|<0.1)>1-delta
delta=(p*q)/(n*epsilon^2)
% 0.0250
1-delta
% P(|m/1000-1/2|<0.1)>0.9750
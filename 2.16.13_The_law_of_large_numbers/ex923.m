% 1000 white, 2000 black balls
% recovered 300 ballas
% 80<m<120
% -20<m-100<20
% -1/15<m/300-1/3<1/15
% P(|m/300-1/3|<1/15)-?
p=1/3
q=1-p
n=300
epsilon=1/15
delta=(p*q)/(n*epsilon^2)
1-delta
% P(|m/300-1/3|<1/15)<0.8333 = 5/6
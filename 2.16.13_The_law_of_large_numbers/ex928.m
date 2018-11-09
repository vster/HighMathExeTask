n=200
MX=2
DX=2
% P(|sum(i=1:200)x(i)/200-2|<1/5)
epsilon=1/5
P=1-DX/(n*epsilon^2)
% 0.7500
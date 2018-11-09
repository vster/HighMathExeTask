n=100
MX=10
DX=1
epsilon=1/2
% P(|(sum(i=1:n)x(i))/n - M(X)|<epsilon)>1-D(X)/(n*epsilon^2)
% P(|(sum(i=1:100)x(i))/100-10|<1/2)>1-1/(100*(1/2)^2)
P=1-DX/(n*epsilon^2)
% 0.9600
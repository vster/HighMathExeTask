clear
X=[1 2 3 4 5 6 7]
Y=[3 7 13 21 31 43 57]
n=length(X)
x=3.1
h=1

for k=1:n-1
    DY(k)=Y(k+1)-Y(k);
end
DY
%  4     6     8    10    12    14

for k=1:n-2
    D2Y(k)=DY(k+1)-DY(k);
end
D2Y
%      2     2     2     2     2

for k=1:n-3
    D3Y(k)=D2Y(k+1)-D2Y(k);
end
D3Y
%     0     0     0     0

t=(x-X(1))/h
%     0.1000

y=Y(1)+t*DY(1)+t*(t-1)*D2Y(1)/factorial(2)
% 13.7100



N=sym([2 3 1; 4 6 2; 6 9 3],'r')
P=N/36

x=[1 2 3]
X=[x;x;x].'
y=[1 2 3]
Y=[y;y;y]

MX=sum(sum(X.*P))
% 7/3
MY=sum(sum(Y.*P))
% 11/6

CXY=sum(sum(((X-MX).*(Y-MY)).*P))
% 0
N=sym([2 3 1; 4 6 2; 6 9 3],'r')
P=N/36

X=[1 1 1; 2 2 2; 3 3 3]
Y=X.'

MX=sum(sum(X.*P))
% 7/3
MY=sum(sum(Y.*P))
% 11/6

DX=sum(sum(((X-MX).^2).*P))
% 5/9
DY=sum(sum(((Y-MY).^2).*P))
% 17/36

sigx=sqrt(DX)
% 5^(1/2)/3
sigy=sqrt(DY)
% 17^(1/2)/6

DX=sum(sum(X.^2.*P))-MX^2
% 5/9
DY=sum(sum(Y.^2.*P))-MY^2
% 17/36


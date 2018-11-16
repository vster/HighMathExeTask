clear
digits(5)
I=4.1:0.1:5.8
nx=[1 2 3 4 5 8 8 9 10 10 9 9 7 5 4 3 2 1]

n=sum(nx)
X=I+0.05

W=nx/100
X-5
MX5=sum((X-5).*W)
% -0.0010
MX52=sum((X-5).^2.*W)
% 0.1403
MX=5+MX5
% 4.9990
DX=MX52-MX5^2
% 0.1403
sigx=sqrt(DX)
% 0.3746

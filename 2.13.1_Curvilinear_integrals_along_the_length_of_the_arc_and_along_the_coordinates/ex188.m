% Compute the curvilinear integral
% I = int (AB) y*ds/sqrt(x)
% where AB - arc of a semicubic parabola y^2=4/9*x^3 
% �� A(3;2*sqrt(3)) �� B(8;32*sqrt(2)/3)

syms x y;
y=2/3*x^(3/2)
ds=sqrt(1+diff(y)^2)
% (x + 1)^(1/2)
I=int(y/sqrt(x)*ds,x,3,8)
% 2152/45
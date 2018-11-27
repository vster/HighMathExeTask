% Expand Fourier series of periodic functions f(x) with period T, 
% given on the indicated intervals:
% f(x)=-x on [-pi;0]
%       0  on [0;pi]
% T=2*pi;

clear
pi1=pi;
syms x real;
syms pi;
f(x)=piecewise(-pi<=x<=0,-x,0<=x<=pi,sym(0))

a0=int(f(x),x,-pi,pi)/pi
% pi/2

syms m integer;
assume(m>=1)
a(m)=int(f(x)*cos(m*x),x,-pi,pi)/pi
% -(2*sin((pi*m)/2)^2 - m*pi*sin(pi*m))/(m^2*pi)
%   =(1-(-1)^m)              =0
a(m)=simplify(subs(a(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]))
% ((-1)^m - 1)/(m^2*pi)
af(m)=a(m)*cos(m*x)
% (cos(m*x)*((-1)^m - 1))/(m^2*pi)

b(m)=int(f(x)*sin(m*x),x,-pi,pi)/pi
% -(sin(pi*m) - m*pi*cos(pi*m))/(m^2*pi)
%   =0               =(-1)^m
b(m)=simplify(subs(b(m),[sin(pi*m),sin((pi*m)/2)^2,cos(pi*m)],...
    [0,(1-(-1)^m)/2,(-1)^m]))
% (-1)^m/m
bf(m)=b(m)*sin(m*x)
% ((-1)^m*sin(m*x))/m

abf(m)=af(m)+bf(m)
% ((-1)^m*sin(m*x))/m + (cos(m*x)*((-1)^m - 1))/(m^2*pi)

fplot(f(x),[-pi1 pi1]);
grid on
hold on

f1=a0/2;
for m=1:5
    m1(m)=m;
    a1(m)=a(m);
    b1(m)=b(m);
    abf1(m)=abf(m);
    f1=f1+abf(m);
    fplot(f1,[-pi1 pi1])
    grid on
end
hold off

a0/2
% pi/4
ft=[m1;a1;b1;abf1];
ft'
% [ 1,      -2/pi,   -1,            - sin(x) - (2*cos(x))/pi]
% [ 2,          0,  1/2,                          sin(2*x)/2]
% [ 3,  -2/(9*pi), -1/3,  - sin(3*x)/3 - (2*cos(3*x))/(9*pi)]
% [ 4,          0,  1/4,                          sin(4*x)/4]
% [ 5, -2/(25*pi), -1/5, - sin(5*x)/5 - (2*cos(5*x))/(25*pi)]
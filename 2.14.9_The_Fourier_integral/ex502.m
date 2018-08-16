% Let the function f(x) be defined by the equalities
%        1 at 0<=x<a
% f(x) = 0.5 at x=a
%        0 at x>a
% Find its cosine and sine transform.

clear
syms x a u z pi;
assume(a>0);
f(x)=piecewise(0<=x<a,1,x==a,0.5,x>a,0)

fc(z)=sqrt(2/pi)*int(f(u)*cos(z*u),u,0,+inf)
% (2^(1/2)*sin(a*z))/(z*pi^(1/2))

fs(z)=sqrt(2/pi)*int(f(u)*sin(z*u),u,0,+inf)
% (2*2^(1/2)*sin((a*z)/2)^2)/(z*pi^(1/2))

f1(x)=sqrt(2/pi)*int(fc(z)*cos(z*x),z,0,+inf)
% piecewise(a == x, 1/2, a < x, 0, x < a, 1)

f2(x)=sqrt(2/pi)*int(fs(z)*sin(z*x),z,0,+inf)
% piecewise(a == x, 1/2, a < x, 0, x < a, 1)
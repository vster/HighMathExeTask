% Calculated by the formula Moivre expression
% ((sqrt(3)+i)/2)^12

z=(sqrt(3)+i)/2
n=12

r=abs(z)
% 1.0000
arg=angle(z)
% 0.5236 
vpa(arg*180/pi)
% 30.0 grad

z=r*(cos(arg)+1i*sin(arg))
% 0.8660 + 0.5000i

z1=z^n
% 1.0000 + 0.0000i

z2=r^n*(cos(n*arg)+1i*sin(n*arg))
% 1.0000 + 0.0000i





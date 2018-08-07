% Present in trigonometric form the number -1+i

z=-1+i

r=abs(z)
% 1.4142
arg=angle(z)
vpa(arg*180/pi)
% 135.0

% 1.41*(cos(135)+1i*sin(135))
z1=r*(cos(arg)+1i*sin(arg))
% -1.0000 + 1.0000i
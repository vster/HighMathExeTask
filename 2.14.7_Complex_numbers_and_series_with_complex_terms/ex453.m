% Present in trigonometric form the number 5-3i

z=5-3i

r=abs(z)
% 5.8310
arg=angle(z)
vpa(arg*180/pi)
% -30.9638

% 5.8310*(cos(-30.9638)+1i*sin(-30.9638))
z1=r*(cos(arg)+1i*sin(arg))
% 5.0000 - 3.0000i

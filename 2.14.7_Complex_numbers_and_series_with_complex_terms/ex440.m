% Present in trigonometric form the numbers 1, i, -1, -i

syms z;
% 1=1+0*i=1*(cos(0)+i*sin(0))
z=1*(cos(0)+1i*sin(0))
% 1

% i=0+1*i=1*(cos(pi/2)+i*sin(pi/2))
z=1*(cos(pi/2)+1i*sin(pi/2))
% 0.0000 + 1.0000i

% -1=-1+0*i=1*(cos(pi)+i*sin(pi))
z=1*(cos(pi)+1i*sin(pi))
% -1.0000 + 0.0000i

% -i=0-1*i=1*(cos(-pi/2)+i*sin(-pi/2))
z=1*(cos(-pi/2)+1i*sin(-pi/2))
% 0.0000 - 1.0000i
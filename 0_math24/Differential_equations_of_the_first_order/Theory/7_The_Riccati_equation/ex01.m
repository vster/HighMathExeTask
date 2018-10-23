% Solve the differential equation
% y'=y+y^2+1

% 1)
clear
% y'=y+y^2+1
syms x y(x)
eqn=diff(y(x))==y+y^2+1
ySol=dsolve(eqn)
% (3^(1/2)*tan((3^(1/2)*(C6 + x))/2))/2 - 1/2
%                        (3^(1/2)*1i)/2 - 1/2
%                      - (3^(1/2)*1i)/2 - 1/2

% Checking
for i=1:3
eqn10=diff(y)-y-y^2-1
chk(i)=simplify(subs(eqn10,y(x),ySol(i)))
end
disp(chk)
% [ 0, 0, 0]

% 2)
% dy/dx=y+y^2+1
syms x y
eq1=int(1/(y+y^2+1),y)-int(1,x)
% (2*3^(1/2)*atan((3^(1/2)*(2*y + 1))/3))/3 = x + C
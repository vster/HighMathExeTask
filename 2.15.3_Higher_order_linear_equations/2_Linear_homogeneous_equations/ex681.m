% Show what y=C1*exp(3*x)+C2*exp(-3*x) 
% is a common solution to the equation
% y''-9*y=0

clear
syms x
syms y(x)
eqn=diff(y,x,2)-9*y
% particular solutions
yp=[exp(3*x),exp(-3*x)] 

for i=1:length(yp)
    chk(i)=subs(eqn,y,yp(i))
end
% [ 0, 0]

D=yp(1)/yp(2)
% exp(6*x) /= const

% y=C1*exp(3*x)+C2*exp(-3*x) - common solution
clear
syms x y a;
eq1=x^3+y^3-a*x*y

syms rho theta;
x1=rho*cos(theta)
y1=rho*sin(theta)
eq1=subs(eq1,[x y],[x1 y1])
eq1=simplify(eq1)
% rho^3*cos(theta)^3 + rho^3*sin(theta)^3 - a*rho^2*cos(theta)*sin(theta)
eq1=rho*cos(theta)^3 + rho*sin(theta)^3 - a*cos(theta)*sin(theta)
slv=solve(eq1==0,rho)
% (a*cos(theta)*sin(theta))/(cos(theta)^3 + sin(theta)^3)
rho1=0
rho2=(a*cos(theta)*sin(theta))/(cos(theta)^3 + sin(theta)^3)

S=2*int(int(rho,rho,0,rho2),theta,0,pi/4)
% a^2/6
% Электрический заряд распред по площади x^2+y^2=1
% Поверх плотсность sigma(x,y)=1+x^2+y^2
% Q = int int (R) sigma(x,y) dx dy

syms x y;
sigma=1+x^2+y^2

syms r teta;
x1=r*cos(teta)
y1=r*sin(teta)
sigma=subs(sigma,[x y],[x1 y1])
sigma=simplify(sigma)
% 0<=teta<=2*pi
% 0<=r<=1
Q=int(int(sigma*r,r,0,1),teta,0,2*pi)
% (3*pi)/2
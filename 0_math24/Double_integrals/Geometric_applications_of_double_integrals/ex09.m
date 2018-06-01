% Using polar coordinates, find the volume of a cone 
% of height H and the radius of the base R

% r/R=(H-z)/H, where r=sqrt(x^2+y^2)
% then H-z=H*r/R or z=H/R*(R-sqrt(x^2+y^2)

syms x y H R;
z=H/R*(R-sqrt(x^2+y^2))

syms ro teta;
x1=ro*cos(teta);
y1=ro*sin(teta);
J=ro

f1=subs(z,[x y],[x1 y1])
f1=simplify(f1)
% (H*(R - abs(ro)))/R
f1=H/R*(R-ro)

V=int(int(f1*J,ro,0,R),teta,0,2*pi)
% (pi*H*R^2)/3
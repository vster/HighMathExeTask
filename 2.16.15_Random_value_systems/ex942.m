syms x y a
f=a^2-x^2-y^2
% D: x^2+y^2<=a^2
% 1) a
% 2) mx, my
% 3) sigx, sigy
% 4) rxy

% 1)
% I1=int int (D) f dxdy
syms ro teta 
x1=ro*cos(teta)
y1=ro*sin(teta)

f=simplify(subs(f,[x y],[x1 y1]))
% a^2 - ro^2
I1=int(int(ro*f,ro,0,a),teta,0,2*pi)
% (pi*a^4)/2
a1=(sym(2)/pi)^(1/4)
f=subs(f,a,a1)
% - ro^2 + (2/pi)^(1/2)

% 2)
mx=int(int(ro^2*f*cos(teta),ro,0,(sym(2)/pi)^(1/4)),teta,0,2*pi)
% 0
my=int(int(ro^2*f*sin(teta),ro,0,(sym(2)/pi)^(1/4)),teta,0,2*pi)
% 0

% 3)
DX=int(int(ro^3*f*cos(teta)^2,ro,0,(sym(2)/pi)^(1/4)),teta,0,2*pi)
% 2^(1/2)/(6*pi^(1/2))
DY=int(int(ro^3*f*sin(teta)^2,ro,0,(sym(2)/pi)^(1/4)),teta,0,2*pi)
% 2^(1/2)/(6*pi^(1/2))
sigx=sqrt(DX)
% (2^(1/2)/(6*pi^(1/2)))^(1/2)
sigy=sqrt(DY)
% (2^(1/2)/(6*pi^(1/2)))^(1/2)

% 4)
Cxy=int(int(ro^3*f*cos(teta)*sin(teta),ro,0,(sym(2)/pi)^(1/4)),teta,0,2*pi)
% 0
rxy=Cxy/(sigx*sigy)
% 0
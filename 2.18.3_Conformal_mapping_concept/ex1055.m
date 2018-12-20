% Find the rotation angle and the scale distortion factor at a point
% z0 when mapping w=f(z)

% w=f(z)
% alfa=arg w'(z)
% k=|w'(z0)|
clear
syms x y real
u=exp(y)*cos(x)
v=-exp(y)*sin(x)
w=u+1i*v
z0=[0,1]
dw=simplify(diff(u,x)+1i*diff(v,x))
% -exp(y)*(sin(x) + cos(x)*1i)
alfa=angle(subs(dw,[x y],[0 1]))
% -pi/2
k=abs(subs(dw,[x y],[0 1]))
% exp(1)

dux=diff(u,x)
% -exp(y)*sin(x)
duy=diff(u,y)
% exp(y)*cos(x)
dvx=diff(v,x)
% -exp(y)*cos(x)
dvy=diff(v,y)
% -exp(y)*sin(x)
% dux=dvy - correct 
% duy=-dvx - correct

dfz=diff(u,x)+1i*diff(v,x)
% - exp(y)*cos(x)*1i - exp(y)*sin(x)

syms z
w=exp(-i*z)
syms x y
w1=expand(subs(w,z,x+i*y))
z0=i
dw=simplify(diff(w,z))
% -exp(-z*1i)*1i
alfa=angle(subs(dw,z,z0))
% -pi/2
k=abs(subs(dw,z,z0))
% exp(1)
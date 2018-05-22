% Green's formula
% int (K) P*dx+Q*dy = int int (D) (dQ/dx-dP/dy) dx*dy

% Applying the Green's formula, calculate
% I = int (C) 2*(x^2+y^2)*dx + (x+y)^2*dy
% if C - triangle contour with vertices
% L(1;1), M(2;2), N(1,3)

syms x y dx dy real;
df1=2*(x^2+y^2)*dx + (x+y)^2*dy
P=2*(x^2+y^2)
Q=(x+y)^2

f2=diff(Q,x)-diff(P,y)
% 2*x - 2*y = 2*(x-y)

% According to the Green's formula
% I=int (C) 2*(x^2+y^2)*dx + (x+y)^2*dy = int int (D) 2*(x-y)*dx*dy
% where D - trianlr LMN
% Line LM: y=x
% Line MN: y=-x+4

I1=int(int(2*(x-y),y,x,4-x),x,1,2)
% -4/3

% Let us calculate the curvilinear integral
% along contour C: LM, MN, NL
% I2 = int (LM) df1 + int (MN) df1 + int (NL) df1

% LM
y1=x
dy1=dx
% 1<=x<=2
df11=subs(df1,[y dy],[y1,dy1])
% 8*dx*x^2
I21=int(df11/dx,x,1,2)
% 56/3

% MN
y2=-x+4
dy2=-dx
% 2>=x>=1
df12=subs(df1,[y dy],[y2,dy2])
% dx*(2*(x - 4)^2 + 2*x^2) - 16*dx
I22=int(df12/dx,x,2,1)
% -4/3

% NL
x3=1
dx3=0
% 3>=y>=1
df13=subs(df1,[x dx],[x3,dx3])
% dy*(y + 1)^2
I23=int(df13/dy,y,3,1)
% -56/3

I2=I21+I22+I23
% -4/3







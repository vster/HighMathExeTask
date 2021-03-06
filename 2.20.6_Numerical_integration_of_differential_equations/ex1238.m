% y'=x^2+y^2
% y(0)=-1
clear
syms x y
x0=0
y0=-1
h=0.1
f(x,y)=x^2+y^2
dy=x^2+y^2
dy0=subs(dy,[x,y],[0,-1])  
% 1
d2y=2*x+2*y*dy
d2y0=subs(d2y,[x,y,dy],[0,-1,1])
% -2
d3y=2+2*dy^2+2*y*d2y
d3y0=subs(d3y,[x,y,dy,d2y],[0,-1,1,-2])
% 8
y1(x)=y0+dy0*x+1/2*d2y0*x^2+1/6*d3y0*x^3
% (4*x^3)/3 - x^2 + x - 1
digits(3)
X=0:h:0.4
%          0    0.1000    0.2000    0.3000    0.4000
Y=vpa(y1(X))
% [ -1.0, -0.909, -0.829, -0.754, -0.675]
for i=1:3
    D_Y(i)=Y(i+1)-Y(i);
end
D_Y
Q=h*f(X,Y)
% [ 0.1, 0.0836, 0.0728, 0.0659, 0.0615]
for i=1:3
    D_Q(i)=Q(i+1)-Q(i);
end
D_Q
% [ -0.0164, -0.0108, -0.00693]
for i=1:2
    D2_Q(i)=D_Q(i+1)-D_Q(i);
end
D2_Q
% [ 0.00564, 0.00386]
D3_Q=D2_Q(2)-D2_Q(1)
% -0.00178
D_y3=Q(4)+1/2*D_Q(3)+5/12*D2_Q(2)+3/8*D3_Q
% 0.0633
Y(5)=Y(4)+D_y3
% [ -1.0, -0.909, -0.829, -0.754, -0.691]

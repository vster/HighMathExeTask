% Calculate the triple integral
% I = int int int (T) (x^2+y^2+z^2) dx dy dz
% T - rectangular parallelepiped
% 0<=x<=a
% 0<=y<=b
% 0<=z<=c

syms x y z a b c;
f1=x^2+y^2+z^2

I=int(int(int(f1,z,0,c),y,0,b),x,0,a)
% (a*b*c*(a^2 + b^2 + c^2))/3
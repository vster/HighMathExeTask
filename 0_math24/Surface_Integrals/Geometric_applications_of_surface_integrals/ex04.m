% Calculate the volume of an ellipsoid
% x^2/a^2+y^2/b^2+z^2/c^2=1

% V = 1/3 * |int_int (S) x dy dz + y dx dx + z dx dy|

syms u v a b c real;
x=a*cos(u)*sin(v)
y=b*sin(u)*sin(v)
z=c*cos(v)

r=[x y z]
% 0<=u<=2*pi
% 0<=v<=pi

P=x
Q=y
R=z

%                                              |   P     Q     R   |
% int_int(S)Pdydz+Qdzdx+Rdxdy = int_int(D(u,v))| dx/du dy/du dz/du |
%                                              | dx/dv sy/dv dz/dv |

A=[P,Q,R;diff(x,u),diff(y,u),diff(z,u);diff(x,v),diff(y,v),diff(z,v)]
% [  a*cos(u)*sin(v), b*sin(u)*sin(v),  c*cos(v)]
% [ -a*sin(u)*sin(v), b*cos(u)*sin(v),         0]
% [  a*cos(u)*cos(v), b*cos(v)*sin(u), -c*sin(v)]
An=det(A)
An=simplify(An)
% -a*b*c*sin(v)
I=int(int(An,v,0,pi),u,0,2*pi)
% -4*pi*a*b*c
V=1/3*abs(I)
% (4*pi*abs(a*b*c))/3
V=4*pi*a*b*c/3

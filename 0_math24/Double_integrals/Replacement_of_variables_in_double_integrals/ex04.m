% I = int int (x^2+y^2) dx*dy
% R:
% y=x
% y=x+a
% y=a
% y=2*a (a>0)

% u=y-x
% v=y
% или
% x=y-u=v-u
% y=v

% y=x => y-x=0 => u=0
% y=x+a => y-x=a => u=a
% y=a => v=a
% y=2*a (a>0) => v=2*a

syms u v a;
x=v-u
y=v

% Находим якобиан
J=det([diff(x,u),diff(x,v);diff(y,u),diff(y,v)])
% -1
% тогда
% dx*dy=abs(-1)*du*dv=du*dv

f=x^2+y^2
f=expand(f)
% u^2 - 2*u*v + 2*v^2
I=int(int(f,u,0,a),v,a,2*a)
% (7*a^4)/2

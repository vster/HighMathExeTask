% Find the integral
% int_int(S)2*x*dy*dz + (3*y + x)*dx*dz + (2*y + 4*z)*dx*dy, 
% where S is the outer surface of the pyramid
% x/a+y/b+z/c<=1, x>=0, y>=0, z>=0.

syms x y z a b c real;
F=[2*x, 3*y+x, 2*y+4*z]
f1 = x/a+y/b+z/c-1

% int_int(S)F*dS = int_int_int(G)div(F)*dV

div_F=divergence(F,[x y z])
% 9

% z=0
% D={(x,y)|0<=x<=a,0<=y<=b-b/a*x}

slv=solve(f1,z)
% -c*(x/a + y/b - 1)

I=int(int(int(div_F,z,0,-c*(x/a + y/b - 1)),y,0,b-b/a*x),x,0,a)
% (3*a*b*c)/2


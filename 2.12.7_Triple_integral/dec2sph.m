function f=dec2sph(f)
syms x y z rho phi theta real;
x1=rho*sin(theta)*cos(phi);
y1=rho*sin(theta)*sin(phi);
z1=rho*cos(theta);
f=simplify(subs(f,[x y z],[x1 y1 z1]));
end
function f=dec2cyl(f)
syms x y z rho phi real;
x1=rho*cos(phi);
y1=rho*sin(phi);
z1=z;
f=simplify(subs(f,[x y z],[x1 y1 z1]));
end
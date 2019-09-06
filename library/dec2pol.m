function f=dec2pol(f)
syms x y rho theta real;
x1=rho*cos(theta);
y1=rho*sin(theta);
f=simplify(subs(f,[x y],[x1 y1]));
end
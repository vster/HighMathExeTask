% test 1
syms z
f=z^i*(z)'
syms x y
f1=subs(f,z,x+i*y)
f1=simplify(f1)

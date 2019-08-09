function L=line2p(A,B)
syms x y x1 y1 x2 y2
L=(y-y1)/(y2-y1)==(x-x1)/(x2-x1);
L=simplify(subs(L,[x1 y1 x2 y2],[A B]));
end
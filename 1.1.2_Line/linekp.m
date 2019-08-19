function L1=linekp(k1,A)
syms x y x1 y1 k
L=y-y1==k*(x-x1);
L1=simplify(subs(L,[k x1 y1],[k1 A(1) A(2)]));
end
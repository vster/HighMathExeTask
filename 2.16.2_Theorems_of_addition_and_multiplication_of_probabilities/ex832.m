syms p1 p2
p3=p1*(1-p2)
p4=p2*(1-p1)
p=expand(p3+p4)
% p1 + p2 - 2*p1*p2
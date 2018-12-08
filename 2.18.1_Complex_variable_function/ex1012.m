syms z
w=z^2+z

w1=subs(w,z,1+i)
% 1 + 3i
w2=subs(w,z,2-i)
% 5 - 5i
w3=subs(w,z,i)
% - 1 + 1i
w4=subs(w,z,-1)
% 0

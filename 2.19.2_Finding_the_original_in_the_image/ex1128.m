clear
syms t p a k
assume(k>0)
F=1/(p^k+a^k)

f=ilaplace(F,p,t)
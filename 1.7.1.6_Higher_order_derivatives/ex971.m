syms t;
x=log(t)
y=1/t
Dyxn=diff(y)/diff(x)
for n=2:6
    Dyxn=diff(Dyxn)/diff(x)
end
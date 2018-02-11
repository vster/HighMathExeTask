syms t a b alfa beta gamma;
x=a*t+b
y=alfa*t^2+beta*t+gamma
Dyxn=diff(y)/diff(x)
for n=2:6
    Dyxn=diff(Dyxn)/diff(x)
end
syms x alfa;
I=int(log(1+sin(alfa)*cos(x))/cos(x),x,0,pi)

f=log(1+sin(alfa)*cos(x))/cos(x)

df=diff(f,alfa)

dI=int(df,x,0,pi)

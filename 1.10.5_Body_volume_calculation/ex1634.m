syms x h r;

V1=pi*int(r^2/h*x,x,0,h)
V2=pi*int(r^2,x,0,h)

V=V2-V1
function F=intproc(y)
F=simplify(int(y))
y2=simplify(diff(F))
chk=simplify(y2-y)   
end

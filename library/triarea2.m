function S=triarea2(A,B,C)
    S=1/2*abs(det([1 1 1;A(1) B(1) C(1);A(2) B(2) C(2)]));
end
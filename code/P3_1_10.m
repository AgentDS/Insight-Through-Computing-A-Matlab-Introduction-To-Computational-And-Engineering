clc 
a_o= 1/2;
a_n= 2/(2*2+1*2) + 2/(2*2+2*2) + 2/(2*2+3*3) + 2/(2*2+4*4);
fprintf('%.6f   ', a_o)
n= 2;
while  (abs(a_n-a_o) > 0.01)
    n= n+1;
    a_o= a_n;
    a_n= 0;
    for  j= 1:n*n
         a_n= a_n + n/(n*n + j*j);
    end
    fprintf('%.6f   ', a_n)
    if  rem(n,4) == 0
        fprintf('\n')
    end
end

fprintf('\n\nwhen n= %d, |an-a(n-1)| <= 0.01\n', n)

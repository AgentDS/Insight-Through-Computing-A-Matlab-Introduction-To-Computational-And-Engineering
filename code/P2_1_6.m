%P2_1_6
Sum_k= 0;
n= 50;

for  k= 1 : n
    Sum_k= Sum_k+k^3;
    a= Sum_k/k^4;
    fprintf('n= %-5d    a= %-10.5f\n', k, a)
end


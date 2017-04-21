%P2_1_7
Sum_k= 0;
n= 100;

clc
for  k= 1 : n
    Sum_k= Sum_k+sqrt(k);
    pre= (2/3)*k*sqrt(k);
    pro= (4*k+3)*sqrt(k)/6;
    if  pre <= Sum_k  &&  Sum_k <= pro
        fprintf('when n= %-4d, the inequality is right\n', k)
    else
        fprintf('when n= %-4d, the inequality is not right\n', k)
    end
end


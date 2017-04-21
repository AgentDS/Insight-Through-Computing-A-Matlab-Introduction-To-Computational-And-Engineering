clc
n= 100;
r= 5*rand(n,1);
for  k= 1:n
    if  r(k)>=2
        r(k)= r(k)+5;
    end
end

for  k= 1:n
    fprintf('    %.5f',r(k))
    if  mod(k,10) == 0
        fprintf('\n')
    end
end









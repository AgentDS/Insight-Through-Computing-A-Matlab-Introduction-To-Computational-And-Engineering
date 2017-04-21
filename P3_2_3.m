clc
disp('   n        f_n1           f_n2    ')
disp('--------------------------------------')
a= ( 1 + sqrt(5) )/2;
b= ( 1 - sqrt(5) )/2;
n= 2;
f_old1= 1;
f_cur1= 1;
f_new1= 2;
f_cur2= (a^2 - b^2)/sqrt(5);
fprintf('  %2d   %8d    %8d \n', n, f_cur1, f_cur2)

for  n= 3:32
    f_old1= f_cur1;
    f_cur1= f_new1;
    f_new1= f_old1 + f_cur1;
    f_cur2= (a^n - b^n)/sqrt(5);
    fprintf('  %2d   %8d    %8d\n', n, f_cur1, f_cur2)
end

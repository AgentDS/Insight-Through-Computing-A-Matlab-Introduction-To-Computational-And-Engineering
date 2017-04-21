clc
disp('   n        f_n             r_n     err ')
disp('-------------------------------------------------')

tol= 10^-15;
n= 2;
f_old= 1;
f_cur= 1;
f_new= 2;
r_cur= f_cur/f_old;
r_new= f_new/f_cur;
err= (r_new/r_cur - 1)*100;
fprintf('  %2d   %8d    %20.15f     %20.15f\n', n, f_cur, r_cur, err)

while  (abs(r_new - r_cur) > tol)
    n= n+1;
    f_old= f_cur;
    f_cur= f_new;
    f_new= f_old + f_cur;
    r_cur= r_new;
    r_new= f_new/f_cur;
    err= (r_new/r_cur - 1)*100;
    fprintf('  %2d   %8d    %20.15f     %20.15f\n', n, f_cur, r_cur, err)
end

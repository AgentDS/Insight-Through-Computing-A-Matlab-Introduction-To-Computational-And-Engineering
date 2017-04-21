clc
disp('            My Median()            median()    ')
disp('    n       timeMyMedian           timemedian    timeMyMedian/timemedian')
disp('-------------------------------------------------------------------------')
for  n= [10 20 40 80 160 320 640 1280]
    x= rand(n,1);
    
    tic
    m1= MyMedian(x);
    t1= toc;
    
    tic
    m2= median(x);
    t2= toc;
    
    fprintf('%5d       %.7f              %.7f     %.7f\n',...
            n, t1,t2,t1/t2)
end  % for”Ôæ‰Ω· ¯

N= 50000;
x= rand(N,1);

tic
m1= MyMedian(x);
t1= toc;
    
tic
m2= median(x);
t2= toc;

fprintf('%5d       %.7f              %.7f     %.7f\n',...
         N, t1,t2,t1/t2)
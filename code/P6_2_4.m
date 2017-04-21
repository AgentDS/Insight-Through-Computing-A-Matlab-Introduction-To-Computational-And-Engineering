clc
disp('   n    Average to Boundary      Average to Origin')
disp('---------------------------------------------------')
nTrials= 100;
aveOrigin= zeros(5,1);
m= 0;
tic
for  n= 5:5:25
    m= m+1;
    s= 0;
    o= 0;
    for  k= 1:nTrials
        [x y]= RandomWalk2D2(n);
        s= s+length(x);
        a= (x==0 & y==0); %判断是否回到原点
        Origin= sum(a);   %本次随机游走回到原点的次数
        o= o+Origin;
    end
    aveBoundary= s/nTrials;
    aveOrigin(m)= o/nTrials;
    fprintf(' %3d      %8.3f              %8.3f\n',n,aveBoundary,aveOrigin(m))
    
end

t= toc;
w= [ 5 ;10; 15; 20; 25];
bar(w,aveOrigin)
fprintf('\n\n(Results based on %d trails)\n',nTrials)
fprintf('Total time: %.5f\n',t)


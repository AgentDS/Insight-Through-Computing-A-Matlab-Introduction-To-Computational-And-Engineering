%初始化
n= 10000;    
%rand('seed',0);     randn('seed',0);    %设置随机数种子

%均匀掷靶
x= -1+2*rand(n,1);
y= -1+2*rand(n,1);
S= (x.^2+y.^2 <= ones(n,1));
hits= sum(S);
piEstU= 4*hits/n;

%瞄准靶心后掷靶
% X,Y～N(0,0.16)
sigma= 0.4;
x= sigma*randn(n,1);
y= sigma*randn(n,1);
xSq= (abs(x)< ones(n,1));
ySq= (abs(y)< ones(n,1));
Sq= (xSq & ySq);   % &表示“与”运算
nSquare= sum(Sq);    %落入方块的点
S= (x.^2+y.^2 <= ones(n,1));
hits= sum(S);
piEstN= 4*hits/nSquare;

%显示估算结果

clc
fprintf('n: %1d\n', n)
fprintf('Pi Estimate via Uniform Distribution: %7.15f\n', piEstU)
fprintf('Pi Estimate via N(0,%5.2f)          : %7.15f\n', sigma, piEstN)



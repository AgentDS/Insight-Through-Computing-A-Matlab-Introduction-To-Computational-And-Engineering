%clc
n= 90000000;                   %假定每个骰子抛掷n次
x= ceil(6*rand(n,1));     %第一个骰子的n次结果
y= ceil(6*rand(n,1));     %第二个骰子的n次结果
z= ceil(6*rand(n,1));     %第三个骰子的n次结果

sDiff= ( (x~=y) & (y~=z) );  %三个骰子全部不相等的判断向量
Equal2= n-sum(sDiff);    %三个骰子至少两个相等的次数＝n－全部不相等的次数
RateEqual2= Equal2/n;    %三个骰子至少两个相等的概率

sMid= ( (z<=x & z>=y) | (z>=x & z<=y) );   %第三个骰子的数恰好在前两个之间的判断向量
Mid= sum(sMid);                            %第三个骰子的数恰好在前两个之间的次数
RateMid= Mid/n;                            %第三个骰子的数恰好在前两个之间的概率

%打印结果
fprintf('\nn= %d\n',n)
fprintf('RateEqual2= %.5f\n',RateEqual2)
fprintf('RateMid  = %.5f\n',RateMid)



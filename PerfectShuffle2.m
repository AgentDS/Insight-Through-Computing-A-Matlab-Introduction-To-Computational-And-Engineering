% M8_1_1
function y= PerfectShuffle2(x)
% x是一个长度为n的列向量,n= 2m
% y是一个长度为n的列向量,是x的完美洗牌后的结果

% 初始化
n= length(x);
y= zeros(n,1);
m= n/2;


y(1:2:n)= x(1:m);
y(2:2:n)= x(m+1:n);


end
% PerfectShuffle2函数结束
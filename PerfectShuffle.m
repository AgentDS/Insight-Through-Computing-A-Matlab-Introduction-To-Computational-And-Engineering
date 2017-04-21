function y= PerfectShuffle(x)
% x是一个长度为n的列向量,n= 2m
% y是一个长度为n的列向量,是x的完美洗牌后的结果

% 初始化
n= length(x);
y= zeros(n,1);
m= n/2;

for  k= 1:m
    y(2*k-1)= x(k);
    y(2*k)= x(k+m);
end % for语句结束


end
% PerfectShuffle函数结束
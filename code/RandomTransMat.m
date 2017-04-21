% P7_1_6 
function P = RandomTransMat(n)
% 利用rand(n,n)建立一个nxn的概率转移矩阵
% P每列元素和均为1
r= rand(n,n);
cSum= sum(r); % 求出每列元素总和
P= zeros(n,n);
for  k= 1:n
    P(k,:)= r(k,:)./cSum;
end % for结束


end
% RandomTransMat结束
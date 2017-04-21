% M9_1_3
function a = PosAve(x)
% x是一个实数向量
% a为x中所有正分量的平均值
ipos= find(x>0);  % x中正分量的下标
a= mean(x(ipos));

end
% PosAve函数结束
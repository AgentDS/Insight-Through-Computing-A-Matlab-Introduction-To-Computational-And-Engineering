function WeightList = MakeWeightList()
% 病例&星期优先权重表,第一列为周一,第七列为周日
% 优先级越高，数字越小（要根据病例分布对等权重两个病例再进行比例调整
WeightList= [2 2 3 3 3 4 3;    % 白内障
             4 4 3 3 3 2 2;    % 白内障(双)
             3 3 2 2 2 3 4;    % 视网膜疾病
             3 3 2 2 2 3 4;    % 青光眼
             1 1 1 1 1 1 1];   % 外伤

end
% MakeWeightList函数结束
n= 10000;
x= rand(n,1);     
y= ones(n,1)-x;  
Min= min(x,y);    
EMin= mean(Min); 

fprintf('E(Min)= %.5f\n\n',EMin)
% E(Min)= 0.25
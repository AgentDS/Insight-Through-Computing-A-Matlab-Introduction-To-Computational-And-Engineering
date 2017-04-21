N= 1000;
count= 0;
for Trial = 1:N
    close all
    % Choose a button at random...
    i = ceil(rand*4); 
    j = ceil(rand*3); 
    % Generate and the tone...
    [tVals,y] = MakeSound(i,j);
    % "Send" a noisy version...
    y = InsertNoisy(tVals,y);
    % "Receive" and decipher...
    [r,c]= DefineCosines(y);
    if  r==i && c==j
        count= count+1;
    end
end
rho= count/N;
fprintf('\n\n������ȷ��Ϊ%.3f%%\n',rho*100)
fprintf('����������Ϊ%d\n',N-count)
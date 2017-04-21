clear all
p= input('Enter the smaller positive integer p: ')
q= input('Enter the larger positive integer q: ')

clc
fprintf('when p= %d, q= %d,\n', p, q)
for  i= p:q
    for  j= p:q
        fprintf('%-6d   ', j*i)
    end
    fprintf('\n')
end

fprintf('End All\n')
        

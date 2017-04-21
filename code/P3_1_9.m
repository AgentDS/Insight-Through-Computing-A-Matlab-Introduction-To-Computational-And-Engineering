n= input('Enter n: ')

clc
tic
k= 0;
for  i1= 1:n
    for  i2= 1:n
        for  i3= 1:n
            for  i4= 1:n
                k= k+1;
            end
        end
    end
end
T1= toc;


fprintf('When n= %d\nThe 1st loop ran for %.13fs\n', n, T1)
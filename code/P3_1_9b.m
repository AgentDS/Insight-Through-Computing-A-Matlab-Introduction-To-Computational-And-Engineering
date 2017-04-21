n= input('Enter n: ')


tic
k= 0;
for  i1= 1:n
    for  i2= i1:n
        for  i3= i2:n
            for  i4= i3:n
                k= k+1;
            end
        end
    end
end
T2= toc;
fprintf('When n= %d\nThe 2nd loop ran for %.13fs\n', n, T2)
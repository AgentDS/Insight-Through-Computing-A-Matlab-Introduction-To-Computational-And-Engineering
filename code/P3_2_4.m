clc
n=1;
logSum= log10(n);
flag= floor(logSum) + 1;

while  (flag < 10^6)
    n= n + 1;
    logSum= logSum + log10(n);
    flag= floor(logSum) + 1;
end

fprintf('the smallest n for n! to be 10^6 bits is:\n%d\n', n)
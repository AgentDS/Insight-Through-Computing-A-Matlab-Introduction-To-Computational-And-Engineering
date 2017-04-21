% ×Ö·û´®µ¹ĞòÏà½Ó
str= input('Enter a character string : ');
n= length(str);
for  i= 1:n
    str(i+n)= str(n-i+1);
end  % if½áÊø

str
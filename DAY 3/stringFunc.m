string functions

str1='apple'
str2='banana'
result=strcat(str1,str2)
disp(result)

x={'hello','world','sri'}
result2=strcat(x{:})
disp(result2)

result3=strjoin(x,':')
disp(result3)

result4=strjoin(x,' ')
disp(result4)

str1='age'
str2='tryr'

strcmp(str1,str2)

stri1='the cat sat on the mat'
indic=strfind(stri1,'cat')

old='cat'
new='dog'
strrep(stri1,old,new)

inputstring='apple,banana,orange,grapes';
substring=strsplit(inputstring,',')

st1='apPLE'
lower(st1)
upper(st1)

strtrim(' hello world ')
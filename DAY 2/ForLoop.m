for variable=1:10
    disp(variable)
end

for variable2=1:2:15
    disp(variable2)
end

%write a for loop to calculate the sum of the numbers from 1 to 10
sum=0;
for num=1:10
    sum=sum+num;
end
disp("sum: "+sum)

%write code for factorial
fact=1;
for num=1:5
    fact=fact*num;
end
disp("factorial of 5: "+fact)


number=5;
factorial=1;
if(number==0 | number==1)
    disp("factorial: "+factorial)
else
    for num=1:5
    factorial=factorial*num;
    end
        disp("factorial: "+factorial)
end

% display number
x=10;
disp(['the number is ',num2str(x)])
disp("the number is "+x)
fprintf('the nuber is:%d',x)
y=sprintf('the nuber is:%d',x)
disp(y)
fprintf('the num is: %d',x)

%how to get user input
%input integer
number=input("enter the number: ");
disp("the number is "+number)
%input string or character
name=input("Enter the name: ",'s');
disp("the name is "+name);


%Get 3 numbers from user and print the largest number

num1=input("Enter a number 1: ");
num2=input("Enter a number 2: ");
num3=input("Enter a number 3: ");
max = 0;

if(num1>num2 && num1>num3)
    max=num1;
elseif(num2>num1 && num2>num3)
    max=num2;
   
elseif(num3>num1 && num3>num2)
    max=num3;
    
end
disp("The largest number is "+max);


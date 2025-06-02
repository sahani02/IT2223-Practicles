num1=input('Enter a number 1: ');
num2=input('Enter a number 2: ');
op=input('Enter Operator(+, -, * /): ',"s");

switch op
    case '+'
        result=num1+num2;
        fprintf('The summation:%.2f\n',result);
    case '-'
        result=num1-num2;
        fprintf('The subtraction:%.2f\n',result);
    case '*'
        result=num1*num2;
        fprintf('The multiplication:%.2f\n',result);
    case '/'
        if num2 ~= 0
            result=num1/num2;
            fprintf('The division:%.2f\n',result);
        else
           disp('Error: Division by zero.');
        end
    otherwise
        disp('Invalid arithmatic operation');
end
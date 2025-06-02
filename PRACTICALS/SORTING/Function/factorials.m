%number=input("enter the number: ");
%disp("the number is "+number)
%factorial=1;
%if(number==0 | number==1)
    %disp("factorial: "+factorial)
%else
    %for num=1:5
    %factorial=factorial*num;
    %end
        %disp("factorial: "+factorial)
%end

function fact=factorials(num)
    if num == 0 || num==1
        fact=1;
    else
        fact=num*factorials(num-1);
    end 
end


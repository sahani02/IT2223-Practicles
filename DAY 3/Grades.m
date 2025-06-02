%Get a marks from the user and print the grade
%marks>=90 A+
%marks>=80 A
%marks>=70 B
%marks>=60 C
%marks>=50 D
%else F

marks=input('Enter your marks: ');
disp(['your marks are ',num2str(marks)]);

if(marks>100 || marks<0)
    disp('Invalid marks')
elseif(marks>=90)
    disp('Your grade is A+')
elseif(marks>=80)
    disp('Your grade is A')
elseif(marks>=70)
    disp('Your grade is B')
elseif(marks>=60)
    disp('Your grade is C')
elseif(marks>=50)
    disp('Your grade is D')
else
    disp('Your grade is F')
end


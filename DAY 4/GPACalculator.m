% Initialize GPA and marks arrays
gpa = zeros(1, 5);
mark = zeros(1, 5);

% Get marks and compute GPA for each subject
for i = 1:5
    mark(i) = input(['Enter marks for subject ', num2str(i), ': ']);
    
    if mark(i) >= 90 && mark(i) <= 100
        disp('Grade: A');
        gpa(i) = 4.0;
    elseif mark(i) >= 80
        disp('Grade: B');
        gpa(i) = 3.0;
    elseif mark(i) >= 70
        disp('Grade: C');
        gpa(i) = 2.0;
    elseif mark(i) >= 60
        disp('Grade: D');
        gpa(i) = 1.0;
    elseif mark(i) >= 0
        disp('Grade: F');
        gpa(i) = 0.0;
    else
        disp('Invalid mark entered!');
        gpa(i) = 0.0;
    end
end

% Calculate and display final GPA
GPA = mean(gpa);
fprintf('\nYour GPA is: %.2f\n', GPA);

% Display all entered marks
disp('Your marks are:');
for i = 1:5
    fprintf('Subject %d: %d\n', i, mark(i));
end

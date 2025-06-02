% Example array to sort
arr = [64, 34, 25, 12, 22, 11, 90];
n = length(arr);

% Insertion sort algorithm
for i = 2:n
    key = arr(i);
    j = i - 1;
    
    while j >= 1 && arr(j) > key
        arr(j + 1) = arr(j);
        j = j - 1;
    end
    arr(j + 1) = key;
end

% Display sorted array
disp('Sorted array:');
disp(arr);

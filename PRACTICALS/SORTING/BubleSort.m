arr = [64, 34, 25, 12, 22, 11, 90];  % Example array
n = length(arr);
for i=1:n-1
    for j=1:n-i
        if arr(j) > arr(j+1)
            temp = arr(j);
            arr(j) = arr(j+1);
            arr(j+1) = temp;
            
        end
    end
end
disp('Sorted array:');
disp(arr);

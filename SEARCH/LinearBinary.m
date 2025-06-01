%Create array with 1000 numbers
array = 1:1000;
target = 550;

%Linear search
tic
found = false;
for i = 1:length(array)
    if array(i) == target
        found = true;
        break;
    end
end
linearTime = toc;
fprintf('Linear Search: Found=%d, Time=%.8f seconds\n', found, linearTime);

%Binary Search
tic;
left = 1;
right = length(array);
found = false;

while left <= right
    mid = floor((left + right)/2);
    if array(mid) == target
        found = true;
        break;
    elseif array(mid) < target
        left = mid +1;
    else
        right = mid -1;
    end
end
binaryTime = toc;
fprintf('Binary Search: Found=%d, Time=%.8f seconds\n',found, binaryTime);

fprintf('Time Difference: Linear - binary = %.8f seconds\n', linearTime - binaryTime);
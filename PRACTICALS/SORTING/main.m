function main
    A = [8, 3, 5, 7, 9, 2];
    sortedA = mergeSort(A);
    disp('Sorted Array:');
    disp(sortedA);
end

function sortedArray = mergeSort(array)
    if length(array) <= 1
        sortedArray = array;
        return;
    end

    mid = floor(length(array)/2);
    left = mergeSort(array(1:mid));
    right = mergeSort(array(mid+1:end));
    sortedArray = merge(left, right);
end

function merged = merge(left, right)
    merged = [];
    i = 1;
    j = 1;

    while i <= length(left) && j <= length(right)
        if left(i) <= right(j)
            merged(end+1) = left(i); %#ok<AGROW>
            i = i + 1;
        else
            merged(end+1) = right(j); %#ok<AGROW>
            j = j + 1;
        end
    end

    while i <= length(left)
        merged(end+1) = left(i); %#ok<AGROW>
        i = i + 1;
    end

    while j <= length(right)
        merged(end+1) = right(j); %#ok<AGROW>
        j = j + 1;
    end
end

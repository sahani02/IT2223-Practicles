function Quick
    A = [8, 3, 5, 7, 9, 2];
    sortedA = quickSort(A);
    disp('Sorted Array:');
    disp(sortedA);
end

function sortedArray = quickSort(array)
    if length(array) <= 1
        sortedArray = array;
        return;
    end

    pivot = array(1); % Choose the first element as pivot
    left = array(array < pivot);    % Elements less than pivot
    equal = array(array == pivot);  % Elements equal to pivot
    right = array(array > pivot);   % Elements greater than pivot

    % Recursively sort left and right
    sortedArray = [quickSort(left), equal, quickSort(right)];
end

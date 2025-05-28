🧾 Binary Search
Initialization

		array = [3, 6, 8, 12, 14, 17, 25, 29, 31, 36, 42, 47, 53, 55, 62];
- This line creates a sorted array of integers.
- Binary search only works correctly on sorted arrays.

		target = 3;
- The number we want to find in the array is assigned to the variable target.


		found = false;
- This Boolean variable is a flag used to track whether the target has been found.


		low = 1;
		high = length(array);
- low is set to 1, which is the first index of the array in MATLAB (arrays in MATLAB are 1-indexed).
- high is set to the last index of the array (computed using the length function).

🔁 Binary Search Loop

		while low <= high
- This loop will continue as long as the search range is valid (i.e., low does not surpass high).


			mid = floor((low + high) / 2);  % Use floor to get an integer index
- Calculates the middle index of the current search range.
- floor ensures that the result is a whole number (an index).


			if array(mid) == target
				found = true;
				index = mid;
				break;
- Checks if the middle element is equal to the target.
- If yes, it sets found to true, stores the index, and exits the loop using break.


			elseif array(mid) < target
				low = mid + 1;
- If the middle element is less than the target, the target must be in the right half of the current range.
So, we move the low index to mid + 1.


			else
				high = mid - 1;
- If the middle element is greater than the target, the target must be in the left half of the current range.
So, we move the high index to mid - 1.


		end
-Ends the while loop.

✅ Result Output

		if found
			fprintf("Target element is found at index: %d\n", index);
- If the target was found during the loop, this block prints the index where it was found.


		else
			fprintf("Target element is not found\n");
		end
- If the loop ends without finding the target, this block prints a message indicating the target was not found in the array.

![Screenshot (213)](https://github.com/user-attachments/assets/6147f152-35ae-4105-a15c-96d9acb7d75f)

🔢 Time Complexity

		n = 1;
- Sets the loop limit: the for loop will run once, from i = 1 to i = n.


		tic;
- Starts a stopwatch timer. MATLAB starts tracking time from this point.


		for i = 1:n
			disp(i);
		end
- A loop that runs n times.

- disp(i) displays the current value of i.


		elapsedTime = toc;
- Stops the timer and stores the time taken (in seconds) into elapsedTime.


		fprintf('Elapsed time: %f seconds\n', elapsedTime);
- Prints the time taken to execute the loop in a formatted string.

✅ Purpose
- To measure how long it takes to execute a loop using tic and toc in MATLAB.

  ![Screenshot (208)](https://github.com/user-attachments/assets/b63b4629-7b06-4d4e-9c84-909d3a6d5e47)

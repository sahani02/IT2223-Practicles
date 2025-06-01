# 📌 1. Binary Search on Sorted Array --> BinarySearch.m
#### Description:
This script performs a binary search on a sorted array to find a target element efficiently by repeatedly dividing the search interval in half.

#### Key Points:
- Requires the input array to be sorted.
- Uses ```low```, ```high```, and ```mid``` pointers to narrow down the search.
- Time complexity: O(log n).

#### Usage:
Modify the ```array``` and ```target``` variables to search for different values. The script prints the index of the target if found.

![BinarySearch](https://github.com/user-attachments/assets/3ca15ec8-232e-4d87-bed7-6113eb570892)

# 📌 2. Linear Search on Array --> LinearSearch.m
#### Description:
This script performs a linear search by checking each element one-by-one to find a target value in the array.

#### Key Points:
- Works on any array (sorted or unsorted).
- Stops as soon as the target is found.
- Time complexity: O(n).

#### Usage:
Modify ```arr``` and ```target``` to test different arrays and search targets.

![LinearSearch](https://github.com/user-attachments/assets/0c0d750e-f767-45f7-8df8-0e70a21bf93e)

# 📌 3. Measuring Loop Execution Time (Simple Loop) --> LSwithTC.m
#### Description:
This script demonstrates how to use ```tic``` and ```toc``` to measure the elapsed time it takes to execute a simple loop from 1 to ```n```.

#### Key Points:
- Useful for benchmarking code performance.
- ```tic``` starts the timer, ```toc``` stops and returns elapsed time.

#### Usage:
Change the variable ```n``` to run loops with different iteration counts and measure execution time.

![LSwithTC_1](https://github.com/user-attachments/assets/4b3f39e2-19c6-464e-8ee7-a8b0b5808f62)
![LSwithTC_2](https://github.com/user-attachments/assets/f6927af7-d018-4d29-8ae3-9f2baf30ddb6)

# 📌 4. Measuring Execution Time for Loop Over Array Elements --> TimeComplexity.m
#### Description:
This script measures the time it takes to loop through an array and display each element using ```disp()```.

#### Key Points:
- Shows practical timing for operations involving output to the command window.
- The ```target``` variable is declared but unused in this example.

#### Usage:
Modify ```arr``` to use different arrays. This is useful to see how performance is affected by array size and output operations.

![TimeComplexity](https://github.com/user-attachments/assets/99315fe9-e63a-4161-9ff2-b1deb584e8f1)

# 📌 6. Linear vs Binary Search --> LinearBinary.m

### Description
This script compares the performance of:
- **Linear Search**: Scans the array element-by-element.
- **Binary Search**: Efficient search for sorted arrays by dividing the array into halves.

### Key Concepts
- **Linear Search** time complexity: `O(n)`
- **Binary Search** time complexity: `O(log n)`
- Demonstrates the use of `tic` and `toc` for timing

![LinearBinary](https://github.com/user-attachments/assets/8bfc151e-04cb-4426-987f-de763599adea)


%Example input
weights=[10,20,30];
values=[60,100,120];
capacity=50;

%call the Knapsak function
maxProfit=knapsak01(weights,values,capacity);

%Display result
fprintf('knapsak profit (0/1 knapsak):%2f\n',maxProfit);

%Function 0/1 knapsak dp solution
function maxProfit=knapsak01(weights,values,capacity)
n=length(weights);

%initialize DP table:(n+1)x(capacity+1)
dp=zeroes(n+1,capacity+1);

%fill the table row by row
for i=1:n
    for w=0:capacity
        if weights(i)<=w
            %Option1: include the item
            include=
            dp(i,w-weights(i)+1)+values(i);
            %option 2: exclude the item
            exclude=dp(i,w+1);
            dp(i+1,w+1)=max(include,exclude);
        else
            %cannot include item
            dip(i+1,w+1)=dp(i,w+1);
        end
    end
end

% the result is in the bottom right cell
maxProfit=dp(n+1,capacity+1);
end

%Fractional Knapsak


% Fractional Knapsack Problem

% Input values and weights
values = [60, 100, 120];
weights = [10, 20, 30];
capacity = 50;

% Call the fractional knapsack function
[maxValue, itemFractions] = fractionalKnapsack(values, weights, capacity);

% Display results
fprintf('Maximum value in knapsack = %.2f\n', maxValue);
disp('Fraction of each item taken:');
disp(itemFractions);

% --- Fractional Knapsack Function ---
function [maxValue, fractions] = fractionalKnapsack(values, weights, capacity)
    n = length(values);
    
    % Calculate value-to-weight ratio
    ratio = values ./ weights;
    
    % Combine into one matrix and sort by ratio descending
    items = [(1:n)', values', weights', ratio'];
    items = sortrows(items, -4);  % Sort by 4th column (ratio)

    fractions = zeros(n, 1);  % Fraction of each item taken
    maxValue = 0;             % Total value in knapsack
    currentWeight = 0;

    for i = 1:n
        idx = items(i, 1);
        val = items(i, 2);
        wt = items(i, 3);
        
        if currentWeight + wt <= capacity
            % Take whole item
            fractions(idx) = 1;
            currentWeight = currentWeight + wt;
            maxValue = maxValue + val;
        else
            % Take fraction of item
            remain = capacity - currentWeight;
            fractions(idx) = remain / wt;
            maxValue = maxValue + val * (remain / wt);
            break;  % Knapsack is full
        end
    end
end

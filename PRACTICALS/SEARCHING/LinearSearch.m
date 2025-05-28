arr=[3,5,7,9,11,13];

target=9; %9, 19
%index=1;
found=false;

for i=1:length(arr)
    %disp(arr(i))
    if arr(i)==target
        found=true;
        index=i;
        break;
    end
    %index=index+1;
end

if found
    fprintf("Target element is found at index: %d \n",index)
else
    fprintf("Target element is not found \n")
end

arr=[3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];

target=25;
found=false;

tic; 

for i=1:length(arr)
    disp(arr(i));
end

elapsedTime=toc; 

fprintf('Elapsed time: %f seconds\n',elapsedTime);
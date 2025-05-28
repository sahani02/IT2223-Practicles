n=1;
tic; %when start the loop -> to start time calculating

for i=1:n
    disp(i);
end

elapsedTime=toc; %when end of the loop -> to finish time calculating

fprintf('Elapsed time: %f seconds\n',elapsedTime);

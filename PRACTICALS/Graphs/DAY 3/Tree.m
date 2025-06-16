%Define nodes
nodes={'A','B','C', 'D' ,'E', 'F', 'G'};
%define edeges(source and target nodes)
s=[1 1 2 2 3 3];
t=[2 3 4 5 6 7];


%create directed grph
g=digraph(s,t,[],nodes);

%plote the Tree
plot(g,'Layout','layered','Direction','down');
title('Simple Tree with 3 Levels');
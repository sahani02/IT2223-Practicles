%Define nodes
nodes={'A','B','C', 'D' ,'E', 'F', 'G'};
%define edeges(source and target nodes)
s=[1 1 2 2 3 3];
t=[2 3 4 5 6 7];

%define weight
weight=[5 3 2 4 6 1];
%create directed grph
G=digraph(s,t,weight,nodes);

%plote the Tree
plot(G,'Layout','layered','Direction','down','EdgeLabel',G.Edges.Weight);
title('Weighted Tree with 3 Levels');
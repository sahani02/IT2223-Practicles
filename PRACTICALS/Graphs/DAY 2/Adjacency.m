A=[0 1 0;
   1 0 1;
   0 1 0];% start node

G=graph(A);% create graph object
plot(G);
title('Adjancy Matrix Representation');
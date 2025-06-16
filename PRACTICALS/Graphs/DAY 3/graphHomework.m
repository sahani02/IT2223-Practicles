% Graph
% 1.write the MATLAB code toimport a graph.Use the following source and dstination data
% 2.using the imported data,draw the graph.
% 3.write the MATLAB code to find and display the subgraph for the given nodes.
% 4.Identify and display the adjacent vertices for each node
% 5.Label the edges of the graph
% 6.Label the nodes the graph.
% 7.write the MATLAB code to color the graph(graph coloring)
% 8.write the MATLAB code to find the shortest path fron node 1 to node 5.

% sourse=[1 1 2 3 4]
% destination=[2 3 4 4 5]

% Step 1: Define source and destination arrays
source = [1 1 2 3 4];
destination = [2 3 4 4 5];

% Step 2: Create graph and draw
G = graph(source, destination);
figure;
plot(G);
title('Original Graph');

% Step 3: Extract and display subgraph for given nodes (example: nodes 1, 2, 4)
subNodes = [1 2 4];
subG = subgraph(G, subNodes);
figure;
plot(subG);
title('Subgraph for Nodes 1, 2, 4');

% Step 4: Display adjacent vertices for each node
disp('Adjacent Vertices:');
for i = 1:numnodes(G)
    adj = neighbors(G, i);
    fprintf('Node %d is adjacent to: %s\n', i, mat2str(adj'));
end

% Step 5 and 6: Label edges and nodes
figure;
p = plot(G, 'EdgeLabel', G.Edges.EndNodes(:,1) + "→" + G.Edges.EndNodes(:,2));
labelnode(p, 1:numnodes(G), string(1:numnodes(G)));
title('Graph with Edge and Node Labels');

% Step 7: Graph coloring (naive method: assign different colors manually)
colors = lines(numnodes(G)); % distinct colors
figure;
p = plot(G);
for i = 1:numnodes(G)
    highlight(p, i, 'NodeColor', colors(i,:));
end
title('Colored Graph');

% Step 8: Find shortest path from node 1 to node 5
[spath, spcost] = shortestpath(G, 1, 5);
disp(['Shortest path from node 1 to 5: ', mat2str(spath)]);
fprintf('Shortest path cost: %d\n', spcost);

% Highlight the shortest path on graph
figure;
p = plot(G, 'EdgeLabel', G.Edges.EndNodes(:,1) + "→" + G.Edges.EndNodes(:,2));
highlight(p, spath, 'EdgeColor', 'r', 'LineWidth', 2);
highlight(p, spath, 'NodeColor', 'g');
title('Shortest Path from Node 1 to 5');

function dfs_demo()
    % Define graph edges
    source = [1 1 2 3 4];
    destination = [2 3 4 4 5];
    
    % Create graph
    G = graph(source, destination);  % use digraph if directed
    figure;
    plot(G);
    title('Graph for DFS');

    % Number of nodes
    n = numnodes(G);

    % Initialize visited array
    visited = false(1, n);

    % Start DFS from node 1
    fprintf('DFS Traversal starting from node 1:\n');
    DFS(G, 1, visited);
end

function DFS(G, currentNode, visited)
    % Mark current node as visited
    persistent visitedNodes;
    if isempty(visitedNodes)
        visitedNodes = false(1, numnodes(G));
    end

    if ~visitedNodes(currentNode)
        fprintf('Visited node %d\n', currentNode);
        visitedNodes(currentNode) = true;

        % Get neighbors of current node
        neighborsList = neighbors(G, currentNode);

        % Recursively visit each unvisited neighbor
        for i = 1:length(neighborsList)
            if ~visitedNodes(neighborsList(i))
                DFS(G, neighborsList(i), visited);
            end
        end
    end
end

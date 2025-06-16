function bfs_demo()
    % Define graph edges
    source = [1 1 2 3 4];
    destination = [2 3 4 4 5];
    
    % Create the graph
    G = graph(source, destination);  % use digraph() for directed graphs
    figure;
    plot(G);
    title('Graph for BFS');

    % Start BFS from node 1
    startNode = 1;
    fprintf('BFS Traversal starting from node %d:\n', startNode);
    bfs(G, startNode);
end

function bfs(G, startNode)
    n = numnodes(G);                  % Total number of nodes
    visited = false(1, n);            % Track visited nodes
    queue = [];                       % Initialize empty queue
    
    % Enqueue the start node and mark it visited
    queue(end + 1) = startNode;
    visited(startNode) = true;

    % Loop until the queue is empty
    while ~isempty(queue)
        % Dequeue the front node
        current = queue(1);
        queue(1) = [];

        fprintf('Visited node %d\n', current);

        % Get neighbors of current node
        neighborsList = neighbors(G, current);
        for i = 1:length(neighborsList)
            neighbor = neighborsList(i);
            if ~visited(neighbor)
                queue(end + 1) = neighbor;  % Enqueue
                visited(neighbor) = true;
            end
        end
    end
end

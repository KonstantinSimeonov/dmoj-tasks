The task is a classical <a href="https://en.wikipedia.org/wiki/Topological_sorting">Topological sort</a>

It can be solved by repeating three steps:
1. Find the best vertex
    - With no incoming edges
    - With smallest lexicographical order

    ```python
    func getBest():
        vertices = []

        # counts is a helper object, counting the incoming edges for v at counts[v]
        for each (vertex, count) of this._counts):
            if count > 0 or vertex is used:
                continue
            add vertex to vertices

        return best vertex of vertices
    ```

2. Add it to result 
3. Remove all outgoing edges from it
  - To remove an edge, just mark the vertex as used:
  - Decrease the count of each neighbor of vertex

    ```python
    func removeEdgesOf(vertex):
        used.add(vertex);
        for each neighbor of vertex: 
            counts[vertex] -= 1
    ```

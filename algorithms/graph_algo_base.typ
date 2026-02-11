== Алгоритмы на графах 

=== Представление графа в памяти 

_Определение._ Граф $G = (V, E)$ назовём плотным, если $abs(E) = Theta(abs(V)^alpha)$, и разреженным  иначе. 

Здесь условно можно считать $alpha in [1.5, 2]$, с помощью этого показателя я хотел бы формализовать, что значит "достаточно много рёбер", но стоит смотреть в зависимости от конкретной задачи. 


Графы могут быть представлены в памяти различными способами, но наиболее распространёнными являются:

+ Матрица смежности: это двумерный массив, где элемент `graph[i][j]` указывает на наличие (или вес) ребра между вершинами `i` и `j`. Этот способ удобен для плотных графов, но может занимать много лишней памяти для разреженных графов.
  - Память: $O(abs(V)^2)$
  - Время доступа к соседям вершины $v in V$: $O(abs(V))$, так как нужно проверить всю строку или столбец для вершины $v$.
  - Определить для каждой вершины всех её соседей: $O(abs(V)^2)$, так как нужно проверить все элементы матрицы.

+ Список смежности: это массив списков, где `graph[i]` содержит список соседей вершины `i`. Этот способ более эффективен по памяти для разреженных графов, так как хранит только существующие рёбра.
  - Память: $O(abs(V) + abs(E))$
  - Время доступа к соседям вершины $v in V$: $O(deg v)$, где $deg v$ — степень вершины $v$.
  - Определить для каждой вершины всех её соседей: $O(abs(V) + abs(E))$, так как нужно пройти по всем вершинам и их спискам соседей.


=== Поиск в глубину (`DFS`)

Поиск в глубину (Depth-First Search, `DFS`) — это алгоритм для обхода или поиска в графе. Он начинается с выделенной вершины и исследует как можно дальше по каждой ветви(пока не зайдёт в тупик), прежде чем отступать назад. 


Пусть граф представлен в виде списка смежности. Алгоритм `DFS` можно реализовать рекурсивно. Вот реализация на языке Python: 

```python
def dfs(graph, vertex, visited=None):
    if visited is None:
        visited = set()
    visited.add(vertex)
    for neighbor in graph[vertex]:
        if neighbor not in visited:
            dfs(graph, neighbor, visited)
    return visited

```

А вот на C++:

```cpp
#include <iostream> 
#include <vector>
#include <unordered_set>
using namespace std;
void dfs(const vector<vector<int>>& graph, int vertex, unordered_set<int>& visited) {
    visited.insert(vertex);
    for (int neighbor : graph[vertex]) {
        if (visited.find(neighbor) == visited.end()) {
            dfs(graph, neighbor, visited);
        }
    }
}
```


Время работы `DFS` составляет $O(abs(V) + abs(E))$, так как в худшем случае алгоритм посещает каждую вершину и каждое ребро один раз. Дополнительная память, используемая `DFS`, составляет $O(abs(V))$ в случае рекурсии, так как в стеке вызовов может находиться до $abs(V)$ вызовов.


Некоторые задачи, которые можно решить с помощью `DFS`:

+ Поиск компонент связности в неориентированном графе. Пусть $G$ — неориентированный граф. Будем запускать `DFS` из каждой непосещённой вершины. Каждая итерация `DFS` будет посещать все вершины, принадлежащие одной компоненте связности. Таким образом, количество запусков `DFS` будет равно количеству компонент связности в графе. Вершины можно разметить меткой компоненты, к которой они принадлежат, или просто считать количество запусков `DFS`. 
  - Реализация на Python:
    ```python
    def count_connected_components(graph):
        visited = set()
        comp = 0
        # в DFS добавляется параметр comp, который указывает на номер текущей компоненты
        for vertex in graph:
            if vertex not in visited:
                dfs(graph, vertex, visited, comp)
                comp += 1
        return comp

    def dfs(graph, vertex, visited, comp):
        visited.add(vertex)
        # здесь можно сохранять информацию о том, 
        #к какой компоненте принадлежит вершина
        # например, можно использовать словарь vertex_to_comp,
        #где vertex_to_comp[vertex] = comp
        for neighbor in graph[vertex]:
            if neighbor not in visited:
                dfs(graph, neighbor, visited, comp)
    ```
  - Сложность по времени: $O(abs(V) + abs(E))$, так как `DFS` посещает каждую вершину и каждое ребро один раз.
+ Поиск циклов в ориентированном графе. Для этого можно использовать `DFS` с дополнительной разметкой вершин. В процессе `DFS` вершины могут быть помечены как "не посещенные", "посещаемые" и "посещенные". Если во время `DFS` мы встречаем вершину, которая помечена как "посещаемая", это означает, что мы нашли цикл. 
  - Реализация на Python:
    ```python
    def has_cycle(graph):
        visited = {vertex: 'unvisited' for vertex in graph}
        for vertex in graph:
            if visited[vertex] == 'unvisited':
                if dfs_cycle(graph, vertex, visited):
                    return True
        return False

    def dfs_cycle(graph, vertex, visited):
        visited[vertex] = 'visiting'
        for neighbor in graph[vertex]:
            if visited[neighbor] == 'visiting':
                return True
            if visited[neighbor] == 'unvisited':
                if dfs_cycle(graph, neighbor, visited):
                    return True
        visited[vertex] = 'visited'
        return False
    ```
  - Сложность по времени: $O(abs(V) + abs(E))$, так как `DFS` посещает каждую вершину и каждое ребро один раз.


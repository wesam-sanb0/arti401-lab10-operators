# ARTI 401 — Lab Assignment 10
## Graphs

**Course:** ARTI 401 — Artificial Intelligence Principles
**Lab:** 10

### Files
| File | Description |
|------|-------------|
| `graphs.pl` | Prolog program to find paths between cities using graph search |
| `queries.txt` | Test queries and outputs for the path-finding logic |

### Lab Activity — Finding Paths Between Cities
The task is to write a Prolog program that models the given graph of cities as facts and finds all possible paths between a starting city and a destination city.

### Implementation Details
- **Facts:** `edge(City1, City2)` defines the connections between cities.
- **Rule `connected/2`:** Makes the edges bidirectional (undirected graph).
- **Rule `travel/3`:** The main entry point that initializes the search.
- **Rule `go/4`:** A recursive helper that performs Depth-First Search (DFS) while keeping track of visited cities to avoid infinite loops.

### How to Run
```prolog
?- consult('graphs.pl').

% Find a path from Dammam to Madinah
?- travel('Dammam', 'Madinah', P).

% Find a path from Makkah to Riyadh
?- travel('Makkah', 'Riyadh', P).

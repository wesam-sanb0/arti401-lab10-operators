% ============================================================
% ARTI 401 - Session 10 | Task 1: Area and Perimeter
% Name: Wesam Kamal Sanbo
% ============================================================

% --- Square ---
area(square, Side, Area) :-
    Area is Side * Side.

perimeter(square, Side, Perimeter) :-
    Perimeter is 4 * Side.

% --- Rectangle ---
area(rectangle, Width, Height, Area) :-
    Area is Width * Height.

perimeter(rectangle, Width, Height, Perimeter) :-
    Perimeter is 2 * (Width + Height).

% --- Triangle ---
area(triangle, Base, Height, Area) :-
    Area is 0.5 * Base * Height.

perimeter(triangle, A, B, C, Perimeter) :-
    Perimeter is A + B + C.
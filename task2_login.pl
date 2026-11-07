% ============================================================
% ARTI 401 - Session 10 | Task 2: Login System
% Name: Wesam Kamal Sanbo
% ============================================================

% --- Dataset ---
user(wesam, 1234).
user(admin, admin123).
user(ali, password).

% --- Login Logic ---
login :-
    nl, write('--- LOGIN SYSTEM ---'), nl,
    attempt(1).

attempt(3) :-
    !, 
    nl, writeln('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

attempt(Attempt) :-
    write('Enter Username: '),
    read(Username),
    write('Enter Password: '),
    read(Password),
    ( check_login(Username, Password) ->
        nl, writeln('Login Successful!'), nl
    ;
        nl, writeln('Login Unsuccessful.'),
        NextAttempt is Attempt + 1,
        write('Attempts remaining: '), 
        Remaining is 3 - Attempt,
        write(Remaining), nl,
        attempt(NextAttempt)
    ).

check_login(U, P) :-
    user(U, P).
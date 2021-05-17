clear; clc;
format long;

fprintf('Problem 1\n\n')

A = [3, -1, 0, 0, 0, 0; -1, 3, -1, 0, 0, 0; 0, -1, 3, -1, 0, 0; 0, 0, -1, 3, -1, 0; 0, 0, 0, -1, 3, -1; 0, 0, 0, 0, -1, 3];
b = [2; 1; 1; 1; 1; 2];
eps = 10^(-3);
N = 100;
x=A\b

jacobi(A, b, N, eps)
gaussSeidel(A, b, N, eps)
relaxation(A, b, N, eps, 1.1)

fprintf('\nProblem 2\n\n')

A = [3 1 1; -2 4 0; -1 2 -6];
b = [12; 2; -5];
eps = 10^(-5);
N = 100;
x=A\b

jacobi(A, b, N, eps)
gaussSeidel(A, b, N, eps)
relaxation(A, b, N, eps, 0.9)
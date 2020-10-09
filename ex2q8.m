% @author: Nishanth
% @date: 20th Sept 2020
% @brief: signal processing function


% reset workspace
clc;
clear;

% prefined values 
X = [4 2 6 3];
Y = [6 2 7 1];

% compute A
A = zeros(length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
        A(i,j) = X(i) * Y(j);
    end
end
disp("A(i,j): ");
disp(A);

% compute B
B = zeros (length(X), length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
        B(i,j) = X(i) / Y(j);
    end
end
disp("B(i,j): ");
disp(B);

% compute C
C = zeros(1,length(Y));
for i = 1:length(X)
    C(i) = X(i) * Y(i);
end
disp("C(i): ");
disp(C);

% compute D
D = zeros(length(X),length(Y));
for i = 1:length(X)
    for j = 1:length(Y)
        D(i,j) = X(i) / (2 + X(i) + Y(j));
    end
end
disp("D(i,j): ");
disp(D);

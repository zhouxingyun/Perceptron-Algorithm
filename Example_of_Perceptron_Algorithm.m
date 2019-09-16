% Example using Perceptron Algorithm

clc;
clear;
close all;

% Initialize the dataset

A = zeros(100, 2);
Y = zeros(100, 1);

for i = 1:50
    A(i, 1) = random('Normal' , 4, 1);
    A(i, 2) = random('Normal' , 4, 1);
    Y(i) = -1;
end

for i = 51:100
    A(i, 1) = random('Normal', -4, 1);
    A(i, 2) = random('Normal', -4, 1);
    Y(i) = 1;
end

w = Perceptron_Algorithm(A, Y);

slope = w(2)/w(1);
orthogonal = -1/slope;

figure;
plot(A(1:50,1),A(1:50,2),'r.','MarkerSize',12);
hold on
plot(A(51:100,1),A(51:100,2),'b.','MarkerSize',12);
hold on
plot([w(1), 0], [w(2), 0]);
hold on
plot([4, -4], [orthogonal * 4, orthogonal * (-4)]);
title 'Perceptron Algorithm';

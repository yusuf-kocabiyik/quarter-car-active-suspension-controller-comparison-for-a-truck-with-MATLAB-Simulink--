
clc;
clear;
close all;

%% Problem Definiton

problem.CostFunction = @(q) FitnessFunc(q);  % Cost Function
problem.nVar = 5;       					 % Number of Unknown (Decision) Variables
problem.VarMin =  [0 0 0 0 0.0004]          % Lower Bound of Decision Variables

problem.VarMax =  [200000 50000 100 100 0.02];% Upper Bound of Decision Variables
%300000 60000 1 1 0.01
%% Parameters of PSO

params.MaxIt = 50;            % Maximum Number of Iterations
params.nPop = 100;             % Population Size (Swarm Size)
params.w = 1;                  % Intertia Coefficient
params.wdamp = 0.92;           % Damping Ratio of Inertia Coefficient
params.c1 = 2.4;               % Personal Acceleration Coefficient
params.c2 = 2.22;              % Social Acceleration Coefficient
params.ShowIterInfo = true;    % Flag for Showing Iteration Informatin

%% Calling PSO.m file
out = PSO_Code(problem, params);

BestSol = out.BestSol;
BestCosts = out.BestCosts;

%% Results

figure;
% plot(BestCosts, 'LineWidth', 2);
semilogy(BestCosts, 'LineWidth', 2);
xlabel('Iteration');
ylabel('Best Cost');
grid on;
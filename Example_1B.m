clear all

% Same example as before but this time we had an upper and lower bound on
% one of the generators.
f = [10;18;20]; % Cost Vector

A= [1 0 0;
 1 1 0]; % LHS inequalities 
b = [350; 650]; % RHS inequalities

Aeq = [1 1 1]; % LHS equalities 
beq = [900]; % RHS equalities 

lb = [0 0 0]'; % Lower bounds 
ub = [400 400 400]'; % Upper bounds 

x0 = []; % No Initial guess 

x= linprog(f,A,b,Aeq,beq,lb,ub,x0);
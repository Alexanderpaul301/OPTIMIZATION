clear all

% In this case we have 3 Generators that are called G1,G2,G3 that all have
% their own productions, own prices and own generation limits.
f = [10;18;20]; % Cost Vector

A= []; % LHS inequalities 
b = []; % RHS inequalities 

Aeq = [1 1 1]; % LHS equalities 
beq = [900]; % RHS equalities 

lb = [0 0 0]'; % Lower bounds 
ub = [400 400 400]'; % Upper bounds 

x0 = []; % No Initial guess 


x= linprog(f,A,b,Aeq,beq,lb,ub,x0);
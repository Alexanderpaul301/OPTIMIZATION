clear all

%In most cases we cannot know where the power is going to flow without
%looking at the line reactance. That's what we take into account in this
%part of the code.

% Orders of variables is : PE1 PE2 PE3 Theta1 Theta2
f=[10 12 20 0 0]'; % Cost Vector

A=[0 0 0 -10 0;     % LHS equalities 
   0 0 0  0 -10;
   0 0 0  10 -10];
b=[1 1 1];          % RHS inequalities 

Aeq=[1 0 0 10 10;   % LHS equalities 
     0 1 0 -20 10;
     0 0 1 10 -20]; 
beq=[0 0 1.8];      % RHS equalities

lb=[0;0;0;-99;-99]; % Lower bounds
ub=[4;4;4;99;99];   % Upper bounds 

x0=[]; % Initial guess

[x,fval,exitflag,output,lambda]=linprog(f,A,b,Aeq,beq,lb,ub,x0);
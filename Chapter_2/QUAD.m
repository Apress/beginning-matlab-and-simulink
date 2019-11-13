function [x1, x2, D]=QUAD(a, b, c)
% QUAD.m
% Solves quadratic equations based on coefficients of: a, b, c
% Note that a, b, c need to be scalars. 
fprintf('Solve: (%g)x^2+(%g)x+(%g)=0\n', a,b,c)
D=b^2-4*a*c;
% Roots
x1=(-b+sqrt(D))/(2*a); x2=(-b-sqrt(D))/(2*a);
if lt(D,0)
    fprintf('This equation does not have real value roots!\n');
    fprintf('Because discriminant is negative. D = %g\n', D);
    fprintf('Complex Root1: x1= %10s\n', num2str(x1));
    fprintf('Complex Root2: x2= %10s\n', num2str(x2));
elseif eq(D,0)
    disp('This equation has one unique root! ');
    disp('Because discriminant is zero. D=0 ');
    fprintf('This equation has one unique root! \n');
    fprintf('Because discriminant is zero. D=0 \n');
    fprintf('Unique Root: x = %g \n', x1);
else
    fprintf('This equation has two roots \n');
    fprintf('Because discriminant is: D = %g \n', D);
    fprintf('Root1 of the equation is: x1= %g \n', x1);
    fprintf('Root2 of the equation is: x2= %g \n', x2);
end

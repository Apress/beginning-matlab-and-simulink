function x = MY_function(a, b, c)
% MY_function.m is a function file that solves the quadratic equation w.r.t. 
% a  user entries for a, b, c and outputs the found solutions.

D= b^2-4*a*c;
x1 = (-b+sqrt(D))/(2*a);
x2 = (-b-sqrt(D))/(2*a);
x = [x1; x2];
end

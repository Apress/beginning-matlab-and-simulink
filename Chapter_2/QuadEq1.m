% QuadEq1.m
% Solve quadratic equations based on coefficients of: a, b, & c
disp('Solve: ax^2+bx+c=0')
a=input('Enter value of a: ');
b=input('Enter value of b: ');
c=input('Enter value of c: ');
D=b^2-4*a*c;
[S, Errm]=sprintf('Discriminant of the equation is: %g', D); disp(S)
% Roots
x1=(-b+sqrt(D))/(2*a); x2=(-b-sqrt(D))/(2*a);
% Display roots in the command window
[xr1, Errm1]=sprintf('Root1 of the equation is x1= %g', x1);
disp(xr1); display(x1)
[xr2, Errm2]=sprintf('Root2 of the equation is x2= %g', x2);
disp(xr2); display(x2)
%% Additional display options of roots:
[xr1, Errm1]=sprintf('Root1 of the equation is x1= %10s', num2str(x1));
disp(xr1); display(x1)
[xr2, Errm2]=sprintf('Root2 of the equation is x2= %10s', num2str(x2));
disp(xr2); display(x2)
% Or an alternative way:
disp(sprintf('Root2 of the equation is x1= %10s', num2str(x1)))
disp(sprintf('Root2 of the equation is x2= %10s', num2str(x2)))

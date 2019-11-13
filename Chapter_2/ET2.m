%% ET2.m 
% Task 2. Compute the values of g(a, b, t)
t=-3:pi/50;13;
a = input(' Enter the value of a  =  ');
b = input(' Enter the value of b  =  ');
g=cos(a*t)-sin(b*t);
plot(t,g, 'bo-'), title('Results of Task (3)')
grid on
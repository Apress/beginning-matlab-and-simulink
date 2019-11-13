% Cell Mode based code writing
%% Part 1. Compute the Ellipse with a = 1.5 and b =3.5, and plot it
clearvars, close all
t = 0:pi/100:2*pi;
a=1.5; b=3.5;
u = tan(t/2);
x = a*(1 - u.^2)./(u.^2+1);
y = 2*b*u./(u.^2+1);
plot(x, y, 'bo-'), grid on
%% Part 2. Compute the Ellipses with a = [1, 5], b =[2, 1], and plot them
clearvars, close all
a = [1, 5]; b = [2, 1];
t = 0:pi/100:2*pi;
u = tan(t/2);
% Ellipse 1
x1 = a(1)*(1 - u.^2)./(u.^2+1);
y1 = 2*b(1)*u./(u.^2+1);
% Ellipse 2
x2 = a(2)*(1 - u.^2)./(u.^2+1);
y2 = 2*b(2)*u./(u.^2+1);
plot(x1,y1, 'b-', 'linewidth', 2), hold on
plot(x2, y2, 'r--', 'linewidth', 2.5), grid on
legend('Ellipse 1', 'Ellipse 2')
[px, py] = ginput(4);  % Picking the intersection points
gtext(['Point of intersection: (' num2str(px(1)) ',' num2str(py(1)) ')'])
gtext(['Point of intersection: (' num2str(px(2)) ',' num2str(py(2)) ')'])
gtext(['Point of intersection: (' num2str(px(3)) ',' num2str(py(3)) ')'])
gtext(['Point of intersection: (' num2str(px(4)) ',' num2str(py(4)) ')'])
%% Part 3. Compute the Ellipses with a = [1, 2, 3], b =[3.5, 1, 2], and plot them
clearvars, close all
a = [1, 2, 3]; b = [3.5, 1, 2];
t = 0:pi/100:2*pi;
u = tan(t/2);
% Ellipse 1, 2, 3
x = [a(1)*(1 - u.^2)./(u.^2+1); a(2)*(1 - u.^2)./(u.^2+1); ...
    a(3)*(1 - u.^2)./(u.^2+1)]';
y = [2*b(1)*u./(u.^2+1); 2*b(2)*u./(u.^2+1); 2*b(3)*u./(u.^2+1)]';
plot(x(:,1),y(:,1), 'r-', x(:,2),y(:,2), 'g--',x(:,3),y(:,3), ...
    'b-.', 'linewidth', 2), grid on
legend('Ellipse 1', 'Ellipse 2',  'Ellipse 3')
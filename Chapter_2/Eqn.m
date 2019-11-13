a=input('Enter, a = ');
b=input('Enter, b = ');
c=input('Enter, c = ');
D=b^2-4*a*c;
disp(['Discriminant of the equation is: ' num2str(D)])
x1=(-b+sqrt(D))/(2*a);
x2=(-b-sqrt(D))/(2*a);

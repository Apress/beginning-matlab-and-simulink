% Ex15_SINE.m computes sin(theta)
clearvars
theta=linspace(0, 2*pi, 1000); k=length(theta); h=ones(1,k-1);
for ii=1:k
    h(ii)=sin(theta(ii));
    data(ii,:)=[theta(ii);h(ii)];
    if abs(h(ii))>=0.9999
        fprintf('Computation is halted after %g iterations\n', ii);
        fprintf('The function value is: %1.5f \n', h(ii))
        fprintf('When theta is equal to % 1.5f degrees\n', theta(ii)*180/pi)
        break
    else
        continue
    end
end
plot(data(:,1), data(:,2), 'bd'), hold on
plot(data(ii,1),data(ii,2),'p','markerfacecolor','c', 'markersize', 18)
grid on

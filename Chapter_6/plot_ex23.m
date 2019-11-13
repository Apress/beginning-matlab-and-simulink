% plot_ex23.m
for t=linspace(-2*pi, 2*pi, 200)
    f=sin(t)*sqrt(abs(cos(t)));
    g=cos(t)*sqrt(abs(sin(t))); drawnow
    plot(t,f, 'o-',t, g, 'mp--')
    hold all % used for colorful markers
end
title('Animated plot of the function')
xlabel('X-axis'); ylabel('Y-axis'); legend('f(t)', 'g(t)')

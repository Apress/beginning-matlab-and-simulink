% plot_ex24.m
t= 0:pi/100:5*pi; y = sinc(exp(sin(t)));
for k = 1:.01:2
    y = sinc(exp(sin(t.*k))); H = plot(t,y);H.LineStyle = ':';
    H.Color = [1 0 1];
    set(H, 'marker','o');
    set(H, 'markerfacecolor', [0 1 1]);
    set(H, 'markersize', 13);
    refreshdata(H,'caller')
    drawnow; pause(.005), shg
end

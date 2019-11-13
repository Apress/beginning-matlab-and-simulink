%% plot_ex10.m
close all; clearvars
t=0:.001*pi:1*pi;
% Line color, type and marker specifiers are defined:
Labelit  = {};
Colorit  = 'bgrcmkgrckmbgrygr';
Lineit   = '--:-:--:-:--:----:----:--';
Markit  = 'odxsh+*^v<p>.xsh+od+*^v';
for ii=1:7
% Line and marker specifier are taken for each iteration:
    Stylo = [Colorit(ii) Lineit(ii) Markit(ii)];
    F     = sqrt(sin(ii*t.*sqrt(t+t.^2+t.^3))).*sin(2*t);
    plot(t, F, Stylo), hold on
    Labelit{ii} = ['\mu = ' num2str(ii)];
    legend(Labelit{:})
end

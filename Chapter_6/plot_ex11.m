%% plot_ex11.m to demonstrate EZPLOT and FPLOT
close all
for N=0:20:200
    FH=@(x)(0.5*cos(N*pi*x/180)+0.75*sin(N*pi*x/180)); 
    ezplot(FH, [-6.25, 6.25]); hold all % or fplot(FH, [-6.25, 6.25])
end 
hold off

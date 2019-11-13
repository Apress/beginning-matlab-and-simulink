%% *% Step 1. Problem statement*
% MATLAB’s precision is not absolute.
% Pythagorean Theorem: F = 1 - (sin^2 $$\alpha$ + cos^2 $$\alpha$ );
% Input variable: $$\alpha$ = -0.5* $$\pi$ ...0.5* $$\pi$ 
%% *% Step 2. Define the input variable*
alpha = -pi/2:pi/100:pi/2;
%% *% Step 3. Perform the computation*
F = 1-(sin(alpha).^2+cos(alpha).^2);
%% *% Step 4. Define for which values of $$\alpha$ $$F(\alpha) =0$*
Findex=find(F==0); F0=F(Findex);
%% *% Step 5. Plot the simulation results: $$\alpha$ vs. $$F(\alpha)$*
plot(alpha, F, 'b-', alpha(Findex), F0, 'ro'), 
legend('\alpha vs F(\alpha)', 'F(\alpha) = 0')
title('The Pythagorean Theorem '), grid on
xlabel('\alpha'), ylabel('F(\alpha) = 1-(sin^2(\alpha)+cos^2(\alpha))')
%% *%Step 6. Publish all of the obtained results including the whole script*

% Drive_Safe.m gives a warning sign what is the speed limit and
% how to behave in specific roads, highways, expressways, etc.
% E.g. CS is the only input variable
% Speed Limit [1] School area: 20 [mph] 
% Speed Limit [2] Residential and business area: 25 [mph] 
% Speed Limit [3] Town gravel roads: 55 [mph] 
% Speed Limit [4] Two-lane highways: 65 [mph] 
% Speed Limit [5] Multi-lane highways: 70 [mph] 
% Speed Limit [6] Divided Interstate: 75 [mph] 

CS = input('Enter your car"s current speed in [mph]:    ');
disp('Choose WHERE you are driving:  ')
disp('[1] School area;  [2] Residential and Business Area; ')
disp('[3] Town gravel roads; [4] Two-lane Highways; ')
disp('[5] Multi-lane Highways; [6] Divided Interstate Roads; ')
DZone = input('Enter your drive zone, e.g. 1, 2, 3, ... 6:  ');
if isempty(DZone) || DZone >7 || DZone<0
    warndlg('Not clear where you are driving!')
elseif CS ==0
    warndlg('Your car is not moving')
elseif CS<0
    warndlg('Your car is moving in a rear direction that is DANGEROUS! ')
else
    if DZone ==1 && CS > 0 && CS<10
       fprintf('Your speed = %g [mph] is too slow \n ', CS)
       fprintf('even if it is during the student arrival/departure time \n')
       warndlg('Speed UP to make your car speed around 15 mph!')
    elseif  DZone ==1 && CS > 10 && CS<20
        fprintf('Your speed = %g [mph] is OK in a school area \n', CS)
        fprintf('during the student arrival/departure time \n')
        warndlg('Keep your car speed around 15...20 mph!')
    elseif DZone ==1 && CS >20
    fprintf('Your speed = %g [mph] is TOO fast for a school area \n', CS)
    warndlg('DANGER! Slow DOWN up to 20 mph!')
    elseif DZone ==2 && CS > 15 && CS <20
fprintf('Your speed = %g [mph] is too slow for a residential area!\n', CS)
warndlg('Speed up! Speed limit for residential/business areas is 25 mph')
    elseif DZone == 2 && CS > 20 && CS < 28
    fprintf('Your speed = %g [mph] is adequate for a residential area!', CS)
    warndlg(' Do not speed over 25 mph!')
    elseif DZone == 2 && CS > 28
    fprintf('Your speed = %g [mph] is higher for a residential area!\n', CS)
    warndlg(' DANGER!  Slow DOWN and do not speed over 25 mph!')
    elseif DZone == 3 && CS < 48  && CS > 25
    fprintf('Your speed = %g [mph] is slower for gravel town roads!\n', CS)
    warndlg(' Speed up to 55 mph!')
    elseif DZone == 3 && CS > 48  && CS < 58
fprintf('Your speed = %g[mph] is within limits for gravel town roads!\n',CS)
        warndlg(' Keep your speed around 55 mph!')
    elseif DZone == 3 && CS > 58
        fprintf('Your car speed = %g [mph] is beyond \n', CS)
        fprintf('the limits for a gravel town roads! \n')
        warndlg(' DANGER!  Slow DOWN up to 55 mph!')
    elseif DZone == 4 && CS > 55  && CS < 60
        fprintf('Your speed = %g [mph] is slower for two-lane HW!\n', CS)
        warndlg(' Speed up to 65 mph!')
    elseif DZone == 4 && CS > 60  && CS < 68
fprintf('Your speed = %g[mph] is within the limits for two-lane HW! \n', CS)
        warndlg(' Keep your speed around 65 mph!')
    elseif DZone == 4 && CS > 68
        fprintf('Your speed = %g [mph] is beyond  \n', CS)
        fprintf('the limits for two-lane HW! \n')
        warndlg(' DANGER!  Slow DOWN up to 65 mph!')
    elseif DZone == 5 && CS > 55  && CS <65
        fprintf('Your speed = %g [mph] is slower than \n' , CS)
        frpintf('the speed limits for multi-lane lane HW! \n')
        warndlg(' Speed up to 70 mph!')
    elseif DZone == 5 && CS > 65  && CS <75
        fprintf('Your speed = %g [mph] is within \n', CS)
        fprintf('the speed limits for multi-lane lane HW! \n')
        warndlg(' Keep your speed around 70 mph!')
    elseif DZone == 5 && CS > 75
        fprintf('Your speed = %g [mph] is beyond \n', CS)
        frintf('the speed limits for multi-lane lane HW! \n')
        warndlg(' DANGER! Slow DOWN up to 70 mph!')
    elseif DZone == 6 && CS > 60  && CS <70
        fprintf('Your speed = %g [mph] is slower than \n', CS)
        fprintf('the speed limits for Divided Interstate in ND! \n')
        warndlg(' Speed up to 70 mph!')
    elseif DZone == 6 && CS > 70  && CS <78
        fprintf('Your speed = %g [mph] is within \n', CS)
        fprintf('the speed limits for Divided Interstate in ND! \n')
        warndlg(' Keep your speed around 75 mph!')
    else 
        fprintf('Your speed = %g [mph] is beyond  \n', CS)
        fprintf('the speed limits for Divided Interstate in ND! \n')
        warndlg(' DANGER!  Slow DOWN up to 75 mph!')
    end
end

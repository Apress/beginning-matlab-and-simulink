% Cafe.m
clearvars
% It is time for coffee and let's go to a cafe ...
% Step 0
H1 = msgbox('You are in a cafe and ordering coffee of your taste', 'Cafe');
pause(2), delete(H1)
% Step 1. Ordering your coffee
H2 = msgbox('What can I do for you today? Do you want coffee or sweets',...
    'Waiter has arrived');
pause(3), delete(H2)
% Answer what you like to have
YA= questdlg('Your answer: "Do you want coffee or sweets?" ','Question', ...
    'Coffee', 'Tea', 'Chocolate Cake', ' ');
switch YA
    case 'Coffee'
        CA = questdlg('Your answer: "OK. WHat kind of coffee?" ','Question', ...
            'Normal', 'Strong', 'Special', ' ');
    case 'Tea'
        H3=warndlg(['Sorry! We do not serve' ' Tea. Maybe something else?']); pause(2)
        delete(H3)
    case 'Chocolate Cake'
        H4=errordlg(['Very Sorry!' 'No cakes Left ']); pause(2)
        delete(H4)
end
Response=exist  ('CA', 'var');
if Response ==1
    switch CA
        case 'Normal'
            HN=warndlg(['Normal coffee is', ...
                ' 3 tea-spoons of coffee+3 Table-spoons of Milk+1 tea-spoon of sugar']);
            pause(3), delete(HN)
        case 'Strong'
            HS=warndlg(['Strong coffee is', ...
                ' 4 tea-spoons of coffee+2 Table-spoons of Milk+2 tea-spoon of sugar']);
            pause(3), delete(HS)
        case 'Special'
            HS = msgbox('Select: how much coffee, milk and sugar to add?', 'Selection');
            pause(3), delete(HS)
            Call = 'Order your coffee';
            Selection = {'how many tea-spoons of coffee: ',...
                'how many table-spoons of milk: ', 'how many tea-spoons of sugar: '};
            n_lines=[1, 13];
            ANS=inputdlg(Selection, Call, 1, {' ', ' ', ' '});
    end
    OK = msgbox('You have had your coffee','You are about to leave ');
    pause(5), delete(OK)
    PB= questdlg('Waiter asks: "How was the coffee?" ','Question', ...
        'Just Superb', 'Nice', 'Umm...but OK', ' ');
    switch PB
        case 'Just Superb'
            helpdlg('Thank you so much! 4$+1$ (tips)', 'Here is the payment');
        case 'Nice'
            helpdlg('Thanks! 4$+0.50$ (tips)', 'Here is the payment');
        case 'Umm...but OK'
            helpdlg('Thank you! 4$ (No-tips)', 'Here is the payment');
    end
else
    H5 = msgbox('Bye - Bye! See you next time!', 'Waiter leaves');
    pause(4), delete(H5)
end

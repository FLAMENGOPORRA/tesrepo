 %Physics Helper
 
% Jose Rocha-Puscar
% ROCHAPUJ@erau.edu
% Date: 11/24/2022
% EGR 115 - Section #09
% Assignment: Final Project Draft
% Program description: This is a learning program for PS150 that'll let you
% choose what chapters to learn 

% Only Forces, and kinematics are working at the moment the others still
% need to be fixed to work properly

%Questions are stored in Objects that contain their own functions

%Refresh
clc
close all
clear  

Topic='';
Active=1;

fprintf('Welcome to Physics 1 Study Helper.\n\n')
fprintf('This program is designed to assist you in understanding\ndifferent concepts in physics 1 that you can choose from.\n\n')
fprintf('Choose A topic by typing it out\n\n')
fprintf('Kinematics\n')
fprintf('Forces\n')
fprintf('Energy\n')
fprintf('Momentum \n')
fprintf('Rotation\n')


Topic = input('Type in Topic: ','s'); % Topic Selection


while isempty(Topic) || ~strcmpi(Topic,'Kinematics') && ~strcmpi(Topic,'Forces') && ~strcmpi(Topic,'Energy') && ~strcmpi(Topic,'Momentum') && ~strcmpi(Topic,'Equilibrium') && ~strcmpi(Topic,'Rotation') && ~strcmpi(Topic,'Torque')
fprintf('The topic you want needs to be type in EXACTLY THE SAME as it was given in the list above.\n')
Topic=input('Try again ','s');
end

if isequal(Topic,'Kinematics') ||  isequal(Topic,'kinematics')

imshow('projectilemotion.png'); % displays image for the question
CheckKin(Active); % Asks the only kinematic question
FollowingQues(Active); 

elseif isequal(Topic,'Forces') || isequal(Topic,'forces')
   
  
    ForcesQOne(Active); %Ask question 1 of Forces
    FollowingQues(Active); % Asks to continue to next Question
    ForcesQTwo(Active);%Ask question 2 of Forces
    FollowingQues(Active);
    ForceQThree(Active);%Ask question 3 of Forces
    FollowingQues(Active);
    ForceQFour(Active); %Ask question 4 of Forces
    FollowingQues(Active);
    ForcesQFive(Active);%Ask question 5 of Forces
%{
    elseif isequal(Topic,'Energy') || isequal(Topic,'energy')

    EWQuesone(Active);%Ask question 1 of Energy
    FollowingQues(Active);
    EWQuesTwo(Active);%Ask question 2 of Energy
    FollowingQues(Active);
    EWQuesThree(Active);%Ask question 3 of Energy
    FollowingQues(Active);
    EWQuesFour(Active);%Ask question 4 of Energy
    FollowingQues(Active);
    EWQuesFive(Active);%Ask question 5 of Energy
   FollowingQues(Active);
   EWQuesSix(Active);%Ask question 6 of Energy
%}
end
%
%
%
%
%
%
%
%    'objid'
%    'specobjid'
%    'ra'
%    'dec'
%    'spec_z'           11
%    'err_spec_z'
%    'dered_u'          1 
%    'dered_g'          2
%    'dered_r'          3
%    'dered_i'          4
%    'dered_z'          5
%    'PETRORAD_R'       6
%    'extinction_g'     7
%    'extinction_r'     8
%    'extinction_i'     9
%    'extinction_z'     10

%% Initialise

clear; close all; clc

%% Load SQL data

a = importdata('Data/DR10A_hoyle_xfblanc1.csv');
disp(' ')
disp('Finished reading data.')


%% Assign numerical data to 

ab = a.data;

%% Find and remove errors

[eindex, col] = find(ab == -9999);
ac = removerows(ab,'ind', eindex);

%% Obtain subset

subs = 600000;
r = randi([1 size(ac,1)],1, subs);
sac = ac(r,:);

%% Organise data matrix

der_u = sac(:, 1);
der_g = sac(:, 2);
der_r = sac(:, 3);
der_i = sac(:, 4);
der_z = sac(:, 5);
petroRad_r = sac(:, 6);
ext_g = sac(:, 7);
ext_r = sac(:, 8);
ext_i = sac(:, 9);
ext_z = sac(:, 10);
spec_z = sac(:, 11);

%% 

photoA = [der_u der_g der_r der_i der_z petroRad_r ext_g ext_r ext_z];
photoClass = spec_z;

save('photoA.mat', 'photoA');
save('photoClass.mat', 'spec_z');

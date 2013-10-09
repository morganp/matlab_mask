clear;

%% Clear import list to test correct library
clear import;

%% Add package to path (+function folder must be on path)

%% TODO need to check which folder this is run from test or project root?
addpath('../package/');

%% Import functions 
import mask.*

clear all
close all
figure;
clf;



%% The test
mask.mask('./fixtures/example_mask.dat')

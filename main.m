%% MAIN ENTRY POINT - FULL SYSTEM RUN
% This srcipt execute the entire simulation.

clear; clc; close all;

modelName = 'parrotMinidroneHover';
if xpcwhos('-contains', modelName)
    bdclose(modelName);
end
load_system(modelName);

fprintf('Executing simulation Simulink : %s...\n', modelName);
simOutput = sim(modelName, 'SimulationMode', 'normal');

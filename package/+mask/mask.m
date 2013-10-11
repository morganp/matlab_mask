function mask( datfile )

%% Read in specified file
maskdat = load( datfile );

%%create line


%% generate plot
figure()
clf; % clear figure
plot( maskdat(:,1), maskdat(:,2))
hold on
plot( maskdat(:,1), maskdat(:,3))

end


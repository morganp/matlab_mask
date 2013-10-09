function mask( datfile )

%% Read in specified file
%datfile = 'example_mask.dat'; 

load( datfile )

%%create line


%% generate plot
figure(1)
clf; % clear figure
plot( example_mask(:,1), example_mask(:,2))
hold on
plot( example_mask(:,1), example_mask(:,3))

end


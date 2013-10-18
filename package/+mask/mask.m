function mask( datfile, varargin  )

%% Input parsing example :
% http://www.mathworks.co.uk/help/matlab/ref/inputparserclass.html
    p = inputParser;
    p.FunctionName = 'mask';
    addOptional(p,'title','');
    addOptional(p,'xlabel','');
    addOptional(p,'ylabel','');
parse(p, varargin{:} );


%% Read in specified file
maskdat = load( datfile );

%% Create line


 %% Generate plot
 figure()
 clf; % clear figure
 plot( maskdat(:,1), maskdat(:,2))
 hold on
 plot( maskdat(:,1), maskdat(:,3))

 % Find nice values for axis, so limits are visible
 ymax_dat = max( [maskdat(:,2); maskdat(:,3)]);
 ymin_dat = min( [maskdat(:,2); maskdat(:,3)]);
 xmin     = 0;
 xmax     = max( maskdat(:,1) );

 resolution = 1;
 try
   % Try to round to nearest ten (10^resolution)
   ymax = round_away_zeron(ymax_dat, resolution);
   ymin = round_away_zeron(ymin_dat, resolution);
 catch
    disp('Requires the round_away_zeron function: please add https://github.com/morganp/matlab_roundn to your path');
    ymax = ymax_dat;
    ymin = ymin_dat;
 end

 %% yaxis values must be increasing and non-NaN, ie they cannot be the same.
 if (ymin == ymax) ymin = ymin - 10^resolution; end

 %axis([xmin xmax ymin ymax])
 axis([xmin xmax ymin ymax]);
 title(p.Results.title);
 xlabel(p.Results.xlabel);
 ylabel(p.Results.ylabel);

end


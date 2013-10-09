matlab_mask
===============

Convert data or mask ascii file into matlab plots.

Load file based on 3 coloumn vectors, first is x axis and min and max points.
Currently plots the mask.

TODO : Scale the mask for overlaying with FFT results.


Usage
--

It is imported as a package into your script or projects. Packages require the parent folder to be added to the search path.

    addpath('your_path_here/matlab_mask/package/');
    import mask.*

    mask.mask(datfile)


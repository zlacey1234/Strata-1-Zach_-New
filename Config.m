% This m-file is used to initialize the  
addpath('./Image_Processing');

imagefolder = ('D:\Strata Data\Strata1 XCT jpgs\Beads1_ImageStack\JPEGS\');
%imagefolder = ('C:\Users\zlace\OneDrive\Documents\Strata-1 Research\Strata-1 Code\Strata-1 Image Data\Strata1 XCT jpgs\Beads1_ImageStack\JPEGS\');
imageprefix = ('Beads1');
start_image = 500;
end_image = 510;
no_images=end_image-start_image+1;
radius = 40;
splits = 1;
AR_z = 1;
% x1 = 1;
% x2 = 1020;
% y1 = 1;
% y2 = 1041;


x1 = 310;
x2 = 710;
y1 = 320;
y2 = 720;

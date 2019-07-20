[file1,path1] = uigetfile('*.log');
file1
filepath1 = [path1 file1];

data1 = csvread(filepath1);

x = data1(:,1);
y = data1(:,2);
z = data1(:,3);
sumPixelArea = data1(:,4);
beadDiameterMeters = data1(:,5);

figure(2)
% xCenter = x(1)/12.78; % Convert pixel to millimeter: 12.78 px/mm
% yCenter = y(1)/12.78;
% zCenter = z(1)/12.78;
% radius = 5 % Radius of the Bead (millimeters)
% 
% [x1,y1,z1] = sphere;
% x1 = x1*radius;
% y1 = y1*radius;
% z1 = z1*radius;
% 
% h = surf(x1 + xCenter, y1 + yCenter, z1 + zCenter);
% set(h,'FaceColor',[0.4940 , 0.1840, 0.5560], ...
%     'FaceAlpha', 0.5, 'FaceLighting', 'gouraud', 'EdgeColor', 'none');
% camlight
% hold on

for k = 1:numel(x)
    if (beadDiameterMeters(k) == 10)
        xCenter = x(k)/12.78; % Convert pixel to millimeter: 12.78 px/mm
        yCenter = y(k)/12.78;
        zCenter = z(k)/14.08;
        radius = 5 % Radius of the Bead (millimeters) 
        
        [x1,y1,z1] = sphere;
        x1 = x1*radius;
        y1 = y1*radius;
        z1 = z1*radius;
        
        h = surf(x1 + xCenter, y1 + yCenter, z1 + zCenter);
        set(h,'FaceColor',[0.494, 0.1840, 0.5560], ...
            'FaceAlpha', 0.5, 'FaceLighting', 'gouraud', 'EdgeColor', 'none');
        camlight
        hold on
        axis equal
    end
end


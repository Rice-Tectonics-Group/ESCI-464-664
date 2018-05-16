%
%     rotate 'angle' degrees about axis #3
%

%     Input is in degrees, output is in degrees

function [y,varargout] = rot3(oldlat,oldlon,angle)

newlat = oldlat;
newlon = oldlon + angle;

if newlon > 360
             newlon = newlon - 360;
elseif newlon < -360
             newlon = newlon + 360;
end

y=newlat;
varargout(1)={newlon};

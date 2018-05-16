%
%     find pole given two points on equator
%

%     Input is in degrees, output is in degrees

function [plat,varargout] = polpts(pt1lat,pt1lon,pt2lat,pt2lon)
 
[x1,x2,x3]=sphcar(pt1lat,pt1lon);
[y1,y2,y3]=sphcar(pt2lat,pt2lon);
z = sin(acos(x1*y1 + x2*y2 + x3*y3));
z1 = (x2*y3 - x3*y2) / z;
z2 = (x3*y1 - x1*y3) / z;
z3 = (x1*y2 - x2*y1) / z;
[polat,polon]=carsph(z1,z2,z3);

plat=polat;
varargout(1)={polon};
